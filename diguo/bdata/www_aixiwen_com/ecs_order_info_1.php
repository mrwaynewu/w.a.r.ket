<?php
require("../../inc/header.php");

/*
		SoftName : EmpireBak Version 2010
		Author   : wm_chief
		Copyright: Powered by www.phome.net
*/

DoSetDbChar('utf8');
E_D("DROP TABLE IF EXISTS `ecs_order_info`;");
E_C("CREATE TABLE `ecs_order_info` (
  `order_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `order_sn` varchar(20) NOT NULL DEFAULT '',
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `order_status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `shipping_status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `pay_status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `consignee` varchar(60) NOT NULL DEFAULT '',
  `country` smallint(5) unsigned NOT NULL DEFAULT '0',
  `province` smallint(5) unsigned NOT NULL DEFAULT '0',
  `city` smallint(5) unsigned NOT NULL DEFAULT '0',
  `district` smallint(5) unsigned NOT NULL DEFAULT '0',
  `address` varchar(255) NOT NULL DEFAULT '',
  `zipcode` varchar(60) NOT NULL DEFAULT '',
  `tel` varchar(60) NOT NULL DEFAULT '',
  `mobile` varchar(60) NOT NULL DEFAULT '',
  `email` varchar(60) NOT NULL DEFAULT '',
  `best_time` varchar(120) NOT NULL DEFAULT '',
  `sign_building` varchar(120) NOT NULL DEFAULT '',
  `postscript` varchar(255) NOT NULL DEFAULT '',
  `shipping_id` tinyint(3) NOT NULL DEFAULT '0',
  `shipping_name` varchar(120) NOT NULL DEFAULT '',
  `pay_id` tinyint(3) NOT NULL DEFAULT '0',
  `pay_name` varchar(120) NOT NULL DEFAULT '',
  `how_oos` varchar(120) NOT NULL DEFAULT '',
  `how_surplus` varchar(120) NOT NULL DEFAULT '',
  `pack_name` varchar(120) NOT NULL DEFAULT '',
  `card_name` varchar(120) NOT NULL DEFAULT '',
  `card_message` varchar(255) NOT NULL DEFAULT '',
  `inv_payee` varchar(120) NOT NULL DEFAULT '',
  `inv_content` varchar(120) NOT NULL DEFAULT '',
  `goods_amount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `shipping_fee` decimal(10,2) NOT NULL DEFAULT '0.00',
  `insure_fee` decimal(10,2) NOT NULL DEFAULT '0.00',
  `pay_fee` decimal(10,2) NOT NULL DEFAULT '0.00',
  `pack_fee` decimal(10,2) NOT NULL DEFAULT '0.00',
  `card_fee` decimal(10,2) NOT NULL DEFAULT '0.00',
  `money_paid` decimal(10,2) NOT NULL DEFAULT '0.00',
  `surplus` decimal(10,2) NOT NULL DEFAULT '0.00',
  `integral` int(10) unsigned NOT NULL DEFAULT '0',
  `integral_money` decimal(10,2) NOT NULL DEFAULT '0.00',
  `bonus` decimal(10,2) NOT NULL DEFAULT '0.00',
  `order_amount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `from_ad` smallint(5) NOT NULL DEFAULT '0',
  `referer` varchar(255) NOT NULL DEFAULT '',
  `add_time` int(10) unsigned NOT NULL DEFAULT '0',
  `confirm_time` int(10) unsigned NOT NULL DEFAULT '0',
  `pay_time` int(10) unsigned NOT NULL DEFAULT '0',
  `shipping_time` int(10) unsigned NOT NULL DEFAULT '0',
  `pack_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `card_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `bonus_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `invoice_no` varchar(255) NOT NULL DEFAULT '',
  `extension_code` varchar(30) NOT NULL DEFAULT '',
  `extension_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `to_buyer` varchar(255) NOT NULL DEFAULT '',
  `pay_note` varchar(255) NOT NULL DEFAULT '',
  `agency_id` smallint(5) unsigned NOT NULL,
  `inv_type` varchar(60) NOT NULL,
  `tax` decimal(10,2) NOT NULL,
  `is_separate` tinyint(1) NOT NULL DEFAULT '0',
  `parent_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `discount` decimal(10,2) NOT NULL,
  PRIMARY KEY (`order_id`),
  UNIQUE KEY `order_sn` (`order_sn`),
  KEY `user_id` (`user_id`),
  KEY `order_status` (`order_status`),
  KEY `shipping_status` (`shipping_status`),
  KEY `pay_status` (`pay_status`),
  KEY `shipping_id` (`shipping_id`),
  KEY `pay_id` (`pay_id`),
  KEY `extension_code` (`extension_code`,`extension_id`),
  KEY `agency_id` (`agency_id`)
) ENGINE=MyISAM AUTO_INCREMENT=58 DEFAULT CHARSET=utf8");
E_D("replace into `ecs_order_info` values('1','2013121684882','0','5','1','2','111','1','4','55','541','111','111','111','11','222@qq.com','','','','5','申通快递','2','银行汇款/转帐','等待所有商品备齐后再发','','','','','','','399.00','15.00','0.00','0.00','0.00','0.00','414.00','0.00','0','0.00','0.00','0.00','0','本站','1387156881','1387156893','1387156893','1387156904','0','0','0','','','0','','','0','','0.00','0','0','0.00');");
E_D("replace into `ecs_order_info` values('2','2013121628773','0','5','1','2','111','1','7','101','902','333','444','5655','','222@qq.com','','','','5','申通快递','2','银行汇款/转帐','等待所有商品备齐后再发','','','','','','','1995.00','15.00','0.00','0.00','0.00','0.00','2010.00','0.00','0','0.00','0.00','0.00','0','本站','1387157023','1387157036','1387157036','1387157046','0','0','0','','','0','','','0','','0.00','0','0','0.00');");
E_D("replace into `ecs_order_info` values('3','2014010686810','0','0','0','0','111111','1','4','55','539','111111111','111111','15000679021','','111111@qq.com','','','','5','申通快递','2','银行汇款/转帐','等待所有商品备齐后再发','','','','','','','1179.00','15.00','0.00','0.00','0.00','0.00','0.00','0.00','0','0.00','0.00','1194.00','0','本站','1388955903','0','0','0','0','0','0','','','0','','','0','','0.00','0','0','0.00');");
E_D("replace into `ecs_order_info` values('5','2014012262262','0','0','0','0','fshshs','1','5','64','618','dagdsagarhga','235462','12354689522','','123@qq.com','','','','5','申通快递','2','银行汇款/转帐','等待所有商品备齐后再发','','','','','','','878.00','15.00','0.00','0.00','0.00','0.00','0.00','0.00','0','0.00','0.00','893.00','0','本站','1390341748','0','0','0','0','0','0','','','0','','','0','','0.00','0','0','0.00');");
E_D("replace into `ecs_order_info` values('6','2014012383197','0','5','1','2','111111','1','5','65','626','agagqarygsae','235645','12345678944','','123456@qq.com','','','','5','申通快递','2','银行汇款/转帐','等待所有商品备齐后再发','','','','','','','259.00','15.00','0.00','0.00','0.00','0.00','274.00','0.00','0','0.00','0.00','0.00','0','本站','1390413144','1390413159','1390413165','1390413197','0','0','0','','','0','','','0','','0.00','0','0','0.00');");
E_D("replace into `ecs_order_info` values('22','2014012342687','0','0','0','0','aetaega','1','6','78','713','adshaga','256988','12365898744','','125@qq.com','','','','5','申通快递','2','银行汇款/转帐','等待所有商品备齐后再发','','','','','','','69.00','15.00','0.00','0.00','0.00','0.00','0.00','0.00','0','0.00','0.00','84.00','0','本站','1390417496','0','0','0','0','0','0','','','0','','','0','','0.00','0','0','0.00');");
E_D("replace into `ecs_order_info` values('23','2014012389175','0','0','0','0','sdgadega','1','4','55','539','asdgagdag','123456','12345678963','','123456@qq.com','','','','5','申通快递','2','银行汇款/转帐','等待所有商品备齐后再发','','','','','','','669.00','15.00','0.00','0.00','0.00','0.00','0.00','0.00','0','0.00','0.00','684.00','0','','1390417659','0','0','0','0','0','0','','','0','','','0','','0.00','0','0','0.00');");
E_D("replace into `ecs_order_info` values('24','2014012351658','0','0','0','0','ertur6ue','1','5','62','605','srthsfsjdm','234200','15896587421','','1225@qq.com','','','','5','申通快递','2','银行汇款/转帐','等待所有商品备齐后再发','','','','','','','275.00','15.00','0.00','0.00','0.00','0.00','0.00','0.00','0','0.00','0.00','290.00','0','','1390418109','0','0','0','0','0','0','','','0','','','0','','0.00','0','0','0.00');");
E_D("replace into `ecs_order_info` values('25','2014012383507','0','0','0','0','sdhshsdj','1','4','56','548','sdhsdfhrs','234566','15896542131','','123@qq.com','','','','5','申通快递','2','银行汇款/转帐','等待所有商品备齐后再发','','','','','','','320.00','15.00','0.00','0.00','0.00','0.00','0.00','0.00','0','0.00','0.00','335.00','0','','1390418164','0','0','0','0','0','0','','','0','','','0','','0.00','0','0','0.00');");
E_D("replace into `ecs_order_info` values('26','2014012314897','0','0','0','0','sdhsrhdrhs','1','4','54','532','dhasrdgrahah','123456','154896222333','','123252@qq.com','','','','5','申通快递','2','银行汇款/转帐','等待所有商品备齐后再发','','','','','','','459.00','15.00','0.00','0.00','0.00','0.00','0.00','0.00','0','0.00','0.00','474.00','0','本站','1390420686','0','0','0','0','0','0','','','0','','','0','','0.00','0','0','0.00');");
E_D("replace into `ecs_order_info` values('39','2014072372056','0','0','0','0','的是非得失','1','4','55','543','王三丰说撒的飞','530000','18607715945','','sdf@asdfa.com','','','','5','申通快递','4','支付宝','等待所有商品备齐后再发','','','','','','','60.00','15.00','0.00','0.00','0.00','0.00','0.00','0.00','0','0.00','0.00','75.00','0','本站','1406067445','0','0','0','0','0','0','','','0','','','0','','0.00','0','0','0.00');");
E_D("replace into `ecs_order_info` values('43','2014072562034','0','0','0','0','小心','1','7','103','912','内蒙古','026000','15247584659','','dgrj@126.com','','','','5','申通快递','5','支付宝（手机版）','等待所有商品备齐后再发','','','','','','','120.00','15.00','0.00','0.00','0.00','0.00','0.00','0.00','0','0.00','0.00','135.00','0','本站','1406189324','0','0','0','0','0','0','','','0','','','0','','0.00','0','0','0.00');");
E_D("replace into `ecs_order_info` values('46','2014072568802','0','0','0','0','大工业','1','2','52','500','村子发','332323','786876','','114YY0069021@qq.com','','','','5','申通快递','4','支付宝','等待所有商品备齐后再发','','','','','','','800.00','15.00','0.00','0.00','0.00','0.00','0.00','0.00','0','0.00','0.00','815.00','0','本站','1406250081','0','0','0','0','0','0','','','0','','','0','','0.00','0','0','0.00');");
E_D("replace into `ecs_order_info` values('52','2014072691423','0','0','0','0','hahah','1','31','390','3298','一个个呀','','13111111111','','aa@qq.com','','','','5','申通快递','5','支付宝（手机版）','等待所有商品备齐后再发','','','','','','','75.00','15.00','0.00','0.00','0.00','0.00','0.00','0.00','0','0.00','0.00','90.00','0','本站','1406302149','0','0','0','0','0','0','','','0','','','0','','0.00','0','0','0.00');");
E_D("replace into `ecs_order_info` values('57','2014072887384','0','0','0','0','啊实打实','1','4','55','539','爱上的','410000','13755191952','','183102557@qq.com','','','','5','申通快递','5','支付宝（手机版）','等待所有商品备齐后再发','','','','','','','39.00','15.00','0.00','0.00','0.00','0.00','0.00','0.00','0','0.00','0.00','54.00','0','本站','1406495061','0','0','0','0','0','0','','','0','','','0','','0.00','0','0','0.00');");

require("../../inc/footer.php");
?>