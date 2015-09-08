<?php
define('IN_ECS', true);
require(dirname(__FILE__) . '/includes/init.php');
require('wxch_lg.php');
$act = trim($_REQUEST['act']);
$wxch_lang['ur_here'] = '砸金蛋';
if($act == 'view'){
    $wxid = $_GET['wxid'];
    $id = $_GET['id'];
    if(!empty($wxid)){
        $sql = "SELECT * FROM `wxch_prize_register` WHERE `pid` = '$id'";
        $res = $db -> getRow($sql);
        $res['prize_name'] = $db -> getOne("SELECT `prize_name` FROM `wxch_prize_users` WHERE `id` = '$id'");
        $res['dateline'] = date("Y-m-d H:i:s", $res['dateline']);
    }
    $smarty -> assign('data', $res);
    $smarty -> assign('wxch_lang', $wxch_lang);
    $smarty -> display('wxch_zjd_info.html');
}
?>