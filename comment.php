<?php

define('IN_ECS', true);

require(dirname(__FILE__) . '/includes/init.php');
require(ROOT_PATH . 'includes/cls_json.php');
require(ROOT_PATH . '/includes/lib_comment_img.php');
if (!isset($_REQUEST['cmt']) && !isset($_REQUEST['act']))
{
    /* 只有在没有提交评论内容以及没有act的情况下才跳转 */
    ecs_header("Location: ./\n");
    exit;
}
$_REQUEST['cmt'] = isset($_REQUEST['cmt']) ? json_str_iconv($_REQUEST['cmt']) : '';

$json   = new JSON;
$result = array('error' => 0, 'message' => '', 'content' => '');

$tab_active_class_normal = $tab_active_class_good = $tab_active_class_medium = $tab_active_class_bad = $tab_active_class_show_img = '';

$comment_type_good_medium_bad = "";
$active_tab_value = 'all_comments';
if ($_REQUEST['active_tab'] == 'good_rank'){
	$comment_type_good_medium_bad = 'good';
	$show_img = false;
	$tab_active_class_good = 'active';
	$active_tab_value = 'good_rank';
}
elseif ($_REQUEST['active_tab'] == 'medium_rank'){
	$comment_type_good_medium_bad = 'medium';
	$show_img = false;
	$tab_active_class_medium = 'active';
	$active_tab_value = 'medium_rank';
}
elseif ($_REQUEST['active_tab'] == 'bad_rank'){
	$comment_type_good_medium_bad = 'bad';
	$show_img = false;
	$tab_active_class_bad = 'active';
	$active_tab_value = 'bad_rank';
}
elseif ($_REQUEST['active_tab'] == 'show_img'){
	$comment_type_good_medium_bad = 0;
	$show_img = true;
	$tab_active_class_show_img = 'active';
	$active_tab_value = 'show_img';
}
elseif ($_REQUEST['active_tab'] == 'all_comments'){
	$comment_type_good_medium_bad = '';
	$show_img = false;
	$tab_active_class_normal = 'active';
	$active_tab_value = 'all_comments';
}


if (empty($_REQUEST['act']))
{
    /*
     * act 参数为空
     * 默认为添加评论内容
     */
    $cmt  = $json->decode($_REQUEST['cmt']);
    $cmt->page = 1;
    $cmt->id   = !empty($cmt->id)   ? intval($cmt->id) : 0;
    $cmt->type = !empty($cmt->type) ? intval($cmt->type) : 0;

    if (empty($cmt) || !isset($cmt->type) || !isset($cmt->id))
    {
        $result['error']   = 1;
        $result['message'] = $_LANG['invalid_comments'];
    }
    /*elseif (!is_email($cmt->email))
    {
        $result['error']   = 1;
        $result['message'] = $_LANG['error_email'];
    }*/
    else
    {
        if ((intval($_CFG['captcha']) & CAPTCHA_COMMENT) && gd_version() > 0)
        {
            /* 检查验证码 */
            include_once('includes/cls_captcha.php');

            $validator = new captcha();
            if (!$validator->check_word($cmt->captcha))
            {
                $result['error']   = 1;
                $result['message'] = $_LANG['invalid_captcha'];
            }
            else
            {
                $factor = intval($_CFG['comment_factor']);
                if ($cmt->type == 0 && $factor > 0)
                {
                    /* 只有商品才检查评论条件 */
                    switch ($factor)
                    {
                        case COMMENT_LOGIN :
                            if ($_SESSION['user_id'] == 0)
                            {
                                $result['error']   = 1;
                                $result['message'] = $_LANG['comment_login'];
                            }
                            break;

                        case COMMENT_CUSTOM :
                            if ($_SESSION['user_id'] > 0)
                            {
                                $sql = "SELECT o.order_id FROM " . $ecs->table('order_info') . " AS o ".
                                       " WHERE user_id = '" . $_SESSION['user_id'] . "'".
                                       " AND (o.order_status = '" . OS_CONFIRMED . "' or o.order_status = '" . OS_SPLITED . "') ".
                                       " AND (o.pay_status = '" . PS_PAYED . "' OR o.pay_status = '" . PS_PAYING . "') ".
                                       " AND (o.shipping_status = '" . SS_SHIPPED . "' OR o.shipping_status = '" . SS_RECEIVED . "') ".
                                       " LIMIT 1";


                                 $tmp = $db->getOne($sql);
                                 if (empty($tmp))
                                 {
                                    $result['error']   = 1;
                                    $result['message'] = $_LANG['comment_custom'];
                                 }
                            }
                            else
                            {
                                $result['error'] = 1;
                                $result['message'] = $_LANG['comment_custom'];
                            }
                            break;
                        case COMMENT_BOUGHT :
                            if ($_SESSION['user_id'] > 0)
                            {
                                $sql = "SELECT o.order_id".
                                       " FROM " . $ecs->table('order_info'). " AS o, ".
                                       $ecs->table('order_goods') . " AS og ".
                                       " WHERE o.order_id = og.order_id".
                                       " AND o.user_id = '" . $_SESSION['user_id'] . "'".
                                       " AND og.goods_id = '" . $cmt->id . "'".
                                       " AND (o.order_status = '" . OS_CONFIRMED . "' or o.order_status = '" . OS_SPLITED . "') ".
                                       " AND (o.pay_status = '" . PS_PAYED . "' OR o.pay_status = '" . PS_PAYING . "') ".
                                       " AND (o.shipping_status = '" . SS_SHIPPED . "' OR o.shipping_status = '" . SS_RECEIVED . "') ".
                                       " LIMIT 1";
                                 $tmp = $db->getOne($sql);
                                 if (empty($tmp))
                                 {
                                    $result['error']   = 1;
                                    $result['message'] = $_LANG['comment_brought'];
                                 }
                            }
                            else
                            {
                                $result['error']   = 1;
                                $result['message'] = $_LANG['comment_brought'];
                            }
                    }
                }

                /* 无错误就保存留言 */
                if (empty($result['error']))
                {
                    add_comment($cmt);
                }
            }
        }
        else
        {
            /* 没有验证码时，用时间来限制机器人发帖或恶意发评论 */
            if (!isset($_SESSION['send_time']))
            {
                $_SESSION['send_time'] = 0;
            }

            $cur_time = gmtime();
            if (($cur_time - $_SESSION['send_time']) < 1) // 小于1秒禁止发评论
            {
                $result['error']   = 1;
                $result['message'] = $_LANG['cmt_spam_warning'];
            }
            else
            {
                $factor = intval($_CFG['comment_factor']);
                if ($cmt->type == 0 && $factor > 0)
                {
                    /* 只有商品才检查评论条件 */
                    switch ($factor)
                    {
                        case COMMENT_LOGIN :
                            if ($_SESSION['user_id'] == 0)
                            {
                                $result['error']   = 1;
                                $result['message'] = $_LANG['comment_login'];
                            }
                            break;

                        case COMMENT_CUSTOM :
                            if ($_SESSION['user_id'] > 0)
                            {
                                $sql = "SELECT o.order_id FROM " . $ecs->table('order_info') . " AS o ".
                                       " WHERE user_id = '" . $_SESSION['user_id'] . "'".
                                       " AND (o.order_status = '" . OS_CONFIRMED . "' or o.order_status = '" . OS_SPLITED . "') ".
                                       " AND (o.pay_status = '" . PS_PAYED . "' OR o.pay_status = '" . PS_PAYING . "') ".
                                       " AND (o.shipping_status = '" . SS_SHIPPED . "' OR o.shipping_status = '" . SS_RECEIVED . "') ".
                                       " LIMIT 1";


                                 $tmp = $db->getOne($sql);
                                 if (empty($tmp))
                                 {
                                    $result['error']   = 1;
                                    $result['message'] = $_LANG['comment_custom'];
                                 }
                            }
                            else
                            {
                                $result['error'] = 1;
                                $result['message'] = $_LANG['comment_custom'];
                            }
                            break;

                        case COMMENT_BOUGHT :
                            if ($_SESSION['user_id'] > 0)
                            {
                                $sql = "SELECT o.order_id".
                                       " FROM " . $ecs->table('order_info'). " AS o, ".
                                       $ecs->table('order_goods') . " AS og ".
                                       " WHERE o.order_id = og.order_id".
                                       " AND o.user_id = '" . $_SESSION['user_id'] . "'".
                                       " AND og.goods_id = '" . $cmt->id . "'".
                                       " AND (o.order_status = '" . OS_CONFIRMED . "' or o.order_status = '" . OS_SPLITED . "') ".
                                       " AND (o.pay_status = '" . PS_PAYED . "' OR o.pay_status = '" . PS_PAYING . "') ".
                                       " AND (o.shipping_status = '" . SS_SHIPPED . "' OR o.shipping_status = '" . SS_RECEIVED . "') ".
                                       " LIMIT 1";
                                 $tmp = $db->getOne($sql);
                                 if (empty($tmp))
                                 {
                                    $result['error']   = 1;
                                    $result['message'] = $_LANG['comment_brought'];
                                 }
                            }
                            else
                            {
                                $result['error']   = 1;
                                $result['message'] = $_LANG['comment_brought'];
                            }
                    }
                }
                /* 无错误就保存留言 */
                if (empty($result['error']))
                {
                    add_comment($cmt);
                    $_SESSION['send_time'] = $cur_time;
                }
            }
        }
    }
}
elseif($_REQUEST['act'] == 'like'){
			if (isset($_REQUEST['comment_id']) === false || $_REQUEST['comment_id'] == ''){$result['error'] = 2;}
			if (isset($_REQUEST['user_id']) === false || $_REQUEST['user_id'] == ''){$result['error'] = 2;}
			
			$comment_id = $_REQUEST['comment_id'];
			$user_id = $_REQUEST['user_id'];
			
			$result = array();
			$result['error'] = 0;
			$result['result'] = '';
			$valid  = true;
			$self   = false;
			
			/*拿到comment创建者id*/
			$self = is_comment_created_by_user($comment_id,$user_id);
			
			$self = false;//允许自己点赞
			if ($self !== true){
				
			$valid = is_liked_by_this_user($comment_id,$user_id);
			
			}
			
			if ($self === true){$result['error'] = 1;}
			if ($valid === true){$result['error'] = 2;}
			
			if ($self === false && $valid === false){
			 /* 保存点赞内容 */
			$sql = "INSERT INTO " .$GLOBALS['ecs']->table('comment_like') .
				   "(comment_id, add_time, ip_address, user_id) VALUES " .
				   "('$comment_id',".gmtime().", '".real_ip()."','$user_id')";
			$res = $GLOBALS['db']->query($sql);
			$result['result'] = $res;
			}
			
			$sql ="SELECT count(*) FROM " . $GLOBALS['ecs']->table('comment_like'). 
				" WHERE comment_id = ". $comment_id;
			$count = $db->getOne($sql); 
			
			$result['count']      = $count;
			$result['comment_id'] = $comment_id;
			$result['is_liked']   = $valid;
			die($json->encode($result));
		}
elseif($_REQUEST['act'] == 'dislike'){
			if (isset($_REQUEST['comment_id']) === false || $_REQUEST['comment_id'] == ''){$result['error'] = 2;}
			if (isset($_REQUEST['user_id']) === false || $_REQUEST['user_id'] == ''){$result['error'] = 2;}
			
			$comment_id = $_REQUEST['comment_id'];
			$user_id = $_REQUEST['user_id'];
			
			$result = array();
			$result['error'] = 0;
			$result['result'] = '';
			$valid  = true;
			$self   = false;

			 /* 删除点赞内容 */
			$sql = "DELETE FROM " .$GLOBALS['ecs']->table('comment_like') .
				   " WHERE comment_id = '$comment_id' AND user_id = '$user_id'";
			$res = $GLOBALS['db']->query($sql);
			$result['result'] = $res;
			
			$sql ="SELECT count(*) FROM " . $GLOBALS['ecs']->table('comment_like'). 
				" WHERE comment_id = ". $comment_id;
			$count = $db->getOne($sql); 
			
			$result['count']      = $count;
			$result['comment_id'] = $comment_id;
			$result['is_liked']   = $valid;
			die($json->encode($result));
}
elseif($_REQUEST['act'] == 'recomment'){
	
			if (isset($_REQUEST['comment_id']) === false || $_REQUEST['comment_id'] == ''){$result['error'] = 2;}
			if (isset($_REQUEST['user_id']) === false || $_REQUEST['user_id'] == ''){$result['error'] = 2;}
			
			$comment_id = $_REQUEST['comment_id'];
			$user_id = $_REQUEST['user_id'];
			
			$result = array();
			$result['error'] = 0;
			$result['content'] = $smarty->fetch("library/comments_form.lbi");
			die($json->encode($result));
		}
elseif($_REQUEST['act'] == 'user_recomment'){

			$comment_id = '';
			$cmt  = $json->decode($_REQUEST['cmt']);
			$cmt->page = 1;
			$cmt->id   = !empty($cmt->id)   ? intval($cmt->id) : 0;
			$cmt->type = !empty($cmt->type) ? intval($cmt->type) : 0;


			if (isset($_REQUEST['comment_id']) === false || $_REQUEST['comment_id'] == ''){$result['error'] = 2;}
			if (isset($_REQUEST['user_id']) === false || $_REQUEST['user_id'] == ''){$result['error'] = 2;}

			$comment_id = $_REQUEST['comment_id'];
			$user_id = $_REQUEST['user_id'];


			$result = array();
			$result['error'] = 0;
			$id = add_comment($cmt);



			$sql ="SELECT * FROM " . $GLOBALS['ecs']->table('comment'). 
			" WHERE comment_id = ". $id;
			$comm = $GLOBALS['db']->getAll($sql);

			$comm = $comm[0];


			$comm['add_time'] = local_date($GLOBALS['_CFG']['time_format'], $comm['add_time']);



			$result['comment_id'] = $comment_id;
			$result['content'] = ''.
			'<table border="0" cellspacing="0" cellpadding="0" style="width:100%;">  '.
			'<tr height="10"><td></td></tr>'.
				'<tr>'.
				'<td>'.
				'<span><font style="color:#A6A6A6;">'.$comm['add_time'].'</font></span>'.
				'</td>'.
				'</tr>'.
			'<tr>'.
			'<td> 你： '.


			//$comm['user_name'].': '.

			'<span style="{if $child.is_admin eq 1}color:#EF5A2C;{/if}">'.$comm['content'].'</span>'.
			'<a href="user.php?act=del_cmt&amp;id='.$id.'" style="float:right;" title="删除" onclick="if (!confirm(\'你确实要彻底删除这条留言吗？\')) return false;"> 删除</a>'.
			'</td>'.
			'</tr>'.
			'<tr height="10"><td></td></tr>'.
			'<tr height="1"><td colspan="2"><table border="0" cellpadding="0" cellspacing="0" style="border-top:1px solid #e7e7e7;height:1px;width: 100%;"><tr><td></td></tr></table></td></tr>'.
			'</table>';

			die($json->encode($result));
}
elseif($_REQUEST['act'] == 'tab'){
	
	if (isset($_REQUEST['comment_tab_normal']) && $_REQUEST['comment_tab_normal'] == 1){$comment_tab_normal = 1;}
	if (isset($_REQUEST['comment_tab_good']) && $_REQUEST['comment_tab_good'] == 1){$comment_tab_good = 1;}
	if (isset($_REQUEST['comment_tab_medium']) && $_REQUEST['comment_tab_medium'] == 1){$comment_tab_medium = 1;}
	if (isset($_REQUEST['comment_tab_bad']) && $_REQUEST['comment_tab_bad'] == 1){$comment_tab_bad = 1;}

			$comment_id = '';
			$cmt  = $json->decode($_REQUEST['cmt']);
			$cmt->page = 1;
			$cmt->id   = !empty($cmt->id)   ? intval($cmt->id) : 0;
			$cmt->type = !empty($cmt->type) ? intval($cmt->type) : 0;
			$comments = assign_comment($cmt->id, $cmt->type, $cmt->page, $comment_type_good_medium_bad, $show_img);
			
			$pager      =  $comments['pager']['pager'];
			$page       =  $comments['pager']['page'];
			$page_count =  $comments['pager']['page_count'];		
			
			$user_id = $_SESSION['user_id'];

			$comments['comments'] = format_comment($comments['comments'], $user_id);			
	
			
			
			$comment_record_pagination = array();
			for ($i = 1; $i <= $pager['page_count']; $i++){$comment_record_pagination[$i] = $i;}
			 $comment_record_pagination_js = "<script> 
			 $('#comment-record-pagination').twbsPagination({
				totalPages: ".$page_count.",
				visiblePages: 7,
				onPageClick: function (event, page) {
					//$('#page-content').text('Page ' + page);
					javascript:gotoPage(page,". 150 .");
				}
				//href: '?page={{number}}'
			});
			</script>";
			$smarty->assign('comment_type', $cmt->type);
			$smarty->assign('id',           $cmt->id);
			$smarty->assign('username',     $_SESSION['user_name']);
			//$smarty->assign('email',        $_SESSION['email']);
			$smarty->assign('comments',     $comments['comments']);
			$smarty->assign('active_tab_value', $active_tab_value);
			$smarty->assign('tab_active_class_normal',     $tab_active_class_normal);
			$smarty->assign('tab_active_class_good',     $tab_active_class_good);
			$smarty->assign('tab_active_class_medium',     $tab_active_class_medium);
			$smarty->assign('tab_active_class_bad',     $tab_active_class_bad);
			$smarty->assign('tab_active_class_show_img',     $tab_active_class_show_img);
			$smarty->assign('comment_record_pagination', $comment_record_pagination);
			$smarty->assign('comment_record_pagination_js', $comment_record_pagination_js);
			$smarty->assign('pager',         $comments['pager']);			
			$smarty->assign('comment_tab_normal',         $comment_tab_normal);			
			$smarty->assign('comment_tab_good',         $comment_tab_good);			
			$smarty->assign('comment_tab_medium',         $comment_tab_medium);			
			$smarty->assign('comment_tab_bad',         $comment_tab_bad);			
	


			/* 验证码相关设置 */
			if ((intval($_CFG['captcha']) & CAPTCHA_COMMENT) && gd_version() > 0)
			{
				$smarty->assign('enabled_captcha', 1);
				$smarty->assign('rand', mt_rand());
			}

			$result['message'] = $_CFG['comment_check'] ? $_LANG['cmt_submit_wait'] : $_LANG['cmt_submit_done'];
			$result['content'] = $smarty->fetch("library/comments_list.lbi");
			$result['page'] = $page;
			$result['totalPages'] = $page_count;

			die($json->encode($result));
}
else
{
    /*
     * act 参数不为空
     * 默认为评论内容列表
     * 根据 _GET 创建一个静态对象
     */
    $cmt = new stdClass();
    $cmt->id   = !empty($_GET['id'])   ? intval($_GET['id'])   : 0;
    $cmt->type = !empty($_GET['type']) ? intval($_GET['type']) : 0;
    $cmt->page = isset($_GET['page'])   && intval($_GET['page'])  > 0 ? intval($_GET['page'])  : 1;
}

if ($result['error'] == 0)
{
	$comment_type_good_medium_bad = '';
	if (isset($_REQUEST['comment_type_good_medium_bad']) && $_REQUEST['comment_type_good_medium_bad'] == 'comment_tab_normal'){$comment_type_good_medium_bad = '';$comment_tab_normal = 1;}
	else if (isset($_REQUEST['comment_type_good_medium_bad']) && $_REQUEST['comment_type_good_medium_bad'] == 'comment_tab_good'){$comment_type_good_medium_bad = 'good';$comment_tab_good = 1;}
	else if (isset($_REQUEST['comment_type_good_medium_bad']) && $_REQUEST['comment_type_good_medium_bad'] == 'comment_tab_medium'){$comment_type_good_medium_bad = 'medium';$comment_tab_medium = 1;}
	else if (isset($_REQUEST['comment_type_good_medium_bad']) && $_REQUEST['comment_type_good_medium_bad'] == 'comment_tab_bad'){$comment_type_good_medium_bad = 'bad';$comment_tab_bad = 1;}

    $comments = assign_comment($cmt->id, $cmt->type, $cmt->page, $comment_type_good_medium_bad);
	$comments['comments'] = format_comment($comments['comments'], $_SESSION['user_id']);
	
    $smarty->assign('comment_type', $cmt->type);
    $smarty->assign('id',           $cmt->id);
    $smarty->assign('username',     $_SESSION['user_name']);
    $smarty->assign('email',        $_SESSION['email']);
    $smarty->assign('comments',     $comments['comments']);
    $smarty->assign('pager',        $comments['pager']);
	$smarty->assign('active_tab_value', $active_tab_value);
	$smarty->assign('tab_active_class_normal',     $tab_active_class_normal);
	$smarty->assign('tab_active_class_good',     $tab_active_class_good);
	$smarty->assign('tab_active_class_show_img',     $tab_active_class_show_img);	
	$smarty->assign('comment_tab_normal',         $comment_tab_normal);			
	$smarty->assign('comment_tab_good',         $comment_tab_good);			
	$smarty->assign('comment_tab_medium',         $comment_tab_medium);			
	$smarty->assign('comment_tab_bad',         $comment_tab_bad);			

    /* 验证码相关设置 */
    if ((intval($_CFG['captcha']) & CAPTCHA_COMMENT) && gd_version() > 0)
    {
        $smarty->assign('enabled_captcha', 1);
        $smarty->assign('rand', mt_rand());
    }

	$page       =  $comments['pager']['page'];
	$page_count =  $comments['pager']['page_count'];	
	$goods_id   =  $comments['pager']['goods_id'];	
	
    $result['message'] = $_CFG['comment_check'] ? $_LANG['cmt_submit_wait'] : $_LANG['cmt_submit_done'];
    $result['content'] = $smarty->fetch("library/comments_list.lbi");
	
	$result['totalPages'] = $page_count;
	$result['goods_id'] = $goods_id;
	$result['page'] = $page;
}

echo $json->encode($result);

/*------------------------------------------------------ */
//-- PRIVATE FUNCTION
/*------------------------------------------------------ */

/**
 * 添加评论内容
 *
 * @access  public
 * @param   object  $cmt
 * @return  void
 */
function add_comment($cmt)
{	
	/* 评论是否需要审核 */
    //$status = 1 - $GLOBALS['_CFG']['comment_check'];

    $user_id = empty($_SESSION['user_id']) ? 0 : $_SESSION['user_id'];
    //$email = empty($cmt->email) ? $_SESSION['email'] : trim($cmt->email);
    $user_name = empty($cmt->username) ? $_SESSION['user_name'] : trim($cmt->username);
    //$email = htmlspecialchars($email);
    $user_name = htmlspecialchars($user_name);

	
	
	$email = '';
	
	
    /* 保存评论内容 */
    $sql = "INSERT INTO " .$GLOBALS['ecs']->table('comment') .
           "(comment_type, id_value, email, user_name, content, comment_rank, add_time, ip_address, status, parent_id, user_id) VALUES " .
           "('" .$cmt->type. "', '" .$cmt->id. "', '$email', '$user_name', '" .$cmt->content."', '".$cmt->rank."', ".gmtime().", '".real_ip()."', '$status', '".$cmt->parent_id."', '$user_id')";

    $result = $GLOBALS['db']->query($sql);
    clear_cache_files('comments_list.lbi');
    /*if ($status > 0)
    {
        add_feed($GLOBALS['db']->insert_id(), COMMENT_GOODS);
    }*/
	
	$comment_id = $GLOBALS['db']->insert_id();
	update_temp_comment_img($comment_id);
    return $comment_id; 
}

?>