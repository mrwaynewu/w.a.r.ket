<?php

define('IN_ECS', true);

require(dirname(__FILE__) . '/includes/init.php');
require(ROOT_PATH . 'includes/cls_transport.php');
require(ROOT_PATH . 'includes/cls_json.php');

require(ROOT_PATH . 'includes/shopex_json.php');

$data['api_ver'] = '1.0';
$data['version'] = VERSION;
$data['patch'] = file_get_contents(ROOT_PATH.ADMIN_PATH."/patch_num");
$data['ecs_lang'] = $_CFG['lang'];
$data['release'] = RELEASE;
$data['charset'] = strtoupper(EC_CHARSET);
$data['certificate_id'] = $_CFG['certificate_id'];
$data['token'] = md5($_CFG['token']);
$data['certi'] = $_CFG['certi'];
$data['php_ver'] = PHP_VERSION;
$data['mysql_ver'] = $db->version();
$data['shop_url'] = urlencode($ecs->url());
$data['admin_url'] = urlencode($ecs->url().ADMIN_PATH);
$data['sess_id'] = $GLOBALS['sess']->get_session_id();
$data['stamp'] = mktime();
$data['ent_id'] = $_CFG['ent_id'];
$data['ent_ac'] = $_CFG['ent_ac'];
$data['ent_sign'] = $_CFG['ent_sign'];
$data['ent_email'] = $_CFG['ent_email'];

$act = !empty($_REQUEST['act']) ? $_REQUEST['act'] :  'index';

$must = array('version','ecs_lang','charset','patch','stamp','api_ver');
if($act =='menu_api')
{
	$json   = new JSON;
	$result = array('error' => 0, 'message' => '', 'content' => '');
	die($json->encode($result));
}
elseif($act == 'cloud_remind')
{
	$json   = new JSON;
	$result = array('error' => 0, 'message' => '', 'content' => '');
	die($json->encode($result));
}
elseif($act == 'close_remind')
{
	$json   = new JSON;
	$result = array('error' => 0, 'message' => '', 'content' => '');
	die($json->encode($result));
}
else
{
	$json   = new JSON;
	$result = array('error' => 0, 'message' => '', 'content' => '');
	die($json->encode($result));
}

?>