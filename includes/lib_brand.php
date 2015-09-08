<?php

/**
 * ECSHOP 品牌控制
 * ============================================================================
 * * 版权所有 2005-2012 上海商派网络科技有限公司，并保留所有权利。
 * 网站地址: http://www.ecshop.com；
 * ----------------------------------------------------------------------------
 * 这不是一个自由软件！您只能在不用于商业目的的前提下对程序代码进行修改和
 * 使用；不允许对程序代码以任何形式任何目的的再发布。
 * ============================================================================
 * $Author: liubo $
 * $Id: lib_transaction.php 17217 2011-01-19 06:29:08Z liubo $
*/

if (!defined('IN_ECS'))
{
    die('Hacking attempt');
}

function get_all_brand() {
	
	$sql = "SELECT b.brand_id, b.brand_name, b.brand_logo,b.blogo ".
            "FROM " . $GLOBALS['ecs']->table('brand') . "AS b where b.is_show=1 ORDER BY  b.sort_order desc";
   
    $row = $GLOBALS['db']->getAll($sql);
	$brand_en = array();
    foreach ($row AS $key => $val)
    {
        $val['url']			= build_uri('brand', array('cid' => $cat, 'bid' => $val['brand_id']), $val['brand_name']);
		$val['brand_logo']  = '/data/brandlogo/'.$val['brand_logo'];
		$val['brand_text']  = '/data/brandlogo/'.$val['blogo'];
        preg_match("/([a-zA-Z\s0-9\.\']*)/is",$val['brand_name'],$en);
		$kvalue = substr($en[1],0,1);
		if($kvalue){
			$brand_en[strtoupper($kvalue)][] = $val;
		}
	}
	if($brand_en){
		ksort($brand_en);
	}
	//print_r($brand_en);
    return $brand_en;
}
?>