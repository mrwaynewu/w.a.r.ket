-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 03, 2015 at 04:33 PM
-- Server version: 5.6.24
-- PHP Version: 5.6.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `warket`
--

-- --------------------------------------------------------

--
-- Table structure for table `ecs_account_log`
--

CREATE TABLE IF NOT EXISTS `ecs_account_log` (
  `log_id` mediumint(8) unsigned NOT NULL,
  `user_id` mediumint(8) unsigned NOT NULL,
  `user_money` decimal(10,2) NOT NULL,
  `frozen_money` decimal(10,2) NOT NULL,
  `rank_points` mediumint(9) NOT NULL,
  `pay_points` mediumint(9) NOT NULL,
  `change_time` int(10) unsigned NOT NULL,
  `change_desc` varchar(255) NOT NULL,
  `change_type` tinyint(3) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ecs_ad`
--

CREATE TABLE IF NOT EXISTS `ecs_ad` (
  `ad_id` smallint(5) unsigned NOT NULL,
  `position_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `media_type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ad_name` varchar(60) NOT NULL DEFAULT '',
  `ad_link` varchar(255) NOT NULL DEFAULT '',
  `ad_code` text NOT NULL,
  `start_time` int(11) NOT NULL DEFAULT '0',
  `end_time` int(11) NOT NULL DEFAULT '0',
  `link_man` varchar(60) NOT NULL DEFAULT '',
  `link_email` varchar(60) NOT NULL DEFAULT '',
  `link_phone` varchar(60) NOT NULL DEFAULT '',
  `click_count` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `enabled` tinyint(3) unsigned NOT NULL DEFAULT '1'
) ENGINE=MyISAM AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ecs_ad`
--

INSERT INTO `ecs_ad` (`ad_id`, `position_id`, `media_type`, `ad_name`, `ad_link`, `ad_code`, `start_time`, `end_time`, `link_man`, `link_email`, `link_phone`, `click_count`, `enabled`) VALUES
(28, 11, 0, '团购列表页右侧广告一', 'http://www.haoid.cn', '1390518412643487010.jpg', 1390406400, 1708531200, '', '', '', 1, 1),
(29, 12, 0, '团购列表页右侧广告二', 'http://www.haoid.cn', '1390518430908793815.jpg', 1390406400, 1613923200, '', '', '', 0, 1),
(30, 13, 0, '团购列表页右侧广告三', 'http://www.haoid.cn', '1390518446394401991.jpg', 1390406400, 1645459200, '', '', '', 1, 1),
(4, 4, 0, 'c1_6', 'http://www.haoid.cn', '1385061431186132996.jpg', 1384704000, 1545321600, '', '', '', 0, 1),
(5, 4, 0, 'c1_1', 'http://www.haoid.cn', '1385062115512889604.jpg', 1384963200, 1608480000, '', '', '', 0, 1),
(6, 4, 0, 'c2_6', 'http://www.haoid.cn', '1385061779185345983.jpg', 1384963200, 1829318400, '', '', '', 0, 1),
(7, 4, 0, 'c3_6', 'http://www.haoid.cn', '1385061801470000152.jpg', 1384963200, 1640016000, '', '', '', 0, 1),
(8, 4, 0, 'c2_1', 'http://www.haoid.cn', '1385062138557064424.jpg', 1384963200, 1734710400, '', '', '', 0, 1),
(9, 4, 0, 'c3_1', 'http://www.haoid.cn', '1385062158820738155.jpg', 1384963200, 1734710400, '', '', '', 0, 1),
(10, 4, 0, 'c1_16', 'http://www.haoid.cn', '1385062533817611084.jpg', 1384963200, 1703088000, '', '', '', 0, 1),
(11, 4, 0, 'c2_16', 'http://www.haoid.cn', '1385062555075564130.jpg', 1384963200, 1703088000, '', '', '', 0, 1),
(12, 4, 0, 'c3_16', 'http://www.haoid.cn', '1385062574350540187.jpg', 1384963200, 1671552000, '', '', '', 0, 1),
(13, 4, 0, 'c1_17', 'http://www.haoid.cn', '1385063109926844212.jpg', 1384963200, 1734710400, '', '', '', 0, 1),
(14, 4, 0, 'c2_17', 'http://www.haoid.cn', '1385063127710913762.jpg', 1384963200, 1671552000, '', '', '', 0, 1),
(15, 4, 0, 'c3_17', 'http://www.haoid.cn', '1385063145138551529.jpg', 1384963200, 1608480000, '', '', '', 0, 1),
(16, 4, 0, 'c1_12', 'http://www.haoid.cn', '1385063166350123929.jpg', 1384963200, 1640016000, '', '', '', 0, 1),
(17, 4, 0, 'c2_12', 'http://www.haoid.cn', '1385063184197402989.jpg', 1384963200, 1671552000, '', '', '', 0, 1),
(18, 4, 0, 'c3_12', 'http://www.haoid.cn', '1385063201094512286.jpg', 1384963200, 1671552000, '', '', '', 0, 1),
(19, 5, 0, 'cate_1_6', 'http://www.haoid.cn', '1387134240996968982.jpg', 1387036800, 1831392000, '', '', '', 0, 1),
(20, 5, 0, 'cate_2_6', 'http://www.haoid.cn', '1387134436631919403.jpg', 1387036800, 1673625600, '', '', '', 0, 1),
(21, 5, 0, 'cate_3_6', 'http://www.haoid.cn', '1387134610289875197.jpg', 1387036800, 1673625600, '', '', '', 0, 1),
(22, 6, 0, 'sad_1_6', 'http://www.haoid.cn', '1388712037887027364.jpg', 1388592000, 1548950400, '', '', '', 0, 1),
(23, 6, 0, 'sad_2_6', 'http://www.haoid.cn', '1388712059394990489.jpg', 1388592000, 1580486400, '', '', '', 0, 1),
(24, 7, 0, '团购列表左侧广告一', 'http://www.haoid.cn', '1390350714139310283.jpg', 1390233600, 1645286400, '', '', '', 4, 1),
(25, 8, 0, '团购列表左侧广告二', 'http://www.haoid.cn', '1390350730168563820.jpg', 1390233600, 1582128000, '', '', '', 1, 1),
(26, 9, 0, '团购列表左侧广告三', 'http://www.haoid.cn', '1390350744473328295.jpg', 1390233600, 1392825600, '', '', '', 0, 1),
(27, 10, 0, '团购列表左侧广告四', 'http://www.haoid.cn', '1390350760626738934.jpg', 1390233600, 1708358400, '', '', '', 0, 1),
(31, 14, 0, '微市首页主广告1', '', '1438025325778773346.jpg', 1438012800, 1440604800, '', '', '', 2, 1),
(32, 14, 0, '微市首页主广告2', '', '1438025352570445464.jpg', 1438012800, 1440604800, '', '', '', 0, 1),
(33, 14, 0, '微市首页主广告3', '', '1438025372896434178.jpg', 1438012800, 1440604800, '', '', '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `ecs_admin_action`
--

CREATE TABLE IF NOT EXISTS `ecs_admin_action` (
  `action_id` tinyint(3) unsigned NOT NULL,
  `parent_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `action_code` varchar(20) NOT NULL DEFAULT '',
  `relevance` varchar(20) NOT NULL DEFAULT ''
) ENGINE=MyISAM AUTO_INCREMENT=136 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ecs_admin_action`
--

INSERT INTO `ecs_admin_action` (`action_id`, `parent_id`, `action_code`, `relevance`) VALUES
(1, 0, 'goods', ''),
(2, 0, 'cms_manage', ''),
(3, 0, 'users_manage', ''),
(4, 0, 'priv_manage', ''),
(5, 0, 'sys_manage', ''),
(6, 0, 'order_manage', ''),
(7, 0, 'promotion', ''),
(8, 0, 'email', ''),
(9, 0, 'templates_manage', ''),
(10, 0, 'db_manage', ''),
(11, 0, 'sms_manage', ''),
(21, 1, 'goods_manage', ''),
(22, 1, 'remove_back', ''),
(23, 1, 'cat_manage', ''),
(24, 1, 'cat_drop', 'cat_manage'),
(25, 1, 'attr_manage', ''),
(26, 1, 'brand_manage', ''),
(27, 1, 'comment_priv', ''),
(84, 1, 'tag_manage', ''),
(30, 2, 'article_cat', ''),
(31, 2, 'article_manage', ''),
(32, 2, 'shopinfo_manage', ''),
(33, 2, 'shophelp_manage', ''),
(34, 2, 'vote_priv', ''),
(35, 7, 'topic_manage', ''),
(74, 4, 'template_manage', ''),
(73, 3, 'feedback_priv', ''),
(38, 3, 'integrate_users', ''),
(39, 3, 'sync_users', 'integrate_users'),
(40, 3, 'users_manage', ''),
(41, 3, 'users_drop', 'users_manage'),
(42, 3, 'user_rank', ''),
(85, 3, 'surplus_manage', 'account_manage'),
(43, 4, 'admin_manage', ''),
(44, 4, 'admin_drop', 'admin_manage'),
(45, 4, 'allot_priv', 'admin_manage'),
(46, 4, 'logs_manage', ''),
(47, 4, 'logs_drop', 'logs_manage'),
(48, 5, 'shop_config', ''),
(49, 5, 'ship_manage', ''),
(50, 5, 'payment', ''),
(51, 5, 'shiparea_manage', ''),
(52, 5, 'area_manage', ''),
(53, 6, 'order_os_edit', ''),
(54, 6, 'order_ps_edit', 'order_os_edit'),
(55, 6, 'order_ss_edit', 'order_os_edit'),
(56, 6, 'order_edit', 'order_os_edit'),
(57, 6, 'order_view', ''),
(58, 6, 'order_view_finished', ''),
(59, 6, 'repay_manage', ''),
(60, 6, 'booking', ''),
(61, 6, 'sale_order_stats', ''),
(62, 6, 'client_flow_stats', ''),
(78, 7, 'snatch_manage', ''),
(83, 7, 'ad_manage', ''),
(80, 7, 'gift_manage', ''),
(81, 7, 'card_manage', ''),
(70, 1, 'goods_type', ''),
(82, 7, 'pack', ''),
(79, 7, 'bonus_manage', ''),
(75, 5, 'friendlink', ''),
(76, 5, 'db_backup', ''),
(77, 5, 'db_renew', 'db_backup'),
(86, 4, 'agency_manage', ''),
(87, 3, 'account_manage', ''),
(88, 5, 'flash_manage', ''),
(89, 5, 'navigator', ''),
(90, 7, 'auction', ''),
(91, 7, 'group_by', ''),
(92, 7, 'favourable', ''),
(93, 7, 'whole_sale', ''),
(94, 1, 'goods_auto', ''),
(95, 2, 'article_auto', ''),
(96, 5, 'cron', ''),
(97, 5, 'affiliate', ''),
(98, 5, 'affiliate_ck', ''),
(99, 8, 'attention_list', ''),
(100, 8, 'email_list', ''),
(101, 8, 'magazine_list', ''),
(102, 8, 'view_sendlist', ''),
(103, 1, 'virualcard', ''),
(104, 7, 'package_manage', ''),
(105, 1, 'picture_batch', ''),
(106, 1, 'goods_export', ''),
(107, 1, 'goods_batch', ''),
(108, 1, 'gen_goods_script', ''),
(109, 5, 'sitemap', ''),
(110, 5, 'file_priv', ''),
(111, 5, 'file_check', ''),
(112, 9, 'template_select', ''),
(113, 9, 'template_setup', ''),
(114, 9, 'library_manage', ''),
(115, 9, 'lang_edit', ''),
(116, 9, 'backup_setting', ''),
(117, 9, 'mail_template', ''),
(118, 10, 'db_backup', ''),
(119, 10, 'db_renew', ''),
(120, 10, 'db_optimize', ''),
(121, 10, 'sql_query', ''),
(122, 10, 'convert', ''),
(124, 11, 'sms_send', ''),
(128, 7, 'exchange_goods', ''),
(129, 6, 'delivery_view', ''),
(130, 6, 'back_view', ''),
(131, 5, 'reg_fields', ''),
(132, 5, 'shop_authorized', ''),
(133, 5, 'webcollect_manage', ''),
(134, 4, 'suppliers_manage', ''),
(135, 4, 'role_manage', '');

-- --------------------------------------------------------

--
-- Table structure for table `ecs_admin_log`
--

CREATE TABLE IF NOT EXISTS `ecs_admin_log` (
  `log_id` int(10) unsigned NOT NULL,
  `log_time` int(10) unsigned NOT NULL DEFAULT '0',
  `user_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `log_info` varchar(255) NOT NULL DEFAULT '',
  `ip_address` varchar(15) NOT NULL DEFAULT ''
) ENGINE=MyISAM AUTO_INCREMENT=1207 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ecs_admin_log`
--

INSERT INTO `ecs_admin_log` (`log_id`, `log_time`, `user_id`, `log_info`, `ip_address`) VALUES
(1148, 1409665639, 1, '删除操作日志: ', '127.0.0.1'),
(1149, 1437767475, 2, '编辑商店设置: ', '0.0.0.0'),
(1150, 1437767645, 2, '编辑商店设置: ', '0.0.0.0'),
(1151, 1437770818, 2, '编辑商店设置: ', '0.0.0.0'),
(1152, 1437771026, 2, '编辑商店设置: ', '0.0.0.0'),
(1153, 1437771545, 2, '编辑商店设置: ', '0.0.0.0'),
(1154, 1437771723, 2, '编辑商店设置: ', '0.0.0.0'),
(1155, 1438022415, 2, '编辑权限管理: admin1', '0.0.0.0'),
(1156, 1438022430, 2, '编辑权限管理: admin2', '0.0.0.0'),
(1157, 1438022437, 2, '编辑权限管理: admin', '0.0.0.0'),
(1158, 1438022714, 2, '编辑商店设置: ', '0.0.0.0'),
(1159, 1438023945, 2, '编辑商店设置: ', '0.0.0.0'),
(1160, 1438025227, 2, '添加广告位置: 微市首页主广告', '0.0.0.0'),
(1161, 1438025325, 2, '添加广告: 微市首页主广告1', '0.0.0.0'),
(1162, 1438025352, 2, '添加广告: 微市首页主广告2', '0.0.0.0'),
(1163, 1438025372, 2, '添加广告: 微市首页主广告3', '0.0.0.0'),
(1164, 1438025599, 2, '编辑广告: 微市首页主广告2', '0.0.0.0'),
(1165, 1438107760, 2, '编辑商店设置: ', '0.0.0.0'),
(1166, 1438110114, 2, '编辑商品分类: 男士', '0.0.0.0'),
(1167, 1438110416, 2, '编辑商品分类: 身体护理', '0.0.0.0'),
(1168, 1438110425, 2, '编辑商品分类: 身体护理', '0.0.0.0'),
(1169, 1438110987, 2, '编辑商品分类: 身体护理', '0.0.0.0'),
(1170, 1438111040, 2, '编辑商品分类: 身体护理', '0.0.0.0'),
(1171, 1438111063, 2, '编辑商品分类: 身体护理', '0.0.0.0'),
(1172, 1438111109, 2, '编辑商品分类: 身体护理', '0.0.0.0'),
(1173, 1438111166, 2, '编辑商品分类: 身体护理', '0.0.0.0'),
(1174, 1438111262, 2, '编辑商品分类: 身体护理', '0.0.0.0'),
(1175, 1438111285, 2, '编辑商品分类: 身体护理', '0.0.0.0'),
(1176, 1438111314, 2, '编辑商品分类: 身体护理', '0.0.0.0'),
(1177, 1438111399, 2, '编辑商品分类: 身体护理', '0.0.0.0'),
(1178, 1438113118, 2, '编辑商品分类: 身体护理', '0.0.0.0'),
(1179, 1438113201, 2, '编辑商品分类: 身体护理', '0.0.0.0'),
(1180, 1438113221, 2, '编辑商品分类: 身体护理', '0.0.0.0'),
(1181, 1438113241, 2, '编辑商品分类: 身体护理', '0.0.0.0'),
(1182, 1438113289, 2, '编辑商品分类: 身体护理', '0.0.0.0'),
(1183, 1438209387, 2, '编辑广告位置: 微市首页主广告', '0.0.0.0'),
(1184, 1438209398, 2, '编辑广告位置: 微市首页主广告', '0.0.0.0'),
(1185, 1438209578, 2, '编辑广告位置: 602', '0.0.0.0'),
(1186, 1438262809, 2, '编辑广告位置: 300', '0.0.0.0'),
(1187, 1438365029, 2, '编辑商品: 迪奥红毒女士香水EDT 50ml', '0.0.0.0'),
(1188, 1438365337, 2, '编辑商品: 迪奥红毒女士香水EDT 50ml', '0.0.0.0'),
(1189, 1438365582, 2, '编辑商品: 迪奥红毒女士香水EDT 50ml', '0.0.0.0'),
(1190, 1438366418, 2, '编辑商品: 迪奥红毒女士香水EDT 50ml', '0.0.0.0'),
(1191, 1438366444, 2, '编辑商品: 迪奥红毒女士香水EDT 50ml', '0.0.0.0'),
(1192, 1438366462, 2, '编辑商品: 迪奥红毒女士香水EDT 50ml', '0.0.0.0'),
(1193, 1438366618, 2, '编辑商品: 迪奥红毒女士香水EDT 50ml', '0.0.0.0'),
(1194, 1438366639, 2, '编辑商品: 迪奥红毒女士香水EDT 50ml', '0.0.0.0'),
(1195, 1438366696, 2, '编辑商品: 迪奥红毒女士香水EDT 50ml', '0.0.0.0'),
(1196, 1438366746, 2, '编辑商品: 迪奥红毒女士香水EDT 50ml', '0.0.0.0'),
(1197, 1438367708, 2, '编辑商品: 迪奥红毒女士香水EDT 50ml', '0.0.0.0'),
(1198, 1438367723, 2, '编辑商品: 迪奥红毒女士香水EDT 50ml', '0.0.0.0'),
(1199, 1438367762, 2, '编辑商品: 迪奥红毒女士香水EDT 50ml', '0.0.0.0'),
(1200, 1438368246, 2, '编辑商品: 迪奥红毒女士香水EDT 50ml', '0.0.0.0'),
(1201, 1438368259, 2, '编辑商品: 迪奥红毒女士香水EDT 50ml', '0.0.0.0'),
(1202, 1438368271, 2, '编辑商品: 迪奥红毒女士香水EDT 50ml', '0.0.0.0'),
(1203, 1438368281, 2, '编辑商品: 迪奥红毒女士香水EDT 50ml', '0.0.0.0'),
(1204, 1438368853, 2, '编辑商品分类: 彩妆', '0.0.0.0'),
(1205, 1438368862, 2, '编辑商品分类: 身体护理', '0.0.0.0'),
(1206, 1438368886, 2, '编辑商品分类: 丰胸瘦身', '0.0.0.0');

-- --------------------------------------------------------

--
-- Table structure for table `ecs_admin_message`
--

CREATE TABLE IF NOT EXISTS `ecs_admin_message` (
  `message_id` smallint(5) unsigned NOT NULL,
  `sender_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `receiver_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `sent_time` int(11) unsigned NOT NULL DEFAULT '0',
  `read_time` int(11) unsigned NOT NULL DEFAULT '0',
  `readed` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `deleted` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `title` varchar(150) NOT NULL DEFAULT '',
  `message` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ecs_admin_user`
--

CREATE TABLE IF NOT EXISTS `ecs_admin_user` (
  `user_id` smallint(5) unsigned NOT NULL,
  `user_name` varchar(60) NOT NULL DEFAULT '',
  `email` varchar(60) NOT NULL DEFAULT '',
  `password` varchar(32) NOT NULL DEFAULT '',
  `ec_salt` varchar(10) DEFAULT NULL,
  `add_time` int(11) NOT NULL DEFAULT '0',
  `last_login` int(11) NOT NULL DEFAULT '0',
  `last_ip` varchar(15) NOT NULL DEFAULT '',
  `action_list` text NOT NULL,
  `nav_list` text NOT NULL,
  `lang_type` varchar(50) NOT NULL DEFAULT '',
  `agency_id` smallint(5) unsigned NOT NULL,
  `suppliers_id` smallint(5) unsigned DEFAULT '0',
  `todolist` longtext,
  `role_id` smallint(5) DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ecs_admin_user`
--

INSERT INTO `ecs_admin_user` (`user_id`, `user_name`, `email`, `password`, `ec_salt`, `add_time`, `last_login`, `last_ip`, `action_list`, `nav_list`, `lang_type`, `agency_id`, `suppliers_id`, `todolist`, `role_id`) VALUES
(1, 'admin2', 'admin@qq.com', 'c8837b23ff8aaa8a2dde915473ce0991', '7174', 1379320263, 1409665509, '127.0.0.1', 'all', '商品列表|goods.php?act=list,订单列表|order.php?act=list,用户评论|comment_manage.php?act=list,会员列表|users.php?act=list,商店设置|shop_config.php?act=list_edit', '', 0, 0, '', 0),
(2, 'admin', 'admin@edward.com', '44b76a855d8266ec0e3c9f45a6ed9919', '8630', 1409204371, 1438360764, '0.0.0.0', 'goods_manage,remove_back,cat_manage,cat_drop,attr_manage,brand_manage,comment_priv,tag_manage,goods_type,goods_auto,virualcard,picture_batch,goods_export,goods_batch,gen_goods_script,article_cat,article_manage,shopinfo_manage,shophelp_manage,vote_priv,article_auto,feedback_priv,integrate_users,sync_users,users_manage,users_drop,user_rank,surplus_manage,account_manage,template_manage,admin_manage,admin_drop,allot_priv,logs_manage,logs_drop,agency_manage,suppliers_manage,role_manage,shop_config,ship_manage,payment,shiparea_manage,area_manage,friendlink,db_backup,db_renew,flash_manage,navigator,cron,affiliate,affiliate_ck,sitemap,file_priv,file_check,reg_fields,shop_authorized,webcollect_manage,order_os_edit,order_ps_edit,order_ss_edit,order_edit,order_view,order_view_finished,repay_manage,booking,sale_order_stats,client_flow_stats,delivery_view,back_view,topic_manage,snatch_manage,ad_manage,gift_manage,card_manage,pack,bonus_manage,auction,group_by,favourable,whole_sale,package_manage,exchange_goods,attention_list,email_list,magazine_list,view_sendlist,template_select,template_setup,library_manage,lang_edit,backup_setting,mail_template,db_backup,db_renew,db_optimize,sql_query,convert,sms_send', '商品列表|goods.php?act=list,订单列表|order.php?act=list,用户评论|comment_manage.php?act=list,会员列表|users.php?act=list,商店设置|shop_config.php?act=list_edit', '', 0, 0, NULL, 0),
(3, 'fourit', 'fourit@yahoo.com', '49308bda8b5e0ab9688ec4bedf6d572c', NULL, 1438022309, 0, '', '', '商品列表|goods.php?act=list,订单列表|order.php?act=list,用户评论|comment_manage.php?act=list,会员列表|users.php?act=list,商店设置|shop_config.php?act=list_edit', '', 0, 0, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ecs_adsense`
--

CREATE TABLE IF NOT EXISTS `ecs_adsense` (
  `from_ad` smallint(5) NOT NULL DEFAULT '0',
  `referer` varchar(255) NOT NULL DEFAULT '',
  `clicks` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ecs_adsense`
--

INSERT INTO `ecs_adsense` (`from_ad`, `referer`, `clicks`) VALUES
(1, '本站', 13),
(24, '本站', 4),
(30, '本站', 1),
(2, '本站', 13),
(3, '本站', 8),
(25, '本站', 1),
(28, '本站', 1),
(31, '本站', 2);

-- --------------------------------------------------------

--
-- Table structure for table `ecs_ad_custom`
--

CREATE TABLE IF NOT EXISTS `ecs_ad_custom` (
  `ad_id` mediumint(8) unsigned NOT NULL,
  `ad_type` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `ad_name` varchar(60) DEFAULT NULL,
  `add_time` int(10) unsigned NOT NULL DEFAULT '0',
  `content` mediumtext,
  `url` varchar(255) DEFAULT NULL,
  `ad_status` tinyint(3) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ecs_ad_position`
--

CREATE TABLE IF NOT EXISTS `ecs_ad_position` (
  `position_id` tinyint(3) unsigned NOT NULL,
  `position_name` varchar(60) NOT NULL DEFAULT '',
  `ad_width` smallint(5) unsigned NOT NULL DEFAULT '0',
  `ad_height` smallint(5) unsigned NOT NULL DEFAULT '0',
  `position_desc` varchar(255) NOT NULL DEFAULT '',
  `position_style` text NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ecs_ad_position`
--

INSERT INTO `ecs_ad_position` (`position_id`, `position_name`, `ad_width`, `ad_height`, `position_desc`, `position_style`) VALUES
(12, '团购列表页右侧广告二', 255, 305, '', '\r\n{foreach from=$ads item=ad}\r\n{$ad}\r\n{/foreach}\r\n'),
(11, '团购列表页右侧广告一', 255, 305, '', '\r\n{foreach from=$ads item=ad}\r\n{$ad}\r\n{/foreach}\r\n'),
(4, '分类轮播广告', 248, 465, '', '\r\n{foreach from=$ads item=ad}\r\n{$ad}\r\n{/foreach}\r\n'),
(5, '顶级分类页轮播广告', 970, 340, '', '\r\n{foreach from=$ads item=ad}\r\n{$ad}\r\n{/foreach}\r\n'),
(6, '顶级分类页轮播下广告左侧', 335, 212, '', '\r\n{foreach from=$ads item=ad}\r\n{$ad}\r\n{/foreach}\r\n'),
(7, '团购列表左侧广告一', 708, 238, '', '\r\n{foreach from=$ads item=ad}\r\n{$ad}\r\n{/foreach}\r\n'),
(8, '团购列表左侧广告二', 708, 238, '', '\r\n{foreach from=$ads item=ad}\r\n{$ad}\r\n{/foreach}\r\n'),
(9, '团购列表左侧广告三', 708, 238, '', '\r\n{foreach from=$ads item=ad}\r\n{$ad}\r\n{/foreach}\r\n'),
(10, '团购列表左侧广告四', 708, 238, '', '\r\n{foreach from=$ads item=ad}\r\n{$ad}\r\n{/foreach}\r\n'),
(13, '团购列表页右侧广告三', 255, 305, '', '\r\n{foreach from=$ads item=ad}\r\n{$ad}\r\n{/foreach}\r\n'),
(14, '微市首页主广告', 602, 300, '', '{foreach from=$ads item=ad}\r\n<div>{$ad}</div>\r\n{/foreach}');

-- --------------------------------------------------------

--
-- Table structure for table `ecs_affiliate_log`
--

CREATE TABLE IF NOT EXISTS `ecs_affiliate_log` (
  `log_id` mediumint(8) NOT NULL,
  `order_id` mediumint(8) NOT NULL,
  `time` int(10) NOT NULL,
  `user_id` mediumint(8) NOT NULL,
  `user_name` varchar(60) DEFAULT NULL,
  `money` decimal(10,2) NOT NULL DEFAULT '0.00',
  `point` int(10) NOT NULL DEFAULT '0',
  `separate_type` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ecs_agency`
--

CREATE TABLE IF NOT EXISTS `ecs_agency` (
  `agency_id` smallint(5) unsigned NOT NULL,
  `agency_name` varchar(255) NOT NULL,
  `agency_desc` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ecs_area_region`
--

CREATE TABLE IF NOT EXISTS `ecs_area_region` (
  `shipping_area_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `region_id` smallint(5) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ecs_area_region`
--

INSERT INTO `ecs_area_region` (`shipping_area_id`, `region_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 3),
(4, 4),
(4, 6),
(4, 9),
(4, 30),
(4, 32);

-- --------------------------------------------------------

--
-- Table structure for table `ecs_article`
--

CREATE TABLE IF NOT EXISTS `ecs_article` (
  `article_id` mediumint(8) unsigned NOT NULL,
  `cat_id` smallint(5) NOT NULL DEFAULT '0',
  `title` varchar(150) NOT NULL DEFAULT '',
  `content` longtext NOT NULL,
  `author` varchar(30) NOT NULL DEFAULT '',
  `author_email` varchar(60) NOT NULL DEFAULT '',
  `keywords` varchar(255) NOT NULL DEFAULT '',
  `article_type` tinyint(1) unsigned NOT NULL DEFAULT '2',
  `is_open` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `add_time` int(10) unsigned NOT NULL DEFAULT '0',
  `file_url` varchar(255) NOT NULL DEFAULT '',
  `open_type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `link` varchar(255) NOT NULL DEFAULT '',
  `description` varchar(255) DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ecs_article`
--

INSERT INTO `ecs_article` (`article_id`, `cat_id`, `title`, `content`, `author`, `author_email`, `keywords`, `article_type`, `is_open`, `add_time`, `file_url`, `open_type`, `link`, `description`) VALUES
(1, 2, '免责条款', '', '', '', '', 0, 1, 1379320263, '', 0, '', ''),
(2, 2, '隐私保护', '', '', '', '', 0, 1, 1379320263, '', 0, '', ''),
(3, 2, '咨询热点', '', '', '', '', 0, 1, 1379320263, '', 0, '', ''),
(4, 2, '联系我们', '', '', '', '', 0, 1, 1379320263, '', 0, '', ''),
(5, 2, '公司简介', '', '', '', '', 0, 1, 1379320263, '', 0, '', ''),
(6, -1, '用户协议', '', '', '', '', 0, 1, 1379320263, '', 0, '', ''),
(7, 4, '三星电子宣布将在中国发布15款3G手机', '<p>全球领先的电子产品及第二大移动通信终端制造商三星电子今天在北京宣布，为全面支持中国开展3G移动通信业务，将在3G服务正式商用之际，向中国市场推出 15款3G手机。这些产品分别支持中国三大无线运营商的各种3G服务，并已经得到运营商的合作认可。凭借在电子和通信领域的整体技术实力和对消费者的准确 把握，三星电子已经开始全面发力中国的3G移动通信市场。<br />\n<br />\n&nbsp;&nbsp;&nbsp;&nbsp;2009年1月，中国政府宣布正式启动3G移动通信服务。并根据中国的实际情况，决定由三大运营商分别采用全部三种3G网络制式，&nbsp;即以中国自主知识产权为核心的TD-SCDMA，以欧洲为主要市场的WCDMA和源自北美的CDMA2000技术。<br />\n<br />\n&nbsp;&nbsp;&nbsp;&nbsp;多 年来，三星电子秉承&ldquo;做中国人民喜爱的企业，贡献于中国社会的企业&rdquo;的企业理念，准确地把握了中国社会的发展和市场的需求，推出了一系列深受中国消费者喜 爱的电子产品。为了配合中国推进具有自主知识产权的3G移动通信标准TD-SCDMA，&nbsp;三星电子从2000年开始在中国设立了通信技术研究院，&nbsp;开始进 行TD-SCDMA技术的研究。作为最早承诺支持中国3G标准的手机制造企业，三星电子已经先后投入了上亿元的研究费用，&nbsp;组建了几百人的研发团队。推出 的TD-SCDMA制式的产品，不仅通过了各级权威部门的试验和检测，也经历了2008年北京奥运会的现场考验。此次为中国移动定制的TD-SCDMA手 机，包括了满足高端商务需求的双待产品B7702C，以及数字电视手机、多媒体手机和时尚手机。<br />\n<br />\n&nbsp;&nbsp;&nbsp;&nbsp;作为世界第二大手机制造企业，三 星电子已经在全球3G市场积累了多年的技术和市场经验。最新的统计表明，在完全采用WCDMA标准的欧洲，三星电子的市场份额已经排名第二。在为中国联通 准备的产品中，不仅包括能够支持HSDPA的高端多媒体手机S7520U，也涵盖了能够支持高速上网、在线电影、在线音乐等适合不同消费需求的各种产品。<br />\n<br />\n&nbsp;&nbsp;&nbsp;&nbsp;而 在主要采用CDMA2000技术的北美市场，三星电子也取得了市场份额的第一名。即将陆续上市的支持中国电信3G服务的EVDO产品，有高端商务手机 W709。该机能够支持EVDO/GSM的双网双待功能，含800万像素拍摄系统。其他产品还包括音乐手机M609，双模手机W239，以及时尚设计的 F539等。<br />\n<br />\n&nbsp;&nbsp;&nbsp;&nbsp;作为世界上少数能够提供支持三种3G标准的终端厂商，三星电子正利用其在通信、半导体、显示器以及数字多媒体等方面 的优势，加快产品数字融合的进程。除上述3G手机产品外，三星电子也于近期推出了用于3G网络的上网卡和网络笔记本电脑。三星电子专务、无线事业部大中华 区高级副总裁卢基学先生说，&ldquo;上述15款新品，&nbsp;只是我们二季度新产品的一部分。随着中国3G移动通信市场的不断扩大，三星还将推出更多适合中国市场的终 端产品，以满足消费者对于通信和数字产品的不同需求。三星也将积极配合运营商业务的发展计划，加快技术和应用的研发。中国3G的移动通信市场前景将是非常 明亮的。&rdquo;</p>', '', '', '', 0, 1, 1241426864, '', 0, 'http://', ''),
(8, 4, '诺基亚牵手移动 5款热门TD手机机型推荐', '<table width="100%" cellspacing="0" cellpadding="4" align="center" class="tableborder">\r\n<tbody>\r\n<tr>\r\n<td width="180" valign="top" class="altbg4">&nbsp;</td>\r\n<td height="100%" valign="top" class="altbg3">\r\n<table cellspacing="0" cellpadding="0" border="0" style="padding: 5px; table-layout: fixed; width: 973px; height: 2195px;">\r\n<tbody>\r\n<tr>\r\n<td valign="top">\r\n<div class="bbs_content clearfix">随着5月17日电信日的来临，自从09年初网民对于3G方面关注越来越多，目前国内3G网络主要有中国移动TD-SCDMA，中国联通WCDMA以及 中国电信的CDMA2000这三种制式。到底是哪一种网络制式能让消费者满意，相信好多消费者都难以判断。<br />\r\n<br />\r\n而作为3G网络最主要的组 成部分-手持终端（手机） ，相信也是好多消费者关注的焦点。目前，中国移动TD-SCDMA手机机型频频爆出，其中不乏亮点产品，像联想联想 Ophone、诺基亚、多普达 Magic等，下面就让笔者与大家一起来了解TD-SCDMA网络制式下的几款强势机型吧。<br />\r\n<br />\r\n诺基亚TD-SCDMA手机　型号：待定　参考报价：尚未上市<br />\r\n<br />\r\n随着国内3G网络发展速度加快及众多手机厂商纷纷跟进，诺基亚终于推出TD-SCDMA手机，这款诺基亚的首台TD-SCDMA测试手机型号目前仍无法 得知，但从键盘及菜单设计来看，我们可以是知道其并没有采用S60操作系统，只是配备了S40系统，机身直板造型与早期热卖的6300有几分相像。<br />\r\n<br />\r\n<p><img width="450" alt="" src="http://dstatic.esqimg.com/4812278/1.jpg" style="display: block;" /></p>\r\n<br />\r\n<br />\r\n图为：诺基亚TD-SCDMA手机<br />\r\n<br />\r\n虽然没有更多的参数资料，但是从曝光的图片我们可以知道这款诺基亚TD-SCDMA手机必定配备了QVGA分辨率的屏幕以及320万像素的摄像头，而标准的MP3以及蓝牙等功能自然不会缺少，在功能方面不会比以往的S40手机逊色。<br />\r\n<br />\r\n<p><img width="450" alt="" src="http://dstatic.esqimg.com/4812279/2.jpg" style="display: block;" /></p>\r\n<br />\r\n<br />\r\n图为：诺基亚TD-SCDMA手机<br />\r\n<br />\r\n这款诺基亚的TD手机最大的卖点便是提供了对TD-HSDPA技术的支持，最大的功能特色便是该技术被看为是TD网络下一步的演进技术，能够同时适用于 WCDMA和TD-SCDMA两种不同的网络支持，能够很好的支持非对称的数据业务，也就是说这款诺基亚手机的用户即便在全球漫游都能够使用到3G网络。 而其机身前置的摄像头也更是证实了其3G手机的身份。<br />\r\n<br />\r\n<p><img width="450" alt="" src="http://dstatic.esqimg.com/4812280/3.jpg" style="display: block;" /></p>\r\n<p><br />\r\n<br />\r\n图为：诺基亚TD-SCDMA手机<br />\r\n<br />\r\n从目前曝光的测试情况来看，通过这款诺基亚TD手机连接网络，其下载速度能够稳定在1.3Mbps左右，不过根据国内有些媒体的报道，诺基亚官方已经证实将于今天下半年配合运营商中国移动对出自己的第一款TD-SCDMA制式的S60手机，大家要拭目以待了。</p>\r\n<p>&nbsp;</p>\r\n图为：诺基亚TD-SCDMA手机<br />\r\n<br />\r\n最后较为耐人寻味的便是目前有业内人士指出目前曝光的的诺基亚TD手机其实是去年夏季就出现过的 TD测试手机，但是随着诺基亚拥有部分股份的TD芯片厂商&ldquo;凯明&rdquo;的倒闭，这款机型也就被取消了。尽管对于目前这款诺基亚的TD测试手机的身份尚无官方的 消息，但是诺基亚将推出TD手机遗失毫无悬念的事情了，相信大家也希望在TD制式下能够有更多的手机可以选择。</div>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>&nbsp;</p>', '', '', '', 0, 1, 1241427051, '', 0, 'http://', ''),
(9, 5, '售后流程', '', '', '', '', 0, 1, 1242576700, '', 0, 'http://', ''),
(10, 5, '购物流程', '', '', '', '', 0, 1, 1242576717, '', 0, 'http://', ''),
(11, 5, '订购方式', '', '', '', '', 0, 1, 1242576727, '', 0, 'http://', ''),
(12, 6, '如何分辨原装电池', '<p><font size="2">一般在购买时主要是依靠观察外观特征的方法来鉴别电池，而原装电池一般应具有以下一些特征：&nbsp;<br />\n<br />\n1、 电池外观整齐，外表面有一定的粗糙度且手感舒适，内表面手感光滑，灯光下能看见细密的纵向划痕&nbsp;<br />\n<br />\n2、 生产厂家字样应该轮廓清晰，且防伪标志亮度高，看上去有立体感，电池标贴 字迹清晰，有与电池类型相一致的电池件号<br />\n3、 电池标贴采用二次印刷技术，在一定光线下从斜面看，条形码部分的颜色比其他部分要黑，且用手触摸有凹凸感<br />\n<br />\n4、 原装电池电极与手机电池片宽度相等，电池电极下方标有&ldquo; + &rdquo;、&ldquo; - &rdquo;标志，电池电极片之间的隔离材料与外壳材料一致，但不是一体<br />\n<br />\n5、 原装电池装入手机时手感舒适，安装自如，电池按压部分卡位适当而且牢固<br />\n<br />\n6、 原装电池的金属触点采用优质的铜片，只有在正面看时才会有反光，而从其它角度看的话，都是比较暗淡的</font></p>', '', '', '', 1, 1, 1242576826, '', 0, 'http://', ''),
(15, 7, '货到付款区域', '', '', '', '', 0, 1, 1242577023, '', 0, 'http://', ''),
(16, 7, '配送支付智能查询 ', '', '', '', '', 0, 1, 1242577032, '', 0, 'http://', ''),
(17, 7, '支付方式说明', '', '', '', '', 0, 1, 1242577041, '', 0, 'http://', ''),
(18, 10, '资金管理', '', '', '', '', 0, 1, 1242577127, '', 0, 'user.php?act=account_log', ''),
(19, 10, '我的收藏', '', '', '', '', 0, 1, 1242577178, '', 0, 'user.php?act=collection_list', ''),
(20, 10, '我的订单', '', '', '', '', 0, 1, 1242577199, '', 0, 'user.php?act=order_list', ''),
(21, 8, '退换货原则', '', '', '', '服务', 0, 1, 1242577293, '', 0, 'http://', ''),
(22, 8, '售后服务保证 ', '', '', '', '售后', 0, 1, 1242577308, '', 0, 'http://', ''),
(23, 8, '产品质量保证 ', '', '', '', '质量', 1, 1, 1242577326, '', 0, 'http://', ''),
(24, 9, '网站故障报告', '', '', '', '', 0, 1, 1242577432, '', 0, 'http://', ''),
(25, 9, '选机咨询 ', '', '', '', '', 0, 1, 1242577448, '', 0, 'http://', ''),
(26, 9, '投诉与建议 ', '', '', '', '', 0, 1, 1242577459, '', 0, 'http://', ''),
(27, 4, '800万像素超强拍照机 LG Viewty Smart再曝光', '', '', '', '', 0, 1, 1242577702, '', 0, 'http://news.imobile.com.cn/index-a-view-id-66790.html', ''),
(28, 11, '飞利浦9@9促销', '<p>&nbsp;</p>\r\n<div class="boxCenterList RelaArticle" id="com_v">\r\n<p align="left">作为一款性价比极高的入门级<font size="3" color="#ff0000"><strong>商务手机</strong></font>，飞利浦<a href="mailto:9@9v">Xenium&nbsp; 9@9v</a>三围大小为105&times;44&times;15.8mm，机身重量仅为<strong><font size="3" color="#ff0000">75g</font></strong>，装配了一块低规格1.75英寸128&times;160像素65000色CSTN显示屏。身正面采用月银色功能键区与屏幕数字键区相分隔，键盘设计较为<font size="3"><strong><font color="#ff0000">别</font><font color="#ff0000">致</font></strong></font>，中部导航键区采用钛金色的&ldquo;腰带&rdquo;彰显出浓郁的商务气息。</p>\r\n<p align="left">&nbsp;</p>\r\n<p align="left">此款手机采用<strong><font size="3" color="#ff0000">触摸屏</font></strong>设计，搭配精致的手写笔，可支持手写中文和英文两个版本。增强的内置系统还能识别潦草字迹，确保在移动中和匆忙时输入文字的识别率。手写指令功能还支持特定图案的瞬间调用，独特的手写记事本功能，可以在触摸屏上随意绘制个性化的图案并进行<strong><font size="3" color="#ff0000">记事提醒</font></strong>，让商务应用更加随意。</p>\r\n<p align="left">&nbsp;</p>\r\n<p align="left">&nbsp;作为入门级为数不多支持<strong><font size="3" color="#ff0000">双卡功能</font></strong>的手机，可以同时插入两张SIM卡，通过菜单随意切换，只需开启漫游自动切换模式，<a href="mailto:9@9V">9@9V</a>在该模式下能够判断网络情况，自动切换适合的手机号。</p>\r\n<p align="left">&nbsp;</p>\r\n<p align="left">&nbsp;</p>\r\n</div>\r\n<p>&nbsp;</p>', '', '', '', 0, 1, 1242578199, '', 0, 'http://', ''),
(29, 11, '诺基亚5320 促销', '<p>&nbsp;</p>\r\n<div id="com_v" class="boxCenterList RelaArticle">\r\n<p>诺基亚5320XpressMusic音乐手机采用XpressMusic系列常见的黑红、黑蓝配色方案，而材质方便则选用的是经过<strong><font size="3" color="#ff0000">抛光处理</font></strong>的工程塑料；三围/体重为，为108&times;46&times;15mm/<strong><font size="3" color="#ff0000">90g</font></strong>，手感舒适。</p>\r\n<p>&nbsp;</p>\r\n<p>诺基亚5320采用的是一块可视面积为2.0英寸的<font size="3" color="#ff0000"><strong>1600万色</strong></font>屏幕，分辨率是常见的240&times;320像素（QVGA）。虽然屏幕不是特别大，但效果非常精细，色彩还原不错。</p>\r\n<p>&nbsp;</p>\r\n<p>手机背面，诺基亚为5320XM配备一颗<strong><font size="3" color="#ff0000">200W像素</font></strong>的摄像头，并且带有<strong><font size="3" color="#ff0000">两个LED的补光灯</font></strong>，可以实现拍照、摄像功能，并能通过彩信、邮件方式发送给朋友。</p>\r\n<p>&nbsp;</p>\r\n</div>\r\n<p>&nbsp;</p>', '', '', '', 1, 1, 1242578676, '', 0, 'http://', ''),
(30, 11, '促销诺基亚N96', '<p>&nbsp;</p>\r\n<div class="boxCenterList RelaArticle" id="com_v">\r\n<p>诺基亚N96采用了<strong><font size="3" color="#ff0000">双向滑盖</font></strong>设计，机身整体呈灰黑色，沉稳、大气，机身材质采用了高强度的塑料材质，手机背面采用了抛光面板的设计风格。N96三维体积103*55*20mm，重量为125g。屏幕方面，诺基亚N96配备一块<strong><font size="3" color="#ff0000">2.8英寸</font></strong>的屏幕，支持<strong><font size="3" color="#ff0000">1670万色</font></strong>显示，分辨率达到QVGA（320&times;240）水准。</p>\r\n<p>&nbsp;<img src="http://img2.zol.com.cn/product/21/896/ceN6LBMCid3X6.jpg" alt="" /></p>\r\n<p>&nbsp;</p>\r\n<p>诺基亚N96设置有专门的<strong><font size="3" color="#ff0000">音乐播放键</font></strong>和标准的3.5毫米音频插口，支持多格式音乐播放。内置了<strong><font size="3" color="#ff0000">多媒体播放器</font></strong>，支持FM调频收音机等娱乐功能。N96手机支持<strong><font size="3" color="#ff0000">N-Gage游戏平台</font></strong>，内置包括<font size="3" color="#ff0000"><strong>《PinBall》完整版</strong></font>在内的四款N-Gage游戏，除了手机本身内置的游戏，还可以从N-Gage的网站下载或者购买最新的游戏，而且可以在论坛里和其他玩家一起讨论。</p>\r\n<p>&nbsp;</p>\r\n</div>\r\n<p>&nbsp;<img src="http://img2.zol.com.cn/product/21/898/cekkw57qJjSI.jpg" alt="" /></p>', '', '', '', 1, 1, 1242578826, '', 0, 'http://', ''),
(13, 6, '如何分辨水货手机 ', '<p>\n<div class="artibody">\n<p><font size="2"><strong>1、&nbsp;什么是水货？</strong><br />\n提及水货手机，按照行业内的说法，可以将水货手机分成三类：A类、B类和C类。 </font></p>\n<p><font size="2">A类水货手机是指由国外、港澳台等地区在没有经过正常海关渠道的情况下进入国内市场的产品，就是我们常说的走私货， 与行货的主要差异是在输入法上，这类手机都是英文输入法或者是港澳台地区的繁体中文输入法。这类手机其最主要的目的是为了逃避国家关税或者因为该种产品曾 经过不正当改装而不能够通过正常渠道入关，质量一般没有大的问题。但由于逃避关税本身就是违法的，所以购买这类手机的用户根本得不到任何售后保障服务； </font></p>\n<p><font size="2">B类水货手机就是走私者将手机的系统软件由英文版升级至中文版后，偷运到内地，然后贴上非法渠道购买的入网标志，作为行货手机充数。 </font></p>\n<p><font size="2">C类水货手机则是那些由其他型号机改装、更换芯片等等方法做假&ldquo;生产&rdquo;出来的，或者就是从各地购买手机的部件，自己组装然后再贴上非法购买的入网标志。 </font></p>\n<p><font size="2">水货手机虽然不排除它是原厂正货的可能，但通过市场调研发现，绝大多数水货手机都是改版的次货，而且产品基本没有受国内厂商的保修许可。</font></p>\n<p><font size="2"><strong>2、水货有哪些？</strong>水货有两种，一种俗称港行，也称作水行，这种产品原本是在香港 及周边地区销售的，但是经过非法途径进入大陆地区销售。另一种是欧版水改机，也称作欧版，水改等，此种产品以英文改版机为主，通过刷改机内软件达到英文改 中文的目的，原来这类产品是销往欧美地区的，由于和大陆地区有相当大的价格差，所以通过走私进入中国市场。</font></p>\n<p><font size="2"><strong>3、水货手机的危害</strong><br />\n1、售后服务无保障 <br />\n手机作为精密类电子产品，软件、硬件方面都有可能产生不同的问题。购买正规渠道的手机，一旦出现问题，只要将问题反映给厂商客户服务中心并静候佳音就 可以了。大多数走私手机的贩卖点规模较小，根本没有资金和技术能力建立起自己的维修网点，因此他们往往制定非常苛刻的保修条件，将国家明令的一年保修期缩 短为三个月，并加入完全对走私手机经销商有利的诸如&ldquo;认为摔打&rdquo;等概念难以界定的排除条件(众所周知，手机很有可能发生摔撞事件)，是确确实实的霸王条 款。规定时间内手机出了故障，走私手机经销商会通过曲解条款尽可能地开脱保修责任。即使他们愿意承担保修服务，也需将手机发往广州、深圳等地，委托他人维 修。一来路途漫长，二来经手人繁多，小问题&ldquo;修&rdquo;成了大问题。最终走私手机经销商会以无法维修为由劝客户自行去当地正规客服维修。至于维修费用，他们自然 也不愿意出了。<br />\n<br />\n2、产品本身质量不过关<br />\n&nbsp;&nbsp;&nbsp; 现在很多奸商为了谋取暴利，经常使用C类的翻修或者组装手机冒充A类水货手机进行销售。作为消费者来说面对和正规行货之间巨大的价格差异，他们无法分辨想要购买的手机是否象销售商说的那样质量过硬，在销售商的巧舌如簧下只能眼看自己的钱包&ldquo;减肥&rdquo;。 </font></p>\n<p><font size="2">但是这类翻修或者组装的水货手机往往为了降低成本，其采用的配件往往也是不合格产品，甚至也是伪劣产品，可以想象由这样产品组装起来的手机的质量究竟可以好到那里去。目前在经常看到手机电池爆炸伤人的事件的报道，究其原因也是消费者购买了这些组装的水货手机。</font></p>\n<p><font size="2">而且不光这类手机硬件存在问题，包括手机使用的软件。由于组装的水货硬件规格根本无法保证和原场产品一致，手机使用的软件也会造成和手机硬件的冲突。频繁死机就是家常便饭，更有甚者会造成经常性的电话本丢失，无法联系到好友。</font></p>\n<p><br />\n<font size="2"><strong>4、如何分辨行、水货手机？</strong><br />\n1、看手机上是否贴有信息产业部&ldquo;进网许可&rdquo;标志。水货与正品的入网标志稍微有一点不同：真的入网标志一般都是针式打印机打印的，数字清晰，颜色较浅，仔细看有针打的凹痕；假的入网标志一般是普通喷墨打印机打印的，数字不很清晰，颜色较深，没有凹痕。 </font></p>\n<p><font size="2">2、检查手机的配置，包括中文说明书、电池、充电器等，如果是厂家原配，一般均贴有厂家的激光防伪标志。原厂配置的 中文说明书通常印刷精美，并与其他语言的说明书及相关产品资料的印刷质量、格式、风格等保持一致。不是原厂家配置的中文说明书通常印刷质量低劣，常出现错 别字，甚至字迹模糊。正品手机的包装盒中均附带有原厂合格证、原厂条码卡、原厂保修卡，而水货则没有。 </font></p>\n<p><font size="2">3、确认经销商的保修条例是否与厂家一致，在购买手机时应索要发票和保修卡。 </font></p>\n<p><font size="2">4、电子串号是否一致也是验证是否水货手机的重要途径。首先在手机上按&ldquo;*#06#&rdquo;，一般会在手机上显示15个数 字，这就是本手机的IMEI码。然后打开手机的电池盖，在手机里有一张贴纸，上面也有一个IMEI码，这个码应该同手机上显示的IMEI码完全一致。然后 再检查手机的外包装盒上的贴纸，上面也应该有一个IMEI码，这个码也应该同手机上显示的IMEI码完全一致。如果此三个码有不一致的地方，这个手机就有 问题。</font></p>\n</div>\n<p>&nbsp;</p>\n</p>', '', '', '', 0, 1, 1242576911, '', 0, 'http://', ''),
(14, 6, '如何享受全国联保', '', '', '', '', 0, 1, 1242576927, '', 0, 'http://', ''),
(31, 12, '诺基亚6681手机广告欣赏', '<object>\n<param value="always" name="allowScriptAccess" />\n<param value="transparent" name="wmode" />\n<param value="http://6.cn/player.swf?flag=0&amp;vid=nZNyu3nGNWWYjmtPQDY9nQ" name="movie" /><embed width="480" height="385" src="http://6.cn/player.swf?flag=0&amp;vid=nZNyu3nGNWWYjmtPQDY9nQ" allowscriptaccess="always" wmode="transparent" type="application/x-shockwave-flash"></embed></object>', '', '', '', 0, 1, 1242579069, '', 0, 'http://', ''),
(32, 12, '手机游戏下载', '<p>三星SGHU308说明书下载，点击相关链接下载</p>', '', '', '', 1, 1, 1242579189, '', 0, 'http://soft.imobile.com.cn/index-a-list_softs-cid-1.html', ''),
(33, 12, '三星SGHU308说明书下载', '<p>三星SGHU308说明书下载</p>', '', '', '', 1, 1, 1242579559, 'data/article/1245043292228851198.rar', 2, 'http://', ''),
(34, 12, '3G知识普及', '<p>\n<h2>3G知识普及</h2>\n<div class="t_msgfont" id="postmessage_8792145"><font color="black">3G，全称为3rd Generation，中文含义就是指第三代数字通信。<br />\n</font><br />\n<font color="black">　　1995年问世的第一代<span class="t_tag" onclick="tagshow(event)" href="http://mbbs.enet.com.cn/tag.php?name=%C4%A3%C4%E2">模拟</span>制式<span class="t_tag" onclick="tagshow(event)" href="http://mbbs.enet.com.cn/tag.php?name=%CA%D6%BB%FA">手机</span>（1G）只能进行<span class="t_tag" onclick="tagshow(event)" href="http://mbbs.enet.com.cn/tag.php?name=%D3%EF%D2%F4">语音</span>通话；<br />\n</font><br />\n<font color="black">　　1996到1997年出现的第二代GSM、TDMA等数字制式手机（2G）便增加了接收数据的功能，如接收电子邮件或网页；<br />\n</font><br />\n<font color="black">　　3G不是2009年诞生的，它是上个世纪的产物，而早在2007年国外就已经产生4G了，而<span class="t_tag" onclick="tagshow(event)" href="http://mbbs.enet.com.cn/tag.php?name=%D6%D0%B9%FA">中国</span>也于2008年成功开发出<span class="t_tag" onclick="tagshow(event)" href="http://mbbs.enet.com.cn/tag.php?name=%D6%D0%B9%FA">中国</span>4G，其网络传输的速度可达到每秒钟2G，也就相当于下一部电影只要一秒钟。在上世纪90年末的日韩电影如《我的野蛮女友》中，女主角使用的可以让对方看见自己的视频<span class="t_tag" onclick="tagshow(event)" href="http://mbbs.enet.com.cn/tag.php?name=%B5%E7%BB%B0">电话</span>，就是属于3G技术的重要运用之一。日韩等国3G的运用是上世纪末期的事。而目前国外有些地区已经试运行3.5G甚至4G网络。<br />\n</font><br />\n<font color="black">　 </font><font color="black">（以下为误导）2009年问世的第三代（3G）与 前两代的主要区别是在传输声音和数据的速度上的提升，它能够在全球范围内更好地实现无缝漫游，并处理图像、音乐、视频流等多种媒体形式，提供包括网页浏 览、电话会议、电子商务等多种信息服务，同时也要考虑与已有第二代系统的良好兼容性。为了提供这种服务，无线网络必须能够支持不同的数据传输速度，也就是 说在室内、室外和行车的环境中能够分别支持至少2Mbps（兆比特／每秒）、384kbps（千比特／每秒）以及144kbps的传输速度。（此数值根据 网络环境会发生变化)。<br />\n</font><br />\n<font color="black">　　3G标准，国际电信联盟(ITU)目前一共确定了全球四大3G标准，它们分别是WCDMA、CDMA2000和TD-SCDMA和WiMAX。</font><br />\n<br />\n<font color="black">3G标准　　国际电信联盟（ITU）在2000年5月确定W-CDMA、CDMA2000、TD-SCDMA以 及WiMAX四大主流无线接口标准，写入3G技术指导性文件《2000年国际移动通讯计划》（简称IMT&mdash;2000）。 CDMA是Code Division Multiple Access (码分多址)的缩写，是第三代移动通信系统的技术基础。第一代移动通信系统采用频分多址(FDMA)的模拟调制方式，这种系统的主要缺点是频谱利用率低， 信令干扰话音业务。第二代移动通信系统主要采用时分多址(TDMA)的数字调制方式，提高了系统容量，并采用独立信道传送信令，使系统性能大大改善，但 TDMA的系统容量仍然有限，越区切换性能仍不完善。CDMA系统以其频率规划简单、系统容量大、频率复用系数高、抗多径能力强、通信质量好、软容量、软 切换等特点显示出巨大的发展潜力。下面分别介绍一下3G的几种标准：<br />\n</font><br />\n<br />\n<font color="black">　　 </font><br />\n<font color="black">(1) W-CDMA</font><font color="black"><br />\n</font><br />\n<br />\n<font color="black">　　也称为WCDMA，全称为Wideband CDMA，也称为CDMA Direct Spread，意为宽频分码多重存取，这是基于GSM网发展出来的3G技术规范，是欧洲提出的宽带CDMA技术，它与日本提出的宽带CDMA技术基本相 同，目前正在进一步融合。W-CDMA的支持者主要是以GSM系统为主的欧洲厂商，日本公司也或多或少参与其中，包括欧美的爱立信、阿尔卡特、<span class="t_tag" onclick="tagshow(event)" href="http://mbbs.enet.com.cn/tag.php?name=%C5%B5%BB%F9%D1%C7">诺基亚</span>、 朗讯、北电，以及日本的NTT、富士通、夏普等厂商。 该标准提出了GSM(2G)-GPRS-EDGE-WCDMA(3G)的演进策略。这套系统能够架设在现有的GSM网络上，对于系统提供商而言可以较轻易 地过渡，但是GSM系统相当普及的亚洲对这套新技术的接受度预料会相当高。因此W-CDMA具有先天的市场优势。<br />\n</font><br />\n<br />\n<font color="black">　　 </font><br />\n<font color="black">(2)CDMA2000</font><font color="black"><br />\n</font><br />\n<br />\n<font color="black">　　CDMA2000是由窄带CDMA(CDMA IS95)技术发展而来的宽带CDMA技术，也称为CDMA Multi-Carrier，它是由美国高通北美公司为主导提出，<span class="t_tag" onclick="tagshow(event)" href="http://mbbs.enet.com.cn/tag.php?name=%C4%A6%CD%D0%C2%DE%C0%AD">摩托罗拉</span>、Lucent 和后来加入的韩国三星都有参与，韩国现在成为该标准的主导者。这套系统是从窄频CDMAOne数字标准衍生出来的，可以从原有的CDMAOne结构直接升 级到3G，建设成本低廉。但目前使用CDMA的地区只有日、韩和北美，所以CDMA2000的支持者不如W-CDMA多。不过CDMA2000的研发技术 却是目前各标准中进度最快的，许多3G手机已经率先面世。该标准提出了从CDMA IS95(2G)-CDMA20001x-CDMA20003x(3G)的演进策略。CDMA20001x被称为2.5代移动通信技术。 CDMA20003x与CDMA20001x的主要区别在于应用了多路载波技术，通过采用三载波使带宽提高。目前<span class="t_tag" onclick="tagshow(event)" href="http://mbbs.enet.com.cn/tag.php?name=%D6%D0%B9%FA%B5%E7%D0%C5">中国电信</span>正在采用这一方案向3G过渡，并已建成了CDMA IS95网络。<br />\n</font><br />\n<br />\n<font color="black">　　 </font><br />\n<font color="black">(3)TD-SCDMA</font><font color="black"><br />\n</font><br />\n<br />\n<font color="black">　　全称为Time Division - Synchronous CDMA(时分<span class="t_tag" onclick="tagshow(event)" href="http://mbbs.enet.com.cn/tag.php?name=%CD%AC%B2%BD">同步</span>CDMA)，该标准是由中国大陆独自制定的3G标准，1999年6月29日，中国原邮电部电信科学技术研究院（大唐电信）向ITU提出。该标准将智能无线、<span class="t_tag" onclick="tagshow(event)" href="http://mbbs.enet.com.cn/tag.php?name=%CD%AC%B2%BD">同步</span>CDMA和<span class="t_tag" onclick="tagshow(event)" href="http://mbbs.enet.com.cn/tag.php?name=%C8%ED%BC%FE">软件</span>无 线电等当今国际领先技术融于其中，在频谱利用率、对业务支持具有灵活性、频率灵活性及成本等方面的独特优势。另外，由于中国内的庞大的市场，该标准受到各 大主要电信设备厂商的重视，全球一半以上的设备厂商都宣布可以支持TD&mdash;SCDMA标准。 该标准提出不经过2.5代的中间环节，直接向3G过渡，非常适用于GSM系统向3G升级。<br />\n</font><br />\n<br />\n<font color="black">　　 </font><br />\n<font color="black">(4)WiMAX</font><font color="black"><br />\n</font><br />\n<br />\n<font color="black">　　WiMAX 的全名是微波存取全球互通(Worldwide Interoperability for Microwave Access)，又称为802&middot;16无线城域网，是又一种为企业和家庭用户提供&ldquo;最后一英里&rdquo;的宽带无线连接方案。将此技术与需要授权或免授权的微波设备 相结合之后，由于成本较低，将扩大宽带无线市场，改善企业与服务供应商的认知度。2007年10月19日，国际电信联盟在日内瓦举行的无线通信全体会议 上，经过多数国家投票通过，WiMAX正式被批准成为继WCDMA、CDMA2000和TD-SCDMA之后的第四个全球3G标准。</font></div>\n</p>', '', '', '', 0, 1, 1242580013, '', 0, 'http://', ''),
(35, 4, '“沃”的世界我做主', '<p><strong>导语：<br />\n<br />\n</strong>&nbsp;&nbsp;&nbsp;&nbsp;今年5月17日，是每年一度的世界电信日。同时，也是值得中国人民高兴的日子。昨天，中国联通企业品牌下的全品牌业务&ldquo;沃&rdquo;开始试商用，这也就意味着继中国移动、中国电信之后，国内第三种3G网络将要走入我们的生活，为我们带来更加快速便捷的通信服务。<br />\n<br />\n&nbsp;&nbsp;&nbsp;&nbsp;沃，意味着此品牌将为用户提供一个丰盈的平台，为个人客户、家庭客户、集团客户和企业服务提供全面的支撑，它代表着中国联通全新的服务理念和创新的品牌精神，在3G时代，为客户提供精彩的信息化服务。<br />\n<br />\n&nbsp;&nbsp;&nbsp;&nbsp;下面小编为各位介绍几款各大手机品牌专为&ldquo;沃&rdquo;打造的定制机型，为您迎接&ldquo;沃&rdquo;的到来做好充分准备。</p>\n<p><strong>诺基亚6210si<br />\n<br />\n</strong>&nbsp;&nbsp;&nbsp;&nbsp;诺基亚6210s大家肯定不陌生，经典的滑盖导航手机。其实6210si 与6210s外观、参数、硬件配置几乎完全一样，只不过在6210s的基础上，增加了对WCDMA网络的支持，成为中国联通定制手机。6210si采用诺 基亚经典的滑盖机身设计，机身面板为钢琴烤漆材质，高贵优雅。机身背板则为磨砂外观工程塑料材质，美观的同时增加了手机与手掌间的摩擦系数，防止使用中手 机滑落。</p>\n<p><strong>摩托罗拉A3100<br />\n</strong><br />\n&nbsp;&nbsp;&nbsp;&nbsp;作为摩托罗拉旗下为中国联通定制的A3100，它有着经典的鹅卵石造型， 大气稳重。从最初的U6，到U9再到A3100，鹅卵石的辉煌依旧。A3100有着高贵的血统，钢琴烤漆黑色面板，金属拉丝机身以及 Windows&nbsp;Mobile&nbsp;6.1&nbsp;Professional操作系统，都告诉我们它绝对是一部不可多得的好手机。</p>\n<p><br />\n<strong>三星S7520U<br />\n</strong><br />\n&nbsp;&nbsp;&nbsp;&nbsp;三星S7520U外观造型时尚，镜面设计以及超薄的 98.4&times;55&times;11.6mm金属机身，更适合女性朋友使用。通观机身，最显眼的就要数这3.0英寸的超大触摸屏幕了，400x240的WQGVA级别分 辨率，能够比QVGA级别屏幕显示更为细腻，细节表现力更强。500万像素摄像头说明了该机还是一名拍照能手，捕捉精彩瞬间不在话下。</p>', '', '', '', 0, 0, 1242974613, '', 0, 'http://', ''),
(36, 5, '隐私声明', '<p>&nbsp;<b style="font-family: 微软雅黑, 宋体, Arial, Helvetica, sans-serif; line-height: 24px; margin: 0px; padding: 0px; font-size: 14px; color: rgb(33, 33, 33);">隐私政策</b></p>\r\n<div class="content_list border_none list_top_txt" style="margin: 0px; padding: 25px 0px 15px; width: 733px; border: none; line-height: 24px; float: left; color: rgb(102, 102, 102); font-family: 微软雅黑, 宋体, Arial, Helvetica, sans-serif;">\r\n<p style="margin: 0px; padding: 0px; font-size: 14px; color: rgb(76, 76, 76);">米奇网以此声明对本站用户隐私保护的许诺。随着本站服务范围的扩大，会随时更新隐私声明。我们欢迎您随时查看隐私声明。</p>\r\n</div>\r\n<div class="content_list border_none" style="margin: 0px; padding: 15px 0px; width: 733px; border: none; line-height: 24px; float: left; color: rgb(102, 102, 102); font-family: 微软雅黑, 宋体, Arial, Helvetica, sans-serif;">\r\n<p style="margin: 0px; padding: 0px; font-size: 14px; color: rgb(76, 76, 76);">米奇网非常重视对用户隐私权的保护，用户的邮件及手机号等个人资料为用户重要隐私，本站承诺不会将个人资料用作它途；承诺不会在未获得用户许可的情况下擅自将用户的个人资料信息出租或出售给任何第三方，但以下情况除外：</p>\r\n<p style="margin: 0px; padding: 0px; font-size: 14px; color: rgb(76, 76, 76);">A、用户同意让第三方共享资料；</p>\r\n<p style="margin: 0px; padding: 0px; font-size: 14px; color: rgb(76, 76, 76);">B、用户为享受产品和服务同意公开其个人资料；</p>\r\n<p style="margin: 0px; padding: 0px; font-size: 14px; color: rgb(76, 76, 76);">C、本站发现用户违反了本站服务条款或本站其它使用规定。</p>\r\n</div>\r\n<div class="content_list border_none" style="margin: 0px; padding: 15px 0px; width: 733px; border: none; line-height: 24px; float: left; color: rgb(102, 102, 102); font-family: 微软雅黑, 宋体, Arial, Helvetica, sans-serif;"><b style="margin: 0px; padding: 0px; font-size: 14px; color: rgb(33, 33, 33);">使用说明</b>\r\n<p style="margin: 0px; padding: 0px; font-size: 14px; color: rgb(76, 76, 76);">米奇网用户可以通过设定的密码来保护账户和资料安全。用户应当对其密码的保密负全部责任。请不要和他人分享此信息。如果您使用的是公共电脑，请在离开电脑时退出米奇网、以保证您的信息不被后来的使用者获取。</p>\r\n</div>\r\n<div class="content_list border_none" style="margin: 0px; padding: 15px 0px; width: 733px; border: none; line-height: 24px; float: left; color: rgb(102, 102, 102); font-family: 微软雅黑, 宋体, Arial, Helvetica, sans-serif;"><b style="margin: 0px; padding: 0px; font-size: 14px; color: rgb(33, 33, 33);">服务条款说明</b>\r\n<p style="margin: 0px; padding: 0px; font-size: 14px; color: rgb(76, 76, 76);">接受米奇网的用户同时受本站用户协议的约束。</p>\r\n</div>', '', '', '', 0, 1, 1386715281, '', 0, 'http://', '');

-- --------------------------------------------------------

--
-- Table structure for table `ecs_article_cat`
--

CREATE TABLE IF NOT EXISTS `ecs_article_cat` (
  `cat_id` smallint(5) NOT NULL,
  `cat_name` varchar(255) NOT NULL DEFAULT '',
  `cat_type` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `keywords` varchar(255) NOT NULL DEFAULT '',
  `cat_desc` varchar(255) NOT NULL DEFAULT '',
  `sort_order` tinyint(3) unsigned NOT NULL DEFAULT '50',
  `show_in_nav` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `parent_id` smallint(5) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ecs_article_cat`
--

INSERT INTO `ecs_article_cat` (`cat_id`, `cat_name`, `cat_type`, `keywords`, `cat_desc`, `sort_order`, `show_in_nav`, `parent_id`) VALUES
(1, '系统分类', 2, '', '系统保留分类', 50, 0, 0),
(2, '网店信息', 3, '', '网店信息分类', 50, 0, 1),
(3, '网店帮助分类', 4, '', '网店帮助分类', 50, 0, 1),
(4, '3G资讯', 1, '', '', 50, 0, 0),
(5, '新手上路 ', 5, '', '', 50, 0, 3),
(6, '手机常识 ', 5, '', '手机常识 ', 50, 0, 3),
(7, '配送与支付 ', 5, '', '配送与支付 ', 50, 0, 3),
(8, '服务保证 ', 5, '', '', 50, 0, 3),
(9, '联系我们 ', 5, '', '联系我们 ', 50, 0, 3),
(10, '会员中心', 5, '', '', 50, 0, 3),
(11, '手机促销', 1, '', '', 50, 0, 0),
(12, '站内快讯', 1, '', '', 50, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ecs_attribute`
--

CREATE TABLE IF NOT EXISTS `ecs_attribute` (
  `attr_id` smallint(5) unsigned NOT NULL,
  `cat_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `attr_name` varchar(60) NOT NULL DEFAULT '',
  `attr_input_type` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `attr_type` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `attr_values` text NOT NULL,
  `attr_index` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `sort_order` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `is_linked` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `attr_group` tinyint(1) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=223 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ecs_attribute`
--

INSERT INTO `ecs_attribute` (`attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group`) VALUES
(1, 1, '作者', 0, 0, '', 0, 0, 0, 0),
(2, 1, '出版社', 0, 0, '', 0, 0, 0, 0),
(3, 1, '图书书号/ISBN', 0, 0, '', 0, 0, 0, 0),
(4, 1, '出版日期', 0, 0, '', 0, 0, 0, 0),
(5, 1, '开本', 0, 0, '', 0, 0, 0, 0),
(6, 1, '图书页数', 0, 0, '', 0, 0, 0, 0),
(7, 1, '图书装订', 1, 0, '平装\r\n黑白', 0, 0, 0, 0),
(8, 1, '图书规格', 0, 0, '', 0, 0, 0, 0),
(9, 1, '版次', 0, 0, '', 0, 0, 0, 0),
(10, 1, '印张', 0, 0, '', 0, 0, 0, 0),
(11, 1, '字数', 0, 0, '', 0, 0, 0, 0),
(12, 1, '所属分类', 0, 0, '', 0, 0, 0, 0),
(13, 2, '中文片名', 0, 0, '', 0, 0, 0, 0),
(14, 2, '英文片名', 0, 0, '', 0, 0, 0, 0),
(15, 2, '商品别名', 0, 0, '', 0, 0, 0, 0),
(16, 2, '介质/格式', 1, 0, 'HDCD\r\nDTS\r\nDVD\r\nDVD9\r\nVCD\r\nCD\r\nTAPE\r\nLP', 0, 0, 0, 0),
(17, 2, '片装数', 0, 0, '', 0, 0, 0, 0),
(18, 2, '国家地区', 0, 0, '', 0, 0, 0, 0),
(19, 2, '语种', 1, 0, '中文\r\n英文\r\n法文\r\n西班牙文', 0, 0, 0, 0),
(20, 2, '导演/指挥', 0, 0, '', 0, 0, 0, 0),
(21, 2, '主唱', 0, 0, '', 0, 0, 0, 0),
(22, 2, '所属类别', 1, 0, '古典\r\n流行\r\n摇滚\r\n乡村\r\n民谣\r\n爵士\r\n蓝调\r\n电子\r\n舞曲\r\n国乐\r\n民族\r\n怀旧\r\n经典\r\n人声\r\n合唱\r\n发烧\r\n试音\r\n儿童\r\n胎教\r\n轻音乐\r\n世界音乐\r\n庆典音乐\r\n影视音乐\r\n新世纪音乐\r\n大自然音乐', 0, 0, 0, 0),
(23, 2, '长度', 0, 0, '', 0, 0, 0, 0),
(24, 2, '歌词', 1, 0, '有\r\n无', 0, 0, 0, 0),
(25, 2, '碟片代码', 0, 0, '', 0, 0, 0, 0),
(26, 2, 'ISRC码', 0, 0, '', 0, 0, 0, 0),
(27, 2, '发行公司', 0, 0, '', 0, 0, 0, 0),
(28, 2, '出版', 0, 0, '', 0, 0, 0, 0),
(29, 2, '出版号', 0, 0, '', 0, 0, 0, 0),
(30, 2, '引进号', 0, 0, '', 0, 0, 0, 0),
(31, 2, '版权号', 0, 0, '', 0, 0, 0, 0),
(32, 3, '中文片名', 0, 0, '', 0, 0, 0, 0),
(33, 3, '英文片名', 0, 0, '', 0, 0, 0, 0),
(34, 3, '商品别名', 0, 0, '', 0, 0, 0, 0),
(35, 3, '介质/格式', 1, 0, 'HDCD\r\nDTS\r\nDVD\r\nDVD9\r\nVCD', 0, 0, 0, 0),
(36, 3, '碟片类型', 1, 0, '单面\r\n双层', 0, 0, 0, 0),
(37, 3, '片装数', 0, 0, '', 0, 0, 0, 0),
(38, 3, '国家地区', 0, 0, '', 0, 0, 0, 0),
(39, 3, '语种/配音', 1, 0, '中文\r\n英文\r\n法文\r\n西班牙文', 0, 0, 0, 0),
(40, 3, '字幕', 0, 0, '', 0, 0, 0, 0),
(41, 3, '色彩', 0, 0, '', 0, 0, 0, 0),
(42, 3, '中文字幕', 1, 0, '有\r\n无', 0, 0, 0, 0),
(43, 3, '导演', 0, 0, '', 0, 0, 0, 0),
(44, 3, '表演者', 0, 0, '', 0, 0, 0, 0),
(45, 3, '所属类别', 1, 0, '爱情\r\n偶像\r\n生活\r\n社会\r\n科幻\r\n神话\r\n武侠\r\n动作\r\n惊险\r\n恐怖\r\n传奇\r\n人物\r\n侦探\r\n警匪\r\n历史\r\n军事\r\n戏剧\r\n舞台\r\n经典\r\n名著\r\n喜剧\r\n情景\r\n动漫\r\n卡通\r\n儿童\r\n伦理激情', 0, 0, 0, 0),
(46, 3, '年份', 0, 0, '', 0, 0, 0, 0),
(47, 3, '音频格式', 0, 0, '', 0, 0, 0, 0),
(48, 3, '区码', 0, 0, '', 0, 0, 0, 0),
(49, 3, '碟片代码', 0, 0, '', 0, 0, 0, 0),
(50, 3, 'ISRC码', 0, 0, '', 0, 0, 0, 0),
(51, 3, '发行公司', 0, 0, '', 0, 0, 0, 0),
(52, 3, '出版 ', 0, 0, '', 0, 0, 0, 0),
(53, 3, '出版号', 0, 0, '', 0, 0, 0, 0),
(54, 3, '引进号', 0, 0, '', 0, 0, 0, 0),
(55, 3, '版权号', 0, 0, '', 0, 0, 0, 0),
(56, 4, '网络制式', 0, 0, '', 0, 0, 0, 0),
(57, 4, '支持频率/网络频率', 0, 0, '', 0, 0, 0, 0),
(58, 4, '尺寸体积', 1, 0, '   ', 0, 0, 0, 0),
(59, 4, '外观样式/手机类型', 1, 0, '翻盖\r\n滑盖\r\n直板\r\n折叠\r\n手写', 0, 0, 0, 0),
(60, 4, '主屏参数/内屏参数', 0, 0, '', 0, 0, 0, 0),
(61, 4, '副屏参数/外屏参数', 0, 0, '', 0, 0, 0, 0),
(62, 4, '清晰度', 0, 0, '', 0, 0, 0, 0),
(63, 4, '色数/灰度', 1, 0, '   ', 0, 0, 0, 0),
(64, 4, '长度', 0, 0, '', 0, 0, 0, 0),
(65, 4, '宽度', 0, 0, '', 0, 0, 0, 0),
(66, 4, '厚度', 0, 0, '', 0, 0, 0, 0),
(67, 4, '屏幕材质', 0, 0, '', 0, 0, 0, 0),
(68, 4, '内存容量', 0, 0, '', 0, 0, 0, 0),
(69, 4, '操作系统', 0, 0, '', 0, 0, 0, 0),
(70, 4, '通话时间', 0, 0, '', 0, 0, 0, 0),
(71, 4, '待机时间', 0, 0, '', 0, 0, 0, 0),
(72, 4, '标准配置', 0, 0, '', 0, 0, 0, 0),
(73, 4, 'WAP上网', 0, 0, '', 0, 0, 0, 0),
(74, 4, '数据业务', 0, 0, '', 0, 0, 0, 0),
(75, 4, '天线位置', 1, 0, '内置\r\n外置', 0, 0, 0, 0),
(76, 4, '随机配件', 0, 0, '', 0, 0, 0, 0),
(77, 4, '铃声', 0, 0, '', 0, 0, 0, 0),
(78, 4, '摄像头', 0, 0, '', 0, 0, 0, 0),
(79, 4, '彩信/彩e', 1, 0, '支持\r\n不支持', 0, 0, 0, 0),
(80, 4, '红外/蓝牙', 0, 0, '', 0, 0, 0, 0),
(81, 4, '价格等级', 1, 0, '高价机\r\n中价机\r\n低价机', 0, 0, 0, 0),
(82, 5, '型号', 0, 0, '', 0, 0, 0, 0),
(83, 5, '详细规格', 0, 0, '', 0, 0, 0, 0),
(84, 5, '笔记本尺寸', 0, 0, '', 0, 0, 0, 0),
(85, 5, '处理器类型', 0, 0, '', 0, 0, 0, 0),
(86, 5, '处理器最高主频', 0, 0, '', 0, 0, 0, 0),
(87, 5, '二级缓存', 0, 0, '', 0, 0, 0, 0),
(88, 5, '系统总线', 0, 0, '', 0, 0, 0, 0),
(89, 5, '主板芯片组', 0, 0, '', 0, 0, 0, 0),
(90, 5, '内存容量', 0, 0, '', 0, 0, 0, 0),
(91, 5, '内存类型', 0, 0, '', 0, 0, 0, 0),
(92, 5, '硬盘', 0, 0, '', 0, 0, 0, 0),
(93, 5, '屏幕尺寸', 0, 0, '', 0, 0, 0, 0),
(94, 5, '显示芯片', 0, 0, '', 0, 0, 0, 0),
(95, 5, '标称频率', 0, 0, '', 0, 0, 0, 0),
(96, 5, '显卡显存', 0, 0, '', 0, 0, 0, 0),
(97, 5, '显卡类型', 0, 0, '', 0, 0, 0, 0),
(98, 5, '光驱类型', 0, 0, '', 0, 0, 0, 0),
(99, 5, '电池容量', 0, 0, '', 0, 0, 0, 0),
(100, 5, '其他配置', 0, 0, '', 0, 0, 0, 0),
(101, 6, '类型', 0, 0, '', 0, 0, 0, 0),
(102, 6, '最大像素/总像素  ', 0, 0, '', 0, 0, 0, 0),
(103, 6, '有效像素', 1, 0, '  ', 0, 0, 0, 0),
(104, 6, '光学变焦倍数', 0, 0, '', 0, 0, 0, 0),
(105, 6, '数字变焦倍数', 0, 0, '', 0, 0, 0, 0),
(106, 6, '操作模式', 0, 0, '', 0, 0, 0, 0),
(107, 6, '显示屏类型', 0, 0, '', 0, 0, 0, 0),
(108, 6, '显示屏尺寸', 0, 0, '', 0, 0, 0, 0),
(109, 6, '感光器件', 0, 0, '', 0, 0, 0, 0),
(110, 6, '感光器件尺寸', 0, 0, '', 0, 0, 0, 0),
(111, 6, '最高分辨率', 0, 0, '', 0, 0, 0, 0),
(112, 6, '图像分辨率', 0, 0, '', 0, 0, 0, 0),
(113, 6, '传感器类型', 0, 0, '', 0, 0, 0, 0),
(114, 6, '传感器尺寸', 0, 0, '', 0, 0, 0, 0),
(115, 6, '镜头', 0, 0, '', 0, 0, 0, 0),
(116, 6, '光圈', 0, 0, '', 0, 0, 0, 0),
(117, 6, '焦距', 0, 0, '', 0, 0, 0, 0),
(118, 6, '旋转液晶屏', 1, 0, '支持\r\n不支持', 0, 0, 0, 0),
(119, 6, '存储介质', 0, 0, '', 0, 0, 0, 0),
(120, 6, '存储卡', 1, 0, '  记录媒体\r\n存储卡容量', 0, 0, 0, 0),
(121, 6, '影像格式', 1, 0, '    静像\r\n动画', 0, 0, 0, 0),
(122, 6, '曝光控制', 0, 0, '', 0, 0, 0, 0),
(123, 6, '曝光模式', 0, 0, '', 0, 0, 0, 0),
(124, 6, '曝光补偿', 0, 0, '', 0, 0, 0, 0),
(125, 6, '白平衡', 0, 0, '', 0, 0, 0, 0),
(126, 6, '连拍', 0, 0, '', 0, 0, 0, 0),
(127, 6, '快门速度', 0, 0, '', 0, 0, 0, 0),
(128, 6, '闪光灯', 1, 0, '内置\r\n外置', 0, 0, 0, 0),
(129, 6, '拍摄范围', 1, 0, '  ', 0, 0, 0, 0),
(130, 6, '自拍定时器', 0, 0, '', 0, 0, 0, 0),
(131, 6, 'ISO感光度', 0, 0, '', 0, 0, 0, 0),
(132, 6, '测光模式', 0, 0, '', 0, 0, 0, 0),
(133, 6, '场景模式', 0, 0, '', 0, 0, 0, 0),
(134, 6, '短片拍摄', 0, 0, '', 0, 0, 0, 0),
(135, 6, '外接接口', 0, 0, '', 0, 0, 0, 0),
(136, 6, '电源', 0, 0, '', 0, 0, 0, 0),
(137, 6, '电池使用时间', 0, 0, '', 0, 0, 0, 0),
(138, 6, '外形尺寸', 0, 0, '', 0, 0, 0, 0),
(139, 6, '标配软件', 0, 0, '', 0, 0, 0, 0),
(140, 6, '标准配件', 0, 0, '', 0, 0, 0, 0),
(141, 6, '兼容操作系统', 0, 0, '', 0, 0, 0, 0),
(142, 7, '编号', 0, 0, '', 0, 0, 0, 0),
(143, 7, '类型', 0, 0, '', 0, 0, 0, 0),
(144, 7, '外型尺寸', 0, 0, '', 0, 0, 0, 0),
(145, 7, '最大像素数', 0, 0, '', 0, 0, 0, 0),
(146, 7, '光学变焦倍数', 0, 0, '', 0, 0, 0, 0),
(147, 7, '数字变焦倍数', 0, 0, '', 0, 0, 0, 0),
(148, 7, '显示屏尺寸及类型', 0, 0, '', 0, 0, 0, 0),
(149, 7, '感光器件', 0, 0, '', 0, 0, 0, 0),
(150, 7, '感光器件尺寸', 0, 0, '', 0, 0, 0, 0),
(151, 7, '感光器件数量', 0, 0, '', 0, 0, 0, 0),
(152, 7, '像素范围', 0, 0, '', 0, 0, 0, 0),
(153, 7, '传感器数量', 0, 0, '', 0, 0, 0, 0),
(154, 7, '传感器尺寸', 0, 0, '', 0, 0, 0, 0),
(155, 7, '水平清晰度', 0, 0, '', 0, 0, 0, 0),
(156, 7, '取景器', 0, 0, '', 0, 0, 0, 0),
(157, 7, '数码效果', 0, 0, '', 0, 0, 0, 0),
(158, 7, '镜头性能', 0, 0, '', 0, 0, 0, 0),
(159, 7, '对焦方式', 0, 0, '', 0, 0, 0, 0),
(160, 7, '曝光控制', 0, 0, '', 0, 0, 0, 0),
(161, 7, '其他接口', 0, 0, '', 0, 0, 0, 0),
(162, 7, '随机存储', 0, 0, '', 0, 0, 0, 0),
(163, 7, '电池类型', 0, 0, '', 0, 0, 0, 0),
(164, 7, '电池供电时间', 0, 0, '', 0, 0, 0, 0),
(165, 8, '产地', 0, 0, '', 0, 0, 0, 0),
(166, 8, '产品规格/容量', 0, 0, '', 0, 0, 0, 0),
(167, 8, '主要原料', 0, 0, '', 0, 0, 0, 0),
(168, 8, '所属类别', 1, 0, '彩妆\r\n化妆工具\r\n护肤品\r\n香水', 0, 0, 0, 0),
(169, 8, '使用部位', 0, 0, '', 0, 0, 0, 0),
(170, 8, '适合肤质', 1, 0, '油性\r\n中性\r\n干性', 0, 0, 0, 0),
(171, 8, '适用人群', 1, 0, '女性\r\n男性', 0, 0, 0, 0),
(172, 9, '上市日期', 1, 0, '2008年01月\r\n2008年02月\r\n2008年03月\r\n2008年04月\r\n2008年05月\r\n2008年06月\r\n2008年07月\r\n2008年08月\r\n2008年09月\r\n2008年10月\r\n2008年11月\r\n2008年12月\r\n2007年01月\r\n2007年02月\r\n2007年03月\r\n2007年04月\r\n2007年05月\r\n2007年06月\r\n2007年07月\r\n2007年08月\r\n2007年09月\r\n2007年10月\r\n2007年11月\r\n2007年12月', 1, 0, 0, 0),
(173, 9, '手机制式', 1, 0, 'GSM,850,900,1800,1900\r\nGSM,900,1800,1900,2100\r\nCDMA\r\n双模（GSM,900,1800,CDMA 1X）\r\n3G(GSM,900,1800,1900,TD-SCDMA )', 1, 1, 1, 0),
(174, 9, '理论通话时间', 0, 0, '', 0, 2, 0, 0),
(175, 9, '理论待机时间', 0, 0, '', 0, 3, 0, 0),
(176, 9, '铃声', 0, 0, '', 0, 4, 0, 0),
(177, 9, '铃声格式', 0, 0, '', 0, 5, 0, 0),
(178, 9, '外观样式', 1, 0, '翻盖\r\n滑盖\r\n直板\r\n折叠', 1, 6, 1, 0),
(179, 9, '中文短消息', 0, 0, '', 0, 7, 0, 0),
(180, 9, '存储卡格式', 0, 0, '', 0, 0, 0, 0),
(181, 9, '内存容量', 0, 0, '', 2, 0, 0, 0),
(182, 9, '操作系统', 0, 0, '', 0, 0, 0, 0),
(183, 9, 'K-JAVA', 0, 0, '', 0, 0, 0, 0),
(184, 9, '尺寸体积', 0, 0, '', 0, 0, 0, 0),
(185, 9, '颜色', 1, 1, '黑色\r\n白色\r\n蓝色\r\n金色\r\n粉色\r\n银色\r\n灰色\r\n深李色\r\n黑红色\r\n黑蓝色\r\n白紫色', 1, 0, 0, 0),
(186, 9, '屏幕颜色', 1, 0, '1600万\r\n262144万', 1, 0, 1, 1),
(187, 9, '屏幕材质', 1, 0, 'TFT', 0, 0, 0, 1),
(188, 9, '屏幕分辨率', 1, 0, '320×240 像素\r\n240×400 像素\r\n240×320 像素\r\n176x220 像素', 1, 0, 0, 1),
(189, 9, '屏幕大小', 0, 0, '', 0, 0, 0, 1),
(190, 9, '中文输入法', 0, 0, '', 0, 0, 0, 2),
(191, 9, '情景模式', 0, 0, '', 0, 0, 0, 2),
(192, 9, '网络链接', 0, 0, '', 0, 0, 0, 2),
(193, 9, '蓝牙接口', 0, 0, '', 0, 0, 0, 0),
(194, 9, '数据线接口', 0, 0, '', 0, 0, 0, 2),
(195, 9, '电子邮件', 0, 0, '', 0, 0, 0, 2),
(196, 9, '闹钟', 0, 0, '', 0, 35, 0, 4),
(197, 9, '办公功能', 0, 0, '', 0, 0, 0, 4),
(198, 9, '数码相机', 0, 0, '', 1, 0, 0, 3),
(199, 9, '像素', 0, 0, '', 0, 0, 0, 3),
(200, 9, '传感器', 0, 0, '', 0, 0, 0, 0),
(201, 9, '变焦模式', 0, 0, '', 0, 0, 0, 3),
(202, 9, '视频拍摄', 0, 0, '', 0, 0, 0, 3),
(203, 9, 'MP3播放器', 0, 0, '', 0, 0, 0, 3),
(204, 9, '视频播放', 0, 0, '', 0, 0, 0, 3),
(205, 9, 'CPU频率', 0, 0, '', 0, 0, 0, 0),
(206, 9, '收音机', 0, 0, '', 0, 0, 0, 3),
(207, 9, '耳机接口', 0, 0, '', 0, 0, 0, 3),
(208, 9, '闪光灯', 0, 0, '', 0, 0, 0, 3),
(209, 9, '浏览器', 0, 0, '', 0, 0, 0, 2),
(210, 9, '配件', 1, 2, '线控耳机\r\n蓝牙耳机\r\n数据线', 0, 0, 0, 0),
(211, 10, '功效', 1, 0, '美白\r\n修护\r\n保湿\r\n控油\r\n活肤\r\n卸妆\r\n收缩\r\n毛孔\r\n抗敏感\r\n排毒\r\n祛斑\r\n抗菌消炎\r\n去角质\r\n去黑头\r\n均匀肤色\r\n镇静舒缓\r\n去黑色素\r\n调理肌肤\r\n清洁\r\n抗衰老\r\n祛痘\r\n补水\r\n去死皮\r\n淡斑\r\n提亮肤色\r\n清洁毛孔\r\n抗氧化\r\n水油平衡', 0, 0, 0, 0),
(212, 10, '肤质', 1, 0, '油性 \r\n干性 \r\n中性 \r\n混合型 \r\n敏感性', 0, 0, 0, 0),
(213, 11, '外        观', 1, 1, '红色\r\n黄色\r\n金色', 0, 0, 0, 0),
(214, 11, '商品品牌', 0, 0, '', 0, 0, 0, 0),
(215, 11, '商品功效', 0, 0, '', 0, 0, 0, 0),
(216, 11, '商品规格', 0, 0, '', 0, 0, 0, 0),
(217, 11, '生产日期', 0, 0, '', 0, 0, 0, 0),
(218, 11, '商品产地', 0, 0, '', 0, 0, 0, 0),
(219, 11, '商品包装', 0, 0, '', 0, 0, 0, 0),
(220, 11, '适宜人群', 0, 0, '', 0, 0, 0, 0),
(221, 11, '温馨提示', 0, 0, '', 0, 0, 0, 0),
(222, 11, '物品说明', 0, 0, '', 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ecs_auction_log`
--

CREATE TABLE IF NOT EXISTS `ecs_auction_log` (
  `log_id` mediumint(8) unsigned NOT NULL,
  `act_id` mediumint(8) unsigned NOT NULL,
  `bid_user` mediumint(8) unsigned NOT NULL,
  `bid_price` decimal(10,2) unsigned NOT NULL,
  `bid_time` int(10) unsigned NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ecs_auction_log`
--

INSERT INTO `ecs_auction_log` (`log_id`, `act_id`, `bid_user`, `bid_price`, `bid_time`) VALUES
(1, 4, 1, '170.00', 1242144083);

-- --------------------------------------------------------

--
-- Table structure for table `ecs_auto_manage`
--

CREATE TABLE IF NOT EXISTS `ecs_auto_manage` (
  `item_id` mediumint(8) NOT NULL,
  `type` varchar(10) NOT NULL,
  `starttime` int(10) NOT NULL,
  `endtime` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ecs_back_goods`
--

CREATE TABLE IF NOT EXISTS `ecs_back_goods` (
  `rec_id` mediumint(8) unsigned NOT NULL,
  `back_id` mediumint(8) unsigned DEFAULT '0',
  `goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `product_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `product_sn` varchar(60) DEFAULT NULL,
  `goods_name` varchar(120) DEFAULT NULL,
  `brand_name` varchar(60) DEFAULT NULL,
  `goods_sn` varchar(60) DEFAULT NULL,
  `is_real` tinyint(1) unsigned DEFAULT '0',
  `send_number` smallint(5) unsigned DEFAULT '0',
  `goods_attr` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ecs_back_order`
--

CREATE TABLE IF NOT EXISTS `ecs_back_order` (
  `back_id` mediumint(8) unsigned NOT NULL,
  `delivery_sn` varchar(20) NOT NULL,
  `order_sn` varchar(20) NOT NULL,
  `order_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `invoice_no` varchar(50) DEFAULT NULL,
  `add_time` int(10) unsigned DEFAULT '0',
  `shipping_id` tinyint(3) unsigned DEFAULT '0',
  `shipping_name` varchar(120) DEFAULT NULL,
  `user_id` mediumint(8) unsigned DEFAULT '0',
  `action_user` varchar(30) DEFAULT NULL,
  `consignee` varchar(60) DEFAULT NULL,
  `address` varchar(250) DEFAULT NULL,
  `country` smallint(5) unsigned DEFAULT '0',
  `province` smallint(5) unsigned DEFAULT '0',
  `city` smallint(5) unsigned DEFAULT '0',
  `district` smallint(5) unsigned DEFAULT '0',
  `sign_building` varchar(120) DEFAULT NULL,
  `email` varchar(60) DEFAULT NULL,
  `zipcode` varchar(60) DEFAULT NULL,
  `tel` varchar(60) DEFAULT NULL,
  `mobile` varchar(60) DEFAULT NULL,
  `best_time` varchar(120) DEFAULT NULL,
  `postscript` varchar(255) DEFAULT NULL,
  `how_oos` varchar(120) DEFAULT NULL,
  `insure_fee` decimal(10,2) unsigned DEFAULT '0.00',
  `shipping_fee` decimal(10,2) unsigned DEFAULT '0.00',
  `update_time` int(10) unsigned DEFAULT '0',
  `suppliers_id` smallint(5) DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `return_time` int(10) unsigned DEFAULT '0',
  `agency_id` smallint(5) unsigned DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ecs_back_order`
--

INSERT INTO `ecs_back_order` (`back_id`, `delivery_sn`, `order_sn`, `order_id`, `invoice_no`, `add_time`, `shipping_id`, `shipping_name`, `user_id`, `action_user`, `consignee`, `address`, `country`, `province`, `city`, `district`, `sign_building`, `email`, `zipcode`, `tel`, `mobile`, `best_time`, `postscript`, `how_oos`, `insure_fee`, `shipping_fee`, `update_time`, `suppliers_id`, `status`, `return_time`, `agency_id`) VALUES
(1, '20090615054961769', '2009061585887', 15, '2009061585884', 1245044533, 3, '', 1, 'admin', '刘先生', '海兴大厦', 1, 2, 52, 502, '', 'ecshop@ecshop.com', '', '010-25851234', '13986765412', '', '', '等待所有商品备齐后再发', '0.00', '10.00', 1245044964, 2, 0, 1245045515, 0),
(2, '20090615055104671', '2009061585887', 15, '20090615', 1245044533, 3, '', 1, 'admin', '刘先生', '海兴大厦', 1, 2, 52, 502, '', 'ecshop@ecshop.com', '', '010-25851234', '13986765412', '', '', '等待所有商品备齐后再发', '0.00', '10.00', 1245045061, 1, 0, 1245045515, 0),
(3, '20090615055780744', '2009061585887', 15, '123232', 1245044533, 3, '', 1, 'admin', '刘先生', '海兴大厦', 1, 2, 52, 502, '', 'ecshop@ecshop.com', '', '010-25851234', '13986765412', '', '', '等待所有商品备齐后再发', '0.00', '10.00', 1245045443, 0, 0, 1245045515, 0),
(4, '20090615064331475', '2009061503335', 17, '00906150333512', 1245047978, 3, '', 1, 'admin', '刘先生', '海兴大厦', 1, 2, 52, 502, '', 'ecshop@ecshop.com', '', '010-25851234', '13986765412', '', '', '等待所有商品备齐后再发', '0.00', '10.00', 1245048189, 0, 0, 1245048212, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ecs_bonus_type`
--

CREATE TABLE IF NOT EXISTS `ecs_bonus_type` (
  `type_id` smallint(5) unsigned NOT NULL,
  `type_name` varchar(60) NOT NULL DEFAULT '',
  `type_money` decimal(10,2) NOT NULL DEFAULT '0.00',
  `send_type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `min_amount` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `max_amount` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `send_start_date` int(11) NOT NULL DEFAULT '0',
  `send_end_date` int(11) NOT NULL DEFAULT '0',
  `use_start_date` int(11) NOT NULL DEFAULT '0',
  `use_end_date` int(11) NOT NULL DEFAULT '0',
  `min_goods_amount` decimal(10,2) unsigned NOT NULL DEFAULT '0.00'
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ecs_bonus_type`
--

INSERT INTO `ecs_bonus_type` (`type_id`, `type_name`, `type_money`, `send_type`, `min_amount`, `max_amount`, `send_start_date`, `send_end_date`, `use_start_date`, `use_end_date`, `min_goods_amount`) VALUES
(1, '用户红包', '2.00', 0, '0.00', '0.00', 1242057600, 1244736000, 1242057600, 1250006400, '500.00'),
(2, '商品红包', '10.00', 1, '0.00', '0.00', 1241971200, 1250352000, 1242057600, 1250006400, '500.00'),
(3, '订单红包', '20.00', 2, '1500.00', '0.00', 1242057600, 1309363200, 1242057600, 1257955200, '800.00'),
(4, '线下红包', '5.00', 3, '0.00', '0.00', 1242057600, 1244736000, 1242057600, 1255449600, '360.00');

-- --------------------------------------------------------

--
-- Table structure for table `ecs_booking_goods`
--

CREATE TABLE IF NOT EXISTS `ecs_booking_goods` (
  `rec_id` mediumint(8) unsigned NOT NULL,
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `email` varchar(60) NOT NULL DEFAULT '',
  `link_man` varchar(60) NOT NULL DEFAULT '',
  `tel` varchar(60) NOT NULL DEFAULT '',
  `goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `goods_desc` varchar(255) NOT NULL DEFAULT '',
  `goods_number` smallint(5) unsigned NOT NULL DEFAULT '0',
  `booking_time` int(10) unsigned NOT NULL DEFAULT '0',
  `is_dispose` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `dispose_user` varchar(30) NOT NULL DEFAULT '',
  `dispose_time` int(10) unsigned NOT NULL DEFAULT '0',
  `dispose_note` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ecs_brand`
--

CREATE TABLE IF NOT EXISTS `ecs_brand` (
  `brand_id` smallint(5) unsigned NOT NULL,
  `brand_name` varchar(60) NOT NULL DEFAULT '',
  `brand_logo` varchar(80) NOT NULL DEFAULT '',
  `brand_desc` text NOT NULL,
  `site_url` varchar(255) NOT NULL DEFAULT '',
  `sort_order` tinyint(3) unsigned NOT NULL DEFAULT '50',
  `is_show` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `brand_banner` varchar(150) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=71 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ecs_brand`
--

INSERT INTO `ecs_brand` (`brand_id`, `brand_name`, `brand_logo`, `brand_desc`, `site_url`, `sort_order`, `is_show`, `brand_banner`) VALUES
(1, '兰蔻', '1385070090962310856.jpg', '', 'http://', 50, 1, ''),
(16, '我的美白日记', '1385072100245819895.jpg', '', 'http://', 50, 1, ''),
(2, '雅诗兰黛', '1385070574091897739.jpg', '', 'http://', 50, 1, ''),
(14, '迪奥', '1385071888294863849.jpg', '', 'http://', 50, 1, ''),
(15, '茱莉蔻', '1385071998799359953.jpg', '', 'http://', 50, 1, ''),
(59, '英国AA网', '', '', '', 50, 1, ''),
(60, '雅漾', '', '', '', 50, 1, ''),
(61, '契尔氏', '', '', '', 50, 1, ''),
(62, '彼得罗夫', '', '', '', 50, 1, ''),
(54, '欧珀莱', '', '', '', 50, 1, ''),
(55, '丝塔芙', '', '', '', 50, 1, ''),
(56, '植村秀', '', '', '', 50, 1, ''),
(57, '婵真', '', '', '', 50, 1, ''),
(58, '嘉娜宝', '', '', '', 50, 1, ''),
(50, '瑞尔薇黛', '', '', '', 50, 1, ''),
(51, '和汉方', '', '', '', 50, 1, ''),
(52, '可莱丝', '', '', '', 50, 1, ''),
(53, '泊美', '', '', '', 50, 1, ''),
(45, '悠香伊', '', '', '', 50, 1, ''),
(46, 'SK-II', '', '', '', 50, 1, ''),
(47, '姗娜', '', '', '', 50, 1, ''),
(48, '韩国思美兰', '', '', '', 50, 1, ''),
(49, '佰草集', '', '', '', 50, 1, ''),
(7, '倩碧', '1385070660861937745.jpg', '', 'http://', 50, 1, ''),
(12, '娇兰', '1385071326106067039.jpg', '', 'http://', 50, 1, ''),
(13, '雅顿', '1385071484398955050.jpg', '', 'http://', 50, 1, ''),
(43, '阿玛尼', '1385080708963724707.jpg', '', 'http://', 50, 1, ''),
(44, '欧树', '1385662855656952777.jpg', '', 'http://', 50, 1, ''),
(9, '贝玲妃', '1385074856935793708.jpg', '', 'http://', 50, 1, ''),
(20, '安娜苏', '1385075349519828204.jpg', '', 'http://', 50, 1, ''),
(22, '谜尚', '1385076120760632260.jpg', '', 'http://', 50, 1, ''),
(10, '蜜丝佛陀', '1385075742122482555.jpg', '', 'http://', 50, 1, ''),
(21, '纪梵希', '1385075993147931634.jpg', '', 'http://', 50, 1, ''),
(40, '阿迪达斯', '1385080175714409282.jpg', '', 'http://', 50, 1, ''),
(41, '兰芝', '1385080502608521813.jpg', '', 'http://', 50, 1, ''),
(42, '科颜氏', '1385080599437329243.jpg', '', 'http://', 50, 1, ''),
(17, '美体小铺', '1385072216409455201.jpg', '', 'http://', 50, 1, ''),
(18, '碧欧泉', '1385072323411408978.jpg', '', 'http://', 50, 1, ''),
(19, '香奈儿', '1385074662344849612.jpg', '', 'http://', 50, 1, ''),
(23, '欧莱雅', '1385076231378742775.jpg', '', 'http://', 50, 1, ''),
(24, '思亲肤', '1385076375210486006.jpg', '', 'http://', 50, 1, ''),
(25, '浮生若梦', '1385076518149939285.jpg', '', 'http://', 50, 1, ''),
(26, '博柏利', '1385076800385519114.jpg', '', 'http://', 50, 1, ''),
(27, '大卫杜夫', '1385076915245433330.jpg', '', 'http://', 50, 1, ''),
(28, '马克.雅克布', '1385077155008131442.jpg', '', 'http://', 50, 1, ''),
(29, '菲拉格慕', '1385077477188890125.jpg', '', 'http://', 50, 1, ''),
(30, '范思哲', '1385077604377412545.jpg', '', 'http://', 50, 1, ''),
(31, '凯文克莱', '1385077748974263151.jpg', '', 'http://', 50, 1, ''),
(32, '娇韵诗', '1385078397715580649.jpg', '', 'http://', 50, 1, ''),
(33, '资生堂', '1385079115095792076.jpg', '', 'http://', 50, 1, ''),
(34, '菲诗小铺', '1385079318413536424.jpg', '', 'http://', 50, 1, ''),
(35, '多芬', '1385079444533254362.jpg', '', 'http://', 50, 1, ''),
(36, '高丝', '1385079568646758244.jpg', '', 'http://', 50, 1, ''),
(37, 'NYR', '1385079676209216392.jpg', '', 'http://', 50, 1, ''),
(38, '露得清', '1385079770833052568.jpg', '', 'http://', 50, 1, ''),
(39, '魅力匙', '1385079890162676741.jpg', '', 'http://', 50, 1, ''),
(63, '希思黎', '', '', '', 50, 1, ''),
(64, 'DHC', '', '', '', 50, 1, ''),
(65, 'JUJU', '', '', '', 50, 1, ''),
(66, '理肤泉', '', '', '', 50, 1, ''),
(67, '蓓丽', '', '', '', 50, 1, ''),
(68, '曼秀雷敦', '', '', '', 50, 1, ''),
(69, '肌研', '', '', '', 50, 1, ''),
(70, '玫琳凯', '', '', '', 50, 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `ecs_card`
--

CREATE TABLE IF NOT EXISTS `ecs_card` (
  `card_id` tinyint(3) unsigned NOT NULL,
  `card_name` varchar(120) NOT NULL DEFAULT '',
  `card_img` varchar(255) NOT NULL DEFAULT '',
  `card_fee` decimal(6,2) unsigned NOT NULL DEFAULT '0.00',
  `free_money` decimal(6,2) unsigned NOT NULL DEFAULT '0.00',
  `card_desc` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ecs_card`
--

INSERT INTO `ecs_card` (`card_id`, `card_name`, `card_img`, `card_fee`, `free_money`, `card_desc`) VALUES
(1, '祝福贺卡', '1242108754847457261.jpg', '5.00', '1000.00', '把您的祝福带给您身边的人');

-- --------------------------------------------------------

--
-- Table structure for table `ecs_cart`
--

CREATE TABLE IF NOT EXISTS `ecs_cart` (
  `rec_id` mediumint(8) unsigned NOT NULL,
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `session_id` char(32) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `goods_sn` varchar(60) NOT NULL DEFAULT '',
  `product_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `group_id` varchar(255) NOT NULL,
  `goods_name` varchar(120) NOT NULL DEFAULT '',
  `market_price` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `goods_price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `goods_number` smallint(5) unsigned NOT NULL DEFAULT '0',
  `goods_attr` text NOT NULL,
  `is_real` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `extension_code` varchar(30) NOT NULL DEFAULT '',
  `parent_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `rec_type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_gift` smallint(5) unsigned NOT NULL DEFAULT '0',
  `is_shipping` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `can_handsel` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `goods_attr_id` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ecs_cart_combo`
--

CREATE TABLE IF NOT EXISTS `ecs_cart_combo` (
  `rec_id` mediumint(8) unsigned NOT NULL,
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `session_id` char(32) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `goods_sn` varchar(60) NOT NULL DEFAULT '',
  `product_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `group_id` varchar(255) NOT NULL,
  `goods_name` varchar(120) NOT NULL DEFAULT '',
  `market_price` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `goods_price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `goods_number` smallint(5) unsigned NOT NULL DEFAULT '0',
  `goods_attr` text NOT NULL,
  `is_real` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `extension_code` varchar(30) NOT NULL DEFAULT '',
  `parent_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `rec_type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_gift` smallint(5) unsigned NOT NULL DEFAULT '0',
  `is_shipping` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `can_handsel` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `goods_attr_id` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ecs_category`
--

CREATE TABLE IF NOT EXISTS `ecs_category` (
  `cat_id` smallint(5) unsigned NOT NULL,
  `cat_name` varchar(90) NOT NULL DEFAULT '',
  `cat_name_en` varchar(255) NOT NULL,
  `keywords` varchar(255) NOT NULL DEFAULT '',
  `cat_desc` varchar(255) NOT NULL DEFAULT '',
  `parent_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `sort_order` tinyint(1) unsigned NOT NULL DEFAULT '50',
  `template_file` varchar(50) NOT NULL DEFAULT '',
  `measure_unit` varchar(15) NOT NULL DEFAULT '',
  `show_in_nav` tinyint(1) NOT NULL DEFAULT '0',
  `style` varchar(150) NOT NULL,
  `is_show` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `grade` tinyint(4) NOT NULL DEFAULT '0',
  `filter_attr` varchar(255) NOT NULL DEFAULT '0',
  `is_top_style` int(3) unsigned NOT NULL DEFAULT '0',
  `is_top_show` int(3) unsigned NOT NULL DEFAULT '0',
  `cat_ico` varchar(255) NOT NULL,
  `icon` varchar(255) NOT NULL,
  `theme_color` varchar(255) NOT NULL,
  `show_banner_in_home_page` tinyint(1) NOT NULL DEFAULT '0',
  `show_banner_in_category_page` tinyint(1) NOT NULL DEFAULT '0',
  `is_event_area` tinyint(1) NOT NULL DEFAULT '0',
  `event_file_name` varchar(255) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=145 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ecs_category`
--

INSERT INTO `ecs_category` (`cat_id`, `cat_name`, `cat_name_en`, `keywords`, `cat_desc`, `parent_id`, `sort_order`, `template_file`, `measure_unit`, `show_in_nav`, `style`, `is_show`, `grade`, `filter_attr`, `is_top_style`, `is_top_show`, `cat_ico`, `icon`, `theme_color`, `show_banner_in_home_page`, `show_banner_in_category_page`, `is_event_area`, `event_file_name`) VALUES
(1, '彩妆', 'y', '', '', 0, 2, '', '', 0, '', 1, 5, '172,185,178', 0, 1, '', '', '#361F5B', 1, 0, 0, ''),
(2, '其他彩妆', '', '', '', 1, 50, '', '', 0, '', 1, 0, '6', 0, 0, '', '', '', 0, 0, 0, ''),
(3, '彩妆套装', '', '', '', 1, 2, '', '台', 1, '', 1, 4, '185,189,173,178', 0, 0, '', '', '', 0, 0, 0, ''),
(4, '眼部彩妆', '', '', '', 1, 0, '', '', 1, '', 1, 0, '28', 0, 0, '', '', '', 0, 0, 0, ''),
(5, '面部彩妆', '', '', '', 1, 1, '', '', 0, '', 1, 5, '18', 0, 0, '', '', '', 0, 0, 0, ''),
(6, '护肤', '', '', '', 0, 50, '', '', 1, '', 1, 5, '211,212', 1, 1, '', '', '', 0, 0, 0, ''),
(7, '面部护理', '', '', '', 6, 50, '', '', 0, '', 1, 0, '', 0, 1, '', '', '', 0, 0, 0, ''),
(8, '眼部护理', '', '', '', 6, 50, '', '', 0, '', 1, 0, '', 1, 1, '', '', '', 0, 0, 0, ''),
(9, '其他护理', '', '', '', 6, 50, '', '', 0, '', 1, 0, '', 0, 0, '', '', '', 0, 0, 0, ''),
(11, '护肤套装', '', '', '', 6, 50, '', '', 0, '', 1, 0, '', 0, 1, '', '', '', 0, 0, 0, ''),
(12, '男士', '', '', '', 0, 50, '', '', 0, '', 1, 0, '', 0, 0, '', '', '#361F5B', 0, 0, 1, ''),
(13, '其他护理', '', '', '', 12, 3, '', '', 0, '', 1, 0, '', 0, 0, '', '', '', 0, 0, 0, ''),
(14, '面部护理', '', '', '', 12, 1, '', '', 0, '', 1, 0, '', 0, 0, '', '', '', 0, 0, 0, ''),
(15, '身体护理', '', '', '', 12, 2, '', '', 0, '', 1, 0, '', 0, 0, '', '', '', 0, 0, 0, ''),
(16, '香氛', '', '', '', 0, 50, '', '', 1, '', 1, 0, '', 0, 0, '', '', '', 0, 0, 0, ''),
(17, '身体护理', 'y', '', '', 0, 1, '', '', 0, '', 1, 0, '', 0, 0, '', 'data/category_icon/1438113289767165109.png', '#361F5B', 1, 1, 1, ''),
(18, '美容工具', '', '', '', 0, 50, '', '', 0, '', 1, 0, '', 0, 0, '', '', '', 0, 0, 0, ''),
(19, '洁面', '', '', '', 7, 50, '', '', 0, '', 1, 5, '211,212', 0, 0, '', '', '', 0, 0, 0, ''),
(20, '面膜', '', '', '', 7, 50, '', '', 0, '', 1, 0, '', 0, 0, '', '', '', 0, 0, 0, ''),
(21, '卸妆', '', '', '', 7, 50, '', '', 0, '', 1, 0, '', 0, 0, '', '', '', 0, 0, 0, ''),
(22, '防晒', '', '', '', 7, 50, '', '', 0, '', 1, 0, '', 0, 0, '', '', '', 0, 0, 0, ''),
(23, '精华', '', '', '', 7, 50, '', '', 0, '', 1, 0, '', 0, 0, '', '', '', 0, 0, 0, ''),
(24, '化妆水', '', '', '', 7, 50, '', '', 0, '', 1, 0, '', 0, 0, '', '', '', 0, 0, 0, ''),
(25, '乳液', '', '', '', 7, 50, '', '', 0, '', 1, 0, '', 0, 0, '', '', '', 0, 0, 0, ''),
(26, '面霜', '', '', '', 7, 50, '', '', 0, '', 1, 0, '', 0, 0, '', '', '', 0, 0, 0, ''),
(27, '面油', '', '', '', 7, 50, '', '', 0, '', 1, 0, '', 0, 0, '', '', '', 0, 0, 0, ''),
(28, '保湿', '', '', '', 8, 50, '', '', 0, '', 1, 0, '', 0, 0, '', '', '', 0, 0, 0, ''),
(29, '去浮肿', '', '', '', 8, 50, '', '', 0, '', 1, 0, '', 0, 0, '', '', '', 0, 0, 0, ''),
(30, '去眼纹', '', '', '', 8, 50, '', '', 0, '', 1, 0, '', 0, 0, '', '', '', 0, 0, 0, ''),
(31, '去眼袋', '', '', '', 8, 50, '', '', 0, '', 1, 0, '', 0, 0, '', '', '', 0, 0, 0, ''),
(32, '去黑眼圈', '', '', '', 8, 50, '', '', 0, '', 1, 0, '', 0, 0, '', '', '', 0, 0, 0, ''),
(33, '护唇', '', '', '', 9, 50, '', '', 0, '', 1, 0, '', 0, 0, '', '', '', 0, 0, 0, ''),
(34, '喷雾', '', '', '', 9, 50, '', '', 0, '', 1, 0, '', 0, 0, '', '', '', 0, 0, 0, ''),
(35, '啫喱', '', '', '', 9, 50, '', '', 0, '', 1, 0, '', 0, 0, '', '', '', 0, 0, 0, ''),
(36, '角质按摩', '', '', '', 9, 50, '', '', 0, '', 1, 0, '', 0, 0, '', '', '', 0, 0, 0, ''),
(37, '祛痘祛斑', '', '', '', 9, 50, '', '', 0, '', 1, 0, '', 0, 0, '', '', '', 0, 0, 0, ''),
(38, 'T区护理', '', '', '', 9, 50, '', '', 0, '', 1, 0, '', 0, 0, '', '', '', 0, 0, 0, ''),
(39, '颈霜', '', '', '', 9, 50, '', '', 0, '', 1, 0, '', 0, 0, '', '', '', 0, 0, 0, ''),
(40, '保健食品', '', '', '', 9, 50, '', '', 0, '', 1, 0, '', 0, 0, '', '', '', 0, 0, 0, ''),
(41, '美白', '', '', '', 11, 50, '', '', 0, '', 1, 0, '', 0, 0, '', '', '', 0, 0, 0, ''),
(42, '保湿', '', '', '', 11, 50, '', '', 0, '', 1, 0, '', 0, 0, '', '', '', 0, 0, 0, ''),
(43, '嫩肤', '', '', '', 11, 50, '', '', 0, '', 1, 0, '', 0, 0, '', '', '', 0, 0, 0, ''),
(44, '补水', '', '', '', 11, 50, '', '', 0, '', 1, 0, '', 0, 0, '', '', '', 0, 0, 0, ''),
(45, '紧致去皱', '', '', '', 11, 50, '', '', 0, '', 1, 0, '', 0, 0, '', '', '', 0, 0, 0, ''),
(46, '男士套装', '', '', '', 12, 4, '', '', 0, '', 1, 0, '', 0, 0, '', '', '', 0, 0, 0, ''),
(47, '眼线', '', '', '', 4, 50, '', '', 0, '', 1, 0, '', 0, 0, '', '', '', 0, 0, 0, ''),
(48, '眼影', '', '', '', 4, 50, '', '', 0, '', 1, 0, '', 0, 0, '', '', '', 0, 0, 0, ''),
(49, '睫毛', '', '', '', 4, 50, '', '', 0, '', 1, 0, '', 0, 0, '', '', '', 0, 0, 0, ''),
(50, '眉粉眉笔', '', '', '', 4, 50, '', '', 0, '', 1, 0, '', 0, 0, '', '', '', 0, 0, 0, ''),
(51, 'BB霜', '', '', '', 5, 50, '', '', 0, '', 1, 0, '', 0, 0, '', '', '', 0, 0, 0, ''),
(52, '粉底', '', '', '', 5, 50, '', '', 0, '', 1, 0, '', 0, 0, '', '', '', 0, 0, 0, ''),
(53, '粉饼', '', '', '', 5, 50, '', '', 0, '', 1, 0, '', 0, 0, '', '', '', 0, 0, 0, ''),
(54, '散粉', '', '', '', 5, 50, '', '', 0, '', 1, 0, '', 0, 0, '', '', '', 0, 0, 0, ''),
(55, '隔离霜', '', '', '', 5, 50, '', '', 0, '', 1, 0, '', 0, 0, '', '', '', 0, 0, 0, ''),
(56, '眼影', '', '', '', 3, 50, '', '', 0, '', 1, 0, '', 0, 0, '', '', '', 0, 0, 0, ''),
(57, '修容', '', '', '', 3, 50, '', '', 0, '', 1, 0, '', 0, 0, '', '', '', 0, 0, 0, ''),
(58, '润唇', '', '', '', 3, 50, '', '', 0, '', 1, 0, '', 0, 0, '', '', '', 0, 0, 0, ''),
(59, '卸妆', '', '', '', 3, 50, '', '', 0, '', 1, 0, '', 0, 0, '', '', '', 0, 0, 0, ''),
(60, '浓密卷翘', '', '', '', 3, 50, '', '', 0, '', 1, 0, '', 0, 0, '', '', '', 0, 0, 0, ''),
(61, '腮红', '', '', '', 2, 50, '', '', 0, '', 1, 0, '', 0, 0, '', '', '', 0, 0, 0, ''),
(62, '唇妆', '', '', '', 2, 50, '', '', 0, '', 1, 0, '', 0, 0, '', '', '', 0, 0, 0, ''),
(63, '美甲', '', '', '', 2, 50, '', '', 0, '', 1, 0, '', 0, 0, '', '', '', 0, 0, 0, ''),
(64, '修容', '', '', '', 2, 50, '', '', 0, '', 1, 0, '', 0, 0, '', '', '', 0, 0, 0, ''),
(65, '遮瑕', '', '', '', 2, 50, '', '', 0, '', 1, 0, '', 0, 0, '', '', '', 0, 0, 0, ''),
(66, '底妆定妆', '', '', '', 2, 50, '', '', 0, '', 1, 0, '', 0, 0, '', '', '', 0, 0, 0, ''),
(67, '洁面', '', '', '', 14, 50, '', '', 0, '', 1, 0, '', 0, 0, '', '', '', 0, 0, 0, ''),
(68, '爽肤', '', '', '', 14, 50, '', '', 0, '', 1, 0, '', 0, 0, '', '', '', 0, 0, 0, ''),
(69, '乳液', '', '', '', 14, 50, '', '', 0, '', 1, 0, '', 0, 0, '', '', '', 0, 0, 0, ''),
(70, '眼霜', '', '', '', 14, 50, '', '', 0, '', 1, 0, '', 0, 0, '', '', '', 0, 0, 0, ''),
(71, '精华', '', '', '', 14, 50, '', '', 0, '', 1, 0, '', 0, 0, '', '', '', 0, 0, 0, ''),
(72, '面霜', '', '', '', 14, 50, '', '', 0, '', 1, 0, '', 0, 0, '', '', '', 0, 0, 0, ''),
(73, '面膜', '', '', '', 14, 50, '', '', 0, '', 1, 0, '', 0, 0, '', '', '', 0, 0, 0, ''),
(74, '沐浴', '', '', '', 15, 50, '', '', 0, '', 1, 0, '', 0, 0, '', '', '', 0, 0, 0, ''),
(75, '清洁', '', '', '', 15, 50, '', '', 0, '', 1, 0, '', 0, 0, '', '', '', 0, 0, 0, ''),
(76, '香体喷雾', '', '', '', 15, 50, '', '', 0, '', 1, 0, '', 0, 0, '', '', '', 0, 0, 0, ''),
(77, '阿迪达斯', '', '', '', 15, 50, '', '', 0, '', 1, 0, '', 0, 0, '', '', '', 0, 0, 0, ''),
(78, '防晒', '', '', '', 13, 50, '', '', 0, '', 1, 0, '', 0, 0, '', '', '', 0, 0, 0, ''),
(79, '剃须', '', '', '', 13, 50, '', '', 0, '', 1, 0, '', 0, 0, '', '', '', 0, 0, 0, ''),
(80, 'BB霜', '', '', '', 13, 50, '', '', 0, '', 1, 0, '', 0, 0, '', '', '', 0, 0, 0, ''),
(81, '保湿', '', '', '', 46, 50, '', '', 0, '', 1, 0, '', 0, 0, '', '', '', 0, 0, 0, ''),
(82, '活肤', '', '', '', 46, 50, '', '', 0, '', 1, 0, '', 0, 0, '', '', '', 0, 0, 0, ''),
(83, '兰芝', '', '', '', 46, 50, '', '', 0, '', 1, 0, '', 0, 0, '', '', '', 0, 0, 0, ''),
(84, '欧莱雅', '', '', '', 46, 50, '', '', 0, '', 1, 0, '', 0, 0, '', '', '', 0, 0, 0, ''),
(85, '碧欧泉', '', '', '', 46, 50, '', '', 0, '', 1, 0, '', 0, 0, '', '', '', 0, 0, 0, ''),
(86, '女士香水', '', '', '', 16, 50, '', '', 0, '', 1, 0, '', 0, 0, '', '', '', 0, 0, 0, ''),
(87, '男士香水', '', '', '', 16, 51, '', '', 0, '', 1, 0, '', 0, 0, '', '', '', 0, 0, 0, ''),
(88, '中性香水', '', '', '', 16, 52, '', '', 0, '', 1, 0, '', 0, 0, '', '', '', 0, 0, 0, ''),
(89, '香水套装', '', '', '', 16, 53, '', '', 0, '', 1, 0, '', 0, 0, '', '', '', 0, 0, 0, ''),
(90, '淡香', '', '', '', 86, 50, '', '', 0, '', 1, 0, '', 0, 0, '', '', '', 0, 0, 0, ''),
(91, '花香调', '', '', '', 86, 50, '', '', 0, '', 1, 0, '', 0, 0, '', '', '', 0, 0, 0, ''),
(92, '迪奥', '', '', '', 86, 50, '', '', 0, '', 1, 0, '', 0, 0, '', '', '', 0, 0, 0, ''),
(93, '安娜苏', '', '', '', 86, 50, '', '', 0, '', 1, 0, '', 0, 0, '', '', '', 0, 0, 0, ''),
(94, '菲拉格慕', '', '', '', 86, 50, '', '', 0, '', 1, 0, '', 0, 0, '', '', '', 0, 0, 0, ''),
(95, '淡香', '', '', '', 87, 50, '', '', 0, '', 1, 0, '', 0, 0, '', '', '', 0, 0, 0, ''),
(96, '海洋香调', '', '', '', 87, 50, '', '', 0, '', 1, 0, '', 0, 0, '', '', '', 0, 0, 0, ''),
(97, '博柏利', '', '', '', 87, 50, '', '', 0, '', 1, 0, '', 0, 0, '', '', '', 0, 0, 0, ''),
(98, '宝格丽', '', '', '', 87, 50, '', '', 0, '', 1, 0, '', 0, 0, '', '', '', 0, 0, 0, ''),
(99, '阿迪达斯', '', '', '', 87, 50, '', '', 0, '', 1, 0, '', 0, 0, '', '', '', 0, 0, 0, ''),
(100, '淡香', '', '', '', 88, 50, '', '', 0, '', 1, 0, '', 0, 0, '', '', '', 0, 0, 0, ''),
(101, '花果香调', '', '', '', 88, 50, '', '', 0, '', 1, 0, '', 0, 0, '', '', '', 0, 0, 0, ''),
(102, '爱马仕', '', '', '', 88, 50, '', '', 0, '', 1, 0, '', 0, 0, '', '', '', 0, 0, 0, ''),
(103, '凯文克莱', '', '', '', 88, 50, '', '', 0, '', 1, 0, '', 0, 0, '', '', '', 0, 0, 0, ''),
(104, '淡香', '', '', '', 89, 50, '', '', 0, '', 1, 0, '', 0, 0, '', '', '', 0, 0, 0, ''),
(105, '香体', '', '', '', 89, 50, '', '', 0, '', 1, 0, '', 0, 0, '', '', '', 0, 0, 0, ''),
(106, '花香调', '', '', '', 89, 50, '', '', 0, '', 1, 0, '', 0, 0, '', '', '', 0, 0, 0, ''),
(107, '花果香调', '', '', '', 89, 50, '', '', 0, '', 1, 0, '', 0, 0, '', '', '', 0, 0, 0, ''),
(108, '草木香调', '', '', '', 89, 50, '', '', 0, '', 1, 0, '', 0, 0, '', '', '', 0, 0, 0, ''),
(109, '身体护理', '', '', '', 17, 60, '', '', 0, '', 1, 0, '', 0, 0, '', '', '', 0, 0, 0, ''),
(110, '丰胸瘦身', 'h', '', '', 17, 61, '', '', 0, '', 1, 0, '', 0, 0, '', '', '#361F5B', 0, 0, 0, ''),
(111, '美发护发', '', '', '', 17, 62, '', '', 0, '', 1, 0, '', 0, 0, '', '', '', 0, 0, 0, ''),
(112, '洗护套装', '', '', '', 17, 63, '', '', 0, '', 1, 0, '', 0, 0, '', '', '', 0, 0, 0, ''),
(113, '沐浴', '', '', '', 109, 50, '', '', 0, '', 1, 0, '', 0, 0, '', '', '', 0, 0, 0, ''),
(114, '脱毛', '', '', '', 109, 50, '', '', 0, '', 1, 0, '', 0, 0, '', '', '', 0, 0, 0, ''),
(115, '手足护理', '', '', '', 109, 50, '', '', 0, '', 1, 0, '', 0, 0, '', '', '', 0, 0, 0, ''),
(116, '香体止汗', '', '', '', 109, 50, '', '', 0, '', 1, 0, '', 0, 0, '', '', '', 0, 0, 0, ''),
(117, '其他护理', '', '', '', 109, 50, '', '', 0, '', 1, 0, '', 0, 0, '', '', '', 0, 0, 0, ''),
(118, '丰胸塑臀', '', '', '', 110, 50, '', '', 0, '', 1, 0, '', 0, 0, '', '', '', 0, 0, 0, ''),
(119, '纤体瘦身', '', '', '', 110, 50, '', '', 0, '', 1, 0, '', 0, 0, '', '', '', 0, 0, 0, ''),
(120, '精油护理', '', '', '', 110, 50, '', '', 0, '', 1, 0, '', 0, 0, '', '', '', 0, 0, 0, ''),
(121, '洗发', '', '', '', 111, 50, '', '', 0, '', 1, 0, '', 0, 0, '', '', '', 0, 0, 0, ''),
(122, '护发', '', '', '', 111, 50, '', '', 0, '', 1, 0, '', 0, 0, '', '', '', 0, 0, 0, ''),
(123, '染发', '', '', '', 111, 50, '', '', 0, '', 1, 0, '', 0, 0, '', '', '', 0, 0, 0, ''),
(124, '焗油', '', '', '', 111, 50, '', '', 0, '', 1, 0, '', 0, 0, '', '', '', 0, 0, 0, ''),
(125, '美发造型', '', '', '', 111, 50, '', '', 0, '', 1, 0, '', 0, 0, '', '', '', 0, 0, 0, ''),
(126, '保湿', '', '', '', 112, 50, '', '', 0, '', 1, 0, '', 0, 0, '', '', '', 0, 0, 0, ''),
(127, '沐浴', '', '', '', 112, 50, '', '', 0, '', 1, 0, '', 0, 0, '', '', '', 0, 0, 0, ''),
(128, '护发养发', '', '', '', 112, 50, '', '', 0, '', 1, 0, '', 0, 0, '', '', '', 0, 0, 0, ''),
(129, '美体套装', '', '', '', 112, 50, '', '', 0, '', 1, 0, '', 0, 0, '', '', '', 0, 0, 0, ''),
(130, '美体工具', '', '', '', 18, 70, '', '', 0, '', 1, 0, '', 0, 0, '', '', '', 0, 0, 0, ''),
(131, '化妆工具', '', '', '', 18, 71, '', '', 0, '', 1, 0, '', 0, 0, '', '', '', 0, 0, 0, ''),
(132, '美发工具', '', '', '', 18, 72, '', '', 0, '', 1, 0, '', 0, 0, '', '', '', 0, 0, 0, ''),
(133, '日用收纳', '', '', '', 18, 73, '', '', 0, '', 1, 0, '', 0, 0, '', '', '', 0, 0, 0, ''),
(134, '美甲工具', '', '', '', 130, 50, '', '', 0, '', 1, 0, '', 0, 0, '', '', '', 0, 0, 0, ''),
(135, '瘦身纤体', '', '', '', 130, 50, '', '', 0, '', 1, 0, '', 0, 0, '', '', '', 0, 0, 0, ''),
(136, '化妆镜', '', '', '', 131, 50, '', '', 0, '', 1, 0, '', 0, 0, '', '', '', 0, 0, 0, ''),
(137, '辅助化妆', '', '', '', 131, 50, '', '', 0, '', 1, 0, '', 0, 0, '', '', '', 0, 0, 0, ''),
(138, '定妆', '', '', '', 131, 50, '', '', 0, '', 1, 0, '', 0, 0, '', '', '', 0, 0, 0, ''),
(139, '艾黛儿', '', '', '', 131, 50, '', '', 0, '', 1, 0, '', 0, 0, '', '', '', 0, 0, 0, ''),
(140, '护发养发', '', '', '', 132, 50, '', '', 0, '', 1, 0, '', 0, 0, '', '', '', 0, 0, 0, ''),
(141, '发型定型', '', '', '', 132, 50, '', '', 0, '', 1, 0, '', 0, 0, '', '', '', 0, 0, 0, ''),
(142, '收纳', '', '', '', 133, 50, '', '', 0, '', 1, 0, '', 0, 0, '', '', '', 0, 0, 0, ''),
(143, '化妆包', '', '', '', 133, 50, '', '', 0, '', 1, 0, '', 0, 0, '', '', '', 0, 0, 0, ''),
(144, '雅诗兰黛', '', '', '', 133, 50, '', '', 0, '', 1, 0, '', 0, 0, '', '', '', 0, 0, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `ecs_cat_recommend`
--

CREATE TABLE IF NOT EXISTS `ecs_cat_recommend` (
  `cat_id` smallint(5) NOT NULL,
  `recommend_type` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ecs_cat_recommend`
--

INSERT INTO `ecs_cat_recommend` (`cat_id`, `recommend_type`) VALUES
(3, 1),
(3, 2),
(3, 3),
(5, 1),
(5, 2),
(5, 3),
(12, 1),
(12, 2),
(12, 3),
(13, 3),
(14, 2),
(14, 3),
(15, 1),
(15, 2);

-- --------------------------------------------------------

--
-- Table structure for table `ecs_collect_goods`
--

CREATE TABLE IF NOT EXISTS `ecs_collect_goods` (
  `rec_id` mediumint(8) unsigned NOT NULL,
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `add_time` int(11) unsigned NOT NULL DEFAULT '0',
  `is_attention` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ecs_comment`
--

CREATE TABLE IF NOT EXISTS `ecs_comment` (
  `comment_id` int(10) unsigned NOT NULL,
  `comment_type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `id_value` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `email` varchar(60) NOT NULL DEFAULT '',
  `user_name` varchar(60) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `comment_rank` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `add_time` int(10) unsigned NOT NULL DEFAULT '0',
  `ip_address` varchar(15) NOT NULL DEFAULT '',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `user_id` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=40 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ecs_comment`
--

INSERT INTO `ecs_comment` (`comment_id`, `comment_type`, `id_value`, `email`, `user_name`, `content`, `comment_rank`, `add_time`, `ip_address`, `status`, `parent_id`, `user_id`) VALUES
(1, 0, 12, 'ecshop@ecshop.com', 'ecshop', '很好，我很喜欢', 5, 1242107120, '0.0.0.0', 1, 0, 1),
(2, 0, 22, 'ecshop@ecshop.com', 'ecshop', '这个我不是很适合我', 5, 1242107295, '0.0.0.0', 1, 0, 1),
(3, 0, 123, '11111111@qq.com', '', '瓶身很妖艳 味道真的很特别 有点浓郁 适合冬天 很独特的味道 很瓶子一样妖艳', 5, 1386112926, '127.0.0.1', 1, 0, 0),
(4, 0, 123, '2222@qq.com', '', '香水很正，不错', 5, 1386112950, '127.0.0.1', 1, 0, 0),
(5, 0, 123, '3333@qq.com', '', '非常棒，就是我要的味道', 5, 1386112985, '127.0.0.1', 1, 0, 0),
(6, 0, 123, '4444@qq.com', '', '虽然发货时候的地址出了问题，但是小米的客服态度超级好，帮忙改了一下，味道很女人，给妈妈用了，看起来好神', 5, 1386113015, '127.0.0.1', 1, 0, 0),
(7, 0, 123, '', 'admin', '谢谢您的购买！', 0, 1386113062, '127.0.0.1', 0, 6, 0),
(8, 0, 123, '', 'admin', '谢谢您的购买！', 0, 1386113073, '127.0.0.1', 0, 5, 0),
(9, 0, 123, '', 'admin', '谢谢您的购买！', 0, 1386113081, '127.0.0.1', 0, 4, 0),
(10, 0, 123, '', 'admin', '谢谢您的购买！', 0, 1386113089, '127.0.0.1', 0, 3, 0),
(11, 0, 22, '', 'admin', '谢谢您的购买！', 0, 1386113099, '127.0.0.1', 0, 2, 0),
(12, 0, 9, '111@qq.com', '', 'asdasdasdas', 2, 1387157178, '127.0.0.1', 1, 0, 0),
(13, 0, 9, '222@qq.com', '', 'asdasdas', 4, 1387157206, '127.0.0.1', 1, 0, 0),
(14, 0, 9, '', 'admin', '谢谢您的购买', 0, 1388101231, '127.0.0.1', 0, 13, 0),
(15, 0, 9, '111@qq.com', '', '阿什顿阿什顿阿什顿', 4, 1387157178, '127.0.0.1', 1, 0, 0),
(33, 0, 123, '555@qq.com', '', '44444444', 4, 1388423820, '127.0.0.1', 1, 0, 0),
(32, 0, 9, '666@qq.com', '', '3分喔', 3, 1388345221, '127.0.0.1', 1, 0, 0),
(30, 0, 9, '555@qq.com', '', '4分喔', 4, 1388345182, '127.0.0.1', 1, 0, 0),
(31, 0, 9, '555@qq.com', '', '5分喔', 5, 1388345193, '127.0.0.1', 1, 0, 0),
(34, 0, 19, 'sadsada@qq.com', '', 'asdasdas', 3, 1389310529, '127.0.0.1', 1, 0, 0),
(35, 0, 19, 'sadasd@qq.com', '', 'asdasdas', 1, 1389310595, '127.0.0.1', 1, 0, 0),
(36, 0, 19, '222@qq.com', '', 'asdasdas', 5, 1389310636, '127.0.0.1', 1, 0, 0),
(37, 0, 0, '111@qq.com', '', 'dadgahgahg', 5, 1390353108, '127.0.0.1', 1, 0, 0),
(38, 0, 0, '', 'admin', 'tfiyiyi', 0, 1390353132, '127.0.0.1', 0, 37, 0),
(39, 0, 1, '4445@fff.nn', '', '5555', 1, 1406230248, '180.173.95.210', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ecs_crons`
--

CREATE TABLE IF NOT EXISTS `ecs_crons` (
  `cron_id` tinyint(3) unsigned NOT NULL,
  `cron_code` varchar(20) NOT NULL,
  `cron_name` varchar(120) NOT NULL,
  `cron_desc` text,
  `cron_order` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `cron_config` text NOT NULL,
  `thistime` int(10) NOT NULL DEFAULT '0',
  `nextime` int(10) NOT NULL,
  `day` tinyint(2) NOT NULL,
  `week` varchar(1) NOT NULL,
  `hour` varchar(2) NOT NULL,
  `minute` varchar(255) NOT NULL,
  `enable` tinyint(1) NOT NULL DEFAULT '1',
  `run_once` tinyint(1) NOT NULL DEFAULT '0',
  `allow_ip` varchar(100) NOT NULL DEFAULT '',
  `alow_files` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ecs_delivery_goods`
--

CREATE TABLE IF NOT EXISTS `ecs_delivery_goods` (
  `rec_id` mediumint(8) unsigned NOT NULL,
  `delivery_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `product_id` mediumint(8) unsigned DEFAULT '0',
  `product_sn` varchar(60) DEFAULT NULL,
  `goods_name` varchar(120) DEFAULT NULL,
  `brand_name` varchar(60) DEFAULT NULL,
  `goods_sn` varchar(60) DEFAULT NULL,
  `is_real` tinyint(1) unsigned DEFAULT '0',
  `extension_code` varchar(30) DEFAULT NULL,
  `parent_id` mediumint(8) unsigned DEFAULT '0',
  `send_number` smallint(5) unsigned DEFAULT '0',
  `goods_attr` text
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ecs_delivery_goods`
--

INSERT INTO `ecs_delivery_goods` (`rec_id`, `delivery_id`, `goods_id`, `product_id`, `product_sn`, `goods_name`, `brand_name`, `goods_sn`, `is_real`, `extension_code`, `parent_id`, `send_number`, `goods_attr`) VALUES
(1, 1, 1, 14, '', '希思黎轻柔护肤西柚柔肤水250ml', '', 'ECS000000', 1, '', 0, 1, '颜色:灰色 \n'),
(2, 2, 1, 14, '', '希思黎轻柔护肤西柚柔肤水250ml', '', 'ECS000000', 1, '', 0, 5, '颜色:灰色 \n'),
(3, 3, 123, 0, '', '迪奥红毒女士香水EDT 50ml', '迪奥', 'ECS000123', 1, '', 0, 1, '外        观:红色 \n'),
(4, 4, 57, 0, '', '凯文克莱BE中性香水200ml', '凯文克莱', 'ECS000057', 1, '', 0, 1, ''),
(5, 5, 57, 0, '', '凯文克莱BE中性香水200ml', '凯文克莱', 'ECS000057', 1, '', 0, 1, ''),
(6, 6, 123, 0, '', '迪奥红毒女士香水EDT 50ml', '迪奥', 'ECS000123', 1, '', 0, 1, '外        观:红色 \n'),
(7, 6, 53, 0, '', ' 迪奥EDP真我女士香水50ml', '迪奥', 'ECS000053', 1, '', 0, 1, ''),
(8, 7, 53, 0, '', ' 迪奥EDP真我女士香水50ml', '迪奥', 'ECS000053', 1, '', 0, 3, ''),
(9, 8, 9, 11, '', '雅诗兰黛第六代特润精华露50ml', '雅诗兰黛', 'ECS000009', 1, '', 0, 3, '颜色:白色 \n');

-- --------------------------------------------------------

--
-- Table structure for table `ecs_delivery_order`
--

CREATE TABLE IF NOT EXISTS `ecs_delivery_order` (
  `delivery_id` mediumint(8) unsigned NOT NULL,
  `delivery_sn` varchar(20) NOT NULL,
  `order_sn` varchar(20) NOT NULL,
  `order_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `invoice_no` varchar(50) DEFAULT NULL,
  `add_time` int(10) unsigned DEFAULT '0',
  `shipping_id` tinyint(3) unsigned DEFAULT '0',
  `shipping_name` varchar(120) DEFAULT NULL,
  `user_id` mediumint(8) unsigned DEFAULT '0',
  `action_user` varchar(30) DEFAULT NULL,
  `consignee` varchar(60) DEFAULT NULL,
  `address` varchar(250) DEFAULT NULL,
  `country` smallint(5) unsigned DEFAULT '0',
  `province` smallint(5) unsigned DEFAULT '0',
  `city` smallint(5) unsigned DEFAULT '0',
  `district` smallint(5) unsigned DEFAULT '0',
  `sign_building` varchar(120) DEFAULT NULL,
  `email` varchar(60) DEFAULT NULL,
  `zipcode` varchar(60) DEFAULT NULL,
  `tel` varchar(60) DEFAULT NULL,
  `mobile` varchar(60) DEFAULT NULL,
  `best_time` varchar(120) DEFAULT NULL,
  `postscript` varchar(255) DEFAULT NULL,
  `how_oos` varchar(120) DEFAULT NULL,
  `insure_fee` decimal(10,2) unsigned DEFAULT '0.00',
  `shipping_fee` decimal(10,2) unsigned DEFAULT '0.00',
  `update_time` int(10) unsigned DEFAULT '0',
  `suppliers_id` smallint(5) DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `agency_id` smallint(5) unsigned DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ecs_delivery_order`
--

INSERT INTO `ecs_delivery_order` (`delivery_id`, `delivery_sn`, `order_sn`, `order_id`, `invoice_no`, `add_time`, `shipping_id`, `shipping_name`, `user_id`, `action_user`, `consignee`, `address`, `country`, `province`, `city`, `district`, `sign_building`, `email`, `zipcode`, `tel`, `mobile`, `best_time`, `postscript`, `how_oos`, `insure_fee`, `shipping_fee`, `update_time`, `suppliers_id`, `status`, `agency_id`) VALUES
(1, '20131216172137633', '2013121684882', 1, '', 1387156881, 5, '申通快递', 0, 'admin', '111', '111', 1, 4, 55, 541, '', '222@qq.com', '111', '111', '11', '', '', '等待所有商品备齐后再发', '0.00', '15.00', 1387156897, 0, 0, 0),
(2, '20131216172394315', '2013121628773', 2, '', 1387157023, 5, '申通快递', 0, 'admin', '111', '333', 1, 7, 101, 902, '', '222@qq.com', '444', '5655', '', '', '', '等待所有商品备齐后再发', '0.00', '15.00', 1387157039, 0, 0, 0),
(3, '20140121173059551', '2014012127768', 4, '', 1390267776, 5, '申通快递', 8, 'admin', 'dagaf', 'hgahahahahr', 1, 3, 37, 410, '', '123@qq.com', '', '12345678993', '', '', '', '等待所有商品备齐后再发', '0.00', '15.00', 1390267853, 0, 0, 0),
(4, '20140123095230972', '2014012383197', 6, '', 1390413144, 5, '申通快递', 0, 'admin', '111111', 'agagqarygsae', 1, 5, 65, 626, '', '123456@qq.com', '235645', '12345678944', '', '', '', '等待所有商品备齐后再发', '0.00', '15.00', 1390413171, 0, 0, 0),
(5, '20140123095866393', '2014012386380', 7, '', 1390413515, 5, '申通快递', 8, 'admin', 'dagaf', 'hgahahahahr', 1, 3, 37, 410, '', '123@qq.com', '', '12345678993', '', '', '', '等待所有商品备齐后再发', '0.00', '15.00', 1390413539, 0, 0, 0),
(6, '20140123100066729', '2014012362771', 8, '', 1390413591, 5, '申通快递', 8, 'admin', 'dagaf', 'hgahahahahr', 1, 3, 37, 410, '', '123@qq.com', '', '12345678993', '', '', '', '等待所有商品备齐后再发', '0.00', '15.00', 1390413615, 0, 0, 0),
(7, '20140123100215181', '2014012338692', 9, '', 1390413714, 5, '申通快递', 8, 'admin', 'dagaf', 'hgahahahahr', 1, 3, 37, 410, '', '123@qq.com', '', '12345678993', '', '', '', '等待所有商品备齐后再发', '0.00', '15.00', 1390413735, 0, 0, 0),
(8, '20140123100344414', '2014012367996', 10, '', 1390413797, 5, '申通快递', 8, 'admin', 'dagaf', 'hgahahahahr', 1, 3, 37, 410, '', '123@qq.com', '', '12345678993', '', '', '', '等待所有商品备齐后再发', '0.00', '15.00', 1390413815, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ecs_email_list`
--

CREATE TABLE IF NOT EXISTS `ecs_email_list` (
  `id` mediumint(8) NOT NULL,
  `email` varchar(60) NOT NULL,
  `stat` tinyint(1) NOT NULL DEFAULT '0',
  `hash` varchar(10) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ecs_email_list`
--

INSERT INTO `ecs_email_list` (`id`, `email`, `stat`, `hash`) VALUES
(1, '111@qq.com', 0, '065506bcbd'),
(2, '11111@qq.com', 0, '8b39faed92'),
(3, '222@qq.com', 0, '3333a81f35');

-- --------------------------------------------------------

--
-- Table structure for table `ecs_email_sendlist`
--

CREATE TABLE IF NOT EXISTS `ecs_email_sendlist` (
  `id` mediumint(8) NOT NULL,
  `email` varchar(100) NOT NULL,
  `template_id` mediumint(8) NOT NULL,
  `email_content` text NOT NULL,
  `error` tinyint(1) NOT NULL DEFAULT '0',
  `pri` tinyint(10) NOT NULL,
  `last_send` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ecs_error_log`
--

CREATE TABLE IF NOT EXISTS `ecs_error_log` (
  `id` int(10) NOT NULL,
  `info` varchar(255) NOT NULL,
  `file` varchar(100) NOT NULL,
  `time` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ecs_exchange_goods`
--

CREATE TABLE IF NOT EXISTS `ecs_exchange_goods` (
  `goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `exchange_integral` int(10) unsigned NOT NULL DEFAULT '0',
  `is_exchange` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_hot` tinyint(1) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ecs_exchange_goods`
--

INSERT INTO `ecs_exchange_goods` (`goods_id`, `exchange_integral`, `is_exchange`, `is_hot`) VALUES
(24, 17000, 1, 0),
(19, 80000, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ecs_favourable_activity`
--

CREATE TABLE IF NOT EXISTS `ecs_favourable_activity` (
  `act_id` smallint(5) unsigned NOT NULL,
  `act_name` varchar(255) NOT NULL,
  `start_time` int(10) unsigned NOT NULL,
  `end_time` int(10) unsigned NOT NULL,
  `user_rank` varchar(255) NOT NULL,
  `act_range` tinyint(3) unsigned NOT NULL,
  `act_range_ext` varchar(255) NOT NULL,
  `min_amount` decimal(10,2) unsigned NOT NULL,
  `max_amount` decimal(10,2) unsigned NOT NULL,
  `act_type` tinyint(3) unsigned NOT NULL,
  `act_type_ext` decimal(10,2) unsigned NOT NULL,
  `gift` text NOT NULL,
  `sort_order` tinyint(3) unsigned NOT NULL DEFAULT '50'
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ecs_favourable_activity`
--

INSERT INTO `ecs_favourable_activity` (`act_id`, `act_name`, `start_time`, `end_time`, `user_rank`, `act_range`, `act_range_ext`, `min_amount`, `max_amount`, `act_type`, `act_type_ext`, `gift`, `sort_order`) VALUES
(1, '5.1诺基亚优惠活动', 1241107200, 1253030400, '1,2', 2, '1', '500.00', '5000.00', 2, '95.00', 'a:0:{}', 50);

-- --------------------------------------------------------

--
-- Table structure for table `ecs_feedback`
--

CREATE TABLE IF NOT EXISTS `ecs_feedback` (
  `msg_id` mediumint(8) unsigned NOT NULL,
  `parent_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `user_name` varchar(60) NOT NULL DEFAULT '',
  `user_email` varchar(60) NOT NULL DEFAULT '',
  `msg_title` varchar(200) NOT NULL DEFAULT '',
  `msg_type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `msg_status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `msg_content` text NOT NULL,
  `msg_time` int(10) unsigned NOT NULL DEFAULT '0',
  `message_img` varchar(255) NOT NULL DEFAULT '0',
  `order_id` int(11) unsigned NOT NULL DEFAULT '0',
  `msg_area` tinyint(1) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ecs_feedback`
--

INSERT INTO `ecs_feedback` (`msg_id`, `parent_id`, `user_id`, `user_name`, `user_email`, `msg_title`, `msg_type`, `msg_status`, `msg_content`, `msg_time`, `message_img`, `order_id`, `msg_area`) VALUES
(2, 0, 0, '匿名用户', '1111@qq.com', 'dfadggagag', 2, 0, 'agbbfnasfmnfgmndsmjhg,kgliulguilgfuykgjmb kuf', 1388963921, '', 0, 1),
(3, 0, 0, '匿名用户', '1111@qq.com', 'adgahgshahrgah', 2, 1, 'agna''a gnsd.kmbhas''gla nmknhl', 1388964063, '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `ecs_friend_link`
--

CREATE TABLE IF NOT EXISTS `ecs_friend_link` (
  `link_id` smallint(5) unsigned NOT NULL,
  `link_name` varchar(255) NOT NULL DEFAULT '',
  `link_url` varchar(255) NOT NULL DEFAULT '',
  `link_logo` varchar(255) NOT NULL DEFAULT '',
  `show_order` tinyint(3) unsigned NOT NULL DEFAULT '50'
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ecs_friend_link`
--

INSERT INTO `ecs_friend_link` (`link_id`, `link_name`, `link_url`, `link_logo`, `show_order`) VALUES
(1, '艾西文网', 'http://www.aixiwen.com', '', 50);

-- --------------------------------------------------------

--
-- Table structure for table `ecs_goods`
--

CREATE TABLE IF NOT EXISTS `ecs_goods` (
  `goods_id` mediumint(8) unsigned NOT NULL,
  `cat_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `goods_sn` varchar(60) NOT NULL DEFAULT '',
  `goods_name` varchar(120) NOT NULL DEFAULT '',
  `goods_name_en` varchar(150) CHARACTER SET utf8mb4 NOT NULL,
  `goods_name_style` varchar(60) NOT NULL DEFAULT '+',
  `click_count` int(10) unsigned NOT NULL DEFAULT '0',
  `brand_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `provider_name` varchar(100) NOT NULL DEFAULT '',
  `goods_number` smallint(5) unsigned NOT NULL DEFAULT '0',
  `goods_weight` decimal(10,3) unsigned NOT NULL DEFAULT '0.000',
  `market_price` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `shop_price` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `promote_price` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `promote_start_date` int(11) unsigned NOT NULL DEFAULT '0',
  `promote_end_date` int(11) unsigned NOT NULL DEFAULT '0',
  `warn_number` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `keywords` varchar(255) NOT NULL DEFAULT '',
  `goods_brief` varchar(255) NOT NULL DEFAULT '',
  `goods_desc` text NOT NULL,
  `goods_desc_en` text NOT NULL,
  `goods_thumb` varchar(255) NOT NULL DEFAULT '',
  `goods_img` varchar(255) NOT NULL DEFAULT '',
  `original_img` varchar(255) NOT NULL DEFAULT '',
  `is_real` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `extension_code` varchar(30) NOT NULL DEFAULT '',
  `is_on_sale` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `is_alone_sale` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `is_shipping` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `integral` int(10) unsigned NOT NULL DEFAULT '0',
  `add_time` int(10) unsigned NOT NULL DEFAULT '0',
  `sort_order` smallint(4) unsigned NOT NULL DEFAULT '100',
  `is_delete` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_best` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_new` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_hot` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_promote` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `bonus_type_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `last_update` int(10) unsigned NOT NULL DEFAULT '0',
  `goods_type` smallint(5) unsigned NOT NULL DEFAULT '0',
  `seller_note` varchar(255) NOT NULL DEFAULT '',
  `give_integral` int(11) NOT NULL DEFAULT '-1',
  `rank_integral` int(11) NOT NULL DEFAULT '-1',
  `suppliers_id` smallint(5) unsigned DEFAULT NULL,
  `is_check` tinyint(1) unsigned DEFAULT NULL,
  `goods_shipai` text NOT NULL,
  `comments_number` int(10) unsigned NOT NULL DEFAULT '0',
  `sales_volume` int(10) unsigned NOT NULL DEFAULT '0',
  `bb_chicun` varchar(255) NOT NULL,
  `sales_count` int(10) unsigned NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=124 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ecs_goods`
--

INSERT INTO `ecs_goods` (`goods_id`, `cat_id`, `goods_sn`, `goods_name`, `goods_name_en`, `goods_name_style`, `click_count`, `brand_id`, `provider_name`, `goods_number`, `goods_weight`, `market_price`, `shop_price`, `promote_price`, `promote_start_date`, `promote_end_date`, `warn_number`, `keywords`, `goods_brief`, `goods_desc`, `goods_desc_en`, `goods_thumb`, `goods_img`, `original_img`, `is_real`, `extension_code`, `is_on_sale`, `is_alone_sale`, `is_shipping`, `integral`, `add_time`, `sort_order`, `is_delete`, `is_best`, `is_new`, `is_hot`, `is_promote`, `bonus_type_id`, `last_update`, `goods_type`, `seller_note`, `give_integral`, `rank_integral`, `suppliers_id`, `is_check`, `goods_shipai`, `comments_number`, `sales_volume`, `bb_chicun`, `sales_count`) VALUES
(1, 44, 'ECS000000', '希思黎轻柔护肤西柚柔肤水250ml', '', '+', 91, 0, '', 995, '0.110', '620.00', '399.00', '0.00', 0, 0, 1, 'LG 3g 876 支持 双模 2008年04月 灰色 GSM,850,900,1800,1900', '平衡肌肤PH值，及时补充水分，给予肌肤清新舒爽的感受！', '<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 很多朋友都已经抢先体验了3G网络的可视通话、高速上网等功能。LG KD876手机<span style="font-size: x-large;"><span style="color: rgb(255, 0, 0);"><strong>支持TD-SCDMA/GSM双模单待</strong></span></span>，便于测试初期GSM网络和TD网络之间的切换和共享。</p>\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; LG KD876手机整体采用银色塑料材质，<strong><span style="font-size: x-large;"><span style="color: rgb(255, 0, 0);">特殊的旋转屏设计是本机的亮点</span></span></strong>，而机身背部的300万像素摄像头也是首发的六款TD-SCDMA手机中配置最高的。LG KD876手机屏幕下方设置有外键盘，该键盘由左/右软键、通话/挂机键、返回键、五维摇杆组成，摇杆灵敏度很高，定位准确。KD876的内键盘由标准12个电话键和三个功能键、一个内置摄像头组成。三个功能键分别为视频通话、MP3、和菜单键，所有按键的手感都比较一般，键程适中，当由于按键排列过于紧密，快速发短信时很容易误按，用户在使用时一定要多加注意。LG KD876手机机身周边的接口设计非常简洁，手机的厚度主要来自屏幕旋转轴的长度，如果舍弃旋屏设计的话，估计<span style="font-size: x-large;"><strong><span style="color: rgb(255, 0, 0);">厚度可以做到10mm以下</span></strong></span>。</p>', '', 'images/201311/thumb_img/1_thumb_G_1384988540522.gif', 'images/201311/goods_img/1_G_1384988540180.jpg', 'images/201311/source_img/1_G_1384988540259.jpg', 1, '', 1, 1, 0, 3, 1240902890, 1, 0, 0, 0, 1, 0, 0, 1387156979, 9, '', -1, -1, 0, 0, '', 0, 6, '', 2),
(4, 8, 'ECS000004', '诺基亚N85原装充电器', '', '+', 11, 1, '', 17, '0.000', '69.60', '58.00', '0.00', 0, 0, 1, '', '', '', '', 'images/200905/thumb_img/4_thumb_G_1241422402467.jpg', 'images/200905/goods_img/4_G_1241422402722.jpg', 'images/200905/source_img/4_G_1241422402919.jpg', 1, '', 1, 0, 0, 0, 1241422402, 100, 0, 0, 0, 0, 0, 0, 1242110662, 6, '', -1, -1, 0, 0, '', 0, 0, '', 0),
(3, 8, 'ECS000002', '诺基亚原装5800耳机', '', '+', 10, 1, '', 24, '0.000', '81.60', '68.00', '0.00', 0, 0, 1, '', '', '', '', 'images/200905/thumb_img/3_thumb_G_1241422082679.jpg', 'images/200905/goods_img/3_G_1241422082168.jpg', 'images/200905/source_img/3_G_1241422082367.jpg', 1, '', 1, 1, 0, 0, 1241422082, 100, 0, 0, 0, 0, 0, 0, 1241972255, 6, '', -1, -1, 0, 0, '', 0, 0, '', 0),
(5, 11, 'ECS000005', '索爱原装M2卡读卡器', '', '+', 26, 7, '', 8, '0.000', '24.00', '20.00', '0.00', 0, 0, 1, '', '', '', '', 'images/200905/thumb_img/5_thumb_G_1241422518886.jpg', 'images/200905/goods_img/5_G_1241422518773.jpg', 'images/200905/source_img/5_G_1241422518470.jpg', 1, '', 1, 1, 0, 0, 1241422518, 100, 0, 1, 1, 0, 0, 0, 1241972241, 2, '', -1, -1, 0, 0, '', 0, 0, '', 2),
(6, 11, 'ECS000006', '胜创KINGMAX内存卡', '', '+', 0, 0, '', 15, '0.000', '50.40', '42.00', '0.00', 0, 0, 1, '', '', '', '', '', '', '', 1, '', 1, 0, 0, 0, 1241422573, 100, 0, 0, 0, 0, 0, 0, 1241972238, 6, '', -1, -1, 0, 0, '', 0, 0, '', 0),
(7, 8, 'ECS000007', '诺基亚N85原装立体声耳机HS-82', '', '+', 0, 1, '', 20, '0.000', '120.00', '100.00', '0.00', 0, 0, 1, '', '', '', '', 'images/200905/thumb_img/7_thumb_G_1241422785492.jpg', 'images/200905/goods_img/7_G_1241422785856.jpg', 'images/200905/source_img/7_G_1241422785657.jpg', 1, '', 1, 1, 0, 1, 1241422785, 100, 0, 0, 0, 0, 0, 0, 1241972232, 2, '', -1, -1, 0, 0, '', 0, 0, '', 0),
(8, 3, 'ECS000008', ' 香奈儿coco小姐唇膏（62#）3g', '', '+', 19, 19, '', 999, '0.075', '300.00', '238.00', '0.00', 0, 0, 1, '双模 2008年春 黑色 直板 中低档', '独特色彩因子和柔软细腻质地，赋予双唇丝般的润泽效果及迷人光彩！', '<p align="left">作为一款性价比极高的入门级<font size="3" color="#ff0000"><strong>商务手机</strong></font>，飞利浦<a href="mailto:9@9v">Xenium&nbsp; 9@9v</a>三围大小为105&times;44&times;15.8mm，机身重量仅为<strong><font size="3" color="#ff0000">75g</font></strong>，装配了一块低规格1.75英寸128&times;160像素65000色CSTN显示屏。身正面采用月银色功能键区与屏幕数字键区相分隔，键盘设计较为<font size="3"><strong><font color="#ff0000">别</font><font color="#ff0000">致</font></strong></font>，中部导航键区采用钛金色的&ldquo;腰带&rdquo;彰显出浓郁的商务气息。</p>\r\n<p align="left">&nbsp;</p>\r\n<p align="left">此款手机采用<strong><font size="3" color="#ff0000">触摸屏</font></strong>设计，搭配精致的手写笔，可支持手写中文和英文两个版本。增强的内置系统还能识别潦草字迹，确保在移动中和匆忙时输入文字的识别率。手写指令功能还支持特定图案的瞬间调用，独特的手写记事本功能，可以在触摸屏上随意绘制个性化的图案并进行<strong><font size="3" color="#ff0000">记事提醒</font></strong>，让商务应用更加随意。</p>\r\n<p align="left">&nbsp;</p>\r\n<p align="left">&nbsp;作为入门级为数不多支持<strong><font size="3" color="#ff0000">双卡功能</font></strong>的手机，可以同时插入两张SIM卡，通过菜单随意切换，只需开启漫游自动切换模式，<a href="mailto:9@9V">9@9V</a>在该模式下能够判断网络情况，自动切换适合的手机号。</p>\r\n<p align="left">&nbsp;</p>\r\n<p align="left">&nbsp;</p>', '', 'images/201311/thumb_img/8_thumb_G_1384988790593.gif', 'images/201311/goods_img/8_G_1384988790722.jpg', 'images/201311/source_img/8_G_1384988790762.jpg', 1, '', 1, 1, 0, 2, 1241425512, 100, 0, 0, 0, 1, 0, 0, 1385075894, 9, '', -1, -1, 0, 0, '', 0, 0, '', 0),
(9, 23, 'ECS000009', '雅诗兰黛第六代特润精华露50ml', '', '+', 402, 2, '', 999, '0.121', '950.00', '669.00', '0.00', 0, 0, 1, 'SMS EMS MMS 短消息群发 语音 阅读器 SMS,EMS,MMS,短消息群发语音合成信息阅读器 黑色 白色 滑盖', 'No.1畅销精华，1滴，渗透滋润，立现柔滑细嫩，4周，隐退细纹，透现饱满光泽。', '<p>在机身材质方面，诺基亚E66大量采用金属材质，刨光的金属表面光泽动人，背面的点状效果规则却又不失变化，时尚感总是在不经意间诠释出来，并被人们所感知。E66机身尺寸为<span style="color: rgb(255, 0, 0);"><span style="font-size: larger;"><strong>107.5&times;49.5&times;13.6毫米，重量为121克</strong></span></span>，滑盖的造型竟然比E71还要轻一些。</p>\r\n<p>&nbsp;</p>\r\n<div>诺基亚E66机身正面是<span style="color: rgb(255, 0, 0);"><span style="font-size: larger;"><strong>一块2.4英寸1600万色QVGA分辨率（240&times;320像素）液晶显示屏</strong></span></span>。屏幕上方拥有光线感应元件，能够自适应周 围环境光调节屏幕亮度；屏幕下方是方向功能键区。打开滑盖，可以看到传统的数字键盘，按键的大小、手感、间隔以及键程适中，手感非常舒适。</div>\r\n<div>&nbsp;</div>\r\n<div>诺基亚为E66配备了一颗320万像素自动对焦摄像头，带有LED 闪光灯，支持多种拍照尺寸选择。</div>\r\n<p>&nbsp;</p>', '', 'images/201311/thumb_img/9_thumb_G_1384987018566.gif', 'images/201311/goods_img/9_G_1384987018919.jpg', 'images/201311/source_img/9_G_1384987018328.jpg', 1, '', 1, 1, 0, 6, 1241511871, 0, 0, 0, 0, 1, 0, 0, 1385072461, 9, '', -1, -1, 0, 0, '', 6, 3, '', 1),
(10, 49, 'ECS000010', '思亲肤90度卷长睫毛膏10g', '', '+', 37, 24, '', 7, '0.000', '78.00', '49.90', '0.00', 0, 0, 1, '2008年05月 GSM,850,900,1800,1900 直板 黑色 白色', '香蕉90度卷长睫毛膏 天然腊和高机能的特殊支撑成分，能有效支撑下垂的睫毛，立即呈现90度放大的亮眼。', '<p>C702可以说是一种在外观上复古的产物，不仅延续T系列早期的直板造型，而且在屏幕和键盘的组合分布上都继承了前辈的精髓。C702的机身尺寸为106&times;48&times;15.5毫米，重量为105克。此外索尼爱立信为C702融入了<font size="3" color="#ff0000"><strong>三防特性，即防尘、防滑和防水溅</strong></font>，这款新的C702搭载了索尼爱立信经典A200平台，界面布局与W908c、K858c一致，典型的特征就是配备左右软键、中央确定键和通话/挂机键。</p>\r\n<p>索尼爱立信C702配备一块<strong><font size="3" color="#ff0000">2.2英寸26万色TFT液晶显示屏</font></strong>，分辨率为240&times;320像素(QVGA)，显示效果属于目前主流水准。C702可以说是索尼爱立信首批<strong><font size="3" color="#ff0000">内置GPS模块</font></strong>的 手机产品之一，C702的搜星、定位一气呵成，十分精准，误差大约在10米之内。基本上定位后可以将有效卫星数量控制在4&mdash;6颗，可以说可以满足我们的需 要了。C702还提供了&ldquo;影像定位&rdquo;功能，配合内置的AGPS全球定位辅助系统，只须启动Geo-Tagging智能影像定位功能，便可将拍摄地点记录在 照片内，方便用户随时查询。</p>\r\n<p>&nbsp;</p>\r\n<p>作为一款Cyber-shot系列影像手机，索尼爱立信C702在拍照功能方面同样有不俗的表现。并且手机内置的<strong><font size="3" color="#ff0000">320万像素摄像头</font></strong>也 同样在拍照功能上也不错的表现。不仅支持自动聚焦和双LED闪光功能，而且还拥有2倍数码变焦、防红眼、Photo fix优画及场景模式等功能。索尼爱立信C702除了配备的是最大光圈为F3.2的4.2毫米镜头之外，该机也如同门中的旗舰C902一样增加了对脸部有 先自动聚焦功能的支持。</p>\r\n<p>&nbsp;</p>', '', 'images/201311/thumb_img/10_thumb_G_1385076352897.jpg', 'images/201311/goods_img/10_G_1385076352496.jpg', 'images/201311/source_img/10_G_1385076352790.png', 1, '', 1, 1, 0, 0, 1241965622, 100, 0, 0, 0, 1, 0, 0, 1390430692, 9, '', -1, -1, 0, 0, '', 0, 0, '', 1),
(11, 3, 'ECS000011', '索爱C702c', '', '+', 0, 7, '', 999, '0.000', '0.00', '1300.00', '0.00', 0, 0, 1, '直板', '', '', '', '', '', '', 1, '', 0, 1, 0, 0, 1241966951, 100, 1, 0, 0, 0, 0, 0, 1241966960, 7, '', -1, -1, 0, 0, '', 0, 0, '', 0),
(12, 24, 'ECS000012', '雅顿保湿调理露200ml', '', '+', 97, 13, '', 3000, '0.000', '200.00', '78.00', '0.00', 0, 0, 1, 'SMS EMS MMS pda 摄像 智能 音乐 SMS,EMS,MMS', '使肌肤光滑水嫩， 补充水份，提升肌肤自身的保湿能力，让肌肤由内而外水嫩光彩。', '<p>全机使用的材质除去电池盖部分采用了金属以外，其它均使用了ABS工程塑料作为主材，这款手机的三围是105&times;51&times;14毫米，有着100克的轻量级重量，拿在手中的感觉还是非常不错的。A810手机作为一款<strong><font size="3" color="#ff0000">PDA手机</font></strong>在设计的时候取消了键盘配置，一切数字键都要依靠手机内提供的虚拟键盘进行操作，在手机的左上侧是一个<strong><font size="3" color="#ff0000">3.5mm的标准耳机插口</font></strong>，这种设计可以让用户使用自己习惯或者喜欢的耳机去欣赏音乐。</p>\r\n<p>&nbsp;</p>\r\n<p>这款摩托罗拉A810手机配置了一块<font size="3" color="#ff0000"><strong>26万色的2.2英寸TFT全触摸屏幕</strong></font>，其分辨率达到了主流的QVGA水平（240&times;320像素），摩托罗拉A810采用了内部核心为2.6.10的<strong><font size="3" color="#ff0000">LINUX操作系统</font></strong>，菜单上依然采用传统的9宫格的显示方式，一般手机的名片式电话本只能支持诸如电话、邮件、传真、公司等一些基本信息，而A810手机的电话本除了这些还支持公司地址，配偶信息、子女姓名、上司名称、助手等等，对于一款手机来说，电话本不可谓不强大。A810的<strong><font size="3" color="#ff0000">手写识别能力相当的惊人</font></strong>，对连笔、草书和倒插笔的识别率都相当的高，同时还为左右手设置了不同的书写习惯选择，并支持手写速度的调节。</p>\r\n<p>这款A810手机<strong><font size="3" color="#ff0000">内置的音乐播放功能</font></strong>可以支持MP3、WAV、AMR、AAC等格式的音乐播放，<font size="3" color="#ff0000"><strong>支持后台播放</strong></font>。视频方面，这款A810支持MP4、3GP、H.263格式的播放，视频播放器同样简约，操作方便，这款摩托罗拉A810还内置了6款游戏，每一款都有很高的耐玩性，而且都是支持触摸屏操作的，同时这款手机还内置了<strong><font size="3" color="#ff0000">FM收音机</font></strong>，支持自动搜索，并提供了20个频道供用户存储，不过收音机并不支持后台播放。</p>\r\n<p>&nbsp;</p>', '', 'images/201311/thumb_img/12_thumb_G_1384995644320.jpg', 'images/201311/goods_img/12_G_1384995644760.jpg', 'images/201311/source_img/12_G_1384995644283.jpg', 1, '', 1, 1, 0, 0, 1245297652, 100, 0, 0, 1, 0, 0, 0, 1390430843, 11, '', -1, -1, 0, 0, '', 0, 0, '', 1),
(13, 52, 'ECS000013', '欧莱雅绝配无暇粉底液N1#象牙色', '', '+', 18, 23, '', 8, '0.000', '198.00', '109.00', '0.00', 0, 0, 1, '摄像 智能 音乐 蓝色 红色 舒适 直板 中档 2008年07月 黑色 GSM,850,900,1800,1900', '', '<p>诺基亚5320XpressMusic音乐手机采用XpressMusic系列常见的黑红、黑蓝配色方案，而材质方便则选用的是经过<strong><font size="3" color="#ff0000">抛光处理</font></strong>的工程塑料；三围/体重为，为108&times;46&times;15mm/<strong><font size="3" color="#ff0000">90g</font></strong>，手感舒适。</p>\r\n<p>&nbsp;</p>\r\n<p>诺基亚5320采用的是一块可视面积为2.0英寸的<font size="3" color="#ff0000"><strong>1600万色</strong></font>屏幕，分辨率是常见的240&times;320像素（QVGA）。虽然屏幕不是特别大，但效果非常精细，色彩还原不错。</p>\r\n<p>&nbsp;</p>\r\n<p>手机背面，诺基亚为5320XM配备一颗<strong><font size="3" color="#ff0000">200W像素</font></strong>的摄像头，并且带有<strong><font size="3" color="#ff0000">两个LED的补光灯</font></strong>，可以实现拍照、摄像功能，并能通过彩信、邮件方式发送给朋友。</p>\r\n<p>&nbsp;</p>', '', 'images/201311/thumb_img/13_thumb_G_1385076209182.jpg', 'images/201311/goods_img/13_G_1385076209469.jpg', 'images/201311/source_img/13_G_1385076209542.jpg', 1, '', 1, 1, 0, 1, 1241967762, 100, 0, 0, 0, 1, 0, 0, 1385076209, 9, '', -1, -1, 0, 0, '', 0, 0, '', 0),
(14, 51, 'ECS000014', '谜尚红色BB霜21#50ml', '', '+', 15, 22, '', 999, '0.000', '208.00', '99.00', '0.00', 0, 0, 1, 'GSM 64和弦 2009年2月 320万摄像头 GPS 直板 工程塑料 支持 2008年10月 黑色', '', '', '', 'images/201311/thumb_img/14_thumb_G_1385076093787.jpg', 'images/201311/goods_img/14_G_1385076093307.jpg', 'images/201311/source_img/14_G_1385076093051.png', 1, '', 1, 1, 0, 0, 1241968492, 100, 0, 0, 0, 1, 0, 0, 1385076093, 9, '', -1, -1, 0, 0, '', 0, 0, '', 0),
(15, 3, 'ECS000015', '摩托罗拉A810', '', '+', 8, 2, '', 3, '0.000', '945.60', '788.00', '0.00', 0, 0, 1, '600 直板 工程塑料 蓝牙 视频拍摄 音乐 黑色 白色', '', '', '', 'images/200905/thumb_img/15_thumb_G_1242973362970.jpg', 'images/200905/goods_img/15_G_1242973362318.jpg', 'images/200905/source_img/15_G_1242973362751.jpg', 1, '', 1, 1, 0, 5, 1241968703, 100, 1, 0, 1, 1, 0, 0, 1245297631, 9, '', -1, -1, 0, 0, '', 0, 0, '', 0),
(16, 2, 'ECS000016', '雅诗兰黛鲜活营养红石榴眼霜15ml', '', '+', 274, 0, '', 3000, '0.000', '481.00', '355.00', '0.00', 0, 0, 1, '', '', '', '', 'images/201311/thumb_img/16_thumb_G_1384995428649.jpg', 'images/201311/goods_img/16_G_1384995428821.jpg', 'images/201311/source_img/16_G_1384995428103.jpg', 1, '', 1, 1, 0, 3, 1241968949, 100, 0, 0, 0, 0, 0, 0, 1387499687, 11, '', -1, -1, 0, 0, '', 0, 0, '', 0),
(17, 20, 'ECS000017', '娇韵诗超V型纤容紧致瘦脸面膜75ml', '', '+', 90, 0, '', 1000, '0.000', '396.00', '275.00', '0.00', 0, 0, 1, '2008年01月 GSM,900,1800,1900,2100 直板 262144万 240×400 像素 SMS,EMS,MMS,超长信息发送,短消息群发 黑色 CDMA', '柔滑轻盈的慕斯乳霜质地，紧致并维护肤质，可消除浮肿，提升面部轮廓！', '', '', 'images/201311/thumb_img/17_thumb_G_1384994573595.gif', 'images/201311/goods_img/17_G_1384994573565.jpg', 'images/201311/source_img/17_G_1384994573742.jpg', 1, '', 1, 1, 0, 2, 1241969394, 3, 0, 1, 0, 0, 0, 0, 1387391160, 9, '', -1, -1, 0, 0, '', 0, 0, '', 3),
(18, 4, 'ECS000018', '夏新T5', '', '+', 0, 0, '', 999, '0.000', '3453.60', '2878.00', '0.00', 0, 0, 1, '2008年04月 3G(GSM,900,1800,1900,TD-SCDMA ) 直板 262144万 320×240 像素 是 银色', '', '<p>&nbsp;  TD-SCDMA/GSM两种模式任意切换，中国3G手机先驱，支持大陆特有3G网络，轻松实现可视电话、视频留言、视频会议功能，2.6英寸Q屏，手写、键盘双输入，内置移动证券，支持手机邮箱、手机地图、无驱U盘</p>', '', '', '', '', 1, '', 1, 1, 0, 28, 1241969533, 100, 1, 0, 0, 0, 0, 0, 1241969533, 2, '', -1, -1, 0, 0, '', 0, 0, '', 0),
(19, 31, 'ECS000019', '兰蔻精华眼膜霜15ml', '', '+', 50, 1, '', 12, '0.000', '560.00', '429.00', '0.00', 0, 0, 1, '滑盖 GSM 258 时尚 蓝牙 黑色 金色 白色', '改善眼部基底和眼周围肌肤状况，立现名晰动人的双眸，明亮新生！', '<p>从整体来看，三星SGH-F258比较<font size="3" color="#ff0000"><strong>时尚</strong></font>可爱，三围尺寸为94&times;46&times;17.5mm，重量为96克，曲线柔和具有玲珑美感。</p>\r\n<p>&nbsp;</p>\r\n<p>三星F258的前面板整体应用<strong><font size="3" color="#ff0000">镜面效果</font></strong>，2.0英寸显示屏幕略显窄小，导航键与功能键在滑盖滑开之前是前面板的全部控制键，没有挂断和接听键，不过，五向键有<font size="3"><strong><font color="#ff0000">音乐操</font><font color="#ff0000">作</font></strong></font>功能，明确显示了F258音乐手机的定位。</p>\r\n<p>&nbsp;</p>\r\n<p>F258的数字键键区采用了极具金属质感的平板式设计，每颗按键的面积足够大，按键与按键之间的间隔明显，操作起来手感舒适。</p>', '', 'images/201311/thumb_img/19_thumb_G_1384994159077.gif', 'images/201311/goods_img/19_G_1384994159884.jpg', 'images/201311/source_img/19_G_1384994159117.jpg', 1, '', 1, 1, 0, 4, 1241970139, 2, 0, 0, 1, 0, 0, 0, 1385075831, 9, '', -1, -1, 0, 0, '', 3, 0, '', 2),
(20, 3, 'ECS000020', '纪梵希幻影四宫格胭脂21#7g', '', '+', 22, 21, '', 12, '0.000', '430.00', '259.00', '0.00', 0, 0, 1, 'GSM 直板 40和弦 金属材质 2008年07月 黑色 GSM,900,1800,1900,2100', '浅粉蜜桃色，柔玫瑰粉红，带少许珠光的蜜桃橘。打造水蜜桃甜滋滋的感觉。', '', '', 'images/201311/thumb_img/20_thumb_G_1384994312013.gif', 'images/201311/goods_img/20_G_1384994312529.jpg', 'images/201311/source_img/20_G_1384994312118.jpg', 1, '', 1, 1, 0, 2, 1241970417, 100, 0, 0, 1, 0, 0, 0, 1385075967, 9, '', -1, -1, 0, 0, '', 0, 0, '', 0),
(21, 47, 'ECS000021', '蜜丝佛陀纤柔眼线液1#0.75ml', '', '+', 16, 10, '', 40, '0.000', '98.00', '75.00', '0.00', 0, 0, 1, '2008年03月 GSM,900,1800,1900,2100 直板 1600万 240×400 像素 2007年12月 200万摄像头 黑色', '', '<p>&nbsp;</p>\r\n<p align="left"><span style="font-size: medium;"><font size="3">标准配置: 标准锂电池两块,充电器两个,立体声耳机一个,数据线,说明书送256TF</font></span></p>\r\n<p align="left"><span style="font-size: medium;"><font size="3">通讯功能&nbsp; 输入法 短信功能 话机通讯录 通话记录</font></span></p>\r\n<p align="left"><span style="font-size: medium;"><font size="3">输入法: 中文输入法</font></span></p>\r\n<p align="left"><span style="font-size: medium;"><font size="3">短信功能: 支持短信300条和彩信100条</font></span></p>\r\n<p align="left"><span style="font-size: medium;"><font size="3">话机通讯录: 1000组名片式电话存储 来电防火墙功能&nbsp; 来电大头贴及来电铃声识别</font></span></p>\r\n<p align="left"><span style="font-size: medium;"><font size="3">通话记录：支持电话录音,恢复/静音,双音多频,免提</font></span></p>\r\n<p>&nbsp;</p>\r\n<p><font size="3">高级功能</font></p>\r\n<p align="left"><span style="font-size: medium;"><font size="3">多媒体娱乐: 200万像素，最大支持10240*960，11级数码变焦,多种效果设置,连拍可全屏查看拍摄或下载的图片.支持有声MP4短片拍摄，录像时间根据内存 大小而定，拍摄录像,TV电视可跟朋友家人一起分享。支持网络摄像头功能 支持MPEG4、3GP(H.263)等视频格式 支持MP3等音频格式播放， 支持歌词播放</font></span></p>\r\n<p align="left"><span style="font-size: medium;"><font size="3">内置游戏:智能拼图</font></span></p>\r\n<p align="left"><span style="font-size: medium;"><font size="3">扩展存储功能:支持TF扩展,支持U盘功能,本机内置1M,随机赠送256TF卡</font></span></p>\r\n<p align="left"><span style="font-size: medium;"><font size="3">高级功能:直板/智能PDA手写/键盘输入 超长待机 WAP上网&nbsp; 录音 蓝牙 FM收音机 电子书 Java扩展 TV电视输出 声控语音拨号 免费电视 来电防火墙&nbsp;&nbsp;&nbsp;</font></span></p>\r\n<p align="left"><span style="font-size: medium;"><font size="3">附加功能: 日历 计算器 闹钟 记事本 日程表 秒表 单位换算</font></span></p>\r\n<p><span style="font-size: medium;"><font size="3">提醒 以上性能均为本公司员工试机后所写,产品资料仅供参考,请以收到实物为准</font></span></p>', '', 'images/201311/thumb_img/21_thumb_G_1385075715191.jpg', 'images/201311/goods_img/21_G_1385075715772.jpg', 'images/201311/source_img/21_G_1385075715028.png', 1, '', 1, 1, 0, 0, 1241970634, 100, 0, 0, 0, 0, 0, 0, 1385075715, 9, '', -1, -1, 0, 0, '', 0, 0, '', 2),
(22, 3, 'ECS000022', '娇兰金钻修颜粉饼SPF10', '', '+', 26, 12, '', 999, '0.000', '750.00', '399.00', '0.00', 0, 0, 1, '500万摄像头 蓝牙 手写 GPS 办公应用 语音拨号 2008年12月 黑色 GSM,850,900,1800,1900 直板', '蕴含肌肤再生珍奇复合物，淡化皱纹，促进肌肤新生，恢复青春容颜！', '<p><img src="http://xgone.xgou.com/xgoumanage/upload/20090325/2009032502045081100887.jpg" alt="" /></p>\r\n<p>&nbsp;</p>\r\n<p><img src="http://www.ouku.com/upimg/ouku/Image/002(1).jpg" alt="" /></p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>', '', 'images/201311/thumb_img/22_thumb_G_1384994678955.gif', 'images/201311/goods_img/22_G_1384994678394.jpg', 'images/201311/source_img/22_G_1384994678769.jpg', 1, '', 1, 1, 0, 3, 1241971076, 100, 0, 1, 0, 0, 0, 0, 1385075872, 9, '', -1, -1, 0, 0, '', 0, 0, '', 0),
(23, 58, 'ECS000023', ' 安娜苏魔影幻彩唇膏305#3.4g', '', '+', 63, 20, '', 8, '0.000', '179.00', '149.00', '0.00', 0, 0, 1, '500万摄像头 microSD 工程塑料 蓝牙 数码相机 内置游戏 滑盖 高档 2008年09月 320×240 像素 黑色', '', '<p>诺基亚N96采用了<strong><font size="3" color="#ff0000">双向滑盖</font></strong>设计，机身整体呈灰黑色，沉稳、大气，机身材质采用了高强度的塑料材质，手机背面采用了抛光面板的设计风格。N96三维体积103*55*20mm，重量为125g。屏幕方面，诺基亚N96配备一块<strong><font size="3" color="#ff0000">2.8英寸</font></strong>的屏幕，支持<strong><font size="3" color="#ff0000">1670万色</font></strong>显示，分辨率达到QVGA（320&times;240）水准。</p>\r\n<p><img alt="" src="file:///C:/DOCUME~1/user/LOCALS~1/Temp/moz-screenshot.jpg" /></p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;<img src="http://img2.zol.com.cn/product/21/896/ceN6LBMCid3X6.jpg" alt="" /></p>\r\n<p>诺基亚N96设置有专门的<strong><font size="3" color="#ff0000">音乐播放键</font></strong>和标准的3.5毫米音频插口，支持多格式音乐播放。内置了<strong><font size="3" color="#ff0000">多媒体播放器</font></strong>，支持FM调频收音机等娱乐功能。N96手机支持<strong><font size="3" color="#ff0000">N-Gage游戏平台</font></strong>，内置包括<font size="3" color="#ff0000"><strong>《PinBall》完整版</strong></font>在内的四款N-Gage游戏，除了手机本身内置的游戏，还可以从N-Gage的网站下载或者购买最新的游戏，而且可以在论坛里和其他玩家一起讨论。</p>\r\n<p><img src="http://img2.zol.com.cn/product/21/898/cekkw57qJjSI.jpg" alt="" /></p>\r\n<p>&nbsp;</p>', '', 'images/201311/thumb_img/23_thumb_G_1385075287189.jpg', 'images/201311/goods_img/23_G_1385075287524.jpg', 'images/201311/source_img/23_G_1385075287823.jpg', 1, '', 1, 1, 0, 1, 1241971488, 100, 0, 1, 1, 0, 0, 0, 1385075287, 9, '', -1, -1, 0, 0, '', 0, 0, '', 0),
(24, 52, 'ECS000024', '贝玲妃留声机粉底霜9.5g', '', '+', 47, 9, '', 100, '0.000', '330.00', '240.00', '0.00', 0, 0, 1, '旅行充电器 图形菜单 Wap 上网 红外接口 移动 MSN 支持 2008年06月 灰色', '', '<div>\r\n<div>\r\n<div><font size="4">规格参数</font></div>\r\n<p><font size="4"><span>上市时间：</span><span>2008年06月</span></font></p>\r\n<p><font size="4"><span>网络频率：</span><span>GSM/GPRS；900/1800MHz</span></font></p>\r\n<p><font size="4"><span>重　量　：</span><span>未知</span></font></p>\r\n<p><font size="4"><span>尺寸/体积：</span><span>未知</span></font></p>\r\n<p><font size="4"><span>可选颜色：</span><span>银色</span></font></p>\r\n<p><font size="4"><span>屏幕参数：</span><span>26万色TFT彩色屏幕；</span></font></p>\r\n<p><font size="4"><span>WAP上网：</span><span>支持飞笺</span></font></p>\r\n<p><font size="4"><span>基本配置:<em><strong><font size="5" color="#ff00ff">二电(1760毫安) 一充 数据线 耳机 手写笔 512M内存卡</font></strong></em></span></font></p>\r\n<p>&nbsp;</p>\r\n</div>\r\n</div>\r\n<div><font size="4">基本功能</font></div>\r\n<p><font size="4"><span>『时钟』</span><span>『内置振动』</span><span>『录音』</span><span>『可选铃声』</span></font></p>\r\n<p><font size="4"><span>『和弦铃声』</span><span>『MP3铃声』</span><span>『来电铃声识别』</span><span>『来电图片识别』</span></font></p>\r\n<p><font size="4"><span>『情景模式』</span><span>『待机图片』</span><span>『图形菜单』</span><span>『触摸屏』</span></font></p>\r\n<p><span><font size="4">『手写输入』</font></span></p>\r\n<div><font size="4">通信功能</font></div>\r\n<p><font size="4"><span>『双卡双待』</span><span>『内置天线』</span><span>『输入法』</span><span>『中文短信』</span></font></p>\r\n<p><font size="4"><span>『短信群发』</span><span>『多媒体短信』</span><span>『话机通讯录』</span><span>『通话记录』</span></font></p>\r\n<p><font size="4"><span>『免提通话』</span><span>『飞行模式』</span></font></p>\r\n<div><font size="4">多媒体娱乐 :支持3GP、MP4文件播放</font></div>\r\n<p><font size="4"><span>『视频播放』</span><span>『MP3播放器』</span></font></p>\r\n<p><font size="4"><span>多媒体卡扩展：</span><span>支持microSD卡扩展&nbsp;</span></font></p>\r\n<p><font size="4"><span>摄像头：</span><span>内置</span></font></p>\r\n<p><font size="4"><span>摄像头像素：</span><span>30万像素</span></font></p>\r\n<p><font size="4"><span>传感器类型：</span><span>CMOS</span></font></p>\r\n<p><font size="4"><span>变焦模式：</span><span>数码变焦</span></font></p>\r\n<p><font size="4"><span>照片分辨率：</span><span>多种照片分辨率选择</span></font></p>\r\n<p><font size="4"><span>拍摄模式：</span><span>多种拍摄模式选择</span></font></p>\r\n<p><font size="4"><span>照片质量：</span><span>多种照片质量选择</span></font></p>\r\n<p><font size="4"><span>视频拍摄：</span><span>有声视频拍摄</span></font></p>\r\n<div><font size="4">数据传输</font></div>\r\n<p><font size="4"><span>『WAP浏览器』</span><span>『数据线接口』</span></font></p>\r\n<div><font size="4">个人助理</font></div>\r\n<p><font size="4"><span>『闹钟』</span><span>『日历』</span><span>『计算器』</span></font></p>', '', 'images/201311/thumb_img/24_thumb_G_1385074818364.jpg', 'images/201311/goods_img/24_G_1385074818283.jpg', 'images/201311/source_img/24_G_1385074818200.png', 1, '', 1, 1, 0, 2, 1241971981, 100, 0, 1, 1, 1, 0, 0, 1385074818, 9, '', -1, -1, 0, 0, '', 0, 0, '', 0),
(25, 13, 'ECS000025', '小灵通/固话50元充值卡', '', '+', 0, 0, '', 2, '0.000', '57.59', '48.00', '0.00', 0, 0, 1, '', '', '', '', 'images/200905/thumb_img/25_thumb_G_1241972709885.jpg', 'images/200905/goods_img/25_G_1241972709544.jpg', 'images/200905/source_img/25_G_1241972709750.jpg', 0, 'virtual_card', 1, 1, 0, 0, 1241972709, 100, 1, 1, 0, 1, 0, 0, 1385080338, 0, '', -1, -1, 0, 0, '', 0, 0, '', 0),
(26, 13, 'ECS000026', '小灵通/固话20元充值卡', '', '+', 0, 0, '', 2, '0.000', '22.80', '19.00', '0.00', 0, 0, 1, '', '', '', '', 'images/200905/thumb_img/26_thumb_G_1241972789393.jpg', 'images/200905/goods_img/26_G_1241972789293.jpg', 'images/200905/source_img/26_G_1241972789353.jpg', 0, 'virtual_card', 1, 1, 0, 0, 1241972789, 100, 1, 0, 0, 1, 0, 0, 1385080338, 0, '', -1, -1, 0, 0, '', 0, 0, '', 0),
(27, 15, 'ECS000027', '联通100元充值卡', '', '+', 0, 0, '', 2, '0.000', '100.00', '95.00', '0.00', 0, 0, 1, '', '', '', '', 'images/200905/thumb_img/27_thumb_G_1241972894068.jpg', 'images/200905/goods_img/27_G_1241972894061.jpg', 'images/200905/source_img/27_G_1241972894069.jpg', 0, 'virtual_card', 1, 1, 0, 0, 1241972894, 100, 1, 1, 1, 1, 0, 0, 1385080338, 0, '', -1, -1, 0, 0, '', 0, 0, '', 0),
(28, 15, 'ECS000028', '联通50元充值卡', '', '+', 0, 0, '', 0, '0.000', '50.00', '45.00', '0.00', 0, 0, 1, '', '', '', '', 'images/200905/thumb_img/28_thumb_G_1241972976986.jpg', 'images/200905/goods_img/28_G_1241972976313.jpg', 'images/200905/source_img/28_G_1241972976695.jpg', 0, 'virtual_card', 1, 1, 0, 0, 1241972976, 100, 1, 0, 0, 1, 0, 0, 1385080338, 0, '', -1, -1, 0, 0, '', 0, 0, '', 0),
(29, 14, 'ECS000029', '移动100元充值卡', '', '+', 0, 0, '', 0, '0.000', '0.00', '90.00', '0.00', 0, 0, 1, '', '', '', '', 'images/200905/thumb_img/29_thumb_G_1241973022239.jpg', 'images/200905/goods_img/29_G_1241973022206.jpg', 'images/200905/source_img/29_G_1241973022514.jpg', 0, 'virtual_card', 1, 1, 0, 0, 1241973022, 100, 1, 1, 0, 1, 0, 0, 1385080338, 0, '', -1, -1, 0, 0, '', 0, 0, '', 0),
(30, 14, 'ECS000030', '移动20元充值卡', '', '+', 3, 0, '', 9, '0.000', '21.00', '18.00', '0.00', 0, 0, 1, '', '', '', '', 'images/200905/thumb_img/30_thumb_G_1241973114800.jpg', 'images/200905/goods_img/30_G_1241973114234.jpg', 'images/200905/source_img/30_G_1241973114587.jpg', 0, 'virtual_card', 1, 1, 0, 0, 1241973114, 100, 1, 1, 0, 1, 0, 0, 1385080338, 0, '', -1, -1, 0, 0, '', 0, 0, '', 0),
(31, 3, 'ECS000031', '摩托罗拉E8 ', '', '+', 5, 2, '', 999, '0.000', '1604.39', '1337.00', '0.00', 0, 0, 1, '直板', '', '', '', 'images/200905/thumb_img/31_thumb_G_1242110412996.jpg', 'images/200905/goods_img/31_G_1242110412332.jpg', 'images/200905/source_img/31_G_1242110412519.jpg', 1, '', 0, 1, 0, 13, 1242110412, 100, 0, 0, 0, 0, 0, 0, 1242140652, 7, '', -1, -1, 0, 0, '', 0, 0, '', 0);
INSERT INTO `ecs_goods` (`goods_id`, `cat_id`, `goods_sn`, `goods_name`, `goods_name_en`, `goods_name_style`, `click_count`, `brand_id`, `provider_name`, `goods_number`, `goods_weight`, `market_price`, `shop_price`, `promote_price`, `promote_start_date`, `promote_end_date`, `warn_number`, `keywords`, `goods_brief`, `goods_desc`, `goods_desc_en`, `goods_thumb`, `goods_img`, `original_img`, `is_real`, `extension_code`, `is_on_sale`, `is_alone_sale`, `is_shipping`, `integral`, `add_time`, `sort_order`, `is_delete`, `is_best`, `is_new`, `is_hot`, `is_promote`, `bonus_type_id`, `last_update`, `goods_type`, `seller_note`, `give_integral`, `rank_integral`, `suppliers_id`, `is_check`, `goods_shipai`, `comments_number`, `sales_volume`, `bb_chicun`, `sales_count`) VALUES
(32, 42, 'ECS000032', '伊丽莎白•雅顿水感24小时保湿三件套', '', '+', 13, 1, '', 4, '0.000', '1300.00', '389.00', '329.00', 1243756800, 1827475200, 1, '2008年10月 GSM,850,900,1800,1900 黑色', '恒久的补水和锁水，雅顿倾其所有给肌肤24小时无微不至的水润呵护，美白，保湿，持久绽现！', '<p>诺基亚N85参数</p>\r\n<div>&nbsp;</div>\r\n<div>\r\n<table width="100%" cellspacing="1" cellpadding="0" border="0" bgcolor="#c5d7ed">\r\n    <tbody>\r\n        <tr>\r\n            <td bgcolor="#f1f7fc" colspan="2">\r\n            <p><b>基本参数</b></p>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td width="100" valign="center" bgcolor="#ffffff" align="left">手机昵称</td>\r\n            <td width="450" bgcolor="#ffffff">N85</td>\r\n        </tr>\r\n        <tr>\r\n            <td width="100" valign="center" bgcolor="#ffffff" align="left">上市日期</td>\r\n            <td width="450" bgcolor="#ffffff">2008年10月</td>\r\n        </tr>\r\n        <tr>\r\n            <td width="100" valign="center" bgcolor="#ffffff" align="left">手机类型</td>\r\n            <td width="450" bgcolor="#ffffff">3G手机；拍照手机；智能手机</td>\r\n        </tr>\r\n        <tr>\r\n            <td width="100" valign="center" bgcolor="#ffffff" align="left">手机制式</td>\r\n            <td width="450" bgcolor="#ffffff">GSM</td>\r\n        </tr>\r\n        <tr>\r\n            <td width="100" valign="center" bgcolor="#ffffff" align="left">支持频段</td>\r\n            <td width="450" bgcolor="#ffffff">GSM850/900/1800/1900MHz</td>\r\n        </tr>\r\n        <tr>\r\n            <td width="100" valign="center" bgcolor="#ffffff" align="left">数据传输</td>\r\n            <td width="450" bgcolor="#ffffff">GPRS、EDGE</td>\r\n        </tr>\r\n        <tr>\r\n            <td width="100" valign="center" bgcolor="#ffffff" align="left">屏幕材质</td>\r\n            <td width="450" bgcolor="#ffffff">AMOLED</td>\r\n        </tr>\r\n        <tr>\r\n            <td width="100" valign="center" bgcolor="#ffffff" align="left">屏幕色彩</td>\r\n            <td width="450" bgcolor="#ffffff">1600万色</td>\r\n        </tr>\r\n        <tr>\r\n            <td width="100" valign="center" bgcolor="#ffffff" align="left">主屏尺寸</td>\r\n            <td width="450" bgcolor="#ffffff">2.6英寸</td>\r\n        </tr>\r\n        <tr>\r\n            <td width="100" valign="center" bgcolor="#ffffff" align="left">主屏参数</td>\r\n            <td width="450" bgcolor="#ffffff">QVGA 320&times;240像素</td>\r\n        </tr>\r\n        <tr>\r\n            <td width="100" valign="center" bgcolor="#ffffff" align="left">铃音描述</td>\r\n            <td width="450" bgcolor="#ffffff">可选MP3、WAV、AAC或和弦Midi铃声等格式</td>\r\n        </tr>\r\n        <tr>\r\n            <td width="100" valign="center" bgcolor="#ffffff" align="left">操作系统</td>\r\n            <td width="450" bgcolor="#ffffff">Symbian OS v9.3操作系统与S60 v3.2平台的组合</td>\r\n        </tr>\r\n        <tr>\r\n            <td width="100" valign="center" bgcolor="#ffffff" align="left">机身内存</td>\r\n            <td width="450" bgcolor="#ffffff">74MB 内部动态存储空间<br />\r\n            78MB 内置NAND闪存</td>\r\n        </tr>\r\n        <tr>\r\n            <td width="100" valign="center" bgcolor="#ffffff" align="left">存储卡</td>\r\n            <td width="450" bgcolor="#ffffff">支持MicroSD(T-Flash)卡扩展最大至8GB</td>\r\n        </tr>\r\n        <tr>\r\n            <td width="100" valign="center" bgcolor="#ffffff" align="left">电池规格</td>\r\n            <td width="450" bgcolor="#ffffff">1200毫安时锂电池</td>\r\n        </tr>\r\n        <tr>\r\n            <td width="100" valign="center" bgcolor="#ffffff" align="left">标配</td>\r\n            <td width="450" bgcolor="#ffffff">诺基亚 N85<br />\r\n            诺基亚电池（BL-5K）<br />\r\n            诺基亚旅行充电器（AC-10）<br />\r\n            诺基亚视频数据线（CA-75U）<br />\r\n            诺基亚数据线（CA-101）<br />\r\n            诺基亚音乐耳机（HS-45、AD-54）<br />\r\n            诺基亚 8 GB microSD 卡（MU-43）<br />\r\n            《用户手册》<br />\r\n            《快速入门》</td>\r\n        </tr>\r\n        <tr>\r\n            <td width="100" valign="center" bgcolor="#ffffff" align="left">理论通话时间</td>\r\n            <td width="450" bgcolor="#ffffff">6.9 小时</td>\r\n        </tr>\r\n        <tr>\r\n            <td width="100" valign="center" bgcolor="#ffffff" align="left">理论待机时间</td>\r\n            <td width="450" bgcolor="#ffffff">363 小时</td>\r\n        </tr>\r\n        <tr>\r\n            <td bgcolor="#f1f7fc" colspan="2">\r\n            <p><b>产品外形</b></p>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td width="100" valign="center" bgcolor="#ffffff" align="left">外观设计</td>\r\n            <td width="450" bgcolor="#ffffff">双向滑盖</td>\r\n        </tr>\r\n        <tr>\r\n            <td width="100" valign="center" bgcolor="#ffffff" align="left">产品尺寸</td>\r\n            <td width="450" bgcolor="#ffffff">103&times;50&times;16mm<br />\r\n            体积：76 立方厘米</td>\r\n        </tr>\r\n        <tr>\r\n            <td width="100" valign="center" bgcolor="#ffffff" align="left">手机重量</td>\r\n            <td width="450" bgcolor="#ffffff">128克</td>\r\n        </tr>\r\n        <tr>\r\n            <td width="100" valign="center" bgcolor="#ffffff" align="left">产品天线</td>\r\n            <td width="450" bgcolor="#ffffff">内置</td>\r\n        </tr>\r\n        <tr>\r\n            <td bgcolor="#f1f7fc" colspan="2">\r\n            <p><b>拍照功能</b></p>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td width="550" valign="center" bgcolor="#ffffff" align="left" style="padding: 8px 0px;" colspan="2">\r\n            <table cellspacing="1" cellpadding="0" border="0" align="left">\r\n                <tbody>\r\n                    <tr>\r\n                        <td width="100" style="padding: 5px 0px 5px 10px;">\r\n                        <table width="100%" cellspacing="1" cellpadding="0" border="0" bgcolor="#c5d7ed">\r\n                            <tbody>\r\n                                <tr>\r\n                                    <td width="100%" bgcolor="#f1f7fc" align="middle" style="padding: 2px; font-weight: bold;">定时器</td>\r\n                                </tr>\r\n                            </tbody>\r\n                        </table>\r\n                        </td>\r\n                        <td width="100" style="padding: 5px 0px 5px 10px;">&nbsp;</td>\r\n                    </tr>\r\n                </tbody>\r\n            </table>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td width="100" valign="center" bgcolor="#ffffff" align="left">摄像头</td>\r\n            <td width="450" bgcolor="#ffffff">内置</td>\r\n        </tr>\r\n        <tr>\r\n            <td width="100" valign="center" bgcolor="#ffffff" align="left">摄像头像素</td>\r\n            <td width="450" bgcolor="#ffffff">500万像素</td>\r\n        </tr>\r\n        <tr>\r\n            <td width="100" valign="center" bgcolor="#ffffff" align="left">连拍功能</td>\r\n            <td width="450" bgcolor="#ffffff">支持</td>\r\n        </tr>\r\n        <tr>\r\n            <td width="100" valign="center" bgcolor="#ffffff" align="left">LED闪光灯</td>\r\n            <td width="450" bgcolor="#ffffff">双LED 闪光灯</td>\r\n        </tr>\r\n        <tr>\r\n            <td width="100" valign="center" bgcolor="#ffffff" align="left">数码变焦</td>\r\n            <td width="450" bgcolor="#ffffff">20 倍数码变焦</td>\r\n        </tr>\r\n        <tr>\r\n            <td width="100" valign="center" bgcolor="#ffffff" align="left">拍摄模式</td>\r\n            <td width="450" bgcolor="#ffffff">静止、连拍、自动定时器、摄像</td>\r\n        </tr>\r\n        <tr>\r\n            <td width="100" valign="center" bgcolor="#ffffff" align="left">照片特效</td>\r\n            <td width="450" bgcolor="#ffffff">正常、怀旧、黑白、负片、逼真</td>\r\n        </tr>\r\n        <tr>\r\n            <td width="100" valign="center" bgcolor="#ffffff" align="left">拍照描述</td>\r\n            <td width="450" bgcolor="#ffffff">支持最大2592&times;1944分辨率照片拍摄<br />\r\n            支持JPEG、Exif格式<br />\r\n            白平衡模式：自动、阳光、阴天、白炽灯、荧光灯<br />\r\n            感光度模式：高、中、低、自动</td>\r\n        </tr>\r\n        <tr>\r\n            <td width="100" valign="center" bgcolor="#ffffff" align="left">视频拍摄</td>\r\n            <td width="450" bgcolor="#ffffff">最高支持640 x 480 像素（VGA）、30 帧/秒</td>\r\n        </tr>\r\n        <tr>\r\n            <td bgcolor="#f1f7fc" colspan="2">\r\n            <p><b>娱乐功能</b></p>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td width="550" valign="center" bgcolor="#ffffff" align="left" style="padding: 8px 0px;" colspan="2">\r\n            <table cellspacing="1" cellpadding="0" border="0" align="left">\r\n                <tbody>\r\n                    <tr>\r\n                        <td width="100" style="padding: 5px 0px 5px 10px;">\r\n                        <table width="100%" cellspacing="1" cellpadding="0" border="0" bgcolor="#c5d7ed">\r\n                            <tbody>\r\n                                <tr>\r\n                                    <td width="100%" bgcolor="#f1f7fc" align="middle" style="padding: 2px; font-weight: bold;">收音机</td>\r\n                                </tr>\r\n                            </tbody>\r\n                        </table>\r\n                        </td>\r\n                        <td width="100" style="padding: 5px 0px 5px 10px;">\r\n                        <table width="100%" cellspacing="1" cellpadding="0" border="0" bgcolor="#c5d7ed">\r\n                            <tbody>\r\n                                <tr>\r\n                                    <td width="100%" bgcolor="#f1f7fc" align="middle" style="padding: 2px; font-weight: bold;">TV-OUT</td>\r\n                                </tr>\r\n                            </tbody>\r\n                        </table>\r\n                        </td>\r\n                        <td width="100" style="padding: 5px 0px 5px 10px;">\r\n                        <table width="100%" cellspacing="1" cellpadding="0" border="0" bgcolor="#c5d7ed">\r\n                            <tbody>\r\n                                <tr>\r\n                                    <td width="100%" bgcolor="#f1f7fc" align="middle" style="padding: 2px; font-weight: bold;">录音功能</td>\r\n                                </tr>\r\n                            </tbody>\r\n                        </table>\r\n                        </td>\r\n                        <td width="100" style="padding: 5px 0px 5px 10px;">\r\n                        <table width="100%" cellspacing="1" cellpadding="0" border="0" bgcolor="#c5d7ed">\r\n                            <tbody>\r\n                                <tr>\r\n                                    <td width="100%" bgcolor="#f1f7fc" align="middle" style="padding: 2px; font-weight: bold;">电子书</td>\r\n                                </tr>\r\n                            </tbody>\r\n                        </table>\r\n                        </td>\r\n                        <td width="100" style="padding: 5px 0px 5px 10px;">&nbsp;</td>\r\n                    </tr>\r\n                </tbody>\r\n            </table>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td width="100" valign="center" bgcolor="#ffffff" align="left">视频播放</td>\r\n            <td width="450" bgcolor="#ffffff">内置RealPlayer播放器, 支持MPEG4、H.264/AVC、H.263/3GP、RealVideo等视频格式全屏播放</td>\r\n        </tr>\r\n        <tr>\r\n            <td width="100" valign="center" bgcolor="#ffffff" align="left">音乐播放</td>\r\n            <td width="450" bgcolor="#ffffff">内置播放器, 支持mp3、.wma、.aac、eAAC、eAAC+格式</td>\r\n        </tr>\r\n        <tr>\r\n            <td width="100" valign="center" bgcolor="#ffffff" align="left">游戏</td>\r\n            <td width="450" bgcolor="#ffffff">内置</td>\r\n        </tr>\r\n        <tr>\r\n            <td width="100" valign="center" bgcolor="#ffffff" align="left">Java功能</td>\r\n            <td width="450" bgcolor="#ffffff">支持Java MIDP 2.0 CLDC 1.1</td>\r\n        </tr>\r\n        <tr>\r\n            <td width="100" valign="center" bgcolor="#ffffff" align="left">Flash功能</td>\r\n            <td width="450" bgcolor="#ffffff">第3.0版Flash lite播放器</td>\r\n        </tr>\r\n        <tr>\r\n            <td bgcolor="#f1f7fc" colspan="2">\r\n            <p><b>数据功能</b></p>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td width="550" valign="center" bgcolor="#ffffff" align="left" style="padding: 8px 0px;" colspan="2">\r\n            <table cellspacing="1" cellpadding="0" border="0" align="left">\r\n                <tbody>\r\n                    <tr>\r\n                        <td width="100" style="padding: 5px 0px 5px 10px;">\r\n                        <table width="100%" cellspacing="1" cellpadding="0" border="0" bgcolor="#c5d7ed">\r\n                            <tbody>\r\n                                <tr>\r\n                                    <td width="100%" bgcolor="#f1f7fc" align="middle" style="padding: 2px; font-weight: bold;">蓝牙功能</td>\r\n                                </tr>\r\n                            </tbody>\r\n                        </table>\r\n                        </td>\r\n                        <td width="100" style="padding: 5px 0px 5px 10px;">&nbsp;</td>\r\n                    </tr>\r\n                </tbody>\r\n            </table>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td width="100" valign="center" bgcolor="#ffffff" align="left">数据线接口</td>\r\n            <td width="450" bgcolor="#ffffff">USB数据线 3.5mm立体声耳机插孔</td>\r\n        </tr>\r\n        <tr>\r\n            <td bgcolor="#f1f7fc" colspan="2">\r\n            <p><b>基本功能</b></p>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td width="550" valign="center" bgcolor="#ffffff" align="left" style="padding: 8px 0px;" colspan="2">\r\n            <table cellspacing="1" cellpadding="0" border="0" align="left">\r\n                <tbody>\r\n                    <tr>\r\n                        <td width="100" style="padding: 5px 0px 5px 10px;">\r\n                        <table width="100%" cellspacing="1" cellpadding="0" border="0" bgcolor="#c5d7ed">\r\n                            <tbody>\r\n                                <tr>\r\n                                    <td width="100%" bgcolor="#f1f7fc" align="middle" style="padding: 2px; font-weight: bold;">短信(SMS)</td>\r\n                                </tr>\r\n                            </tbody>\r\n                        </table>\r\n                        </td>\r\n                        <td width="100" style="padding: 5px 0px 5px 10px;">\r\n                        <table width="100%" cellspacing="1" cellpadding="0" border="0" bgcolor="#c5d7ed">\r\n                            <tbody>\r\n                                <tr>\r\n                                    <td width="100%" bgcolor="#f1f7fc" align="middle" style="padding: 2px; font-weight: bold;">彩信(MMS)</td>\r\n                                </tr>\r\n                            </tbody>\r\n                        </table>\r\n                        </td>\r\n                        <td width="100" style="padding: 5px 0px 5px 10px;">\r\n                        <table width="100%" cellspacing="1" cellpadding="0" border="0" bgcolor="#c5d7ed">\r\n                            <tbody>\r\n                                <tr>\r\n                                    <td width="100%" bgcolor="#f1f7fc" align="middle" style="padding: 2px; font-weight: bold;">免提通话</td>\r\n                                </tr>\r\n                            </tbody>\r\n                        </table>\r\n                        </td>\r\n                        <td width="100" style="padding: 5px 0px 5px 10px;">\r\n                        <table width="100%" cellspacing="1" cellpadding="0" border="0" bgcolor="#c5d7ed">\r\n                            <tbody>\r\n                                <tr>\r\n                                    <td width="100%" bgcolor="#f1f7fc" align="middle" style="padding: 2px; font-weight: bold;">情景模式</td>\r\n                                </tr>\r\n                            </tbody>\r\n                        </table>\r\n                        </td>\r\n                        <td width="100" style="padding: 5px 0px 5px 10px;">\r\n                        <table width="100%" cellspacing="1" cellpadding="0" border="0" bgcolor="#c5d7ed">\r\n                            <tbody>\r\n                                <tr>\r\n                                    <td width="100%" bgcolor="#f1f7fc" align="middle" style="padding: 2px; font-weight: bold;">闹钟功能</td>\r\n                                </tr>\r\n                            </tbody>\r\n                        </table>\r\n                        </td>\r\n                    </tr>\r\n                    <tr>\r\n                        <td width="100" style="padding: 5px 0px 5px 10px;">\r\n                        <table width="100%" cellspacing="1" cellpadding="0" border="0" bgcolor="#c5d7ed">\r\n                            <tbody>\r\n                                <tr>\r\n                                    <td width="100%" bgcolor="#f1f7fc" align="middle" style="padding: 2px; font-weight: bold;">日历功能</td>\r\n                                </tr>\r\n                            </tbody>\r\n                        </table>\r\n                        </td>\r\n                        <td width="100" style="padding: 5px 0px 5px 10px;">&nbsp;</td>\r\n                    </tr>\r\n                </tbody>\r\n            </table>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td width="100" valign="center" bgcolor="#ffffff" align="left">输入方式</td>\r\n            <td width="450" bgcolor="#ffffff">键盘</td>\r\n        </tr>\r\n        <tr>\r\n            <td width="100" valign="center" bgcolor="#ffffff" align="left">通话记录</td>\r\n            <td width="450" bgcolor="#ffffff">未接来电+已接来电+已拨电话记录</td>\r\n        </tr>\r\n        <tr>\r\n            <td width="100" valign="center" bgcolor="#ffffff" align="left">通讯录</td>\r\n            <td width="450" bgcolor="#ffffff">S60标准化名片式通讯录</td>\r\n        </tr>\r\n        <tr>\r\n            <td bgcolor="#f1f7fc" colspan="2">\r\n            <p><b>网络功能</b></p>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td width="550" valign="center" bgcolor="#ffffff" align="left" style="padding: 8px 0px;" colspan="2">\r\n            <table cellspacing="1" cellpadding="0" border="0" align="left">\r\n                <tbody>\r\n                    <tr>\r\n                        <td width="100" style="padding: 5px 0px 5px 10px;">\r\n                        <table width="100%" cellspacing="1" cellpadding="0" border="0" bgcolor="#c5d7ed">\r\n                            <tbody>\r\n                                <tr>\r\n                                    <td width="100%" bgcolor="#f1f7fc" align="middle" style="padding: 2px; font-weight: bold;">电子邮件</td>\r\n                                </tr>\r\n                            </tbody>\r\n                        </table>\r\n                        </td>\r\n                        <td width="100" style="padding: 5px 0px 5px 10px;">\r\n                        <table width="100%" cellspacing="1" cellpadding="0" border="0" bgcolor="#c5d7ed">\r\n                            <tbody>\r\n                                <tr>\r\n                                    <td width="100%" bgcolor="#f1f7fc" align="middle" style="padding: 2px; font-weight: bold;">WWW浏览器</td>\r\n                                </tr>\r\n                            </tbody>\r\n                        </table>\r\n                        </td>\r\n                        <td width="100" style="padding: 5px 0px 5px 10px;">\r\n                        <table width="100%" cellspacing="1" cellpadding="0" border="0" bgcolor="#c5d7ed">\r\n                            <tbody>\r\n                                <tr>\r\n                                    <td width="100%" bgcolor="#f1f7fc" align="middle" style="padding: 2px; font-weight: bold;">WAP浏览器</td>\r\n                                </tr>\r\n                            </tbody>\r\n                        </table>\r\n                        </td>\r\n                        <td width="100" style="padding: 5px 0px 5px 10px;">&nbsp;</td>\r\n                    </tr>\r\n                </tbody>\r\n            </table>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td bgcolor="#f1f7fc" colspan="2">\r\n            <p><b>商务功能</b></p>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td width="550" valign="center" bgcolor="#ffffff" align="left" style="padding: 8px 0px;" colspan="2">\r\n            <table cellspacing="1" cellpadding="0" border="0" align="left">\r\n                <tbody>\r\n                    <tr>\r\n                        <td width="100" style="padding: 5px 0px 5px 10px;">\r\n                        <table width="100%" cellspacing="1" cellpadding="0" border="0" bgcolor="#c5d7ed">\r\n                            <tbody>\r\n                                <tr>\r\n                                    <td width="100%" bgcolor="#f1f7fc" align="middle" style="padding: 2px; font-weight: bold;">飞行模式</td>\r\n                                </tr>\r\n                            </tbody>\r\n                        </table>\r\n                        </td>\r\n                        <td width="100" style="padding: 5px 0px 5px 10px;">\r\n                        <table width="100%" cellspacing="1" cellpadding="0" border="0" bgcolor="#c5d7ed">\r\n                            <tbody>\r\n                                <tr>\r\n                                    <td width="100%" bgcolor="#f1f7fc" align="middle" style="padding: 2px; font-weight: bold;">语音拨号</td>\r\n                                </tr>\r\n                            </tbody>\r\n                        </table>\r\n                        </td>\r\n                        <td width="100" style="padding: 5px 0px 5px 10px;">\r\n                        <table width="100%" cellspacing="1" cellpadding="0" border="0" bgcolor="#c5d7ed">\r\n                            <tbody>\r\n                                <tr>\r\n                                    <td width="100%" bgcolor="#f1f7fc" align="middle" style="padding: 2px; font-weight: bold;">备忘录</td>\r\n                                </tr>\r\n                            </tbody>\r\n                        </table>\r\n                        </td>\r\n                        <td width="100" style="padding: 5px 0px 5px 10px;">\r\n                        <table width="100%" cellspacing="1" cellpadding="0" border="0" bgcolor="#c5d7ed">\r\n                            <tbody>\r\n                                <tr>\r\n                                    <td width="100%" bgcolor="#f1f7fc" align="middle" style="padding: 2px; font-weight: bold;">日程表</td>\r\n                                </tr>\r\n                            </tbody>\r\n                        </table>\r\n                        </td>\r\n                        <td width="100" style="padding: 5px 0px 5px 10px;">\r\n                        <table width="100%" cellspacing="1" cellpadding="0" border="0" bgcolor="#c5d7ed">\r\n                            <tbody>\r\n                                <tr>\r\n                                    <td width="100%" bgcolor="#f1f7fc" align="middle" style="padding: 2px; font-weight: bold;">世界时间</td>\r\n                                </tr>\r\n                            </tbody>\r\n                        </table>\r\n                        </td>\r\n                    </tr>\r\n                    <tr>\r\n                        <td width="100" style="padding: 5px 0px 5px 10px;">&nbsp;</td>\r\n                    </tr>\r\n                </tbody>\r\n            </table>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td bgcolor="#f1f7fc" colspan="2">\r\n            <p><b>其他功能</b></p>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td width="550" valign="center" bgcolor="#ffffff" align="left" style="padding: 8px 0px;" colspan="2">\r\n            <table cellspacing="1" cellpadding="0" border="0" align="left">\r\n                <tbody>\r\n                    <tr>\r\n                        <td width="100" style="padding: 5px 0px 5px 10px;">\r\n                        <table width="100%" cellspacing="1" cellpadding="0" border="0" bgcolor="#c5d7ed">\r\n                            <tbody>\r\n                                <tr>\r\n                                    <td width="100%" bgcolor="#f1f7fc" align="middle" style="padding: 2px; font-weight: bold;">GPS功能</td>\r\n                                </tr>\r\n                            </tbody>\r\n                        </table>\r\n                        </td>\r\n                        <td width="100" style="padding: 5px 0px 5px 10px;">\r\n                        <table width="100%" cellspacing="1" cellpadding="0" border="0" bgcolor="#c5d7ed">\r\n                            <tbody>\r\n                                <tr>\r\n                                    <td width="100%" bgcolor="#f1f7fc" align="middle" style="padding: 2px; font-weight: bold;">电子词典</td>\r\n                                </tr>\r\n                            </tbody>\r\n                        </table>\r\n                        </td>\r\n                        <td width="100" style="padding: 5px 0px 5px 10px;">\r\n                        <table width="100%" cellspacing="1" cellpadding="0" border="0" bgcolor="#c5d7ed">\r\n                            <tbody>\r\n                                <tr>\r\n                                    <td width="100%" bgcolor="#f1f7fc" align="middle" style="padding: 2px; font-weight: bold;">待机图片</td>\r\n                                </tr>\r\n                            </tbody>\r\n                        </table>\r\n                        </td>\r\n                        <td width="100" style="padding: 5px 0px 5px 10px;">\r\n                        <table width="100%" cellspacing="1" cellpadding="0" border="0" bgcolor="#c5d7ed">\r\n                            <tbody>\r\n                                <tr>\r\n                                    <td width="100%" bgcolor="#f1f7fc" align="middle" style="padding: 2px; font-weight: bold;">计算器</td>\r\n                                </tr>\r\n                            </tbody>\r\n                        </table>\r\n                        </td>\r\n                        <td width="100" style="padding: 5px 0px 5px 10px;">\r\n                        <table width="100%" cellspacing="1" cellpadding="0" border="0" bgcolor="#c5d7ed">\r\n                            <tbody>\r\n                                <tr>\r\n                                    <td width="100%" bgcolor="#f1f7fc" align="middle" style="padding: 2px; font-weight: bold;">来电铃声识别</td>\r\n                                </tr>\r\n                            </tbody>\r\n                        </table>\r\n                        </td>\r\n                    </tr>\r\n                    <tr>\r\n                        <td width="100" style="padding: 5px 0px 5px 10px;">\r\n                        <table width="100%" cellspacing="1" cellpadding="0" border="0" bgcolor="#c5d7ed">\r\n                            <tbody>\r\n                                <tr>\r\n                                    <td width="100%" bgcolor="#f1f7fc" align="middle" style="padding: 2px; font-weight: bold;">来电图片识别</td>\r\n                                </tr>\r\n                            </tbody>\r\n                        </table>\r\n                        </td>\r\n                        <td width="100" style="padding: 5px 0px 5px 10px;">\r\n                        <table width="100%" cellspacing="1" cellpadding="0" border="0" bgcolor="#c5d7ed">\r\n                            <tbody>\r\n                                <tr>\r\n                                    <td width="100%" bgcolor="#f1f7fc" align="middle" style="padding: 2px; font-weight: bold;">来电防火墙</td>\r\n                                </tr>\r\n                            </tbody>\r\n                        </table>\r\n                        </td>\r\n                        <td width="100" style="padding: 5px 0px 5px 10px;">\r\n                        <table width="100%" cellspacing="1" cellpadding="0" border="0" bgcolor="#c5d7ed">\r\n                            <tbody>\r\n                                <tr>\r\n                                    <td width="100%" bgcolor="#f1f7fc" align="middle" style="padding: 2px; font-weight: bold;">动画屏保</td>\r\n                                </tr>\r\n                            </tbody>\r\n                        </table>\r\n                        </td>\r\n                        <td width="100" style="padding: 5px 0px 5px 10px;">\r\n                        <table width="100%" cellspacing="1" cellpadding="0" border="0" bgcolor="#c5d7ed">\r\n                            <tbody>\r\n                                <tr>\r\n                                    <td width="100%" bgcolor="#f1f7fc" align="middle" style="padding: 2px; font-weight: bold;">图形菜单</td>\r\n                                </tr>\r\n                            </tbody>\r\n                        </table>\r\n                        </td>\r\n                        <td width="100" style="padding: 5px 0px 5px 10px;">\r\n                        <table width="100%" cellspacing="1" cellpadding="0" border="0" bgcolor="#c5d7ed">\r\n                            <tbody>\r\n                                <tr>\r\n                                    <td width="100%" bgcolor="#f1f7fc" align="middle" style="padding: 2px; font-weight: bold;">秒表</td>\r\n                                </tr>\r\n                            </tbody>\r\n                        </table>\r\n                        </td>\r\n                    </tr>\r\n                    <tr>\r\n                        <td width="100" style="padding: 5px 0px 5px 10px;">\r\n                        <table width="100%" cellspacing="1" cellpadding="0" border="0" bgcolor="#c5d7ed">\r\n                            <tbody>\r\n                                <tr>\r\n                                    <td width="100%" bgcolor="#f1f7fc" align="middle" style="padding: 2px; font-weight: bold;">单位换算</td>\r\n                                </tr>\r\n                            </tbody>\r\n                        </table>\r\n                        </td>\r\n                        <td width="100" style="padding: 5px 0px 5px 10px;">\r\n                        <table width="100%" cellspacing="1" cellpadding="0" border="0">\r\n                            <tbody>\r\n                                <tr>\r\n                                    <td width="100%" align="middle" style="padding: 2px; float: none;">&nbsp;</td>\r\n                                </tr>\r\n                            </tbody>\r\n                        </table>\r\n                        </td>\r\n                    </tr>\r\n                </tbody>\r\n            </table>\r\n            </td>\r\n        </tr>\r\n    </tbody>\r\n</table>\r\n</div>\r\n<p>&nbsp;</p>', '', 'images/201311/thumb_img/32_thumb_G_1384991764159.gif', 'images/201311/goods_img/32_G_1384991764510.jpg', 'images/201311/source_img/32_G_1384991764724.jpg', 1, '', 1, 1, 0, 3, 1242110760, 100, 0, 0, 0, 0, 1, 0, 1385075542, 9, '', -1, -1, 0, 0, '', 0, 0, '', 0),
(33, 43, 'ECS000033', '兰蔻小黑瓶精华肌底液（新版）30ml', '', '+', 57, 2, '', 999, '0.000', '780.00', '498.00', '0.00', 0, 0, 1, '', '', '', '', 'images/201311/thumb_img/33_thumb_G_1384995853710.jpg', 'images/201311/goods_img/33_G_1384995853738.jpg', 'images/201311/source_img/33_G_1384995853594.jpg', 1, '', 1, 1, 0, 4, 1384995853, 100, 0, 0, 0, 0, 0, 0, 1384995853, 0, '', -1, -1, 0, 0, '', 0, 0, '', 0),
(34, 43, 'ECS000034', '兰蔻超塑颜5D提拉日霜法国版50ml', '', '+', 58, 2, '', 999, '0.000', '895.00', '589.00', '0.00', 0, 0, 1, '', '', '', '', 'images/201311/thumb_img/34_thumb_G_1384996126624.jpg', 'images/201311/goods_img/34_G_1384996126469.jpg', 'images/201311/source_img/34_G_1384996126800.jpg', 1, '', 1, 1, 0, 5, 1384996126, 100, 0, 0, 0, 0, 0, 0, 1384996126, 0, '', -1, -1, 0, 0, '', 0, 0, '', 0),
(35, 43, 'ECS000035', '雅诗兰黛红石榴鲜活晚霜50ml新', '', '+', 15, 2, '', 999, '0.000', '620.00', '489.00', '0.00', 0, 0, 1, '', '', '', '', 'images/201311/thumb_img/35_thumb_G_1384996219720.jpg', 'images/201311/goods_img/35_G_1384996219813.jpg', 'images/201311/source_img/35_G_1384996219733.jpg', 1, '', 1, 1, 0, 4, 1384996219, 100, 0, 0, 0, 0, 0, 0, 1384996219, 0, '', -1, -1, 0, 0, '', 0, 0, '', 1),
(36, 24, 'ECS000036', '雅诗兰黛匀透肌源精粹水200ml', '', '+', 1, 2, '', 999, '0.000', '466.79', '389.00', '0.00', 0, 0, 1, '', '', '', '', 'images/201311/thumb_img/36_thumb_G_1385070892448.jpg', 'images/201311/goods_img/36_G_1385070892903.jpg', 'images/201311/source_img/36_G_1385070892002.jpg', 1, '', 1, 1, 0, 3, 1385070892, 100, 0, 0, 0, 0, 0, 0, 1385070892, 0, '', -1, -1, 0, 0, '', 0, 0, '', 0),
(37, 26, 'ECS000037', '兰蔻肌底赋活晚霜50ml', '', '+', 4, 1, '', 999, '0.000', '800.00', '550.00', '0.00', 0, 0, 1, '', '', '', '', 'images/201311/thumb_img/37_thumb_G_1385071002275.jpg', 'images/201311/goods_img/37_G_1385071002705.jpg', 'images/201311/source_img/37_G_1385071002653.png', 1, '', 1, 1, 0, 5, 1385071002, 100, 0, 0, 0, 0, 0, 0, 1385071002, 0, '', -1, -1, 0, 0, '', 0, 0, '', 0),
(38, 30, 'ECS000038', '倩碧全效眼部护理精华露15ml', '', '+', 0, 7, '', 999, '0.000', '390.00', '219.00', '0.00', 0, 0, 1, '', '', '', '', 'images/201311/thumb_img/38_thumb_G_1385071125679.jpg', 'images/201311/goods_img/38_G_1385071125816.jpg', 'images/201311/source_img/38_G_1385071125210.jpg', 1, '', 1, 1, 0, 2, 1385071087, 100, 0, 0, 0, 0, 0, 0, 1385071125, 0, '', -1, -1, 0, 0, '', 0, 0, '', 0),
(39, 23, 'ECS000039', '娇兰水合青春活能精华露50ml', '', '+', 2, 12, '', 999, '0.000', '1750.00', '869.00', '0.00', 0, 0, 1, '', '', '', '', 'images/201311/thumb_img/39_thumb_G_1385071299149.jpg', 'images/201311/goods_img/39_G_1385071299893.jpg', 'images/201311/source_img/39_G_1385071299250.jpg', 1, '', 1, 1, 0, 8, 1385071299, 100, 0, 0, 0, 0, 0, 0, 1385071299, 0, '', -1, -1, 0, 0, '', 0, 0, '', 0),
(40, 33, 'ECS000040', '雅顿8小时经典润泽护唇啫喱15ml', '', '+', 1, 13, '', 999, '0.000', '120.00', '79.00', '0.00', 0, 0, 1, '', '', '', '', 'images/201311/thumb_img/40_thumb_G_1385071423191.jpg', 'images/201311/goods_img/40_G_1385071423991.jpg', 'images/201311/source_img/40_G_1385071423535.jpg', 1, '', 1, 1, 0, 0, 1385071423, 100, 0, 0, 0, 0, 0, 0, 1385071423, 0, '', -1, -1, 0, 0, '', 0, 0, '', 0),
(41, 25, 'ECS000041', '迪奥水动力精萃细致美肤露 50ml', '', '+', 2, 14, '', 999, '0.000', '576.00', '479.00', '0.00', 0, 0, 1, '', '', '', '', 'images/201311/thumb_img/41_thumb_G_1385071859480.jpg', 'images/201311/goods_img/41_G_1385071859140.jpg', 'images/201311/source_img/41_G_1385071859690.jpg', 1, '', 1, 1, 0, 4, 1385071802, 100, 0, 0, 0, 0, 0, 0, 1385071859, 0, '', -1, -1, 0, 0, '', 0, 0, '', 0),
(42, 24, 'ECS000042', '茱莉蔻玫瑰衡肌花卉水100ml', '', '+', 4, 15, '', 999, '0.000', '360.00', '199.00', '0.00', 0, 0, 1, '', '', '', '', 'images/201311/thumb_img/42_thumb_G_1385071984560.jpg', 'images/201311/goods_img/42_G_1385071984428.jpg', 'images/201311/source_img/42_G_1385071984519.jpg', 1, '', 1, 1, 0, 1, 1385071984, 100, 0, 0, 0, 0, 0, 0, 1385071984, 0, '', -1, -1, 0, 0, '', 0, 0, '', 0),
(43, 20, 'ECS000043', '我的美丽日记玻尿酸面膜10片', '', '+', 2, 16, '', 999, '0.000', '100.00', '69.00', '0.00', 0, 0, 1, '', '', '', '', 'images/201311/thumb_img/43_thumb_G_1385072070846.jpg', 'images/201311/goods_img/43_G_1385072070681.jpg', 'images/201311/source_img/43_G_1385072070251.jpg', 1, '', 1, 1, 0, 0, 1385072070, 100, 0, 0, 0, 0, 0, 0, 1385072070, 0, '', -1, -1, 0, 0, '', 0, 0, '', 0),
(44, 37, 'ECS000044', '美体小铺茶树祛痘急救棒2.5ml', '', '+', 3, 17, '', 999, '0.000', '92.00', '59.00', '0.00', 0, 0, 1, '', '', '', '', 'images/201311/thumb_img/44_thumb_G_1385072182407.jpg', 'images/201311/goods_img/44_G_1385072182115.jpg', 'images/201311/source_img/44_G_1385072182408.png', 1, '', 1, 1, 0, 0, 1385072182, 100, 0, 0, 0, 0, 0, 0, 1385072182, 0, '', -1, -1, 0, 0, '', 0, 0, '', 0),
(45, 42, 'ECS000045', '碧欧泉温泉至臻保湿精华露30ml', '', '+', 6, 18, '', 999, '0.000', '530.00', '349.00', '0.00', 0, 0, 1, '', '', '', '', 'images/201311/thumb_img/45_thumb_G_1385072303507.jpg', 'images/201311/goods_img/45_G_1385072303744.jpg', 'images/201311/source_img/45_G_1385072303304.jpg', 1, '', 1, 1, 0, 3, 1385072303, 100, 0, 0, 0, 0, 0, 0, 1385072303, 0, '', -1, -1, 0, 0, '', 0, 0, '', 0),
(46, 5, 'ECS000046', '香奈儿斜纹软呢星彩腮红30#5.5g', '', '+', 14, 19, '', 999, '0.000', '449.00', '339.00', '0.00', 0, 0, 1, '', '', '', '', 'images/201311/thumb_img/46_thumb_G_1385072633213.jpg', 'images/201311/goods_img/46_G_1385072633934.jpg', 'images/201311/source_img/46_G_1385072633339.jpg', 1, '', 1, 1, 0, 3, 1385072633, 100, 0, 0, 0, 0, 0, 0, 1385072633, 0, '', -1, -1, 0, 0, '', 0, 0, '', 0),
(47, 54, 'ECS000047', '浮生若梦丝柔蜜粉08#（紫色)28g', '', '+', 25, 25, '', 999, '0.000', '345.00', '229.00', '0.00', 0, 0, 1, '', '', '', '', 'images/201311/thumb_img/47_thumb_G_1385076494250.jpg', 'images/201311/goods_img/47_G_1385076494259.jpg', 'images/201311/source_img/47_G_1385076494522.jpg', 1, '', 1, 1, 0, 2, 1385076494, 100, 0, 0, 0, 0, 0, 0, 1385076494, 0, '', -1, -1, 0, 0, '', 0, 0, '', 0),
(48, 86, 'ECS000048', '娇兰小黑裙女士淡香水50ml', '', '+', 9, 12, '', 999, '0.000', '730.00', '459.00', '0.00', 0, 0, 1, '', '', '', '', 'images/201311/thumb_img/48_thumb_G_1385076661630.jpg', 'images/201311/goods_img/48_G_1385076661244.jpg', 'images/201311/source_img/48_G_1385076661776.jpg', 1, '', 1, 1, 0, 4, 1385076661, 100, 0, 0, 0, 0, 0, 0, 1385076661, 0, '', -1, -1, 0, 0, '', 0, 0, '', 0),
(49, 86, 'ECS000049', '博柏利英伦迷情女士香水（白）30ml', '', '+', 3, 26, '', 999, '0.000', '420.00', '179.00', '0.00', 0, 0, 1, '', '', '', '', 'images/201311/thumb_img/49_thumb_G_1385076764442.jpg', 'images/201311/goods_img/49_G_1385076764909.jpg', 'images/201311/source_img/49_G_1385076764205.png', 1, '', 1, 1, 0, 1, 1385076741, 100, 0, 0, 0, 0, 0, 0, 1385076764, 0, '', -1, -1, 0, 0, '', 0, 0, '', 0),
(50, 87, 'ECS000050', '大卫杜夫冷水男士香水40ml', '', '+', 2, 27, '', 999, '0.000', '300.00', '129.00', '0.00', 0, 0, 1, '', '', '', '', 'images/201311/thumb_img/50_thumb_G_1385076903577.jpg', 'images/201311/goods_img/50_G_1385076903713.jpg', 'images/201311/source_img/50_G_1385076903515.jpg', 1, '', 1, 1, 0, 1, 1385076903, 100, 0, 0, 0, 0, 0, 0, 1385076903, 0, '', -1, -1, 0, 0, '', 0, 0, '', 0),
(51, 93, 'ECS000051', '安娜苏逐梦翎雀香水30ml', '', '+', 0, 20, '', 999, '0.000', '430.00', '209.00', '0.00', 0, 0, 1, '', '', '', '', 'images/201311/thumb_img/51_thumb_G_1385077004880.jpg', 'images/201311/goods_img/51_G_1385077004064.jpg', 'images/201311/source_img/51_G_1385077004396.jpg', 1, '', 1, 1, 0, 2, 1385077004, 100, 0, 0, 0, 0, 0, 0, 1385077004, 0, '', -1, -1, 0, 0, '', 0, 0, '', 0),
(52, 86, 'ECS000052', '马克雅克布雏菊女士香水100ml', '', '+', 2, 28, '', 999, '0.000', '580.00', '449.00', '0.00', 0, 0, 1, '', '', '', '', 'images/201311/thumb_img/52_thumb_G_1385077126197.jpg', 'images/201311/goods_img/52_G_1385077126826.jpg', 'images/201311/source_img/52_G_1385077126834.jpg', 1, '', 1, 1, 0, 4, 1385077126, 100, 0, 0, 0, 0, 0, 0, 1385077126, 0, '', -1, -1, 0, 0, '', 0, 0, '', 0),
(53, 92, 'ECS000053', ' 迪奥EDP真我女士香水50ml', '', '+', 23, 14, '', 65532, '0.000', '940.00', '679.00', '0.00', 0, 0, 1, '', '', '', '', 'images/201311/thumb_img/53_thumb_G_1385077221189.jpg', 'images/201311/goods_img/53_G_1385077221478.jpg', 'images/201311/source_img/53_G_1385077221390.jpg', 1, '', 1, 1, 0, 6, 1385077221, 100, 0, 0, 0, 0, 0, 0, 1390413693, 0, '', -1, -1, 0, 0, '', 0, 4, '', 0),
(54, 104, 'ECS000054', '雅顿第五大道香水30ml', '', '+', 1, 13, '', 999, '0.000', '280.00', '109.00', '0.00', 0, 0, 1, '', '', '', '', 'images/201311/thumb_img/54_thumb_G_1385077336588.jpg', 'images/201311/goods_img/54_G_1385077336812.jpg', 'images/201311/source_img/54_G_1385077336485.jpg', 1, '', 1, 1, 0, 1, 1385077336, 100, 0, 0, 0, 0, 0, 0, 1385077336, 0, '', -1, -1, 0, 0, '', 0, 0, '', 0),
(55, 94, 'ECS000055', '菲拉格慕蝶忆绽放女士香水50ml', '', '+', 1, 29, '', 999, '0.000', '800.00', '159.00', '0.00', 0, 0, 1, '', '', '', '', 'images/201311/thumb_img/55_thumb_G_1385077439755.jpg', 'images/201311/goods_img/55_G_1385077439653.jpg', 'images/201311/source_img/55_G_1385077439763.jpg', 1, '', 1, 1, 0, 1, 1385077439, 100, 0, 0, 0, 0, 0, 0, 1385077439, 0, '', -1, -1, 0, 0, '', 0, 0, '', 0),
(56, 87, 'ECS000056', '范思哲绅情男士香水Q版5ml', '', '+', 6, 30, '', 999, '0.000', '120.00', '45.00', '0.00', 0, 0, 1, '', '', '', '', 'images/201311/thumb_img/56_thumb_G_1385077565374.jpg', 'images/201311/goods_img/56_G_1385077565387.jpg', 'images/201311/source_img/56_G_1385077565500.jpg', 1, '', 1, 1, 0, 0, 1385077565, 100, 0, 0, 0, 0, 0, 0, 1385077565, 0, '', -1, -1, 0, 0, '', 0, 0, '', 0),
(57, 88, 'ECS000057', '凯文克莱BE中性香水200ml', '', '+', 21, 31, '', 65534, '0.000', '570.00', '259.00', '0.00', 0, 0, 1, '', '', '', '', 'images/201311/thumb_img/57_thumb_G_1385077699842.jpg', 'images/201311/goods_img/57_G_1385077699964.jpg', 'images/201311/source_img/57_G_1385077699291.jpg', 1, '', 1, 1, 0, 2, 1385077699, 100, 0, 0, 0, 0, 0, 0, 1390413488, 0, '', -1, -1, 0, 0, '', 0, 2, '', 0),
(58, 118, 'ECS000058', '娇韵诗牛奶果健胸提升啫喱50ml', '', '+', 4, 32, '', 999, '0.000', '560.00', '319.00', '0.00', 0, 0, 1, '', '', '', '', 'images/201311/thumb_img/58_thumb_G_1385078380267.jpg', 'images/201311/goods_img/58_G_1385078380039.jpg', 'images/201311/source_img/58_G_1385078380888.jpg', 1, '', 1, 1, 0, 3, 1385078380, 100, 0, 0, 0, 0, 0, 0, 1385078380, 0, '', -1, -1, 0, 0, '', 0, 0, '', 0),
(59, 109, 'ECS000059', '娇韵诗纤柔美体霜200ml', '', '+', 3, 32, '', 999, '0.000', '520.00', '319.00', '0.00', 0, 0, 1, '', '', '', '', 'images/201311/thumb_img/59_thumb_G_1385078680752.gif', 'images/201311/goods_img/59_G_1385078635091.jpg', 'images/201311/source_img/59_G_1385078635115.png', 1, '', 1, 1, 0, 3, 1385078635, 100, 0, 0, 0, 0, 0, 0, 1385078680, 0, '', -1, -1, 0, 0, '', 0, 0, '', 0),
(60, 120, 'ECS000060', ' 茱莉蔻柠檬按摩油100ml', '', '+', 1, 15, '', 999, '0.000', '330.00', '179.00', '0.00', 0, 0, 1, '', '', '', '', 'images/201311/thumb_img/60_thumb_G_1385078760227.jpg', 'images/201311/goods_img/60_G_1385078760751.jpg', 'images/201311/source_img/60_G_1385078760688.jpg', 1, '', 1, 1, 0, 1, 1385078760, 100, 0, 0, 0, 0, 0, 0, 1385078760, 0, '', -1, -1, 0, 0, '', 0, 0, '', 0),
(61, 129, 'ECS000061', '美体小铺白麝香身体护理三件套', '', '+', 1, 17, '', 999, '0.000', '490.00', '249.00', '0.00', 0, 0, 1, '', '', '', '', 'images/201311/thumb_img/61_thumb_G_1385078916510.jpg', 'images/201311/goods_img/61_G_1385078916148.jpg', 'images/201311/source_img/61_G_1385078916247.jpg', 1, '', 1, 1, 0, 2, 1385078916, 100, 0, 0, 0, 0, 0, 0, 1385078916, 0, '', -1, -1, 0, 0, '', 0, 0, '', 0),
(62, 119, 'ECS000062', '资生堂冰凉美体塑身啫哩200ml', '', '+', 73, 33, '', 999, '0.000', '380.00', '269.00', '0.00', 0, 0, 1, '', '', '', '', 'images/201311/thumb_img/62_thumb_G_1385079097648.jpg', 'images/201311/goods_img/62_G_1385079097269.jpg', 'images/201311/source_img/62_G_1385079097858.jpg', 1, '', 1, 1, 0, 2, 1385079097, 100, 0, 0, 0, 0, 0, 0, 1385079097, 0, '', -1, -1, 0, 0, '', 0, 0, '', 0),
(63, 126, 'ECS000063', '菲诗小铺牛奶温和美白保湿身体乳', '', '+', 1, 34, '', 999, '0.000', '65.00', '49.00', '0.00', 0, 0, 1, '', '', '', '', 'images/201311/thumb_img/63_thumb_G_1385079290990.jpg', 'images/201311/goods_img/63_G_1385079290784.jpg', 'images/201311/source_img/63_G_1385079290143.jpg', 1, '', 1, 1, 0, 0, 1385079290, 100, 0, 0, 0, 0, 0, 0, 1385079290, 0, '', -1, -1, 0, 0, '', 0, 0, '', 0),
(64, 113, 'ECS000064', '多芬滋润顺滑柔亮沐浴露750ml', '', '+', 3, 35, '', 999, '0.000', '96.00', '35.00', '0.00', 0, 0, 1, '', '', '', '', 'images/201311/thumb_img/64_thumb_G_1385079432423.jpg', 'images/201311/goods_img/64_G_1385079432471.jpg', 'images/201311/source_img/64_G_1385079432888.jpg', 1, '', 1, 1, 0, 0, 1385079432, 100, 0, 0, 0, 0, 0, 0, 1385079432, 0, '', -1, -1, 0, 0, '', 0, 0, '', 0),
(65, 115, 'ECS000065', 'KOSE高丝美白深层滋润护手霜35g', '', '+', 5, 36, '', 999, '0.000', '49.00', '25.00', '0.00', 0, 0, 1, '', '', '', '', 'images/201311/thumb_img/65_thumb_G_1385079556429.jpg', 'images/201311/goods_img/65_G_1385079556681.jpg', 'images/201311/source_img/65_G_1385079556228.jpg', 1, '', 1, 1, 0, 0, 1385079556, 100, 0, 0, 0, 0, 0, 0, 1385079556, 0, '', -1, -1, 0, 0, '', 0, 0, '', 0),
(66, 120, 'ECS000066', 'NYR薰衣草精油10ml', '', '+', 3, 37, '', 999, '0.000', '85.00', '65.00', '0.00', 0, 0, 1, '', '', '', '', 'images/201311/thumb_img/66_thumb_G_1385079645540.jpg', 'images/201311/goods_img/66_G_1385079645872.jpg', 'images/201311/source_img/66_G_1385079645685.jpg', 1, '', 1, 1, 0, 0, 1385079645, 100, 0, 0, 0, 0, 0, 0, 1385079645, 0, '', -1, -1, 0, 0, '', 0, 0, '', 0),
(67, 115, 'ECS000067', '露得清护手配方56g（不含香精）', '', '+', 5, 38, '', 999, '0.000', '45.00', '39.00', '0.00', 0, 0, 1, '', '', '', '', 'images/201311/thumb_img/67_thumb_G_1385079757889.jpg', 'images/201311/goods_img/67_G_1385079757206.jpg', 'images/201311/source_img/67_G_1385079757147.png', 1, '', 1, 1, 0, 0, 1385079757, 100, 0, 0, 0, 0, 0, 0, 1385079757, 0, '', -1, -1, 0, 0, '', 0, 0, '', 0),
(68, 119, 'ECS000068', '魅力匙纤体紧肤精华乳200ml', '', '+', 7, 39, '', 999, '0.000', '550.00', '285.00', '0.00', 0, 0, 1, '', '', '', '', 'images/201311/thumb_img/68_thumb_G_1385079856970.jpg', 'images/201311/goods_img/68_G_1385079856327.jpg', 'images/201311/source_img/68_G_1385079856247.jpg', 1, '', 1, 1, 0, 2, 1385079856, 100, 0, 0, 0, 0, 0, 0, 1385079856, 0, '', -1, -1, 0, 0, '', 0, 0, '', 0),
(69, 84, 'ECS000069', '欧莱雅男士劲能醒肤四件套', '', '+', 2, 23, '', 999, '0.000', '350.00', '165.00', '0.00', 0, 0, 1, '', '', '', '', 'images/201311/thumb_img/69_thumb_G_1385079988785.jpg', 'images/201311/goods_img/69_G_1385079988608.jpg', 'images/201311/source_img/69_G_1385079988223.jpg', 1, '', 1, 1, 0, 1, 1385079988, 100, 0, 0, 0, 0, 0, 0, 1385079988, 0, '', -1, -1, 0, 0, '', 0, 0, '', 0),
(70, 85, 'ECS000070', '碧欧泉男士温泉保湿露75ml', '', '+', 4, 18, '', 999, '0.000', '450.00', '235.00', '0.00', 0, 0, 1, '', '', '', '', 'images/201311/thumb_img/70_thumb_G_1385080063413.jpg', 'images/201311/goods_img/70_G_1385080063612.jpg', 'images/201311/source_img/70_G_1385080063229.png', 1, '', 1, 1, 0, 2, 1385080063, 100, 0, 0, 0, 0, 0, 0, 1385080063, 0, '', -1, -1, 0, 0, '', 0, 0, '', 0),
(71, 77, 'ECS000071', '阿迪达斯男士征服沐浴露250ml', '', '+', 2, 40, '', 999, '0.000', '97.00', '39.00', '0.00', 0, 0, 1, '', '', '', '', 'images/201311/thumb_img/71_thumb_G_1385080144382.jpg', 'images/201311/goods_img/71_G_1385080144505.jpg', 'images/201311/source_img/71_G_1385080144301.png', 1, '', 1, 1, 0, 0, 1385080144, 100, 0, 0, 0, 0, 0, 0, 1385080144, 0, '', -1, -1, 0, 0, '', 0, 0, '', 0),
(72, 67, 'ECS000072', '菲诗小铺男士薄荷泡沫洗面奶170ml', '', '+', 6, 34, '', 999, '0.000', '88.00', '29.90', '0.00', 0, 0, 1, '', '', '', '', 'images/201311/thumb_img/72_thumb_G_1385080249807.jpg', 'images/201311/goods_img/72_G_1385080249335.jpg', 'images/201311/source_img/72_G_1385080249520.jpg', 1, '', 1, 1, 0, 0, 1385080249, 100, 0, 0, 0, 0, 0, 0, 1385080249, 0, '', -1, -1, 0, 0, '', 0, 0, '', 0),
(73, 72, 'ECS000073', '兰蔻男士极效保湿面霜50ml', '', '+', 3, 1, '', 999, '0.000', '488.00', '349.00', '0.00', 0, 0, 1, '', '', '', '', 'images/201311/thumb_img/73_thumb_G_1385080404489.jpg', 'images/201311/goods_img/73_G_1385080404816.jpg', 'images/201311/source_img/73_G_1385080404279.jpg', 1, '', 1, 1, 0, 3, 1385080404, 100, 0, 0, 0, 0, 0, 0, 1385080404, 0, '', -1, -1, 0, 0, '', 0, 0, '', 0),
(74, 83, 'ECS000074', '兰芝男士水份清爽两件套', '', '+', 2, 41, '', 999, '0.000', '480.00', '335.00', '0.00', 0, 0, 1, '', '', '', '', 'images/201311/thumb_img/74_thumb_G_1385080490581.jpg', 'images/201311/goods_img/74_G_1385080490834.jpg', 'images/201311/source_img/74_G_1385080490193.png', 1, '', 1, 1, 0, 3, 1385080490, 100, 0, 0, 0, 0, 0, 0, 1385080490, 0, '', -1, -1, 0, 0, '', 0, 0, '', 0),
(75, 67, 'ECS000075', '契尔氏男士全效洁面啫喱250ml', '', '+', 2, 42, '', 999, '0.000', '200.00', '179.00', '0.00', 0, 0, 1, '', '', '', '', 'images/201311/thumb_img/75_thumb_G_1385080576147.jpg', 'images/201311/goods_img/75_G_1385080576990.jpg', 'images/201311/source_img/75_G_1385080576705.jpg', 1, '', 1, 1, 0, 1, 1385080576, 100, 0, 0, 0, 0, 0, 0, 1385080576, 0, '', -1, -1, 0, 0, '', 0, 0, '', 0),
(76, 71, 'ECS000076', '阿玛尼黑钥匙男士精华液75ml', '', '+', 2, 43, '', 999, '0.000', '1200.00', '439.00', '0.00', 0, 0, 1, '', '', '', '', 'images/201311/thumb_img/76_thumb_G_1385080683962.jpg', 'images/201311/goods_img/76_G_1385080683643.jpg', 'images/201311/source_img/76_G_1385080683120.jpg', 1, '', 1, 1, 0, 4, 1385080683, 100, 0, 0, 0, 0, 0, 0, 1385080683, 0, '', -1, -1, 0, 0, '', 0, 0, '', 0),
(77, 67, 'ECS000077', '资生堂男士黑炭洁面膏130g', '', '+', 3, 33, '', 999, '0.000', '148.00', '49.00', '0.00', 0, 0, 1, '', '', '', '', 'images/201311/thumb_img/77_thumb_G_1385080762127.jpg', 'images/201311/goods_img/77_G_1385080762607.jpg', 'images/201311/source_img/77_G_1385080762203.png', 1, '', 1, 1, 0, 0, 1385080762, 100, 0, 0, 0, 0, 0, 0, 1385080762, 0, '', -1, -1, 0, 0, '', 0, 0, '', 0),
(78, 67, 'ECS000078', '倩碧男士洁面乳（加强型）150ml', '', '+', 5, 7, '', 999, '0.000', '220.00', '155.00', '0.00', 0, 0, 1, '', '', '', '', 'images/201311/thumb_img/78_thumb_G_1385080829383.jpg', 'images/201311/goods_img/78_G_1385080829449.jpg', 'images/201311/source_img/78_G_1385080829370.png', 1, '', 1, 1, 0, 1, 1385080829, 100, 0, 0, 0, 0, 0, 0, 1385080829, 0, '', -1, -1, 0, 0, '', 0, 0, '', 0);
INSERT INTO `ecs_goods` (`goods_id`, `cat_id`, `goods_sn`, `goods_name`, `goods_name_en`, `goods_name_style`, `click_count`, `brand_id`, `provider_name`, `goods_number`, `goods_weight`, `market_price`, `shop_price`, `promote_price`, `promote_start_date`, `promote_end_date`, `warn_number`, `keywords`, `goods_brief`, `goods_desc`, `goods_desc_en`, `goods_thumb`, `goods_img`, `original_img`, `is_real`, `extension_code`, `is_on_sale`, `is_alone_sale`, `is_shipping`, `integral`, `add_time`, `sort_order`, `is_delete`, `is_best`, `is_new`, `is_hot`, `is_promote`, `bonus_type_id`, `last_update`, `goods_type`, `seller_note`, `give_integral`, `rank_integral`, `suppliers_id`, `is_check`, `goods_shipai`, `comments_number`, `sales_volume`, `bb_chicun`, `sales_count`) VALUES
(79, 19, 'ECS000079', '雅顿2合1洗面奶150ml', '', '+', 0, 13, '', 999, '0.000', '150.00', '75.00', '0.00', 0, 0, 1, '', '', '', '', 'images/201311/thumb_img/79_thumb_G_1385660900460.jpg', 'images/201311/goods_img/79_G_1385660900045.jpg', 'images/201311/source_img/79_G_1385660900720.png', 1, '', 1, 1, 0, 0, 1385660900, 100, 0, 0, 0, 0, 0, 0, 1385660900, 0, '', -1, -1, 0, 0, '', 0, 0, '', 0),
(80, 19, 'ECS000080', '碧欧泉活泉爽肤洁面乳150ml', '', '+', 1, 18, '', 999, '0.000', '220.00', '169.00', '0.00', 0, 0, 1, '', '', '', '', 'images/201311/thumb_img/80_thumb_G_1385662269065.jpg', 'images/201311/goods_img/80_G_1385662269654.jpg', 'images/201311/source_img/80_G_1385662269583.png', 1, '', 1, 1, 0, 1, 1385662269, 100, 0, 0, 0, 0, 0, 0, 1385662269, 0, '', -1, -1, 0, 0, '', 0, 0, '', 0),
(81, 19, 'ECS000081', '资生堂洗颜专科泡沫洁面乳120g', '', '+', 1, 33, '', 999, '0.000', '140.00', '45.00', '0.00', 0, 0, 1, '', '', '', '', 'images/201311/thumb_img/81_thumb_G_1385662330594.jpg', 'images/201311/goods_img/81_G_1385662330548.jpg', 'images/201311/source_img/81_G_1385662330495.png', 1, '', 1, 1, 0, 0, 1385662330, 100, 0, 0, 0, 0, 0, 0, 1385662330, 0, '', -1, -1, 0, 0, '', 0, 0, '', 0),
(82, 19, 'ECS000082', '倩碧液体洁面皂加强型200ml', '', '+', 2, 7, '', 999, '0.000', '200.00', '159.00', '0.00', 0, 0, 1, '', '', '', '', 'images/201311/thumb_img/82_thumb_G_1385662403961.jpg', 'images/201311/goods_img/82_G_1385662403414.jpg', 'images/201311/source_img/82_G_1385662403979.png', 1, '', 1, 1, 0, 1, 1385662403, 100, 0, 0, 0, 0, 0, 0, 1385662403, 0, '', -1, -1, 0, 0, '', 0, 0, '', 0),
(83, 19, 'ECS000083', '兰蔻清滢柔肤洁面乳(粉)125ml', '', '+', 3, 1, '', 999, '0.000', '320.00', '229.00', '0.00', 0, 0, 1, '', '', '', '', 'images/201311/thumb_img/83_thumb_G_1385662459881.jpg', 'images/201311/goods_img/83_G_1385662459807.jpg', 'images/201311/source_img/83_G_1385662459954.png', 1, '', 1, 1, 0, 2, 1385662459, 100, 0, 0, 0, 0, 0, 0, 1385662459, 0, '', -1, -1, 0, 0, '', 0, 0, '', 0),
(84, 19, 'ECS000084', '菲诗小铺水蜜桃泡沫洁面乳170ml', '', '+', 0, 34, '', 999, '0.000', '79.00', '29.90', '0.00', 0, 0, 1, '', '', '', '', 'images/201311/thumb_img/84_thumb_G_1385662516196.jpg', 'images/201311/goods_img/84_G_1385662516178.jpg', 'images/201311/source_img/84_G_1385662516703.png', 1, '', 1, 1, 0, 0, 1385662516, 100, 0, 0, 0, 0, 0, 0, 1385662516, 0, '', -1, -1, 0, 0, '', 0, 0, '', 0),
(85, 19, 'ECS000085', '茱莉蔻亮肌柔润泡沫洁面乳200ml', '', '+', 0, 15, '', 999, '0.000', '299.00', '199.00', '0.00', 0, 0, 1, '', '', '', '', 'images/201311/thumb_img/85_thumb_G_1385662574943.jpg', 'images/201311/goods_img/85_G_1385662574094.jpg', 'images/201311/source_img/85_G_1385662574145.png', 1, '', 1, 1, 0, 1, 1385662574, 100, 0, 0, 0, 0, 0, 0, 1385662574, 0, '', -1, -1, 0, 0, '', 0, 0, '', 0),
(86, 19, 'ECS000086', ' 菲诗小铺绿豆洗面奶170ml', '', '+', 0, 34, '', 999, '0.000', '75.00', '29.90', '0.00', 0, 0, 1, '', '', '', '', 'images/201311/thumb_img/86_thumb_G_1385662630337.jpg', 'images/201311/goods_img/86_G_1385662630968.jpg', 'images/201311/source_img/86_G_1385662630713.png', 1, '', 1, 1, 0, 0, 1385662630, 100, 0, 0, 0, 0, 0, 0, 1385662630, 0, '', -1, -1, 0, 0, '', 0, 0, '', 0),
(87, 19, 'ECS000087', ' 欧树蜂蜜洁面凝胶400ml', '', '+', 0, 44, '', 999, '0.000', '240.00', '179.00', '0.00', 0, 0, 1, '', '', '', '', 'images/201311/thumb_img/87_thumb_G_1385662805914.jpg', 'images/201311/goods_img/87_G_1385662805396.jpg', 'images/201311/source_img/87_G_1385662805801.png', 1, '', 1, 1, 0, 1, 1385662805, 100, 0, 0, 0, 0, 0, 0, 1385662805, 0, '', -1, -1, 0, 0, '', 0, 0, '', 0),
(88, 19, 'ECS000088', '悠香伊绿茶味香皂150g', '', '+', 1, 45, '', 999, '0.000', '69.00', '39.90', '0.00', 0, 0, 1, '', '', '', '', 'images/201311/thumb_img/88_thumb_G_1385662944140.jpg', 'images/201311/goods_img/88_G_1385662944430.jpg', 'images/201311/source_img/88_G_1385662944414.png', 1, '', 1, 1, 0, 0, 1385662944, 100, 0, 0, 0, 0, 0, 0, 1385662944, 0, '', -1, -1, 0, 0, '', 0, 0, '', 0),
(89, 19, 'ECS000089', '娇兰纯净奥秘莲花洁面慕丝150ml', '', '+', 1, 12, '', 999, '0.000', '430.00', '279.00', '0.00', 0, 0, 1, '', '', '', '', 'images/201311/thumb_img/89_thumb_G_1385663017724.jpg', 'images/201311/goods_img/89_G_1385663017512.jpg', 'images/201311/source_img/89_G_1385663017615.png', 1, '', 1, 1, 0, 2, 1385663017, 100, 0, 0, 0, 0, 0, 0, 1385663017, 0, '', -1, -1, 0, 0, '', 0, 0, '', 0),
(90, 19, 'ECS000090', '迪奥雪晶灵透白亮采洁面泡沫110ml', '', '+', 1, 14, '', 999, '0.000', '380.00', '299.00', '0.00', 0, 0, 1, '', '', '', '', 'images/201311/thumb_img/90_thumb_G_1385663078304.jpg', 'images/201311/goods_img/90_G_1385663078230.jpg', 'images/201311/source_img/90_G_1385663078523.png', 1, '', 1, 1, 0, 2, 1385663078, 100, 0, 0, 0, 0, 0, 0, 1385663078, 0, '', -1, -1, 0, 0, '', 0, 0, '', 0),
(91, 19, 'ECS000091', '娇韵诗新款温和清洁乳干性绿200ml', '', '+', 1, 32, '', 999, '0.000', '216.00', '159.00', '0.00', 0, 0, 1, '', '', '', '', 'images/201311/thumb_img/91_thumb_G_1385663130681.jpg', 'images/201311/goods_img/91_G_1385663130842.jpg', 'images/201311/source_img/91_G_1385663130372.png', 1, '', 1, 1, 0, 1, 1385663130, 100, 0, 0, 0, 0, 0, 0, 1385663130, 0, '', -1, -1, 0, 0, '', 0, 0, '', 0),
(92, 19, 'ECS000092', 'SK-II护肤洁面膏120g', '', '+', 1, 46, '', 999, '0.000', '450.00', '299.00', '0.00', 0, 0, 1, '', '', '', '', 'images/201311/thumb_img/92_thumb_G_1385663188679.jpg', 'images/201311/goods_img/92_G_1385663188796.jpg', 'images/201311/source_img/92_G_1385663188445.png', 1, '', 1, 1, 0, 2, 1385663188, 100, 0, 0, 0, 0, 0, 0, 1385663188, 0, '', -1, -1, 0, 0, '', 0, 0, '', 0),
(93, 19, 'ECS000093', '姗娜豆乳美肌卸妆洗面膏150g', '', '+', 1, 47, '', 999, '0.000', '95.00', '69.00', '90.00', 1386230400, 1638691200, 1, '', '', '', '', 'images/201311/thumb_img/93_thumb_G_1385663259534.jpg', 'images/201311/goods_img/93_G_1385663259391.jpg', 'images/201311/source_img/93_G_1385663259823.png', 1, '', 1, 1, 0, 0, 1385663259, 100, 0, 0, 0, 0, 1, 0, 1386280954, 10, '', -1, -1, 0, 0, '', 0, 0, '', 0),
(94, 19, 'ECS000094', '韩国思美兰大米皂清系列莲花皂100g', '', '+', 1, 48, '', 999, '0.000', '45.00', '16.00', '0.00', 0, 0, 1, '', '', '', '', 'images/201311/thumb_img/94_thumb_G_1385663305976.jpg', 'images/201311/goods_img/94_G_1385663305663.jpg', 'images/201311/source_img/94_G_1385663305307.png', 1, '', 1, 1, 0, 0, 1385663305, 100, 0, 0, 0, 0, 0, 0, 1385663305, 0, '', -1, -1, 0, 0, '', 0, 0, '', 0),
(95, 19, 'ECS000095', ' 高丝雪肌精美白洗颜粉100g', '', '+', 1, 36, '', 999, '0.000', '280.00', '199.00', '0.00', 0, 0, 1, '', '', '', '', 'images/201311/thumb_img/95_thumb_G_1385663364250.jpg', 'images/201311/goods_img/95_G_1385663364177.jpg', 'images/201311/source_img/95_G_1385663364894.png', 1, '', 1, 1, 0, 1, 1385663364, 100, 0, 0, 0, 0, 0, 0, 1385666340, 10, '', -1, -1, 0, 0, '', 0, 0, '', 0),
(96, 19, 'ECS000096', '佰草集HERBORIST悦风舒润洁面', '', '+', 1, 49, '', 999, '0.000', '120.00', '99.00', '0.00', 0, 0, 1, '', '', '', '', 'images/201311/thumb_img/96_thumb_G_1385663452131.jpg', 'images/201311/goods_img/96_G_1385663452415.jpg', 'images/201311/source_img/96_G_1385663452477.png', 1, '', 1, 1, 0, 0, 1385663452, 100, 0, 0, 0, 0, 0, 0, 1385666312, 10, '', -1, -1, 0, 0, '', 0, 0, '', 0),
(97, 19, 'ECS000097', '瑞尔薇黛活颜洁肤乳200ml', '', '+', 1, 50, '', 999, '0.000', '380.00', '219.00', '0.00', 0, 0, 1, '', '', '', '', 'images/201311/thumb_img/97_thumb_G_1385663513701.jpg', 'images/201311/goods_img/97_G_1385663513244.jpg', 'images/201311/source_img/97_G_1385663513814.png', 1, '', 1, 1, 0, 2, 1385663513, 100, 0, 0, 0, 0, 0, 0, 1385666291, 10, '', -1, -1, 0, 0, '', 0, 0, '', 0),
(98, 19, 'ECS000098', '和汉方月光面膜洁面皂（月光皂）', '', '+', 1, 51, '', 999, '0.000', '400.00', '299.00', '0.00', 0, 0, 1, '', '', '', '', 'images/201311/thumb_img/98_thumb_G_1385663578335.jpg', 'images/201311/goods_img/98_G_1385663578167.jpg', 'images/201311/source_img/98_G_1385663578609.png', 1, '', 1, 1, 0, 2, 1385663578, 100, 0, 0, 0, 0, 0, 0, 1385666272, 10, '', -1, -1, 0, 0, '', 0, 0, '', 0),
(99, 19, 'ECS000099', '雅诗兰黛深层净肌洁面泡沫150ml', '', '+', 3, 2, '', 999, '0.000', '310.00', '199.00', '0.00', 0, 0, 1, '', '', '', '', 'images/201311/thumb_img/99_thumb_G_1385663653180.jpg', 'images/201311/goods_img/99_G_1385663653247.jpg', 'images/201311/source_img/99_G_1385663653018.png', 1, '', 1, 1, 0, 1, 1385663653, 100, 0, 0, 0, 0, 0, 0, 1385666254, 10, '', -1, -1, 0, 0, '', 0, 0, '', 0),
(100, 19, 'ECS000100', '可莱丝茶树油洗面奶170ml', '', '+', 2, 52, '', 999, '0.000', '120.00', '55.00', '0.00', 0, 0, 1, '', '', '', '', 'images/201311/thumb_img/100_thumb_G_1385663712695.jpg', 'images/201311/goods_img/100_G_1385663712050.jpg', 'images/201311/source_img/100_G_1385663712598.png', 1, '', 1, 1, 0, 0, 1385663712, 100, 0, 0, 0, 0, 0, 0, 1385666237, 10, '', -1, -1, 0, 0, '', 0, 0, '', 0),
(101, 19, 'ECS000101', '泊美植物奢白致臻悦白洁面膏120g', '', '+', 2, 53, '', 999, '0.000', '110.00', '69.00', '0.00', 0, 0, 1, '', '', '', '', 'images/201311/thumb_img/101_thumb_G_1385663770632.jpg', 'images/201311/goods_img/101_G_1385663770228.jpg', 'images/201311/source_img/101_G_1385663770480.png', 1, '', 1, 1, 0, 0, 1385663770, 100, 0, 0, 0, 0, 0, 0, 1385663770, 0, '', -1, -1, 0, 0, '', 0, 0, '', 0),
(102, 19, 'ECS000102', '欧珀莱柔润洁面膏125g', '', '+', 1, 54, '', 999, '0.000', '90.00', '71.90', '0.00', 0, 0, 1, '', '', '', '', 'images/201311/thumb_img/102_thumb_G_1385663846517.jpg', 'images/201311/goods_img/102_G_1385663846352.jpg', 'images/201311/source_img/102_G_1385663846921.png', 1, '', 1, 1, 0, 0, 1385663846, 100, 0, 0, 0, 0, 0, 0, 1385666220, 10, '', -1, -1, 0, 0, '', 0, 0, '', 0),
(103, 19, 'ECS000103', '丝塔芙温和洁面乳237ml', '', '+', 1, 55, '', 999, '0.000', '98.00', '79.00', '0.00', 0, 0, 1, '', '', '', '', 'images/201311/thumb_img/103_thumb_G_1385663900411.jpg', 'images/201311/goods_img/103_G_1385663900299.jpg', 'images/201311/source_img/103_G_1385663900685.png', 1, '', 1, 1, 0, 0, 1385663900, 100, 0, 0, 0, 0, 0, 0, 1385666202, 10, '', -1, -1, 0, 0, '', 0, 0, '', 0),
(104, 19, 'ECS000104', '植村秀绿茶舒润洁颜油150ml', '', '+', 2, 56, '', 999, '0.000', '320.00', '229.00', '0.00', 0, 0, 1, '', '', '', '', 'images/201311/thumb_img/104_thumb_G_1385663955516.jpg', 'images/201311/goods_img/104_G_1385663955450.jpg', 'images/201311/source_img/104_G_1385663955904.png', 1, '', 1, 1, 0, 2, 1385663955, 100, 0, 0, 0, 0, 0, 0, 1385666184, 10, '', -1, -1, 0, 0, '', 0, 0, '', 0),
(105, 19, 'ECS000105', '婵真银杏天然泡沫洁面霜200g', '', '+', 1, 57, '', 999, '0.000', '118.00', '59.00', '0.00', 0, 0, 1, '', '', '', '', 'images/201311/thumb_img/105_thumb_G_1385664010405.jpg', 'images/201311/goods_img/105_G_1385664010688.jpg', 'images/201311/source_img/105_G_1385664010377.png', 1, '', 1, 1, 0, 0, 1385664010, 100, 0, 0, 0, 0, 0, 0, 1385666168, 10, '', -1, -1, 0, 0, '', 0, 0, '', 0),
(106, 19, 'ECS000106', '嘉娜宝芦荟泡沫洗面奶110g', '', '+', 1, 58, '', 999, '0.000', '110.00', '39.00', '0.00', 0, 0, 1, '', '', '', '', 'images/201311/thumb_img/106_thumb_G_1385664056103.jpg', 'images/201311/goods_img/106_G_1385664056941.jpg', 'images/201311/source_img/106_G_1385664056133.png', 1, '', 1, 1, 0, 0, 1385664056, 100, 0, 0, 0, 0, 0, 0, 1385666152, 10, '', -1, -1, 0, 0, '', 0, 0, '', 0),
(107, 19, 'ECS000107', '英国AA网洋甘菊手工皂125g', '', '+', 1, 59, '', 999, '0.000', '75.00', '29.90', '0.00', 0, 0, 1, '', '', '', '', 'images/201311/thumb_img/107_thumb_G_1385664113623.jpg', 'images/201311/goods_img/107_G_1385664113015.jpg', 'images/201311/source_img/107_G_1385664113624.png', 1, '', 1, 1, 0, 0, 1385664113, 100, 0, 0, 0, 0, 0, 0, 1385666137, 10, '', -1, -1, 0, 0, '', 0, 0, '', 0),
(108, 19, 'ECS000108', '雅漾舒缓特护洁面乳50ml', '', '+', 2, 60, '', 999, '0.000', '198.00', '139.00', '0.00', 0, 0, 1, '', '', '', '', 'images/201311/thumb_img/108_thumb_G_1385664182198.jpg', 'images/201311/goods_img/108_G_1385664182755.jpg', 'images/201311/source_img/108_G_1385664182490.png', 1, '', 1, 1, 0, 1, 1385664182, 100, 0, 0, 0, 0, 0, 0, 1385666118, 10, '', -1, -1, 0, 0, '', 0, 0, '', 0),
(109, 19, 'ECS000109', '兰芝多效四合一泡沫洗面奶180ml', '', '+', 11, 41, '', 999, '0.000', '205.00', '129.00', '120.00', 1386230400, 1764921600, 1, '', '', '', '', 'images/201311/thumb_img/109_thumb_G_1385664262468.jpg', 'images/201311/goods_img/109_G_1385664262001.jpg', 'images/201311/source_img/109_G_1385664262736.png', 1, '', 1, 1, 0, 1, 1385664262, 100, 0, 0, 0, 0, 1, 0, 1386281019, 10, '', -1, -1, 0, 0, '', 0, 0, '', 1),
(110, 11, 'ECS000110', '契尔氏蓝色草本洁肤啫喱250ml', '', '+', 1, 61, '', 999, '0.000', '300.00', '229.00', '0.00', 0, 0, 1, '', '', '', '', 'images/201311/thumb_img/110_thumb_G_1385664404109.jpg', 'images/201311/goods_img/110_G_1385664404054.jpg', 'images/201311/source_img/110_G_1385664404362.png', 1, '', 1, 1, 0, 2, 1385664404, 100, 0, 0, 0, 0, 0, 0, 1390431702, 10, '', -1, -1, 0, 0, '', 0, 0, '', 0),
(111, 11, 'ECS000111', '彼得罗夫温和洁面泡沫200ml', '', '+', 1, 62, '', 999, '0.000', '284.00', '169.00', '0.00', 0, 0, 1, '', '', '', '', 'images/201311/thumb_img/111_thumb_G_1385664456857.jpg', 'images/201311/goods_img/111_G_1385664456747.jpg', 'images/201311/source_img/111_G_1385664456723.png', 1, '', 1, 1, 0, 1, 1385664456, 100, 0, 0, 0, 0, 0, 0, 1390431621, 10, '', -1, -1, 0, 0, '', 0, 0, '', 0),
(112, 11, 'ECS000112', '欧莱雅清润抗油洁面膏100ml', '', '+', 1, 23, '', 999, '0.000', '85.00', '49.00', '0.00', 0, 0, 1, '', '', '', '', 'images/201311/thumb_img/112_thumb_G_1385664523158.jpg', 'images/201311/goods_img/112_G_1385664523094.jpg', 'images/201311/source_img/112_G_1385664523624.png', 1, '', 1, 1, 0, 0, 1385664523, 100, 0, 0, 0, 0, 0, 0, 1390431607, 10, '', -1, -1, 0, 0, '', 0, 0, '', 0),
(113, 11, 'ECS000113', ' 希思黎百合保湿洁面乳250ml', '', '+', 9, 63, '', 999, '0.000', '720.00', '429.00', '420.00', 1386230400, 1638691200, 1, '', '使肌肤光滑水嫩， 补充水份，提升肌肤自身的保湿能力，让肌肤由内而外水嫩光彩。', '', '', 'images/201311/thumb_img/113_thumb_G_1385664621256.jpg', 'images/201311/goods_img/113_G_1385664621804.jpg', 'images/201311/source_img/113_G_1385664621805.png', 1, '', 1, 1, 0, 4, 1385664621, 100, 0, 0, 0, 0, 1, 0, 1390431736, 10, '', -1, -1, 0, 0, '', 0, 0, '', 0),
(114, 8, 'ECS000114', '思亲肤绿茶泡沫洁面摩丝160ml', '', '+', 50, 24, '', 999, '0.000', '105.00', '59.00', '0.00', 0, 0, 1, '', '能补充肌肤的胶原蛋白含量，维持和增强肌肤的弹性，同时强化肌肤的支撑系统，延缓皱纹的生成，让肌肤长期保持柔滑紧致。', '', '', 'images/201311/thumb_img/114_thumb_G_1385664673343.jpg', 'images/201311/goods_img/114_G_1385664673888.jpg', 'images/201311/source_img/114_G_1385664673956.png', 1, '', 1, 1, 0, 0, 1385664673, 100, 0, 1, 0, 0, 0, 0, 1390431790, 10, '', -1, -1, 0, 0, '', 0, 0, '', 5),
(115, 8, 'ECS000115', 'DHC橄榄滋养皂90g', '', '+', 10, 64, '', 999, '0.000', '110.00', '69.00', '65.00', 1386230400, 1701763200, 1, '', '', '', '', 'images/201311/thumb_img/115_thumb_G_1385664721067.jpg', 'images/201311/goods_img/115_G_1385664721378.jpg', 'images/201311/source_img/115_G_1385664721786.png', 1, '', 1, 1, 0, 0, 1385664721, 100, 0, 0, 0, 0, 1, 0, 1390431565, 10, '', -1, -1, 0, 0, '', 0, 0, '', 0),
(116, 8, 'ECS000116', 'JUJU透明质酸保湿洗面膏120g', '', '+', 12, 65, '', 999, '0.000', '150.00', '69.90', '0.00', 0, 0, 1, '', '专用的无酒精爽肤水，含玻尿酸和丰富的植物成分，密集保湿、镇定舒缓肌肤', '', '', 'images/201311/thumb_img/116_thumb_G_1385664773753.jpg', 'images/201311/goods_img/116_G_1385664773656.jpg', 'images/201311/source_img/116_G_1385664773038.png', 1, '', 1, 1, 0, 0, 1385664773, 100, 0, 0, 1, 0, 0, 0, 1390431768, 10, '', -1, -1, 0, 0, '', 0, 0, '', 0),
(117, 8, 'ECS000117', '嘉娜宝玫瑰药用洗面奶150g', '', '+', 13, 58, '', 999, '0.000', '95.00', '39.00', '0.00', 0, 0, 1, '', '', '', '', 'images/201311/thumb_img/117_thumb_G_1385664825588.jpg', 'images/201311/goods_img/117_G_1385664825027.jpg', 'images/201311/source_img/117_G_1385664825547.png', 1, '', 1, 1, 0, 0, 1385664825, 100, 0, 1, 0, 0, 0, 0, 1390431548, 10, '', -1, -1, 0, 0, '', 0, 0, '', 3),
(118, 8, 'ECS000118', ' 理肤泉特安洁面乳200ml', '', '+', 4, 66, '', 999, '0.000', '288.00', '119.00', '0.00', 0, 0, 1, '', '', '', '', 'images/201311/thumb_img/118_thumb_G_1385664875584.jpg', 'images/201311/goods_img/118_G_1385664875857.jpg', 'images/201311/source_img/118_G_1385664875300.png', 1, '', 1, 1, 0, 1, 1385664875, 100, 0, 0, 1, 0, 0, 0, 1390431533, 10, '', -1, -1, 0, 0, '', 0, 0, '', 0),
(119, 8, 'ECS000119', '蓓丽柔和泡沫洁面膏125ml', '', '+', 23, 67, '', 999, '0.000', '630.00', '350.00', '320.00', 1386230400, 1701763200, 1, '', '柔和泡沫洁面膏，雍容华贵的泡沫洁面产品，可让肌肤宁静清透带给肌肤立即清新和完美平滑的效果。适用于所有肌肤类型。', '', '', 'images/201311/thumb_img/119_thumb_G_1385664985753.jpg', 'images/201311/goods_img/119_G_1385664985247.jpg', 'images/201311/source_img/119_G_1385664985676.png', 1, '', 1, 1, 0, 3, 1385664985, 100, 0, 1, 0, 0, 1, 0, 1390431523, 10, '', -1, -1, 0, 0, '', 0, 0, '', 0),
(120, 8, 'ECS000120', '曼秀雷敦洁清爽卸妆洁面泡200ml', '', '+', 12, 68, '', 999, '0.000', '120.00', '49.00', '45.00', 1386230400, 1638691200, 1, '', '', '', '', 'images/201311/thumb_img/120_thumb_G_1385665066460.jpg', 'images/201311/goods_img/120_G_1385665066611.jpg', 'images/201311/source_img/120_G_1385665066843.png', 1, '', 1, 1, 0, 0, 1385665066, 100, 0, 0, 1, 0, 1, 0, 1390431512, 10, '', -1, -1, 0, 0, '', 0, 0, '', 0),
(121, 8, 'ECS000121', '肌研极润玻尿酸保湿沫面乳100g', '', '+', 12, 69, '', 999, '0.000', '89.00', '65.00', '60.00', 1386230400, 1638691200, 1, '', '', '', '', 'images/201311/thumb_img/121_thumb_G_1385665117605.jpg', 'images/201311/goods_img/121_G_1385665117258.jpg', 'images/201311/source_img/121_G_1385665117717.png', 1, '', 1, 1, 0, 0, 1385665117, 100, 0, 1, 0, 0, 1, 0, 1390431489, 10, '', -1, -1, 0, 0, '', 0, 0, '', 0),
(122, 8, 'ECS000122', '玫琳凯中性洗面乳绿2号', '', '+', 58, 70, '', 999, '0.000', '105.00', '69.00', '0.10', 1387180800, 1388390400, 1, '', '', '<p>&nbsp;111</p>', '', 'images/201311/thumb_img/122_thumb_G_1385665161614.jpg', 'images/201311/goods_img/122_G_1385665161854.jpg', 'images/201311/source_img/122_G_1385665161828.png', 1, '', 1, 1, 0, 0, 1385665161, 100, 0, 0, 1, 0, 1, 0, 1405981777, 10, '', -1, -1, 0, 0, '<p>&nbsp;222</p>', 0, 0, '', 1),
(123, 92, 'ECS000123', '迪奥红毒女士香水EDT 50ml', 'ff', '+', 1438, 14, '', 9998, '0.000', '820.00', '459.00', '400.00', 1390320000, 1705852800, 1, '', '', '<p>cc</p>', '<p>ee</p>', 'images/201312/thumb_img/123_thumb_G_1385947952157.jpg', 'images/201312/goods_img/123_G_1385945992313.jpg', 'images/201312/source_img/123_G_1385945992273.jpg', 1, '', 1, 1, 0, 4, 1385940473, 100, 0, 0, 0, 0, 1, 0, 1438368281, 11, '', -1, -1, 0, 0, '', 5, 2, '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `ecs_goods_activity`
--

CREATE TABLE IF NOT EXISTS `ecs_goods_activity` (
  `act_id` mediumint(8) unsigned NOT NULL,
  `act_name` varchar(255) NOT NULL,
  `act_desc` text NOT NULL,
  `act_type` tinyint(3) unsigned NOT NULL,
  `goods_id` mediumint(8) unsigned NOT NULL,
  `product_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `goods_name` varchar(255) NOT NULL,
  `start_time` int(10) unsigned NOT NULL,
  `end_time` int(10) unsigned NOT NULL,
  `is_finished` tinyint(3) unsigned NOT NULL,
  `ext_info` text NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ecs_goods_activity`
--

INSERT INTO `ecs_goods_activity` (`act_id`, `act_name`, `act_desc`, `act_type`, `goods_id`, `product_id`, `goods_name`, `start_time`, `end_time`, `is_finished`, `ext_info`) VALUES
(1, '夺宝奇兵之诺基亚N96', '新一轮的夺宝开始了\n本期是 诺基亚n96', 0, 23, 0, '诺基亚N96', 1242107580, 1242193980, 0, 'a:4:{s:11:"start_price";s:4:"1.00";s:9:"end_price";s:6:"800.00";s:9:"max_price";i:0;s:11:"cost_points";s:1:"1";}'),
(2, '夺宝奇兵之夏新N7', '本期的夺宝奖品是 夏新N7', 0, 17, 0, '夏新N7', 1242107820, 1250661420, 0, 'a:4:{s:11:"start_price";s:4:"1.00";s:9:"end_price";s:6:"800.00";s:9:"max_price";i:0;s:11:"cost_points";s:1:"1";}'),
(11, 'P806', '', 1, 24, 0, 'P806', 1384848000, 1826956800, 0, 'a:4:{s:12:"price_ladder";a:1:{i:0;a:2:{s:6:"amount";i:8;s:5:"price";d:55;}}s:15:"restrict_amount";i:50;s:13:"gift_integral";i:60;s:7:"deposit";d:60;}'),
(12, 'KD876', '', 1, 1, 0, 'KD876', 1384848000, 1921651200, 0, 'a:4:{s:12:"price_ladder";a:1:{i:0;a:2:{s:6:"amount";i:9;s:5:"price";d:80;}}s:15:"restrict_amount";i:9;s:13:"gift_integral";i:90;s:7:"deposit";d:90;}'),
(4, '拍卖活动——索爱C702c', '', 2, 10, 0, '索爱C702c', 1242144000, 1242403200, 0, 'a:5:{s:7:"deposit";d:0;s:11:"start_price";d:0;s:9:"end_price";i:0;s:9:"amplitude";d:20;s:6:"no_top";i:1;}'),
(5, '摩托罗拉E8 大礼包', '礼包大优惠', 4, 31, 0, '摩托罗拉E8 ', 1242110400, 1252046400, 0, 'a:1:{s:13:"package_price";s:4:"1430";}'),
(6, '诺基亚N85大礼包', '诺基亚N85超值大礼包', 4, 32, 0, '诺基亚N85', 1242110760, 1248936360, 0, 'a:1:{s:13:"package_price";s:4:"3150";}'),
(19, '希思黎轻柔护肤', '希思黎轻柔护肤 希思黎轻柔护肤 希思黎轻柔护肤 希思黎轻柔护肤', 2, 1, 14, '希思黎轻柔护肤西柚柔肤水250ml', 1388908800, 1767945600, 0, 'a:5:{s:7:"deposit";d:10;s:11:"start_price";d:10;s:9:"end_price";d:200;s:9:"amplitude";d:20;s:6:"no_top";i:0;}'),
(13, '索爱原装M2卡读卡器', '', 1, 5, 0, '索爱原装M2卡读卡器', 1384848000, 1953187200, 0, 'a:4:{s:12:"price_ladder";a:1:{i:0;a:2:{s:6:"amount";i:10;s:5:"price";d:18;}}s:15:"restrict_amount";i:10;s:13:"gift_integral";i:20;s:7:"deposit";d:20;}'),
(9, '诺基亚N85原装充电器', '', 1, 4, 0, '诺基亚N85原装充电器', 1384848000, 1826956800, 0, 'a:4:{s:12:"price_ladder";a:1:{i:0;a:2:{s:6:"amount";i:10;s:5:"price";d:50;}}s:15:"restrict_amount";i:100;s:13:"gift_integral";i:100;s:7:"deposit";d:0;}'),
(10, '金立 A30', '', 1, 21, 0, '金立 A30', 1384848000, 1921651200, 0, 'a:4:{s:12:"price_ladder";a:1:{i:0;a:2:{s:6:"amount";i:3;s:5:"price";d:78;}}s:15:"restrict_amount";i:30;s:13:"gift_integral";i:30;s:7:"deposit";d:30;}'),
(14, '雅诗兰黛红石榴鲜活晚霜50ml新', '', 1, 35, 0, '雅诗兰黛红石榴鲜活晚霜50ml新', 1384848000, 1953187200, 0, 'a:4:{s:12:"price_ladder";a:1:{i:0;a:2:{s:6:"amount";i:8;s:5:"price";d:489;}}s:15:"restrict_amount";i:10;s:13:"gift_integral";i:489;s:7:"deposit";d:489;}'),
(15, '兰蔻超塑颜5D提拉日霜法国版50ml', '', 1, 34, 0, '兰蔻超塑颜5D提拉日霜法国版50ml', 1384848000, 1858579200, 0, 'a:4:{s:12:"price_ladder";a:1:{i:0;a:2:{s:6:"amount";i:1;s:5:"price";d:589;}}s:15:"restrict_amount";i:0;s:13:"gift_integral";i:589;s:7:"deposit";d:589;}'),
(16, '兰蔻小黑瓶精华肌底液（新版）30ml', '', 1, 33, 0, '兰蔻小黑瓶精华肌底液（新版）30ml', 1384848000, 1826956800, 0, 'a:4:{s:12:"price_ladder";a:1:{i:0;a:2:{s:6:"amount";i:4;s:5:"price";d:498;}}s:15:"restrict_amount";i:0;s:13:"gift_integral";i:400;s:7:"deposit";d:400;}'),
(17, '雅顿保湿调理露200ml', '', 1, 12, 0, '雅顿保湿调理露200ml', 1384848000, 1921651200, 0, 'a:4:{s:12:"price_ladder";a:1:{i:0;a:2:{s:6:"amount";i:5;s:5:"price";d:78;}}s:15:"restrict_amount";i:0;s:13:"gift_integral";i:50;s:7:"deposit";d:50;}'),
(20, ' 迪奥EDP真我女士香水50ml', '', 1, 53, 0, ' 迪奥EDP真我女士香水50ml', 1389254400, 1390377600, 0, 'a:4:{s:12:"price_ladder";a:1:{i:0;a:2:{s:6:"amount";i:10;s:5:"price";d:280;}}s:15:"restrict_amount";i:20;s:13:"gift_integral";i:300;s:7:"deposit";d:300;}'),
(21, '迪奥红毒女士香水EDT 50ml', '', 1, 123, 0, '迪奥红毒女士香水EDT 50ml', 1389254400, 1390604400, 0, 'a:4:{s:12:"price_ladder";a:1:{i:0;a:2:{s:6:"amount";i:20;s:5:"price";d:260;}}s:15:"restrict_amount";i:30;s:13:"gift_integral";i:300;s:7:"deposit";d:300;}');

-- --------------------------------------------------------

--
-- Table structure for table `ecs_goods_article`
--

CREATE TABLE IF NOT EXISTS `ecs_goods_article` (
  `goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `article_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `admin_id` tinyint(3) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ecs_goods_article`
--

INSERT INTO `ecs_goods_article` (`goods_id`, `article_id`, `admin_id`) VALUES
(1, 27, 1),
(8, 28, 0),
(9, 8, 1),
(13, 29, 0),
(14, 29, 0),
(14, 31, 0),
(23, 8, 1),
(23, 30, 0),
(23, 31, 0),
(32, 8, 1),
(32, 30, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ecs_goods_attr`
--

CREATE TABLE IF NOT EXISTS `ecs_goods_attr` (
  `goods_attr_id` int(10) unsigned NOT NULL,
  `goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `attr_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `attr_value` text NOT NULL,
  `attr_price` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM AUTO_INCREMENT=324 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ecs_goods_attr`
--

INSERT INTO `ecs_goods_attr` (`goods_attr_id`, `goods_id`, `attr_id`, `attr_value`, `attr_price`) VALUES
(238, 1, 173, 'GSM,850,900,1800,1900', '0'),
(237, 1, 185, '灰色', ''),
(236, 1, 191, '支持', '0'),
(235, 1, 190, '支持', '0'),
(234, 1, 189, '2.4英寸', '0'),
(233, 1, 172, '2008年04月', '0'),
(228, 9, 178, '滑盖', '0'),
(227, 9, 185, '白色', '0'),
(226, 9, 185, '黑色', '10'),
(232, 8, 178, '直板', '0'),
(231, 8, 185, '黑色', ''),
(230, 8, 190, '支持', '0'),
(229, 8, 189, '1.75英寸', '0'),
(217, 13, 185, '黑色', ''),
(216, 13, 189, '2.0英寸', '0'),
(215, 13, 172, '2008年07月', '0'),
(225, 10, 178, '直板', '0'),
(221, 13, 178, '直板', '0'),
(222, 10, 172, '2008年05月', '0'),
(223, 10, 189, '2.2英寸', '0'),
(224, 10, 173, 'GSM,850,900,1800,1900', '0'),
(220, 13, 175, '300小时', '0'),
(219, 13, 174, '4小时', '0'),
(212, 14, 172, '2008年10月', '0'),
(213, 14, 185, '黑色', '0'),
(214, 14, 178, '直板', '0'),
(218, 13, 173, 'GSM,850,900,1800,1900', '0'),
(211, 15, 178, '直板', '0'),
(210, 15, 210, '线控耳机', '50'),
(200, 17, 189, '2.8英寸', '0'),
(201, 17, 185, '黑色', ''),
(202, 17, 173, 'CDMA', '0'),
(203, 17, 174, '8小时', '0'),
(204, 17, 175, '300小时', '0'),
(205, 17, 178, '直板', '0'),
(206, 15, 189, '2.2英寸', '0'),
(207, 15, 185, '黑色', ''),
(208, 15, 185, '白色', '20'),
(209, 15, 210, '数据线', '20'),
(196, 19, 185, '黑色', ''),
(197, 19, 185, '金色', '10'),
(198, 19, 185, '白色', '20'),
(199, 19, 178, '滑盖', '0'),
(195, 20, 173, 'GSM,900,1800,1900,2100', '0'),
(193, 20, 172, '2008年07月', '0'),
(194, 20, 185, '黑色', ''),
(187, 21, 180, 'T-Flash', '0'),
(189, 21, 210, '线控耳机', '50'),
(188, 21, 185, '黑色', ''),
(186, 22, 178, '直板', '0'),
(182, 22, 185, '黑色', ''),
(183, 22, 173, 'GSM,850,900,1800,1900', '0'),
(184, 22, 174, '6.5小时', '0'),
(185, 22, 175, '450小时', '0'),
(181, 22, 181, '288MB', '0'),
(180, 22, 180, 'microSD', '0'),
(179, 22, 172, '2008年12月', '0'),
(192, 21, 175, '100小时', '0'),
(191, 21, 174, '2.5小时', '0'),
(178, 23, 178, '滑盖', '0'),
(190, 21, 210, '数据线', '20'),
(176, 23, 174, '2.5小时', '0'),
(177, 23, 175, '200小时', '0'),
(173, 23, 188, '320×240 像素', '0'),
(174, 23, 189, '2.8英寸', '0'),
(175, 23, 185, '黑色', ''),
(172, 23, 182, 'Symbian OS 9.3操作系统', '0'),
(171, 23, 181, '256MB', '0'),
(170, 23, 172, '2008年09月', '0'),
(169, 24, 179, 'SMS', '0'),
(166, 24, 190, '支持', '0'),
(167, 24, 185, '灰色', ''),
(168, 24, 210, '数据线', '20'),
(165, 24, 183, '支持', '0'),
(164, 24, 172, '2008年06月', '0'),
(152, 32, 172, '2008年10月', '0'),
(153, 32, 180, 'MicroSD', '0'),
(154, 32, 181, '78MB', '0'),
(155, 32, 182, 'Symbian OS v9.3', '0'),
(156, 32, 189, '2.6英寸', '0'),
(157, 32, 210, '线控耳机', '50'),
(158, 32, 210, '蓝牙耳机', '100'),
(159, 32, 210, '数据线', '12'),
(160, 32, 173, 'GSM,850,900,1800,1900', '0'),
(161, 32, 174, '6.9 小时', '0'),
(162, 32, 175, '363 小时', '0'),
(163, 32, 185, '黑色', ''),
(239, 10, 185, '黑色', ''),
(240, 10, 185, '白色', ''),
(241, 122, 211, '美白', '0'),
(242, 122, 212, '油性', '0'),
(243, 121, 211, '修护', '0'),
(244, 121, 212, '干性', '0'),
(245, 120, 211, '保湿', '0'),
(246, 120, 212, '中性', '0'),
(247, 119, 211, '控油', '0'),
(248, 119, 212, '混合型', '0'),
(249, 118, 211, '活肤', '0'),
(250, 118, 212, '敏感性', '0'),
(251, 117, 211, '卸妆', '0'),
(252, 117, 212, '敏感性', '0'),
(253, 116, 211, '收缩', '0'),
(254, 116, 212, '油性', '0'),
(255, 115, 211, '毛孔', '0'),
(256, 115, 212, '干性', '0'),
(257, 114, 211, '抗敏感', '0'),
(258, 114, 212, '干性', '0'),
(259, 113, 211, '排毒', '0'),
(260, 113, 212, '中性', '0'),
(261, 112, 211, '祛斑', '0'),
(262, 112, 212, '混合型', '0'),
(263, 111, 211, '抗菌消炎', '0'),
(264, 111, 212, '敏感性', '0'),
(265, 110, 211, '去角质', '0'),
(266, 110, 212, '油性', '0'),
(267, 109, 211, '去黑头', '0'),
(268, 109, 212, '干性', '0'),
(269, 108, 211, '均匀肤色', '0'),
(270, 108, 212, '混合型', '0'),
(271, 107, 211, '镇静舒缓', '0'),
(272, 107, 212, '混合型', '0'),
(273, 106, 211, '去黑色素', '0'),
(274, 106, 212, '混合型', '0'),
(275, 105, 211, '调理肌肤', '0'),
(276, 105, 212, '中性', '0'),
(277, 104, 211, '清洁', '0'),
(278, 104, 212, '油性', '0'),
(279, 103, 211, '抗衰老', '0'),
(280, 103, 212, '干性', '0'),
(281, 102, 211, '祛痘', '0'),
(282, 102, 212, '中性', '0'),
(283, 100, 211, '补水', '0'),
(284, 100, 212, '干性', '0'),
(285, 99, 211, '去死皮', '0'),
(286, 99, 212, '油性', '0'),
(287, 98, 211, '淡斑', '0'),
(288, 98, 212, '混合型', '0'),
(289, 97, 211, '提亮肤色', '0'),
(290, 97, 212, '混合型', '0'),
(291, 96, 211, '清洁毛孔', '0'),
(292, 96, 212, '油性', '0'),
(293, 95, 211, '抗氧化', '0'),
(294, 95, 212, '混合型', '0'),
(295, 93, 211, '水油平衡', '0'),
(296, 93, 212, '混合型', '0'),
(297, 123, 213, '红色', ''),
(298, 123, 213, '黄色', ''),
(299, 123, 213, '金色', ''),
(300, 123, 214, '迪奥(Dior)', '0'),
(301, 123, 215, '东方香调，主要采用苦杏仁、茉莉和香草的香气', '0'),
(302, 123, 216, '50ml', '0'),
(303, 123, 217, '2012年9月', '0'),
(304, 123, 218, '法国', '0'),
(305, 123, 219, '全新专柜正装，有外盒有塑封。产品分有/无标签两种版本，随机发货', '0'),
(306, 123, 220, '所有女性，尤其适合成熟女性', '0'),
(307, 123, 221, '请将本品置于避光处保存，以免变质', '0'),
(308, 123, 222, '本产品属于贵重商品，售出之后无质量问题不支持退换货哦！请MM们注意哦！', '0'),
(309, 16, 214, '雅诗兰黛(ESTEE LAUDER)', '0'),
(310, 16, 215, '排除长期积累的毒素，去除黯沉，令双眼明亮充满朝气', '0'),
(311, 16, 216, '15ml', '0'),
(312, 16, 217, '2011年10月（具体以收到实物为准）', '0'),
(313, 16, 218, '美国', '0'),
(314, 16, 219, '商品全新，有外盒无塑封，两种包装，随机发货，具体以收到的产品为准', '0'),
(315, 16, 220, '适合所有人群，尤其想要双眼明亮充满朝气的MM', '0'),
(316, 16, 221, '请放置于阴凉干燥处，避免阳光直射', '0'),
(317, 16, 222, '本产品属于贵重商品，售出之后无质量问题不支持退换货哦！请MM们注意哦！', '0'),
(318, 16, 213, '红色', ''),
(319, 16, 213, '金色', ''),
(320, 16, 213, '黄色', ''),
(321, 12, 213, '红色', ''),
(322, 12, 213, '金色', ''),
(323, 12, 213, '黄色', '');

-- --------------------------------------------------------

--
-- Table structure for table `ecs_goods_cat`
--

CREATE TABLE IF NOT EXISTS `ecs_goods_cat` (
  `goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `cat_id` smallint(5) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ecs_goods_cat`
--

INSERT INTO `ecs_goods_cat` (`goods_id`, `cat_id`) VALUES
(8, 2),
(8, 5),
(16, 3),
(16, 5);

-- --------------------------------------------------------

--
-- Table structure for table `ecs_goods_gallery`
--

CREATE TABLE IF NOT EXISTS `ecs_goods_gallery` (
  `img_id` mediumint(8) unsigned NOT NULL,
  `goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `img_url` varchar(255) NOT NULL DEFAULT '',
  `img_desc` varchar(255) NOT NULL DEFAULT '',
  `thumb_url` varchar(255) NOT NULL DEFAULT '',
  `img_original` varchar(255) NOT NULL DEFAULT '',
  `img_order` mediumint(8) NOT NULL,
  `img_show_in_thumbnail` int(1) NOT NULL DEFAULT '1',
  `img_show_in_detail` int(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM AUTO_INCREMENT=164 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ecs_goods_gallery`
--

INSERT INTO `ecs_goods_gallery` (`img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original`, `img_order`, `img_show_in_thumbnail`, `img_show_in_detail`) VALUES
(1, 1, 'images/200905/goods_img/1_P_1240902890730.gif', '', 'images/200905/thumb_img/1_thumb_P_1240902890139.jpg', 'images/200905/source_img/1_P_1240902890193.gif', 0, 1, 1),
(2, 1, 'images/200905/goods_img/1_P_1240904370445.jpg', '', 'images/200905/thumb_img/1_thumb_P_1240904370846.jpg', 'images/200905/source_img/1_P_1240904370647.jpg', 0, 1, 1),
(3, 1, 'images/200905/goods_img/1_P_1240904371414.jpg', '', 'images/200905/thumb_img/1_thumb_P_1240904371539.jpg', 'images/200905/source_img/1_P_1240904371019.jpg', 0, 1, 1),
(4, 1, 'images/200905/goods_img/1_P_1240904371355.jpg', '', 'images/200905/thumb_img/1_thumb_P_1240904371335.jpg', 'images/200905/source_img/1_P_1240904371118.jpg', 0, 1, 1),
(5, 1, 'images/200905/goods_img/1_P_1240904371252.jpg', '', 'images/200905/thumb_img/1_thumb_P_1240904371430.jpg', 'images/200905/source_img/1_P_1240904371758.jpg', 0, 1, 1),
(6, 3, 'images/200905/goods_img/3_P_1241422082461.jpg', '', 'images/200905/thumb_img/3_thumb_P_1241422082160.jpg', 'images/200905/source_img/3_P_1241422082816.jpg', 0, 1, 1),
(7, 4, 'images/200905/goods_img/4_P_1241422402169.jpg', '', 'images/200905/thumb_img/4_thumb_P_1241422402909.jpg', 'images/200905/source_img/4_P_1241422402362.jpg', 0, 1, 1),
(8, 5, 'images/200905/goods_img/5_P_1241422518168.jpg', '', 'images/200905/thumb_img/5_thumb_P_1241422518416.jpg', 'images/200905/source_img/5_P_1241422518314.jpg', 0, 1, 1),
(9, 7, 'images/200905/goods_img/7_P_1241422785926.jpg', '', 'images/200905/thumb_img/7_thumb_P_1241422785889.jpg', 'images/200905/source_img/7_P_1241422785172.jpg', 0, 1, 1),
(10, 8, 'images/200905/goods_img/8_P_1241425513388.jpg', '', 'images/200905/thumb_img/8_thumb_P_1241425513834.jpg', 'images/200905/source_img/8_P_1241425513810.jpg', 0, 1, 1),
(11, 8, 'images/200905/goods_img/8_P_1241425891781.JPG', '正面', 'images/200905/thumb_img/8_thumb_P_1241425891460.jpg', 'images/200905/source_img/8_P_1241425891321.JPG', 0, 1, 1),
(12, 8, 'images/200905/goods_img/8_P_1241425891193.jpg', '背面', 'images/200905/thumb_img/8_thumb_P_1241425892547.jpg', 'images/200905/source_img/8_P_1241425891588.jpg', 0, 1, 1),
(13, 8, 'images/200905/goods_img/8_P_1241425892941.JPG', '侧面', 'images/200905/thumb_img/8_thumb_P_1241425892356.jpg', 'images/200905/source_img/8_P_1241425892999.JPG', 0, 1, 1),
(15, 12, 'images/200905/goods_img/12_P_1241965978060.jpg', '', 'images/200905/thumb_img/12_thumb_P_1241965978845.jpg', 'images/200905/source_img/12_P_1241965978333.jpg', 0, 1, 1),
(16, 12, 'images/200905/goods_img/12_P_1241966218046.jpg', '', 'images/200905/thumb_img/12_thumb_P_1241966218835.jpg', 'images/200905/source_img/12_P_1241966218225.jpg', 0, 1, 1),
(17, 12, 'images/200905/goods_img/12_P_1241966218391.jpg', '', 'images/200905/thumb_img/12_thumb_P_1241966218843.jpg', 'images/200905/source_img/12_P_1241966218859.jpg', 0, 1, 1),
(18, 13, 'images/200905/goods_img/13_P_1241967762510.jpg', '', 'images/200905/thumb_img/13_thumb_P_1241967762510.jpg', 'images/200905/source_img/13_P_1241967762358.jpg', 0, 1, 1),
(19, 13, 'images/200905/goods_img/13_P_1241968002659.jpg', '', 'images/200905/thumb_img/13_thumb_P_1241968002193.jpg', 'images/200905/source_img/13_P_1241968002709.jpg', 0, 1, 1),
(20, 14, 'images/200905/goods_img/14_P_1241968492774.jpg', '', 'images/200905/thumb_img/14_thumb_P_1241968492168.jpg', 'images/200905/source_img/14_P_1241968492973.jpg', 0, 1, 1),
(21, 14, 'images/200905/goods_img/14_P_1241968492721.jpg', '', 'images/200905/thumb_img/14_thumb_P_1241968492995.jpg', 'images/200905/source_img/14_P_1241968492307.jpg', 0, 1, 1),
(22, 14, 'images/200905/goods_img/14_P_1241968492279.jpg', '', 'images/200905/thumb_img/14_thumb_P_1241968492674.jpg', 'images/200905/source_img/14_P_1241968492392.jpg', 0, 1, 1),
(23, 16, 'images/200905/goods_img/16_P_1241968949498.jpg', '', 'images/200905/thumb_img/16_thumb_P_1241968949965.jpg', 'images/200905/source_img/16_P_1241968949069.jpg', 0, 1, 1),
(24, 17, 'images/200905/goods_img/17_P_1241969394354.jpg', '', 'images/200905/thumb_img/17_thumb_P_1241969394537.jpg', 'images/200905/source_img/17_P_1241969394369.jpg', 0, 1, 1),
(25, 19, 'images/200905/goods_img/19_P_1241970140820.jpg', '', 'images/200905/thumb_img/19_thumb_P_1241970140527.jpg', 'images/200905/source_img/19_P_1241970139925.jpg', 0, 1, 1),
(26, 19, 'images/200905/goods_img/19_P_1241970140600.jpg', '', 'images/200905/thumb_img/19_thumb_P_1241970140229.jpg', 'images/200905/source_img/19_P_1241970140187.jpg', 0, 1, 1),
(27, 19, 'images/200905/goods_img/19_P_1241970175007.jpg', '', 'images/200905/thumb_img/19_thumb_P_1241970175086.jpg', 'images/200905/source_img/19_P_1241970175028.jpg', 0, 1, 1),
(28, 22, 'images/200905/goods_img/22_P_1241971076061.jpg', '', 'images/200905/thumb_img/22_thumb_P_1241971076595.jpg', 'images/200905/source_img/22_P_1241971076696.jpg', 0, 1, 1),
(29, 23, 'images/200905/goods_img/23_P_1241971556661.jpg', '', 'images/200905/thumb_img/23_thumb_P_1241971556920.jpg', 'images/200905/source_img/23_P_1241971556122.jpg', 0, 1, 1),
(30, 24, 'images/200905/goods_img/24_P_1241971981420.jpg', '', 'images/200905/thumb_img/24_thumb_P_1241971981834.jpg', 'images/200905/source_img/24_P_1241971981824.jpg', 0, 1, 1),
(31, 25, 'images/200905/goods_img/25_P_1241972709888.jpg', '', 'images/200905/thumb_img/25_thumb_P_1241972709070.jpg', 'images/200905/source_img/25_P_1241972709222.jpg', 0, 1, 1),
(32, 26, 'images/200905/goods_img/26_P_1241972789025.jpg', '', 'images/200905/thumb_img/26_thumb_P_1241972789061.jpg', 'images/200905/source_img/26_P_1241972789731.jpg', 0, 1, 1),
(33, 27, 'images/200905/goods_img/27_P_1241972894128.jpg', '', 'images/200905/thumb_img/27_thumb_P_1241972894915.jpg', 'images/200905/source_img/27_P_1241972894886.jpg', 0, 1, 1),
(34, 28, 'images/200905/goods_img/28_P_1241972976099.jpg', '', 'images/200905/thumb_img/28_thumb_P_1241972976277.jpg', 'images/200905/source_img/28_P_1241972976150.jpg', 0, 1, 1),
(35, 29, 'images/200905/goods_img/29_P_1241973022876.jpg', '', 'images/200905/thumb_img/29_thumb_P_1241973022886.jpg', 'images/200905/source_img/29_P_1241973022880.jpg', 0, 1, 1),
(36, 30, 'images/200905/goods_img/30_P_1241973114554.jpg', '', 'images/200905/thumb_img/30_thumb_P_1241973114166.jpg', 'images/200905/source_img/30_P_1241973114795.jpg', 0, 1, 1),
(38, 20, 'images/200905/goods_img/20_P_1242106490582.jpg', '', 'images/200905/thumb_img/20_thumb_P_1242106490836.jpg', 'images/200905/source_img/20_P_1242106490796.jpg', 0, 1, 1),
(39, 21, 'images/200905/goods_img/21_P_1242109298519.jpg', '', 'images/200905/thumb_img/21_thumb_P_1242109298525.jpg', 'images/200905/source_img/21_P_1242109298459.jpg', 0, 1, 1),
(40, 31, 'images/200905/goods_img/31_P_1242110412503.jpg', '', 'images/200905/thumb_img/31_thumb_P_1242110412614.jpg', 'images/200905/source_img/31_P_1242110412152.jpg', 0, 1, 1),
(41, 32, 'images/200905/goods_img/32_P_1242110760641.jpg', '', 'images/200905/thumb_img/32_thumb_P_1242110760997.jpg', 'images/200905/source_img/32_P_1242110760203.jpg', 0, 1, 1),
(42, 15, 'images/200905/goods_img/15_P_1242973362276.jpg', '', 'images/200905/thumb_img/15_thumb_P_1242973362611.jpg', 'images/200905/source_img/15_P_1242973362172.jpg', 0, 1, 1),
(43, 10, 'images/200905/goods_img/10_P_1242973436620.jpg', '', 'images/200905/thumb_img/10_thumb_P_1242973436219.jpg', 'images/200905/source_img/10_P_1242973436898.jpg', 0, 1, 1),
(44, 9, 'images/201311/goods_img/9_P_1384986608041.jpg', '', 'images/201311/thumb_img/9_thumb_P_1384986608509.jpg', 'images/201311/source_img/9_P_1384986608844.jpg', 0, 1, 1),
(45, 9, 'images/201311/goods_img/9_P_1384987018219.jpg', '', 'images/201311/thumb_img/9_thumb_P_1384987018285.jpg', 'images/201311/source_img/9_P_1384987018317.jpg', 0, 1, 1),
(46, 1, 'images/201311/goods_img/1_P_1384988540992.jpg', '', 'images/201311/thumb_img/1_thumb_P_1384988540797.jpg', 'images/201311/source_img/1_P_1384988540720.jpg', 0, 1, 1),
(47, 8, 'images/201311/goods_img/8_P_1384988790534.jpg', '', 'images/201311/thumb_img/8_thumb_P_1384988790842.jpg', 'images/201311/source_img/8_P_1384988790304.jpg', 0, 1, 1),
(48, 32, 'images/201311/goods_img/32_P_1384991764984.jpg', '', 'images/201311/thumb_img/32_thumb_P_1384991764767.jpg', 'images/201311/source_img/32_P_1384991764847.jpg', 0, 1, 1),
(49, 19, 'images/201311/goods_img/19_P_1384994159375.jpg', '', 'images/201311/thumb_img/19_thumb_P_1384994159656.jpg', 'images/201311/source_img/19_P_1384994159296.jpg', 0, 1, 1),
(50, 20, 'images/201311/goods_img/20_P_1384994312604.jpg', '', 'images/201311/thumb_img/20_thumb_P_1384994312418.jpg', 'images/201311/source_img/20_P_1384994312109.jpg', 0, 1, 1),
(51, 17, 'images/201311/goods_img/17_P_1384994573474.jpg', '', 'images/201311/thumb_img/17_thumb_P_1384994573411.jpg', 'images/201311/source_img/17_P_1384994573368.jpg', 0, 1, 1),
(52, 22, 'images/201311/goods_img/22_P_1384994678624.jpg', '', 'images/201311/thumb_img/22_thumb_P_1384994678264.jpg', 'images/201311/source_img/22_P_1384994678746.jpg', 0, 1, 1),
(53, 16, 'images/201311/goods_img/16_P_1384995428480.jpg', '', 'images/201311/thumb_img/16_thumb_P_1384995428338.jpg', 'images/201311/source_img/16_P_1384995428280.jpg', 0, 1, 1),
(54, 12, 'images/201311/goods_img/12_P_1384995644112.jpg', '', 'images/201311/thumb_img/12_thumb_P_1384995644074.jpg', 'images/201311/source_img/12_P_1384995644361.jpg', 0, 1, 1),
(55, 33, 'images/201311/goods_img/33_P_1384995853099.jpg', '', 'images/201311/thumb_img/33_thumb_P_1384995853449.jpg', 'images/201311/source_img/33_P_1384995853371.jpg', 0, 1, 1),
(56, 34, 'images/201311/goods_img/34_P_1384996126644.jpg', '', 'images/201311/thumb_img/34_thumb_P_1384996126970.jpg', 'images/201311/source_img/34_P_1384996126024.jpg', 0, 1, 1),
(57, 35, 'images/201311/goods_img/35_P_1384996219160.jpg', '', 'images/201311/thumb_img/35_thumb_P_1384996219644.jpg', 'images/201311/source_img/35_P_1384996219237.jpg', 0, 1, 1),
(58, 36, 'images/201311/goods_img/36_P_1385070892592.jpg', '', 'images/201311/thumb_img/36_thumb_P_1385070892453.jpg', 'images/201311/source_img/36_P_1385070892203.jpg', 0, 1, 1),
(59, 37, 'images/201311/goods_img/37_P_1385071002213.png', '', 'images/201311/thumb_img/37_thumb_P_1385071002211.jpg', 'images/201311/source_img/37_P_1385071002522.png', 0, 1, 1),
(60, 38, 'images/201311/goods_img/38_P_1385071125350.jpg', '', 'images/201311/thumb_img/38_thumb_P_1385071125370.jpg', 'images/201311/source_img/38_P_1385071125733.jpg', 0, 1, 1),
(61, 39, 'images/201311/goods_img/39_P_1385071299484.jpg', '', 'images/201311/thumb_img/39_thumb_P_1385071299401.jpg', 'images/201311/source_img/39_P_1385071299431.jpg', 0, 1, 1),
(62, 40, 'images/201311/goods_img/40_P_1385071423029.jpg', '', 'images/201311/thumb_img/40_thumb_P_1385071423651.jpg', 'images/201311/source_img/40_P_1385071423087.jpg', 0, 1, 1),
(63, 41, 'images/201311/goods_img/41_P_1385071802579.jpg', '', 'images/201311/thumb_img/41_thumb_P_1385071802370.jpg', 'images/201311/source_img/41_P_1385071802629.jpg', 0, 1, 1),
(64, 41, 'images/201311/goods_img/41_P_1385071859624.jpg', '', 'images/201311/thumb_img/41_thumb_P_1385071859905.jpg', 'images/201311/source_img/41_P_1385071859016.jpg', 0, 1, 1),
(65, 42, 'images/201311/goods_img/42_P_1385071984547.jpg', '', 'images/201311/thumb_img/42_thumb_P_1385071984461.jpg', 'images/201311/source_img/42_P_1385071984604.jpg', 0, 1, 1),
(66, 43, 'images/201311/goods_img/43_P_1385072070127.jpg', '', 'images/201311/thumb_img/43_thumb_P_1385072070504.jpg', 'images/201311/source_img/43_P_1385072070419.jpg', 0, 1, 1),
(67, 44, 'images/201311/goods_img/44_P_1385072182258.png', '', 'images/201311/thumb_img/44_thumb_P_1385072182592.jpg', 'images/201311/source_img/44_P_1385072182615.png', 0, 1, 1),
(68, 45, 'images/201311/goods_img/45_P_1385072303927.jpg', '', 'images/201311/thumb_img/45_thumb_P_1385072303676.jpg', 'images/201311/source_img/45_P_1385072303247.jpg', 0, 1, 1),
(69, 46, 'images/201311/goods_img/46_P_1385072633608.jpg', '', 'images/201311/thumb_img/46_thumb_P_1385072633211.jpg', 'images/201311/source_img/46_P_1385072633015.jpg', 0, 1, 1),
(70, 24, 'images/201311/goods_img/24_P_1385074818063.png', '', 'images/201311/thumb_img/24_thumb_P_1385074818030.jpg', 'images/201311/source_img/24_P_1385074818763.png', 0, 1, 1),
(71, 23, 'images/201311/goods_img/23_P_1385075287679.jpg', '', 'images/201311/thumb_img/23_thumb_P_1385075287497.jpg', 'images/201311/source_img/23_P_1385075287782.jpg', 0, 1, 1),
(72, 21, 'images/201311/goods_img/21_P_1385075715200.png', '', 'images/201311/thumb_img/21_thumb_P_1385075715191.jpg', 'images/201311/source_img/21_P_1385075715792.png', 0, 1, 1),
(73, 14, 'images/201311/goods_img/14_P_1385076093751.png', '', 'images/201311/thumb_img/14_thumb_P_1385076093573.jpg', 'images/201311/source_img/14_P_1385076093190.png', 0, 1, 1),
(74, 13, 'images/201311/goods_img/13_P_1385076209186.jpg', '', 'images/201311/thumb_img/13_thumb_P_1385076209603.jpg', 'images/201311/source_img/13_P_1385076209144.jpg', 0, 1, 1),
(75, 10, 'images/201311/goods_img/10_P_1385076352266.png', '', 'images/201311/thumb_img/10_thumb_P_1385076352398.jpg', 'images/201311/source_img/10_P_1385076352937.png', 0, 1, 1),
(76, 47, 'images/201311/goods_img/47_P_1385076494768.jpg', '', 'images/201311/thumb_img/47_thumb_P_1385076494414.jpg', 'images/201311/source_img/47_P_1385076494339.jpg', 0, 1, 1),
(77, 48, 'images/201311/goods_img/48_P_1385076661264.jpg', '', 'images/201311/thumb_img/48_thumb_P_1385076661224.jpg', 'images/201311/source_img/48_P_1385076661435.jpg', 0, 1, 1),
(78, 49, 'images/201311/goods_img/49_P_1385076741392.jpg', '', 'images/201311/thumb_img/49_thumb_P_1385076741344.jpg', 'images/201311/source_img/49_P_1385076741941.jpg', 0, 1, 1),
(79, 49, 'images/201311/goods_img/49_P_1385076764916.png', '', 'images/201311/thumb_img/49_thumb_P_1385076764535.jpg', 'images/201311/source_img/49_P_1385076764695.png', 0, 1, 1),
(80, 50, 'images/201311/goods_img/50_P_1385076903562.jpg', '', 'images/201311/thumb_img/50_thumb_P_1385076903006.jpg', 'images/201311/source_img/50_P_1385076903275.jpg', 0, 1, 1),
(81, 51, 'images/201311/goods_img/51_P_1385077004408.jpg', '', 'images/201311/thumb_img/51_thumb_P_1385077004463.jpg', 'images/201311/source_img/51_P_1385077004251.jpg', 0, 1, 1),
(82, 52, 'images/201311/goods_img/52_P_1385077126665.jpg', '', 'images/201311/thumb_img/52_thumb_P_1385077126320.jpg', 'images/201311/source_img/52_P_1385077126441.jpg', 0, 1, 1),
(83, 53, 'images/201311/goods_img/53_P_1385077221338.jpg', '', 'images/201311/thumb_img/53_thumb_P_1385077221482.jpg', 'images/201311/source_img/53_P_1385077221763.jpg', 0, 1, 1),
(84, 54, 'images/201311/goods_img/54_P_1385077336951.jpg', '', 'images/201311/thumb_img/54_thumb_P_1385077336088.jpg', 'images/201311/source_img/54_P_1385077336529.jpg', 0, 1, 1),
(85, 55, 'images/201311/goods_img/55_P_1385077439306.jpg', '', 'images/201311/thumb_img/55_thumb_P_1385077439221.jpg', 'images/201311/source_img/55_P_1385077439007.jpg', 0, 1, 1),
(86, 56, 'images/201311/goods_img/56_P_1385077565363.jpg', '', 'images/201311/thumb_img/56_thumb_P_1385077565989.jpg', 'images/201311/source_img/56_P_1385077565270.jpg', 0, 1, 1),
(87, 57, 'images/201311/goods_img/57_P_1385077699351.jpg', '', 'images/201311/thumb_img/57_thumb_P_1385077699763.jpg', 'images/201311/source_img/57_P_1385077699756.jpg', 0, 1, 1),
(88, 58, 'images/201311/goods_img/58_P_1385078380907.jpg', '', 'images/201311/thumb_img/58_thumb_P_1385078380450.jpg', 'images/201311/source_img/58_P_1385078380880.jpg', 0, 1, 1),
(89, 59, 'images/201311/goods_img/59_P_1385078635938.png', '', 'images/201311/thumb_img/59_thumb_P_1385078635110.jpg', 'images/201311/source_img/59_P_1385078635510.png', 0, 1, 1),
(90, 60, 'images/201311/goods_img/60_P_1385078760180.jpg', '', 'images/201311/thumb_img/60_thumb_P_1385078760257.jpg', 'images/201311/source_img/60_P_1385078760462.jpg', 0, 1, 1),
(91, 61, 'images/201311/goods_img/61_P_1385078916546.jpg', '', 'images/201311/thumb_img/61_thumb_P_1385078916011.jpg', 'images/201311/source_img/61_P_1385078916134.jpg', 0, 1, 1),
(92, 62, 'images/201311/goods_img/62_P_1385079097901.jpg', '', 'images/201311/thumb_img/62_thumb_P_1385079097191.jpg', 'images/201311/source_img/62_P_1385079097179.jpg', 0, 1, 1),
(93, 63, 'images/201311/goods_img/63_P_1385079290276.jpg', '', 'images/201311/thumb_img/63_thumb_P_1385079290918.jpg', 'images/201311/source_img/63_P_1385079290227.jpg', 0, 1, 1),
(94, 64, 'images/201311/goods_img/64_P_1385079432022.jpg', '', 'images/201311/thumb_img/64_thumb_P_1385079432146.jpg', 'images/201311/source_img/64_P_1385079432743.jpg', 0, 1, 1),
(95, 65, 'images/201311/goods_img/65_P_1385079556757.jpg', '', 'images/201311/thumb_img/65_thumb_P_1385079556738.jpg', 'images/201311/source_img/65_P_1385079556485.jpg', 0, 1, 1),
(96, 66, 'images/201311/goods_img/66_P_1385079645204.jpg', '', 'images/201311/thumb_img/66_thumb_P_1385079645695.jpg', 'images/201311/source_img/66_P_1385079645023.jpg', 0, 1, 1),
(97, 67, 'images/201311/goods_img/67_P_1385079757664.png', '', 'images/201311/thumb_img/67_thumb_P_1385079757583.jpg', 'images/201311/source_img/67_P_1385079757081.png', 0, 1, 1),
(98, 68, 'images/201311/goods_img/68_P_1385079856220.jpg', '', 'images/201311/thumb_img/68_thumb_P_1385079856888.jpg', 'images/201311/source_img/68_P_1385079856687.jpg', 0, 1, 1),
(99, 69, 'images/201311/goods_img/69_P_1385079988039.jpg', '', 'images/201311/thumb_img/69_thumb_P_1385079988500.jpg', 'images/201311/source_img/69_P_1385079988727.jpg', 0, 1, 1),
(100, 70, 'images/201311/goods_img/70_P_1385080063533.png', '', 'images/201311/thumb_img/70_thumb_P_1385080063688.jpg', 'images/201311/source_img/70_P_1385080063106.png', 0, 1, 1),
(101, 71, 'images/201311/goods_img/71_P_1385080144078.png', '', 'images/201311/thumb_img/71_thumb_P_1385080144690.jpg', 'images/201311/source_img/71_P_1385080144116.png', 0, 1, 1),
(102, 72, 'images/201311/goods_img/72_P_1385080249795.jpg', '', 'images/201311/thumb_img/72_thumb_P_1385080249387.jpg', 'images/201311/source_img/72_P_1385080249400.jpg', 0, 1, 1),
(103, 73, 'images/201311/goods_img/73_P_1385080404571.jpg', '', 'images/201311/thumb_img/73_thumb_P_1385080404040.jpg', 'images/201311/source_img/73_P_1385080404196.jpg', 0, 1, 1),
(104, 74, 'images/201311/goods_img/74_P_1385080490716.png', '', 'images/201311/thumb_img/74_thumb_P_1385080490951.jpg', 'images/201311/source_img/74_P_1385080490195.png', 0, 1, 1),
(105, 75, 'images/201311/goods_img/75_P_1385080576868.jpg', '', 'images/201311/thumb_img/75_thumb_P_1385080576874.jpg', 'images/201311/source_img/75_P_1385080576485.jpg', 0, 1, 1),
(106, 76, 'images/201311/goods_img/76_P_1385080683405.jpg', '', 'images/201311/thumb_img/76_thumb_P_1385080683777.jpg', 'images/201311/source_img/76_P_1385080683545.jpg', 0, 1, 1),
(107, 77, 'images/201311/goods_img/77_P_1385080762347.png', '', 'images/201311/thumb_img/77_thumb_P_1385080762888.jpg', 'images/201311/source_img/77_P_1385080762221.png', 0, 1, 1),
(108, 78, 'images/201311/goods_img/78_P_1385080829431.png', '', 'images/201311/thumb_img/78_thumb_P_1385080829199.jpg', 'images/201311/source_img/78_P_1385080829444.png', 0, 1, 1),
(109, 79, 'images/201311/goods_img/79_P_1385660900668.png', '', 'images/201311/thumb_img/79_thumb_P_1385660900799.jpg', 'images/201311/source_img/79_P_1385660900982.png', 0, 1, 1),
(110, 80, 'images/201311/goods_img/80_P_1385662269339.png', '', 'images/201311/thumb_img/80_thumb_P_1385662269531.jpg', 'images/201311/source_img/80_P_1385662269084.png', 0, 1, 1),
(111, 81, 'images/201311/goods_img/81_P_1385662330754.png', '', 'images/201311/thumb_img/81_thumb_P_1385662330414.jpg', 'images/201311/source_img/81_P_1385662330511.png', 0, 1, 1),
(112, 82, 'images/201311/goods_img/82_P_1385662403121.png', '', 'images/201311/thumb_img/82_thumb_P_1385662403347.jpg', 'images/201311/source_img/82_P_1385662403830.png', 0, 1, 1),
(113, 83, 'images/201311/goods_img/83_P_1385662459600.png', '', 'images/201311/thumb_img/83_thumb_P_1385662459294.jpg', 'images/201311/source_img/83_P_1385662459321.png', 0, 1, 1),
(114, 84, 'images/201311/goods_img/84_P_1385662516968.png', '', 'images/201311/thumb_img/84_thumb_P_1385662516720.jpg', 'images/201311/source_img/84_P_1385662516667.png', 0, 1, 1),
(115, 85, 'images/201311/goods_img/85_P_1385662574099.png', '', 'images/201311/thumb_img/85_thumb_P_1385662574362.jpg', 'images/201311/source_img/85_P_1385662574466.png', 0, 1, 1),
(116, 86, 'images/201311/goods_img/86_P_1385662630113.png', '', 'images/201311/thumb_img/86_thumb_P_1385662630581.jpg', 'images/201311/source_img/86_P_1385662630882.png', 0, 1, 1),
(117, 87, 'images/201311/goods_img/87_P_1385662805351.png', '', 'images/201311/thumb_img/87_thumb_P_1385662805330.jpg', 'images/201311/source_img/87_P_1385662805656.png', 0, 1, 1),
(118, 88, 'images/201311/goods_img/88_P_1385662944776.png', '', 'images/201311/thumb_img/88_thumb_P_1385662944292.jpg', 'images/201311/source_img/88_P_1385662944056.png', 0, 1, 1),
(119, 89, 'images/201311/goods_img/89_P_1385663017223.png', '', 'images/201311/thumb_img/89_thumb_P_1385663017382.jpg', 'images/201311/source_img/89_P_1385663017963.png', 0, 1, 1),
(120, 90, 'images/201311/goods_img/90_P_1385663078516.png', '', 'images/201311/thumb_img/90_thumb_P_1385663078881.jpg', 'images/201311/source_img/90_P_1385663078725.png', 0, 1, 1),
(121, 91, 'images/201311/goods_img/91_P_1385663130490.png', '', 'images/201311/thumb_img/91_thumb_P_1385663130962.jpg', 'images/201311/source_img/91_P_1385663130352.png', 0, 1, 1),
(122, 92, 'images/201311/goods_img/92_P_1385663188791.png', '', 'images/201311/thumb_img/92_thumb_P_1385663188541.jpg', 'images/201311/source_img/92_P_1385663188366.png', 0, 1, 1),
(123, 93, 'images/201311/goods_img/93_P_1385663259994.png', '', 'images/201311/thumb_img/93_thumb_P_1385663259505.jpg', 'images/201311/source_img/93_P_1385663259500.png', 0, 1, 1),
(124, 94, 'images/201311/goods_img/94_P_1385663305784.png', '', 'images/201311/thumb_img/94_thumb_P_1385663305401.jpg', 'images/201311/source_img/94_P_1385663305088.png', 0, 1, 1),
(125, 95, 'images/201311/goods_img/95_P_1385663364782.png', '', 'images/201311/thumb_img/95_thumb_P_1385663364562.jpg', 'images/201311/source_img/95_P_1385663364311.png', 0, 1, 1),
(126, 96, 'images/201311/goods_img/96_P_1385663452318.png', '', 'images/201311/thumb_img/96_thumb_P_1385663452361.jpg', 'images/201311/source_img/96_P_1385663452238.png', 0, 1, 1),
(127, 97, 'images/201311/goods_img/97_P_1385663513818.png', '', 'images/201311/thumb_img/97_thumb_P_1385663513052.jpg', 'images/201311/source_img/97_P_1385663513183.png', 0, 1, 1),
(128, 98, 'images/201311/goods_img/98_P_1385663578987.png', '', 'images/201311/thumb_img/98_thumb_P_1385663578866.jpg', 'images/201311/source_img/98_P_1385663578110.png', 0, 1, 1),
(129, 99, 'images/201311/goods_img/99_P_1385663653442.png', '', 'images/201311/thumb_img/99_thumb_P_1385663653736.jpg', 'images/201311/source_img/99_P_1385663653681.png', 0, 1, 1),
(130, 100, 'images/201311/goods_img/100_P_1385663712028.png', '', 'images/201311/thumb_img/100_thumb_P_1385663712738.jpg', 'images/201311/source_img/100_P_1385663712077.png', 0, 1, 1),
(131, 101, 'images/201311/goods_img/101_P_1385663770698.png', '', 'images/201311/thumb_img/101_thumb_P_1385663770244.jpg', 'images/201311/source_img/101_P_1385663770226.png', 0, 1, 1),
(132, 102, 'images/201311/goods_img/102_P_1385663846204.png', '', 'images/201311/thumb_img/102_thumb_P_1385663846071.jpg', 'images/201311/source_img/102_P_1385663846314.png', 0, 1, 1),
(133, 103, 'images/201311/goods_img/103_P_1385663900814.png', '', 'images/201311/thumb_img/103_thumb_P_1385663900535.jpg', 'images/201311/source_img/103_P_1385663900473.png', 0, 1, 1),
(134, 104, 'images/201311/goods_img/104_P_1385663955432.png', '', 'images/201311/thumb_img/104_thumb_P_1385663955509.jpg', 'images/201311/source_img/104_P_1385663955307.png', 0, 1, 1),
(135, 105, 'images/201311/goods_img/105_P_1385664010650.png', '', 'images/201311/thumb_img/105_thumb_P_1385664010164.jpg', 'images/201311/source_img/105_P_1385664010792.png', 0, 1, 1),
(136, 106, 'images/201311/goods_img/106_P_1385664056766.png', '', 'images/201311/thumb_img/106_thumb_P_1385664056309.jpg', 'images/201311/source_img/106_P_1385664056821.png', 0, 1, 1),
(137, 107, 'images/201311/goods_img/107_P_1385664113396.png', '', 'images/201311/thumb_img/107_thumb_P_1385664113907.jpg', 'images/201311/source_img/107_P_1385664113514.png', 0, 1, 1),
(138, 108, 'images/201311/goods_img/108_P_1385664182316.png', '', 'images/201311/thumb_img/108_thumb_P_1385664182069.jpg', 'images/201311/source_img/108_P_1385664182702.png', 0, 1, 1),
(139, 109, 'images/201311/goods_img/109_P_1385664262819.png', '', 'images/201311/thumb_img/109_thumb_P_1385664262108.jpg', 'images/201311/source_img/109_P_1385664262016.png', 0, 1, 1),
(140, 110, 'images/201311/goods_img/110_P_1385664404845.png', '', 'images/201311/thumb_img/110_thumb_P_1385664404679.jpg', 'images/201311/source_img/110_P_1385664404159.png', 0, 1, 1),
(141, 111, 'images/201311/goods_img/111_P_1385664456529.png', '', 'images/201311/thumb_img/111_thumb_P_1385664456363.jpg', 'images/201311/source_img/111_P_1385664456571.png', 0, 1, 1),
(142, 112, 'images/201311/goods_img/112_P_1385664523465.png', '', 'images/201311/thumb_img/112_thumb_P_1385664523636.jpg', 'images/201311/source_img/112_P_1385664523708.png', 0, 1, 1),
(143, 113, 'images/201311/goods_img/113_P_1385664621855.png', '', 'images/201311/thumb_img/113_thumb_P_1385664621766.jpg', 'images/201311/source_img/113_P_1385664621483.png', 0, 1, 1),
(144, 114, 'images/201311/goods_img/114_P_1385664673819.png', '', 'images/201311/thumb_img/114_thumb_P_1385664673524.jpg', 'images/201311/source_img/114_P_1385664673838.png', 0, 1, 1),
(145, 115, 'images/201311/goods_img/115_P_1385664721669.png', '', 'images/201311/thumb_img/115_thumb_P_1385664721058.jpg', 'images/201311/source_img/115_P_1385664721090.png', 0, 1, 1),
(146, 116, 'images/201311/goods_img/116_P_1385664773261.png', '', 'images/201311/thumb_img/116_thumb_P_1385664773026.jpg', 'images/201311/source_img/116_P_1385664773293.png', 0, 1, 1),
(147, 117, 'images/201311/goods_img/117_P_1385664825443.png', '', 'images/201311/thumb_img/117_thumb_P_1385664825450.jpg', 'images/201311/source_img/117_P_1385664825444.png', 0, 1, 1),
(148, 118, 'images/201311/goods_img/118_P_1385664875126.png', '', 'images/201311/thumb_img/118_thumb_P_1385664875361.jpg', 'images/201311/source_img/118_P_1385664875791.png', 0, 1, 1),
(149, 119, 'images/201311/goods_img/119_P_1385664985376.png', '', 'images/201311/thumb_img/119_thumb_P_1385664985509.jpg', 'images/201311/source_img/119_P_1385664985314.png', 0, 1, 1),
(150, 120, 'images/201311/goods_img/120_P_1385665066816.png', '', 'images/201311/thumb_img/120_thumb_P_1385665066830.jpg', 'images/201311/source_img/120_P_1385665066680.png', 0, 1, 1),
(151, 121, 'images/201311/goods_img/121_P_1385665117361.png', '', 'images/201311/thumb_img/121_thumb_P_1385665117951.jpg', 'images/201311/source_img/121_P_1385665117389.png', 0, 1, 1),
(152, 122, 'images/201311/goods_img/122_P_1385665161033.png', '', 'images/201311/thumb_img/122_thumb_P_1385665161835.jpg', 'images/201311/source_img/122_P_1385665161965.png', 0, 1, 1),
(158, 123, 'images/201312/goods_img/123_P_1385945992047.jpg', 'w', 'images/201312/thumb_img/123_thumb_P_1385945992666.jpg', 'images/201312/source_img/123_P_1385945992261.jpg', 1, 1, 1),
(160, 123, 'images/201312/goods_img/123_P_1385946747210.jpg', 't2', 'images/201312/thumb_img/123_thumb_P_1385946747655.jpg', 'images/201312/source_img/123_P_1385946747448.jpg', 2, 0, 0),
(161, 123, 'images/201312/goods_img/123_P_1385946897215.jpg', 't3', 'images/201312/thumb_img/123_thumb_P_1385946897761.jpg', 'images/201312/source_img/123_P_1385946897260.jpg', 3, 1, 1),
(159, 123, 'images/201312/goods_img/123_P_1385946654885.jpg', 't4', 'images/201312/thumb_img/123_thumb_P_1385946654808.jpg', 'images/201312/source_img/123_P_1385946654117.jpg', 4, 0, 0),
(162, 123, 'images/201312/goods_img/123_P_1385947047265.jpg', 't5', 'images/201312/thumb_img/123_thumb_P_1385947047753.jpg', 'images/201312/source_img/123_P_1385947047825.jpg', 5, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ecs_goods_type`
--

CREATE TABLE IF NOT EXISTS `ecs_goods_type` (
  `cat_id` smallint(5) unsigned NOT NULL,
  `cat_name` varchar(60) NOT NULL DEFAULT '',
  `enabled` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `attr_group` varchar(255) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ecs_goods_type`
--

INSERT INTO `ecs_goods_type` (`cat_id`, `cat_name`, `enabled`, `attr_group`) VALUES
(1, '书', 1, ''),
(2, '音乐', 1, ''),
(3, '电影', 1, ''),
(4, '手机', 1, ''),
(5, '笔记本电脑', 1, ''),
(6, '数码相机', 1, ''),
(7, '数码摄像机', 1, ''),
(8, '化妆品', 1, ''),
(9, '精品手机', 1, ''),
(10, '护肤', 1, ''),
(11, '香水', 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `ecs_group_goods`
--

CREATE TABLE IF NOT EXISTS `ecs_group_goods` (
  `parent_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `goods_price` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `admin_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `group_id` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '配件分组'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ecs_group_goods`
--

INSERT INTO `ecs_group_goods` (`parent_id`, `goods_id`, `goods_price`, `admin_id`, `group_id`) VALUES
(9, 4, '58.00', 1, 0),
(9, 3, '68.00', 1, 0),
(9, 7, '100.00', 1, 0),
(14, 5, '20.00', 1, 0),
(14, 6, '42.00', 1, 0),
(14, 7, '100.00', 1, 0),
(123, 55, '159.00', 1, 2),
(123, 48, '459.00', 1, 1),
(123, 51, '209.00', 1, 1),
(123, 49, '179.00', 1, 1),
(123, 53, '679.00', 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `ecs_keywords`
--

CREATE TABLE IF NOT EXISTS `ecs_keywords` (
  `date` date NOT NULL DEFAULT '0000-00-00',
  `searchengine` varchar(20) NOT NULL DEFAULT '',
  `keyword` varchar(90) NOT NULL DEFAULT '',
  `count` mediumint(8) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ecs_keywords`
--

INSERT INTO `ecs_keywords` (`date`, `searchengine`, `keyword`, `count`) VALUES
('2009-04-21', 'ecshop', '诺基亚', 1),
('2009-04-27', 'ecshop', '智能手机', 1),
('2009-05-04', 'ecshop', '斤', 1),
('2009-05-10', 'ecshop', '诺基亚', 1),
('2009-05-11', 'ecshop', '智能手机', 1),
('2009-05-11', 'ecshop', '诺基亚', 1),
('2009-05-12', 'ecshop', '三星', 1),
('2009-05-12', 'ecshop', '智能手机', 1),
('2009-05-12', 'ecshop', 'p806', 1),
('2009-05-12', 'ecshop', '诺基亚', 1),
('2009-05-12', 'ecshop', '夏新', 1),
('2009-05-18', 'ecshop', '52', 2),
('2009-05-22', 'ecshop', 'p', 1),
('2013-10-30', 'ecshop', '11', 1),
('2013-12-02', 'ecshop', '雅诗兰黛即时修护眼部精华霜15ml', 2),
('2013-12-02', 'ecshop', '迪奥红毒女士香水EDT', 1),
('2013-12-02', 'ecshop', '50ml', 1),
('2013-12-13', 'ecshop', '雅诗兰黛鲜活营养红石榴眼霜15ml', 1),
('2013-12-13', 'ecshop', '雅诗兰黛', 1),
('2013-12-16', 'ecshop', '洁面', 43),
('2013-12-17', 'ecshop', '1', 3),
('2013-12-20', 'ecshop', '雅诗兰黛鲜活营养红石榴眼霜15ml', 7),
('2013-12-20', 'ecshop', '红石榴眼霜15ml', 1),
('2013-12-20', 'ecshop', 'KD876', 1),
('2013-12-20', 'ecshop', '1', 1),
('2013-12-20', 'ecshop', '石榴', 1),
('2013-12-20', 'ecshop', '5D', 1),
('2013-12-20', 'ecshop', '兰蔻超塑颜5D提拉日霜法国版50ml', 3),
('2013-12-20', 'ecshop', '眼霜', 1),
('2013-12-20', 'ecshop', '雅诗兰黛红石榴鲜活晚霜50ml新', 1),
('2013-12-20', 'ecshop', '索爱原装M2卡读卡器', 1),
('2013-12-20', 'ecshop', '雅顿保湿调理露200ml', 1),
('2013-12-27', 'ecshop', '雅诗兰黛鲜活营养红石榴眼霜15ml', 1),
('2014-01-06', 'ecshop', '11', 9),
('2014-01-22', 'ecshop', '111', 7),
('2014-01-22', 'ecshop', '11', 3),
('2014-07-21', 'ecshop', '美体小铺', 1),
('2014-07-22', 'ecshop', '美体小铺', 1),
('2014-07-24', 'ecshop', 'fgg', 1),
('2014-07-24', 'ecshop', '1', 1),
('2014-07-24', 'ecshop', '美体小铺', 2),
('2014-07-24', 'ecshop', '\\u7F8E\\u4F53\\u5C0F\\u94FA\\\\\\'' aNd \\\\\\''7\\\\\\''=\\\\\\''7', 2),
('2014-07-24', 'ecshop', '!S!WCRTESTINPUT000000!E!', 1),
('2014-07-24', 'ecshop', '\\u7F8E\\u4F53\\u5C0F\\u94FA\\\\\\'' aNd \\\\\\''7\\\\\\''=\\\\\\''2', 1),
('2014-07-24', 'ecshop', '!S!WCRTESTINPUT000000!E!\\\\\\'' aNd \\\\\\''7\\\\\\''=\\\\\\''7', 1),
('2014-07-24', 'ecshop', '!S!WCRTESTINPUT000000!E!\\\\\\'' aNd \\\\\\''7\\\\\\''=\\\\\\''2', 1),
('2014-07-24', 'ecshop', '1 aNd 7=7', 1),
('2014-07-24', 'ecshop', '1 aNd 7=2', 1),
('2014-07-24', 'ecshop', '99999999 oR 7=7', 1),
('2014-07-24', 'ecshop', '99999999 oR 7=2', 1),
('2014-07-25', 'ecshop', '美体小铺', 2),
('2014-07-25', 'ecshop', '???????', 1),
('2014-07-25', 'ecshop', '手机', 1),
('2014-07-25', 'ecshop', '安娜', 1),
('2014-07-26', 'BAIDU', 'q.yunmoban.cn', 1),
('2014-07-28', 'BAIDU', 'ECSHOP妯℃澘鍫傜背濂囩綉2014鑷冲皧鏃楄埌鐗', 1),
('2014-07-28', 'ecshop', '121', 1),
('2014-07-28', 'ecshop', 'fgf', 1),
('2014-07-28', 'ecshop', 'Huaz', 1),
('2014-07-28', 'ecshop', '美体小铺', 1),
('2014-07-28', 'ecshop', '11', 1),
('2015-07-25', 'ecshop', '香水', 7);

-- --------------------------------------------------------

--
-- Table structure for table `ecs_link_goods`
--

CREATE TABLE IF NOT EXISTS `ecs_link_goods` (
  `goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `link_goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `is_double` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `admin_id` tinyint(3) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ecs_link_goods`
--

INSERT INTO `ecs_link_goods` (`goods_id`, `link_goods_id`, `is_double`, `admin_id`) VALUES
(12, 9, 0, 1),
(12, 10, 0, 1),
(12, 11, 0, 1),
(9, 13, 1, 1),
(13, 9, 1, 1),
(14, 9, 0, 1),
(14, 13, 0, 1),
(23, 9, 0, 1),
(13, 23, 1, 1),
(23, 13, 1, 1),
(123, 52, 1, 1),
(123, 55, 1, 1),
(52, 123, 1, 1),
(55, 123, 1, 1),
(123, 49, 1, 1),
(123, 51, 1, 1),
(51, 123, 1, 1),
(49, 123, 1, 1),
(123, 53, 1, 1),
(123, 48, 1, 1),
(53, 123, 1, 1),
(48, 123, 1, 1),
(16, 80, 0, 1),
(16, 82, 0, 1),
(16, 85, 0, 1),
(16, 88, 0, 1),
(16, 90, 0, 1),
(16, 91, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `ecs_mail_templates`
--

CREATE TABLE IF NOT EXISTS `ecs_mail_templates` (
  `template_id` tinyint(1) unsigned NOT NULL,
  `template_code` varchar(30) NOT NULL DEFAULT '',
  `is_html` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `template_subject` varchar(200) NOT NULL DEFAULT '',
  `template_content` text NOT NULL,
  `last_modify` int(10) unsigned NOT NULL DEFAULT '0',
  `last_send` int(10) unsigned NOT NULL DEFAULT '0',
  `type` varchar(10) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ecs_mail_templates`
--

INSERT INTO `ecs_mail_templates` (`template_id`, `template_code`, `is_html`, `template_subject`, `template_content`, `last_modify`, `last_send`, `type`) VALUES
(1, 'send_password', 1, '密码找回', '{$user_name}您好！<br>\n<br>\n您已经进行了密码重置的操作，请点击以下链接(或者复制到您的浏览器):<br>\n<br>\n<a href="{$reset_email}" target="_blank">{$reset_email}</a><br>\n<br>\n以确认您的新密码重置操作！<br>\n<br>\n{$shop_name}<br>\n{$send_date}', 1194824789, 0, 'template'),
(2, 'order_confirm', 0, '订单确认通知', '亲爱的{$order.consignee}，你好！ \n\n我们已经收到您于 {$order.formated_add_time} 提交的订单，该订单编号为：{$order.order_sn} 请记住这个编号以便日后的查询。\n\n{$shop_name}\n{$sent_date}\n\n\n', 1158226370, 0, 'template'),
(3, 'deliver_notice', 1, '发货通知', '亲爱的{$order.consignee}。你好！</br></br>\n\n您的订单{$order.order_sn}已于{$send_time}按照您预定的配送方式给您发货了。</br>\n</br>\n{if $order.invoice_no}发货单号是{$order.invoice_no}。</br>{/if}\n</br>\n在您收到货物之后请点击下面的链接确认您已经收到货物：</br>\n<a href="{$confirm_url}" target="_blank">{$confirm_url}</a></br></br>\n如果您还没有收到货物可以点击以下链接给我们留言：</br></br>\n<a href="{$send_msg_url}" target="_blank">{$send_msg_url}</a></br>\n<br>\n再次感谢您对我们的支持。欢迎您的再次光临。 <br>\n<br>\n{$shop_name} </br>\n{$send_date}', 1194823291, 0, 'template'),
(4, 'order_cancel', 0, '订单取消', '亲爱的{$order.consignee}，你好！ \n\n您的编号为：{$order.order_sn}的订单已取消。\n\n{$shop_name}\n{$send_date}', 1156491130, 0, 'template'),
(5, 'order_invalid', 0, '订单无效', '亲爱的{$order.consignee}，你好！\n\n您的编号为：{$order.order_sn}的订单无效。\n\n{$shop_name}\n{$send_date}', 1156491164, 0, 'template'),
(6, 'send_bonus', 0, '发红包', '亲爱的{$user_name}您好！\n\n恭喜您获得了{$count}个红包，金额{if $count > 1}分别{/if}为{$money}\n\n{$shop_name}\n{$send_date}\n', 1156491184, 0, 'template'),
(7, 'group_buy', 1, '团购商品', '亲爱的{$consignee}，您好！<br>\n<br>\n您于{$order_time}在本店参加团购商品活动，所购买的商品名称为：{$goods_name}，数量：{$goods_number}，订单号为：{$order_sn}，订单金额为：{$order_amount}<br>\n<br>\n此团购商品现在已到结束日期，并达到最低价格，您现在可以对该订单付款。<br>\n<br>\n请点击下面的链接：<br>\n<a href="{$shop_url}" target="_blank">{$shop_url}</a><br>\n<br>\n请尽快登录到用户中心，查看您的订单详情信息。 <br>\n<br>\n{$shop_name} <br>\n<br>\n{$send_date}', 1194824668, 0, 'template'),
(8, 'register_validate', 1, '邮件验证', '{$user_name}您好！<br><br>\r\n\r\n这封邮件是 {$shop_name} 发送的。你收到这封邮件是为了验证你注册邮件地址是否有效。如果您已经通过验证了，请忽略这封邮件。<br>\r\n请点击以下链接(或者复制到您的浏览器)来验证你的邮件地址:<br>\r\n<a href="{$validate_email}" target="_blank">{$validate_email}</a><br><br>\r\n\r\n{$shop_name}<br>\r\n{$send_date}', 1162201031, 0, 'template'),
(9, 'virtual_card', 0, '虚拟卡片', '亲爱的{$order.consignee}\r\n你好！您的订单{$order.order_sn}中{$goods.goods_name} 商品的详细信息如下:\r\n{foreach from=$virtual_card item=card}\r\n{if $card.card_sn}卡号：{$card.card_sn}{/if}{if $card.card_password}卡片密码：{$card.card_password}{/if}{if $card.end_date}截至日期：{$card.end_date}{/if}\r\n{/foreach}\r\n再次感谢您对我们的支持。欢迎您的再次光临。\r\n\r\n{$shop_name} \r\n{$send_date}', 1162201031, 0, 'template'),
(10, 'attention_list', 0, '关注商品', '亲爱的{$user_name}您好~\n\n您关注的商品 : {$goods_name} 最近已经更新,请您查看最新的商品信息\n\n{$goods_url}\r\n\r\n{$shop_name} \r\n{$send_date}', 1183851073, 0, 'template'),
(11, 'remind_of_new_order', 0, '新订单通知', '亲爱的店长，您好：\n   快来看看吧，又有新订单了。\n    订单号:{$order.order_sn} \n 订单金额:{$order.order_amount}，\n 用户购买商品:{foreach from=$goods_list item=goods_data}{$goods_data.goods_name}(货号:{$goods_data.goods_sn})    {/foreach} \n\n 收货人:{$order.consignee}， \n 收货人地址:{$order.address}，\n 收货人电话:{$order.tel} {$order.mobile}, \n 配送方式:{$order.shipping_name}(费用:{$order.shipping_fee}), \n 付款方式:{$order.pay_name}(费用:{$order.pay_fee})。\n\n               系统提醒\n               {$send_date}', 1196239170, 0, 'template'),
(12, 'goods_booking', 1, '缺货回复', '亲爱的{$user_name}。你好！</br></br>{$dispose_note}</br></br>您提交的缺货商品链接为</br></br><a href="{$goods_link}" target="_blank">{$goods_name}</a></br><br>{$shop_name} </br>{$send_date}', 0, 0, 'template'),
(13, 'user_message', 1, '留言回复', '亲爱的{$user_name}。你好！</br></br>对您的留言：</br>{$message_content}</br></br>店主作了如下回复：</br>{$message_note}</br></br>您可以随时回到店中和店主继续沟通。</br>{$shop_name}</br>{$send_date}', 0, 0, 'template'),
(14, 'recomment', 1, '用户评论回复', '亲爱的{$user_name}。你好！</br></br>对您的评论：</br>“{$comment}”</br></br>店主作了如下回复：</br>“{$recomment}”</br></br>您可以随时回到店中和店主继续沟通。</br>{$shop_name}</br>{$send_date}', 0, 0, 'template');

-- --------------------------------------------------------

--
-- Table structure for table `ecs_member_price`
--

CREATE TABLE IF NOT EXISTS `ecs_member_price` (
  `price_id` mediumint(8) unsigned NOT NULL,
  `goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `user_rank` tinyint(3) NOT NULL DEFAULT '0',
  `user_price` decimal(10,2) NOT NULL DEFAULT '0.00'
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ecs_member_price`
--

INSERT INTO `ecs_member_price` (`price_id`, `goods_id`, `user_rank`, `user_price`) VALUES
(1, 23, 3, '3200.00'),
(2, 23, 2, '3300.00'),
(3, 13, 3, '1100.00'),
(4, 13, 2, '1200.00');

-- --------------------------------------------------------

--
-- Table structure for table `ecs_nav`
--

CREATE TABLE IF NOT EXISTS `ecs_nav` (
  `id` mediumint(8) NOT NULL,
  `ctype` varchar(10) DEFAULT NULL,
  `cid` smallint(5) unsigned DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `ifshow` tinyint(1) NOT NULL,
  `vieworder` tinyint(1) NOT NULL,
  `opennew` tinyint(1) NOT NULL,
  `url` varchar(255) NOT NULL,
  `type` varchar(10) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ecs_nav`
--

INSERT INTO `ecs_nav` (`id`, `ctype`, `cid`, `name`, `ifshow`, `vieworder`, `opennew`, `url`, `type`) VALUES
(2, '', 0, '选购中心', 0, 2, 0, 'pick_out.php', 'top'),
(3, '', 0, '查看购物车', 0, 0, 0, 'flow.php', 'top'),
(4, '', 0, '团购商品', 1, 20, 0, 'group_buy.php', 'middle'),
(6, '', 0, '标签云', 0, 5, 6, 'tag_cloud.php', 'top'),
(7, '', 0, '免责条款', 0, 1, 0, 'article.php?id=1', 'bottom'),
(8, '', 0, '隐私保护', 0, 2, 0, 'article.php?id=2', 'bottom'),
(9, '', 0, '咨询热点', 0, 3, 0, 'article.php?id=3', 'bottom'),
(10, '', 0, '联系我们', 0, 4, 0, 'article.php?id=4', 'bottom'),
(11, '', 0, '公司简介', 0, 5, 0, 'article.php?id=5', 'bottom'),
(12, '', 0, '批发方案', 0, 6, 0, 'wholesale.php', 'bottom'),
(14, '', 0, '配送方式', 0, 7, 0, 'myship.php', 'bottom'),
(18, 'c', 4, '眼部彩妆', 1, 14, 0, 'category.php?id=5', 'middle'),
(23, '', 0, '云模板', 1, 6, 1, 'http://www.yunmoban.cn/', 'top'),
(26, 'c', 3, '彩妆套装', 1, 13, 0, 'category.php?id=3', 'middle'),
(27, 'c', 6, '护肤', 1, 15, 0, 'category.php?id=6', 'middle'),
(28, 'c', 8, '眼部护理', 0, 22, 0, 'category.php?id=8', 'middle');

-- --------------------------------------------------------

--
-- Table structure for table `ecs_order_action`
--

CREATE TABLE IF NOT EXISTS `ecs_order_action` (
  `action_id` mediumint(8) unsigned NOT NULL,
  `order_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `action_user` varchar(30) NOT NULL DEFAULT '',
  `order_status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `shipping_status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `pay_status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `action_place` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `action_note` varchar(255) NOT NULL DEFAULT '',
  `log_time` int(11) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ecs_order_action`
--

INSERT INTO `ecs_order_action` (`action_id`, `order_id`, `action_user`, `order_status`, `shipping_status`, `pay_status`, `action_place`, `action_note`, `log_time`) VALUES
(1, 1, 'admin', 1, 0, 2, 0, '1', 1387156893),
(2, 1, 'admin', 5, 5, 2, 0, '', 1387156897),
(3, 1, 'admin', 1, 1, 2, 1, '', 1387156904),
(4, 2, 'admin', 1, 0, 2, 0, '1', 1387157036),
(5, 2, 'admin', 5, 5, 2, 0, '', 1387157039),
(6, 2, 'admin', 1, 1, 2, 1, '', 1387157046),
(7, 4, 'admin', 1, 0, 2, 0, 'gvhdtjdtyj', 1390267814),
(8, 4, 'admin', 1, 3, 2, 0, '', 1390267846),
(9, 4, 'admin', 5, 5, 2, 0, 'tyi76', 1390267854),
(10, 4, 'admin', 1, 1, 2, 1, '', 1390267904),
(11, 6, 'admin', 1, 0, 0, 0, '', 1390413159),
(12, 6, 'admin', 1, 0, 2, 0, 'ityiu', 1390413165),
(13, 6, 'admin', 5, 5, 2, 0, '', 1390413171),
(14, 6, 'admin', 1, 1, 2, 1, '', 1390413197),
(15, 7, 'admin', 1, 0, 0, 0, '', 1390413526),
(16, 7, 'admin', 1, 0, 2, 0, 'dftuftu', 1390413531),
(17, 7, 'admin', 5, 5, 2, 0, '', 1390413539),
(18, 7, 'admin', 1, 1, 2, 1, '', 1390413545),
(19, 8, 'admin', 1, 0, 0, 0, '', 1390413603),
(20, 8, 'admin', 1, 0, 2, 0, 'r6ir', 1390413608),
(21, 8, 'admin', 5, 5, 2, 0, 'e58u68', 1390413615),
(22, 8, 'admin', 1, 1, 2, 1, '', 1390413621),
(23, 9, 'admin', 1, 0, 0, 0, '', 1390413724),
(24, 9, 'admin', 1, 0, 2, 0, 'e5r8uer568', 1390413730),
(25, 9, 'admin', 5, 5, 2, 0, 'rt6', 1390413735),
(26, 9, 'admin', 1, 1, 2, 1, '', 1390413742),
(27, 10, 'admin', 1, 0, 0, 0, '', 1390413805),
(28, 10, 'admin', 1, 0, 2, 0, 'e5r6ue4', 1390413810),
(29, 10, 'admin', 5, 5, 2, 0, '', 1390413815),
(30, 10, 'admin', 1, 1, 2, 1, '', 1390413820),
(31, 40, 'buyer', 2, 0, 0, 0, '用户取消', 1406109744),
(32, 45, 'buyer', 2, 0, 0, 0, '用户取消', 1406231249),
(33, 49, 'buyer', 2, 0, 0, 0, '用户取消', 1406269944),
(34, 48, 'buyer', 2, 0, 0, 0, '用户取消', 1406269951);

-- --------------------------------------------------------

--
-- Table structure for table `ecs_order_goods`
--

CREATE TABLE IF NOT EXISTS `ecs_order_goods` (
  `rec_id` mediumint(8) unsigned NOT NULL,
  `order_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `goods_name` varchar(120) NOT NULL DEFAULT '',
  `goods_sn` varchar(60) NOT NULL DEFAULT '',
  `product_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `goods_number` smallint(5) unsigned NOT NULL DEFAULT '1',
  `market_price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `goods_price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `goods_attr` text NOT NULL,
  `send_number` smallint(5) unsigned NOT NULL DEFAULT '0',
  `is_real` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `extension_code` varchar(30) NOT NULL DEFAULT '',
  `parent_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `is_gift` smallint(5) unsigned NOT NULL DEFAULT '0',
  `goods_attr_id` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM AUTO_INCREMENT=65 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ecs_order_goods`
--

INSERT INTO `ecs_order_goods` (`rec_id`, `order_id`, `goods_id`, `goods_name`, `goods_sn`, `product_id`, `goods_number`, `market_price`, `goods_price`, `goods_attr`, `send_number`, `is_real`, `extension_code`, `parent_id`, `is_gift`, `goods_attr_id`) VALUES
(1, 1, 1, '希思黎轻柔护肤西柚柔肤水250ml', 'ECS000000', 14, 1, '620.00', '399.00', '颜色:灰色 \n', 1, 1, '', 0, 0, '237'),
(2, 2, 1, '希思黎轻柔护肤西柚柔肤水250ml', 'ECS000000', 14, 5, '620.00', '399.00', '颜色:灰色 \n', 5, 1, '', 0, 0, '237'),
(3, 3, 123, '迪奥红毒女士香水EDT 50ml', 'ECS000123', 0, 1, '820.00', '439.00', '外        观:红色 \n', 0, 1, '', 0, 0, '297'),
(4, 3, 119, '蓓丽柔和泡沫洁面膏125ml', 'ECS000119', 0, 1, '630.00', '320.00', '', 0, 1, '', 0, 0, ''),
(5, 3, 113, ' 希思黎百合保湿洁面乳250ml', 'ECS000113', 0, 1, '720.00', '420.00', '', 0, 1, '', 0, 0, ''),
(7, 5, 123, '迪奥红毒女士香水EDT 50ml', 'ECS000123', 0, 2, '820.00', '439.00', '外        观:红色 \n', 0, 1, '', 0, 0, '297'),
(8, 6, 57, '凯文克莱BE中性香水200ml', 'ECS000057', 0, 1, '570.00', '259.00', '', 1, 1, '', 0, 0, ''),
(25, 22, 122, '玫琳凯中性洗面乳绿2号', 'ECS000122', 0, 1, '105.00', '69.00', '', 0, 1, '', 0, 0, ''),
(26, 23, 9, '雅诗兰黛第六代特润精华露50ml', 'ECS000009', 11, 1, '950.00', '669.00', '颜色:白色 \n', 0, 1, '', 0, 0, '227'),
(27, 24, 17, '娇韵诗超V型纤容紧致瘦脸面膜75ml', 'ECS000017', 6, 1, '396.00', '275.00', '颜色:黑色 \n', 0, 1, '', 0, 0, '201'),
(28, 25, 119, '蓓丽柔和泡沫洁面膏125ml', 'ECS000119', 0, 1, '630.00', '320.00', '', 0, 1, '', 0, 0, ''),
(29, 26, 123, '迪奥红毒女士香水EDT 50ml', 'ECS000123', 0, 1, '820.00', '459.00', '外        观:红色 \n', 0, 1, '', 0, 0, '297'),
(45, 39, 121, '肌研极润玻尿酸保湿沫面乳100g', 'ECS000121', 0, 1, '89.00', '60.00', '', 0, 1, '', 0, 0, ''),
(49, 43, 109, '兰芝多效四合一泡沫洗面奶180ml', 'ECS000109', 0, 1, '205.00', '120.00', '', 0, 1, '', 0, 0, ''),
(52, 46, 123, '迪奥红毒女士香水EDT 50ml', 'ECS000123', 0, 2, '820.00', '400.00', '外        观:红色 \n', 0, 1, '', 0, 0, '297'),
(59, 52, 21, '蜜丝佛陀纤柔眼线液1#0.75ml', 'ECS000021', 4, 1, '98.00', '75.00', '颜色:黑色 \n', 0, 1, '', 0, 0, '188'),
(64, 57, 117, '嘉娜宝玫瑰药用洗面奶150g', 'ECS000117', 0, 1, '95.00', '39.00', '', 0, 1, '', 0, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `ecs_order_info`
--

CREATE TABLE IF NOT EXISTS `ecs_order_info` (
  `order_id` mediumint(8) unsigned NOT NULL,
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
  `discount` decimal(10,2) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=58 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ecs_order_info`
--

INSERT INTO `ecs_order_info` (`order_id`, `order_sn`, `user_id`, `order_status`, `shipping_status`, `pay_status`, `consignee`, `country`, `province`, `city`, `district`, `address`, `zipcode`, `tel`, `mobile`, `email`, `best_time`, `sign_building`, `postscript`, `shipping_id`, `shipping_name`, `pay_id`, `pay_name`, `how_oos`, `how_surplus`, `pack_name`, `card_name`, `card_message`, `inv_payee`, `inv_content`, `goods_amount`, `shipping_fee`, `insure_fee`, `pay_fee`, `pack_fee`, `card_fee`, `money_paid`, `surplus`, `integral`, `integral_money`, `bonus`, `order_amount`, `from_ad`, `referer`, `add_time`, `confirm_time`, `pay_time`, `shipping_time`, `pack_id`, `card_id`, `bonus_id`, `invoice_no`, `extension_code`, `extension_id`, `to_buyer`, `pay_note`, `agency_id`, `inv_type`, `tax`, `is_separate`, `parent_id`, `discount`) VALUES
(1, '2013121684882', 0, 5, 1, 2, '111', 1, 4, 55, 541, '111', '111', '111', '11', '222@qq.com', '', '', '', 5, '申通快递', 2, '银行汇款/转帐', '等待所有商品备齐后再发', '', '', '', '', '', '', '399.00', '15.00', '0.00', '0.00', '0.00', '0.00', '414.00', '0.00', 0, '0.00', '0.00', '0.00', 0, '本站', 1387156881, 1387156893, 1387156893, 1387156904, 0, 0, 0, '', '', 0, '', '', 0, '', '0.00', 0, 0, '0.00'),
(2, '2013121628773', 0, 5, 1, 2, '111', 1, 7, 101, 902, '333', '444', '5655', '', '222@qq.com', '', '', '', 5, '申通快递', 2, '银行汇款/转帐', '等待所有商品备齐后再发', '', '', '', '', '', '', '1995.00', '15.00', '0.00', '0.00', '0.00', '0.00', '2010.00', '0.00', 0, '0.00', '0.00', '0.00', 0, '本站', 1387157023, 1387157036, 1387157036, 1387157046, 0, 0, 0, '', '', 0, '', '', 0, '', '0.00', 0, 0, '0.00'),
(3, '2014010686810', 0, 0, 0, 0, '111111', 1, 4, 55, 539, '111111111', '111111', '15000679021', '', '111111@qq.com', '', '', '', 5, '申通快递', 2, '银行汇款/转帐', '等待所有商品备齐后再发', '', '', '', '', '', '', '1179.00', '15.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 0, '0.00', '0.00', '1194.00', 0, '本站', 1388955903, 0, 0, 0, 0, 0, 0, '', '', 0, '', '', 0, '', '0.00', 0, 0, '0.00'),
(5, '2014012262262', 0, 0, 0, 0, 'fshshs', 1, 5, 64, 618, 'dagdsagarhga', '235462', '12354689522', '', '123@qq.com', '', '', '', 5, '申通快递', 2, '银行汇款/转帐', '等待所有商品备齐后再发', '', '', '', '', '', '', '878.00', '15.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 0, '0.00', '0.00', '893.00', 0, '本站', 1390341748, 0, 0, 0, 0, 0, 0, '', '', 0, '', '', 0, '', '0.00', 0, 0, '0.00'),
(6, '2014012383197', 0, 5, 1, 2, '111111', 1, 5, 65, 626, 'agagqarygsae', '235645', '12345678944', '', '123456@qq.com', '', '', '', 5, '申通快递', 2, '银行汇款/转帐', '等待所有商品备齐后再发', '', '', '', '', '', '', '259.00', '15.00', '0.00', '0.00', '0.00', '0.00', '274.00', '0.00', 0, '0.00', '0.00', '0.00', 0, '本站', 1390413144, 1390413159, 1390413165, 1390413197, 0, 0, 0, '', '', 0, '', '', 0, '', '0.00', 0, 0, '0.00'),
(22, '2014012342687', 0, 0, 0, 0, 'aetaega', 1, 6, 78, 713, 'adshaga', '256988', '12365898744', '', '125@qq.com', '', '', '', 5, '申通快递', 2, '银行汇款/转帐', '等待所有商品备齐后再发', '', '', '', '', '', '', '69.00', '15.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 0, '0.00', '0.00', '84.00', 0, '本站', 1390417496, 0, 0, 0, 0, 0, 0, '', '', 0, '', '', 0, '', '0.00', 0, 0, '0.00'),
(23, '2014012389175', 0, 0, 0, 0, 'sdgadega', 1, 4, 55, 539, 'asdgagdag', '123456', '12345678963', '', '123456@qq.com', '', '', '', 5, '申通快递', 2, '银行汇款/转帐', '等待所有商品备齐后再发', '', '', '', '', '', '', '669.00', '15.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 0, '0.00', '0.00', '684.00', 0, '', 1390417659, 0, 0, 0, 0, 0, 0, '', '', 0, '', '', 0, '', '0.00', 0, 0, '0.00'),
(24, '2014012351658', 0, 0, 0, 0, 'ertur6ue', 1, 5, 62, 605, 'srthsfsjdm', '234200', '15896587421', '', '1225@qq.com', '', '', '', 5, '申通快递', 2, '银行汇款/转帐', '等待所有商品备齐后再发', '', '', '', '', '', '', '275.00', '15.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 0, '0.00', '0.00', '290.00', 0, '', 1390418109, 0, 0, 0, 0, 0, 0, '', '', 0, '', '', 0, '', '0.00', 0, 0, '0.00'),
(25, '2014012383507', 0, 0, 0, 0, 'sdhshsdj', 1, 4, 56, 548, 'sdhsdfhrs', '234566', '15896542131', '', '123@qq.com', '', '', '', 5, '申通快递', 2, '银行汇款/转帐', '等待所有商品备齐后再发', '', '', '', '', '', '', '320.00', '15.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 0, '0.00', '0.00', '335.00', 0, '', 1390418164, 0, 0, 0, 0, 0, 0, '', '', 0, '', '', 0, '', '0.00', 0, 0, '0.00'),
(26, '2014012314897', 0, 0, 0, 0, 'sdhsrhdrhs', 1, 4, 54, 532, 'dhasrdgrahah', '123456', '154896222333', '', '123252@qq.com', '', '', '', 5, '申通快递', 2, '银行汇款/转帐', '等待所有商品备齐后再发', '', '', '', '', '', '', '459.00', '15.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 0, '0.00', '0.00', '474.00', 0, '本站', 1390420686, 0, 0, 0, 0, 0, 0, '', '', 0, '', '', 0, '', '0.00', 0, 0, '0.00'),
(39, '2014072372056', 0, 0, 0, 0, '的是非得失', 1, 4, 55, 543, '王三丰说撒的飞', '530000', '18607715945', '', 'sdf@asdfa.com', '', '', '', 5, '申通快递', 4, '支付宝', '等待所有商品备齐后再发', '', '', '', '', '', '', '60.00', '15.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 0, '0.00', '0.00', '75.00', 0, '本站', 1406067445, 0, 0, 0, 0, 0, 0, '', '', 0, '', '', 0, '', '0.00', 0, 0, '0.00'),
(43, '2014072562034', 0, 0, 0, 0, '小心', 1, 7, 103, 912, '内蒙古', '026000', '15247584659', '', 'dgrj@126.com', '', '', '', 5, '申通快递', 5, '支付宝（手机版）', '等待所有商品备齐后再发', '', '', '', '', '', '', '120.00', '15.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 0, '0.00', '0.00', '135.00', 0, '本站', 1406189324, 0, 0, 0, 0, 0, 0, '', '', 0, '', '', 0, '', '0.00', 0, 0, '0.00'),
(46, '2014072568802', 0, 0, 0, 0, '大工业', 1, 2, 52, 500, '村子发', '332323', '786876', '', '114YY0069021@qq.com', '', '', '', 5, '申通快递', 4, '支付宝', '等待所有商品备齐后再发', '', '', '', '', '', '', '800.00', '15.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 0, '0.00', '0.00', '815.00', 0, '本站', 1406250081, 0, 0, 0, 0, 0, 0, '', '', 0, '', '', 0, '', '0.00', 0, 0, '0.00'),
(52, '2014072691423', 0, 0, 0, 0, 'hahah', 1, 31, 390, 3298, '一个个呀', '', '13111111111', '', 'aa@qq.com', '', '', '', 5, '申通快递', 5, '支付宝（手机版）', '等待所有商品备齐后再发', '', '', '', '', '', '', '75.00', '15.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 0, '0.00', '0.00', '90.00', 0, '本站', 1406302149, 0, 0, 0, 0, 0, 0, '', '', 0, '', '', 0, '', '0.00', 0, 0, '0.00'),
(57, '2014072887384', 0, 0, 0, 0, '啊实打实', 1, 4, 55, 539, '爱上的', '410000', '13755191952', '', '183102557@qq.com', '', '', '', 5, '申通快递', 5, '支付宝（手机版）', '等待所有商品备齐后再发', '', '', '', '', '', '', '39.00', '15.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 0, '0.00', '0.00', '54.00', 0, '本站', 1406495061, 0, 0, 0, 0, 0, 0, '', '', 0, '', '', 0, '', '0.00', 0, 0, '0.00');

-- --------------------------------------------------------

--
-- Table structure for table `ecs_pack`
--

CREATE TABLE IF NOT EXISTS `ecs_pack` (
  `pack_id` tinyint(3) unsigned NOT NULL,
  `pack_name` varchar(120) NOT NULL DEFAULT '',
  `pack_img` varchar(255) NOT NULL DEFAULT '',
  `pack_fee` decimal(6,2) unsigned NOT NULL DEFAULT '0.00',
  `free_money` smallint(5) unsigned NOT NULL DEFAULT '0',
  `pack_desc` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ecs_pack`
--

INSERT INTO `ecs_pack` (`pack_id`, `pack_name`, `pack_img`, `pack_fee`, `free_money`, `pack_desc`) VALUES
(1, '精品包装', '1242108360911825791.jpg', '5.00', 800, '精品包装，尽心为您设计一份不一样的礼物');

-- --------------------------------------------------------

--
-- Table structure for table `ecs_package_goods`
--

CREATE TABLE IF NOT EXISTS `ecs_package_goods` (
  `package_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `product_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `goods_number` smallint(5) unsigned NOT NULL DEFAULT '1',
  `admin_id` tinyint(3) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ecs_package_goods`
--

INSERT INTO `ecs_package_goods` (`package_id`, `goods_id`, `product_id`, `goods_number`, `admin_id`) VALUES
(5, 6, 0, 1, 1),
(5, 5, 0, 1, 1),
(6, 4, 0, 1, 1),
(6, 7, 0, 1, 1),
(6, 32, 0, 1, 1),
(5, 31, 0, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `ecs_payment`
--

CREATE TABLE IF NOT EXISTS `ecs_payment` (
  `pay_id` tinyint(3) unsigned NOT NULL,
  `pay_code` varchar(20) NOT NULL DEFAULT '',
  `pay_name` varchar(120) NOT NULL DEFAULT '',
  `pay_fee` varchar(10) NOT NULL DEFAULT '0',
  `pay_desc` text NOT NULL,
  `pay_order` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `pay_config` text NOT NULL,
  `enabled` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_cod` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_online` tinyint(1) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ecs_payment`
--

INSERT INTO `ecs_payment` (`pay_id`, `pay_code`, `pay_name`, `pay_fee`, `pay_desc`, `pay_order`, `pay_config`, `enabled`, `is_cod`, `is_online`) VALUES
(1, 'balance', '余额支付', '0', '使用帐户余额支付。只有会员才能使用，通过设置信用额度，可以透支。', 0, 'a:0:{}', 1, 0, 1),
(2, 'bank', '银行汇款/转帐', '0', '银行名称\n收款人信息：全称 ××× ；帐号或地址 ××× ；开户行 ×××。\n注意事项：办理电汇时，请在电汇单“汇款用途”一栏处注明您的订单号。', 0, 'a:0:{}', 1, 0, 0),
(3, 'cod', '货到付款', '0', '开通城市：×××\n货到付款区域：×××', 0, 'a:0:{}', 1, 1, 0),
(4, 'alipay', '支付宝', '0', '支付宝网站(www.alipay.com) 是国内先进的网上支付平台。<br/>支付宝收款接口：在线即可开通，<font color="red"><b>零预付，免年费</b></font>，单笔阶梯费率，无流量限制。<br/><a href="http://cloud.ecshop.com/payment_apply.php?mod=alipay" target="_blank"><font color="red">立即在线申请</font></a>', 0, 'a:4:{i:0;a:3:{s:4:"name";s:14:"alipay_account";s:4:"type";s:4:"text";s:5:"value";s:16:"yunhunet@163.com";}i:1;a:3:{s:4:"name";s:10:"alipay_key";s:4:"type";s:4:"text";s:5:"value";s:32:"6cmxx9tfy319fgfehf3w0hh3yc3wgr9p";}i:2;a:3:{s:4:"name";s:14:"alipay_partner";s:4:"type";s:4:"text";s:5:"value";s:16:"2088901332681362";}i:3;a:3:{s:4:"name";s:17:"alipay_pay_method";s:4:"type";s:6:"select";s:5:"value";s:1:"2";}}', 1, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `ecs_pay_log`
--

CREATE TABLE IF NOT EXISTS `ecs_pay_log` (
  `log_id` int(10) unsigned NOT NULL,
  `order_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `order_amount` decimal(10,2) unsigned NOT NULL,
  `order_type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_paid` tinyint(1) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=89 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ecs_pay_log`
--

INSERT INTO `ecs_pay_log` (`log_id`, `order_id`, `order_amount`, `order_type`, `is_paid`) VALUES
(1, 1, '0.00', 0, 0),
(2, 2, '0.00', 0, 0),
(3, 3, '0.00', 0, 0),
(4, 4, '0.00', 0, 0),
(5, 5, '0.00', 0, 0),
(6, 6, '35.00', 0, 0),
(7, 7, '2198.10', 0, 0),
(8, 8, '638.00', 0, 0),
(9, 9, '2015.00', 0, 0),
(10, 10, '0.00', 0, 0),
(11, 11, '3810.00', 0, 0),
(12, 12, '253.00', 0, 0),
(13, 13, '975.00', 0, 0),
(14, 14, '0.00', 0, 0),
(15, 15, '17054.00', 0, 0),
(16, 16, '0.00', 0, 0),
(17, 17, '0.00', 0, 0),
(18, 18, '0.00', 0, 0),
(19, 20, '474.00', 0, 0),
(20, 21, '3687.00', 0, 0),
(21, 22, '464.00', 0, 0),
(22, 23, '229.00', 0, 0),
(23, 24, '244.00', 0, 0),
(24, 25, '893.00', 0, 0),
(25, 26, '893.00', 0, 0),
(26, 27, '454.00', 0, 0),
(27, 28, '454.00', 0, 0),
(28, 29, '414.00', 0, 0),
(29, 30, '684.00', 0, 0),
(30, 31, '414.00', 0, 0),
(31, 32, '454.00', 0, 0),
(32, 33, '454.00', 0, 0),
(33, 34, '454.00', 0, 0),
(34, 35, '1332.00', 0, 0),
(35, 36, '3706.90', 0, 0),
(36, 37, '1551.00', 0, 0),
(37, 38, '444.00', 0, 0),
(38, 39, '64.90', 0, 0),
(39, 1, '414.00', 0, 0),
(40, 2, '2010.00', 0, 0),
(41, 3, '1194.00', 0, 0),
(42, 4, '454.00', 0, 0),
(43, 5, '893.00', 0, 0),
(44, 6, '274.00', 0, 0),
(45, 7, '274.00', 0, 0),
(46, 8, '1133.00', 0, 0),
(47, 9, '2052.00', 0, 0),
(48, 10, '2022.00', 0, 0),
(49, 11, '533.00', 0, 0),
(50, 12, '414.00', 0, 0),
(51, 13, '60.00', 0, 0),
(52, 14, '114.00', 0, 0),
(53, 15, '60.00', 0, 0),
(54, 16, '335.00', 0, 0),
(55, 17, '684.00', 0, 0),
(56, 18, '64.90', 0, 0),
(57, 19, '40.00', 0, 0),
(58, 20, '244.00', 0, 0),
(59, 21, '354.00', 0, 0),
(60, 22, '84.00', 0, 0),
(61, 23, '684.00', 0, 0),
(62, 24, '290.00', 0, 0),
(63, 25, '335.00', 0, 0),
(64, 26, '474.00', 0, 0),
(65, 27, '1008.90', 0, 0),
(66, 36, '79.00', 0, 0),
(67, 37, '89.00', 0, 0),
(68, 38, '868.00', 0, 0),
(69, 39, '75.00', 0, 0),
(70, 40, '64.00', 0, 0),
(71, 41, '90.00', 0, 0),
(72, 42, '414.00', 0, 0),
(73, 43, '135.00', 0, 0),
(74, 44, '682.50', 0, 0),
(75, 45, '489.00', 0, 0),
(76, 46, '815.00', 0, 0),
(77, 47, '120.50', 0, 0),
(78, 48, '290.00', 0, 0),
(79, 49, '290.00', 0, 0),
(80, 50, '74.00', 0, 0),
(81, 51, '64.90', 0, 0),
(82, 52, '90.00', 0, 0),
(83, 53, '74.00', 0, 0),
(84, 54, '74.00', 0, 0),
(85, 55, '409.00', 0, 0),
(86, 56, '69.00', 0, 0),
(87, 57, '54.00', 0, 0),
(88, 58, '290.00', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ecs_plugins`
--

CREATE TABLE IF NOT EXISTS `ecs_plugins` (
  `code` varchar(30) NOT NULL DEFAULT '',
  `version` varchar(10) NOT NULL DEFAULT '',
  `library` varchar(255) NOT NULL DEFAULT '',
  `assign` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `install_date` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ecs_products`
--

CREATE TABLE IF NOT EXISTS `ecs_products` (
  `product_id` mediumint(8) unsigned NOT NULL,
  `goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `goods_attr` varchar(50) DEFAULT NULL,
  `product_sn` varchar(60) DEFAULT NULL,
  `product_number` smallint(5) unsigned DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ecs_products`
--

INSERT INTO `ecs_products` (`product_id`, `goods_id`, `goods_attr`, `product_sn`, `product_number`) VALUES
(1, 32, '163', '', 100),
(2, 24, '167', '', 100),
(3, 23, '175', '', 100),
(4, 21, '188', '', 20),
(5, 20, '194', '', 13),
(6, 17, '201', '', 1000),
(7, 14, '213', '', 4),
(8, 13, '217', '', 8),
(9, 10, '239', '', 6),
(10, 10, '240', '', 12),
(11, 9, '227', '', 9),
(12, 9, '226', '', 3),
(13, 8, '231', '', 17),
(14, 1, '237', '', 995),
(15, 16, '319', 'ECS000016g_p15', 1000),
(16, 16, '320', 'ECS000016g_p16', 1000),
(17, 16, '318', 'ECS000016g_p17', 1000),
(18, 12, '322', 'ECS000012g_p18', 1000),
(19, 12, '323', 'ECS000012g_p19', 1000),
(20, 12, '321', 'ECS000012g_p20', 1000);

-- --------------------------------------------------------

--
-- Table structure for table `ecs_region`
--

CREATE TABLE IF NOT EXISTS `ecs_region` (
  `region_id` smallint(5) unsigned NOT NULL,
  `parent_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `region_name` varchar(120) NOT NULL DEFAULT '',
  `region_type` tinyint(1) NOT NULL DEFAULT '2',
  `agency_id` smallint(5) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=3409 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ecs_region`
--

INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES
(1, 0, '中国', 0, 0),
(2, 1, '北京', 1, 0),
(3, 1, '安徽', 1, 0),
(4, 1, '福建', 1, 0),
(5, 1, '甘肃', 1, 0),
(6, 1, '广东', 1, 0),
(7, 1, '广西', 1, 0),
(8, 1, '贵州', 1, 0),
(9, 1, '海南', 1, 0),
(10, 1, '河北', 1, 0),
(11, 1, '河南', 1, 0),
(12, 1, '黑龙江', 1, 0),
(13, 1, '湖北', 1, 0),
(14, 1, '湖南', 1, 0),
(15, 1, '吉林', 1, 0),
(16, 1, '江苏', 1, 0),
(17, 1, '江西', 1, 0),
(18, 1, '辽宁', 1, 0),
(19, 1, '内蒙古', 1, 0),
(20, 1, '宁夏', 1, 0),
(21, 1, '青海', 1, 0),
(22, 1, '山东', 1, 0),
(23, 1, '山西', 1, 0),
(24, 1, '陕西', 1, 0),
(25, 1, '上海', 1, 0),
(26, 1, '四川', 1, 0),
(27, 1, '天津', 1, 0),
(28, 1, '西藏', 1, 0),
(29, 1, '新疆', 1, 0),
(30, 1, '云南', 1, 0),
(31, 1, '浙江', 1, 0),
(32, 1, '重庆', 1, 0),
(33, 1, '香港', 1, 0),
(34, 1, '澳门', 1, 0),
(35, 1, '台湾', 1, 0),
(36, 3, '安庆', 2, 0),
(37, 3, '蚌埠', 2, 0),
(38, 3, '巢湖', 2, 0),
(39, 3, '池州', 2, 0),
(40, 3, '滁州', 2, 0),
(41, 3, '阜阳', 2, 0),
(42, 3, '淮北', 2, 0),
(43, 3, '淮南', 2, 0),
(44, 3, '黄山', 2, 0),
(45, 3, '六安', 2, 0),
(46, 3, '马鞍山', 2, 0),
(47, 3, '宿州', 2, 0),
(48, 3, '铜陵', 2, 0),
(49, 3, '芜湖', 2, 0),
(50, 3, '宣城', 2, 0),
(51, 3, '亳州', 2, 0),
(52, 2, '北京', 2, 0),
(53, 4, '福州', 2, 0),
(54, 4, '龙岩', 2, 0),
(55, 4, '南平', 2, 0),
(56, 4, '宁德', 2, 0),
(57, 4, '莆田', 2, 0),
(58, 4, '泉州', 2, 0),
(59, 4, '三明', 2, 0),
(60, 4, '厦门', 2, 0),
(61, 4, '漳州', 2, 0),
(62, 5, '兰州', 2, 0),
(63, 5, '白银', 2, 0),
(64, 5, '定西', 2, 0),
(65, 5, '甘南', 2, 0),
(66, 5, '嘉峪关', 2, 0),
(67, 5, '金昌', 2, 0),
(68, 5, '酒泉', 2, 0),
(69, 5, '临夏', 2, 0),
(70, 5, '陇南', 2, 0),
(71, 5, '平凉', 2, 0),
(72, 5, '庆阳', 2, 0),
(73, 5, '天水', 2, 0),
(74, 5, '武威', 2, 0),
(75, 5, '张掖', 2, 0),
(76, 6, '广州', 2, 0),
(77, 6, '深圳', 2, 0),
(78, 6, '潮州', 2, 0),
(79, 6, '东莞', 2, 0),
(80, 6, '佛山', 2, 0),
(81, 6, '河源', 2, 0),
(82, 6, '惠州', 2, 0),
(83, 6, '江门', 2, 0),
(84, 6, '揭阳', 2, 0),
(85, 6, '茂名', 2, 0),
(86, 6, '梅州', 2, 0),
(87, 6, '清远', 2, 0),
(88, 6, '汕头', 2, 0),
(89, 6, '汕尾', 2, 0),
(90, 6, '韶关', 2, 0),
(91, 6, '阳江', 2, 0),
(92, 6, '云浮', 2, 0),
(93, 6, '湛江', 2, 0),
(94, 6, '肇庆', 2, 0),
(95, 6, '中山', 2, 0),
(96, 6, '珠海', 2, 0),
(97, 7, '南宁', 2, 0),
(98, 7, '桂林', 2, 0),
(99, 7, '百色', 2, 0),
(100, 7, '北海', 2, 0),
(101, 7, '崇左', 2, 0),
(102, 7, '防城港', 2, 0),
(103, 7, '贵港', 2, 0),
(104, 7, '河池', 2, 0),
(105, 7, '贺州', 2, 0),
(106, 7, '来宾', 2, 0),
(107, 7, '柳州', 2, 0),
(108, 7, '钦州', 2, 0),
(109, 7, '梧州', 2, 0),
(110, 7, '玉林', 2, 0),
(111, 8, '贵阳', 2, 0),
(112, 8, '安顺', 2, 0),
(113, 8, '毕节', 2, 0),
(114, 8, '六盘水', 2, 0),
(115, 8, '黔东南', 2, 0),
(116, 8, '黔南', 2, 0),
(117, 8, '黔西南', 2, 0),
(118, 8, '铜仁', 2, 0),
(119, 8, '遵义', 2, 0),
(120, 9, '海口', 2, 0),
(121, 9, '三亚', 2, 0),
(122, 9, '白沙', 2, 0),
(123, 9, '保亭', 2, 0),
(124, 9, '昌江', 2, 0),
(125, 9, '澄迈县', 2, 0),
(126, 9, '定安县', 2, 0),
(127, 9, '东方', 2, 0),
(128, 9, '乐东', 2, 0),
(129, 9, '临高县', 2, 0),
(130, 9, '陵水', 2, 0),
(131, 9, '琼海', 2, 0),
(132, 9, '琼中', 2, 0),
(133, 9, '屯昌县', 2, 0),
(134, 9, '万宁', 2, 0),
(135, 9, '文昌', 2, 0),
(136, 9, '五指山', 2, 0),
(137, 9, '儋州', 2, 0),
(138, 10, '石家庄', 2, 0),
(139, 10, '保定', 2, 0),
(140, 10, '沧州', 2, 0),
(141, 10, '承德', 2, 0),
(142, 10, '邯郸', 2, 0),
(143, 10, '衡水', 2, 0),
(144, 10, '廊坊', 2, 0),
(145, 10, '秦皇岛', 2, 0),
(146, 10, '唐山', 2, 0),
(147, 10, '邢台', 2, 0),
(148, 10, '张家口', 2, 0),
(149, 11, '郑州', 2, 0),
(150, 11, '洛阳', 2, 0),
(151, 11, '开封', 2, 0),
(152, 11, '安阳', 2, 0),
(153, 11, '鹤壁', 2, 0),
(154, 11, '济源', 2, 0),
(155, 11, '焦作', 2, 0),
(156, 11, '南阳', 2, 0),
(157, 11, '平顶山', 2, 0),
(158, 11, '三门峡', 2, 0),
(159, 11, '商丘', 2, 0),
(160, 11, '新乡', 2, 0),
(161, 11, '信阳', 2, 0),
(162, 11, '许昌', 2, 0),
(163, 11, '周口', 2, 0),
(164, 11, '驻马店', 2, 0),
(165, 11, '漯河', 2, 0),
(166, 11, '濮阳', 2, 0),
(167, 12, '哈尔滨', 2, 0),
(168, 12, '大庆', 2, 0),
(169, 12, '大兴安岭', 2, 0),
(170, 12, '鹤岗', 2, 0),
(171, 12, '黑河', 2, 0),
(172, 12, '鸡西', 2, 0),
(173, 12, '佳木斯', 2, 0),
(174, 12, '牡丹江', 2, 0),
(175, 12, '七台河', 2, 0),
(176, 12, '齐齐哈尔', 2, 0),
(177, 12, '双鸭山', 2, 0),
(178, 12, '绥化', 2, 0),
(179, 12, '伊春', 2, 0),
(180, 13, '武汉', 2, 0),
(181, 13, '仙桃', 2, 0),
(182, 13, '鄂州', 2, 0),
(183, 13, '黄冈', 2, 0),
(184, 13, '黄石', 2, 0),
(185, 13, '荆门', 2, 0),
(186, 13, '荆州', 2, 0),
(187, 13, '潜江', 2, 0),
(188, 13, '神农架林区', 2, 0),
(189, 13, '十堰', 2, 0),
(190, 13, '随州', 2, 0),
(191, 13, '天门', 2, 0),
(192, 13, '咸宁', 2, 0),
(193, 13, '襄樊', 2, 0),
(194, 13, '孝感', 2, 0),
(195, 13, '宜昌', 2, 0),
(196, 13, '恩施', 2, 0),
(197, 14, '长沙', 2, 0),
(198, 14, '张家界', 2, 0),
(199, 14, '常德', 2, 0),
(200, 14, '郴州', 2, 0),
(201, 14, '衡阳', 2, 0),
(202, 14, '怀化', 2, 0),
(203, 14, '娄底', 2, 0),
(204, 14, '邵阳', 2, 0),
(205, 14, '湘潭', 2, 0),
(206, 14, '湘西', 2, 0),
(207, 14, '益阳', 2, 0),
(208, 14, '永州', 2, 0),
(209, 14, '岳阳', 2, 0),
(210, 14, '株洲', 2, 0),
(211, 15, '长春', 2, 0),
(212, 15, '吉林', 2, 0),
(213, 15, '白城', 2, 0),
(214, 15, '白山', 2, 0),
(215, 15, '辽源', 2, 0),
(216, 15, '四平', 2, 0),
(217, 15, '松原', 2, 0),
(218, 15, '通化', 2, 0),
(219, 15, '延边', 2, 0),
(220, 16, '南京', 2, 0),
(221, 16, '苏州', 2, 0),
(222, 16, '无锡', 2, 0),
(223, 16, '常州', 2, 0),
(224, 16, '淮安', 2, 0),
(225, 16, '连云港', 2, 0),
(226, 16, '南通', 2, 0),
(227, 16, '宿迁', 2, 0),
(228, 16, '泰州', 2, 0),
(229, 16, '徐州', 2, 0),
(230, 16, '盐城', 2, 0),
(231, 16, '扬州', 2, 0),
(232, 16, '镇江', 2, 0),
(233, 17, '南昌', 2, 0),
(234, 17, '抚州', 2, 0),
(235, 17, '赣州', 2, 0),
(236, 17, '吉安', 2, 0),
(237, 17, '景德镇', 2, 0),
(238, 17, '九江', 2, 0),
(239, 17, '萍乡', 2, 0),
(240, 17, '上饶', 2, 0),
(241, 17, '新余', 2, 0),
(242, 17, '宜春', 2, 0),
(243, 17, '鹰潭', 2, 0),
(244, 18, '沈阳', 2, 0),
(245, 18, '大连', 2, 0),
(246, 18, '鞍山', 2, 0),
(247, 18, '本溪', 2, 0),
(248, 18, '朝阳', 2, 0),
(249, 18, '丹东', 2, 0),
(250, 18, '抚顺', 2, 0),
(251, 18, '阜新', 2, 0),
(252, 18, '葫芦岛', 2, 0),
(253, 18, '锦州', 2, 0),
(254, 18, '辽阳', 2, 0),
(255, 18, '盘锦', 2, 0),
(256, 18, '铁岭', 2, 0),
(257, 18, '营口', 2, 0),
(258, 19, '呼和浩特', 2, 0),
(259, 19, '阿拉善盟', 2, 0),
(260, 19, '巴彦淖尔盟', 2, 0),
(261, 19, '包头', 2, 0),
(262, 19, '赤峰', 2, 0),
(263, 19, '鄂尔多斯', 2, 0),
(264, 19, '呼伦贝尔', 2, 0),
(265, 19, '通辽', 2, 0),
(266, 19, '乌海', 2, 0),
(267, 19, '乌兰察布市', 2, 0),
(268, 19, '锡林郭勒盟', 2, 0),
(269, 19, '兴安盟', 2, 0),
(270, 20, '银川', 2, 0),
(271, 20, '固原', 2, 0),
(272, 20, '石嘴山', 2, 0),
(273, 20, '吴忠', 2, 0),
(274, 20, '中卫', 2, 0),
(275, 21, '西宁', 2, 0),
(276, 21, '果洛', 2, 0),
(277, 21, '海北', 2, 0),
(278, 21, '海东', 2, 0),
(279, 21, '海南', 2, 0),
(280, 21, '海西', 2, 0),
(281, 21, '黄南', 2, 0),
(282, 21, '玉树', 2, 0),
(283, 22, '济南', 2, 0),
(284, 22, '青岛', 2, 0),
(285, 22, '滨州', 2, 0),
(286, 22, '德州', 2, 0),
(287, 22, '东营', 2, 0),
(288, 22, '菏泽', 2, 0),
(289, 22, '济宁', 2, 0),
(290, 22, '莱芜', 2, 0),
(291, 22, '聊城', 2, 0),
(292, 22, '临沂', 2, 0),
(293, 22, '日照', 2, 0),
(294, 22, '泰安', 2, 0),
(295, 22, '威海', 2, 0),
(296, 22, '潍坊', 2, 0),
(297, 22, '烟台', 2, 0),
(298, 22, '枣庄', 2, 0),
(299, 22, '淄博', 2, 0),
(300, 23, '太原', 2, 0),
(301, 23, '长治', 2, 0),
(302, 23, '大同', 2, 0),
(303, 23, '晋城', 2, 0),
(304, 23, '晋中', 2, 0),
(305, 23, '临汾', 2, 0),
(306, 23, '吕梁', 2, 0),
(307, 23, '朔州', 2, 0),
(308, 23, '忻州', 2, 0),
(309, 23, '阳泉', 2, 0),
(310, 23, '运城', 2, 0),
(311, 24, '西安', 2, 0),
(312, 24, '安康', 2, 0),
(313, 24, '宝鸡', 2, 0),
(314, 24, '汉中', 2, 0),
(315, 24, '商洛', 2, 0),
(316, 24, '铜川', 2, 0),
(317, 24, '渭南', 2, 0),
(318, 24, '咸阳', 2, 0),
(319, 24, '延安', 2, 0),
(320, 24, '榆林', 2, 0),
(321, 25, '上海', 2, 0),
(322, 26, '成都', 2, 0),
(323, 26, '绵阳', 2, 0),
(324, 26, '阿坝', 2, 0),
(325, 26, '巴中', 2, 0),
(326, 26, '达州', 2, 0),
(327, 26, '德阳', 2, 0),
(328, 26, '甘孜', 2, 0),
(329, 26, '广安', 2, 0),
(330, 26, '广元', 2, 0),
(331, 26, '乐山', 2, 0),
(332, 26, '凉山', 2, 0),
(333, 26, '眉山', 2, 0),
(334, 26, '南充', 2, 0),
(335, 26, '内江', 2, 0),
(336, 26, '攀枝花', 2, 0),
(337, 26, '遂宁', 2, 0),
(338, 26, '雅安', 2, 0),
(339, 26, '宜宾', 2, 0),
(340, 26, '资阳', 2, 0),
(341, 26, '自贡', 2, 0),
(342, 26, '泸州', 2, 0),
(343, 27, '天津', 2, 0),
(344, 28, '拉萨', 2, 0),
(345, 28, '阿里', 2, 0),
(346, 28, '昌都', 2, 0),
(347, 28, '林芝', 2, 0),
(348, 28, '那曲', 2, 0),
(349, 28, '日喀则', 2, 0),
(350, 28, '山南', 2, 0),
(351, 29, '乌鲁木齐', 2, 0),
(352, 29, '阿克苏', 2, 0),
(353, 29, '阿拉尔', 2, 0),
(354, 29, '巴音郭楞', 2, 0),
(355, 29, '博尔塔拉', 2, 0),
(356, 29, '昌吉', 2, 0),
(357, 29, '哈密', 2, 0),
(358, 29, '和田', 2, 0),
(359, 29, '喀什', 2, 0),
(360, 29, '克拉玛依', 2, 0),
(361, 29, '克孜勒苏', 2, 0),
(362, 29, '石河子', 2, 0),
(363, 29, '图木舒克', 2, 0),
(364, 29, '吐鲁番', 2, 0),
(365, 29, '五家渠', 2, 0),
(366, 29, '伊犁', 2, 0),
(367, 30, '昆明', 2, 0),
(368, 30, '怒江', 2, 0),
(369, 30, '普洱', 2, 0),
(370, 30, '丽江', 2, 0),
(371, 30, '保山', 2, 0),
(372, 30, '楚雄', 2, 0),
(373, 30, '大理', 2, 0),
(374, 30, '德宏', 2, 0),
(375, 30, '迪庆', 2, 0),
(376, 30, '红河', 2, 0),
(377, 30, '临沧', 2, 0),
(378, 30, '曲靖', 2, 0),
(379, 30, '文山', 2, 0),
(380, 30, '西双版纳', 2, 0),
(381, 30, '玉溪', 2, 0),
(382, 30, '昭通', 2, 0),
(383, 31, '杭州', 2, 0),
(384, 31, '湖州', 2, 0),
(385, 31, '嘉兴', 2, 0),
(386, 31, '金华', 2, 0),
(387, 31, '丽水', 2, 0),
(388, 31, '宁波', 2, 0),
(389, 31, '绍兴', 2, 0),
(390, 31, '台州', 2, 0),
(391, 31, '温州', 2, 0),
(392, 31, '舟山', 2, 0),
(393, 31, '衢州', 2, 0),
(394, 32, '重庆', 2, 0),
(395, 33, '香港', 2, 0),
(396, 34, '澳门', 2, 0),
(397, 35, '台湾', 2, 0),
(398, 36, '迎江区', 3, 0),
(399, 36, '大观区', 3, 0),
(400, 36, '宜秀区', 3, 0),
(401, 36, '桐城市', 3, 0),
(402, 36, '怀宁县', 3, 0),
(403, 36, '枞阳县', 3, 0),
(404, 36, '潜山县', 3, 0),
(405, 36, '太湖县', 3, 0),
(406, 36, '宿松县', 3, 0),
(407, 36, '望江县', 3, 0),
(408, 36, '岳西县', 3, 0),
(409, 37, '中市区', 3, 0),
(410, 37, '东市区', 3, 0),
(411, 37, '西市区', 3, 0),
(412, 37, '郊区', 3, 0),
(413, 37, '怀远县', 3, 0),
(414, 37, '五河县', 3, 0),
(415, 37, '固镇县', 3, 0),
(416, 38, '居巢区', 3, 0),
(417, 38, '庐江县', 3, 0),
(418, 38, '无为县', 3, 0),
(419, 38, '含山县', 3, 0),
(420, 38, '和县', 3, 0),
(421, 39, '贵池区', 3, 0),
(422, 39, '东至县', 3, 0),
(423, 39, '石台县', 3, 0),
(424, 39, '青阳县', 3, 0),
(425, 40, '琅琊区', 3, 0),
(426, 40, '南谯区', 3, 0),
(427, 40, '天长市', 3, 0),
(428, 40, '明光市', 3, 0),
(429, 40, '来安县', 3, 0),
(430, 40, '全椒县', 3, 0),
(431, 40, '定远县', 3, 0),
(432, 40, '凤阳县', 3, 0),
(433, 41, '蚌山区', 3, 0),
(434, 41, '龙子湖区', 3, 0),
(435, 41, '禹会区', 3, 0),
(436, 41, '淮上区', 3, 0),
(437, 41, '颍州区', 3, 0),
(438, 41, '颍东区', 3, 0),
(439, 41, '颍泉区', 3, 0),
(440, 41, '界首市', 3, 0),
(441, 41, '临泉县', 3, 0),
(442, 41, '太和县', 3, 0),
(443, 41, '阜南县', 3, 0),
(444, 41, '颖上县', 3, 0),
(445, 42, '相山区', 3, 0),
(446, 42, '杜集区', 3, 0),
(447, 42, '烈山区', 3, 0),
(448, 42, '濉溪县', 3, 0),
(449, 43, '田家庵区', 3, 0),
(450, 43, '大通区', 3, 0),
(451, 43, '谢家集区', 3, 0),
(452, 43, '八公山区', 3, 0),
(453, 43, '潘集区', 3, 0),
(454, 43, '凤台县', 3, 0),
(455, 44, '屯溪区', 3, 0),
(456, 44, '黄山区', 3, 0),
(457, 44, '徽州区', 3, 0),
(458, 44, '歙县', 3, 0),
(459, 44, '休宁县', 3, 0),
(460, 44, '黟县', 3, 0),
(461, 44, '祁门县', 3, 0),
(462, 45, '金安区', 3, 0),
(463, 45, '裕安区', 3, 0),
(464, 45, '寿县', 3, 0),
(465, 45, '霍邱县', 3, 0),
(466, 45, '舒城县', 3, 0),
(467, 45, '金寨县', 3, 0),
(468, 45, '霍山县', 3, 0),
(469, 46, '雨山区', 3, 0),
(470, 46, '花山区', 3, 0),
(471, 46, '金家庄区', 3, 0),
(472, 46, '当涂县', 3, 0),
(473, 47, '埇桥区', 3, 0),
(474, 47, '砀山县', 3, 0),
(475, 47, '萧县', 3, 0),
(476, 47, '灵璧县', 3, 0),
(477, 47, '泗县', 3, 0),
(478, 48, '铜官山区', 3, 0),
(479, 48, '狮子山区', 3, 0),
(480, 48, '郊区', 3, 0),
(481, 48, '铜陵县', 3, 0),
(482, 49, '镜湖区', 3, 0),
(483, 49, '弋江区', 3, 0),
(484, 49, '鸠江区', 3, 0),
(485, 49, '三山区', 3, 0),
(486, 49, '芜湖县', 3, 0),
(487, 49, '繁昌县', 3, 0),
(488, 49, '南陵县', 3, 0),
(489, 50, '宣州区', 3, 0),
(490, 50, '宁国市', 3, 0),
(491, 50, '郎溪县', 3, 0),
(492, 50, '广德县', 3, 0),
(493, 50, '泾县', 3, 0),
(494, 50, '绩溪县', 3, 0),
(495, 50, '旌德县', 3, 0),
(496, 51, '涡阳县', 3, 0),
(497, 51, '蒙城县', 3, 0),
(498, 51, '利辛县', 3, 0),
(499, 51, '谯城区', 3, 0),
(500, 52, '东城区', 3, 0),
(501, 52, '西城区', 3, 0),
(502, 52, '海淀区', 3, 0),
(503, 52, '朝阳区', 3, 0),
(504, 52, '崇文区', 3, 0),
(505, 52, '宣武区', 3, 0),
(506, 52, '丰台区', 3, 0),
(507, 52, '石景山区', 3, 0),
(508, 52, '房山区', 3, 0),
(509, 52, '门头沟区', 3, 0),
(510, 52, '通州区', 3, 0),
(511, 52, '顺义区', 3, 0),
(512, 52, '昌平区', 3, 0),
(513, 52, '怀柔区', 3, 0),
(514, 52, '平谷区', 3, 0),
(515, 52, '大兴区', 3, 0),
(516, 52, '密云县', 3, 0),
(517, 52, '延庆县', 3, 0),
(518, 53, '鼓楼区', 3, 0),
(519, 53, '台江区', 3, 0),
(520, 53, '仓山区', 3, 0),
(521, 53, '马尾区', 3, 0),
(522, 53, '晋安区', 3, 0),
(523, 53, '福清市', 3, 0),
(524, 53, '长乐市', 3, 0),
(525, 53, '闽侯县', 3, 0),
(526, 53, '连江县', 3, 0),
(527, 53, '罗源县', 3, 0),
(528, 53, '闽清县', 3, 0),
(529, 53, '永泰县', 3, 0),
(530, 53, '平潭县', 3, 0),
(531, 54, '新罗区', 3, 0),
(532, 54, '漳平市', 3, 0),
(533, 54, '长汀县', 3, 0),
(534, 54, '永定县', 3, 0),
(535, 54, '上杭县', 3, 0),
(536, 54, '武平县', 3, 0),
(537, 54, '连城县', 3, 0),
(538, 55, '延平区', 3, 0),
(539, 55, '邵武市', 3, 0),
(540, 55, '武夷山市', 3, 0),
(541, 55, '建瓯市', 3, 0),
(542, 55, '建阳市', 3, 0),
(543, 55, '顺昌县', 3, 0),
(544, 55, '浦城县', 3, 0),
(545, 55, '光泽县', 3, 0),
(546, 55, '松溪县', 3, 0),
(547, 55, '政和县', 3, 0),
(548, 56, '蕉城区', 3, 0),
(549, 56, '福安市', 3, 0),
(550, 56, '福鼎市', 3, 0),
(551, 56, '霞浦县', 3, 0),
(552, 56, '古田县', 3, 0),
(553, 56, '屏南县', 3, 0),
(554, 56, '寿宁县', 3, 0),
(555, 56, '周宁县', 3, 0),
(556, 56, '柘荣县', 3, 0),
(557, 57, '城厢区', 3, 0),
(558, 57, '涵江区', 3, 0),
(559, 57, '荔城区', 3, 0),
(560, 57, '秀屿区', 3, 0),
(561, 57, '仙游县', 3, 0),
(562, 58, '鲤城区', 3, 0),
(563, 58, '丰泽区', 3, 0),
(564, 58, '洛江区', 3, 0),
(565, 58, '清濛开发区', 3, 0),
(566, 58, '泉港区', 3, 0),
(567, 58, '石狮市', 3, 0),
(568, 58, '晋江市', 3, 0),
(569, 58, '南安市', 3, 0),
(570, 58, '惠安县', 3, 0),
(571, 58, '安溪县', 3, 0),
(572, 58, '永春县', 3, 0),
(573, 58, '德化县', 3, 0),
(574, 58, '金门县', 3, 0),
(575, 59, '梅列区', 3, 0),
(576, 59, '三元区', 3, 0),
(577, 59, '永安市', 3, 0),
(578, 59, '明溪县', 3, 0),
(579, 59, '清流县', 3, 0),
(580, 59, '宁化县', 3, 0),
(581, 59, '大田县', 3, 0),
(582, 59, '尤溪县', 3, 0),
(583, 59, '沙县', 3, 0),
(584, 59, '将乐县', 3, 0),
(585, 59, '泰宁县', 3, 0),
(586, 59, '建宁县', 3, 0),
(587, 60, '思明区', 3, 0),
(588, 60, '海沧区', 3, 0),
(589, 60, '湖里区', 3, 0),
(590, 60, '集美区', 3, 0),
(591, 60, '同安区', 3, 0),
(592, 60, '翔安区', 3, 0),
(593, 61, '芗城区', 3, 0),
(594, 61, '龙文区', 3, 0),
(595, 61, '龙海市', 3, 0),
(596, 61, '云霄县', 3, 0),
(597, 61, '漳浦县', 3, 0),
(598, 61, '诏安县', 3, 0),
(599, 61, '长泰县', 3, 0),
(600, 61, '东山县', 3, 0),
(601, 61, '南靖县', 3, 0),
(602, 61, '平和县', 3, 0),
(603, 61, '华安县', 3, 0),
(604, 62, '皋兰县', 3, 0),
(605, 62, '城关区', 3, 0),
(606, 62, '七里河区', 3, 0),
(607, 62, '西固区', 3, 0),
(608, 62, '安宁区', 3, 0),
(609, 62, '红古区', 3, 0),
(610, 62, '永登县', 3, 0),
(611, 62, '榆中县', 3, 0),
(612, 63, '白银区', 3, 0),
(613, 63, '平川区', 3, 0),
(614, 63, '会宁县', 3, 0),
(615, 63, '景泰县', 3, 0),
(616, 63, '靖远县', 3, 0),
(617, 64, '临洮县', 3, 0),
(618, 64, '陇西县', 3, 0),
(619, 64, '通渭县', 3, 0),
(620, 64, '渭源县', 3, 0),
(621, 64, '漳县', 3, 0),
(622, 64, '岷县', 3, 0),
(623, 64, '安定区', 3, 0),
(624, 64, '安定区', 3, 0),
(625, 65, '合作市', 3, 0),
(626, 65, '临潭县', 3, 0),
(627, 65, '卓尼县', 3, 0),
(628, 65, '舟曲县', 3, 0),
(629, 65, '迭部县', 3, 0),
(630, 65, '玛曲县', 3, 0),
(631, 65, '碌曲县', 3, 0),
(632, 65, '夏河县', 3, 0),
(633, 66, '嘉峪关市', 3, 0),
(634, 67, '金川区', 3, 0),
(635, 67, '永昌县', 3, 0),
(636, 68, '肃州区', 3, 0),
(637, 68, '玉门市', 3, 0),
(638, 68, '敦煌市', 3, 0),
(639, 68, '金塔县', 3, 0),
(640, 68, '瓜州县', 3, 0),
(641, 68, '肃北', 3, 0),
(642, 68, '阿克塞', 3, 0),
(643, 69, '临夏市', 3, 0),
(644, 69, '临夏县', 3, 0),
(645, 69, '康乐县', 3, 0),
(646, 69, '永靖县', 3, 0),
(647, 69, '广河县', 3, 0),
(648, 69, '和政县', 3, 0),
(649, 69, '东乡族自治县', 3, 0),
(650, 69, '积石山', 3, 0),
(651, 70, '成县', 3, 0),
(652, 70, '徽县', 3, 0),
(653, 70, '康县', 3, 0),
(654, 70, '礼县', 3, 0),
(655, 70, '两当县', 3, 0),
(656, 70, '文县', 3, 0),
(657, 70, '西和县', 3, 0),
(658, 70, '宕昌县', 3, 0),
(659, 70, '武都区', 3, 0),
(660, 71, '崇信县', 3, 0),
(661, 71, '华亭县', 3, 0),
(662, 71, '静宁县', 3, 0),
(663, 71, '灵台县', 3, 0),
(664, 71, '崆峒区', 3, 0),
(665, 71, '庄浪县', 3, 0),
(666, 71, '泾川县', 3, 0),
(667, 72, '合水县', 3, 0),
(668, 72, '华池县', 3, 0),
(669, 72, '环县', 3, 0),
(670, 72, '宁县', 3, 0),
(671, 72, '庆城县', 3, 0),
(672, 72, '西峰区', 3, 0),
(673, 72, '镇原县', 3, 0),
(674, 72, '正宁县', 3, 0),
(675, 73, '甘谷县', 3, 0),
(676, 73, '秦安县', 3, 0),
(677, 73, '清水县', 3, 0),
(678, 73, '秦州区', 3, 0),
(679, 73, '麦积区', 3, 0),
(680, 73, '武山县', 3, 0),
(681, 73, '张家川', 3, 0),
(682, 74, '古浪县', 3, 0),
(683, 74, '民勤县', 3, 0),
(684, 74, '天祝', 3, 0),
(685, 74, '凉州区', 3, 0),
(686, 75, '高台县', 3, 0),
(687, 75, '临泽县', 3, 0),
(688, 75, '民乐县', 3, 0),
(689, 75, '山丹县', 3, 0),
(690, 75, '肃南', 3, 0),
(691, 75, '甘州区', 3, 0),
(692, 76, '从化市', 3, 0),
(693, 76, '天河区', 3, 0),
(694, 76, '东山区', 3, 0),
(695, 76, '白云区', 3, 0),
(696, 76, '海珠区', 3, 0),
(697, 76, '荔湾区', 3, 0),
(698, 76, '越秀区', 3, 0),
(699, 76, '黄埔区', 3, 0),
(700, 76, '番禺区', 3, 0),
(701, 76, '花都区', 3, 0),
(702, 76, '增城区', 3, 0),
(703, 76, '从化区', 3, 0),
(704, 76, '市郊', 3, 0),
(705, 77, '福田区', 3, 0),
(706, 77, '罗湖区', 3, 0),
(707, 77, '南山区', 3, 0),
(708, 77, '宝安区', 3, 0),
(709, 77, '龙岗区', 3, 0),
(710, 77, '盐田区', 3, 0),
(711, 78, '湘桥区', 3, 0),
(712, 78, '潮安县', 3, 0),
(713, 78, '饶平县', 3, 0),
(714, 79, '南城区', 3, 0),
(715, 79, '东城区', 3, 0),
(716, 79, '万江区', 3, 0),
(717, 79, '莞城区', 3, 0),
(718, 79, '石龙镇', 3, 0),
(719, 79, '虎门镇', 3, 0),
(720, 79, '麻涌镇', 3, 0),
(721, 79, '道滘镇', 3, 0),
(722, 79, '石碣镇', 3, 0),
(723, 79, '沙田镇', 3, 0),
(724, 79, '望牛墩镇', 3, 0),
(725, 79, '洪梅镇', 3, 0),
(726, 79, '茶山镇', 3, 0),
(727, 79, '寮步镇', 3, 0),
(728, 79, '大岭山镇', 3, 0),
(729, 79, '大朗镇', 3, 0),
(730, 79, '黄江镇', 3, 0),
(731, 79, '樟木头', 3, 0),
(732, 79, '凤岗镇', 3, 0),
(733, 79, '塘厦镇', 3, 0),
(734, 79, '谢岗镇', 3, 0),
(735, 79, '厚街镇', 3, 0),
(736, 79, '清溪镇', 3, 0),
(737, 79, '常平镇', 3, 0),
(738, 79, '桥头镇', 3, 0),
(739, 79, '横沥镇', 3, 0),
(740, 79, '东坑镇', 3, 0),
(741, 79, '企石镇', 3, 0),
(742, 79, '石排镇', 3, 0),
(743, 79, '长安镇', 3, 0),
(744, 79, '中堂镇', 3, 0),
(745, 79, '高埗镇', 3, 0),
(746, 80, '禅城区', 3, 0),
(747, 80, '南海区', 3, 0),
(748, 80, '顺德区', 3, 0),
(749, 80, '三水区', 3, 0),
(750, 80, '高明区', 3, 0),
(751, 81, '东源县', 3, 0),
(752, 81, '和平县', 3, 0),
(753, 81, '源城区', 3, 0),
(754, 81, '连平县', 3, 0),
(755, 81, '龙川县', 3, 0),
(756, 81, '紫金县', 3, 0),
(757, 82, '惠阳区', 3, 0),
(758, 82, '惠城区', 3, 0),
(759, 82, '大亚湾', 3, 0),
(760, 82, '博罗县', 3, 0),
(761, 82, '惠东县', 3, 0),
(762, 82, '龙门县', 3, 0),
(763, 83, '江海区', 3, 0),
(764, 83, '蓬江区', 3, 0),
(765, 83, '新会区', 3, 0),
(766, 83, '台山市', 3, 0),
(767, 83, '开平市', 3, 0),
(768, 83, '鹤山市', 3, 0),
(769, 83, '恩平市', 3, 0),
(770, 84, '榕城区', 3, 0),
(771, 84, '普宁市', 3, 0),
(772, 84, '揭东县', 3, 0),
(773, 84, '揭西县', 3, 0),
(774, 84, '惠来县', 3, 0),
(775, 85, '茂南区', 3, 0),
(776, 85, '茂港区', 3, 0),
(777, 85, '高州市', 3, 0),
(778, 85, '化州市', 3, 0),
(779, 85, '信宜市', 3, 0),
(780, 85, '电白县', 3, 0),
(781, 86, '梅县', 3, 0),
(782, 86, '梅江区', 3, 0),
(783, 86, '兴宁市', 3, 0),
(784, 86, '大埔县', 3, 0),
(785, 86, '丰顺县', 3, 0),
(786, 86, '五华县', 3, 0),
(787, 86, '平远县', 3, 0),
(788, 86, '蕉岭县', 3, 0),
(789, 87, '清城区', 3, 0),
(790, 87, '英德市', 3, 0),
(791, 87, '连州市', 3, 0),
(792, 87, '佛冈县', 3, 0),
(793, 87, '阳山县', 3, 0),
(794, 87, '清新县', 3, 0),
(795, 87, '连山', 3, 0),
(796, 87, '连南', 3, 0),
(797, 88, '南澳县', 3, 0),
(798, 88, '潮阳区', 3, 0),
(799, 88, '澄海区', 3, 0),
(800, 88, '龙湖区', 3, 0),
(801, 88, '金平区', 3, 0),
(802, 88, '濠江区', 3, 0),
(803, 88, '潮南区', 3, 0),
(804, 89, '城区', 3, 0),
(805, 89, '陆丰市', 3, 0),
(806, 89, '海丰县', 3, 0),
(807, 89, '陆河县', 3, 0),
(808, 90, '曲江县', 3, 0),
(809, 90, '浈江区', 3, 0),
(810, 90, '武江区', 3, 0),
(811, 90, '曲江区', 3, 0),
(812, 90, '乐昌市', 3, 0),
(813, 90, '南雄市', 3, 0),
(814, 90, '始兴县', 3, 0),
(815, 90, '仁化县', 3, 0),
(816, 90, '翁源县', 3, 0),
(817, 90, '新丰县', 3, 0),
(818, 90, '乳源', 3, 0),
(819, 91, '江城区', 3, 0),
(820, 91, '阳春市', 3, 0),
(821, 91, '阳西县', 3, 0),
(822, 91, '阳东县', 3, 0),
(823, 92, '云城区', 3, 0),
(824, 92, '罗定市', 3, 0),
(825, 92, '新兴县', 3, 0),
(826, 92, '郁南县', 3, 0),
(827, 92, '云安县', 3, 0),
(828, 93, '赤坎区', 3, 0),
(829, 93, '霞山区', 3, 0),
(830, 93, '坡头区', 3, 0),
(831, 93, '麻章区', 3, 0),
(832, 93, '廉江市', 3, 0),
(833, 93, '雷州市', 3, 0),
(834, 93, '吴川市', 3, 0),
(835, 93, '遂溪县', 3, 0),
(836, 93, '徐闻县', 3, 0),
(837, 94, '肇庆市', 3, 0),
(838, 94, '高要市', 3, 0),
(839, 94, '四会市', 3, 0),
(840, 94, '广宁县', 3, 0),
(841, 94, '怀集县', 3, 0),
(842, 94, '封开县', 3, 0),
(843, 94, '德庆县', 3, 0),
(844, 95, '石岐街道', 3, 0),
(845, 95, '东区街道', 3, 0),
(846, 95, '西区街道', 3, 0),
(847, 95, '环城街道', 3, 0),
(848, 95, '中山港街道', 3, 0),
(849, 95, '五桂山街道', 3, 0),
(850, 96, '香洲区', 3, 0),
(851, 96, '斗门区', 3, 0),
(852, 96, '金湾区', 3, 0),
(853, 97, '邕宁区', 3, 0),
(854, 97, '青秀区', 3, 0),
(855, 97, '兴宁区', 3, 0),
(856, 97, '良庆区', 3, 0),
(857, 97, '西乡塘区', 3, 0),
(858, 97, '江南区', 3, 0),
(859, 97, '武鸣县', 3, 0),
(860, 97, '隆安县', 3, 0),
(861, 97, '马山县', 3, 0),
(862, 97, '上林县', 3, 0),
(863, 97, '宾阳县', 3, 0),
(864, 97, '横县', 3, 0),
(865, 98, '秀峰区', 3, 0),
(866, 98, '叠彩区', 3, 0),
(867, 98, '象山区', 3, 0),
(868, 98, '七星区', 3, 0),
(869, 98, '雁山区', 3, 0),
(870, 98, '阳朔县', 3, 0),
(871, 98, '临桂县', 3, 0),
(872, 98, '灵川县', 3, 0),
(873, 98, '全州县', 3, 0),
(874, 98, '平乐县', 3, 0),
(875, 98, '兴安县', 3, 0),
(876, 98, '灌阳县', 3, 0),
(877, 98, '荔浦县', 3, 0),
(878, 98, '资源县', 3, 0),
(879, 98, '永福县', 3, 0),
(880, 98, '龙胜', 3, 0),
(881, 98, '恭城', 3, 0),
(882, 99, '右江区', 3, 0),
(883, 99, '凌云县', 3, 0),
(884, 99, '平果县', 3, 0),
(885, 99, '西林县', 3, 0),
(886, 99, '乐业县', 3, 0),
(887, 99, '德保县', 3, 0),
(888, 99, '田林县', 3, 0),
(889, 99, '田阳县', 3, 0),
(890, 99, '靖西县', 3, 0),
(891, 99, '田东县', 3, 0),
(892, 99, '那坡县', 3, 0),
(893, 99, '隆林', 3, 0),
(894, 100, '海城区', 3, 0),
(895, 100, '银海区', 3, 0),
(896, 100, '铁山港区', 3, 0),
(897, 100, '合浦县', 3, 0),
(898, 101, '江州区', 3, 0),
(899, 101, '凭祥市', 3, 0),
(900, 101, '宁明县', 3, 0),
(901, 101, '扶绥县', 3, 0),
(902, 101, '龙州县', 3, 0),
(903, 101, '大新县', 3, 0),
(904, 101, '天等县', 3, 0),
(905, 102, '港口区', 3, 0),
(906, 102, '防城区', 3, 0),
(907, 102, '东兴市', 3, 0),
(908, 102, '上思县', 3, 0),
(909, 103, '港北区', 3, 0),
(910, 103, '港南区', 3, 0),
(911, 103, '覃塘区', 3, 0),
(912, 103, '桂平市', 3, 0),
(913, 103, '平南县', 3, 0),
(914, 104, '金城江区', 3, 0),
(915, 104, '宜州市', 3, 0),
(916, 104, '天峨县', 3, 0),
(917, 104, '凤山县', 3, 0),
(918, 104, '南丹县', 3, 0),
(919, 104, '东兰县', 3, 0),
(920, 104, '都安', 3, 0),
(921, 104, '罗城', 3, 0),
(922, 104, '巴马', 3, 0),
(923, 104, '环江', 3, 0),
(924, 104, '大化', 3, 0),
(925, 105, '八步区', 3, 0),
(926, 105, '钟山县', 3, 0),
(927, 105, '昭平县', 3, 0),
(928, 105, '富川', 3, 0),
(929, 106, '兴宾区', 3, 0),
(930, 106, '合山市', 3, 0),
(931, 106, '象州县', 3, 0),
(932, 106, '武宣县', 3, 0),
(933, 106, '忻城县', 3, 0),
(934, 106, '金秀', 3, 0),
(935, 107, '城中区', 3, 0),
(936, 107, '鱼峰区', 3, 0),
(937, 107, '柳北区', 3, 0),
(938, 107, '柳南区', 3, 0),
(939, 107, '柳江县', 3, 0),
(940, 107, '柳城县', 3, 0),
(941, 107, '鹿寨县', 3, 0),
(942, 107, '融安县', 3, 0),
(943, 107, '融水', 3, 0),
(944, 107, '三江', 3, 0),
(945, 108, '钦南区', 3, 0),
(946, 108, '钦北区', 3, 0),
(947, 108, '灵山县', 3, 0),
(948, 108, '浦北县', 3, 0),
(949, 109, '万秀区', 3, 0),
(950, 109, '蝶山区', 3, 0),
(951, 109, '长洲区', 3, 0),
(952, 109, '岑溪市', 3, 0),
(953, 109, '苍梧县', 3, 0),
(954, 109, '藤县', 3, 0),
(955, 109, '蒙山县', 3, 0),
(956, 110, '玉州区', 3, 0),
(957, 110, '北流市', 3, 0),
(958, 110, '容县', 3, 0),
(959, 110, '陆川县', 3, 0),
(960, 110, '博白县', 3, 0),
(961, 110, '兴业县', 3, 0),
(962, 111, '南明区', 3, 0),
(963, 111, '云岩区', 3, 0),
(964, 111, '花溪区', 3, 0),
(965, 111, '乌当区', 3, 0),
(966, 111, '白云区', 3, 0),
(967, 111, '小河区', 3, 0),
(968, 111, '金阳新区', 3, 0),
(969, 111, '新天园区', 3, 0),
(970, 111, '清镇市', 3, 0),
(971, 111, '开阳县', 3, 0),
(972, 111, '修文县', 3, 0),
(973, 111, '息烽县', 3, 0),
(974, 112, '西秀区', 3, 0),
(975, 112, '关岭', 3, 0),
(976, 112, '镇宁', 3, 0),
(977, 112, '紫云', 3, 0),
(978, 112, '平坝县', 3, 0),
(979, 112, '普定县', 3, 0),
(980, 113, '毕节市', 3, 0),
(981, 113, '大方县', 3, 0),
(982, 113, '黔西县', 3, 0),
(983, 113, '金沙县', 3, 0),
(984, 113, '织金县', 3, 0),
(985, 113, '纳雍县', 3, 0),
(986, 113, '赫章县', 3, 0),
(987, 113, '威宁', 3, 0),
(988, 114, '钟山区', 3, 0),
(989, 114, '六枝特区', 3, 0),
(990, 114, '水城县', 3, 0),
(991, 114, '盘县', 3, 0),
(992, 115, '凯里市', 3, 0),
(993, 115, '黄平县', 3, 0),
(994, 115, '施秉县', 3, 0),
(995, 115, '三穗县', 3, 0),
(996, 115, '镇远县', 3, 0),
(997, 115, '岑巩县', 3, 0),
(998, 115, '天柱县', 3, 0),
(999, 115, '锦屏县', 3, 0),
(1000, 115, '剑河县', 3, 0),
(1001, 115, '台江县', 3, 0),
(1002, 115, '黎平县', 3, 0),
(1003, 115, '榕江县', 3, 0),
(1004, 115, '从江县', 3, 0),
(1005, 115, '雷山县', 3, 0),
(1006, 115, '麻江县', 3, 0),
(1007, 115, '丹寨县', 3, 0),
(1008, 116, '都匀市', 3, 0),
(1009, 116, '福泉市', 3, 0),
(1010, 116, '荔波县', 3, 0),
(1011, 116, '贵定县', 3, 0),
(1012, 116, '瓮安县', 3, 0),
(1013, 116, '独山县', 3, 0),
(1014, 116, '平塘县', 3, 0),
(1015, 116, '罗甸县', 3, 0),
(1016, 116, '长顺县', 3, 0),
(1017, 116, '龙里县', 3, 0),
(1018, 116, '惠水县', 3, 0),
(1019, 116, '三都', 3, 0),
(1020, 117, '兴义市', 3, 0),
(1021, 117, '兴仁县', 3, 0),
(1022, 117, '普安县', 3, 0),
(1023, 117, '晴隆县', 3, 0),
(1024, 117, '贞丰县', 3, 0),
(1025, 117, '望谟县', 3, 0),
(1026, 117, '册亨县', 3, 0),
(1027, 117, '安龙县', 3, 0),
(1028, 118, '铜仁市', 3, 0),
(1029, 118, '江口县', 3, 0),
(1030, 118, '石阡县', 3, 0),
(1031, 118, '思南县', 3, 0),
(1032, 118, '德江县', 3, 0),
(1033, 118, '玉屏', 3, 0),
(1034, 118, '印江', 3, 0),
(1035, 118, '沿河', 3, 0),
(1036, 118, '松桃', 3, 0),
(1037, 118, '万山特区', 3, 0),
(1038, 119, '红花岗区', 3, 0),
(1039, 119, '务川县', 3, 0),
(1040, 119, '道真县', 3, 0),
(1041, 119, '汇川区', 3, 0),
(1042, 119, '赤水市', 3, 0),
(1043, 119, '仁怀市', 3, 0),
(1044, 119, '遵义县', 3, 0),
(1045, 119, '桐梓县', 3, 0),
(1046, 119, '绥阳县', 3, 0),
(1047, 119, '正安县', 3, 0),
(1048, 119, '凤冈县', 3, 0),
(1049, 119, '湄潭县', 3, 0),
(1050, 119, '余庆县', 3, 0),
(1051, 119, '习水县', 3, 0),
(1052, 119, '道真', 3, 0),
(1053, 119, '务川', 3, 0),
(1054, 120, '秀英区', 3, 0),
(1055, 120, '龙华区', 3, 0),
(1056, 120, '琼山区', 3, 0),
(1057, 120, '美兰区', 3, 0),
(1058, 137, '市区', 3, 0),
(1059, 137, '洋浦开发区', 3, 0),
(1060, 137, '那大镇', 3, 0),
(1061, 137, '王五镇', 3, 0),
(1062, 137, '雅星镇', 3, 0),
(1063, 137, '大成镇', 3, 0),
(1064, 137, '中和镇', 3, 0),
(1065, 137, '峨蔓镇', 3, 0),
(1066, 137, '南丰镇', 3, 0),
(1067, 137, '白马井镇', 3, 0),
(1068, 137, '兰洋镇', 3, 0),
(1069, 137, '和庆镇', 3, 0),
(1070, 137, '海头镇', 3, 0),
(1071, 137, '排浦镇', 3, 0),
(1072, 137, '东成镇', 3, 0),
(1073, 137, '光村镇', 3, 0),
(1074, 137, '木棠镇', 3, 0),
(1075, 137, '新州镇', 3, 0),
(1076, 137, '三都镇', 3, 0),
(1077, 137, '其他', 3, 0),
(1078, 138, '长安区', 3, 0),
(1079, 138, '桥东区', 3, 0),
(1080, 138, '桥西区', 3, 0),
(1081, 138, '新华区', 3, 0),
(1082, 138, '裕华区', 3, 0),
(1083, 138, '井陉矿区', 3, 0),
(1084, 138, '高新区', 3, 0),
(1085, 138, '辛集市', 3, 0),
(1086, 138, '藁城市', 3, 0),
(1087, 138, '晋州市', 3, 0),
(1088, 138, '新乐市', 3, 0),
(1089, 138, '鹿泉市', 3, 0),
(1090, 138, '井陉县', 3, 0),
(1091, 138, '正定县', 3, 0),
(1092, 138, '栾城县', 3, 0),
(1093, 138, '行唐县', 3, 0),
(1094, 138, '灵寿县', 3, 0),
(1095, 138, '高邑县', 3, 0),
(1096, 138, '深泽县', 3, 0),
(1097, 138, '赞皇县', 3, 0),
(1098, 138, '无极县', 3, 0),
(1099, 138, '平山县', 3, 0),
(1100, 138, '元氏县', 3, 0),
(1101, 138, '赵县', 3, 0),
(1102, 139, '新市区', 3, 0),
(1103, 139, '南市区', 3, 0),
(1104, 139, '北市区', 3, 0),
(1105, 139, '涿州市', 3, 0),
(1106, 139, '定州市', 3, 0),
(1107, 139, '安国市', 3, 0),
(1108, 139, '高碑店市', 3, 0),
(1109, 139, '满城县', 3, 0),
(1110, 139, '清苑县', 3, 0),
(1111, 139, '涞水县', 3, 0),
(1112, 139, '阜平县', 3, 0),
(1113, 139, '徐水县', 3, 0),
(1114, 139, '定兴县', 3, 0),
(1115, 139, '唐县', 3, 0),
(1116, 139, '高阳县', 3, 0),
(1117, 139, '容城县', 3, 0),
(1118, 139, '涞源县', 3, 0),
(1119, 139, '望都县', 3, 0),
(1120, 139, '安新县', 3, 0),
(1121, 139, '易县', 3, 0),
(1122, 139, '曲阳县', 3, 0),
(1123, 139, '蠡县', 3, 0),
(1124, 139, '顺平县', 3, 0),
(1125, 139, '博野县', 3, 0),
(1126, 139, '雄县', 3, 0),
(1127, 140, '运河区', 3, 0),
(1128, 140, '新华区', 3, 0),
(1129, 140, '泊头市', 3, 0),
(1130, 140, '任丘市', 3, 0),
(1131, 140, '黄骅市', 3, 0),
(1132, 140, '河间市', 3, 0),
(1133, 140, '沧县', 3, 0),
(1134, 140, '青县', 3, 0),
(1135, 140, '东光县', 3, 0),
(1136, 140, '海兴县', 3, 0),
(1137, 140, '盐山县', 3, 0),
(1138, 140, '肃宁县', 3, 0),
(1139, 140, '南皮县', 3, 0),
(1140, 140, '吴桥县', 3, 0),
(1141, 140, '献县', 3, 0),
(1142, 140, '孟村', 3, 0),
(1143, 141, '双桥区', 3, 0),
(1144, 141, '双滦区', 3, 0),
(1145, 141, '鹰手营子矿区', 3, 0),
(1146, 141, '承德县', 3, 0),
(1147, 141, '兴隆县', 3, 0),
(1148, 141, '平泉县', 3, 0),
(1149, 141, '滦平县', 3, 0),
(1150, 141, '隆化县', 3, 0),
(1151, 141, '丰宁', 3, 0),
(1152, 141, '宽城', 3, 0),
(1153, 141, '围场', 3, 0),
(1154, 142, '从台区', 3, 0),
(1155, 142, '复兴区', 3, 0),
(1156, 142, '邯山区', 3, 0),
(1157, 142, '峰峰矿区', 3, 0),
(1158, 142, '武安市', 3, 0),
(1159, 142, '邯郸县', 3, 0),
(1160, 142, '临漳县', 3, 0),
(1161, 142, '成安县', 3, 0),
(1162, 142, '大名县', 3, 0),
(1163, 142, '涉县', 3, 0),
(1164, 142, '磁县', 3, 0),
(1165, 142, '肥乡县', 3, 0),
(1166, 142, '永年县', 3, 0),
(1167, 142, '邱县', 3, 0),
(1168, 142, '鸡泽县', 3, 0),
(1169, 142, '广平县', 3, 0),
(1170, 142, '馆陶县', 3, 0),
(1171, 142, '魏县', 3, 0),
(1172, 142, '曲周县', 3, 0),
(1173, 143, '桃城区', 3, 0),
(1174, 143, '冀州市', 3, 0),
(1175, 143, '深州市', 3, 0),
(1176, 143, '枣强县', 3, 0),
(1177, 143, '武邑县', 3, 0),
(1178, 143, '武强县', 3, 0),
(1179, 143, '饶阳县', 3, 0),
(1180, 143, '安平县', 3, 0),
(1181, 143, '故城县', 3, 0),
(1182, 143, '景县', 3, 0),
(1183, 143, '阜城县', 3, 0),
(1184, 144, '安次区', 3, 0),
(1185, 144, '广阳区', 3, 0),
(1186, 144, '霸州市', 3, 0),
(1187, 144, '三河市', 3, 0),
(1188, 144, '固安县', 3, 0),
(1189, 144, '永清县', 3, 0),
(1190, 144, '香河县', 3, 0),
(1191, 144, '大城县', 3, 0),
(1192, 144, '文安县', 3, 0),
(1193, 144, '大厂', 3, 0),
(1194, 145, '海港区', 3, 0),
(1195, 145, '山海关区', 3, 0),
(1196, 145, '北戴河区', 3, 0),
(1197, 145, '昌黎县', 3, 0),
(1198, 145, '抚宁县', 3, 0),
(1199, 145, '卢龙县', 3, 0),
(1200, 145, '青龙', 3, 0),
(1201, 146, '路北区', 3, 0),
(1202, 146, '路南区', 3, 0),
(1203, 146, '古冶区', 3, 0),
(1204, 146, '开平区', 3, 0),
(1205, 146, '丰南区', 3, 0),
(1206, 146, '丰润区', 3, 0),
(1207, 146, '遵化市', 3, 0),
(1208, 146, '迁安市', 3, 0),
(1209, 146, '滦县', 3, 0),
(1210, 146, '滦南县', 3, 0),
(1211, 146, '乐亭县', 3, 0),
(1212, 146, '迁西县', 3, 0),
(1213, 146, '玉田县', 3, 0),
(1214, 146, '唐海县', 3, 0),
(1215, 147, '桥东区', 3, 0),
(1216, 147, '桥西区', 3, 0),
(1217, 147, '南宫市', 3, 0),
(1218, 147, '沙河市', 3, 0),
(1219, 147, '邢台县', 3, 0),
(1220, 147, '临城县', 3, 0),
(1221, 147, '内丘县', 3, 0),
(1222, 147, '柏乡县', 3, 0),
(1223, 147, '隆尧县', 3, 0),
(1224, 147, '任县', 3, 0),
(1225, 147, '南和县', 3, 0),
(1226, 147, '宁晋县', 3, 0),
(1227, 147, '巨鹿县', 3, 0),
(1228, 147, '新河县', 3, 0),
(1229, 147, '广宗县', 3, 0),
(1230, 147, '平乡县', 3, 0),
(1231, 147, '威县', 3, 0),
(1232, 147, '清河县', 3, 0),
(1233, 147, '临西县', 3, 0),
(1234, 148, '桥西区', 3, 0),
(1235, 148, '桥东区', 3, 0),
(1236, 148, '宣化区', 3, 0),
(1237, 148, '下花园区', 3, 0),
(1238, 148, '宣化县', 3, 0),
(1239, 148, '张北县', 3, 0),
(1240, 148, '康保县', 3, 0),
(1241, 148, '沽源县', 3, 0),
(1242, 148, '尚义县', 3, 0),
(1243, 148, '蔚县', 3, 0),
(1244, 148, '阳原县', 3, 0),
(1245, 148, '怀安县', 3, 0),
(1246, 148, '万全县', 3, 0),
(1247, 148, '怀来县', 3, 0),
(1248, 148, '涿鹿县', 3, 0),
(1249, 148, '赤城县', 3, 0),
(1250, 148, '崇礼县', 3, 0),
(1251, 149, '金水区', 3, 0),
(1252, 149, '邙山区', 3, 0),
(1253, 149, '二七区', 3, 0),
(1254, 149, '管城区', 3, 0),
(1255, 149, '中原区', 3, 0),
(1256, 149, '上街区', 3, 0),
(1257, 149, '惠济区', 3, 0),
(1258, 149, '郑东新区', 3, 0),
(1259, 149, '经济技术开发区', 3, 0),
(1260, 149, '高新开发区', 3, 0),
(1261, 149, '出口加工区', 3, 0),
(1262, 149, '巩义市', 3, 0),
(1263, 149, '荥阳市', 3, 0),
(1264, 149, '新密市', 3, 0),
(1265, 149, '新郑市', 3, 0),
(1266, 149, '登封市', 3, 0),
(1267, 149, '中牟县', 3, 0),
(1268, 150, '西工区', 3, 0),
(1269, 150, '老城区', 3, 0),
(1270, 150, '涧西区', 3, 0),
(1271, 150, '瀍河回族区', 3, 0),
(1272, 150, '洛龙区', 3, 0),
(1273, 150, '吉利区', 3, 0),
(1274, 150, '偃师市', 3, 0),
(1275, 150, '孟津县', 3, 0),
(1276, 150, '新安县', 3, 0),
(1277, 150, '栾川县', 3, 0),
(1278, 150, '嵩县', 3, 0),
(1279, 150, '汝阳县', 3, 0),
(1280, 150, '宜阳县', 3, 0),
(1281, 150, '洛宁县', 3, 0),
(1282, 150, '伊川县', 3, 0),
(1283, 151, '鼓楼区', 3, 0),
(1284, 151, '龙亭区', 3, 0),
(1285, 151, '顺河回族区', 3, 0),
(1286, 151, '金明区', 3, 0),
(1287, 151, '禹王台区', 3, 0),
(1288, 151, '杞县', 3, 0),
(1289, 151, '通许县', 3, 0),
(1290, 151, '尉氏县', 3, 0),
(1291, 151, '开封县', 3, 0),
(1292, 151, '兰考县', 3, 0),
(1293, 152, '北关区', 3, 0),
(1294, 152, '文峰区', 3, 0),
(1295, 152, '殷都区', 3, 0),
(1296, 152, '龙安区', 3, 0),
(1297, 152, '林州市', 3, 0),
(1298, 152, '安阳县', 3, 0),
(1299, 152, '汤阴县', 3, 0),
(1300, 152, '滑县', 3, 0),
(1301, 152, '内黄县', 3, 0),
(1302, 153, '淇滨区', 3, 0),
(1303, 153, '山城区', 3, 0),
(1304, 153, '鹤山区', 3, 0),
(1305, 153, '浚县', 3, 0),
(1306, 153, '淇县', 3, 0),
(1307, 154, '济源市', 3, 0),
(1308, 155, '解放区', 3, 0),
(1309, 155, '中站区', 3, 0),
(1310, 155, '马村区', 3, 0),
(1311, 155, '山阳区', 3, 0),
(1312, 155, '沁阳市', 3, 0),
(1313, 155, '孟州市', 3, 0),
(1314, 155, '修武县', 3, 0),
(1315, 155, '博爱县', 3, 0),
(1316, 155, '武陟县', 3, 0),
(1317, 155, '温县', 3, 0),
(1318, 156, '卧龙区', 3, 0),
(1319, 156, '宛城区', 3, 0),
(1320, 156, '邓州市', 3, 0),
(1321, 156, '南召县', 3, 0),
(1322, 156, '方城县', 3, 0),
(1323, 156, '西峡县', 3, 0),
(1324, 156, '镇平县', 3, 0),
(1325, 156, '内乡县', 3, 0),
(1326, 156, '淅川县', 3, 0),
(1327, 156, '社旗县', 3, 0),
(1328, 156, '唐河县', 3, 0),
(1329, 156, '新野县', 3, 0),
(1330, 156, '桐柏县', 3, 0),
(1331, 157, '新华区', 3, 0),
(1332, 157, '卫东区', 3, 0),
(1333, 157, '湛河区', 3, 0),
(1334, 157, '石龙区', 3, 0),
(1335, 157, '舞钢市', 3, 0),
(1336, 157, '汝州市', 3, 0),
(1337, 157, '宝丰县', 3, 0),
(1338, 157, '叶县', 3, 0),
(1339, 157, '鲁山县', 3, 0),
(1340, 157, '郏县', 3, 0),
(1341, 158, '湖滨区', 3, 0),
(1342, 158, '义马市', 3, 0),
(1343, 158, '灵宝市', 3, 0),
(1344, 158, '渑池县', 3, 0),
(1345, 158, '陕县', 3, 0),
(1346, 158, '卢氏县', 3, 0),
(1347, 159, '梁园区', 3, 0),
(1348, 159, '睢阳区', 3, 0),
(1349, 159, '永城市', 3, 0),
(1350, 159, '民权县', 3, 0),
(1351, 159, '睢县', 3, 0),
(1352, 159, '宁陵县', 3, 0),
(1353, 159, '虞城县', 3, 0),
(1354, 159, '柘城县', 3, 0),
(1355, 159, '夏邑县', 3, 0),
(1356, 160, '卫滨区', 3, 0),
(1357, 160, '红旗区', 3, 0),
(1358, 160, '凤泉区', 3, 0),
(1359, 160, '牧野区', 3, 0),
(1360, 160, '卫辉市', 3, 0),
(1361, 160, '辉县市', 3, 0),
(1362, 160, '新乡县', 3, 0),
(1363, 160, '获嘉县', 3, 0),
(1364, 160, '原阳县', 3, 0),
(1365, 160, '延津县', 3, 0),
(1366, 160, '封丘县', 3, 0),
(1367, 160, '长垣县', 3, 0),
(1368, 161, '浉河区', 3, 0),
(1369, 161, '平桥区', 3, 0),
(1370, 161, '罗山县', 3, 0),
(1371, 161, '光山县', 3, 0),
(1372, 161, '新县', 3, 0),
(1373, 161, '商城县', 3, 0),
(1374, 161, '固始县', 3, 0),
(1375, 161, '潢川县', 3, 0),
(1376, 161, '淮滨县', 3, 0),
(1377, 161, '息县', 3, 0),
(1378, 162, '魏都区', 3, 0),
(1379, 162, '禹州市', 3, 0),
(1380, 162, '长葛市', 3, 0),
(1381, 162, '许昌县', 3, 0),
(1382, 162, '鄢陵县', 3, 0),
(1383, 162, '襄城县', 3, 0),
(1384, 163, '川汇区', 3, 0),
(1385, 163, '项城市', 3, 0),
(1386, 163, '扶沟县', 3, 0),
(1387, 163, '西华县', 3, 0),
(1388, 163, '商水县', 3, 0),
(1389, 163, '沈丘县', 3, 0),
(1390, 163, '郸城县', 3, 0),
(1391, 163, '淮阳县', 3, 0),
(1392, 163, '太康县', 3, 0),
(1393, 163, '鹿邑县', 3, 0),
(1394, 164, '驿城区', 3, 0),
(1395, 164, '西平县', 3, 0),
(1396, 164, '上蔡县', 3, 0),
(1397, 164, '平舆县', 3, 0),
(1398, 164, '正阳县', 3, 0),
(1399, 164, '确山县', 3, 0),
(1400, 164, '泌阳县', 3, 0),
(1401, 164, '汝南县', 3, 0),
(1402, 164, '遂平县', 3, 0),
(1403, 164, '新蔡县', 3, 0),
(1404, 165, '郾城区', 3, 0),
(1405, 165, '源汇区', 3, 0),
(1406, 165, '召陵区', 3, 0),
(1407, 165, '舞阳县', 3, 0),
(1408, 165, '临颍县', 3, 0),
(1409, 166, '华龙区', 3, 0),
(1410, 166, '清丰县', 3, 0),
(1411, 166, '南乐县', 3, 0),
(1412, 166, '范县', 3, 0),
(1413, 166, '台前县', 3, 0),
(1414, 166, '濮阳县', 3, 0),
(1415, 167, '道里区', 3, 0),
(1416, 167, '南岗区', 3, 0),
(1417, 167, '动力区', 3, 0),
(1418, 167, '平房区', 3, 0),
(1419, 167, '香坊区', 3, 0),
(1420, 167, '太平区', 3, 0),
(1421, 167, '道外区', 3, 0),
(1422, 167, '阿城区', 3, 0),
(1423, 167, '呼兰区', 3, 0),
(1424, 167, '松北区', 3, 0),
(1425, 167, '尚志市', 3, 0),
(1426, 167, '双城市', 3, 0),
(1427, 167, '五常市', 3, 0),
(1428, 167, '方正县', 3, 0),
(1429, 167, '宾县', 3, 0),
(1430, 167, '依兰县', 3, 0),
(1431, 167, '巴彦县', 3, 0),
(1432, 167, '通河县', 3, 0),
(1433, 167, '木兰县', 3, 0),
(1434, 167, '延寿县', 3, 0),
(1435, 168, '萨尔图区', 3, 0),
(1436, 168, '红岗区', 3, 0),
(1437, 168, '龙凤区', 3, 0),
(1438, 168, '让胡路区', 3, 0),
(1439, 168, '大同区', 3, 0),
(1440, 168, '肇州县', 3, 0),
(1441, 168, '肇源县', 3, 0),
(1442, 168, '林甸县', 3, 0),
(1443, 168, '杜尔伯特', 3, 0),
(1444, 169, '呼玛县', 3, 0),
(1445, 169, '漠河县', 3, 0),
(1446, 169, '塔河县', 3, 0),
(1447, 170, '兴山区', 3, 0),
(1448, 170, '工农区', 3, 0),
(1449, 170, '南山区', 3, 0),
(1450, 170, '兴安区', 3, 0),
(1451, 170, '向阳区', 3, 0),
(1452, 170, '东山区', 3, 0),
(1453, 170, '萝北县', 3, 0),
(1454, 170, '绥滨县', 3, 0),
(1455, 171, '爱辉区', 3, 0),
(1456, 171, '五大连池市', 3, 0),
(1457, 171, '北安市', 3, 0),
(1458, 171, '嫩江县', 3, 0),
(1459, 171, '逊克县', 3, 0),
(1460, 171, '孙吴县', 3, 0),
(1461, 172, '鸡冠区', 3, 0),
(1462, 172, '恒山区', 3, 0),
(1463, 172, '城子河区', 3, 0),
(1464, 172, '滴道区', 3, 0),
(1465, 172, '梨树区', 3, 0),
(1466, 172, '虎林市', 3, 0),
(1467, 172, '密山市', 3, 0),
(1468, 172, '鸡东县', 3, 0),
(1469, 173, '前进区', 3, 0),
(1470, 173, '郊区', 3, 0),
(1471, 173, '向阳区', 3, 0),
(1472, 173, '东风区', 3, 0),
(1473, 173, '同江市', 3, 0),
(1474, 173, '富锦市', 3, 0),
(1475, 173, '桦南县', 3, 0),
(1476, 173, '桦川县', 3, 0),
(1477, 173, '汤原县', 3, 0),
(1478, 173, '抚远县', 3, 0),
(1479, 174, '爱民区', 3, 0),
(1480, 174, '东安区', 3, 0),
(1481, 174, '阳明区', 3, 0),
(1482, 174, '西安区', 3, 0),
(1483, 174, '绥芬河市', 3, 0),
(1484, 174, '海林市', 3, 0),
(1485, 174, '宁安市', 3, 0),
(1486, 174, '穆棱市', 3, 0),
(1487, 174, '东宁县', 3, 0),
(1488, 174, '林口县', 3, 0),
(1489, 175, '桃山区', 3, 0),
(1490, 175, '新兴区', 3, 0),
(1491, 175, '茄子河区', 3, 0),
(1492, 175, '勃利县', 3, 0),
(1493, 176, '龙沙区', 3, 0),
(1494, 176, '昂昂溪区', 3, 0),
(1495, 176, '铁峰区', 3, 0),
(1496, 176, '建华区', 3, 0),
(1497, 176, '富拉尔基区', 3, 0),
(1498, 176, '碾子山区', 3, 0),
(1499, 176, '梅里斯达斡尔区', 3, 0),
(1500, 176, '讷河市', 3, 0),
(1501, 176, '龙江县', 3, 0),
(1502, 176, '依安县', 3, 0),
(1503, 176, '泰来县', 3, 0),
(1504, 176, '甘南县', 3, 0),
(1505, 176, '富裕县', 3, 0),
(1506, 176, '克山县', 3, 0),
(1507, 176, '克东县', 3, 0),
(1508, 176, '拜泉县', 3, 0),
(1509, 177, '尖山区', 3, 0),
(1510, 177, '岭东区', 3, 0),
(1511, 177, '四方台区', 3, 0),
(1512, 177, '宝山区', 3, 0),
(1513, 177, '集贤县', 3, 0),
(1514, 177, '友谊县', 3, 0),
(1515, 177, '宝清县', 3, 0),
(1516, 177, '饶河县', 3, 0),
(1517, 178, '北林区', 3, 0),
(1518, 178, '安达市', 3, 0),
(1519, 178, '肇东市', 3, 0),
(1520, 178, '海伦市', 3, 0),
(1521, 178, '望奎县', 3, 0),
(1522, 178, '兰西县', 3, 0),
(1523, 178, '青冈县', 3, 0),
(1524, 178, '庆安县', 3, 0),
(1525, 178, '明水县', 3, 0),
(1526, 178, '绥棱县', 3, 0),
(1527, 179, '伊春区', 3, 0),
(1528, 179, '带岭区', 3, 0),
(1529, 179, '南岔区', 3, 0),
(1530, 179, '金山屯区', 3, 0),
(1531, 179, '西林区', 3, 0),
(1532, 179, '美溪区', 3, 0),
(1533, 179, '乌马河区', 3, 0),
(1534, 179, '翠峦区', 3, 0),
(1535, 179, '友好区', 3, 0),
(1536, 179, '上甘岭区', 3, 0),
(1537, 179, '五营区', 3, 0),
(1538, 179, '红星区', 3, 0),
(1539, 179, '新青区', 3, 0),
(1540, 179, '汤旺河区', 3, 0),
(1541, 179, '乌伊岭区', 3, 0),
(1542, 179, '铁力市', 3, 0),
(1543, 179, '嘉荫县', 3, 0),
(1544, 180, '江岸区', 3, 0),
(1545, 180, '武昌区', 3, 0),
(1546, 180, '江汉区', 3, 0),
(1547, 180, '硚口区', 3, 0),
(1548, 180, '汉阳区', 3, 0),
(1549, 180, '青山区', 3, 0),
(1550, 180, '洪山区', 3, 0),
(1551, 180, '东西湖区', 3, 0),
(1552, 180, '汉南区', 3, 0),
(1553, 180, '蔡甸区', 3, 0),
(1554, 180, '江夏区', 3, 0),
(1555, 180, '黄陂区', 3, 0),
(1556, 180, '新洲区', 3, 0),
(1557, 180, '经济开发区', 3, 0),
(1558, 181, '仙桃市', 3, 0),
(1559, 182, '鄂城区', 3, 0),
(1560, 182, '华容区', 3, 0),
(1561, 182, '梁子湖区', 3, 0),
(1562, 183, '黄州区', 3, 0),
(1563, 183, '麻城市', 3, 0),
(1564, 183, '武穴市', 3, 0),
(1565, 183, '团风县', 3, 0),
(1566, 183, '红安县', 3, 0),
(1567, 183, '罗田县', 3, 0),
(1568, 183, '英山县', 3, 0),
(1569, 183, '浠水县', 3, 0),
(1570, 183, '蕲春县', 3, 0),
(1571, 183, '黄梅县', 3, 0),
(1572, 184, '黄石港区', 3, 0),
(1573, 184, '西塞山区', 3, 0),
(1574, 184, '下陆区', 3, 0),
(1575, 184, '铁山区', 3, 0),
(1576, 184, '大冶市', 3, 0),
(1577, 184, '阳新县', 3, 0),
(1578, 185, '东宝区', 3, 0),
(1579, 185, '掇刀区', 3, 0),
(1580, 185, '钟祥市', 3, 0),
(1581, 185, '京山县', 3, 0),
(1582, 185, '沙洋县', 3, 0),
(1583, 186, '沙市区', 3, 0),
(1584, 186, '荆州区', 3, 0),
(1585, 186, '石首市', 3, 0),
(1586, 186, '洪湖市', 3, 0),
(1587, 186, '松滋市', 3, 0),
(1588, 186, '公安县', 3, 0),
(1589, 186, '监利县', 3, 0),
(1590, 186, '江陵县', 3, 0),
(1591, 187, '潜江市', 3, 0),
(1592, 188, '神农架林区', 3, 0),
(1593, 189, '张湾区', 3, 0),
(1594, 189, '茅箭区', 3, 0),
(1595, 189, '丹江口市', 3, 0),
(1596, 189, '郧县', 3, 0),
(1597, 189, '郧西县', 3, 0),
(1598, 189, '竹山县', 3, 0),
(1599, 189, '竹溪县', 3, 0),
(1600, 189, '房县', 3, 0),
(1601, 190, '曾都区', 3, 0),
(1602, 190, '广水市', 3, 0),
(1603, 191, '天门市', 3, 0),
(1604, 192, '咸安区', 3, 0),
(1605, 192, '赤壁市', 3, 0),
(1606, 192, '嘉鱼县', 3, 0),
(1607, 192, '通城县', 3, 0),
(1608, 192, '崇阳县', 3, 0),
(1609, 192, '通山县', 3, 0),
(1610, 193, '襄城区', 3, 0),
(1611, 193, '樊城区', 3, 0),
(1612, 193, '襄阳区', 3, 0),
(1613, 193, '老河口市', 3, 0),
(1614, 193, '枣阳市', 3, 0),
(1615, 193, '宜城市', 3, 0),
(1616, 193, '南漳县', 3, 0),
(1617, 193, '谷城县', 3, 0),
(1618, 193, '保康县', 3, 0),
(1619, 194, '孝南区', 3, 0),
(1620, 194, '应城市', 3, 0),
(1621, 194, '安陆市', 3, 0),
(1622, 194, '汉川市', 3, 0),
(1623, 194, '孝昌县', 3, 0),
(1624, 194, '大悟县', 3, 0),
(1625, 194, '云梦县', 3, 0),
(1626, 195, '长阳', 3, 0),
(1627, 195, '五峰', 3, 0),
(1628, 195, '西陵区', 3, 0),
(1629, 195, '伍家岗区', 3, 0),
(1630, 195, '点军区', 3, 0),
(1631, 195, '猇亭区', 3, 0),
(1632, 195, '夷陵区', 3, 0),
(1633, 195, '宜都市', 3, 0),
(1634, 195, '当阳市', 3, 0),
(1635, 195, '枝江市', 3, 0),
(1636, 195, '远安县', 3, 0),
(1637, 195, '兴山县', 3, 0),
(1638, 195, '秭归县', 3, 0),
(1639, 196, '恩施市', 3, 0),
(1640, 196, '利川市', 3, 0),
(1641, 196, '建始县', 3, 0),
(1642, 196, '巴东县', 3, 0),
(1643, 196, '宣恩县', 3, 0),
(1644, 196, '咸丰县', 3, 0),
(1645, 196, '来凤县', 3, 0),
(1646, 196, '鹤峰县', 3, 0),
(1647, 197, '岳麓区', 3, 0),
(1648, 197, '芙蓉区', 3, 0),
(1649, 197, '天心区', 3, 0),
(1650, 197, '开福区', 3, 0),
(1651, 197, '雨花区', 3, 0),
(1652, 197, '开发区', 3, 0),
(1653, 197, '浏阳市', 3, 0),
(1654, 197, '长沙县', 3, 0),
(1655, 197, '望城县', 3, 0),
(1656, 197, '宁乡县', 3, 0),
(1657, 198, '永定区', 3, 0),
(1658, 198, '武陵源区', 3, 0),
(1659, 198, '慈利县', 3, 0),
(1660, 198, '桑植县', 3, 0),
(1661, 199, '武陵区', 3, 0),
(1662, 199, '鼎城区', 3, 0),
(1663, 199, '津市市', 3, 0),
(1664, 199, '安乡县', 3, 0),
(1665, 199, '汉寿县', 3, 0),
(1666, 199, '澧县', 3, 0),
(1667, 199, '临澧县', 3, 0),
(1668, 199, '桃源县', 3, 0),
(1669, 199, '石门县', 3, 0),
(1670, 200, '北湖区', 3, 0),
(1671, 200, '苏仙区', 3, 0),
(1672, 200, '资兴市', 3, 0),
(1673, 200, '桂阳县', 3, 0),
(1674, 200, '宜章县', 3, 0),
(1675, 200, '永兴县', 3, 0),
(1676, 200, '嘉禾县', 3, 0),
(1677, 200, '临武县', 3, 0),
(1678, 200, '汝城县', 3, 0),
(1679, 200, '桂东县', 3, 0),
(1680, 200, '安仁县', 3, 0),
(1681, 201, '雁峰区', 3, 0),
(1682, 201, '珠晖区', 3, 0),
(1683, 201, '石鼓区', 3, 0),
(1684, 201, '蒸湘区', 3, 0),
(1685, 201, '南岳区', 3, 0),
(1686, 201, '耒阳市', 3, 0),
(1687, 201, '常宁市', 3, 0),
(1688, 201, '衡阳县', 3, 0),
(1689, 201, '衡南县', 3, 0),
(1690, 201, '衡山县', 3, 0),
(1691, 201, '衡东县', 3, 0),
(1692, 201, '祁东县', 3, 0),
(1693, 202, '鹤城区', 3, 0),
(1694, 202, '靖州', 3, 0),
(1695, 202, '麻阳', 3, 0),
(1696, 202, '通道', 3, 0),
(1697, 202, '新晃', 3, 0),
(1698, 202, '芷江', 3, 0),
(1699, 202, '沅陵县', 3, 0),
(1700, 202, '辰溪县', 3, 0),
(1701, 202, '溆浦县', 3, 0),
(1702, 202, '中方县', 3, 0),
(1703, 202, '会同县', 3, 0),
(1704, 202, '洪江市', 3, 0),
(1705, 203, '娄星区', 3, 0),
(1706, 203, '冷水江市', 3, 0),
(1707, 203, '涟源市', 3, 0),
(1708, 203, '双峰县', 3, 0),
(1709, 203, '新化县', 3, 0),
(1710, 204, '城步', 3, 0),
(1711, 204, '双清区', 3, 0),
(1712, 204, '大祥区', 3, 0),
(1713, 204, '北塔区', 3, 0),
(1714, 204, '武冈市', 3, 0),
(1715, 204, '邵东县', 3, 0),
(1716, 204, '新邵县', 3, 0),
(1717, 204, '邵阳县', 3, 0),
(1718, 204, '隆回县', 3, 0),
(1719, 204, '洞口县', 3, 0),
(1720, 204, '绥宁县', 3, 0),
(1721, 204, '新宁县', 3, 0),
(1722, 205, '岳塘区', 3, 0),
(1723, 205, '雨湖区', 3, 0),
(1724, 205, '湘乡市', 3, 0),
(1725, 205, '韶山市', 3, 0),
(1726, 205, '湘潭县', 3, 0),
(1727, 206, '吉首市', 3, 0),
(1728, 206, '泸溪县', 3, 0),
(1729, 206, '凤凰县', 3, 0),
(1730, 206, '花垣县', 3, 0),
(1731, 206, '保靖县', 3, 0),
(1732, 206, '古丈县', 3, 0),
(1733, 206, '永顺县', 3, 0),
(1734, 206, '龙山县', 3, 0),
(1735, 207, '赫山区', 3, 0),
(1736, 207, '资阳区', 3, 0),
(1737, 207, '沅江市', 3, 0),
(1738, 207, '南县', 3, 0),
(1739, 207, '桃江县', 3, 0),
(1740, 207, '安化县', 3, 0),
(1741, 208, '江华', 3, 0),
(1742, 208, '冷水滩区', 3, 0),
(1743, 208, '零陵区', 3, 0),
(1744, 208, '祁阳县', 3, 0),
(1745, 208, '东安县', 3, 0),
(1746, 208, '双牌县', 3, 0),
(1747, 208, '道县', 3, 0),
(1748, 208, '江永县', 3, 0),
(1749, 208, '宁远县', 3, 0),
(1750, 208, '蓝山县', 3, 0),
(1751, 208, '新田县', 3, 0),
(1752, 209, '岳阳楼区', 3, 0),
(1753, 209, '君山区', 3, 0),
(1754, 209, '云溪区', 3, 0),
(1755, 209, '汨罗市', 3, 0),
(1756, 209, '临湘市', 3, 0),
(1757, 209, '岳阳县', 3, 0),
(1758, 209, '华容县', 3, 0),
(1759, 209, '湘阴县', 3, 0),
(1760, 209, '平江县', 3, 0),
(1761, 210, '天元区', 3, 0),
(1762, 210, '荷塘区', 3, 0),
(1763, 210, '芦淞区', 3, 0),
(1764, 210, '石峰区', 3, 0),
(1765, 210, '醴陵市', 3, 0),
(1766, 210, '株洲县', 3, 0),
(1767, 210, '攸县', 3, 0),
(1768, 210, '茶陵县', 3, 0),
(1769, 210, '炎陵县', 3, 0),
(1770, 211, '朝阳区', 3, 0),
(1771, 211, '宽城区', 3, 0),
(1772, 211, '二道区', 3, 0),
(1773, 211, '南关区', 3, 0),
(1774, 211, '绿园区', 3, 0),
(1775, 211, '双阳区', 3, 0),
(1776, 211, '净月潭开发区', 3, 0),
(1777, 211, '高新技术开发区', 3, 0),
(1778, 211, '经济技术开发区', 3, 0),
(1779, 211, '汽车产业开发区', 3, 0),
(1780, 211, '德惠市', 3, 0),
(1781, 211, '九台市', 3, 0),
(1782, 211, '榆树市', 3, 0),
(1783, 211, '农安县', 3, 0),
(1784, 212, '船营区', 3, 0),
(1785, 212, '昌邑区', 3, 0),
(1786, 212, '龙潭区', 3, 0),
(1787, 212, '丰满区', 3, 0),
(1788, 212, '蛟河市', 3, 0),
(1789, 212, '桦甸市', 3, 0),
(1790, 212, '舒兰市', 3, 0),
(1791, 212, '磐石市', 3, 0),
(1792, 212, '永吉县', 3, 0),
(1793, 213, '洮北区', 3, 0),
(1794, 213, '洮南市', 3, 0),
(1795, 213, '大安市', 3, 0),
(1796, 213, '镇赉县', 3, 0),
(1797, 213, '通榆县', 3, 0),
(1798, 214, '江源区', 3, 0),
(1799, 214, '八道江区', 3, 0),
(1800, 214, '长白', 3, 0),
(1801, 214, '临江市', 3, 0),
(1802, 214, '抚松县', 3, 0),
(1803, 214, '靖宇县', 3, 0),
(1804, 215, '龙山区', 3, 0),
(1805, 215, '西安区', 3, 0),
(1806, 215, '东丰县', 3, 0),
(1807, 215, '东辽县', 3, 0),
(1808, 216, '铁西区', 3, 0),
(1809, 216, '铁东区', 3, 0),
(1810, 216, '伊通', 3, 0),
(1811, 216, '公主岭市', 3, 0),
(1812, 216, '双辽市', 3, 0),
(1813, 216, '梨树县', 3, 0),
(1814, 217, '前郭尔罗斯', 3, 0),
(1815, 217, '宁江区', 3, 0),
(1816, 217, '长岭县', 3, 0),
(1817, 217, '乾安县', 3, 0),
(1818, 217, '扶余县', 3, 0),
(1819, 218, '东昌区', 3, 0),
(1820, 218, '二道江区', 3, 0),
(1821, 218, '梅河口市', 3, 0),
(1822, 218, '集安市', 3, 0),
(1823, 218, '通化县', 3, 0),
(1824, 218, '辉南县', 3, 0),
(1825, 218, '柳河县', 3, 0),
(1826, 219, '延吉市', 3, 0),
(1827, 219, '图们市', 3, 0),
(1828, 219, '敦化市', 3, 0),
(1829, 219, '珲春市', 3, 0),
(1830, 219, '龙井市', 3, 0),
(1831, 219, '和龙市', 3, 0),
(1832, 219, '安图县', 3, 0),
(1833, 219, '汪清县', 3, 0),
(1834, 220, '玄武区', 3, 0),
(1835, 220, '鼓楼区', 3, 0),
(1836, 220, '白下区', 3, 0),
(1837, 220, '建邺区', 3, 0),
(1838, 220, '秦淮区', 3, 0),
(1839, 220, '雨花台区', 3, 0),
(1840, 220, '下关区', 3, 0),
(1841, 220, '栖霞区', 3, 0),
(1842, 220, '浦口区', 3, 0),
(1843, 220, '江宁区', 3, 0),
(1844, 220, '六合区', 3, 0),
(1845, 220, '溧水县', 3, 0),
(1846, 220, '高淳县', 3, 0),
(1847, 221, '沧浪区', 3, 0),
(1848, 221, '金阊区', 3, 0),
(1849, 221, '平江区', 3, 0),
(1850, 221, '虎丘区', 3, 0),
(1851, 221, '吴中区', 3, 0),
(1852, 221, '相城区', 3, 0),
(1853, 221, '园区', 3, 0),
(1854, 221, '新区', 3, 0),
(1855, 221, '常熟市', 3, 0),
(1856, 221, '张家港市', 3, 0),
(1857, 221, '玉山镇', 3, 0),
(1858, 221, '巴城镇', 3, 0),
(1859, 221, '周市镇', 3, 0),
(1860, 221, '陆家镇', 3, 0),
(1861, 221, '花桥镇', 3, 0),
(1862, 221, '淀山湖镇', 3, 0),
(1863, 221, '张浦镇', 3, 0),
(1864, 221, '周庄镇', 3, 0),
(1865, 221, '千灯镇', 3, 0),
(1866, 221, '锦溪镇', 3, 0),
(1867, 221, '开发区', 3, 0),
(1868, 221, '吴江市', 3, 0),
(1869, 221, '太仓市', 3, 0),
(1870, 222, '崇安区', 3, 0),
(1871, 222, '北塘区', 3, 0),
(1872, 222, '南长区', 3, 0),
(1873, 222, '锡山区', 3, 0),
(1874, 222, '惠山区', 3, 0),
(1875, 222, '滨湖区', 3, 0),
(1876, 222, '新区', 3, 0),
(1877, 222, '江阴市', 3, 0),
(1878, 222, '宜兴市', 3, 0),
(1879, 223, '天宁区', 3, 0),
(1880, 223, '钟楼区', 3, 0),
(1881, 223, '戚墅堰区', 3, 0),
(1882, 223, '郊区', 3, 0),
(1883, 223, '新北区', 3, 0),
(1884, 223, '武进区', 3, 0),
(1885, 223, '溧阳市', 3, 0),
(1886, 223, '金坛市', 3, 0),
(1887, 224, '清河区', 3, 0),
(1888, 224, '清浦区', 3, 0),
(1889, 224, '楚州区', 3, 0),
(1890, 224, '淮阴区', 3, 0),
(1891, 224, '涟水县', 3, 0),
(1892, 224, '洪泽县', 3, 0),
(1893, 224, '盱眙县', 3, 0),
(1894, 224, '金湖县', 3, 0),
(1895, 225, '新浦区', 3, 0),
(1896, 225, '连云区', 3, 0),
(1897, 225, '海州区', 3, 0),
(1898, 225, '赣榆县', 3, 0),
(1899, 225, '东海县', 3, 0),
(1900, 225, '灌云县', 3, 0),
(1901, 225, '灌南县', 3, 0),
(1902, 226, '崇川区', 3, 0),
(1903, 226, '港闸区', 3, 0),
(1904, 226, '经济开发区', 3, 0),
(1905, 226, '启东市', 3, 0),
(1906, 226, '如皋市', 3, 0),
(1907, 226, '通州市', 3, 0),
(1908, 226, '海门市', 3, 0),
(1909, 226, '海安县', 3, 0),
(1910, 226, '如东县', 3, 0),
(1911, 227, '宿城区', 3, 0),
(1912, 227, '宿豫区', 3, 0),
(1913, 227, '宿豫县', 3, 0),
(1914, 227, '沭阳县', 3, 0),
(1915, 227, '泗阳县', 3, 0),
(1916, 227, '泗洪县', 3, 0),
(1917, 228, '海陵区', 3, 0),
(1918, 228, '高港区', 3, 0),
(1919, 228, '兴化市', 3, 0),
(1920, 228, '靖江市', 3, 0),
(1921, 228, '泰兴市', 3, 0),
(1922, 228, '姜堰市', 3, 0),
(1923, 229, '云龙区', 3, 0),
(1924, 229, '鼓楼区', 3, 0),
(1925, 229, '九里区', 3, 0),
(1926, 229, '贾汪区', 3, 0),
(1927, 229, '泉山区', 3, 0),
(1928, 229, '新沂市', 3, 0),
(1929, 229, '邳州市', 3, 0),
(1930, 229, '丰县', 3, 0),
(1931, 229, '沛县', 3, 0),
(1932, 229, '铜山县', 3, 0),
(1933, 229, '睢宁县', 3, 0),
(1934, 230, '城区', 3, 0),
(1935, 230, '亭湖区', 3, 0),
(1936, 230, '盐都区', 3, 0),
(1937, 230, '盐都县', 3, 0),
(1938, 230, '东台市', 3, 0),
(1939, 230, '大丰市', 3, 0),
(1940, 230, '响水县', 3, 0),
(1941, 230, '滨海县', 3, 0),
(1942, 230, '阜宁县', 3, 0),
(1943, 230, '射阳县', 3, 0),
(1944, 230, '建湖县', 3, 0),
(1945, 231, '广陵区', 3, 0),
(1946, 231, '维扬区', 3, 0),
(1947, 231, '邗江区', 3, 0),
(1948, 231, '仪征市', 3, 0),
(1949, 231, '高邮市', 3, 0),
(1950, 231, '江都市', 3, 0),
(1951, 231, '宝应县', 3, 0),
(1952, 232, '京口区', 3, 0),
(1953, 232, '润州区', 3, 0),
(1954, 232, '丹徒区', 3, 0),
(1955, 232, '丹阳市', 3, 0),
(1956, 232, '扬中市', 3, 0),
(1957, 232, '句容市', 3, 0),
(1958, 233, '东湖区', 3, 0),
(1959, 233, '西湖区', 3, 0),
(1960, 233, '青云谱区', 3, 0),
(1961, 233, '湾里区', 3, 0),
(1962, 233, '青山湖区', 3, 0),
(1963, 233, '红谷滩新区', 3, 0),
(1964, 233, '昌北区', 3, 0),
(1965, 233, '高新区', 3, 0),
(1966, 233, '南昌县', 3, 0),
(1967, 233, '新建县', 3, 0),
(1968, 233, '安义县', 3, 0),
(1969, 233, '进贤县', 3, 0),
(1970, 234, '临川区', 3, 0),
(1971, 234, '南城县', 3, 0),
(1972, 234, '黎川县', 3, 0),
(1973, 234, '南丰县', 3, 0),
(1974, 234, '崇仁县', 3, 0),
(1975, 234, '乐安县', 3, 0),
(1976, 234, '宜黄县', 3, 0),
(1977, 234, '金溪县', 3, 0),
(1978, 234, '资溪县', 3, 0),
(1979, 234, '东乡县', 3, 0),
(1980, 234, '广昌县', 3, 0),
(1981, 235, '章贡区', 3, 0),
(1982, 235, '于都县', 3, 0),
(1983, 235, '瑞金市', 3, 0),
(1984, 235, '南康市', 3, 0),
(1985, 235, '赣县', 3, 0),
(1986, 235, '信丰县', 3, 0),
(1987, 235, '大余县', 3, 0),
(1988, 235, '上犹县', 3, 0),
(1989, 235, '崇义县', 3, 0),
(1990, 235, '安远县', 3, 0),
(1991, 235, '龙南县', 3, 0),
(1992, 235, '定南县', 3, 0),
(1993, 235, '全南县', 3, 0),
(1994, 235, '宁都县', 3, 0),
(1995, 235, '兴国县', 3, 0),
(1996, 235, '会昌县', 3, 0),
(1997, 235, '寻乌县', 3, 0),
(1998, 235, '石城县', 3, 0),
(1999, 236, '安福县', 3, 0),
(2000, 236, '吉州区', 3, 0),
(2001, 236, '青原区', 3, 0),
(2002, 236, '井冈山市', 3, 0),
(2003, 236, '吉安县', 3, 0),
(2004, 236, '吉水县', 3, 0),
(2005, 236, '峡江县', 3, 0),
(2006, 236, '新干县', 3, 0),
(2007, 236, '永丰县', 3, 0),
(2008, 236, '泰和县', 3, 0),
(2009, 236, '遂川县', 3, 0),
(2010, 236, '万安县', 3, 0),
(2011, 236, '永新县', 3, 0),
(2012, 237, '珠山区', 3, 0),
(2013, 237, '昌江区', 3, 0),
(2014, 237, '乐平市', 3, 0),
(2015, 237, '浮梁县', 3, 0),
(2016, 238, '浔阳区', 3, 0),
(2017, 238, '庐山区', 3, 0),
(2018, 238, '瑞昌市', 3, 0),
(2019, 238, '九江县', 3, 0),
(2020, 238, '武宁县', 3, 0),
(2021, 238, '修水县', 3, 0),
(2022, 238, '永修县', 3, 0),
(2023, 238, '德安县', 3, 0),
(2024, 238, '星子县', 3, 0),
(2025, 238, '都昌县', 3, 0),
(2026, 238, '湖口县', 3, 0),
(2027, 238, '彭泽县', 3, 0),
(2028, 239, '安源区', 3, 0),
(2029, 239, '湘东区', 3, 0),
(2030, 239, '莲花县', 3, 0),
(2031, 239, '芦溪县', 3, 0),
(2032, 239, '上栗县', 3, 0),
(2033, 240, '信州区', 3, 0),
(2034, 240, '德兴市', 3, 0),
(2035, 240, '上饶县', 3, 0),
(2036, 240, '广丰县', 3, 0),
(2037, 240, '玉山县', 3, 0),
(2038, 240, '铅山县', 3, 0),
(2039, 240, '横峰县', 3, 0),
(2040, 240, '弋阳县', 3, 0),
(2041, 240, '余干县', 3, 0),
(2042, 240, '波阳县', 3, 0),
(2043, 240, '万年县', 3, 0),
(2044, 240, '婺源县', 3, 0),
(2045, 241, '渝水区', 3, 0),
(2046, 241, '分宜县', 3, 0),
(2047, 242, '袁州区', 3, 0),
(2048, 242, '丰城市', 3, 0),
(2049, 242, '樟树市', 3, 0),
(2050, 242, '高安市', 3, 0),
(2051, 242, '奉新县', 3, 0),
(2052, 242, '万载县', 3, 0),
(2053, 242, '上高县', 3, 0),
(2054, 242, '宜丰县', 3, 0),
(2055, 242, '靖安县', 3, 0),
(2056, 242, '铜鼓县', 3, 0),
(2057, 243, '月湖区', 3, 0),
(2058, 243, '贵溪市', 3, 0),
(2059, 243, '余江县', 3, 0),
(2060, 244, '沈河区', 3, 0),
(2061, 244, '皇姑区', 3, 0),
(2062, 244, '和平区', 3, 0),
(2063, 244, '大东区', 3, 0),
(2064, 244, '铁西区', 3, 0),
(2065, 244, '苏家屯区', 3, 0),
(2066, 244, '东陵区', 3, 0),
(2067, 244, '沈北新区', 3, 0),
(2068, 244, '于洪区', 3, 0),
(2069, 244, '浑南新区', 3, 0),
(2070, 244, '新民市', 3, 0),
(2071, 244, '辽中县', 3, 0),
(2072, 244, '康平县', 3, 0),
(2073, 244, '法库县', 3, 0),
(2074, 245, '西岗区', 3, 0),
(2075, 245, '中山区', 3, 0),
(2076, 245, '沙河口区', 3, 0),
(2077, 245, '甘井子区', 3, 0),
(2078, 245, '旅顺口区', 3, 0),
(2079, 245, '金州区', 3, 0),
(2080, 245, '开发区', 3, 0),
(2081, 245, '瓦房店市', 3, 0),
(2082, 245, '普兰店市', 3, 0),
(2083, 245, '庄河市', 3, 0),
(2084, 245, '长海县', 3, 0),
(2085, 246, '铁东区', 3, 0),
(2086, 246, '铁西区', 3, 0),
(2087, 246, '立山区', 3, 0),
(2088, 246, '千山区', 3, 0),
(2089, 246, '岫岩', 3, 0),
(2090, 246, '海城市', 3, 0),
(2091, 246, '台安县', 3, 0),
(2092, 247, '本溪', 3, 0),
(2093, 247, '平山区', 3, 0),
(2094, 247, '明山区', 3, 0),
(2095, 247, '溪湖区', 3, 0),
(2096, 247, '南芬区', 3, 0),
(2097, 247, '桓仁', 3, 0),
(2098, 248, '双塔区', 3, 0),
(2099, 248, '龙城区', 3, 0),
(2100, 248, '喀喇沁左翼蒙古族自治县', 3, 0),
(2101, 248, '北票市', 3, 0),
(2102, 248, '凌源市', 3, 0),
(2103, 248, '朝阳县', 3, 0),
(2104, 248, '建平县', 3, 0),
(2105, 249, '振兴区', 3, 0),
(2106, 249, '元宝区', 3, 0),
(2107, 249, '振安区', 3, 0),
(2108, 249, '宽甸', 3, 0),
(2109, 249, '东港市', 3, 0),
(2110, 249, '凤城市', 3, 0),
(2111, 250, '顺城区', 3, 0),
(2112, 250, '新抚区', 3, 0),
(2113, 250, '东洲区', 3, 0),
(2114, 250, '望花区', 3, 0),
(2115, 250, '清原', 3, 0),
(2116, 250, '新宾', 3, 0),
(2117, 250, '抚顺县', 3, 0),
(2118, 251, '阜新', 3, 0),
(2119, 251, '海州区', 3, 0),
(2120, 251, '新邱区', 3, 0),
(2121, 251, '太平区', 3, 0),
(2122, 251, '清河门区', 3, 0),
(2123, 251, '细河区', 3, 0),
(2124, 251, '彰武县', 3, 0),
(2125, 252, '龙港区', 3, 0),
(2126, 252, '南票区', 3, 0),
(2127, 252, '连山区', 3, 0),
(2128, 252, '兴城市', 3, 0),
(2129, 252, '绥中县', 3, 0),
(2130, 252, '建昌县', 3, 0),
(2131, 253, '太和区', 3, 0),
(2132, 253, '古塔区', 3, 0),
(2133, 253, '凌河区', 3, 0),
(2134, 253, '凌海市', 3, 0),
(2135, 253, '北镇市', 3, 0),
(2136, 253, '黑山县', 3, 0),
(2137, 253, '义县', 3, 0),
(2138, 254, '白塔区', 3, 0),
(2139, 254, '文圣区', 3, 0),
(2140, 254, '宏伟区', 3, 0),
(2141, 254, '太子河区', 3, 0),
(2142, 254, '弓长岭区', 3, 0),
(2143, 254, '灯塔市', 3, 0),
(2144, 254, '辽阳县', 3, 0),
(2145, 255, '双台子区', 3, 0),
(2146, 255, '兴隆台区', 3, 0),
(2147, 255, '大洼县', 3, 0),
(2148, 255, '盘山县', 3, 0),
(2149, 256, '银州区', 3, 0),
(2150, 256, '清河区', 3, 0),
(2151, 256, '调兵山市', 3, 0),
(2152, 256, '开原市', 3, 0),
(2153, 256, '铁岭县', 3, 0),
(2154, 256, '西丰县', 3, 0),
(2155, 256, '昌图县', 3, 0),
(2156, 257, '站前区', 3, 0),
(2157, 257, '西市区', 3, 0),
(2158, 257, '鲅鱼圈区', 3, 0),
(2159, 257, '老边区', 3, 0),
(2160, 257, '盖州市', 3, 0),
(2161, 257, '大石桥市', 3, 0),
(2162, 258, '回民区', 3, 0),
(2163, 258, '玉泉区', 3, 0),
(2164, 258, '新城区', 3, 0),
(2165, 258, '赛罕区', 3, 0),
(2166, 258, '清水河县', 3, 0),
(2167, 258, '土默特左旗', 3, 0),
(2168, 258, '托克托县', 3, 0),
(2169, 258, '和林格尔县', 3, 0),
(2170, 258, '武川县', 3, 0),
(2171, 259, '阿拉善左旗', 3, 0),
(2172, 259, '阿拉善右旗', 3, 0),
(2173, 259, '额济纳旗', 3, 0),
(2174, 260, '临河区', 3, 0),
(2175, 260, '五原县', 3, 0),
(2176, 260, '磴口县', 3, 0),
(2177, 260, '乌拉特前旗', 3, 0),
(2178, 260, '乌拉特中旗', 3, 0),
(2179, 260, '乌拉特后旗', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES
(2180, 260, '杭锦后旗', 3, 0),
(2181, 261, '昆都仑区', 3, 0),
(2182, 261, '青山区', 3, 0),
(2183, 261, '东河区', 3, 0),
(2184, 261, '九原区', 3, 0),
(2185, 261, '石拐区', 3, 0),
(2186, 261, '白云矿区', 3, 0),
(2187, 261, '土默特右旗', 3, 0),
(2188, 261, '固阳县', 3, 0),
(2189, 261, '达尔罕茂明安联合旗', 3, 0),
(2190, 262, '红山区', 3, 0),
(2191, 262, '元宝山区', 3, 0),
(2192, 262, '松山区', 3, 0),
(2193, 262, '阿鲁科尔沁旗', 3, 0),
(2194, 262, '巴林左旗', 3, 0),
(2195, 262, '巴林右旗', 3, 0),
(2196, 262, '林西县', 3, 0),
(2197, 262, '克什克腾旗', 3, 0),
(2198, 262, '翁牛特旗', 3, 0),
(2199, 262, '喀喇沁旗', 3, 0),
(2200, 262, '宁城县', 3, 0),
(2201, 262, '敖汉旗', 3, 0),
(2202, 263, '东胜区', 3, 0),
(2203, 263, '达拉特旗', 3, 0),
(2204, 263, '准格尔旗', 3, 0),
(2205, 263, '鄂托克前旗', 3, 0),
(2206, 263, '鄂托克旗', 3, 0),
(2207, 263, '杭锦旗', 3, 0),
(2208, 263, '乌审旗', 3, 0),
(2209, 263, '伊金霍洛旗', 3, 0),
(2210, 264, '海拉尔区', 3, 0),
(2211, 264, '莫力达瓦', 3, 0),
(2212, 264, '满洲里市', 3, 0),
(2213, 264, '牙克石市', 3, 0),
(2214, 264, '扎兰屯市', 3, 0),
(2215, 264, '额尔古纳市', 3, 0),
(2216, 264, '根河市', 3, 0),
(2217, 264, '阿荣旗', 3, 0),
(2218, 264, '鄂伦春自治旗', 3, 0),
(2219, 264, '鄂温克族自治旗', 3, 0),
(2220, 264, '陈巴尔虎旗', 3, 0),
(2221, 264, '新巴尔虎左旗', 3, 0),
(2222, 264, '新巴尔虎右旗', 3, 0),
(2223, 265, '科尔沁区', 3, 0),
(2224, 265, '霍林郭勒市', 3, 0),
(2225, 265, '科尔沁左翼中旗', 3, 0),
(2226, 265, '科尔沁左翼后旗', 3, 0),
(2227, 265, '开鲁县', 3, 0),
(2228, 265, '库伦旗', 3, 0),
(2229, 265, '奈曼旗', 3, 0),
(2230, 265, '扎鲁特旗', 3, 0),
(2231, 266, '海勃湾区', 3, 0),
(2232, 266, '乌达区', 3, 0),
(2233, 266, '海南区', 3, 0),
(2234, 267, '化德县', 3, 0),
(2235, 267, '集宁区', 3, 0),
(2236, 267, '丰镇市', 3, 0),
(2237, 267, '卓资县', 3, 0),
(2238, 267, '商都县', 3, 0),
(2239, 267, '兴和县', 3, 0),
(2240, 267, '凉城县', 3, 0),
(2241, 267, '察哈尔右翼前旗', 3, 0),
(2242, 267, '察哈尔右翼中旗', 3, 0),
(2243, 267, '察哈尔右翼后旗', 3, 0),
(2244, 267, '四子王旗', 3, 0),
(2245, 268, '二连浩特市', 3, 0),
(2246, 268, '锡林浩特市', 3, 0),
(2247, 268, '阿巴嘎旗', 3, 0),
(2248, 268, '苏尼特左旗', 3, 0),
(2249, 268, '苏尼特右旗', 3, 0),
(2250, 268, '东乌珠穆沁旗', 3, 0),
(2251, 268, '西乌珠穆沁旗', 3, 0),
(2252, 268, '太仆寺旗', 3, 0),
(2253, 268, '镶黄旗', 3, 0),
(2254, 268, '正镶白旗', 3, 0),
(2255, 268, '正蓝旗', 3, 0),
(2256, 268, '多伦县', 3, 0),
(2257, 269, '乌兰浩特市', 3, 0),
(2258, 269, '阿尔山市', 3, 0),
(2259, 269, '科尔沁右翼前旗', 3, 0),
(2260, 269, '科尔沁右翼中旗', 3, 0),
(2261, 269, '扎赉特旗', 3, 0),
(2262, 269, '突泉县', 3, 0),
(2263, 270, '西夏区', 3, 0),
(2264, 270, '金凤区', 3, 0),
(2265, 270, '兴庆区', 3, 0),
(2266, 270, '灵武市', 3, 0),
(2267, 270, '永宁县', 3, 0),
(2268, 270, '贺兰县', 3, 0),
(2269, 271, '原州区', 3, 0),
(2270, 271, '海原县', 3, 0),
(2271, 271, '西吉县', 3, 0),
(2272, 271, '隆德县', 3, 0),
(2273, 271, '泾源县', 3, 0),
(2274, 271, '彭阳县', 3, 0),
(2275, 272, '惠农县', 3, 0),
(2276, 272, '大武口区', 3, 0),
(2277, 272, '惠农区', 3, 0),
(2278, 272, '陶乐县', 3, 0),
(2279, 272, '平罗县', 3, 0),
(2280, 273, '利通区', 3, 0),
(2281, 273, '中卫县', 3, 0),
(2282, 273, '青铜峡市', 3, 0),
(2283, 273, '中宁县', 3, 0),
(2284, 273, '盐池县', 3, 0),
(2285, 273, '同心县', 3, 0),
(2286, 274, '沙坡头区', 3, 0),
(2287, 274, '海原县', 3, 0),
(2288, 274, '中宁县', 3, 0),
(2289, 275, '城中区', 3, 0),
(2290, 275, '城东区', 3, 0),
(2291, 275, '城西区', 3, 0),
(2292, 275, '城北区', 3, 0),
(2293, 275, '湟中县', 3, 0),
(2294, 275, '湟源县', 3, 0),
(2295, 275, '大通', 3, 0),
(2296, 276, '玛沁县', 3, 0),
(2297, 276, '班玛县', 3, 0),
(2298, 276, '甘德县', 3, 0),
(2299, 276, '达日县', 3, 0),
(2300, 276, '久治县', 3, 0),
(2301, 276, '玛多县', 3, 0),
(2302, 277, '海晏县', 3, 0),
(2303, 277, '祁连县', 3, 0),
(2304, 277, '刚察县', 3, 0),
(2305, 277, '门源', 3, 0),
(2306, 278, '平安县', 3, 0),
(2307, 278, '乐都县', 3, 0),
(2308, 278, '民和', 3, 0),
(2309, 278, '互助', 3, 0),
(2310, 278, '化隆', 3, 0),
(2311, 278, '循化', 3, 0),
(2312, 279, '共和县', 3, 0),
(2313, 279, '同德县', 3, 0),
(2314, 279, '贵德县', 3, 0),
(2315, 279, '兴海县', 3, 0),
(2316, 279, '贵南县', 3, 0),
(2317, 280, '德令哈市', 3, 0),
(2318, 280, '格尔木市', 3, 0),
(2319, 280, '乌兰县', 3, 0),
(2320, 280, '都兰县', 3, 0),
(2321, 280, '天峻县', 3, 0),
(2322, 281, '同仁县', 3, 0),
(2323, 281, '尖扎县', 3, 0),
(2324, 281, '泽库县', 3, 0),
(2325, 281, '河南蒙古族自治县', 3, 0),
(2326, 282, '玉树县', 3, 0),
(2327, 282, '杂多县', 3, 0),
(2328, 282, '称多县', 3, 0),
(2329, 282, '治多县', 3, 0),
(2330, 282, '囊谦县', 3, 0),
(2331, 282, '曲麻莱县', 3, 0),
(2332, 283, '市中区', 3, 0),
(2333, 283, '历下区', 3, 0),
(2334, 283, '天桥区', 3, 0),
(2335, 283, '槐荫区', 3, 0),
(2336, 283, '历城区', 3, 0),
(2337, 283, '长清区', 3, 0),
(2338, 283, '章丘市', 3, 0),
(2339, 283, '平阴县', 3, 0),
(2340, 283, '济阳县', 3, 0),
(2341, 283, '商河县', 3, 0),
(2342, 284, '市南区', 3, 0),
(2343, 284, '市北区', 3, 0),
(2344, 284, '城阳区', 3, 0),
(2345, 284, '四方区', 3, 0),
(2346, 284, '李沧区', 3, 0),
(2347, 284, '黄岛区', 3, 0),
(2348, 284, '崂山区', 3, 0),
(2349, 284, '胶州市', 3, 0),
(2350, 284, '即墨市', 3, 0),
(2351, 284, '平度市', 3, 0),
(2352, 284, '胶南市', 3, 0),
(2353, 284, '莱西市', 3, 0),
(2354, 285, '滨城区', 3, 0),
(2355, 285, '惠民县', 3, 0),
(2356, 285, '阳信县', 3, 0),
(2357, 285, '无棣县', 3, 0),
(2358, 285, '沾化县', 3, 0),
(2359, 285, '博兴县', 3, 0),
(2360, 285, '邹平县', 3, 0),
(2361, 286, '德城区', 3, 0),
(2362, 286, '陵县', 3, 0),
(2363, 286, '乐陵市', 3, 0),
(2364, 286, '禹城市', 3, 0),
(2365, 286, '宁津县', 3, 0),
(2366, 286, '庆云县', 3, 0),
(2367, 286, '临邑县', 3, 0),
(2368, 286, '齐河县', 3, 0),
(2369, 286, '平原县', 3, 0),
(2370, 286, '夏津县', 3, 0),
(2371, 286, '武城县', 3, 0),
(2372, 287, '东营区', 3, 0),
(2373, 287, '河口区', 3, 0),
(2374, 287, '垦利县', 3, 0),
(2375, 287, '利津县', 3, 0),
(2376, 287, '广饶县', 3, 0),
(2377, 288, '牡丹区', 3, 0),
(2378, 288, '曹县', 3, 0),
(2379, 288, '单县', 3, 0),
(2380, 288, '成武县', 3, 0),
(2381, 288, '巨野县', 3, 0),
(2382, 288, '郓城县', 3, 0),
(2383, 288, '鄄城县', 3, 0),
(2384, 288, '定陶县', 3, 0),
(2385, 288, '东明县', 3, 0),
(2386, 289, '市中区', 3, 0),
(2387, 289, '任城区', 3, 0),
(2388, 289, '曲阜市', 3, 0),
(2389, 289, '兖州市', 3, 0),
(2390, 289, '邹城市', 3, 0),
(2391, 289, '微山县', 3, 0),
(2392, 289, '鱼台县', 3, 0),
(2393, 289, '金乡县', 3, 0),
(2394, 289, '嘉祥县', 3, 0),
(2395, 289, '汶上县', 3, 0),
(2396, 289, '泗水县', 3, 0),
(2397, 289, '梁山县', 3, 0),
(2398, 290, '莱城区', 3, 0),
(2399, 290, '钢城区', 3, 0),
(2400, 291, '东昌府区', 3, 0),
(2401, 291, '临清市', 3, 0),
(2402, 291, '阳谷县', 3, 0),
(2403, 291, '莘县', 3, 0),
(2404, 291, '茌平县', 3, 0),
(2405, 291, '东阿县', 3, 0),
(2406, 291, '冠县', 3, 0),
(2407, 291, '高唐县', 3, 0),
(2408, 292, '兰山区', 3, 0),
(2409, 292, '罗庄区', 3, 0),
(2410, 292, '河东区', 3, 0),
(2411, 292, '沂南县', 3, 0),
(2412, 292, '郯城县', 3, 0),
(2413, 292, '沂水县', 3, 0),
(2414, 292, '苍山县', 3, 0),
(2415, 292, '费县', 3, 0),
(2416, 292, '平邑县', 3, 0),
(2417, 292, '莒南县', 3, 0),
(2418, 292, '蒙阴县', 3, 0),
(2419, 292, '临沭县', 3, 0),
(2420, 293, '东港区', 3, 0),
(2421, 293, '岚山区', 3, 0),
(2422, 293, '五莲县', 3, 0),
(2423, 293, '莒县', 3, 0),
(2424, 294, '泰山区', 3, 0),
(2425, 294, '岱岳区', 3, 0),
(2426, 294, '新泰市', 3, 0),
(2427, 294, '肥城市', 3, 0),
(2428, 294, '宁阳县', 3, 0),
(2429, 294, '东平县', 3, 0),
(2430, 295, '荣成市', 3, 0),
(2431, 295, '乳山市', 3, 0),
(2432, 295, '环翠区', 3, 0),
(2433, 295, '文登市', 3, 0),
(2434, 296, '潍城区', 3, 0),
(2435, 296, '寒亭区', 3, 0),
(2436, 296, '坊子区', 3, 0),
(2437, 296, '奎文区', 3, 0),
(2438, 296, '青州市', 3, 0),
(2439, 296, '诸城市', 3, 0),
(2440, 296, '寿光市', 3, 0),
(2441, 296, '安丘市', 3, 0),
(2442, 296, '高密市', 3, 0),
(2443, 296, '昌邑市', 3, 0),
(2444, 296, '临朐县', 3, 0),
(2445, 296, '昌乐县', 3, 0),
(2446, 297, '芝罘区', 3, 0),
(2447, 297, '福山区', 3, 0),
(2448, 297, '牟平区', 3, 0),
(2449, 297, '莱山区', 3, 0),
(2450, 297, '开发区', 3, 0),
(2451, 297, '龙口市', 3, 0),
(2452, 297, '莱阳市', 3, 0),
(2453, 297, '莱州市', 3, 0),
(2454, 297, '蓬莱市', 3, 0),
(2455, 297, '招远市', 3, 0),
(2456, 297, '栖霞市', 3, 0),
(2457, 297, '海阳市', 3, 0),
(2458, 297, '长岛县', 3, 0),
(2459, 298, '市中区', 3, 0),
(2460, 298, '山亭区', 3, 0),
(2461, 298, '峄城区', 3, 0),
(2462, 298, '台儿庄区', 3, 0),
(2463, 298, '薛城区', 3, 0),
(2464, 298, '滕州市', 3, 0),
(2465, 299, '张店区', 3, 0),
(2466, 299, '临淄区', 3, 0),
(2467, 299, '淄川区', 3, 0),
(2468, 299, '博山区', 3, 0),
(2469, 299, '周村区', 3, 0),
(2470, 299, '桓台县', 3, 0),
(2471, 299, '高青县', 3, 0),
(2472, 299, '沂源县', 3, 0),
(2473, 300, '杏花岭区', 3, 0),
(2474, 300, '小店区', 3, 0),
(2475, 300, '迎泽区', 3, 0),
(2476, 300, '尖草坪区', 3, 0),
(2477, 300, '万柏林区', 3, 0),
(2478, 300, '晋源区', 3, 0),
(2479, 300, '高新开发区', 3, 0),
(2480, 300, '民营经济开发区', 3, 0),
(2481, 300, '经济技术开发区', 3, 0),
(2482, 300, '清徐县', 3, 0),
(2483, 300, '阳曲县', 3, 0),
(2484, 300, '娄烦县', 3, 0),
(2485, 300, '古交市', 3, 0),
(2486, 301, '城区', 3, 0),
(2487, 301, '郊区', 3, 0),
(2488, 301, '沁县', 3, 0),
(2489, 301, '潞城市', 3, 0),
(2490, 301, '长治县', 3, 0),
(2491, 301, '襄垣县', 3, 0),
(2492, 301, '屯留县', 3, 0),
(2493, 301, '平顺县', 3, 0),
(2494, 301, '黎城县', 3, 0),
(2495, 301, '壶关县', 3, 0),
(2496, 301, '长子县', 3, 0),
(2497, 301, '武乡县', 3, 0),
(2498, 301, '沁源县', 3, 0),
(2499, 302, '城区', 3, 0),
(2500, 302, '矿区', 3, 0),
(2501, 302, '南郊区', 3, 0),
(2502, 302, '新荣区', 3, 0),
(2503, 302, '阳高县', 3, 0),
(2504, 302, '天镇县', 3, 0),
(2505, 302, '广灵县', 3, 0),
(2506, 302, '灵丘县', 3, 0),
(2507, 302, '浑源县', 3, 0),
(2508, 302, '左云县', 3, 0),
(2509, 302, '大同县', 3, 0),
(2510, 303, '城区', 3, 0),
(2511, 303, '高平市', 3, 0),
(2512, 303, '沁水县', 3, 0),
(2513, 303, '阳城县', 3, 0),
(2514, 303, '陵川县', 3, 0),
(2515, 303, '泽州县', 3, 0),
(2516, 304, '榆次区', 3, 0),
(2517, 304, '介休市', 3, 0),
(2518, 304, '榆社县', 3, 0),
(2519, 304, '左权县', 3, 0),
(2520, 304, '和顺县', 3, 0),
(2521, 304, '昔阳县', 3, 0),
(2522, 304, '寿阳县', 3, 0),
(2523, 304, '太谷县', 3, 0),
(2524, 304, '祁县', 3, 0),
(2525, 304, '平遥县', 3, 0),
(2526, 304, '灵石县', 3, 0),
(2527, 305, '尧都区', 3, 0),
(2528, 305, '侯马市', 3, 0),
(2529, 305, '霍州市', 3, 0),
(2530, 305, '曲沃县', 3, 0),
(2531, 305, '翼城县', 3, 0),
(2532, 305, '襄汾县', 3, 0),
(2533, 305, '洪洞县', 3, 0),
(2534, 305, '吉县', 3, 0),
(2535, 305, '安泽县', 3, 0),
(2536, 305, '浮山县', 3, 0),
(2537, 305, '古县', 3, 0),
(2538, 305, '乡宁县', 3, 0),
(2539, 305, '大宁县', 3, 0),
(2540, 305, '隰县', 3, 0),
(2541, 305, '永和县', 3, 0),
(2542, 305, '蒲县', 3, 0),
(2543, 305, '汾西县', 3, 0),
(2544, 306, '离石市', 3, 0),
(2545, 306, '离石区', 3, 0),
(2546, 306, '孝义市', 3, 0),
(2547, 306, '汾阳市', 3, 0),
(2548, 306, '文水县', 3, 0),
(2549, 306, '交城县', 3, 0),
(2550, 306, '兴县', 3, 0),
(2551, 306, '临县', 3, 0),
(2552, 306, '柳林县', 3, 0),
(2553, 306, '石楼县', 3, 0),
(2554, 306, '岚县', 3, 0),
(2555, 306, '方山县', 3, 0),
(2556, 306, '中阳县', 3, 0),
(2557, 306, '交口县', 3, 0),
(2558, 307, '朔城区', 3, 0),
(2559, 307, '平鲁区', 3, 0),
(2560, 307, '山阴县', 3, 0),
(2561, 307, '应县', 3, 0),
(2562, 307, '右玉县', 3, 0),
(2563, 307, '怀仁县', 3, 0),
(2564, 308, '忻府区', 3, 0),
(2565, 308, '原平市', 3, 0),
(2566, 308, '定襄县', 3, 0),
(2567, 308, '五台县', 3, 0),
(2568, 308, '代县', 3, 0),
(2569, 308, '繁峙县', 3, 0),
(2570, 308, '宁武县', 3, 0),
(2571, 308, '静乐县', 3, 0),
(2572, 308, '神池县', 3, 0),
(2573, 308, '五寨县', 3, 0),
(2574, 308, '岢岚县', 3, 0),
(2575, 308, '河曲县', 3, 0),
(2576, 308, '保德县', 3, 0),
(2577, 308, '偏关县', 3, 0),
(2578, 309, '城区', 3, 0),
(2579, 309, '矿区', 3, 0),
(2580, 309, '郊区', 3, 0),
(2581, 309, '平定县', 3, 0),
(2582, 309, '盂县', 3, 0),
(2583, 310, '盐湖区', 3, 0),
(2584, 310, '永济市', 3, 0),
(2585, 310, '河津市', 3, 0),
(2586, 310, '临猗县', 3, 0),
(2587, 310, '万荣县', 3, 0),
(2588, 310, '闻喜县', 3, 0),
(2589, 310, '稷山县', 3, 0),
(2590, 310, '新绛县', 3, 0),
(2591, 310, '绛县', 3, 0),
(2592, 310, '垣曲县', 3, 0),
(2593, 310, '夏县', 3, 0),
(2594, 310, '平陆县', 3, 0),
(2595, 310, '芮城县', 3, 0),
(2596, 311, '莲湖区', 3, 0),
(2597, 311, '新城区', 3, 0),
(2598, 311, '碑林区', 3, 0),
(2599, 311, '雁塔区', 3, 0),
(2600, 311, '灞桥区', 3, 0),
(2601, 311, '未央区', 3, 0),
(2602, 311, '阎良区', 3, 0),
(2603, 311, '临潼区', 3, 0),
(2604, 311, '长安区', 3, 0),
(2605, 311, '蓝田县', 3, 0),
(2606, 311, '周至县', 3, 0),
(2607, 311, '户县', 3, 0),
(2608, 311, '高陵县', 3, 0),
(2609, 312, '汉滨区', 3, 0),
(2610, 312, '汉阴县', 3, 0),
(2611, 312, '石泉县', 3, 0),
(2612, 312, '宁陕县', 3, 0),
(2613, 312, '紫阳县', 3, 0),
(2614, 312, '岚皋县', 3, 0),
(2615, 312, '平利县', 3, 0),
(2616, 312, '镇坪县', 3, 0),
(2617, 312, '旬阳县', 3, 0),
(2618, 312, '白河县', 3, 0),
(2619, 313, '陈仓区', 3, 0),
(2620, 313, '渭滨区', 3, 0),
(2621, 313, '金台区', 3, 0),
(2622, 313, '凤翔县', 3, 0),
(2623, 313, '岐山县', 3, 0),
(2624, 313, '扶风县', 3, 0),
(2625, 313, '眉县', 3, 0),
(2626, 313, '陇县', 3, 0),
(2627, 313, '千阳县', 3, 0),
(2628, 313, '麟游县', 3, 0),
(2629, 313, '凤县', 3, 0),
(2630, 313, '太白县', 3, 0),
(2631, 314, '汉台区', 3, 0),
(2632, 314, '南郑县', 3, 0),
(2633, 314, '城固县', 3, 0),
(2634, 314, '洋县', 3, 0),
(2635, 314, '西乡县', 3, 0),
(2636, 314, '勉县', 3, 0),
(2637, 314, '宁强县', 3, 0),
(2638, 314, '略阳县', 3, 0),
(2639, 314, '镇巴县', 3, 0),
(2640, 314, '留坝县', 3, 0),
(2641, 314, '佛坪县', 3, 0),
(2642, 315, '商州区', 3, 0),
(2643, 315, '洛南县', 3, 0),
(2644, 315, '丹凤县', 3, 0),
(2645, 315, '商南县', 3, 0),
(2646, 315, '山阳县', 3, 0),
(2647, 315, '镇安县', 3, 0),
(2648, 315, '柞水县', 3, 0),
(2649, 316, '耀州区', 3, 0),
(2650, 316, '王益区', 3, 0),
(2651, 316, '印台区', 3, 0),
(2652, 316, '宜君县', 3, 0),
(2653, 317, '临渭区', 3, 0),
(2654, 317, '韩城市', 3, 0),
(2655, 317, '华阴市', 3, 0),
(2656, 317, '华县', 3, 0),
(2657, 317, '潼关县', 3, 0),
(2658, 317, '大荔县', 3, 0),
(2659, 317, '合阳县', 3, 0),
(2660, 317, '澄城县', 3, 0),
(2661, 317, '蒲城县', 3, 0),
(2662, 317, '白水县', 3, 0),
(2663, 317, '富平县', 3, 0),
(2664, 318, '秦都区', 3, 0),
(2665, 318, '渭城区', 3, 0),
(2666, 318, '杨陵区', 3, 0),
(2667, 318, '兴平市', 3, 0),
(2668, 318, '三原县', 3, 0),
(2669, 318, '泾阳县', 3, 0),
(2670, 318, '乾县', 3, 0),
(2671, 318, '礼泉县', 3, 0),
(2672, 318, '永寿县', 3, 0),
(2673, 318, '彬县', 3, 0),
(2674, 318, '长武县', 3, 0),
(2675, 318, '旬邑县', 3, 0),
(2676, 318, '淳化县', 3, 0),
(2677, 318, '武功县', 3, 0),
(2678, 319, '吴起县', 3, 0),
(2679, 319, '宝塔区', 3, 0),
(2680, 319, '延长县', 3, 0),
(2681, 319, '延川县', 3, 0),
(2682, 319, '子长县', 3, 0),
(2683, 319, '安塞县', 3, 0),
(2684, 319, '志丹县', 3, 0),
(2685, 319, '甘泉县', 3, 0),
(2686, 319, '富县', 3, 0),
(2687, 319, '洛川县', 3, 0),
(2688, 319, '宜川县', 3, 0),
(2689, 319, '黄龙县', 3, 0),
(2690, 319, '黄陵县', 3, 0),
(2691, 320, '榆阳区', 3, 0),
(2692, 320, '神木县', 3, 0),
(2693, 320, '府谷县', 3, 0),
(2694, 320, '横山县', 3, 0),
(2695, 320, '靖边县', 3, 0),
(2696, 320, '定边县', 3, 0),
(2697, 320, '绥德县', 3, 0),
(2698, 320, '米脂县', 3, 0),
(2699, 320, '佳县', 3, 0),
(2700, 320, '吴堡县', 3, 0),
(2701, 320, '清涧县', 3, 0),
(2702, 320, '子洲县', 3, 0),
(2703, 321, '长宁区', 3, 0),
(2704, 321, '闸北区', 3, 0),
(2705, 321, '闵行区', 3, 0),
(2706, 321, '徐汇区', 3, 0),
(2707, 321, '浦东新区', 3, 0),
(2708, 321, '杨浦区', 3, 0),
(2709, 321, '普陀区', 3, 0),
(2710, 321, '静安区', 3, 0),
(2711, 321, '卢湾区', 3, 0),
(2712, 321, '虹口区', 3, 0),
(2713, 321, '黄浦区', 3, 0),
(2714, 321, '南汇区', 3, 0),
(2715, 321, '松江区', 3, 0),
(2716, 321, '嘉定区', 3, 0),
(2717, 321, '宝山区', 3, 0),
(2718, 321, '青浦区', 3, 0),
(2719, 321, '金山区', 3, 0),
(2720, 321, '奉贤区', 3, 0),
(2721, 321, '崇明县', 3, 0),
(2722, 322, '青羊区', 3, 0),
(2723, 322, '锦江区', 3, 0),
(2724, 322, '金牛区', 3, 0),
(2725, 322, '武侯区', 3, 0),
(2726, 322, '成华区', 3, 0),
(2727, 322, '龙泉驿区', 3, 0),
(2728, 322, '青白江区', 3, 0),
(2729, 322, '新都区', 3, 0),
(2730, 322, '温江区', 3, 0),
(2731, 322, '高新区', 3, 0),
(2732, 322, '高新西区', 3, 0),
(2733, 322, '都江堰市', 3, 0),
(2734, 322, '彭州市', 3, 0),
(2735, 322, '邛崃市', 3, 0),
(2736, 322, '崇州市', 3, 0),
(2737, 322, '金堂县', 3, 0),
(2738, 322, '双流县', 3, 0),
(2739, 322, '郫县', 3, 0),
(2740, 322, '大邑县', 3, 0),
(2741, 322, '蒲江县', 3, 0),
(2742, 322, '新津县', 3, 0),
(2743, 322, '都江堰市', 3, 0),
(2744, 322, '彭州市', 3, 0),
(2745, 322, '邛崃市', 3, 0),
(2746, 322, '崇州市', 3, 0),
(2747, 322, '金堂县', 3, 0),
(2748, 322, '双流县', 3, 0),
(2749, 322, '郫县', 3, 0),
(2750, 322, '大邑县', 3, 0),
(2751, 322, '蒲江县', 3, 0),
(2752, 322, '新津县', 3, 0),
(2753, 323, '涪城区', 3, 0),
(2754, 323, '游仙区', 3, 0),
(2755, 323, '江油市', 3, 0),
(2756, 323, '盐亭县', 3, 0),
(2757, 323, '三台县', 3, 0),
(2758, 323, '平武县', 3, 0),
(2759, 323, '安县', 3, 0),
(2760, 323, '梓潼县', 3, 0),
(2761, 323, '北川县', 3, 0),
(2762, 324, '马尔康县', 3, 0),
(2763, 324, '汶川县', 3, 0),
(2764, 324, '理县', 3, 0),
(2765, 324, '茂县', 3, 0),
(2766, 324, '松潘县', 3, 0),
(2767, 324, '九寨沟县', 3, 0),
(2768, 324, '金川县', 3, 0),
(2769, 324, '小金县', 3, 0),
(2770, 324, '黑水县', 3, 0),
(2771, 324, '壤塘县', 3, 0),
(2772, 324, '阿坝县', 3, 0),
(2773, 324, '若尔盖县', 3, 0),
(2774, 324, '红原县', 3, 0),
(2775, 325, '巴州区', 3, 0),
(2776, 325, '通江县', 3, 0),
(2777, 325, '南江县', 3, 0),
(2778, 325, '平昌县', 3, 0),
(2779, 326, '通川区', 3, 0),
(2780, 326, '万源市', 3, 0),
(2781, 326, '达县', 3, 0),
(2782, 326, '宣汉县', 3, 0),
(2783, 326, '开江县', 3, 0),
(2784, 326, '大竹县', 3, 0),
(2785, 326, '渠县', 3, 0),
(2786, 327, '旌阳区', 3, 0),
(2787, 327, '广汉市', 3, 0),
(2788, 327, '什邡市', 3, 0),
(2789, 327, '绵竹市', 3, 0),
(2790, 327, '罗江县', 3, 0),
(2791, 327, '中江县', 3, 0),
(2792, 328, '康定县', 3, 0),
(2793, 328, '丹巴县', 3, 0),
(2794, 328, '泸定县', 3, 0),
(2795, 328, '炉霍县', 3, 0),
(2796, 328, '九龙县', 3, 0),
(2797, 328, '甘孜县', 3, 0),
(2798, 328, '雅江县', 3, 0),
(2799, 328, '新龙县', 3, 0),
(2800, 328, '道孚县', 3, 0),
(2801, 328, '白玉县', 3, 0),
(2802, 328, '理塘县', 3, 0),
(2803, 328, '德格县', 3, 0),
(2804, 328, '乡城县', 3, 0),
(2805, 328, '石渠县', 3, 0),
(2806, 328, '稻城县', 3, 0),
(2807, 328, '色达县', 3, 0),
(2808, 328, '巴塘县', 3, 0),
(2809, 328, '得荣县', 3, 0),
(2810, 329, '广安区', 3, 0),
(2811, 329, '华蓥市', 3, 0),
(2812, 329, '岳池县', 3, 0),
(2813, 329, '武胜县', 3, 0),
(2814, 329, '邻水县', 3, 0),
(2815, 330, '利州区', 3, 0),
(2816, 330, '元坝区', 3, 0),
(2817, 330, '朝天区', 3, 0),
(2818, 330, '旺苍县', 3, 0),
(2819, 330, '青川县', 3, 0),
(2820, 330, '剑阁县', 3, 0),
(2821, 330, '苍溪县', 3, 0),
(2822, 331, '峨眉山市', 3, 0),
(2823, 331, '乐山市', 3, 0),
(2824, 331, '犍为县', 3, 0),
(2825, 331, '井研县', 3, 0),
(2826, 331, '夹江县', 3, 0),
(2827, 331, '沐川县', 3, 0),
(2828, 331, '峨边', 3, 0),
(2829, 331, '马边', 3, 0),
(2830, 332, '西昌市', 3, 0),
(2831, 332, '盐源县', 3, 0),
(2832, 332, '德昌县', 3, 0),
(2833, 332, '会理县', 3, 0),
(2834, 332, '会东县', 3, 0),
(2835, 332, '宁南县', 3, 0),
(2836, 332, '普格县', 3, 0),
(2837, 332, '布拖县', 3, 0),
(2838, 332, '金阳县', 3, 0),
(2839, 332, '昭觉县', 3, 0),
(2840, 332, '喜德县', 3, 0),
(2841, 332, '冕宁县', 3, 0),
(2842, 332, '越西县', 3, 0),
(2843, 332, '甘洛县', 3, 0),
(2844, 332, '美姑县', 3, 0),
(2845, 332, '雷波县', 3, 0),
(2846, 332, '木里', 3, 0),
(2847, 333, '东坡区', 3, 0),
(2848, 333, '仁寿县', 3, 0),
(2849, 333, '彭山县', 3, 0),
(2850, 333, '洪雅县', 3, 0),
(2851, 333, '丹棱县', 3, 0),
(2852, 333, '青神县', 3, 0),
(2853, 334, '阆中市', 3, 0),
(2854, 334, '南部县', 3, 0),
(2855, 334, '营山县', 3, 0),
(2856, 334, '蓬安县', 3, 0),
(2857, 334, '仪陇县', 3, 0),
(2858, 334, '顺庆区', 3, 0),
(2859, 334, '高坪区', 3, 0),
(2860, 334, '嘉陵区', 3, 0),
(2861, 334, '西充县', 3, 0),
(2862, 335, '市中区', 3, 0),
(2863, 335, '东兴区', 3, 0),
(2864, 335, '威远县', 3, 0),
(2865, 335, '资中县', 3, 0),
(2866, 335, '隆昌县', 3, 0),
(2867, 336, '东  区', 3, 0),
(2868, 336, '西  区', 3, 0),
(2869, 336, '仁和区', 3, 0),
(2870, 336, '米易县', 3, 0),
(2871, 336, '盐边县', 3, 0),
(2872, 337, '船山区', 3, 0),
(2873, 337, '安居区', 3, 0),
(2874, 337, '蓬溪县', 3, 0),
(2875, 337, '射洪县', 3, 0),
(2876, 337, '大英县', 3, 0),
(2877, 338, '雨城区', 3, 0),
(2878, 338, '名山县', 3, 0),
(2879, 338, '荥经县', 3, 0),
(2880, 338, '汉源县', 3, 0),
(2881, 338, '石棉县', 3, 0),
(2882, 338, '天全县', 3, 0),
(2883, 338, '芦山县', 3, 0),
(2884, 338, '宝兴县', 3, 0),
(2885, 339, '翠屏区', 3, 0),
(2886, 339, '宜宾县', 3, 0),
(2887, 339, '南溪县', 3, 0),
(2888, 339, '江安县', 3, 0),
(2889, 339, '长宁县', 3, 0),
(2890, 339, '高县', 3, 0),
(2891, 339, '珙县', 3, 0),
(2892, 339, '筠连县', 3, 0),
(2893, 339, '兴文县', 3, 0),
(2894, 339, '屏山县', 3, 0),
(2895, 340, '雁江区', 3, 0),
(2896, 340, '简阳市', 3, 0),
(2897, 340, '安岳县', 3, 0),
(2898, 340, '乐至县', 3, 0),
(2899, 341, '大安区', 3, 0),
(2900, 341, '自流井区', 3, 0),
(2901, 341, '贡井区', 3, 0),
(2902, 341, '沿滩区', 3, 0),
(2903, 341, '荣县', 3, 0),
(2904, 341, '富顺县', 3, 0),
(2905, 342, '江阳区', 3, 0),
(2906, 342, '纳溪区', 3, 0),
(2907, 342, '龙马潭区', 3, 0),
(2908, 342, '泸县', 3, 0),
(2909, 342, '合江县', 3, 0),
(2910, 342, '叙永县', 3, 0),
(2911, 342, '古蔺县', 3, 0),
(2912, 343, '和平区', 3, 0),
(2913, 343, '河西区', 3, 0),
(2914, 343, '南开区', 3, 0),
(2915, 343, '河北区', 3, 0),
(2916, 343, '河东区', 3, 0),
(2917, 343, '红桥区', 3, 0),
(2918, 343, '东丽区', 3, 0),
(2919, 343, '津南区', 3, 0),
(2920, 343, '西青区', 3, 0),
(2921, 343, '北辰区', 3, 0),
(2922, 343, '塘沽区', 3, 0),
(2923, 343, '汉沽区', 3, 0),
(2924, 343, '大港区', 3, 0),
(2925, 343, '武清区', 3, 0),
(2926, 343, '宝坻区', 3, 0),
(2927, 343, '经济开发区', 3, 0),
(2928, 343, '宁河县', 3, 0),
(2929, 343, '静海县', 3, 0),
(2930, 343, '蓟县', 3, 0),
(2931, 344, '城关区', 3, 0),
(2932, 344, '林周县', 3, 0),
(2933, 344, '当雄县', 3, 0),
(2934, 344, '尼木县', 3, 0),
(2935, 344, '曲水县', 3, 0),
(2936, 344, '堆龙德庆县', 3, 0),
(2937, 344, '达孜县', 3, 0),
(2938, 344, '墨竹工卡县', 3, 0),
(2939, 345, '噶尔县', 3, 0),
(2940, 345, '普兰县', 3, 0),
(2941, 345, '札达县', 3, 0),
(2942, 345, '日土县', 3, 0),
(2943, 345, '革吉县', 3, 0),
(2944, 345, '改则县', 3, 0),
(2945, 345, '措勤县', 3, 0),
(2946, 346, '昌都县', 3, 0),
(2947, 346, '江达县', 3, 0),
(2948, 346, '贡觉县', 3, 0),
(2949, 346, '类乌齐县', 3, 0),
(2950, 346, '丁青县', 3, 0),
(2951, 346, '察雅县', 3, 0),
(2952, 346, '八宿县', 3, 0),
(2953, 346, '左贡县', 3, 0),
(2954, 346, '芒康县', 3, 0),
(2955, 346, '洛隆县', 3, 0),
(2956, 346, '边坝县', 3, 0),
(2957, 347, '林芝县', 3, 0),
(2958, 347, '工布江达县', 3, 0),
(2959, 347, '米林县', 3, 0),
(2960, 347, '墨脱县', 3, 0),
(2961, 347, '波密县', 3, 0),
(2962, 347, '察隅县', 3, 0),
(2963, 347, '朗县', 3, 0),
(2964, 348, '那曲县', 3, 0),
(2965, 348, '嘉黎县', 3, 0),
(2966, 348, '比如县', 3, 0),
(2967, 348, '聂荣县', 3, 0),
(2968, 348, '安多县', 3, 0),
(2969, 348, '申扎县', 3, 0),
(2970, 348, '索县', 3, 0),
(2971, 348, '班戈县', 3, 0),
(2972, 348, '巴青县', 3, 0),
(2973, 348, '尼玛县', 3, 0),
(2974, 349, '日喀则市', 3, 0),
(2975, 349, '南木林县', 3, 0),
(2976, 349, '江孜县', 3, 0),
(2977, 349, '定日县', 3, 0),
(2978, 349, '萨迦县', 3, 0),
(2979, 349, '拉孜县', 3, 0),
(2980, 349, '昂仁县', 3, 0),
(2981, 349, '谢通门县', 3, 0),
(2982, 349, '白朗县', 3, 0),
(2983, 349, '仁布县', 3, 0),
(2984, 349, '康马县', 3, 0),
(2985, 349, '定结县', 3, 0),
(2986, 349, '仲巴县', 3, 0),
(2987, 349, '亚东县', 3, 0),
(2988, 349, '吉隆县', 3, 0),
(2989, 349, '聂拉木县', 3, 0),
(2990, 349, '萨嘎县', 3, 0),
(2991, 349, '岗巴县', 3, 0),
(2992, 350, '乃东县', 3, 0),
(2993, 350, '扎囊县', 3, 0),
(2994, 350, '贡嘎县', 3, 0),
(2995, 350, '桑日县', 3, 0),
(2996, 350, '琼结县', 3, 0),
(2997, 350, '曲松县', 3, 0),
(2998, 350, '措美县', 3, 0),
(2999, 350, '洛扎县', 3, 0),
(3000, 350, '加查县', 3, 0),
(3001, 350, '隆子县', 3, 0),
(3002, 350, '错那县', 3, 0),
(3003, 350, '浪卡子县', 3, 0),
(3004, 351, '天山区', 3, 0),
(3005, 351, '沙依巴克区', 3, 0),
(3006, 351, '新市区', 3, 0),
(3007, 351, '水磨沟区', 3, 0),
(3008, 351, '头屯河区', 3, 0),
(3009, 351, '达坂城区', 3, 0),
(3010, 351, '米东区', 3, 0),
(3011, 351, '乌鲁木齐县', 3, 0),
(3012, 352, '阿克苏市', 3, 0),
(3013, 352, '温宿县', 3, 0),
(3014, 352, '库车县', 3, 0),
(3015, 352, '沙雅县', 3, 0),
(3016, 352, '新和县', 3, 0),
(3017, 352, '拜城县', 3, 0),
(3018, 352, '乌什县', 3, 0),
(3019, 352, '阿瓦提县', 3, 0),
(3020, 352, '柯坪县', 3, 0),
(3021, 353, '阿拉尔市', 3, 0),
(3022, 354, '库尔勒市', 3, 0),
(3023, 354, '轮台县', 3, 0),
(3024, 354, '尉犁县', 3, 0),
(3025, 354, '若羌县', 3, 0),
(3026, 354, '且末县', 3, 0),
(3027, 354, '焉耆', 3, 0),
(3028, 354, '和静县', 3, 0),
(3029, 354, '和硕县', 3, 0),
(3030, 354, '博湖县', 3, 0),
(3031, 355, '博乐市', 3, 0),
(3032, 355, '精河县', 3, 0),
(3033, 355, '温泉县', 3, 0),
(3034, 356, '呼图壁县', 3, 0),
(3035, 356, '米泉市', 3, 0),
(3036, 356, '昌吉市', 3, 0),
(3037, 356, '阜康市', 3, 0),
(3038, 356, '玛纳斯县', 3, 0),
(3039, 356, '奇台县', 3, 0),
(3040, 356, '吉木萨尔县', 3, 0),
(3041, 356, '木垒', 3, 0),
(3042, 357, '哈密市', 3, 0),
(3043, 357, '伊吾县', 3, 0),
(3044, 357, '巴里坤', 3, 0),
(3045, 358, '和田市', 3, 0),
(3046, 358, '和田县', 3, 0),
(3047, 358, '墨玉县', 3, 0),
(3048, 358, '皮山县', 3, 0),
(3049, 358, '洛浦县', 3, 0),
(3050, 358, '策勒县', 3, 0),
(3051, 358, '于田县', 3, 0),
(3052, 358, '民丰县', 3, 0),
(3053, 359, '喀什市', 3, 0),
(3054, 359, '疏附县', 3, 0),
(3055, 359, '疏勒县', 3, 0),
(3056, 359, '英吉沙县', 3, 0),
(3057, 359, '泽普县', 3, 0),
(3058, 359, '莎车县', 3, 0),
(3059, 359, '叶城县', 3, 0),
(3060, 359, '麦盖提县', 3, 0),
(3061, 359, '岳普湖县', 3, 0),
(3062, 359, '伽师县', 3, 0),
(3063, 359, '巴楚县', 3, 0),
(3064, 359, '塔什库尔干', 3, 0),
(3065, 360, '克拉玛依市', 3, 0),
(3066, 361, '阿图什市', 3, 0),
(3067, 361, '阿克陶县', 3, 0),
(3068, 361, '阿合奇县', 3, 0),
(3069, 361, '乌恰县', 3, 0),
(3070, 362, '石河子市', 3, 0),
(3071, 363, '图木舒克市', 3, 0),
(3072, 364, '吐鲁番市', 3, 0),
(3073, 364, '鄯善县', 3, 0),
(3074, 364, '托克逊县', 3, 0),
(3075, 365, '五家渠市', 3, 0),
(3076, 366, '阿勒泰市', 3, 0),
(3077, 366, '布克赛尔', 3, 0),
(3078, 366, '伊宁市', 3, 0),
(3079, 366, '布尔津县', 3, 0),
(3080, 366, '奎屯市', 3, 0),
(3081, 366, '乌苏市', 3, 0),
(3082, 366, '额敏县', 3, 0),
(3083, 366, '富蕴县', 3, 0),
(3084, 366, '伊宁县', 3, 0),
(3085, 366, '福海县', 3, 0),
(3086, 366, '霍城县', 3, 0),
(3087, 366, '沙湾县', 3, 0),
(3088, 366, '巩留县', 3, 0),
(3089, 366, '哈巴河县', 3, 0),
(3090, 366, '托里县', 3, 0),
(3091, 366, '青河县', 3, 0),
(3092, 366, '新源县', 3, 0),
(3093, 366, '裕民县', 3, 0),
(3094, 366, '和布克赛尔', 3, 0),
(3095, 366, '吉木乃县', 3, 0),
(3096, 366, '昭苏县', 3, 0),
(3097, 366, '特克斯县', 3, 0),
(3098, 366, '尼勒克县', 3, 0),
(3099, 366, '察布查尔', 3, 0),
(3100, 367, '盘龙区', 3, 0),
(3101, 367, '五华区', 3, 0),
(3102, 367, '官渡区', 3, 0),
(3103, 367, '西山区', 3, 0),
(3104, 367, '东川区', 3, 0),
(3105, 367, '安宁市', 3, 0),
(3106, 367, '呈贡县', 3, 0),
(3107, 367, '晋宁县', 3, 0),
(3108, 367, '富民县', 3, 0),
(3109, 367, '宜良县', 3, 0),
(3110, 367, '嵩明县', 3, 0),
(3111, 367, '石林县', 3, 0),
(3112, 367, '禄劝', 3, 0),
(3113, 367, '寻甸', 3, 0),
(3114, 368, '兰坪', 3, 0),
(3115, 368, '泸水县', 3, 0),
(3116, 368, '福贡县', 3, 0),
(3117, 368, '贡山', 3, 0),
(3118, 369, '宁洱', 3, 0),
(3119, 369, '思茅区', 3, 0),
(3120, 369, '墨江', 3, 0),
(3121, 369, '景东', 3, 0),
(3122, 369, '景谷', 3, 0),
(3123, 369, '镇沅', 3, 0),
(3124, 369, '江城', 3, 0),
(3125, 369, '孟连', 3, 0),
(3126, 369, '澜沧', 3, 0),
(3127, 369, '西盟', 3, 0),
(3128, 370, '古城区', 3, 0),
(3129, 370, '宁蒗', 3, 0),
(3130, 370, '玉龙', 3, 0),
(3131, 370, '永胜县', 3, 0),
(3132, 370, '华坪县', 3, 0),
(3133, 371, '隆阳区', 3, 0),
(3134, 371, '施甸县', 3, 0),
(3135, 371, '腾冲县', 3, 0),
(3136, 371, '龙陵县', 3, 0),
(3137, 371, '昌宁县', 3, 0),
(3138, 372, '楚雄市', 3, 0),
(3139, 372, '双柏县', 3, 0),
(3140, 372, '牟定县', 3, 0),
(3141, 372, '南华县', 3, 0),
(3142, 372, '姚安县', 3, 0),
(3143, 372, '大姚县', 3, 0),
(3144, 372, '永仁县', 3, 0),
(3145, 372, '元谋县', 3, 0),
(3146, 372, '武定县', 3, 0),
(3147, 372, '禄丰县', 3, 0),
(3148, 373, '大理市', 3, 0),
(3149, 373, '祥云县', 3, 0),
(3150, 373, '宾川县', 3, 0),
(3151, 373, '弥渡县', 3, 0),
(3152, 373, '永平县', 3, 0),
(3153, 373, '云龙县', 3, 0),
(3154, 373, '洱源县', 3, 0),
(3155, 373, '剑川县', 3, 0),
(3156, 373, '鹤庆县', 3, 0),
(3157, 373, '漾濞', 3, 0),
(3158, 373, '南涧', 3, 0),
(3159, 373, '巍山', 3, 0),
(3160, 374, '潞西市', 3, 0),
(3161, 374, '瑞丽市', 3, 0),
(3162, 374, '梁河县', 3, 0),
(3163, 374, '盈江县', 3, 0),
(3164, 374, '陇川县', 3, 0),
(3165, 375, '香格里拉县', 3, 0),
(3166, 375, '德钦县', 3, 0),
(3167, 375, '维西', 3, 0),
(3168, 376, '泸西县', 3, 0),
(3169, 376, '蒙自县', 3, 0),
(3170, 376, '个旧市', 3, 0),
(3171, 376, '开远市', 3, 0),
(3172, 376, '绿春县', 3, 0),
(3173, 376, '建水县', 3, 0),
(3174, 376, '石屏县', 3, 0),
(3175, 376, '弥勒县', 3, 0),
(3176, 376, '元阳县', 3, 0),
(3177, 376, '红河县', 3, 0),
(3178, 376, '金平', 3, 0),
(3179, 376, '河口', 3, 0),
(3180, 376, '屏边', 3, 0),
(3181, 377, '临翔区', 3, 0),
(3182, 377, '凤庆县', 3, 0),
(3183, 377, '云县', 3, 0),
(3184, 377, '永德县', 3, 0),
(3185, 377, '镇康县', 3, 0),
(3186, 377, '双江', 3, 0),
(3187, 377, '耿马', 3, 0),
(3188, 377, '沧源', 3, 0),
(3189, 378, '麒麟区', 3, 0),
(3190, 378, '宣威市', 3, 0),
(3191, 378, '马龙县', 3, 0),
(3192, 378, '陆良县', 3, 0),
(3193, 378, '师宗县', 3, 0),
(3194, 378, '罗平县', 3, 0),
(3195, 378, '富源县', 3, 0),
(3196, 378, '会泽县', 3, 0),
(3197, 378, '沾益县', 3, 0),
(3198, 379, '文山县', 3, 0),
(3199, 379, '砚山县', 3, 0),
(3200, 379, '西畴县', 3, 0),
(3201, 379, '麻栗坡县', 3, 0),
(3202, 379, '马关县', 3, 0),
(3203, 379, '丘北县', 3, 0),
(3204, 379, '广南县', 3, 0),
(3205, 379, '富宁县', 3, 0),
(3206, 380, '景洪市', 3, 0),
(3207, 380, '勐海县', 3, 0),
(3208, 380, '勐腊县', 3, 0),
(3209, 381, '红塔区', 3, 0),
(3210, 381, '江川县', 3, 0),
(3211, 381, '澄江县', 3, 0),
(3212, 381, '通海县', 3, 0),
(3213, 381, '华宁县', 3, 0),
(3214, 381, '易门县', 3, 0),
(3215, 381, '峨山', 3, 0),
(3216, 381, '新平', 3, 0),
(3217, 381, '元江', 3, 0),
(3218, 382, '昭阳区', 3, 0),
(3219, 382, '鲁甸县', 3, 0),
(3220, 382, '巧家县', 3, 0),
(3221, 382, '盐津县', 3, 0),
(3222, 382, '大关县', 3, 0),
(3223, 382, '永善县', 3, 0),
(3224, 382, '绥江县', 3, 0),
(3225, 382, '镇雄县', 3, 0),
(3226, 382, '彝良县', 3, 0),
(3227, 382, '威信县', 3, 0),
(3228, 382, '水富县', 3, 0),
(3229, 383, '西湖区', 3, 0),
(3230, 383, '上城区', 3, 0),
(3231, 383, '下城区', 3, 0),
(3232, 383, '拱墅区', 3, 0),
(3233, 383, '滨江区', 3, 0),
(3234, 383, '江干区', 3, 0),
(3235, 383, '萧山区', 3, 0),
(3236, 383, '余杭区', 3, 0),
(3237, 383, '市郊', 3, 0),
(3238, 383, '建德市', 3, 0),
(3239, 383, '富阳市', 3, 0),
(3240, 383, '临安市', 3, 0),
(3241, 383, '桐庐县', 3, 0),
(3242, 383, '淳安县', 3, 0),
(3243, 384, '吴兴区', 3, 0),
(3244, 384, '南浔区', 3, 0),
(3245, 384, '德清县', 3, 0),
(3246, 384, '长兴县', 3, 0),
(3247, 384, '安吉县', 3, 0),
(3248, 385, '南湖区', 3, 0),
(3249, 385, '秀洲区', 3, 0),
(3250, 385, '海宁市', 3, 0),
(3251, 385, '嘉善县', 3, 0),
(3252, 385, '平湖市', 3, 0),
(3253, 385, '桐乡市', 3, 0),
(3254, 385, '海盐县', 3, 0),
(3255, 386, '婺城区', 3, 0),
(3256, 386, '金东区', 3, 0),
(3257, 386, '兰溪市', 3, 0),
(3258, 386, '市区', 3, 0),
(3259, 386, '佛堂镇', 3, 0),
(3260, 386, '上溪镇', 3, 0),
(3261, 386, '义亭镇', 3, 0),
(3262, 386, '大陈镇', 3, 0),
(3263, 386, '苏溪镇', 3, 0),
(3264, 386, '赤岸镇', 3, 0),
(3265, 386, '东阳市', 3, 0),
(3266, 386, '永康市', 3, 0),
(3267, 386, '武义县', 3, 0),
(3268, 386, '浦江县', 3, 0),
(3269, 386, '磐安县', 3, 0),
(3270, 387, '莲都区', 3, 0),
(3271, 387, '龙泉市', 3, 0),
(3272, 387, '青田县', 3, 0),
(3273, 387, '缙云县', 3, 0),
(3274, 387, '遂昌县', 3, 0),
(3275, 387, '松阳县', 3, 0),
(3276, 387, '云和县', 3, 0),
(3277, 387, '庆元县', 3, 0),
(3278, 387, '景宁', 3, 0),
(3279, 388, '海曙区', 3, 0),
(3280, 388, '江东区', 3, 0),
(3281, 388, '江北区', 3, 0),
(3282, 388, '镇海区', 3, 0),
(3283, 388, '北仑区', 3, 0),
(3284, 388, '鄞州区', 3, 0),
(3285, 388, '余姚市', 3, 0),
(3286, 388, '慈溪市', 3, 0),
(3287, 388, '奉化市', 3, 0),
(3288, 388, '象山县', 3, 0),
(3289, 388, '宁海县', 3, 0),
(3290, 389, '越城区', 3, 0),
(3291, 389, '上虞市', 3, 0),
(3292, 389, '嵊州市', 3, 0),
(3293, 389, '绍兴县', 3, 0),
(3294, 389, '新昌县', 3, 0),
(3295, 389, '诸暨市', 3, 0),
(3296, 390, '椒江区', 3, 0),
(3297, 390, '黄岩区', 3, 0),
(3298, 390, '路桥区', 3, 0),
(3299, 390, '温岭市', 3, 0),
(3300, 390, '临海市', 3, 0),
(3301, 390, '玉环县', 3, 0),
(3302, 390, '三门县', 3, 0),
(3303, 390, '天台县', 3, 0),
(3304, 390, '仙居县', 3, 0),
(3305, 391, '鹿城区', 3, 0),
(3306, 391, '龙湾区', 3, 0),
(3307, 391, '瓯海区', 3, 0),
(3308, 391, '瑞安市', 3, 0),
(3309, 391, '乐清市', 3, 0),
(3310, 391, '洞头县', 3, 0),
(3311, 391, '永嘉县', 3, 0),
(3312, 391, '平阳县', 3, 0),
(3313, 391, '苍南县', 3, 0),
(3314, 391, '文成县', 3, 0),
(3315, 391, '泰顺县', 3, 0),
(3316, 392, '定海区', 3, 0),
(3317, 392, '普陀区', 3, 0),
(3318, 392, '岱山县', 3, 0),
(3319, 392, '嵊泗县', 3, 0),
(3320, 393, '衢州市', 3, 0),
(3321, 393, '江山市', 3, 0),
(3322, 393, '常山县', 3, 0),
(3323, 393, '开化县', 3, 0),
(3324, 393, '龙游县', 3, 0),
(3325, 394, '合川区', 3, 0),
(3326, 394, '江津区', 3, 0),
(3327, 394, '南川区', 3, 0),
(3328, 394, '永川区', 3, 0),
(3329, 394, '南岸区', 3, 0),
(3330, 394, '渝北区', 3, 0),
(3331, 394, '万盛区', 3, 0),
(3332, 394, '大渡口区', 3, 0),
(3333, 394, '万州区', 3, 0),
(3334, 394, '北碚区', 3, 0),
(3335, 394, '沙坪坝区', 3, 0),
(3336, 394, '巴南区', 3, 0),
(3337, 394, '涪陵区', 3, 0),
(3338, 394, '江北区', 3, 0),
(3339, 394, '九龙坡区', 3, 0),
(3340, 394, '渝中区', 3, 0),
(3341, 394, '黔江开发区', 3, 0),
(3342, 394, '长寿区', 3, 0),
(3343, 394, '双桥区', 3, 0),
(3344, 394, '綦江县', 3, 0),
(3345, 394, '潼南县', 3, 0),
(3346, 394, '铜梁县', 3, 0),
(3347, 394, '大足县', 3, 0),
(3348, 394, '荣昌县', 3, 0),
(3349, 394, '璧山县', 3, 0),
(3350, 394, '垫江县', 3, 0),
(3351, 394, '武隆县', 3, 0),
(3352, 394, '丰都县', 3, 0),
(3353, 394, '城口县', 3, 0),
(3354, 394, '梁平县', 3, 0),
(3355, 394, '开县', 3, 0),
(3356, 394, '巫溪县', 3, 0),
(3357, 394, '巫山县', 3, 0),
(3358, 394, '奉节县', 3, 0),
(3359, 394, '云阳县', 3, 0),
(3360, 394, '忠县', 3, 0),
(3361, 394, '石柱', 3, 0),
(3362, 394, '彭水', 3, 0),
(3363, 394, '酉阳', 3, 0),
(3364, 394, '秀山', 3, 0),
(3365, 395, '沙田区', 3, 0),
(3366, 395, '东区', 3, 0),
(3367, 395, '观塘区', 3, 0),
(3368, 395, '黄大仙区', 3, 0),
(3369, 395, '九龙城区', 3, 0),
(3370, 395, '屯门区', 3, 0),
(3371, 395, '葵青区', 3, 0),
(3372, 395, '元朗区', 3, 0),
(3373, 395, '深水埗区', 3, 0),
(3374, 395, '西贡区', 3, 0),
(3375, 395, '大埔区', 3, 0),
(3376, 395, '湾仔区', 3, 0),
(3377, 395, '油尖旺区', 3, 0),
(3378, 395, '北区', 3, 0),
(3379, 395, '南区', 3, 0),
(3380, 395, '荃湾区', 3, 0),
(3381, 395, '中西区', 3, 0),
(3382, 395, '离岛区', 3, 0),
(3383, 396, '澳门', 3, 0),
(3384, 397, '台北', 3, 0),
(3385, 397, '高雄', 3, 0),
(3386, 397, '基隆', 3, 0),
(3387, 397, '台中', 3, 0),
(3388, 397, '台南', 3, 0),
(3389, 397, '新竹', 3, 0),
(3390, 397, '嘉义', 3, 0),
(3391, 397, '宜兰县', 3, 0),
(3392, 397, '桃园县', 3, 0),
(3393, 397, '苗栗县', 3, 0),
(3394, 397, '彰化县', 3, 0),
(3395, 397, '南投县', 3, 0),
(3396, 397, '云林县', 3, 0),
(3397, 397, '屏东县', 3, 0),
(3398, 397, '台东县', 3, 0),
(3399, 397, '花莲县', 3, 0),
(3400, 397, '澎湖县', 3, 0),
(3401, 3, '合肥', 2, 0),
(3402, 3401, '庐阳区', 3, 0),
(3403, 3401, '瑶海区', 3, 0),
(3404, 3401, '蜀山区', 3, 0),
(3405, 3401, '包河区', 3, 0),
(3406, 3401, '长丰县', 3, 0),
(3407, 3401, '肥东县', 3, 0),
(3408, 3401, '肥西县', 3, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ecs_reg_extend_info`
--

CREATE TABLE IF NOT EXISTS `ecs_reg_extend_info` (
  `Id` int(10) unsigned NOT NULL,
  `user_id` mediumint(8) unsigned NOT NULL,
  `reg_field_id` int(10) unsigned NOT NULL,
  `content` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ecs_reg_fields`
--

CREATE TABLE IF NOT EXISTS `ecs_reg_fields` (
  `id` tinyint(3) unsigned NOT NULL,
  `reg_field_name` varchar(60) NOT NULL,
  `dis_order` tinyint(3) unsigned NOT NULL DEFAULT '100',
  `display` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_need` tinyint(1) unsigned NOT NULL DEFAULT '1'
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ecs_reg_fields`
--

INSERT INTO `ecs_reg_fields` (`id`, `reg_field_name`, `dis_order`, `display`, `type`, `is_need`) VALUES
(1, 'MSN', 0, 0, 1, 0),
(2, 'QQ', 0, 0, 1, 0),
(3, '办公电话', 0, 0, 1, 0),
(4, '家庭电话', 0, 0, 1, 0),
(5, '手机', 0, 0, 1, 0),
(6, '密码找回问题', 0, 0, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ecs_role`
--

CREATE TABLE IF NOT EXISTS `ecs_role` (
  `role_id` smallint(5) unsigned NOT NULL,
  `role_name` varchar(60) NOT NULL DEFAULT '',
  `action_list` text NOT NULL,
  `role_describe` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ecs_searchengine`
--

CREATE TABLE IF NOT EXISTS `ecs_searchengine` (
  `date` date NOT NULL DEFAULT '0000-00-00',
  `searchengine` varchar(20) NOT NULL DEFAULT '',
  `count` mediumint(8) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ecs_searchengine`
--

INSERT INTO `ecs_searchengine` (`date`, `searchengine`, `count`) VALUES
('2014-07-22', 'GOOGLE', 1),
('2014-07-24', 'GOOGLE', 1),
('2014-07-25', 'SOGOU', 1),
('2014-07-26', 'SOGOU', 2201),
('2014-07-26', 'GOOGLE', 2),
('2014-07-27', 'SOGOU', 3239),
('2014-07-27', 'GOOGLE', 1),
('2014-07-28', 'SOGOU', 2165);

-- --------------------------------------------------------

--
-- Table structure for table `ecs_sessions`
--

CREATE TABLE IF NOT EXISTS `ecs_sessions` (
  `sesskey` char(32) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `expiry` int(10) unsigned NOT NULL DEFAULT '0',
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `adminid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `ip` char(15) NOT NULL DEFAULT '',
  `user_name` varchar(60) NOT NULL,
  `user_rank` tinyint(3) NOT NULL,
  `discount` decimal(3,2) NOT NULL,
  `email` varchar(60) NOT NULL,
  `data` char(255) NOT NULL DEFAULT ''
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ecs_sessions_data`
--

CREATE TABLE IF NOT EXISTS `ecs_sessions_data` (
  `sesskey` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `expiry` int(10) unsigned NOT NULL DEFAULT '0',
  `data` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ecs_sessions_data`
--

INSERT INTO `ecs_sessions_data` (`sesskey`, `expiry`, `data`) VALUES
('4f1417abacb90581ad21b8abc69b6472', 4294967295, 'a:4:{s:10:"admin_name";s:11:"aixiwen.com";s:11:"action_list";s:1209:"goods_manage,remove_back,cat_manage,cat_drop,attr_manage,brand_manage,comment_priv,tag_manage,goods_type,goods_auto,virualcard,picture_batch,goods_export,goods_batch,gen_goods_script,article_cat,article_manage,shopinfo_manage,shophelp_manage,vote_priv,article_auto,feedback_priv,integrate_users,sync_users,users_manage,users_drop,user_rank,surplus_manage,account_manage,template_manage,admin_manage,admin_drop,allot_priv,logs_manage,logs_drop,agency_manage,suppliers_manage,role_manage,shop_config,ship_manage,payment,shiparea_manage,area_manage,friendlink,db_backup,db_renew,flash_manage,navigator,cron,affiliate,affiliate_ck,sitemap,file_priv,file_check,reg_fields,shop_authorized,webcollect_manage,order_os_edit,order_ps_edit,order_ss_edit,order_edit,order_view,order_view_finished,repay_manage,booking,sale_order_stats,client_flow_stats,delivery_view,back_view,topic_manage,snatch_manage,ad_manage,gift_manage,card_manage,pack,bonus_manage,auction,group_by,favourable,whole_sale,package_manage,exchange_goods,attention_list,email_list,magazine_list,view_sendlist,template_select,template_setup,library_manage,lang_edit,backup_setting,mail_template,db_backup,db_renew,db_optimize,sql_query,convert,sms_send";s:10:"last_check";i:1437773392;s:12:"suppliers_id";s:1:"0";}'),
('5dd5099dc7c37b2f2a7a9dac33ed3dee', 4294967295, 'a:4:{s:10:"admin_name";s:11:"aixiwen.com";s:11:"action_list";s:1209:"goods_manage,remove_back,cat_manage,cat_drop,attr_manage,brand_manage,comment_priv,tag_manage,goods_type,goods_auto,virualcard,picture_batch,goods_export,goods_batch,gen_goods_script,article_cat,article_manage,shopinfo_manage,shophelp_manage,vote_priv,article_auto,feedback_priv,integrate_users,sync_users,users_manage,users_drop,user_rank,surplus_manage,account_manage,template_manage,admin_manage,admin_drop,allot_priv,logs_manage,logs_drop,agency_manage,suppliers_manage,role_manage,shop_config,ship_manage,payment,shiparea_manage,area_manage,friendlink,db_backup,db_renew,flash_manage,navigator,cron,affiliate,affiliate_ck,sitemap,file_priv,file_check,reg_fields,shop_authorized,webcollect_manage,order_os_edit,order_ps_edit,order_ss_edit,order_edit,order_view,order_view_finished,repay_manage,booking,sale_order_stats,client_flow_stats,delivery_view,back_view,topic_manage,snatch_manage,ad_manage,gift_manage,card_manage,pack,bonus_manage,auction,group_by,favourable,whole_sale,package_manage,exchange_goods,attention_list,email_list,magazine_list,view_sendlist,template_select,template_setup,library_manage,lang_edit,backup_setting,mail_template,db_backup,db_renew,db_optimize,sql_query,convert,sms_send";s:10:"last_check";i:1438024131;s:12:"suppliers_id";s:1:"0";}'),
('ccb364cc22376fd38425f9faf508c290', 4294967295, 'a:4:{s:10:"admin_name";s:5:"admin";s:11:"action_list";s:1209:"goods_manage,remove_back,cat_manage,cat_drop,attr_manage,brand_manage,comment_priv,tag_manage,goods_type,goods_auto,virualcard,picture_batch,goods_export,goods_batch,gen_goods_script,article_cat,article_manage,shopinfo_manage,shophelp_manage,vote_priv,article_auto,feedback_priv,integrate_users,sync_users,users_manage,users_drop,user_rank,surplus_manage,account_manage,template_manage,admin_manage,admin_drop,allot_priv,logs_manage,logs_drop,agency_manage,suppliers_manage,role_manage,shop_config,ship_manage,payment,shiparea_manage,area_manage,friendlink,db_backup,db_renew,flash_manage,navigator,cron,affiliate,affiliate_ck,sitemap,file_priv,file_check,reg_fields,shop_authorized,webcollect_manage,order_os_edit,order_ps_edit,order_ss_edit,order_edit,order_view,order_view_finished,repay_manage,booking,sale_order_stats,client_flow_stats,delivery_view,back_view,topic_manage,snatch_manage,ad_manage,gift_manage,card_manage,pack,bonus_manage,auction,group_by,favourable,whole_sale,package_manage,exchange_goods,attention_list,email_list,magazine_list,view_sendlist,template_select,template_setup,library_manage,lang_edit,backup_setting,mail_template,db_backup,db_renew,db_optimize,sql_query,convert,sms_send";s:10:"last_check";i:1438026786;s:12:"suppliers_id";s:1:"0";}'),
('82149aa72a90ab0baa59e30aaacc5780', 4294967295, 'a:4:{s:10:"admin_name";s:5:"admin";s:11:"action_list";s:1209:"goods_manage,remove_back,cat_manage,cat_drop,attr_manage,brand_manage,comment_priv,tag_manage,goods_type,goods_auto,virualcard,picture_batch,goods_export,goods_batch,gen_goods_script,article_cat,article_manage,shopinfo_manage,shophelp_manage,vote_priv,article_auto,feedback_priv,integrate_users,sync_users,users_manage,users_drop,user_rank,surplus_manage,account_manage,template_manage,admin_manage,admin_drop,allot_priv,logs_manage,logs_drop,agency_manage,suppliers_manage,role_manage,shop_config,ship_manage,payment,shiparea_manage,area_manage,friendlink,db_backup,db_renew,flash_manage,navigator,cron,affiliate,affiliate_ck,sitemap,file_priv,file_check,reg_fields,shop_authorized,webcollect_manage,order_os_edit,order_ps_edit,order_ss_edit,order_edit,order_view,order_view_finished,repay_manage,booking,sale_order_stats,client_flow_stats,delivery_view,back_view,topic_manage,snatch_manage,ad_manage,gift_manage,card_manage,pack,bonus_manage,auction,group_by,favourable,whole_sale,package_manage,exchange_goods,attention_list,email_list,magazine_list,view_sendlist,template_select,template_setup,library_manage,lang_edit,backup_setting,mail_template,db_backup,db_renew,db_optimize,sql_query,convert,sms_send";s:10:"last_check";i:1438192620;s:12:"suppliers_id";s:1:"0";}'),
('7004dea8eb1fb5ac5cedd9165486fcad', 2876365492, 'a:8:{s:7:"from_ad";i:0;s:7:"referer";s:6:"本站";s:10:"login_fail";i:0;s:8:"language";s:0:"";s:12:"captcha_word";s:16:"ZjNiOWUyZTg4Yw==";s:13:"captcha_login";s:16:"ZDk0NGI3MDc3NQ==";s:9:"last_time";s:10:"1438020620";s:7:"last_ip";s:7:"0.0.0.0";}'),
('d180badbfbafd5d5ef2033b390db81ad', 4294967295, 'a:4:{s:10:"admin_name";s:5:"admin";s:11:"action_list";s:1209:"goods_manage,remove_back,cat_manage,cat_drop,attr_manage,brand_manage,comment_priv,tag_manage,goods_type,goods_auto,virualcard,picture_batch,goods_export,goods_batch,gen_goods_script,article_cat,article_manage,shopinfo_manage,shophelp_manage,vote_priv,article_auto,feedback_priv,integrate_users,sync_users,users_manage,users_drop,user_rank,surplus_manage,account_manage,template_manage,admin_manage,admin_drop,allot_priv,logs_manage,logs_drop,agency_manage,suppliers_manage,role_manage,shop_config,ship_manage,payment,shiparea_manage,area_manage,friendlink,db_backup,db_renew,flash_manage,navigator,cron,affiliate,affiliate_ck,sitemap,file_priv,file_check,reg_fields,shop_authorized,webcollect_manage,order_os_edit,order_ps_edit,order_ss_edit,order_edit,order_view,order_view_finished,repay_manage,booking,sale_order_stats,client_flow_stats,delivery_view,back_view,topic_manage,snatch_manage,ad_manage,gift_manage,card_manage,pack,bonus_manage,auction,group_by,favourable,whole_sale,package_manage,exchange_goods,attention_list,email_list,magazine_list,view_sendlist,template_select,template_setup,library_manage,lang_edit,backup_setting,mail_template,db_backup,db_renew,db_optimize,sql_query,convert,sms_send";s:10:"last_check";i:1438277559;s:12:"suppliers_id";s:1:"0";}'),
('fc10185e3a6ba68a48ce5005ef340e54', 4294967295, 'a:4:{s:10:"admin_name";s:5:"admin";s:11:"action_list";s:1209:"goods_manage,remove_back,cat_manage,cat_drop,attr_manage,brand_manage,comment_priv,tag_manage,goods_type,goods_auto,virualcard,picture_batch,goods_export,goods_batch,gen_goods_script,article_cat,article_manage,shopinfo_manage,shophelp_manage,vote_priv,article_auto,feedback_priv,integrate_users,sync_users,users_manage,users_drop,user_rank,surplus_manage,account_manage,template_manage,admin_manage,admin_drop,allot_priv,logs_manage,logs_drop,agency_manage,suppliers_manage,role_manage,shop_config,ship_manage,payment,shiparea_manage,area_manage,friendlink,db_backup,db_renew,flash_manage,navigator,cron,affiliate,affiliate_ck,sitemap,file_priv,file_check,reg_fields,shop_authorized,webcollect_manage,order_os_edit,order_ps_edit,order_ss_edit,order_edit,order_view,order_view_finished,repay_manage,booking,sale_order_stats,client_flow_stats,delivery_view,back_view,topic_manage,snatch_manage,ad_manage,gift_manage,card_manage,pack,bonus_manage,auction,group_by,favourable,whole_sale,package_manage,exchange_goods,attention_list,email_list,magazine_list,view_sendlist,template_select,template_setup,library_manage,lang_edit,backup_setting,mail_template,db_backup,db_renew,db_optimize,sql_query,convert,sms_send";s:10:"last_check";i:1438383571;s:12:"suppliers_id";s:1:"0";}');

-- --------------------------------------------------------

--
-- Table structure for table `ecs_shipping`
--

CREATE TABLE IF NOT EXISTS `ecs_shipping` (
  `shipping_id` tinyint(3) unsigned NOT NULL,
  `shipping_code` varchar(20) NOT NULL DEFAULT '',
  `shipping_name` varchar(120) NOT NULL DEFAULT '',
  `shipping_desc` varchar(255) NOT NULL DEFAULT '',
  `insure` varchar(10) NOT NULL DEFAULT '0',
  `support_cod` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `enabled` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `shipping_print` text NOT NULL,
  `print_bg` varchar(255) DEFAULT NULL,
  `config_lable` text,
  `print_model` tinyint(1) DEFAULT '0',
  `shipping_order` tinyint(3) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ecs_shipping`
--

INSERT INTO `ecs_shipping` (`shipping_id`, `shipping_code`, `shipping_name`, `shipping_desc`, `insure`, `support_cod`, `enabled`, `shipping_print`, `print_bg`, `config_lable`, `print_model`, `shipping_order`) VALUES
(1, 'post_express', '邮政快递包裹', '邮政快递包裹的描述内容。', '1%', 0, 1, '', '', '', 0, 0),
(2, 'yto', '圆通速递', '上海圆通物流（速递）有限公司经过多年的网络快速发展，在中国速递行业中一直处于领先地位。为了能更好的发展国际快件市场，加快与国际市场的接轨，强化圆通的整体实力，圆通已在东南亚、欧美、中东、北美洲、非洲等许多城市运作国际快件业务', '0', 1, 1, '', '', '', 0, 0),
(3, 'city_express', '城际快递', '配送的运费是固定的', '0', 1, 1, '', '', '', 0, 0),
(4, 'flat', '市内快递', '固定运费的配送方式内容', '0', 1, 1, '', '', '', 0, 0),
(5, 'sto_express', '申通快递', '江、浙、沪地区首重为15元/KG，其他地区18元/KG， 续重均为5-6元/KG， 云南地区为8元', '0', 0, 1, '', '', '', 0, 0),
(6, 'post_mail', '邮局平邮', '邮局平邮的描述内容。', '0', 0, 1, '', '', '', 0, 0),
(7, 'fpd', '运费到付', '所购商品到达即付运费', '0', 0, 1, '', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ecs_shipping_area`
--

CREATE TABLE IF NOT EXISTS `ecs_shipping_area` (
  `shipping_area_id` smallint(5) unsigned NOT NULL,
  `shipping_area_name` varchar(150) NOT NULL DEFAULT '',
  `shipping_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `configure` text NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ecs_shipping_area`
--

INSERT INTO `ecs_shipping_area` (`shipping_area_id`, `shipping_area_name`, `shipping_id`, `configure`) VALUES
(1, '申通', 5, 'a:5:{i:0;a:2:{s:4:"name";s:8:"item_fee";s:5:"value";s:2:"15";}i:1;a:2:{s:4:"name";s:8:"base_fee";s:5:"value";s:2:"15";}i:2;a:2:{s:4:"name";s:8:"step_fee";s:5:"value";s:1:"5";}i:3;a:2:{s:4:"name";s:10:"free_money";s:5:"value";s:1:"0";}i:4;a:2:{s:4:"name";s:16:"fee_compute_mode";s:5:"value";s:9:"by_weight";}}'),
(2, '1', 3, 'a:4:{i:0;a:2:{s:4:"name";s:8:"base_fee";s:5:"value";s:2:"10";}i:1;a:2:{s:4:"name";s:10:"free_money";s:5:"value";s:6:"100000";}i:2;a:2:{s:4:"name";s:16:"fee_compute_mode";s:5:"value";N;}i:3;a:2:{s:4:"name";s:7:"pay_fee";s:5:"value";s:1:"5";}}'),
(3, '邮局', 6, 'a:7:{i:0;a:2:{s:4:"name";s:8:"item_fee";s:5:"value";s:1:"4";}i:1;a:2:{s:4:"name";s:8:"base_fee";s:5:"value";s:3:"3.5";}i:2;a:2:{s:4:"name";s:8:"step_fee";s:5:"value";s:3:"2.5";}i:3;a:2:{s:4:"name";s:9:"step_fee1";s:5:"value";N;}i:4;a:2:{s:4:"name";s:8:"pack_fee";s:5:"value";s:1:"0";}i:5;a:2:{s:4:"name";s:10:"free_money";s:5:"value";s:5:"50000";}i:6;a:2:{s:4:"name";s:16:"fee_compute_mode";s:5:"value";s:9:"by_weight";}}'),
(4, '运费到付', 7, 'a:2:{i:0;a:2:{s:4:"name";s:10:"free_money";s:5:"value";s:5:"50000";}i:1;a:2:{s:4:"name";s:16:"fee_compute_mode";s:5:"value";N;}}');

-- --------------------------------------------------------

--
-- Table structure for table `ecs_shop_config`
--

CREATE TABLE IF NOT EXISTS `ecs_shop_config` (
  `id` smallint(5) unsigned NOT NULL,
  `parent_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `code` varchar(30) NOT NULL DEFAULT '',
  `type` varchar(10) NOT NULL DEFAULT '',
  `store_range` varchar(255) NOT NULL DEFAULT '',
  `store_dir` varchar(255) NOT NULL DEFAULT '',
  `value` text NOT NULL,
  `sort_order` tinyint(3) unsigned NOT NULL DEFAULT '1'
) ENGINE=MyISAM AUTO_INCREMENT=906 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ecs_shop_config`
--

INSERT INTO `ecs_shop_config` (`id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order`) VALUES
(1, 0, 'shop_info', 'group', '', '', '', 1),
(2, 0, 'basic', 'group', '', '', '', 1),
(3, 0, 'display', 'group', '', '', '', 1),
(4, 0, 'shopping_flow', 'group', '', '', '', 1),
(5, 0, 'smtp', 'group', '', '', '', 1),
(6, 0, 'hidden', 'hidden', '', '', '', 1),
(7, 0, 'goods', 'group', '', '', '', 1),
(8, 0, 'sms', 'group', '', '', '', 1),
(9, 0, 'wap', 'group', '', '', '', 1),
(101, 1, 'shop_name', 'text', '', '', '微市', 1),
(102, 1, 'shop_title', 'text', '', '', '微市', 1),
(103, 1, 'shop_desc', 'text', '', '', '微市，无微不至', 1),
(104, 1, 'shop_keywords', 'text', '', '', '微市 超市 新鲜', 1),
(105, 1, 'shop_country', 'manual', '', '', '', 1),
(106, 1, 'shop_province', 'manual', '', '', '', 1),
(107, 1, 'shop_city', 'manual', '', '', '', 1),
(108, 1, 'shop_address', 'text', '', '', '', 1),
(109, 1, 'qq', 'text', '', '', '812589051', 1),
(110, 1, 'ww', 'text', '', '', '', 1),
(111, 1, 'skype', 'text', '', '', '', 1),
(112, 1, 'ym', 'text', '', '', '', 1),
(113, 1, 'msn', 'text', '', '', '', 1),
(114, 1, 'service_email', 'text', '', '', '', 1),
(115, 1, 'service_phone', 'text', '', '', '', 1),
(116, 1, 'shop_closed', 'select', '0,1', '', '0', 1),
(117, 1, 'close_comment', 'textarea', '', '', '', 1),
(118, 1, 'shop_logo', 'file', '', '../themes/{$template}/images/', '', 1),
(119, 1, 'licensed', 'select', '0,1', '', '1', 1),
(120, 1, 'user_notice', 'textarea', '', '', '用户中心公告！', 1),
(121, 1, 'shop_notice', 'textarea', '', '', '欢迎光临手机网,我们的宗旨：诚信经营、服务客户！\r\n<MARQUEE onmouseover=this.stop() onmouseout=this.start() \r\nscrollAmount=3><U><FONT color=red>\r\n<P>咨询电话010-10124444  010-21252454 8465544</P></FONT></U></MARQUEE>', 1),
(122, 1, 'shop_reg_closed', 'select', '1,0', '', '0', 1),
(201, 2, 'lang', 'manual', '', '', 'zh_cn', 1),
(202, 2, 'icp_number', 'text', '', '', '', 1),
(203, 2, 'icp_file', 'file', '', '../cert/', '', 1),
(204, 2, 'watermark', 'file', '', '../images/', '', 1),
(205, 2, 'watermark_place', 'select', '0,1,2,3,4,5', '', '1', 1),
(206, 2, 'watermark_alpha', 'text', '', '', '65', 1),
(207, 2, 'use_storage', 'select', '1,0', '', '1', 1),
(208, 2, 'market_price_rate', 'text', '', '', '1.2', 1),
(209, 2, 'rewrite', 'select', '0,1,2', '', '1', 1),
(210, 2, 'integral_name', 'text', '', '', '积分', 1),
(211, 2, 'integral_scale', 'text', '', '', '1', 1),
(212, 2, 'integral_percent', 'text', '', '', '1', 1),
(213, 2, 'sn_prefix', 'text', '', '', 'ECS', 1),
(214, 2, 'comment_check', 'select', '0,1', '', '1', 1),
(215, 2, 'no_picture', 'file', '', '../images/', '', 1),
(218, 2, 'stats_code', 'textarea', '', '', '', 1),
(219, 2, 'cache_time', 'text', '', '', '3600', 1),
(220, 2, 'register_points', 'text', '', '', '0', 1),
(221, 2, 'enable_gzip', 'select', '0,1', '', '0', 1),
(222, 2, 'top10_time', 'select', '0,1,2,3,4', '', '0', 1),
(223, 2, 'timezone', 'options', '-12,-11,-10,-9,-8,-7,-6,-5,-4,-3.5,-3,-2,-1,0,1,2,3,3.5,4,4.5,5,5.5,5.75,6,6.5,7,8,9,9.5,10,11,12', '', '8', 1),
(224, 2, 'upload_size_limit', 'options', '-1,0,64,128,256,512,1024,2048,4096', '', '64', 1),
(226, 2, 'cron_method', 'select', '0,1', '', '0', 1),
(227, 2, 'comment_factor', 'select', '0,1,2,3', '', '0', 1),
(228, 2, 'enable_order_check', 'select', '0,1', '', '1', 1),
(229, 2, 'default_storage', 'text', '', '', '1000', 1),
(230, 2, 'bgcolor', 'text', '', '', '#FFFFFF', 1),
(231, 2, 'visit_stats', 'select', 'on,off', '', 'on', 1),
(232, 2, 'send_mail_on', 'select', 'on,off', '', 'off', 1),
(233, 2, 'auto_generate_gallery', 'select', '1,0', '', '1', 1),
(234, 2, 'retain_original_img', 'select', '1,0', '', '1', 1),
(235, 2, 'member_email_validate', 'select', '1,0', '', '1', 1),
(236, 2, 'message_board', 'select', '1,0', '', '1', 1),
(239, 2, 'certificate_id', 'hidden', '', '', '1222996236', 1),
(240, 2, 'token', 'hidden', '', '', '1bb759b4db9d8176af3463fdf6a33c4a362d3e71fe5bcbcc80a29d62c8d64d9c', 1),
(241, 2, 'certi', 'hidden', '', '', 'http://service.google.com/openapi/api.php', 1),
(242, 2, 'send_verify_email', 'select', '1,0', '', '0', 1),
(243, 2, 'ent_id', 'hidden', '', '', '', 1),
(244, 2, 'ent_ac', 'hidden', '', '', '', 1),
(245, 2, 'ent_sign', 'hidden', '', '', '', 1),
(246, 2, 'ent_email', 'hidden', '', '', '', 1),
(301, 3, 'date_format', 'hidden', '', '', 'Y-m-d', 1),
(302, 3, 'time_format', 'text', '', '', 'Y-m-d H:i:s', 1),
(303, 3, 'currency_format', 'text', '', '', '￥<span>%s</span>', 1),
(304, 3, 'thumb_width', 'text', '', '', '220', 1),
(305, 3, 'thumb_height', 'text', '', '', '220', 1),
(306, 3, 'image_width', 'text', '', '', '450', 1),
(307, 3, 'image_height', 'text', '', '', '450', 1),
(312, 3, 'top_number', 'text', '', '', '5', 1),
(313, 3, 'history_number', 'text', '', '', '18', 1),
(314, 3, 'comments_number', 'text', '', '', '5', 1),
(315, 3, 'bought_goods', 'text', '', '', '3', 1),
(316, 3, 'article_number', 'text', '', '', '8', 1),
(317, 3, 'goods_name_length', 'text', '', '', '100', 1),
(318, 3, 'price_format', 'select', '0,1,2,3,4,5', '', '5', 1),
(319, 3, 'page_size', 'text', '', '', '20', 1),
(320, 3, 'sort_order_type', 'select', '0,1,2', '', '0', 1),
(321, 3, 'sort_order_method', 'select', '0,1', '', '0', 1),
(322, 3, 'show_order_type', 'select', '0,1,2', '', '1', 1),
(323, 3, 'attr_related_number', 'text', '', '', '5', 1),
(324, 3, 'goods_gallery_number', 'text', '', '', '5', 1),
(325, 3, 'article_title_length', 'text', '', '', '16', 1),
(326, 3, 'name_of_region_1', 'text', '', '', '国家', 1),
(327, 3, 'name_of_region_2', 'text', '', '', '省', 1),
(328, 3, 'name_of_region_3', 'text', '', '', '市', 1),
(329, 3, 'name_of_region_4', 'text', '', '', '区', 1),
(330, 3, 'search_keywords', 'text', '', '', '', 0),
(332, 3, 'related_goods_number', 'text', '', '', '5', 1),
(333, 3, 'help_open', 'select', '0,1', '', '1', 1),
(334, 3, 'article_page_size', 'text', '', '', '10', 1),
(335, 3, 'page_style', 'select', '0,1', '', '1', 1),
(336, 3, 'recommend_order', 'select', '0,1', '', '0', 1),
(337, 3, 'index_ad', 'hidden', '', '', 'sys', 1),
(401, 4, 'can_invoice', 'select', '1,0', '', '1', 1),
(402, 4, 'use_integral', 'select', '1,0', '', '1', 1),
(403, 4, 'use_bonus', 'select', '1,0', '', '1', 1),
(404, 4, 'use_surplus', 'select', '1,0', '', '1', 1),
(405, 4, 'use_how_oos', 'select', '1,0', '', '1', 1),
(406, 4, 'send_confirm_email', 'select', '1,0', '', '0', 1),
(407, 4, 'send_ship_email', 'select', '1,0', '', '0', 1),
(408, 4, 'send_cancel_email', 'select', '1,0', '', '0', 1),
(409, 4, 'send_invalid_email', 'select', '1,0', '', '0', 1),
(410, 4, 'order_pay_note', 'select', '1,0', '', '1', 1),
(411, 4, 'order_unpay_note', 'select', '1,0', '', '1', 1),
(412, 4, 'order_ship_note', 'select', '1,0', '', '1', 1),
(413, 4, 'order_receive_note', 'select', '1,0', '', '1', 1),
(414, 4, 'order_unship_note', 'select', '1,0', '', '1', 1),
(415, 4, 'order_return_note', 'select', '1,0', '', '1', 1),
(416, 4, 'order_invalid_note', 'select', '1,0', '', '1', 1),
(417, 4, 'order_cancel_note', 'select', '1,0', '', '1', 1),
(418, 4, 'invoice_content', 'textarea', '', '', '', 1),
(419, 4, 'anonymous_buy', 'select', '1,0', '', '1', 1),
(420, 4, 'min_goods_amount', 'text', '', '', '0', 1),
(421, 4, 'one_step_buy', 'select', '1,0', '', '0', 1),
(422, 4, 'invoice_type', 'manual', '', '', 'a:2:{s:4:"type";a:3:{i:0;s:1:"1";i:1;s:1:"2";i:2;s:0:"";}s:4:"rate";a:3:{i:0;d:1;i:1;d:1.5;i:2;d:0;}}', 1),
(423, 4, 'stock_dec_time', 'select', '1,0', '', '0', 1),
(424, 4, 'cart_confirm', 'options', '1,2,3,4', '', '4', 0),
(425, 4, 'send_service_email', 'select', '1,0', '', '0', 1),
(426, 4, 'show_goods_in_cart', 'select', '1,2,3', '', '3', 1),
(427, 4, 'show_attr_in_cart', 'select', '1,0', '', '1', 1),
(501, 5, 'smtp_host', 'text', '', '', 'localhost', 1),
(502, 5, 'smtp_port', 'text', '', '', '25', 1),
(503, 5, 'smtp_user', 'text', '', '', '', 1),
(504, 5, 'smtp_pass', 'password', '', '', '', 1),
(505, 5, 'smtp_mail', 'text', '', '', '', 1),
(506, 5, 'mail_charset', 'select', 'UTF8,GB2312,BIG5', '', 'UTF8', 1),
(507, 5, 'mail_service', 'select', '0,1', '', '0', 0),
(508, 5, 'smtp_ssl', 'select', '0,1', '', '0', 0),
(601, 6, 'integrate_code', 'hidden', '', '', 'ecshop', 1),
(602, 6, 'integrate_config', 'hidden', '', '', '', 1),
(603, 6, 'hash_code', 'hidden', '', '', 'b76989c756aab2c64cf941eb31dec09c', 1),
(604, 6, 'template', 'hidden', '', '', 'warket', 1),
(605, 6, 'install_date', 'hidden', '', '', '1379320265', 1),
(606, 6, 'ecs_version', 'hidden', '', '', 'v2.7.3', 1),
(607, 6, 'sms_user_name', 'hidden', '', '', '', 1),
(608, 6, 'sms_password', 'hidden', '', '', '', 1),
(609, 6, 'sms_auth_str', 'hidden', '', '', '', 1),
(610, 6, 'sms_domain', 'hidden', '', '', '', 1),
(611, 6, 'sms_count', 'hidden', '', '', '', 1),
(612, 6, 'sms_total_money', 'hidden', '', '', '', 1),
(613, 6, 'sms_balance', 'hidden', '', '', '', 1),
(614, 6, 'sms_last_request', 'hidden', '', '', '', 1),
(616, 6, 'affiliate', 'hidden', '', '', 'a:3:{s:6:"config";a:7:{s:6:"expire";d:24;s:11:"expire_unit";s:4:"hour";s:11:"separate_by";i:0;s:15:"level_point_all";s:2:"5%";s:15:"level_money_all";s:2:"1%";s:18:"level_register_all";i:2;s:17:"level_register_up";i:60;}s:4:"item";a:4:{i:0;a:2:{s:11:"level_point";s:3:"60%";s:11:"level_money";s:3:"60%";}i:1;a:2:{s:11:"level_point";s:3:"30%";s:11:"level_money";s:3:"30%";}i:2;a:2:{s:11:"level_point";s:2:"7%";s:11:"level_money";s:2:"7%";}i:3;a:2:{s:11:"level_point";s:2:"3%";s:11:"level_money";s:2:"3%";}}s:2:"on";i:1;}', 1),
(617, 6, 'captcha', 'hidden', '', '', '39', 1),
(618, 6, 'captcha_width', 'hidden', '', '', '100', 1),
(619, 6, 'captcha_height', 'hidden', '', '', '20', 1),
(620, 6, 'sitemap', 'hidden', '', '', 'a:6:{s:19:"homepage_changefreq";s:6:"hourly";s:17:"homepage_priority";s:3:"0.9";s:19:"category_changefreq";s:6:"hourly";s:17:"category_priority";s:3:"0.8";s:18:"content_changefreq";s:6:"weekly";s:16:"content_priority";s:3:"0.7";}', 0),
(621, 6, 'points_rule', 'hidden', '', '', '', 0),
(622, 6, 'flash_theme', 'hidden', '', '', 'dynfocus', 1),
(623, 6, 'stylename', 'hidden', '', '', '', 1),
(701, 7, 'show_goodssn', 'select', '1,0', '', '0', 1),
(702, 7, 'show_brand', 'select', '1,0', '', '0', 1),
(703, 7, 'show_goodsweight', 'select', '1,0', '', '0', 1),
(704, 7, 'show_goodsnumber', 'select', '1,0', '', '1', 1),
(705, 7, 'show_addtime', 'select', '1,0', '', '0', 1),
(706, 7, 'goodsattr_style', 'select', '1,0', '', '1', 1),
(707, 7, 'show_marketprice', 'select', '1,0', '', '1', 1),
(801, 8, 'sms_shop_mobile', 'text', '', '', '', 1),
(802, 8, 'sms_order_placed', 'select', '1,0', '', '0', 1),
(803, 8, 'sms_order_payed', 'select', '1,0', '', '0', 1),
(804, 8, 'sms_order_shipped', 'select', '1,0', '', '0', 1),
(901, 9, 'wap_config', 'select', '1,0', '', '1', 1),
(902, 9, 'wap_logo', 'file', '', '../images/', '', 1),
(903, 2, 'message_check', 'select', '1,0', '', '1', 1),
(904, 3, 'auction_ad', 'text', '', '', '20', 1),
(905, 1, 'shop_desc_en', 'text', '', '', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `ecs_snatch_log`
--

CREATE TABLE IF NOT EXISTS `ecs_snatch_log` (
  `log_id` mediumint(8) unsigned NOT NULL,
  `snatch_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `bid_price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `bid_time` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ecs_snatch_log`
--

INSERT INTO `ecs_snatch_log` (`log_id`, `snatch_id`, `user_id`, `bid_price`, `bid_time`) VALUES
(1, 2, 1, '17.00', 1242142910),
(2, 1, 1, '50.00', 1242142935);

-- --------------------------------------------------------

--
-- Table structure for table `ecs_stats`
--

CREATE TABLE IF NOT EXISTS `ecs_stats` (
  `access_time` int(10) unsigned NOT NULL DEFAULT '0',
  `ip_address` varchar(15) NOT NULL DEFAULT '',
  `visit_times` smallint(5) unsigned NOT NULL DEFAULT '1',
  `browser` varchar(60) NOT NULL DEFAULT '',
  `system` varchar(20) NOT NULL DEFAULT '',
  `language` varchar(20) NOT NULL DEFAULT '',
  `area` varchar(30) NOT NULL DEFAULT '',
  `referer_domain` varchar(100) NOT NULL DEFAULT '',
  `referer_path` varchar(200) NOT NULL DEFAULT '',
  `access_url` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ecs_stats`
--

INSERT INTO `ecs_stats` (`access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url`) VALUES
(1399518733, '127.0.0.1', 626, 'FireFox 26.0', 'Windows NT', 'zh-cn,zh', 'LAN', '', '', '/miqi/index.php'),
(1405892990, '127.0.0.1', 171, 'FireFox 30.0', 'Windows XP', 'zh-cn,zh', 'LAN', '', '', '/index.php'),
(1405893250, '127.0.0.1', 1, 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/', '/category.php'),
(1405893257, '127.0.0.1', 1, 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/category.php?id=3', '/category.php'),
(1405893258, '127.0.0.1', 1, 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/category.php?id=1', '/category.php'),
(1405893259, '127.0.0.1', 1, 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/category.php?id=3', '/category.php'),
(1405893260, '127.0.0.1', 1, 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/category.php?id=5', '/category.php'),
(1405893282, '127.0.0.1', 1, 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/index.php', '/category.php'),
(1405893283, '127.0.0.1', 1, 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/category.php?id=3', '/category.php'),
(1405893284, '127.0.0.1', 1, 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/category.php?id=5', '/category.php'),
(1405893294, '127.0.0.1', 1, 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/index.php', '/user.php'),
(1405893323, '127.0.0.1', 1, 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/index.php', '/category.php'),
(1405893325, '127.0.0.1', 1, 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/index.php', '/category.php'),
(1405893326, '127.0.0.1', 1, 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/category.php?id=3', '/category.php'),
(1405893327, '127.0.0.1', 1, 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/category.php?id=5', '/category.php'),
(1405893328, '127.0.0.1', 1, 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/category.php?id=6', '/category.php'),
(1405893328, '127.0.0.1', 1, 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/category.php?id=5', '/category.php'),
(1405893331, '127.0.0.1', 1, 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/index.php', '/category.php'),
(1405893355, '127.0.0.1', 1, 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/', '/category.php'),
(1405893358, '127.0.0.1', 1, 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/index.php', '/category.php'),
(1405894626, '127.0.0.1', 205, 'Safari 537.1', 'Windows XP', 'zh-CN,zh', 'LAN', '', '', '/index.php'),
(1405894736, '127.0.0.1', 379, 'Safari 537.36', 'Windows XP', 'zh-CN,zh', 'LAN', '', '', '/index.php'),
(1405894810, '127.0.0.1', 381, 'Safari 537.36', 'Windows XP', 'zh-CN,zh', 'LAN', '', '', '/index.php'),
(1405895048, '127.0.0.1', 382, 'Safari 537.36', 'Windows XP', 'zh-CN,zh', 'LAN', '', '', '/miqi/index.php'),
(1405895287, '127.0.0.1', 383, 'Safari 537.36', 'Windows XP', 'zh-CN,zh', 'LAN', '', '', '/index.php'),
(1405897241, '127.0.0.1', 172, 'FireFox 30.0', 'Windows XP', 'zh-cn,zh', 'LAN', '', '', '/index.php'),
(1405899364, '127.0.0.1', 384, 'Safari 537.36', 'Windows XP', 'zh-CN,zh', 'LAN', 'http://localhost', '/admin/index.php?act=top', '/index.php'),
(1405902840, '127.0.0.1', 385, 'Safari 537.36', 'Windows XP', 'zh-CN,zh', 'LAN', '', '', '/index.php'),
(1405913079, '127.0.0.1', 386, 'Safari 537.36', 'Windows XP', 'zh-CN,zh', 'LAN', 'http://localhost', '/index.php', '/category.php'),
(1405913112, '127.0.0.1', 387, 'Safari 537.36', 'Windows XP', 'zh-CN,zh', 'LAN', '', '', '/miqi/index.php'),
(1405913330, '127.0.0.1', 388, 'Safari 537.36', 'Windows XP', 'zh-CN,zh', 'LAN', 'http://localhost', '/index.php', '/category.php'),
(1405913358, '127.0.0.1', 389, 'Safari 537.36', 'Windows XP', 'zh-CN,zh', 'LAN', '', '', '/miqi/index.php'),
(1405913638, '127.0.0.1', 390, 'Safari 537.36', 'Windows XP', 'zh-CN,zh', 'LAN', 'http://localhost', '/index.php', '/index.php'),
(1405960963, '127.0.0.1', 391, 'Safari 537.36', 'Windows XP', 'zh-CN,zh', 'LAN', '', '', '/index.php'),
(1405961674, '127.0.0.1', 393, 'Safari 537.36', 'Windows XP', 'zh-CN,zh', 'LAN', 'http://localhost', '/admin/index.php?act=top', '/index.php'),
(1405966119, '127.0.0.1', 395, 'Safari 537.36', 'Windows XP', 'zh-CN,zh', 'LAN', '', '', '/index.php'),
(1405972165, '127.0.0.1', 18, 'Internet Explorer 7.0', 'Windows XP', 'zh-cn', 'LAN', '', '', '/index.php'),
(1405977273, '127.0.0.1', 396, 'Safari 537.36', 'Windows XP', 'zh-CN,zh', 'LAN', 'http://localhost', '/admin/index.php?act=top', '/index.php'),
(1405979844, '127.0.0.1', 397, 'Safari 537.36', 'Windows XP', 'zh-CN,zh', 'LAN', 'http://localhost', '/index.php', '/index.php'),
(1405988873, '61.129.184.61', 1, 'Safari 537.36', 'Windows XP', 'zh-CN,zh', '', '', '', '/index.php'),
(1405988904, '112.64.235.251', 1, 'Unknow browser', 'Unknown', 'zh-cn, zh', 'IANA', 'http://www.sogou.com', '/', '/group_buy.php'),
(1405988947, '180.153.206.35', 1, 'Unknow browser', 'Unknown', 'zh-cn, zh', '[δ֪IP0801]', 'http://www.sogou.com', '/', '/category.php'),
(1405989549, '180.153.214.192', 1, 'Unknow browser', 'Unknown', 'zh-cn, zh', '[δ֪IP0801]', 'http://www.sogou.com', '/', '/user.php'),
(1405990235, '123.112.149.235', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '', 'http://www.yunmoban.cn', '/goods-130.html', '/index.php'),
(1405991198, '36.56.30.14', 1, 'Safari 537.1', 'Windows NT', 'zh-CN,zh', 'IANA', 'http://www.yunmoban.cn', '/goods-130.html', '/index.php'),
(1405991412, '61.129.184.61', 2, 'Safari 537.36', 'Windows XP', 'zh-CN,zh', '', 'http://www.yunmoban.cn', '/category.php?id=37', '/index.php'),
(1406001335, '120.69.23.57', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'APNIC', 'http://www.yunmoban.cn', '/goods-130.html', '/index.php'),
(1406008720, '61.129.184.61', 3, 'Safari 537.36', 'Windows XP', 'zh-CN,zh', '', '', '', '/mobile/index.php'),
(1406008747, '61.129.184.61', 4, 'Safari 537.36', 'Windows XP', 'zh-CN,zh', '', '', '', '/index.php'),
(1406008751, '61.129.184.61', 5, 'Safari 537.36', 'Windows XP', 'zh-CN,zh', '', '', '', '/mobile/index.php'),
(1406009331, '101.226.65.106', 1, 'Unknow browser', 'Unknown', 'zh-cn, zh', 'IANA', 'http://www.sogou.com', '/', '/mobile/index.php'),
(1406009565, '121.196.43.130', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/mobile/certi.php'),
(1406009565, '121.196.43.131', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/mobile/certi.php'),
(1406009635, '112.64.235.86', 1, 'Unknow browser', 'Unknown', 'zh-cn, zh', 'IANA', 'http://www.sogou.com', '/', '/mobile/article.php'),
(1406009636, '180.153.206.26', 1, 'Unknow browser', 'Unknown', 'zh-cn, zh', '[δ֪IP0801]', 'http://www.sogou.com', '/', '/mobile/article_cat.php'),
(1406009643, '180.153.206.36', 1, 'Unknow browser', 'Unknown', 'zh-cn, zh', '[δ֪IP0801]', 'http://www.sogou.com', '/', '/mobile/goods.php'),
(1406009653, '112.64.235.89', 1, 'Unknow browser', 'Unknown', 'zh-cn, zh', 'IANA', 'http://www.sogou.com', '/', '/mobile/user.php'),
(1406009654, '180.153.214.191', 1, 'Unknow browser', 'Unknown', 'zh-cn, zh', '[δ֪IP0801]', 'http://www.sogou.com', '/', '/mobile/ectouch.php'),
(1406009671, '61.129.184.61', 6, 'Safari 537.36', 'Windows XP', 'zh-CN,zh', '', 'http://q.yunmoban.cn', '/mobile/', '/index.php'),
(1406009704, '61.129.184.61', 7, 'Safari 537.36', 'Windows XP', 'zh-CN,zh', '', 'http://q.yunmoban.cn', '/mobile/miq/index.php?act=top', '/mobile/index.php'),
(1406009948, '61.129.184.61', 8, 'Safari 537.36', 'Windows XP', 'zh-CN,zh', '', '', '', '/index.php'),
(1406009962, '61.129.184.61', 9, 'Safari 537.36', 'Windows XP', 'zh-CN,zh', '', 'http://q.yunmoban.cn', '/mobile/', '/mobile/goods.php'),
(1406009976, '180.153.161.217', 1, 'Unknow browser', 'Unknown', 'zh-cn, zh', '[δ֪IP0801]', 'http://www.sogou.com', '/', '/mobile/category.php'),
(1406010029, '112.64.235.87', 1, 'Unknow browser', 'Unknown', 'zh-cn, zh', 'IANA', 'http://www.sogou.com', '/', '/mobile/flow.php'),
(1406010211, '61.129.184.61', 10, 'Safari 537.36', 'Windows XP', 'zh-CN,zh', '', '', '', '/index.php'),
(1406010254, '61.129.184.61', 11, 'Safari 537.36', 'Windows XP', 'zh-CN,zh', '', 'http://q.yunmoban.cn', '/mobile/goods.php?id=1', '/mobile/cat_all.php'),
(1406010329, '61.129.184.61', 12, 'Safari 537.36', 'Windows XP', 'zh-CN,zh', '', 'http://q.yunmoban.cn', '/miq/index.php?act=top', '/index.php'),
(1406010371, '180.153.163.209', 1, 'Unknow browser', 'Unknown', 'zh-cn, zh', '[δ֪IP0801]', 'http://www.sogou.com', '/', '/group_buy.php'),
(1406010515, '101.226.66.21', 1, 'Unknow browser', 'Unknown', 'zh-cn, zh', 'IANA', 'http://www.sogou.com', '/', '/exchange.php'),
(1406010536, '61.129.184.61', 13, 'Safari 537.36', 'Windows XP', 'zh-CN,zh', '', '', '', '/mobile/index.php'),
(1406010543, '112.64.235.247', 1, 'Unknow browser', 'Unknown', 'zh-cn, zh', 'IANA', 'http://www.sogou.com', '/', '/exchange.php'),
(1406010566, '61.129.184.61', 14, 'Safari 537.36', 'Windows XP', 'zh-CN,zh', '', 'http://q.yunmoban.cn', '/mobile/', '/index.php'),
(1406010583, '61.129.184.61', 15, 'Safari 537.36', 'Windows XP', 'zh-CN,zh', '', '', '', '/mobile/group_buy.php'),
(1406010612, '101.226.66.193', 1, 'Unknow browser', 'Unknown', 'zh-cn, zh', 'IANA', 'http://www.sogou.com', '/', '/mobile/exchange.php'),
(1406010656, '61.129.184.61', 16, 'Safari 537.36', 'Windows XP', 'zh-CN,zh', '', 'http://q.yunmoban.cn', '/miq/index.php?act=top', '/index.php'),
(1406010667, '101.226.66.174', 1, 'Unknow browser', 'Unknown', 'zh-cn, zh', 'IANA', 'http://www.sogou.com', '/', '/group_buy.php'),
(1406010678, '61.129.184.61', 17, 'Safari 537.36', 'Windows XP', 'zh-CN,zh', '', '', '', '/mobile/index.php'),
(1406010699, '61.129.184.61', 18, 'Safari 537.36', 'Windows XP', 'zh-CN,zh', '', 'http://q.yunmoban.cn', '/user.php', '/index.php'),
(1406010871, '101.226.89.119', 1, 'Unknow browser', 'Unknown', 'zh-cn, zh', 'IANA', 'http://www.sogou.com', '/', '/category.php'),
(1406010899, '101.226.33.220', 1, 'Unknow browser', 'Unknown', 'zh-cn, zh', 'IANA', 'http://www.sogou.com', '/', '/goods.php'),
(1406010926, '180.153.163.207', 1, 'Unknow browser', 'Unknown', 'zh-cn, zh', '[δ֪IP0801]', 'http://www.sogou.com', '/', '/goods.php'),
(1406010934, '180.153.163.189', 1, 'Unknow browser', 'Unknown', 'zh-cn, zh', '[δ֪IP0801]', 'http://www.sogou.com', '/', '/article.php'),
(1406010964, '180.153.214.197', 1, 'Unknow browser', 'Unknown', 'zh-cn, zh', '[δ֪IP0801]', 'http://www.sogou.com', '/', '/goods.php'),
(1406010972, '61.129.184.61', 19, 'Safari 537.36', 'Windows XP', 'zh-CN,zh', '', 'http://q.yunmoban.cn', '/mobile/', '/mobile/category.php'),
(1406010995, '61.129.184.61', 20, 'Safari 537.36', 'Windows XP', 'zh-CN,zh', '', 'http://q.yunmoban.cn', '/index.php', '/index.php'),
(1406011003, '61.129.184.61', 21, 'Safari 537.36', 'Windows XP', 'zh-CN,zh', '', '', '', '/mobile/index.php'),
(1406011226, '121.196.43.131', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/mobile/certi.php'),
(1406012434, '110.251.106.78', 1, 'Safari 537.36', 'Windows XP', 'zh-CN,zh', 'IANA', 'http://www.yunmoban.cn', '/goods-130.html', '/index.php'),
(1406012475, '183.60.35.78', 1, 'Unknow browser', 'Unknown', 'zh-cn, zh', '[δ֪IP0801]', '', '', '/index.php'),
(1406012644, '121.196.43.131', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/mobile/certi.php'),
(1406012854, '121.196.43.131', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/mobile/certi.php'),
(1406014902, '101.226.51.227', 1, 'Unknow browser', 'Unknown', 'zh-cn, zh', 'IANA', 'http://www.sogou.com', '/', '/mobile/category.php'),
(1406014903, '180.153.206.27', 1, 'Unknow browser', 'Unknown', 'zh-cn, zh', '[δ֪IP0801]', 'http://www.sogou.com', '/', '/mobile/goods.php'),
(1406016167, '61.129.184.61', 2, 'Safari 537.36', 'Linux', 'zh-CN', '', '', '', '/index.php'),
(1406016167, '61.129.184.61', 2, 'Safari 537.36', 'Linux', 'zh-CN', '', '', '', '/index.php'),
(1406016168, '120.204.200.42', 1, 'FireFox 3.0b4', 'Windows XP', '', 'APNIC', '', '', '/index.php'),
(1406016168, '120.204.200.42', 1, 'FireFox 3.0b4', 'Windows XP', '', 'APNIC', '', '', '/index.php'),
(1406016168, '117.135.170.67', 1, 'FireFox 3.0b4', 'Windows XP', '', '', '', '', '/index.php'),
(1406016168, '117.135.170.67', 1, 'FireFox 3.0b4', 'Windows XP', '', '', '', '', '/index.php'),
(1406016168, '117.135.170.67', 1, 'FireFox 3.0b4', 'Windows XP', '', '', '', '', '/index.php'),
(1406016168, '27.115.124.46', 1, 'FireFox 3.0b4', 'Windows XP', '', 'IANA', '', '', '/index.php'),
(1406016168, '27.115.124.46', 1, 'FireFox 3.0b4', 'Windows XP', '', 'IANA', '', '', '/index.php'),
(1406016168, '140.207.54.180', 1, 'FireFox 3.0b4', 'Windows XP', '', '', '', '', '/index.php'),
(1406016168, '140.207.54.180', 1, 'FireFox 3.0b4', 'Windows XP', '', '', '', '', '/index.php'),
(1406016168, '140.207.55.80', 1, 'FireFox 3.0b4', 'Windows XP', '', '', '', '', '/index.php'),
(1406016503, '180.153.214.152', 1, 'Unknow browser', 'Unknown', 'zh-cn, zh', '[δ֪IP0801]', 'http://www.sogou.com', '/', '/mobile/category.php'),
(1406016525, '180.153.201.15', 1, 'Unknow browser', 'Unknown', 'zh-cn, zh', '[δ֪IP0801]', 'http://www.sogou.com', '/', '/mobile/goods.php'),
(1406016564, '180.153.163.208', 1, 'Unknow browser', 'Unknown', 'zh-cn, zh', '[δ֪IP0801]', 'http://www.sogou.com', '/', '/mobile/exchange.php'),
(1406016568, '101.226.89.117', 1, 'Unknow browser', 'Unknown', 'zh-cn, zh', 'IANA', 'http://www.sogou.com', '/', '/mobile/goods.php'),
(1406017016, '61.129.184.61', 2, 'Safari 537.36', 'Linux', 'zh-CN', '', '', '', '/mobile/index.php'),
(1406023827, '220.181.132.219', 1, 'Internet Explorer 8.0', 'Windows NT', '', '', 'http://q.yunmoban.cn', '/', '/index.php'),
(1406023847, '101.199.108.51', 1, 'Safari 536.11', '', 'en-us,en', 'IANA', '', '', '/index.php'),
(1406024033, '115.28.126.18', 1, 'FireFox 3.5.16', 'Windows XP', '', 'IANA', '', '', '/index.php'),
(1406047745, '61.129.184.61', 22, 'Safari 537.36', 'Windows XP', 'zh-CN,zh', '', 'http://www.yunmoban.cn', '/goods-130.html', '/index.php'),
(1406047752, '101.226.65.105', 1, 'Unknow browser', 'Unknown', 'zh-cn, zh', 'IANA', 'http://www.sogou.com', '/', '/index.php'),
(1406047784, '101.226.33.205', 1, 'Unknow browser', 'Unknown', 'zh-cn, zh', 'IANA', 'http://www.sogou.com', '/', '/article.php'),
(1406047799, '117.78.13.110', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/group_buy.php'),
(1406047799, '117.78.13.110', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/goods.php'),
(1406047807, '112.64.235.254', 1, 'Unknow browser', 'Unknown', 'zh-cn, zh', 'IANA', 'http://www.sogou.com', '/', '/article.php'),
(1406047945, '101.226.33.223', 1, 'Unknow browser', 'Unknown', 'zh-cn, zh', 'IANA', 'http://www.sogou.com', '/', '/category.php'),
(1406047998, '61.129.184.61', 23, 'Safari 537.36', 'Windows XP', 'zh-CN,zh', '', '', '', '/mobile/index.php'),
(1406048008, '101.226.66.180', 1, 'Unknow browser', 'Unknown', 'zh-cn, zh', 'IANA', 'http://www.sogou.com', '/', '/mobile/category.php'),
(1406048045, '61.129.184.61', 24, 'Safari 537.36', 'Windows XP', 'zh-CN,zh', '', '', '', '/index.php'),
(1406048167, '117.78.13.110', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/goods.php'),
(1406048177, '112.64.235.249', 1, 'Unknow browser', 'Unknown', 'zh-cn, zh', 'IANA', 'http://www.sogou.com', '/', '/goods.php'),
(1406048178, '117.78.13.110', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/goods.php'),
(1406048180, '222.73.76.253', 1, 'Unknow browser', 'Unknown', 'zh-cn, zh', '', 'http://www.sogou.com', '/', '/brand.php'),
(1406048187, '101.226.89.120', 1, 'Unknow browser', 'Unknown', 'zh-cn, zh', 'IANA', 'http://www.sogou.com', '/', '/goods.php'),
(1406048188, '117.78.13.110', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/goods.php'),
(1406048199, '180.153.214.180', 1, 'Unknow browser', 'Unknown', 'zh-cn, zh', '[δ֪IP0801]', 'http://www.sogou.com', '/', '/goods.php'),
(1406048283, '61.129.184.61', 25, 'Safari 537.36', 'Windows XP', 'zh-CN,zh', '', 'http://q.yunmoban.cn', '/', '/mobile/index.php'),
(1406048312, '61.129.184.61', 26, 'Safari 537.36', 'Windows XP', 'zh-CN,zh', '', 'http://q.yunmoban.cn', '/', '/index.php'),
(1406048530, '180.153.214.181', 1, 'Unknow browser', 'Unknown', 'zh-cn, zh', '[δ֪IP0801]', 'http://www.sogou.com', '/', '/category.php'),
(1406048549, '61.129.184.61', 27, 'Safari 537.36', 'Windows XP', 'zh-CN,zh', '', 'http://q.yunmoban.cn', '/', '/mobile/index.php'),
(1406048581, '61.129.184.61', 28, 'Safari 537.36', 'Windows XP', 'zh-CN,zh', '', 'http://q.yunmoban.cn', '/miq/index.php?act=top', '/index.php'),
(1406048617, '61.129.184.61', 29, 'Safari 537.36', 'Windows XP', 'zh-CN,zh', '', 'http://q.yunmoban.cn', '/', '/mobile/index.php'),
(1406048620, '61.129.184.61', 30, 'Safari 537.36', 'Windows XP', 'zh-CN,zh', '', 'http://q.yunmoban.cn', '/', '/category.php'),
(1406048625, '61.129.184.61', 31, 'Safari 537.36', 'Windows XP', 'zh-CN,zh', '', 'http://q.yunmoban.cn', '/category.php?id=5', '/mobile/index.php'),
(1406049207, '61.129.184.61', 32, 'Safari 537.36', 'Windows XP', 'zh-CN,zh', '', 'http://q.yunmoban.cn', '/miq/index.php?act=top', '/index.php'),
(1406049213, '121.196.43.130', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/mobile/certi.php'),
(1406049228, '121.196.43.131', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/mobile/certi.php'),
(1406049341, '61.129.184.61', 33, 'Safari 537.36', 'Windows XP', 'zh-CN,zh', '', 'http://q.yunmoban.cn', '/mobile/miq/index.php?act=top', '/mobile/index.php'),
(1406049352, '61.129.184.61', 34, 'Safari 537.36', 'Windows XP', 'zh-CN,zh', '', 'http://q.yunmoban.cn', '/category.php?id=3', '/index.php'),
(1406049367, '61.129.184.61', 35, 'Safari 537.36', 'Windows XP', 'zh-CN,zh', '', 'http://q.yunmoban.cn', '/mobile/', '/mobile/goods.php'),
(1406049390, '61.129.184.61', 36, 'Safari 537.36', 'Windows XP', 'zh-CN,zh', '', 'http://q.yunmoban.cn', '/category.php?id=5', '/category.php'),
(1406049584, '61.129.184.61', 37, 'Safari 537.36', 'Windows XP', 'zh-CN,zh', '', 'http://q.yunmoban.cn', '/mobile/miq/index.php?act=top', '/mobile/index.php'),
(1406049588, '121.196.43.130', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/mobile/certi.php'),
(1406049813, '121.196.43.130', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/mobile/certi.php'),
(1406050214, '61.129.184.61', 38, 'Safari 537.36', 'Windows XP', 'zh-CN,zh', '', 'http://q.yunmoban.cn', '/miq/index.php?act=top', '/index.php'),
(1406050409, '61.129.184.61', 39, 'Safari 537.36', 'Windows XP', 'zh-CN,zh', '', 'http://q.yunmoban.cn', '/mobile/', '/mobile/category.php'),
(1406050511, '61.129.184.61', 40, 'Safari 537.36', 'Windows XP', 'zh-CN,zh', '', 'http://q.yunmoban.cn', '/index.php', '/category.php'),
(1406050609, '101.226.62.80', 1, 'Unknow browser', 'Unknown', '', 'IANA', '', '', '/wechat/weixin.php'),
(1406050613, '101.226.62.80', 1, 'Unknow browser', 'Unknown', '', 'IANA', '', '', '/wechat/weixin.php'),
(1406050616, '101.226.62.80', 1, 'Unknow browser', 'Unknown', '', 'IANA', '', '', '/wechat/weixin.php'),
(1406050619, '14.17.34.191', 1, 'Unknow browser', 'Unknown', 'zh-cn, zh', '', '', '', '/wechat/weixin.php'),
(1406050620, '101.226.62.80', 1, 'Unknow browser', 'Unknown', '', 'IANA', '', '', '/wechat/weixin.php'),
(1406050684, '101.226.62.84', 1, 'Unknow browser', 'Unknown', '', 'IANA', '', '', '/wechat/weixin.php'),
(1406050689, '61.129.184.61', 1, 'Safari 534.30', 'Linux', 'zh-CN, en-US', '', '', '', '/mobile/goods.php'),
(1406050711, '101.226.62.82', 1, 'Unknow browser', 'Unknown', '', 'IANA', '', '', '/wechat/weixin.php'),
(1406050715, '101.226.62.82', 1, 'Unknow browser', 'Unknown', '', 'IANA', '', '', '/wechat/weixin.php'),
(1406050719, '101.226.62.82', 1, 'Unknow browser', 'Unknown', '', 'IANA', '', '', '/wechat/weixin.php'),
(1406050749, '101.226.62.85', 1, 'Unknow browser', 'Unknown', '', 'IANA', '', '', '/wechat/weixin.php'),
(1406050762, '101.226.62.82', 1, 'Unknow browser', 'Unknown', '', 'IANA', '', '', '/wechat/weixin.php'),
(1406051189, '101.226.62.85', 1, 'Unknow browser', 'Unknown', '', 'IANA', '', '', '/wechat/weixin.php'),
(1406051189, '61.129.184.61', 2, 'Safari 534.30', 'Linux', 'zh-CN, en-US', '', '', '', '/index.php'),
(1406051190, '61.129.184.61', 3, 'Safari 534.30', 'Linux', 'zh-CN, en-US', '', '', '', '/mobile/index.php'),
(1406051198, '101.226.62.82', 1, 'Unknow browser', 'Unknown', '', 'IANA', '', '', '/wechat/weixin.php'),
(1406051289, '101.226.62.81', 1, 'Unknow browser', 'Unknown', '', 'IANA', '', '', '/wechat/weixin.php'),
(1406051292, '61.129.184.61', 1, 'Safari 534.30', 'Linux', 'zh-CN, en-US', '', '', '', '/mobile/user.php'),
(1406051314, '101.226.62.81', 1, 'Unknow browser', 'Unknown', '', 'IANA', '', '', '/wechat/weixin.php'),
(1406051320, '101.226.62.81', 1, 'Unknow browser', 'Unknown', '', 'IANA', '', '', '/wechat/weixin.php'),
(1406051325, '61.129.184.61', 2, 'Safari 534.30', 'Linux', 'zh-CN, en-US', '', '', '', '/index.php'),
(1406051326, '61.129.184.61', 3, 'Safari 534.30', 'Linux', 'zh-CN, en-US', '', '', '', '/mobile/index.php'),
(1406051335, '101.226.62.81', 1, 'Unknow browser', 'Unknown', '', 'IANA', '', '', '/wechat/weixin.php'),
(1406051355, '101.226.62.81', 1, 'Unknow browser', 'Unknown', '', 'IANA', '', '', '/wechat/weixin.php'),
(1406051360, '14.17.29.85', 1, 'Unknow browser', 'Unknown', 'zh-cn, zh', '', '', '', '/mobile/user.php'),
(1406051648, '61.129.184.61', 41, 'Safari 537.36', 'Windows XP', 'zh-CN,zh', '', '', '', '/mobile/user.php'),
(1406051660, '61.129.184.61', 2, 'Safari 537.36', 'Linux', 'zh-CN', '', '', '', '/mobile/user.php'),
(1406052203, '183.60.70.29', 1, 'Unknow browser', 'Unknown', 'zh-cn, zh', '[δ֪IP0801]', '', '', '/mobile/index.php'),
(1406052278, '61.129.184.61', 1, 'Safari 534.30', 'Linux', 'zh-CN, en-US', '', '', '', '/mobile/user.php'),
(1406052278, '14.17.18.147', 1, 'Unknow browser', 'Unknown', 'zh-cn, zh', '', '', '', '/mobile/user.php'),
(1406052297, '101.226.62.86', 1, 'Unknow browser', 'Unknown', '', 'IANA', '', '', '/wechat/weixin.php'),
(1406052307, '101.226.62.82', 1, 'Unknow browser', 'Unknown', '', 'IANA', '', '', '/wechat/weixin.php'),
(1406052314, '101.226.62.86', 1, 'Unknow browser', 'Unknown', '', 'IANA', '', '', '/wechat/weixin.php'),
(1406052321, '101.226.62.85', 1, 'Unknow browser', 'Unknown', '', 'IANA', '', '', '/wechat/weixin.php'),
(1406052333, '101.226.62.82', 1, 'Unknow browser', 'Unknown', '', 'IANA', '', '', '/wechat/weixin.php'),
(1406052338, '101.226.62.82', 1, 'Unknow browser', 'Unknown', '', 'IANA', '', '', '/wechat/weixin.php'),
(1406052345, '101.226.62.84', 1, 'Unknow browser', 'Unknown', '', 'IANA', '', '', '/wechat/weixin.php'),
(1406052348, '15.195.201.89', 1, 'Internet Explorer 8.0', 'Windows NT', 'en-US,zh-CN', '', '', '', '/index.php'),
(1406052349, '103.246.38.196', 1, 'Internet Explorer 7.0', 'Windows XP', 'en, *', 'IANA', '', '', '/index.php'),
(1406052349, '15.195.201.89', 1, 'Internet Explorer 8.0', 'Windows NT', 'en-US,zh-CN', '', '', '', '/index.php'),
(1406052352, '101.226.62.84', 1, 'Unknow browser', 'Unknown', '', 'IANA', '', '', '/wechat/weixin.php'),
(1406054081, '61.129.184.61', 42, 'Safari 537.36', 'Windows XP', 'zh-CN,zh', '', '', '', '/mobile/user.php'),
(1406054087, '61.129.184.61', 43, 'Safari 537.36', 'Windows XP', 'zh-CN,zh', '', 'http://q.yunmoban.cn', '/', '/index.php'),
(1406054953, '61.129.184.61', 44, 'Safari 537.36', 'Windows XP', 'zh-CN,zh', '', '', '', '/mobile/index.php'),
(1406055213, '140.207.196.3', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '', 'http://www.yunmoban.cn', '/goods-130.html', '/index.php'),
(1406055441, '117.30.149.231', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '', '', '', '/mobile/index.php'),
(1406055865, '58.101.103.14', 1, 'Safari 537.36', 'Windows XP', 'zh-CN,zh', '', '', '', '/index.php'),
(1406055868, '58.101.103.14', 2, 'Safari 537.36', 'Windows XP', 'zh-CN,zh', '', '', '', '/mobile/index.php'),
(1406055985, '58.101.103.14', 3, 'Safari 537.36', 'Windows XP', 'zh-CN,zh', '', 'http://q.yunmoban.cn', '/mobile/', '/mobile/goods.php'),
(1406056003, '58.101.103.14', 4, 'Safari 537.36', 'Windows XP', 'zh-CN,zh', '', 'http://q.yunmoban.cn', '/mobile/', '/index.php'),
(1406057728, '58.101.103.14', 5, 'Safari 537.36', 'Windows XP', 'zh-CN,zh', '', '', '', '/mobile/index.php'),
(1406058341, '101.226.62.83', 1, 'Unknow browser', 'Unknown', '', 'IANA', '', '', '/wechat/weixin.php'),
(1406058347, '101.226.62.83', 1, 'Unknow browser', 'Unknown', '', 'IANA', '', '', '/wechat/weixin.php'),
(1406058348, '218.20.227.30', 1, 'Unknow browser', 'Unknown', 'zh-cn', '', '', '', '/index.php'),
(1406058348, '218.20.227.30', 2, 'Unknow browser', 'Unknown', 'zh-cn', '', '', '', '/mobile/index.php'),
(1406058540, '113.215.2.17', 1, 'Safari 534.30', 'Linux', 'zh-CN, en-US', 'IANA', '', '', '/mobile/index.php'),
(1406058662, '101.226.62.83', 1, 'Unknow browser', 'Unknown', '', 'IANA', '', '', '/wechat/weixin.php'),
(1406058673, '113.215.2.17', 1, 'Safari 534.30', 'Linux', 'zh-CN, en-US', 'IANA', '', '', '/mobile/user.php'),
(1406058784, '14.17.34.191', 1, 'Unknow browser', 'Unknown', 'zh-cn, zh', '', '', '', '/mobile/user.php'),
(1406058799, '101.226.62.83', 1, 'Unknow browser', 'Unknown', '', 'IANA', '', '', '/wechat/weixin.php'),
(1406063254, '101.226.62.81', 1, 'Unknow browser', 'Unknown', '', 'IANA', '', '', '/wechat/weixin.php'),
(1406063257, '61.129.184.61', 1, 'Safari 534.30', 'Linux', 'zh-CN, en-US', '', '', '', '/mobile/user.php'),
(1406063268, '101.226.62.81', 1, 'Unknow browser', 'Unknown', '', 'IANA', '', '', '/wechat/weixin.php'),
(1406063423, '61.129.184.61', 1, 'Safari 534.30', 'Linux', 'zh-CN, en-US', '', '', '', '/mobile/user.php'),
(1406063427, '101.226.62.82', 1, 'Unknow browser', 'Unknown', '', 'IANA', '', '', '/wechat/weixin.php'),
(1406063433, '61.129.184.61', 2, 'Safari 534.30', 'Linux', 'zh-CN, en-US', '', '', '', '/index.php'),
(1406063434, '61.129.184.61', 3, 'Safari 534.30', 'Linux', 'zh-CN, en-US', '', '', '', '/mobile/index.php'),
(1406063434, '101.226.62.82', 1, 'Unknow browser', 'Unknown', '', 'IANA', '', '', '/wechat/weixin.php'),
(1406066360, '101.226.62.86', 1, 'Unknow browser', 'Unknown', '', 'IANA', '', '', '/wechat/weixin.php'),
(1406066367, '101.226.62.83', 1, 'Unknow browser', 'Unknown', '', 'IANA', '', '', '/wechat/weixin.php'),
(1406066375, '101.226.62.83', 1, 'Unknow browser', 'Unknown', '', 'IANA', '', '', '/wechat/weixin.php'),
(1406066379, '101.226.62.83', 1, 'Unknow browser', 'Unknown', '', 'IANA', '', '', '/wechat/weixin.php'),
(1406066384, '101.226.62.83', 1, 'Unknow browser', 'Unknown', '', 'IANA', '', '', '/wechat/weixin.php'),
(1406066387, '121.31.250.126', 2, 'Safari 534.30', 'Linux', 'zh-CN, en-US', '', '', '', '/mobile/user.php'),
(1406066753, '121.196.43.130', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/mobile/certi.php'),
(1406066775, '61.129.184.61', 45, 'Safari 537.36', 'Windows XP', 'zh-CN,zh', '', 'http://q.yunmoban.cn', '/mobile/miq/index.php?act=top', '/mobile/index.php'),
(1406066791, '61.129.184.61', 2, 'Safari 537.36', 'Linux', 'zh-CN', '', '', '', '/index.php'),
(1406066791, '61.129.184.61', 2, 'Safari 537.36', 'Linux', 'zh-CN', '', '', '', '/mobile/index.php'),
(1406067182, '61.129.184.61', 46, 'Safari 537.36', 'Windows XP', 'zh-CN,zh', '', 'http://q.yunmoban.cn', '/miq/index.php?act=top', '/index.php'),
(1406067193, '117.78.13.110', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/group_buy.php'),
(1406067218, '101.226.66.172', 1, 'Unknow browser', 'Unknown', 'zh-cn, zh', 'IANA', 'http://www.sogou.com', '/', '/flow.php'),
(1406067223, '101.226.33.201', 1, 'Unknow browser', 'Unknown', 'zh-cn, zh', 'IANA', 'http://www.sogou.com', '/', '/goods.php'),
(1406067336, '171.105.73.233', 1, 'Safari 537.1', 'Windows NT', 'zh-CN,zh', 'RIPE', '', '', '/index.php'),
(1406067782, '61.129.184.61', 47, 'Safari 537.36', 'Windows XP', 'zh-CN,zh', '', 'http://q.yunmoban.cn', '/mobile/miq/index.php?act=top', '/mobile/index.php'),
(1406069801, '175.49.222.162', 1, 'Safari 537.1', 'Windows XP', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/mobile/index.php'),
(1406069814, '119.147.3.188', 1, 'Internet Explorer 9.0', 'Windows NT', 'zh-cn', 'APNIC', '', '', '/mobile/index.php'),
(1406069909, '111.10.252.122', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/mobile/index.php'),
(1406070031, '61.129.184.61', 48, 'Safari 537.36', 'Windows XP', 'zh-CN,zh', '', '', '', '/mobile/index.php'),
(1406070587, '111.10.252.122', 1, 'Safari 537.36', 'Linux', 'zh-CN,zh', 'IANA', '', '', '/index.php'),
(1406070587, '111.10.252.122', 2, 'Safari 537.36', 'Linux', 'zh-CN,zh', 'IANA', '', '', '/mobile/index.php'),
(1406070851, '101.226.62.82', 1, 'Unknow browser', 'Unknown', '', 'IANA', '', '', '/wechat/weixin.php'),
(1406070873, '101.226.62.83', 1, 'Unknow browser', 'Unknown', '', 'IANA', '', '', '/wechat/weixin.php'),
(1406070881, '101.226.62.82', 1, 'Unknow browser', 'Unknown', '', 'IANA', '', '', '/wechat/weixin.php'),
(1406070893, '101.226.62.82', 1, 'Unknow browser', 'Unknown', '', 'IANA', '', '', '/wechat/weixin.php'),
(1406070904, '101.226.62.82', 1, 'Unknow browser', 'Unknown', '', 'IANA', '', '', '/wechat/weixin.php'),
(1406070905, '113.73.217.98', 1, 'Unknow browser', 'Unknown', 'zh-cn', 'IANA', '', '', '/index.php'),
(1406070905, '113.73.217.98', 2, 'Unknow browser', 'Unknown', 'zh-cn', 'IANA', '', '', '/mobile/index.php'),
(1406071327, '116.54.37.108', 1, 'Safari 537.31', 'Windows XP', 'zh-CN,zh', '', 'http://www.yunmoban.cn', '/goods-130.html', '/index.php'),
(1406074756, '180.153.183.160', 1, 'Internet Explorer 9.0', 'Windows NT', 'zh-CN', '[δ֪IP0801]', 'http://q.yunmoban.cn', '/', '/index.php'),
(1406074927, '101.226.62.83', 1, 'Unknow browser', 'Unknown', '', 'IANA', '', '', '/wechat/weixin.php'),
(1406074941, '117.9.48.98', 1, 'Unknow browser', 'Unknown', 'zh-cn', '', '', '', '/index.php'),
(1406074941, '117.9.48.98', 2, 'Unknow browser', 'Unknown', 'zh-cn', '', '', '', '/mobile/index.php'),
(1406074965, '183.60.70.30', 1, 'Unknow browser', 'Unknown', 'zh-cn, zh', '[δ֪IP0801]', '', '', '/mobile/cat_all.php'),
(1406077367, '61.129.184.61', 49, 'Safari 537.36', 'Windows XP', 'zh-CN,zh', '', 'http://q.yunmoban.cn', '/mobile/user.php', '/mobile/user.php'),
(1406077372, '61.129.184.61', 50, 'Safari 537.36', 'Windows XP', 'zh-CN,zh', '', '', '', '/index.php'),
(1406077376, '61.129.184.61', 51, 'Safari 537.36', 'Windows XP', 'zh-CN,zh', '', 'http://q.yunmoban.cn', '/', '/mobile/index.php'),
(1406077381, '61.129.184.61', 52, 'Safari 537.36', 'Windows XP', 'zh-CN,zh', '', 'http://q.yunmoban.cn', '/', '/goods.php'),
(1406077386, '117.78.13.110', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/goods.php'),
(1406077758, '10.162.53.49', 3, 'Unknow browser', 'Unknown', 'zh-cn', 'LAN', '', '', '/index.php'),
(1406077759, '10.162.53.49', 4, 'Unknow browser', 'Unknown', 'zh-cn', 'LAN', '', '', '/mobile/index.php'),
(1406078001, '101.226.89.119', 1, 'Unknow browser', 'Unknown', 'zh-cn, zh', 'IANA', 'http://www.sogou.com', '/', '/goods.php'),
(1406078834, '61.129.184.61', 53, 'Safari 537.36', 'Windows XP', 'zh-CN,zh', '', 'http://q.yunmoban.cn', '/flow.php?step=login', '/mobile/index.php'),
(1406078836, '61.129.184.61', 54, 'Safari 537.36', 'Windows XP', 'zh-CN,zh', '', 'http://q.yunmoban.cn', '/flow.php?step=login', '/user.php'),
(1406079473, '101.226.65.106', 1, 'Unknow browser', 'Unknown', 'zh-cn, zh', 'IANA', 'http://www.sogou.com', '/', '/goods.php'),
(1406079501, '180.153.206.13', 1, 'Unknow browser', 'Unknown', 'zh-cn, zh', '[δ֪IP0801]', 'http://www.sogou.com', '/', '/category.php'),
(1406080660, '171.105.73.233', 3, 'Safari 534.30', 'Linux', 'zh-CN, en-US', 'RIPE', '', '', '/mobile/goods.php'),
(1406081085, '61.129.184.61', 55, 'Safari 537.36', 'Windows XP', 'zh-CN,zh', '', 'http://q.yunmoban.cn', '/index.php', '/index.php'),
(1406087936, '101.226.62.82', 1, 'Unknow browser', 'Unknown', '', 'IANA', '', '', '/wechat/weixin.php'),
(1406087940, '101.91.250.180', 1, 'Safari 534.30', 'Linux', 'zh-CN, en-US', 'IANA', '', '', '/mobile/user.php'),
(1406090282, '113.138.208.94', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', 'http://www.yunmoban.cn', '/goods-130.html', '/index.php'),
(1406092733, '101.226.62.83', 1, 'Unknow browser', 'Unknown', '', 'IANA', '', '', '/wechat/weixin.php'),
(1406092746, '222.142.54.18', 1, 'Safari 534.30', 'Linux', 'zh-CN, en-US', '', '', '', '/mobile/user.php'),
(1406092794, '222.142.54.18', 2, 'Safari 534.30', 'Linux', 'zh-CN, en-US', '', 'http://q.yunmoban.cn', '/mobile/user.php?act=logout', '/mobile/index.php'),
(1406092795, '113.105.95.122', 1, 'Unknow browser', 'Unknown', 'zh-cn, zh', 'IANA', '', '', '/mobile/index.php'),
(1406092810, '101.226.62.83', 1, 'Unknow browser', 'Unknown', '', 'IANA', '', '', '/wechat/weixin.php'),
(1406092812, '101.226.62.85', 1, 'Unknow browser', 'Unknown', '', 'IANA', '', '', '/wechat/weixin.php'),
(1406092824, '101.226.62.86', 1, 'Unknow browser', 'Unknown', '', 'IANA', '', '', '/wechat/weixin.php'),
(1406092837, '101.226.62.83', 1, 'Unknow browser', 'Unknown', '', 'IANA', '', '', '/wechat/weixin.php'),
(1406094048, '101.226.62.82', 1, 'Unknow browser', 'Unknown', '', 'IANA', '', '', '/wechat/weixin.php'),
(1406094285, '101.226.62.83', 1, 'Unknow browser', 'Unknown', '', 'IANA', '', '', '/wechat/weixin.php'),
(1406094293, '101.226.62.83', 1, 'Unknow browser', 'Unknown', '', 'IANA', '', '', '/wechat/weixin.php'),
(1406096202, '101.226.62.83', 1, 'Unknow browser', 'Unknown', '', 'IANA', '', '', '/wechat/weixin.php'),
(1406096208, '101.226.62.83', 1, 'Unknow browser', 'Unknown', '', 'IANA', '', '', '/wechat/weixin.php'),
(1406096219, '101.226.62.83', 1, 'Unknow browser', 'Unknown', '', 'IANA', '', '', '/wechat/weixin.php'),
(1406096223, '101.226.62.83', 1, 'Unknow browser', 'Unknown', '', 'IANA', '', '', '/wechat/weixin.php'),
(1406096227, '101.226.62.83', 1, 'Unknow browser', 'Unknown', '', 'IANA', '', '', '/wechat/weixin.php'),
(1406096231, '222.142.54.18', 3, 'Safari 534.30', 'Linux', 'zh-CN, en-US', '', '', '', '/mobile/goods.php'),
(1406096262, '222.142.54.18', 4, 'Safari 534.30', 'Linux', 'zh-CN, en-US', '', 'http://q.yunmoban.cn', '/mobile/user.php', '/mobile/index.php'),
(1406096274, '101.226.62.83', 1, 'Unknow browser', 'Unknown', '', 'IANA', '', '', '/wechat/weixin.php'),
(1406096299, '101.226.62.83', 1, 'Unknow browser', 'Unknown', '', 'IANA', '', '', '/wechat/weixin.php'),
(1406096299, '222.142.54.18', 5, 'Safari 534.30', 'Linux', 'zh-CN, en-US', '', '', '', '/index.php'),
(1406096299, '222.142.54.18', 6, 'Safari 534.30', 'Linux', 'zh-CN, en-US', '', '', '', '/mobile/index.php'),
(1406096313, '101.226.62.82', 1, 'Unknow browser', 'Unknown', '', 'IANA', '', '', '/wechat/weixin.php'),
(1406096319, '101.226.62.83', 1, 'Unknow browser', 'Unknown', '', 'IANA', '', '', '/wechat/weixin.php'),
(1406096325, '101.226.62.83', 1, 'Unknow browser', 'Unknown', '', 'IANA', '', '', '/wechat/weixin.php'),
(1406096409, '101.226.62.86', 1, 'Unknow browser', 'Unknown', '', 'IANA', '', '', '/wechat/weixin.php'),
(1406096443, '101.226.62.82', 1, 'Unknow browser', 'Unknown', '', 'IANA', '', '', '/wechat/weixin.php'),
(1406098522, '218.9.52.86', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '', 'http://www.yunmoban.cn', '/goods-130.html', '/index.php'),
(1406101120, '183.156.3.207', 1, 'Unknow browser', 'Windows NT', 'zh-CN', '[δ֪IP0801]', '', '', '/mobile/index.php'),
(1406101134, '180.153.205.254', 1, 'Unknow browser', 'Unknown', 'zh-cn, zh', '[δ֪IP0801]', '', '', '/mobile/exchange.php'),
(1406101356, '180.153.163.191', 1, 'Unknow browser', 'Unknown', 'zh-cn, zh', '[δ֪IP0801]', '', '', '/mobile/goods.php'),
(1406101404, '101.226.62.82', 1, 'Unknow browser', 'Unknown', '', 'IANA', '', '', '/wechat/weixin.php'),
(1406101416, '101.226.62.82', 1, 'Unknow browser', 'Unknown', '', 'IANA', '', '', '/wechat/weixin.php'),
(1406101419, '183.156.3.207', 1, 'Safari 534.30', 'Linux', 'zh-CN, en-US', '[δ֪IP0801]', '', '', '/mobile/user.php'),
(1406101503, '183.60.15.20', 1, 'Internet Explorer 9.0', 'Windows NT', 'zh-cn', '[δ֪IP0801]', '', '', '/mobile/exchange.php'),
(1406101561, '183.156.3.207', 2, 'Safari 534.30', 'Linux', 'zh-CN, en-US', '[δ֪IP0801]', 'http://q.yunmoban.cn', '/mobile/index.php', '/index.php'),
(1406101561, '183.156.3.207', 3, 'Safari 534.30', 'Linux', 'zh-CN, en-US', '[δ֪IP0801]', 'http://q.yunmoban.cn', '/mobile/index.php', '/mobile/index.php'),
(1406101989, '183.156.3.207', 4, 'Safari 534.30', 'Linux', 'zh-CN, en-US', '[δ֪IP0801]', 'http://q.yunmoban.cn', '/mobile/user.php?act=logout', '/mobile/index.php'),
(1406102200, '14.17.18.147', 1, 'Unknow browser', 'Unknown', 'zh-cn, zh', '', '', '', '/mobile/user.php'),
(1406102640, '183.156.3.207', 2, 'Unknow browser', 'Windows NT', 'zh-CN', '[δ֪IP0801]', 'http://q.yunmoban.cn', '/mobile/exchange.php', '/index.php'),
(1406102640, '101.226.89.115', 1, 'Unknow browser', 'Unknown', 'zh-cn, zh', 'IANA', '', '', '/index.php'),
(1406102650, '183.156.3.207', 3, 'Unknow browser', 'Windows NT', 'zh-CN', '[δ֪IP0801]', 'http://q.yunmoban.cn', '/mobile/exchange.php', '/mobile/index.php'),
(1406102663, '101.226.33.225', 1, 'Unknow browser', 'Unknown', 'zh-cn, zh', 'IANA', '', '', '/mobile/user.php'),
(1406102746, '180.153.161.217', 1, 'Unknow browser', 'Unknown', 'zh-cn, zh', '[δ֪IP0801]', '', '', '/mobile/user.php'),
(1406102775, '163.177.69.37', 1, 'Unknow browser', 'Unknown', 'zh-cn, zh', '', '', '', '/mobile/user.php'),
(1406103193, '183.60.70.29', 1, 'Unknow browser', 'Unknown', 'zh-cn, zh', '[δ֪IP0801]', '', '', '/mobile/user.php'),
(1406103269, '14.17.18.147', 1, 'Unknow browser', 'Unknown', 'zh-cn, zh', '', '', '', '/mobile/user.php'),
(1406103353, '101.226.62.82', 1, 'Unknow browser', 'Unknown', '', 'IANA', '', '', '/wechat/weixin.php'),
(1406103364, '101.226.62.84', 1, 'Unknow browser', 'Unknown', '', 'IANA', '', '', '/wechat/weixin.php'),
(1406103524, '113.244.99.242', 1, 'Safari 537.1', 'Windows XP', 'zh-CN,zh', 'IANA', '', '', '/mobile/index.php'),
(1406103529, '113.244.99.242', 2, 'Safari 537.1', 'Windows XP', 'zh-CN,zh', 'IANA', '', '', '/index.php'),
(1406103951, '183.156.3.207', 4, 'Unknow browser', 'Windows NT', 'zh-CN', '[δ֪IP0801]', '', '', '/index.php'),
(1406104199, '112.64.235.91', 1, 'Unknow browser', 'Unknown', 'zh-cn, zh', 'IANA', '', '', '/user.php'),
(1406104204, '101.226.51.229', 1, 'Unknow browser', 'Unknown', 'zh-cn, zh', 'IANA', '', '', '/user.php'),
(1406104265, '101.226.51.229', 1, 'Unknow browser', 'Unknown', 'zh-cn, zh', 'IANA', '', '', '/index.php'),
(1406104359, '112.64.235.91', 1, 'Unknow browser', 'Unknown', 'zh-cn, zh', 'IANA', '', '', '/index.php'),
(1406104543, '171.221.26.62', 1, 'FireFox 30.0', 'Windows NT', 'zh-cn,zh', 'ARIN', '', '', '/mobile/index.php'),
(1406104917, '183.156.3.207', 5, 'Unknow browser', 'Windows NT', 'zh-CN', '[δ֪IP0801]', '', '', '/mobile/index.php'),
(1406105005, '101.226.51.230', 1, 'Unknow browser', 'Unknown', 'zh-cn, zh', 'IANA', '', '', '/mobile/category.php'),
(1406105011, '101.226.66.193', 1, 'Unknow browser', 'Unknown', 'zh-cn, zh', 'IANA', '', '', '/mobile/flow.php'),
(1406105403, '119.147.146.194', 1, 'Internet Explorer 6.0', 'Windows XP', 'zh-CN,zh', 'APNIC', '', '', '/index.php'),
(1406105889, '101.226.62.82', 1, 'Unknow browser', 'Unknown', '', 'IANA', '', '', '/wechat/weixin.php'),
(1406105938, '180.153.163.207', 1, 'Unknow browser', 'Unknown', 'zh-cn, zh', '[δ֪IP0801]', '', '', '/mobile/search.php'),
(1406107042, '101.226.62.83', 1, 'Unknow browser', 'Unknown', '', 'IANA', '', '', '/wechat/weixin.php'),
(1406107052, '101.226.62.83', 1, 'Unknow browser', 'Unknown', '', 'IANA', '', '', '/wechat/weixin.php'),
(1406107068, '101.226.62.83', 1, 'Unknow browser', 'Unknown', '', 'IANA', '', '', '/wechat/weixin.php'),
(1406107075, '116.252.165.50', 1, 'Safari 537.36', 'Linux', 'zh-CN,en-US', '', '', '', '/index.php'),
(1406107075, '116.252.165.50', 2, 'Safari 537.36', 'Linux', 'zh-CN,en-US', '', '', '', '/mobile/index.php'),
(1406107076, '101.226.62.83', 1, 'Unknow browser', 'Unknown', '', 'IANA', '', '', '/wechat/weixin.php'),
(1406107286, '101.226.62.83', 1, 'Unknow browser', 'Unknown', '', 'IANA', '', '', '/wechat/weixin.php'),
(1406107324, '183.29.185.40', 1, 'Safari 534.30', 'Linux', 'zh-CN, en-US', '[δ֪IP0801]', '', '', '/mobile/user.php'),
(1406107373, '101.226.62.83', 1, 'Unknow browser', 'Unknown', '', 'IANA', '', '', '/wechat/weixin.php'),
(1406107386, '163.177.69.38', 1, 'Unknow browser', 'Unknown', 'zh-cn, zh', '', '', '', '/mobile/user.php'),
(1406107435, '101.226.62.83', 1, 'Unknow browser', 'Unknown', '', 'IANA', '', '', '/wechat/weixin.php'),
(1406107436, '183.29.185.40', 2, 'Safari 534.30', 'Linux', 'zh-CN, en-US', '[δ֪IP0801]', '', '', '/index.php'),
(1406107436, '183.29.185.40', 3, 'Safari 534.30', 'Linux', 'zh-CN, en-US', '[δ֪IP0801]', '', '', '/mobile/index.php'),
(1406107492, '183.29.185.40', 4, 'Safari 534.30', 'Linux', 'zh-CN, en-US', '[δ֪IP0801]', 'http://q.yunmoban.cn', '/mobile/', '/index.php'),
(1406107492, '183.29.185.40', 5, 'Safari 534.30', 'Linux', 'zh-CN, en-US', '[δ֪IP0801]', 'http://q.yunmoban.cn', '/mobile/', '/mobile/index.php'),
(1406107493, '183.29.185.40', 6, 'Safari 534.30', 'Linux', 'zh-CN, en-US', '[δ֪IP0801]', 'http://q.yunmoban.cn', '/mobile/', '/index.php'),
(1406107493, '183.29.185.40', 7, 'Safari 534.30', 'Linux', 'zh-CN, en-US', '[δ֪IP0801]', 'http://q.yunmoban.cn', '/mobile/', '/mobile/index.php'),
(1406107509, '183.29.185.40', 8, 'Safari 534.30', 'Linux', 'zh-CN, en-US', '[δ֪IP0801]', '', '', '/index.php'),
(1406107509, '183.29.185.40', 9, 'Safari 534.30', 'Linux', 'zh-CN, en-US', '[δ֪IP0801]', '', '', '/mobile/index.php'),
(1406107533, '101.226.62.83', 1, 'Unknow browser', 'Unknown', '', 'IANA', '', '', '/wechat/weixin.php'),
(1406107534, '183.29.185.40', 10, 'Safari 534.30', 'Linux', 'zh-CN, en-US', '[δ֪IP0801]', '', '', '/index.php'),
(1406107534, '183.29.185.40', 11, 'Safari 534.30', 'Linux', 'zh-CN, en-US', '[δ֪IP0801]', '', '', '/mobile/index.php'),
(1406107811, '14.17.34.191', 1, 'Unknow browser', 'Unknown', 'zh-cn, zh', '', '', '', '/mobile/exchange.php'),
(1406108108, '101.226.62.86', 1, 'Unknow browser', 'Unknown', '', 'IANA', '', '', '/wechat/weixin.php'),
(1406108115, '101.226.62.83', 1, 'Unknow browser', 'Unknown', '', 'IANA', '', '', '/wechat/weixin.php'),
(1406108140, '101.226.62.83', 1, 'Unknow browser', 'Unknown', '', 'IANA', '', '', '/wechat/weixin.php'),
(1406108140, '183.29.185.40', 12, 'Safari 534.30', 'Linux', 'zh-CN, en-US', '[δ֪IP0801]', '', '', '/index.php'),
(1406108140, '183.29.185.40', 13, 'Safari 534.30', 'Linux', 'zh-CN, en-US', '[δ֪IP0801]', '', '', '/mobile/index.php'),
(1406109142, '101.226.62.83', 1, 'Unknow browser', 'Unknown', '', 'IANA', '', '', '/wechat/weixin.php'),
(1406109367, '101.226.62.83', 1, 'Unknow browser', 'Unknown', '', 'IANA', '', '', '/wechat/weixin.php'),
(1406109381, '183.60.35.80', 1, 'Unknow browser', 'Unknown', 'zh-cn, zh', '[δ֪IP0801]', '', '', '/mobile/user.php'),
(1406109460, '14.17.18.147', 1, 'Unknow browser', 'Unknown', 'zh-cn, zh', '', '', '', '/mobile/flow.php'),
(1406109463, '183.60.70.29', 1, 'Unknow browser', 'Unknown', 'zh-cn, zh', '[δ֪IP0801]', '', '', '/mobile/flow.php'),
(1406109577, '183.60.70.30', 1, 'Unknow browser', 'Unknown', 'zh-cn, zh', '[δ֪IP0801]', '', '', '/mobile/flow.php'),
(1406109727, '180.153.181.179', 1, 'Internet Explorer 9.0', 'Windows NT', 'zh-CN', '[δ֪IP0801]', 'http://q.yunmoban.cn', '/flow.php?step=login', '/flow.php'),
(1406109789, '101.226.62.83', 1, 'Unknow browser', 'Unknown', '', 'IANA', '', '', '/wechat/weixin.php'),
(1406110115, '183.29.185.40', 1, 'Safari 537.1', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/index.php'),
(1406110239, '220.181.132.219', 1, 'Internet Explorer 8.0', 'Windows NT', '', '', 'http://q.yunmoban.cn', '/', '/index.php'),
(1406110258, '101.199.108.51', 1, 'Safari 536.11', '', 'en-us,en', 'IANA', '', '', '/index.php'),
(1406110516, '101.226.62.83', 1, 'Unknow browser', 'Unknown', '', 'IANA', '', '', '/wechat/weixin.php'),
(1406110531, '101.226.62.83', 1, 'Unknow browser', 'Unknown', '', 'IANA', '', '', '/wechat/weixin.php'),
(1406110533, '101.226.62.83', 1, 'Unknow browser', 'Unknown', '', 'IANA', '', '', '/wechat/weixin.php'),
(1406110535, '183.29.185.40', 14, 'Safari 534.30', 'Linux', 'zh-CN, en-US', '[δ֪IP0801]', '', '', '/index.php'),
(1406110535, '183.29.185.40', 15, 'Safari 534.30', 'Linux', 'zh-CN, en-US', '[δ֪IP0801]', '', '', '/mobile/index.php'),
(1406110547, '183.29.185.40', 1, 'Safari 534.30;', 'Linux', 'zh-CN, en-US', '[δ֪IP0801]', '', '', '/mobile/index.php'),
(1406110559, '183.29.185.40', 1, 'Safari 534.30;', 'Linux', 'zh-CN, en-US', '[δ֪IP0801]', '', '', '/mobile/index.php'),
(1406110601, '183.29.185.40', 16, 'Safari 534.30', 'Linux', 'zh-CN, en-US', '[δ֪IP0801]', '', '', '/index.php'),
(1406110601, '183.29.185.40', 17, 'Safari 534.30', 'Linux', 'zh-CN, en-US', '[δ֪IP0801]', '', '', '/mobile/index.php'),
(1406110628, '101.226.62.82', 1, 'Unknow browser', 'Unknown', '', 'IANA', '', '', '/wechat/weixin.php'),
(1406110628, '183.29.185.40', 18, 'Safari 534.30', 'Linux', 'zh-CN, en-US', '[δ֪IP0801]', '', '', '/index.php'),
(1406110628, '183.29.185.40', 19, 'Safari 534.30', 'Linux', 'zh-CN, en-US', '[δ֪IP0801]', '', '', '/mobile/index.php'),
(1406110901, '183.29.185.40', 20, 'Safari 534.30', 'Linux', 'zh-CN, en-US', '[δ֪IP0801]', '', '', '/index.php'),
(1406110902, '183.29.185.40', 21, 'Safari 534.30', 'Linux', 'zh-CN, en-US', '[δ֪IP0801]', '', '', '/mobile/index.php'),
(1406114223, '183.29.185.40', 2, 'Safari 537.1', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/mobile/index.php'),
(1406114273, '184.105.206.94', 1, 'Safari 537.36', 'Windows NT', 'en-US,*', '[δ֪IP0801]', '', '', '/mobile/index.php'),
(1406114275, '183.29.185.40', 22, 'Safari 534.30', 'Linux', 'zh-CN, en-US', '[δ֪IP0801]', '', '', '/mobile/index.php'),
(1406114325, '184.105.206.93', 1, 'Safari 537.36', 'Windows NT', 'en-US,*', '[δ֪IP0801]', '', '', '/mobile/cat_all.php'),
(1406114333, '163.177.69.38', 1, 'Unknow browser', 'Unknown', 'zh-cn, zh', '', '', '', '/mobile/group_buy.php'),
(1406114333, '111.161.49.236', 1, 'Safari 537.36', 'Windows NT', 'en,*', 'IANA', '', '', '/mobile/group_buy.php'),
(1406114345, '119.188.16.39', 1, 'Internet Explorer 9.0', 'Windows NT', 'en,*', 'APNIC', '', '', '/mobile/ectouch.php'),
(1406114386, '118.186.217.118', 1, 'Unknow browser', 'Unknown', '', 'APNIC', '', '', '/mobile/index.php'),
(1406114399, '118.186.217.118', 1, 'Unknow browser', 'Unknown', '', 'APNIC', '', '', '/mobile/index.php'),
(1406114724, '220.181.132.219', 1, 'Internet Explorer 8.0', 'Windows NT', '', '', 'http://q.yunmoban.cn', '/', '/group_buy.php'),
(1406114898, '101.199.112.54', 1, 'Safari 536.11', '', 'en-us,en', 'IANA', '', '', '/group_buy.php'),
(1406114997, '220.181.132.197', 1, 'Safari 536.11', '', 'en-us,en', '', '', '', '/group_buy.php'),
(1406115068, '101.199.112.51', 1, 'Safari 536.11', '', 'en-us,en', 'IANA', '', '', '/group_buy.php'),
(1406115139, '101.199.108.55', 1, 'Safari 536.11', '', 'en-us,en', 'IANA', '', '', '/group_buy.php'),
(1406115277, '101.199.112.51', 1, 'Safari 536.11', '', 'en-us,en', 'IANA', '', '', '/group_buy.php'),
(1406115327, '220.181.132.193', 1, 'Safari 536.11', '', 'en-us,en', '', '', '', '/group_buy.php'),
(1406115449, '101.226.62.83', 1, 'Unknow browser', 'Unknown', '', 'IANA', '', '', '/wechat/weixin.php'),
(1406115451, '183.29.185.40', 23, 'Safari 534.30', 'Linux', 'zh-CN, en-US', '[δ֪IP0801]', '', '', '/index.php'),
(1406115451, '183.29.185.40', 24, 'Safari 534.30', 'Linux', 'zh-CN, en-US', '[δ֪IP0801]', '', '', '/mobile/index.php'),
(1406115484, '101.199.112.55', 1, 'Safari 536.11', '', 'en-us,en', 'IANA', '', '', '/group_buy.php'),
(1406115602, '101.199.112.49', 1, 'Safari 536.11', '', 'en-us,en', 'IANA', '', '', '/group_buy.php'),
(1406115609, '101.199.108.56', 1, 'Safari 536.11', '', 'en-us,en', 'IANA', '', '', '/group_buy.php'),
(1406115965, '101.226.62.83', 1, 'Unknow browser', 'Unknown', '', 'IANA', '', '', '/wechat/weixin.php'),
(1406115966, '183.29.185.40', 25, 'Safari 534.30', 'Linux', 'zh-CN, en-US', '[δ֪IP0801]', '', '', '/index.php'),
(1406115966, '183.29.185.40', 26, 'Safari 534.30', 'Linux', 'zh-CN, en-US', '[δ֪IP0801]', '', '', '/mobile/index.php'),
(1406116041, '183.29.185.40', 27, 'Safari 534.30', 'Linux', 'zh-CN, en-US', '[δ֪IP0801]', 'http://q.yunmoban.cn', '/mobile/', '/index.php'),
(1406116041, '183.29.185.40', 28, 'Safari 534.30', 'Linux', 'zh-CN, en-US', '[δ֪IP0801]', 'http://q.yunmoban.cn', '/mobile/', '/mobile/index.php'),
(1406116085, '163.177.69.38', 1, 'Unknow browser', 'Unknown', 'zh-cn, zh', '', '', '', '/mobile/exchange.php'),
(1406116238, '101.226.62.83', 1, 'Unknow browser', 'Unknown', '', 'IANA', '', '', '/wechat/weixin.php'),
(1406116238, '123.13.39.155', 1, 'Unknow browser', 'Unknown', 'zh-cn', '', '', '', '/index.php'),
(1406116238, '123.13.39.155', 2, 'Unknow browser', 'Unknown', 'zh-cn', '', '', '', '/mobile/index.php'),
(1406116313, '101.226.62.83', 1, 'Unknow browser', 'Unknown', '', 'IANA', '', '', '/wechat/weixin.php'),
(1406116313, '123.13.39.155', 3, 'Unknow browser', 'Unknown', 'zh-cn', '', '', '', '/index.php'),
(1406116313, '123.13.39.155', 4, 'Unknow browser', 'Unknown', 'zh-cn', '', '', '', '/mobile/index.php'),
(1406116391, '101.226.62.83', 1, 'Unknow browser', 'Unknown', '', 'IANA', '', '', '/wechat/weixin.php'),
(1406117578, '101.226.62.82', 1, 'Unknow browser', 'Unknown', '', 'IANA', '', '', '/wechat/weixin.php'),
(1406117579, '116.224.137.131', 1, 'Safari 534.30', 'Linux', 'zh-CN, en-US', '', '', '', '/index.php'),
(1406117579, '116.224.137.131', 2, 'Safari 534.30', 'Linux', 'zh-CN, en-US', '', '', '', '/mobile/index.php'),
(1406119440, '101.226.62.82', 1, 'Unknow browser', 'Unknown', '', 'IANA', '', '', '/wechat/weixin.php'),
(1406119446, '101.226.62.82', 1, 'Unknow browser', 'Unknown', '', 'IANA', '', '', '/wechat/weixin.php'),
(1406119466, '116.224.137.131', 3, 'Safari 534.30', 'Linux', 'zh-CN, en-US', '', '', '', '/mobile/user.php'),
(1406131544, '116.6.86.59', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '', '', '', '/index.php'),
(1406131577, '116.6.86.59', 2, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '', '', '', '/mobile/index.php'),
(1406132778, '101.226.62.81', 1, 'Unknow browser', 'Unknown', '', 'IANA', '', '', '/wechat/weixin.php'),
(1406132785, '117.158.28.6', 1, 'Safari 534.30', 'Linux', 'zh-CN, en-US', '', '', '', '/index.php'),
(1406132785, '117.158.28.6', 2, 'Safari 534.30', 'Linux', 'zh-CN, en-US', '', '', '', '/mobile/index.php'),
(1406132821, '113.108.70.13', 1, 'Unknow browser', 'Unknown', 'zh-cn, zh', 'IANA', '', '', '/mobile/flow.php'),
(1406132986, '101.226.62.81', 1, 'Unknow browser', 'Unknown', '', 'IANA', '', '', '/wechat/weixin.php');
INSERT INTO `ecs_stats` (`access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url`) VALUES
(1406133072, '10.46.153.80', 3, 'Safari 534.30', 'Linux', 'zh-CN, en-US', 'LAN', '', '', '/index.php'),
(1406133080, '14.17.29.85', 1, 'Unknow browser', 'Unknown', 'zh-cn, zh', '', '', '', '/mobile/goods.php'),
(1406133105, '117.158.28.6', 4, 'Safari 534.30', 'Linux', 'zh-CN, en-US', '', '', '', '/index.php'),
(1406133106, '117.158.28.6', 5, 'Safari 534.30', 'Linux', 'zh-CN, en-US', '', '', '', '/mobile/index.php'),
(1406133110, '117.158.28.6', 6, 'Safari 534.30', 'Linux', 'zh-CN, en-US', '', 'http://q.yunmoban.cn', '/mobile/', '/mobile/goods.php'),
(1406133110, '117.158.28.6', 7, 'Safari 534.30', 'Linux', 'zh-CN, en-US', '', 'http://q.yunmoban.cn', '/mobile/goods-114.html', '/mobile/captcha.php'),
(1406133110, '117.158.28.6', 8, 'Safari 534.30', 'Linux', 'zh-CN, en-US', '', 'http://q.yunmoban.cn', '/mobile/goods-114.html', '/mobile/goods.php'),
(1406133113, '117.158.28.6', 9, 'Safari 534.30', 'Linux', 'zh-CN, en-US', '', 'http://q.yunmoban.cn', '/mobile/goods-114.html', '/mobile/flow.php'),
(1406133113, '117.158.28.6', 10, 'Safari 534.30', 'Linux', 'zh-CN, en-US', '', 'http://q.yunmoban.cn', '/mobile/goods-114.html', '/mobile/flow.php'),
(1406133118, '117.158.28.6', 11, 'Safari 534.30', 'Linux', 'zh-CN, en-US', '', 'http://q.yunmoban.cn', '/mobile/flow.php?step=cart', '/mobile/index.php'),
(1406133121, '117.158.28.6', 12, 'Safari 534.30', 'Linux', 'zh-CN, en-US', '', 'http://q.yunmoban.cn', '/mobile/index.php', '/mobile/goods.php'),
(1406133121, '117.158.28.6', 13, 'Safari 534.30', 'Linux', 'zh-CN, en-US', '', 'http://q.yunmoban.cn', '/mobile/goods-114.html', '/mobile/captcha.php'),
(1406133121, '117.158.28.6', 14, 'Safari 534.30', 'Linux', 'zh-CN, en-US', '', 'http://q.yunmoban.cn', '/mobile/goods-114.html', '/mobile/goods.php'),
(1406133124, '117.158.28.6', 15, 'Safari 534.30', 'Linux', 'zh-CN, en-US', '', 'http://q.yunmoban.cn', '/mobile/goods-114.html', '/mobile/flow.php'),
(1406133124, '117.158.28.6', 16, 'Safari 534.30', 'Linux', 'zh-CN, en-US', '', 'http://q.yunmoban.cn', '/mobile/goods-114.html', '/mobile/flow.php'),
(1406133127, '117.158.28.6', 17, 'Safari 534.30', 'Linux', 'zh-CN, en-US', '', 'http://q.yunmoban.cn', '/mobile/goods-114.html', '/mobile/captcha.php'),
(1406133763, '101.226.62.81', 1, 'Unknow browser', 'Unknown', '', 'IANA', '', '', '/wechat/weixin.php'),
(1406134452, '118.248.148.157', 1, 'Internet Explorer 7.0', 'Windows NT', 'zh-CN', 'APNIC', 'http://item.taobao.com', '/item.htm?id=39305837789&tracelogww=ltckbburl&qq-pf-to=pcqq.group', '/index.php'),
(1406134621, '58.59.198.233', 1, 'Internet Explorer 8.0', 'Windows NT', 'zh-CN', '', '', '', '/mobile/index.php'),
(1406136240, '183.156.3.207', 5, 'Safari 534.30', 'Linux', 'zh-CN, en-US', '[δ֪IP0801]', '', '', '/mobile/user.php'),
(1406136536, '180.175.179.32', 1, 'Safari 537.77.4', 'Unknown', 'en-us', '[δ֪IP0801]', '', '', '/index.php'),
(1406136556, '180.175.179.32', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/index.php'),
(1406136557, '180.175.179.32', 1, 'Safari 537.1', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/mobile/index.php'),
(1406136580, '180.175.179.32', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/mobile/index.php'),
(1406136581, '180.175.179.32', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/mobile/index.php'),
(1406136582, '180.175.179.32', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/mobile/index.php'),
(1406136586, '180.175.179.32', 1, 'Safari 537.1', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/mobile/index.php'),
(1406136586, '180.175.179.32', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/mobile/index.php'),
(1406136591, '180.175.179.32', 1, 'Safari 537.1', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/mobile/index.php'),
(1406136593, '180.175.179.32', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/mobile/index.php'),
(1406136595, '180.175.179.32', 1, 'FireFox 30.0', 'Windows NT', 'zh-cn,zh', '[δ֪IP0801]', '', '', '/mobile/index.php'),
(1406136597, '180.175.179.32', 1, 'Safari 537.1', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/mobile/index.php'),
(1406136598, '180.175.179.32', 1, 'FireFox 30.0', 'Windows NT', 'zh-cn,zh', '[δ֪IP0801]', '', '', '/mobile/index.php'),
(1406136606, '180.175.179.32', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/mobile/index.php'),
(1406136607, '101.226.33.203', 1, 'Unknow browser', 'Unknown', 'zh-cn, zh', 'IANA', 'http://q.yunmoban.cn', '/mobile/', '/mobile/affiche.php'),
(1406136620, '180.175.179.32', 1, 'Internet Explorer 10.0', 'Windows NT', 'zh-CN', '[δ֪IP0801]', '', '', '/mobile/index.php'),
(1406136626, '180.175.179.32', 2, 'FireFox 30.0', 'Windows NT', 'zh-cn,zh', '[δ֪IP0801]', '', '', '/index.php'),
(1406136642, '180.175.179.32', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/mobile/index.php'),
(1406136648, '180.175.179.32', 1, 'Safari 537.77.4', 'Unknown', 'zh-cn', '[δ֪IP0801]', '', '', '/mobile/index.php'),
(1406136650, '180.175.179.32', 2, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/index.php'),
(1406136660, '180.175.179.32', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/index.php'),
(1406136750, '180.175.179.32', 1, 'Safari 537.74.9', 'Unknown', 'zh-cn', '[δ֪IP0801]', '', '', '/mobile/index.php'),
(1406136762, '180.175.179.32', 2, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/index.php'),
(1406136778, '180.175.179.32', 3, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/mobile/index.php'),
(1406136822, '180.175.179.32', 1, 'Safari 537.1', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/mobile/index.php'),
(1406136851, '180.153.214.181', 1, 'Unknow browser', 'Unknown', 'zh-cn, zh', '[δ֪IP0801]', 'http://q.yunmoban.cn', '/mobile/', '/mobile/article_cat.php'),
(1406136895, '180.175.179.32', 2, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', 'http://www.yunmoban.cn', '/goods-130.html', '/index.php'),
(1406137497, '180.175.179.32', 2, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/mobile/index.php'),
(1406137841, '101.226.62.83', 1, 'Unknow browser', 'Unknown', '', 'IANA', '', '', '/wechat/weixin.php'),
(1406137842, '183.29.190.150', 29, 'Safari 534.30', 'Linux', 'zh-CN, en-US', '[δ֪IP0801]', '', '', '/index.php'),
(1406137842, '183.29.190.150', 30, 'Safari 534.30', 'Linux', 'zh-CN, en-US', '[δ֪IP0801]', '', '', '/mobile/index.php'),
(1406137885, '101.226.62.85', 1, 'Unknow browser', 'Unknown', '', 'IANA', '', '', '/wechat/weixin.php'),
(1406137886, '183.29.190.150', 31, 'Safari 534.30', 'Linux', 'zh-CN, en-US', '[δ֪IP0801]', '', '', '/index.php'),
(1406137886, '183.29.190.150', 32, 'Safari 534.30', 'Linux', 'zh-CN, en-US', '[δ֪IP0801]', '', '', '/mobile/index.php'),
(1406137899, '101.226.62.86', 1, 'Unknow browser', 'Unknown', '', 'IANA', '', '', '/wechat/weixin.php'),
(1406137990, '101.226.62.83', 1, 'Unknow browser', 'Unknown', '', 'IANA', '', '', '/wechat/weixin.php'),
(1406137990, '183.29.190.150', 33, 'Safari 534.30', 'Linux', 'zh-CN, en-US', '[δ֪IP0801]', '', '', '/index.php'),
(1406137991, '183.29.190.150', 34, 'Safari 534.30', 'Linux', 'zh-CN, en-US', '[δ֪IP0801]', '', '', '/mobile/index.php'),
(1406138005, '180.175.179.32', 2, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/index.php'),
(1406138550, '183.29.190.150', 35, 'Safari 534.30', 'Linux', 'zh-CN, en-US', '[δ֪IP0801]', '', '', '/index.php'),
(1406138551, '183.29.190.150', 36, 'Safari 534.30', 'Linux', 'zh-CN, en-US', '[δ֪IP0801]', '', '', '/mobile/index.php'),
(1406138597, '14.17.34.182', 1, 'Unknow browser', 'Unknown', 'zh-cn, zh', '', '', '', '/mobile/article_cat.php'),
(1406138683, '183.29.190.150', 3, 'Safari 537.1', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/index.php'),
(1406138853, '106.39.21.138', 1, 'Safari 537.36', 'Unknown', 'zh-CN,zh', 'IANA', '', '', '/mobile/index.php'),
(1406139855, '101.226.62.78', 1, 'Unknow browser', 'Unknown', '', 'IANA', '', '', '/wechat/weixin.php'),
(1406139861, '120.193.223.139', 1, 'Safari 534.30', 'Linux', 'zh-CN, en-US', 'APNIC', '', '', '/mobile/goods.php'),
(1406139869, '101.226.62.81', 1, 'Unknow browser', 'Unknown', '', 'IANA', '', '', '/wechat/weixin.php'),
(1406139869, '120.193.223.139', 2, 'Safari 534.30', 'Linux', 'zh-CN, en-US', 'APNIC', '', '', '/index.php'),
(1406139869, '120.193.223.139', 3, 'Safari 534.30', 'Linux', 'zh-CN, en-US', 'APNIC', '', '', '/mobile/index.php'),
(1406139902, '101.226.62.78', 1, 'Unknow browser', 'Unknown', '', 'IANA', '', '', '/wechat/weixin.php'),
(1406139903, '120.193.223.139', 4, 'Safari 534.30', 'Linux', 'zh-CN, en-US', 'APNIC', '', '', '/index.php'),
(1406139903, '120.193.223.139', 5, 'Safari 534.30', 'Linux', 'zh-CN, en-US', 'APNIC', '', '', '/mobile/index.php'),
(1406139931, '113.105.95.122', 1, 'Unknow browser', 'Unknown', 'zh-cn, zh', 'IANA', '', '', '/mobile/flow.php'),
(1406140253, '183.29.190.150', 37, 'Safari 534.30', 'Linux', 'zh-CN, en-US', '[δ֪IP0801]', 'http://q.yunmoban.cn', '/mobile/', '/index.php'),
(1406140254, '183.29.190.150', 38, 'Safari 534.30', 'Linux', 'zh-CN, en-US', '[δ֪IP0801]', 'http://q.yunmoban.cn', '/mobile/', '/mobile/index.php'),
(1406141082, '101.226.62.81', 1, 'Unknow browser', 'Unknown', '', 'IANA', '', '', '/wechat/weixin.php'),
(1406141082, '120.193.223.139', 6, 'Safari 534.30', 'Linux', 'zh-CN, en-US', 'APNIC', '', '', '/index.php'),
(1406141083, '120.193.223.139', 7, 'Safari 534.30', 'Linux', 'zh-CN, en-US', 'APNIC', '', '', '/mobile/index.php'),
(1406141198, '101.226.62.81', 1, 'Unknow browser', 'Unknown', '', 'IANA', '', '', '/wechat/weixin.php'),
(1406141198, '120.193.223.139', 8, 'Safari 534.30', 'Linux', 'zh-CN, en-US', 'APNIC', '', '', '/index.php'),
(1406141198, '120.193.223.139', 9, 'Safari 534.30', 'Linux', 'zh-CN, en-US', 'APNIC', '', '', '/mobile/index.php'),
(1406141287, '183.29.190.150', 4, 'Safari 537.1', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/mobile/index.php'),
(1406141312, '183.29.190.150', 5, 'Safari 537.1', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', 'http://q.yunmoban.cn', '/mobile/', '/index.php'),
(1406141335, '183.29.190.150', 6, 'Safari 537.1', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', 'http://q.yunmoban.cn', '/mobile/', '/mobile/cat_all.php'),
(1406141339, '101.226.62.83', 1, 'Unknow browser', 'Unknown', '', 'IANA', '', '', '/wechat/weixin.php'),
(1406141416, '101.226.62.83', 1, 'Unknow browser', 'Unknown', '', 'IANA', '', '', '/wechat/weixin.php'),
(1406141420, '112.75.217.219', 1, 'Safari 534.30', 'Linux', 'zh-CN, en-US', 'IANA', '', '', '/mobile/goods.php'),
(1406141558, '14.17.18.147', 1, 'Unknow browser', 'Unknown', 'zh-cn, zh', '', '', '', '/mobile/flow.php'),
(1406142045, '112.90.78.25', 1, 'Unknow browser', 'Unknown', 'zh-cn, zh', 'IANA', '', '', '/mobile/goods.php'),
(1406142069, '101.226.62.83', 1, 'Unknow browser', 'Unknown', '', 'IANA', '', '', '/wechat/weixin.php'),
(1406142079, '101.226.62.83', 1, 'Unknow browser', 'Unknown', '', 'IANA', '', '', '/wechat/weixin.php'),
(1406142087, '101.226.62.83', 1, 'Unknow browser', 'Unknown', '', 'IANA', '', '', '/wechat/weixin.php'),
(1406142104, '101.226.62.83', 1, 'Unknow browser', 'Unknown', '', 'IANA', '', '', '/wechat/weixin.php'),
(1406142685, '116.252.146.82', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '', '', '', '/index.php'),
(1406142999, '14.17.34.190', 1, 'Unknow browser', 'Unknown', 'zh-cn, zh', '', '', '', '/index.php'),
(1406143013, '182.202.52.229', 1, 'Internet Explorer 8.0', 'Windows NT', 'zh-cn', '[δ֪IP0801]', '', '', '/mobile/index.php'),
(1406143056, '182.202.52.229', 1, 'Safari 534.30', 'Linux', 'zh-CN, en-US', '[δ֪IP0801]', '', '', '/mobile/index.php'),
(1406143081, '163.177.69.38', 1, 'Unknow browser', 'Unknown', 'zh-cn, zh', '', '', '', '/mobile/group_buy.php'),
(1406143128, '101.226.62.83', 1, 'Unknow browser', 'Unknown', '', 'IANA', '', '', '/wechat/weixin.php'),
(1406143129, '183.29.190.150', 39, 'Safari 534.30', 'Linux', 'zh-CN, en-US', '[δ֪IP0801]', '', '', '/index.php'),
(1406143129, '183.29.190.150', 40, 'Safari 534.30', 'Linux', 'zh-CN, en-US', '[δ֪IP0801]', '', '', '/mobile/index.php'),
(1406143191, '183.156.3.207', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/mobile/index.php'),
(1406143364, '101.226.62.83', 1, 'Unknow browser', 'Unknown', '', 'IANA', '', '', '/wechat/weixin.php'),
(1406143367, '171.105.73.233', 4, 'Safari 534.30', 'Linux', 'zh-CN, en-US', 'RIPE', '', '', '/mobile/user.php'),
(1406143376, '171.105.73.233', 1, 'Safari 534.30', 'Linux', 'zh-CN, en-US', 'RIPE', '', '', '/mobile/user.php'),
(1406143547, '101.226.62.82', 1, 'Unknow browser', 'Unknown', '', 'IANA', '', '', '/wechat/weixin.php'),
(1406143555, '14.31.6.26', 1, 'Safari 534.30', 'Linux', 'zh-CN, en-US', '', '', '', '/mobile/goods.php'),
(1406145273, '183.156.3.207', 1, 'Safari 534.30', 'Linux', 'zh-CN, en-US', '[δ֪IP0801]', '', '', '/index.php'),
(1406145274, '183.156.3.207', 2, 'Safari 534.30', 'Linux', 'zh-CN, en-US', '[δ֪IP0801]', '', '', '/mobile/index.php'),
(1406145294, '183.136.190.62', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/index.php'),
(1406145344, '183.156.3.207', 6, 'Safari 534.30', 'Linux', 'zh-CN, en-US', '[δ֪IP0801]', '', '', '/index.php'),
(1406145344, '183.156.3.207', 7, 'Safari 534.30', 'Linux', 'zh-CN, en-US', '[δ֪IP0801]', '', '', '/mobile/index.php'),
(1406145436, '101.226.62.83', 1, 'Unknow browser', 'Unknown', '', 'IANA', '', '', '/wechat/weixin.php'),
(1406145466, '101.226.62.86', 1, 'Unknow browser', 'Unknown', '', 'IANA', '', '', '/wechat/weixin.php'),
(1406145471, '114.251.148.193', 1, 'Unknow browser', 'Unknown', 'zh-cn', 'IANA', '', '', '/mobile/user.php'),
(1406145480, '180.153.214.152', 1, 'Unknow browser', 'Unknown', 'zh-cn, zh', '[δ֪IP0801]', '', '', '/mobile/index.php'),
(1406145483, '101.226.62.82', 1, 'Unknow browser', 'Unknown', '', 'IANA', '', '', '/wechat/weixin.php'),
(1406145484, '114.251.148.193', 2, 'Unknow browser', 'Unknown', 'zh-cn', 'IANA', '', '', '/index.php'),
(1406145484, '114.251.148.193', 3, 'Unknow browser', 'Unknown', 'zh-cn', 'IANA', '', '', '/mobile/index.php'),
(1406145489, '183.156.3.207', 8, 'Safari 534.30', 'Linux', 'zh-CN, en-US', '[δ֪IP0801]', '', '', '/index.php'),
(1406145489, '183.156.3.207', 9, 'Safari 534.30', 'Linux', 'zh-CN, en-US', '[δ֪IP0801]', '', '', '/mobile/index.php'),
(1406145524, '101.226.62.84', 1, 'Unknow browser', 'Unknown', '', 'IANA', '', '', '/wechat/weixin.php'),
(1406145616, '182.47.46.57', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/index.php'),
(1406145618, '182.47.46.57', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', 'http://219.146.13.122:8888', '/ol/pushAction.do?param=ABaW1zaT00NjAwMzA5NzA5MTA1NDcmbWRuPTg2MTMzOTY0NTIyMjQmYnNpZD0zNjdBMDAxMzFENkUmdXJsPXEueXVubW9iYW4uY24vPw==&ref=1', '/index.php'),
(1406145667, '182.47.46.57', 2, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/mobile/index.php'),
(1406145678, '182.47.46.57', 3, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/index.php'),
(1406146079, '182.47.46.57', 4, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/mobile/index.php'),
(1406146109, '42.130.153.48', 1, 'Internet Explorer 6.0', 'Windows XP', '', 'IANA', '', '', '/mobile/myship.php'),
(1406146168, '101.226.62.83', 1, 'Unknow browser', 'Unknown', '', 'IANA', '', '', '/wechat/weixin.php'),
(1406146179, '101.226.62.83', 1, 'Unknow browser', 'Unknown', '', 'IANA', '', '', '/wechat/weixin.php'),
(1406146187, '101.226.62.83', 1, 'Unknow browser', 'Unknown', '', 'IANA', '', '', '/wechat/weixin.php'),
(1406146196, '101.226.62.83', 1, 'Unknow browser', 'Unknown', '', 'IANA', '', '', '/wechat/weixin.php'),
(1406146204, '101.226.62.82', 1, 'Unknow browser', 'Unknown', '', 'IANA', '', '', '/wechat/weixin.php'),
(1406146325, '101.226.62.83', 1, 'Unknow browser', 'Unknown', '', 'IANA', '', '', '/wechat/weixin.php'),
(1406146337, '101.226.62.82', 1, 'Unknow browser', 'Unknown', '', 'IANA', '', '', '/wechat/weixin.php'),
(1406146342, '125.77.191.133', 1, 'Safari 534.30', 'Linux', 'zh-CN, en-US', '', '', '', '/mobile/user.php'),
(1406146365, '101.226.62.85', 1, 'Unknow browser', 'Unknown', '', 'IANA', '', '', '/wechat/weixin.php'),
(1406146375, '101.226.62.82', 1, 'Unknow browser', 'Unknown', '', 'IANA', '', '', '/wechat/weixin.php'),
(1406146447, '125.77.191.133', 2, 'Safari 534.30', 'Linux', 'zh-CN, en-US', '', 'http://q.yunmoban.cn', '/mobile/', '/index.php'),
(1406146447, '125.77.191.133', 3, 'Safari 534.30', 'Linux', 'zh-CN, en-US', '', 'http://q.yunmoban.cn', '/mobile/', '/mobile/index.php'),
(1406146533, '101.226.62.83', 1, 'Unknow browser', 'Unknown', '', 'IANA', '', '', '/wechat/weixin.php'),
(1406146537, '101.226.62.83', 1, 'Unknow browser', 'Unknown', '', 'IANA', '', '', '/wechat/weixin.php'),
(1406146541, '101.226.62.83', 1, 'Unknow browser', 'Unknown', '', 'IANA', '', '', '/wechat/weixin.php'),
(1406146545, '101.226.62.83', 1, 'Unknow browser', 'Unknown', '', 'IANA', '', '', '/wechat/weixin.php'),
(1406146549, '101.226.62.83', 1, 'Unknow browser', 'Unknown', '', 'IANA', '', '', '/wechat/weixin.php'),
(1406146554, '101.226.62.82', 1, 'Unknow browser', 'Unknown', '', 'IANA', '', '', '/wechat/weixin.php'),
(1406146563, '101.226.62.83', 1, 'Unknow browser', 'Unknown', '', 'IANA', '', '', '/wechat/weixin.php'),
(1406146572, '101.226.62.86', 1, 'Unknow browser', 'Unknown', '', 'IANA', '', '', '/wechat/weixin.php'),
(1406146579, '101.226.62.82', 1, 'Unknow browser', 'Unknown', '', 'IANA', '', '', '/wechat/weixin.php'),
(1406146583, '101.226.62.82', 1, 'Unknow browser', 'Unknown', '', 'IANA', '', '', '/wechat/weixin.php'),
(1406146591, '101.226.62.83', 1, 'Unknow browser', 'Unknown', '', 'IANA', '', '', '/wechat/weixin.php'),
(1406146602, '101.226.62.82', 1, 'Unknow browser', 'Unknown', '', 'IANA', '', '', '/wechat/weixin.php'),
(1406146608, '101.226.62.82', 1, 'Unknow browser', 'Unknown', '', 'IANA', '', '', '/wechat/weixin.php'),
(1406146614, '101.226.62.83', 1, 'Unknow browser', 'Unknown', '', 'IANA', '', '', '/wechat/weixin.php'),
(1406146617, '101.226.62.83', 1, 'Unknow browser', 'Unknown', '', 'IANA', '', '', '/wechat/weixin.php'),
(1406146618, '125.77.191.133', 4, 'Safari 534.30', 'Linux', 'zh-CN, en-US', '', '', '', '/index.php'),
(1406146618, '125.77.191.133', 5, 'Safari 534.30', 'Linux', 'zh-CN, en-US', '', '', '', '/mobile/index.php'),
(1406146623, '101.226.62.83', 1, 'Unknow browser', 'Unknown', '', 'IANA', '', '', '/wechat/weixin.php'),
(1406146630, '183.29.190.150', 41, 'Safari 534.30', 'Linux', 'zh-CN, en-US', '[δ֪IP0801]', '', '', '/mobile/user.php'),
(1406146640, '101.226.62.82', 1, 'Unknow browser', 'Unknown', '', 'IANA', '', '', '/wechat/weixin.php'),
(1406146657, '101.226.62.83', 1, 'Unknow browser', 'Unknown', '', 'IANA', '', '', '/wechat/weixin.php'),
(1406146658, '101.226.62.86', 1, 'Unknow browser', 'Unknown', '', 'IANA', '', '', '/wechat/weixin.php'),
(1406146667, '101.226.62.82', 1, 'Unknow browser', 'Unknown', '', 'IANA', '', '', '/wechat/weixin.php'),
(1406146683, '183.29.190.150', 2, 'Safari 534.30;', 'Linux', 'zh-CN, en-US', '[δ֪IP0801]', '', '', '/mobile/user.php'),
(1406147063, '118.186.217.118', 1, 'Unknow browser', 'Unknown', '', 'APNIC', '', '', '/mobile/index.php'),
(1406147086, '183.60.1.239', 1, 'Internet Explorer 9.0', 'Windows NT', 'zh-cn', '[δ֪IP0801]', '', '', '/mobile/index.php'),
(1406147108, '118.186.217.119', 1, 'Unknow browser', 'Unknown', '', 'APNIC', '', '', '/mobile/index.php'),
(1406147110, '183.29.190.150', 42, 'Safari 534.30', 'Linux', 'zh-CN, en-US', '[δ֪IP0801]', 'http://widget.renren.com', '/dialog/share?resourceUrl=http%3A%2F%2Fq.yunmoban.cn%2Fmobile%2F%3Fu%3D22%230-renren-1-80381-98fde57bb3d39343db0f272b38411f3e&srcUrl=http%3A%2F%2Fq.yunmoban.cn%2Fmobile%2F%3Fu%3D22%230-renren-1-80381-', '/index.php'),
(1406147126, '183.29.190.150', 43, 'Safari 534.30', 'Linux', 'zh-CN, en-US', '[δ֪IP0801]', 'http://share.v.t.qq.com', '/index.php?c=share&a=index&url=http%3A%2F%2Fq.yunmoban.cn%2Fmobile%2F%3Fu%3D22%230-tqq-1-86702-89b7933b38b0586d98eb9d131fa70b46&title=%E8%A7%A6%E5%B1%8F%E7%89%88&appkey=801cf76d3cfc44ada52ec13114e84a9', '/mobile/index.php'),
(1406147253, '182.47.46.57', 5, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/index.php'),
(1406147414, '182.47.46.57', 2, 'Internet Explorer 7.0', 'Windows NT', 'zh-CN', '[δ֪IP0801]', '', '', '/index.php'),
(1406147427, '182.47.46.57', 1, 'Unknow browser', 'Unknown', '', '[δ֪IP0801]', '', '', '/index.php'),
(1406147449, '182.47.46.57', 3, 'Unknow browser', 'Unknown', '', '[δ֪IP0801]', '', '', '/mobile/index.php'),
(1406147451, '182.47.46.57', 4, 'Unknow browser', 'Unknown', '', '[δ֪IP0801]', '', '', '/search.php'),
(1406147465, '182.47.46.57', 5, 'Unknow browser', 'Unknown', '', '[δ֪IP0801]', '', '', '/mobile/search.php'),
(1406147522, '182.47.46.57', 6, 'Unknow browser', 'Unknown', '', '[δ֪IP0801]', '', '', '/category.php'),
(1406147523, '182.47.46.57', 6, 'Unknow browser', 'Unknown', '', '[δ֪IP0801]', '', '', '/category.php'),
(1406147537, '182.47.46.57', 4, 'Unknow browser', 'Unknown', '', '[δ֪IP0801]', '', '', '/user.php'),
(1406147538, '182.47.46.57', 4, 'Unknow browser', 'Unknown', '', '[δ֪IP0801]', '', '', '/flow.php'),
(1406147538, '182.47.46.57', 4, 'Unknow browser', 'Unknown', '', '[δ֪IP0801]', '', '', '/user.php'),
(1406147541, '182.47.46.57', 5, 'Unknow browser', 'Unknown', '', '[δ֪IP0801]', '', '', '/mobile/search.php'),
(1406147542, '182.47.46.57', 6, 'Unknow browser', 'Unknown', '', '[δ֪IP0801]', '', '', '/category.php'),
(1406147550, '182.47.46.57', 6, 'Unknow browser', 'Unknown', '', '[δ֪IP0801]', '', '', '/category.php'),
(1406147550, '182.47.46.57', 6, 'Unknow browser', 'Unknown', '', '[δ֪IP0801]', '', '', '/category.php'),
(1406147555, '182.47.46.57', 7, 'Unknow browser', 'Unknown', '', '[δ֪IP0801]', '', '', '/mobile/search.php'),
(1406147598, '42.121.121.79', 1, '', 'Unknown', '', 'IANA', '', '', '/index.php'),
(1406147599, '42.121.121.79', 1, '', 'Unknown', '', 'IANA', '', '', '/mobile/index.php'),
(1406148355, '183.136.190.62', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/index.php'),
(1406148444, '101.226.62.83', 1, 'Unknow browser', 'Unknown', '', 'IANA', '', '', '/wechat/weixin.php'),
(1406148448, '171.105.73.233', 5, 'Safari 534.30', 'Linux', 'zh-CN, en-US', 'RIPE', '', '', '/mobile/user.php'),
(1406148895, '106.116.141.202', 1, 'Safari 537.31', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/index.php'),
(1406148898, '182.202.52.229', 2, 'Safari 534.30', 'Linux', 'zh-CN, en-US', '[δ֪IP0801]', '', '', '/mobile/index.php'),
(1406149136, '222.73.77.55', 1, 'Unknow browser', 'Unknown', 'zh-cn, zh', '', '', '', '/mobile/index.php'),
(1406150223, '110.80.129.36', 1, 'Unknow browser', 'Unknown', 'zh-cn,zh', 'IANA', '', '', '/index.php'),
(1406150535, '59.32.160.29', 44, 'Safari 534.30', 'Linux', 'zh-CN, en-US', '', '', '', '/index.php'),
(1406150535, '59.32.160.29', 45, 'Safari 534.30', 'Linux', 'zh-CN, en-US', '', '', '', '/mobile/index.php'),
(1406150716, '183.156.3.207', 10, 'Safari 534.30', 'Linux', 'zh-CN, en-US', '[δ֪IP0801]', '', '', '/index.php'),
(1406150716, '183.156.3.207', 11, 'Safari 534.30', 'Linux', 'zh-CN, en-US', '[δ֪IP0801]', '', '', '/mobile/index.php'),
(1406150722, '183.156.3.207', 12, 'Safari 534.30', 'Linux', 'zh-CN, en-US', '[δ֪IP0801]', '', '', '/index.php'),
(1406150722, '183.156.3.207', 13, 'Safari 534.30', 'Linux', 'zh-CN, en-US', '[δ֪IP0801]', '', '', '/mobile/index.php'),
(1406150733, '183.156.3.207', 14, 'Safari 534.30', 'Linux', 'zh-CN, en-US', '[δ֪IP0801]', 'http://q.yunmoban.cn', '/mobile/', '/index.php'),
(1406150733, '183.156.3.207', 15, 'Safari 534.30', 'Linux', 'zh-CN, en-US', '[δ֪IP0801]', 'http://q.yunmoban.cn', '/mobile/', '/mobile/index.php'),
(1406150743, '183.156.3.207', 16, 'Safari 534.30', 'Linux', 'zh-CN, en-US', '[δ֪IP0801]', '', '', '/index.php'),
(1406150744, '183.156.3.207', 17, 'Safari 534.30', 'Linux', 'zh-CN, en-US', '[δ֪IP0801]', '', '', '/mobile/index.php'),
(1406151484, '183.156.3.207', 3, 'Safari 534.30', 'Linux', 'zh-CN, en-US', '[δ֪IP0801]', '', '', '/mobile/group_buy.php'),
(1406151841, '101.226.62.83', 1, 'Unknow browser', 'Unknown', '', 'IANA', '', '', '/wechat/weixin.php'),
(1406151869, '101.226.62.83', 1, 'Unknow browser', 'Unknown', '', 'IANA', '', '', '/wechat/weixin.php'),
(1406151877, '101.226.62.83', 1, 'Unknow browser', 'Unknown', '', 'IANA', '', '', '/wechat/weixin.php'),
(1406151883, '119.62.9.216', 1, 'Safari 534.30', 'Linux', 'zh-CN, en-US', 'APNIC', '', '', '/mobile/goods.php'),
(1406151904, '101.226.62.82', 1, 'Unknow browser', 'Unknown', '', 'IANA', '', '', '/wechat/weixin.php'),
(1406151910, '101.226.62.86', 1, 'Unknow browser', 'Unknown', '', 'IANA', '', '', '/wechat/weixin.php'),
(1406151924, '101.226.62.83', 1, 'Unknow browser', 'Unknown', '', 'IANA', '', '', '/wechat/weixin.php'),
(1406151932, '119.62.9.216', 2, 'Safari 534.30', 'Linux', 'zh-CN, en-US', 'APNIC', '', '', '/index.php'),
(1406151932, '119.62.9.216', 3, 'Safari 534.30', 'Linux', 'zh-CN, en-US', 'APNIC', '', '', '/mobile/index.php'),
(1406153532, '123.149.113.32', 17, 'Safari 534.30', 'Linux', 'zh-CN, en-US', '', '', '', '/mobile/goods.php'),
(1406153532, '123.149.113.32', 18, 'Safari 534.30', 'Linux', 'zh-CN, en-US', '', 'http://q.yunmoban.cn', '/mobile/goods.php?id=19&wxid=oK8YwuJdbRYqprVR0l_KOIw248mA', '/mobile/captcha.php'),
(1406153535, '123.149.113.32', 19, 'Safari 534.30', 'Linux', 'zh-CN, en-US', '', 'http://q.yunmoban.cn', '/mobile/goods.php?id=19&wxid=oK8YwuJdbRYqprVR0l_KOIw248mA', '/mobile/goods.php'),
(1406153537, '123.149.113.32', 20, 'Safari 534.30', 'Linux', 'zh-CN, en-US', '', 'http://q.yunmoban.cn', '/mobile/goods.php?id=19&wxid=oK8YwuJdbRYqprVR0l_KOIw248mA', '/mobile/flow.php'),
(1406153538, '123.149.113.32', 21, 'Safari 534.30', 'Linux', 'zh-CN, en-US', '', 'http://q.yunmoban.cn', '/mobile/goods.php?id=19&wxid=oK8YwuJdbRYqprVR0l_KOIw248mA', '/mobile/flow.php'),
(1406153544, '123.149.113.32', 22, 'Safari 534.30', 'Linux', 'zh-CN, en-US', '', 'http://q.yunmoban.cn', '/mobile/goods.php?id=19&wxid=oK8YwuJdbRYqprVR0l_KOIw248mA', '/mobile/goods.php'),
(1406154206, '222.212.32.209', 2, 'FireFox 30.0', 'Windows NT', 'zh-cn,zh', '', '', '', '/mobile/index.php'),
(1406154225, '222.212.32.209', 1, 'Safari 534.30', 'Linux', 'zh-CN, en-US', '', '', '', '/mobile/index.php'),
(1406154246, '184.105.206.94', 1, 'Internet Explorer 9.0', 'Windows NT', 'en-US,*', '[δ֪IP0801]', '', '', '/mobile/affiche.php'),
(1406154249, '61.135.187.48', 1, 'Internet Explorer 9.0', 'Windows NT', 'en,*', '', '', '', '/mobile/goods.php'),
(1406154279, '115.236.159.162', 1, 'Internet Explorer 9.0', 'Windows NT', 'en,*', 'IANA', '', '', '/mobile/index.php'),
(1406154285, '183.61.160.211', 1, 'Internet Explorer 9.0', 'Windows NT', 'en,*', '[δ֪IP0801]', '', '', '/mobile/goods.php'),
(1406154358, '183.61.160.211', 1, 'Safari 537.36', 'Windows NT', 'en,*', '[δ֪IP0801]', '', '', '/mobile/article_cat.php'),
(1406154379, '183.60.15.20', 1, 'Internet Explorer 9.0', 'Windows NT', 'zh-cn', '[δ֪IP0801]', '', '', '/mobile/index.php'),
(1406155114, '116.224.137.131', 56, 'Safari 537.36', 'Windows XP', 'zh-CN,zh', '', '', '', '/index.php'),
(1406155121, '116.224.137.131', 57, 'Safari 537.36', 'Windows XP', 'zh-CN,zh', '', 'http://q.yunmoban.cn', '/', '/mobile/index.php'),
(1406155872, '222.212.32.209', 1, 'Internet Explorer 5.0', 'Windows NT', 'en-us', '', '', '', '/mobile/flow.php'),
(1406156307, '222.212.32.209', 3, 'FireFox 30.0', 'Windows NT', 'zh-cn,zh', '', '', '', '/index.php'),
(1406157627, '222.212.32.209', 4, 'FireFox 30.0', 'Windows NT', 'zh-cn,zh', '', '', '', '/mobile/index.php'),
(1406157687, '222.212.32.209', 1, 'Internet Explorer 5.0', 'Windows NT', 'en-us', '', '', '', '/mobile/ectouch.php'),
(1406158174, '222.212.32.209', 5, 'FireFox 30.0', 'Windows NT', 'zh-cn,zh', '', '', '', '/index.php'),
(1406158179, '222.212.32.209', 6, 'FireFox 30.0', 'Windows NT', 'zh-cn,zh', '', '', '', '/mobile/index.php'),
(1406158307, '49.223.9.102', 1, '(Internet Explorer ) Maxthon ', 'Windows NT', 'zh-CN', 'IANA', '', '', '/index.php'),
(1406158324, '49.223.9.102', 2, '(Internet Explorer ) Maxthon ', 'Windows NT', 'zh-CN', 'IANA', '', '', '/mobile/index.php'),
(1406158533, '116.224.137.131', 58, 'Safari 537.36', 'Windows XP', 'zh-CN,zh', '', '', '', '/mobile/index.php'),
(1406159170, '101.226.62.82', 1, 'Unknow browser', 'Unknown', '', 'IANA', '', '', '/wechat/weixin.php'),
(1406159173, '140.246.100.175', 1, 'Unknow browser', 'Unknown', 'zh-cn', '', '', '', '/mobile/user.php'),
(1406159184, '101.226.62.85', 1, 'Unknow browser', 'Unknown', '', 'IANA', '', '', '/wechat/weixin.php'),
(1406159184, '140.246.100.175', 2, 'Unknow browser', 'Unknown', 'zh-cn', '', '', '', '/index.php'),
(1406159184, '140.246.100.175', 3, 'Unknow browser', 'Unknown', 'zh-cn', '', '', '', '/mobile/index.php'),
(1406160864, '116.224.137.131', 59, 'Safari 537.36', 'Windows XP', 'zh-CN,zh', '', '', '', '/mobile/index.php'),
(1406160894, '116.224.137.131', 60, 'Safari 537.36', 'Windows XP', 'zh-CN,zh', '', '', '', '/index.php'),
(1406160898, '116.224.137.131', 61, 'Safari 537.36', 'Windows XP', 'zh-CN,zh', '', 'http://q.yunmoban.cn', '/', '/mobile/index.php'),
(1406160916, '116.224.137.131', 62, 'Safari 537.36', 'Windows XP', 'zh-CN,zh', '', 'http://q.yunmoban.cn', '/', '/category.php'),
(1406161043, '180.153.161.217', 1, 'Unknow browser', 'Unknown', 'zh-cn, zh', '[δ֪IP0801]', '', '', '/mobile/cat_all.php'),
(1406161700, '101.226.89.122', 1, 'Unknow browser', 'Unknown', 'zh-cn, zh', 'IANA', '', '', '/mobile/group_buy.php'),
(1406162129, '113.127.6.180', 6, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/mobile/index.php'),
(1406163454, '101.226.33.206', 1, 'Unknow browser', 'Unknown', 'zh-cn, zh', 'IANA', '', '', '/group_buy.php'),
(1406163494, '123.125.68.158', 1, 'FireFox 6.0.2', 'Windows XP', '', '', '', '', '/goods.php'),
(1406163757, '112.64.235.245', 1, 'Unknow browser', 'Unknown', 'zh-cn, zh', 'IANA', '', '', '/index.php'),
(1406163808, '101.226.33.227', 1, 'Unknow browser', 'Unknown', 'zh-cn, zh', 'IANA', '', '', '/group_buy.php'),
(1406163902, '121.196.43.130', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/mobile/certi.php'),
(1406163921, '116.224.137.131', 63, 'Safari 537.36', 'Windows XP', 'zh-CN,zh', '', 'http://q.yunmoban.cn', '/mobile/miq/index.php?act=top', '/mobile/index.php'),
(1406163966, '101.226.65.105', 1, 'Unknow browser', 'Unknown', 'zh-cn, zh', 'IANA', '', '', '/goods.php'),
(1406164020, '115.28.126.18', 1, 'FireFox 3.5.16', 'Windows XP', '', 'IANA', '', '', '/index.php'),
(1406164185, '101.226.66.179', 1, 'Unknow browser', 'Unknown', 'zh-cn, zh', 'IANA', '', '', '/category.php'),
(1406164343, '115.28.126.18', 1, 'FireFox 3.5.16', 'Windows XP', '', 'IANA', '', '', '/index.php'),
(1406164443, '115.28.126.18', 1, 'FireFox 3.5.16', 'Windows XP', '', 'IANA', '', '', '/index.php'),
(1406165928, '101.226.62.82', 1, 'Unknow browser', 'Unknown', '', 'IANA', '', '', '/wechat/weixin.php'),
(1406165934, '140.207.54.74', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406165961, '140.207.54.74', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406165969, '140.207.54.74', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406165973, '140.207.54.74', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406166005, '59.174.93.32', 1, 'Safari 534.30', 'Linux', 'zh-CN, en-US', '', '', '', '/mobile/goods.php'),
(1406166086, '59.174.93.32', 2, 'Safari 534.30', 'Linux', 'zh-CN, en-US', '', 'http://q.yunmoban.cn', '/mobile/index.php', '/index.php'),
(1406166086, '59.174.93.32', 3, 'Safari 534.30', 'Linux', 'zh-CN, en-US', '', 'http://q.yunmoban.cn', '/mobile/index.php', '/mobile/index.php'),
(1406166089, '59.174.93.32', 4, 'Safari 534.30', 'Linux', 'zh-CN, en-US', '', 'http://q.yunmoban.cn', '/mobile/', '/index.php'),
(1406166089, '59.174.93.32', 5, 'Safari 534.30', 'Linux', 'zh-CN, en-US', '', 'http://q.yunmoban.cn', '/mobile/', '/mobile/index.php'),
(1406166095, '140.207.54.74', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406166100, '140.207.54.74', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406166104, '140.207.54.73', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406166108, '140.207.54.74', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406166144, '140.207.54.73', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406166613, '180.153.206.13', 1, 'Unknow browser', 'Unknown', 'zh-cn, zh', '[δ֪IP0801]', '', '', '/mobile/goods.php'),
(1406167660, '101.226.62.82', 1, 'Unknow browser', 'Unknown', '', 'IANA', '', '', '/wechat/weixin.php'),
(1406167660, '153.118.250.153', 1, 'Safari 534.30', 'Linux', 'zh-CN, en-US', '[δ֪IP0801]', '', '', '/index.php'),
(1406167661, '153.118.250.153', 2, 'Safari 534.30', 'Linux', 'zh-CN, en-US', '[δ֪IP0801]', '', '', '/mobile/index.php'),
(1406169167, '116.231.174.17', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '', '', '', '/index.php'),
(1406169205, '116.231.174.17', 2, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '', '', '', '/mobile/index.php'),
(1406171730, '180.153.214.197', 1, 'Unknow browser', 'Unknown', 'zh-cn, zh', '[δ֪IP0801]', 'http://q.yunmoban.cn', '/', '/goods.php'),
(1406171748, '101.226.33.238', 1, 'Unknow browser', 'Unknown', 'zh-cn, zh', 'IANA', 'http://q.yunmoban.cn', '/mobile/goods-17.html', '/mobile/captcha.php'),
(1406171784, '101.226.33.205', 1, 'Unknow browser', 'Unknown', 'zh-cn, zh', 'IANA', 'http://q.yunmoban.cn', '/goods-57.html', '/captcha.php'),
(1406171827, '180.153.161.55', 1, 'Unknow browser', 'Unknown', 'zh-cn, zh', '[δ֪IP0801]', 'http://q.yunmoban.cn', '/mobile/goods-17.html', '/mobile/goods.php'),
(1406171866, '101.226.33.200', 1, 'Unknow browser', 'Unknown', 'zh-cn, zh', 'IANA', 'http://q.yunmoban.cn', '/goods-57.html', '/goods.php'),
(1406171898, '101.226.62.83', 1, 'Unknow browser', 'Unknown', '', 'IANA', '', '', '/wechat/weixin.php'),
(1406172265, '140.207.54.74', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406172274, '140.207.54.74', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406172282, '140.207.54.74', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406172470, '113.57.182.63', 6, 'Safari 534.30', 'Linux', 'zh-CN, en-US', 'IANA', '', '', '/mobile/goods.php'),
(1406177274, '183.156.10.1', 4, 'Safari 534.30', 'Linux', 'zh-CN, en-US', '[δ֪IP0801]', '', '', '/mobile/index.php'),
(1406177303, '110.185.182.62', 7, 'FireFox 30.0', 'Windows NT', 'zh-cn,zh', 'IANA', '', '', '/mobile/index.php'),
(1406177308, '183.156.10.1', 6, 'Unknow browser', 'Windows NT', 'zh-CN', '[δ֪IP0801]', '', '', '/mobile/index.php'),
(1406178027, '49.220.156.60', 1, 'Safari 537.76.4', 'Unknown', 'zh-cn', 'IANA', '', '', '/mobile/index.php'),
(1406178031, '60.166.160.22', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '', 'http://ah.189.cn', '/dns/spush/intercept.do?areaCode=10000004', '/mobile/index.php'),
(1406178041, '58.219.41.153', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '', '', '', '/mobile/index.php'),
(1406178084, '60.166.160.22', 2, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '', 'http://q.yunmoban.cn', '/mobile/?38c8915004ae475f9ed503d8ba105a9e=b90a2105ba604acfb1c0fe972b7ddc2d', '/index.php'),
(1406178334, '60.166.160.22', 3, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '', 'http://q.yunmoban.cn', '/mobile/', '/mobile/index.php'),
(1406179827, '175.49.216.160', 1, 'Safari 537.1', 'Windows XP', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/index.php'),
(1406179837, '175.49.216.160', 2, 'Safari 537.1', 'Windows XP', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/mobile/index.php'),
(1406180901, '113.77.149.220', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/mobile/index.php'),
(1406181143, '140.255.18.157', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'ARIN', '', '', '/mobile/index.php'),
(1406181788, '140.207.54.79', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406181819, '140.207.54.79', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406181826, '140.207.54.79', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406181828, '1.62.117.204', 1, 'Unknow browser', 'Unknown', 'zh-cn', 'IANA', '', '', '/mobile/user.php'),
(1406182304, '111.143.83.57', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', 'http://www.yunmoban.cn', '/goods-130.html', '/index.php'),
(1406182713, '140.207.54.77', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406182714, '121.57.204.72', 10, 'Safari 534.30', 'Linux', 'zh-CN, en-US', '', '', '', '/index.php'),
(1406182714, '121.57.204.72', 11, 'Safari 534.30', 'Linux', 'zh-CN, en-US', '', '', '', '/mobile/index.php'),
(1406182942, '119.122.234.214', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'APNIC', 'http://item.taobao.com', '/item.htm?spm=2013.1.0.0.TNPmTW&id=39305837789&scm=1007.10115.744.0&pvid=ac47d8af-c723-4530-91dc-43ebc2dfea59', '/mobile/index.php'),
(1406183468, '140.207.54.78', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406183806, '140.207.54.78', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406183806, '121.57.204.72', 12, 'Safari 534.30', 'Linux', 'zh-CN, en-US', '', '', '', '/index.php'),
(1406183806, '121.57.204.72', 13, 'Safari 534.30', 'Linux', 'zh-CN, en-US', '', '', '', '/mobile/index.php'),
(1406183862, '119.79.156.76', 1, 'Internet Explorer 6.0', 'Windows XP', 'zh-cn', 'APNIC', '', '', '/mobile/index.php'),
(1406184020, '140.207.54.78', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406184020, '121.57.204.72', 14, 'Safari 534.30', 'Linux', 'zh-CN, en-US', '', '', '', '/index.php'),
(1406184021, '121.57.204.72', 15, 'Safari 534.30', 'Linux', 'zh-CN, en-US', '', '', '', '/mobile/index.php'),
(1406185874, '140.207.54.78', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406185918, '101.226.62.81', 1, 'Unknow browser', 'Unknown', '', 'IANA', '', '', '/wechat/weixin.php'),
(1406185920, '182.202.52.229', 2, 'Safari 534.30', 'Linux', 'zh-CN, en-US', '[δ֪IP0801]', '', '', '/mobile/index.php'),
(1406185938, '182.202.52.229', 3, 'Safari 534.30', 'Linux', 'zh-CN, en-US', '[δ֪IP0801]', '', '', '/index.php'),
(1406185938, '182.202.52.229', 4, 'Safari 534.30', 'Linux', 'zh-CN, en-US', '[δ֪IP0801]', '', '', '/mobile/index.php'),
(1406185958, '14.17.34.190', 1, 'Unknow browser', 'Unknown', 'zh-cn, zh', '', '', '', '/mobile/index.php'),
(1406186894, '101.226.62.81', 1, 'Unknow browser', 'Unknown', '', 'IANA', '', '', '/wechat/weixin.php'),
(1406186899, '101.226.62.81', 1, 'Unknow browser', 'Unknown', '', 'IANA', '', '', '/wechat/weixin.php'),
(1406187295, '101.226.62.82', 1, 'Unknow browser', 'Unknown', '', 'IANA', '', '', '/wechat/weixin.php'),
(1406187309, '101.226.62.82', 1, 'Unknow browser', 'Unknown', '', 'IANA', '', '', '/wechat/weixin.php'),
(1406187368, '101.226.62.82', 1, 'Unknow browser', 'Unknown', '', 'IANA', '', '', '/wechat/weixin.php'),
(1406187370, '116.224.137.131', 1, 'Safari 534.30', 'Linux', 'zh-CN, en-US', '', '', '', '/mobile/user.php'),
(1406187470, '101.226.62.81', 1, 'Unknow browser', 'Unknown', '', 'IANA', '', '', '/wechat/weixin.php'),
(1406187482, '101.226.62.81', 1, 'Unknow browser', 'Unknown', '', 'IANA', '', '', '/wechat/weixin.php'),
(1406187489, '116.224.137.131', 1, 'Safari 534.30', 'Linux', 'zh-CN, en-US', '', '', '', '/index.php'),
(1406187490, '116.224.137.131', 2, 'Safari 534.30', 'Linux', 'zh-CN, en-US', '', '', '', '/mobile/index.php'),
(1406187501, '116.224.137.131', 3, 'Safari 534.30', 'Linux', 'zh-CN, en-US', '', '', '', '/index.php'),
(1406187501, '116.224.137.131', 4, 'Safari 534.30', 'Linux', 'zh-CN, en-US', '', '', '', '/mobile/index.php'),
(1406187507, '101.226.62.81', 1, 'Unknow browser', 'Unknown', '', 'IANA', '', '', '/wechat/weixin.php'),
(1406187553, '116.224.137.131', 5, 'Safari 534.30', 'Linux', 'zh-CN, en-US', '', '', '', '/index.php'),
(1406187553, '116.224.137.131', 6, 'Safari 534.30', 'Linux', 'zh-CN, en-US', '', '', '', '/mobile/index.php'),
(1406187554, '101.226.62.81', 1, 'Unknow browser', 'Unknown', '', 'IANA', '', '', '/wechat/weixin.php'),
(1406187579, '121.57.204.72', 1, 'Safari 537.1', 'Windows NT', 'zh-CN,zh', '', '', '', '/mobile/index.php'),
(1406187596, '121.57.204.72', 2, 'Safari 537.1', 'Windows NT', 'zh-CN,zh', '', '', '', '/index.php'),
(1406188246, '101.226.62.83', 1, 'Unknow browser', 'Unknown', '', 'IANA', '', '', '/wechat/weixin.php'),
(1406188247, '42.63.144.9', 1, 'Safari 534.30', 'Linux', 'zh-CN, en-US', 'IANA', '', '', '/index.php'),
(1406188247, '42.63.144.9', 2, 'Safari 534.30', 'Linux', 'zh-CN, en-US', 'IANA', '', '', '/mobile/index.php'),
(1406188639, '140.207.54.78', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406188646, '123.149.113.32', 1, 'Safari 534.30', 'Linux', 'zh-CN, en-US', '', '', '', '/mobile/goods.php'),
(1406188830, '183.29.174.180', 7, 'Safari 537.1', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/index.php'),
(1406188905, '121.57.204.72', 16, 'Safari 534.30', 'Linux', 'zh-CN, en-US', '', '', '', '/index.php'),
(1406188905, '121.57.204.72', 17, 'Safari 534.30', 'Linux', 'zh-CN, en-US', '', '', '', '/mobile/index.php'),
(1406188905, '140.207.54.78', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406188939, '140.207.54.78', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406188939, '121.57.204.72', 18, 'Safari 534.30', 'Linux', 'zh-CN, en-US', '', '', '', '/index.php'),
(1406188939, '121.57.204.72', 19, 'Safari 534.30', 'Linux', 'zh-CN, en-US', '', '', '', '/mobile/index.php'),
(1406188988, '163.125.215.96', 1, 'Unknow browser', 'Windows NT', 'zh-CN', 'IANA', '', '', '/index.php'),
(1406189004, '163.125.216.239', 2, 'Unknow browser', 'Windows NT', 'zh-CN', 'IANA', 'http://q.yunmoban.cn', '/group_buy-15.html', '/captcha.php'),
(1406189024, '163.125.218.249', 3, 'Unknow browser', 'Windows NT', 'zh-CN', 'IANA', 'http://q.yunmoban.cn', '/goods-19.html', '/captcha.php'),
(1406189033, '163.125.217.54', 4, 'Unknow browser', 'Windows NT', 'zh-CN', 'IANA', 'http://q.yunmoban.cn', '/goods-19.html', '/goods.php'),
(1406189041, '163.125.222.225', 5, 'Unknow browser', 'Windows NT', 'zh-CN', 'IANA', '', '', '/mobile/index.php'),
(1406189080, '163.125.217.133', 1, 'Safari 534.30', 'Linux', 'zh-CN, en-US', 'IANA', '', '', '/mobile/index.php'),
(1406189116, '140.207.54.78', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406189122, '1.82.127.57', 1, 'Safari 534.30', 'Linux', 'zh-CN, en-US', 'IANA', '', '', '/mobile/user.php'),
(1406189130, '140.207.54.78', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406189133, '180.153.213.141', 1, 'Internet Explorer 9.0', 'Windows NT', 'en,*', '[δ֪IP0801]', '', '', '/mobile/goods.php'),
(1406189168, '111.161.49.236', 1, 'Internet Explorer 9.0', 'Windows NT', 'en,*', 'IANA', '', '', '/mobile/user.php'),
(1406189171, '125.39.206.224', 1, 'Internet Explorer 9.0', 'Windows NT', 'en,*', '', '', '', '/mobile/user.php'),
(1406189202, '140.207.54.78', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406189202, '140.207.54.78', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406189202, '121.57.204.72', 20, 'Safari 534.30', 'Linux', 'zh-CN, en-US', '', '', '', '/index.php'),
(1406189202, '121.57.204.72', 21, 'Safari 534.30', 'Linux', 'zh-CN, en-US', '', '', '', '/mobile/index.php'),
(1406189206, '140.207.54.80', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406189326, '140.207.54.78', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406189329, '183.29.174.180', 46, 'Safari 534.30', 'Linux', 'zh-CN, en-US', '[δ֪IP0801]', '', '', '/mobile/user.php'),
(1406189781, '111.161.49.236', 1, 'Safari 537.36', 'Windows NT', 'en,*', 'IANA', '', '', '/mobile/cat_all.php'),
(1406189785, '121.12.111.141', 1, 'Internet Explorer 9.0', 'Windows NT', 'en,*', '', '', '', '/mobile/category.php'),
(1406189797, '119.188.16.37', 1, 'Internet Explorer 9.0', 'Windows NT', 'en,*', 'APNIC', '', '', '/mobile/goods.php'),
(1406189806, '184.105.206.94', 1, 'Internet Explorer 9.0', 'Windows NT', 'en-US,*', '[δ֪IP0801]', '', '', '/mobile/flow.php'),
(1406189810, '119.188.16.39', 1, 'Safari 537.36', 'Windows NT', 'en,*', 'APNIC', '', '', '/mobile/flow.php'),
(1406189811, '184.105.206.93', 1, 'Internet Explorer 9.0', 'Windows NT', 'en-US,*', '[δ֪IP0801]', '', '', '/mobile/flow.php'),
(1406189822, '111.161.49.236', 1, 'Internet Explorer 9.0', 'Windows NT', 'en,*', 'IANA', '', '', '/mobile/category.php'),
(1406189825, '61.135.187.48', 1, 'Internet Explorer 9.0', 'Windows NT', 'en,*', '', '', '', '/mobile/category.php'),
(1406189827, '122.192.32.87', 1, 'Internet Explorer 9.0', 'Windows NT', 'en,*', '', '', '', '/mobile/category.php'),
(1406189828, '183.61.160.211', 1, 'Internet Explorer 9.0', 'Windows NT', 'en,*', '[δ֪IP0801]', '', '', '/mobile/category.php'),
(1406189833, '183.61.160.211', 1, 'Internet Explorer 9.0', 'Windows NT', 'en,*', '[δ֪IP0801]', '', '', '/mobile/index.php'),
(1406189852, '115.236.153.102', 1, 'Internet Explorer 9.0', 'Windows NT', 'en,*', 'IANA', '', '', '/mobile/goods.php'),
(1406189852, '180.153.114.190', 1, 'Internet Explorer 9.0', 'Windows NT', 'en,*', '[δ֪IP0801]', '', '', '/mobile/flow.php'),
(1406189853, '180.153.114.190', 1, 'Safari 537.36', 'Windows NT', 'en,*', '[δ֪IP0801]', '', '', '/mobile/flow.php'),
(1406189854, '180.153.114.190', 1, 'Internet Explorer 9.0', 'Windows NT', 'en,*', '[δ֪IP0801]', '', '', '/mobile/flow.php'),
(1406190943, '101.226.62.82', 1, 'Unknow browser', 'Unknown', '', 'IANA', '', '', '/wechat/weixin.php'),
(1406190947, '116.224.137.131', 1, 'Safari 534.30', 'Linux', 'zh-CN, en-US', '', '', '', '/mobile/user.php'),
(1406191060, '101.226.62.82', 1, 'Unknow browser', 'Unknown', '', 'IANA', '', '', '/wechat/weixin.php'),
(1406191066, '101.226.62.82', 1, 'Unknow browser', 'Unknown', '', 'IANA', '', '', '/wechat/weixin.php'),
(1406191070, '101.226.62.82', 1, 'Unknow browser', 'Unknown', '', 'IANA', '', '', '/wechat/weixin.php'),
(1406191073, '101.226.62.82', 1, 'Unknow browser', 'Unknown', '', 'IANA', '', '', '/wechat/weixin.php'),
(1406191119, '101.226.62.82', 1, 'Unknow browser', 'Unknown', '', 'IANA', '', '', '/wechat/weixin.php'),
(1406191176, '180.153.163.209', 1, 'Unknow browser', 'Unknown', 'zh-cn, zh', '[δ֪IP0801]', '', '', '/index.php'),
(1406191913, '101.226.62.81', 1, 'Unknow browser', 'Unknown', '', 'IANA', '', '', '/wechat/weixin.php'),
(1406192921, '140.207.54.79', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406192926, '140.207.54.79', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406192931, '140.207.54.79', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406192934, '111.193.2.139', 4, 'Unknow browser', 'Unknown', 'zh-cn', 'IANA', '', '', '/mobile/user.php'),
(1406192953, '140.207.54.79', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406192953, '111.193.2.139', 5, 'Unknow browser', 'Unknown', 'zh-cn', 'IANA', '', '', '/index.php'),
(1406192954, '111.193.2.139', 6, 'Unknow browser', 'Unknown', 'zh-cn', 'IANA', '', '', '/mobile/index.php'),
(1406196653, '220.181.132.219', 1, 'Internet Explorer 8.0', 'Windows NT', '', '', 'http://q.yunmoban.cn', '/', '/index.php'),
(1406196665, '101.199.108.57', 1, 'Safari 536.11', '', 'en-us,en', 'IANA', '', '', '/index.php'),
(1406197248, '122.224.213.118', 1, 'FireFox 3.5.4,', 'BSD', 'zh-CN,zh', '', '', '', '/index.php'),
(1406197429, '183.156.10.1', 2, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/mobile/index.php'),
(1406197499, '112.65.193.13', 1, 'Unknow browser', 'Unknown', 'zh-cn, zh', 'IANA', 'http://q.yunmoban.cn', '/mobile/index.php', '/mobile/category.php'),
(1406197506, '180.153.206.23', 1, 'Unknow browser', 'Unknown', 'zh-cn, zh', '[δ֪IP0801]', 'http://q.yunmoban.cn', '/mobile/category-16-b0.html', '/mobile/goods.php'),
(1406197507, '101.226.66.181', 1, 'Unknow browser', 'Unknown', 'zh-cn, zh', 'IANA', 'http://q.yunmoban.cn', '/mobile/goods-48.html', '/mobile/captcha.php'),
(1406197507, '180.153.205.252', 1, 'Unknow browser', 'Unknown', 'zh-cn, zh', '[δ֪IP0801]', 'http://q.yunmoban.cn', '/mobile/goods-48.html', '/mobile/goods.php'),
(1406197915, '183.156.10.1', 3, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/index.php'),
(1406197929, '180.153.214.198', 1, 'Unknow browser', 'Unknown', 'zh-cn, zh', '[δ֪IP0801]', 'http://q.yunmoban.cn', '/group_buy-16.html', '/captcha.php'),
(1406197952, '112.64.235.87', 1, 'Unknow browser', 'Unknown', 'zh-cn, zh', 'IANA', 'http://q.yunmoban.cn', '/group_buy-16.html', '/category.php'),
(1406197978, '112.65.193.16', 1, 'Unknow browser', 'Unknown', 'zh-cn, zh', 'IANA', 'http://q.yunmoban.cn', '/index.php', '/category.php'),
(1406197979, '180.153.214.200', 1, 'Unknow browser', 'Unknown', 'zh-cn, zh', '[δ֪IP0801]', 'http://q.yunmoban.cn', '/category.php?id=3', '/category.php'),
(1406197985, '101.226.66.178', 1, 'Unknow browser', 'Unknown', 'zh-cn, zh', 'IANA', 'http://q.yunmoban.cn', '/category.php?id=5', '/goods.php'),
(1406197986, '101.226.66.172', 1, 'Unknow browser', 'Unknown', 'zh-cn, zh', 'IANA', 'http://q.yunmoban.cn', '/goods-47.html', '/captcha.php'),
(1406197992, '101.226.33.217', 1, 'Unknow browser', 'Unknown', 'zh-cn, zh', 'IANA', 'http://q.yunmoban.cn', '/goods-47.html', '/goods.php'),
(1406197993, '180.153.201.64', 1, 'Unknow browser', 'Unknown', 'zh-cn, zh', '[δ֪IP0801]', 'http://q.yunmoban.cn', '/goods-47.html', '/brand.php'),
(1406198000, '180.153.206.25', 1, 'Unknow browser', 'Unknown', 'zh-cn, zh', '[δ֪IP0801]', 'http://q.yunmoban.cn', '/goods-47.html', '/goods.php'),
(1406198011, '180.153.206.31', 1, 'Unknow browser', 'Unknown', 'zh-cn, zh', '[δ֪IP0801]', 'http://q.yunmoban.cn', '/goods-47.html', '/user.php'),
(1406198011, '101.226.33.224', 1, 'Unknow browser', 'Unknown', 'zh-cn, zh', 'IANA', 'http://q.yunmoban.cn', '/user.php?act=affiliate&goodsid=47', '/captcha.php'),
(1406198014, '222.73.76.253', 1, 'Unknow browser', 'Unknown', 'zh-cn, zh', '', 'http://q.yunmoban.cn', '/goods-47.html', '/goods.php');
INSERT INTO `ecs_stats` (`access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url`) VALUES
(1406198022, '180.153.214.198', 1, 'Unknow browser', 'Unknown', 'zh-cn, zh', '[δ֪IP0801]', 'http://q.yunmoban.cn', '/goods-47.html', '/goods.php'),
(1406198023, '180.153.114.200', 1, 'Unknow browser', 'Unknown', 'zh-cn, zh', '[δ֪IP0801]', 'http://q.yunmoban.cn', '/goods-123.html', '/captcha.php'),
(1406198025, '112.65.193.13', 1, 'Unknow browser', 'Unknown', 'zh-cn, zh', 'IANA', 'http://q.yunmoban.cn', '/goods-123.html', '/goods.php'),
(1406198032, '101.226.33.227', 1, 'Unknow browser', 'Unknown', 'zh-cn, zh', 'IANA', 'http://q.yunmoban.cn', '/goods-123.html', '/flow.php'),
(1406198037, '101.226.89.117', 1, 'Unknow browser', 'Unknown', 'zh-cn, zh', 'IANA', 'http://q.yunmoban.cn', '/flow.php', '/flow.php'),
(1406198038, '101.226.89.123', 1, 'Unknow browser', 'Unknown', 'zh-cn, zh', 'IANA', 'http://q.yunmoban.cn', '/flow.php', '/flow.php'),
(1406198039, '101.226.66.180', 1, 'Unknow browser', 'Unknown', 'zh-cn, zh', 'IANA', 'http://q.yunmoban.cn', '/flow.php?step=login', '/captcha.php'),
(1406198039, '180.153.214.200', 1, 'Unknow browser', 'Unknown', 'zh-cn, zh', '[δ֪IP0801]', 'http://q.yunmoban.cn', '/flow.php?step=login', '/captcha.php'),
(1406198041, '180.153.206.30', 1, 'Unknow browser', 'Unknown', 'zh-cn, zh', '[δ֪IP0801]', 'http://q.yunmoban.cn', '/flow.php?step=login', '/flow.php'),
(1406198103, '183.156.10.1', 4, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', 'http://q.yunmoban.cn', '/flow.php', '/mobile/index.php'),
(1406198121, '183.156.10.1', 5, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', 'http://q.yunmoban.cn', '/flow.php', '/flow.php'),
(1406198123, '180.153.214.180', 1, 'Unknow browser', 'Unknown', 'zh-cn, zh', '[δ֪IP0801]', 'http://q.yunmoban.cn', '/flow.php', '/search.php'),
(1406198123, '180.153.206.25', 1, 'Unknow browser', 'Unknown', 'zh-cn, zh', '[δ֪IP0801]', 'http://q.yunmoban.cn', '/flow.php', '/search.php'),
(1406203949, '183.136.190.62', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/index.php'),
(1406211288, '101.226.62.81', 1, 'Unknow browser', 'Unknown', '', 'IANA', '', '', '/wechat/weixin.php'),
(1406212352, '140.207.54.74', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406212358, '140.207.54.74', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406212363, '140.207.54.74', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406212367, '27.18.43.235', 7, 'Safari 534.30', 'Linux', 'zh-CN, en-US', 'IANA', '', '', '/mobile/goods.php'),
(1406214160, '116.224.137.131', 1, 'Safari 534.30', 'Linux', 'zh-CN, en-US', '', '', '', '/mobile/user.php'),
(1406214628, '140.207.54.78', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406214628, '1.28.41.249', 1, 'Safari 534.30', 'Linux', 'zh-CN, en-US', 'IANA', '', '', '/index.php'),
(1406214629, '1.28.41.249', 2, 'Safari 534.30', 'Linux', 'zh-CN, en-US', 'IANA', '', '', '/mobile/index.php'),
(1406214644, '140.207.54.78', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406218084, '110.75.105.93', 1, 'Internet Explorer 8.0', 'Windows NT', 'en-US,*', 'IANA', '', '', '/mobile/index.php'),
(1406218095, '110.75.216.251', 1, 'Internet Explorer 8.0', 'Windows NT', 'en-US,*', 'IANA', '', '', '/mobile/index.php'),
(1406218116, '110.75.105.89', 1, 'Internet Explorer 8.0', 'Windows NT', 'en-US,*', 'IANA', '', '', '/index.php'),
(1406218121, '110.75.105.88', 1, 'Internet Explorer 8.0', 'Windows NT', 'en-US,*', 'IANA', '', '', '/index.php'),
(1406222069, '140.207.54.79', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406222086, '223.104.2.2', 1, 'Unknow browser', 'Unknown', 'zh-cn', 'IANA', '', '', '/mobile/user.php'),
(1406222091, '223.104.2.2', 2, 'Unknow browser', 'Unknown', 'zh-cn', 'IANA', '', '', '/index.php'),
(1406222091, '223.104.2.2', 3, 'Unknow browser', 'Unknown', 'zh-cn', 'IANA', '', '', '/mobile/index.php'),
(1406222220, '223.104.2.2', 1, 'Safari 537.36', 'Windows XP', 'zh-CN,zh', 'IANA', '', '', '/index.php'),
(1406223523, '101.226.62.81', 1, 'Unknow browser', 'Unknown', '', 'IANA', '', '', '/wechat/weixin.php'),
(1406223539, '101.226.62.81', 1, 'Unknow browser', 'Unknown', '', 'IANA', '', '', '/wechat/weixin.php'),
(1406223542, '111.121.24.101', 1, 'Unknow browser', 'Unknown', 'zh-cn', 'IANA', '', '', '/mobile/user.php'),
(1406223564, '101.226.62.81', 1, 'Unknow browser', 'Unknown', '', 'IANA', '', '', '/wechat/weixin.php'),
(1406223564, '111.121.24.101', 2, 'Unknow browser', 'Unknown', 'zh-cn', 'IANA', '', '', '/index.php'),
(1406223564, '111.121.24.101', 3, 'Unknow browser', 'Unknown', 'zh-cn', 'IANA', '', '', '/mobile/index.php'),
(1406223797, '101.226.62.81', 1, 'Unknow browser', 'Unknown', '', 'IANA', '', '', '/wechat/weixin.php'),
(1406223814, '101.226.62.81', 1, 'Unknow browser', 'Unknown', '', 'IANA', '', '', '/wechat/weixin.php'),
(1406223818, '101.226.62.81', 1, 'Unknow browser', 'Unknown', '', 'IANA', '', '', '/wechat/weixin.php'),
(1406223819, '111.121.24.101', 4, 'Unknow browser', 'Unknown', 'zh-cn', 'IANA', '', '', '/index.php'),
(1406223819, '111.121.24.101', 5, 'Unknow browser', 'Unknown', 'zh-cn', 'IANA', '', '', '/mobile/index.php'),
(1406223852, '111.121.24.101', 6, 'Unknow browser', 'Unknown', 'zh-cn', 'IANA', 'http://q.yunmoban.cn', '/mobile/', '/index.php'),
(1406223852, '111.121.24.101', 7, 'Unknow browser', 'Unknown', 'zh-cn', 'IANA', 'http://q.yunmoban.cn', '/mobile/', '/mobile/index.php'),
(1406223950, '113.133.14.96', 1, 'FireFox 31.0', 'Windows NT', 'zh-cn,zh', 'IANA', '', '', '/index.php'),
(1406224178, '140.207.54.78', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406224182, '120.193.223.139', 22, 'Safari 534.30', 'Linux', 'zh-CN, en-US', 'APNIC', '', '', '/mobile/goods.php'),
(1406224609, '1.182.219.218', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/mobile/index.php'),
(1406224715, '111.175.186.26', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/mobile/index.php'),
(1406224826, '222.244.94.39', 1, 'Safari 537.1', 'Windows NT', 'zh-CN,zh', '', '', '', '/mobile/index.php'),
(1406224957, '118.116.107.192', 8, 'FireFox 30.0', 'Windows NT', 'zh-cn,zh', '', '', '', '/mobile/index.php'),
(1406225458, '118.120.97.219', 1, 'Safari 537.1', 'Windows NT', 'zh-CN,zh', '', '', '', '/mobile/index.php'),
(1406225472, '118.120.97.219', 2, 'Safari 537.1', 'Windows NT', 'zh-CN,zh', '', '', '', '/index.php'),
(1406225940, '123.174.247.83', 1, 'Safari 537.36', 'Windows XP', 'zh-CN,zh', 'ɽ', '', '', '/mobile/index.php'),
(1406226289, '101.226.62.82', 1, 'Unknow browser', 'Unknown', '', 'IANA', '', '', '/wechat/weixin.php'),
(1406226293, '101.226.62.82', 1, 'Unknow browser', 'Unknown', '', 'IANA', '', '', '/wechat/weixin.php'),
(1406226301, '101.226.62.82', 1, 'Unknow browser', 'Unknown', '', 'IANA', '', '', '/wechat/weixin.php'),
(1406226308, '49.80.219.94', 1, 'Internet Explorer 10.0', 'Windows NT', 'zh-CN', 'IANA', '', '', '/mobile/goods.php'),
(1406226498, '49.80.219.94', 2, 'Internet Explorer 10.0', 'Windows NT', 'zh-CN', 'IANA', '', '', '/index.php'),
(1406226498, '49.80.219.94', 3, 'Internet Explorer 10.0', 'Windows NT', 'zh-CN', 'IANA', '', '', '/mobile/index.php'),
(1406226635, '101.226.62.82', 1, 'Unknow browser', 'Unknown', '', 'IANA', '', '', '/wechat/weixin.php'),
(1406226644, '101.226.62.82', 1, 'Unknow browser', 'Unknown', '', 'IANA', '', '', '/wechat/weixin.php'),
(1406226935, '60.168.255.4', 1, 'Safari 537.36', 'Windows XP', 'zh-CN,zh', '', 'http://www.moke8.com', '/demo.php?url=http://www.yunmoban.cn/goods-130.html', '/index.php'),
(1406227043, '58.211.87.98', 1, 'Safari 537.1', 'Windows NT', 'zh-CN,zh', '', '', '', '/mobile/index.php'),
(1406227077, '180.153.206.26', 1, 'Unknow browser', 'Unknown', 'zh-cn, zh', '[δ֪IP0801]', 'http://www.sogou.com', '/', '/mobile/affiche.php'),
(1406227194, '101.226.62.82', 1, 'Unknow browser', 'Unknown', '', 'IANA', '', '', '/wechat/weixin.php'),
(1406227674, '183.63.218.196', 1, 'Safari 537.1', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/index.php'),
(1406229217, '140.207.54.73', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406229228, '113.118.168.142', 1, 'Safari 534.30', 'Linux', 'zh-CN, en-US', 'IANA', '', '', '/index.php'),
(1406229228, '113.118.168.142', 2, 'Safari 534.30', 'Linux', 'zh-CN, en-US', 'IANA', '', '', '/mobile/index.php'),
(1406229328, '180.173.95.210', 1, 'FireFox 30.0', 'Windows XP', 'zh-cn,zh', '[δ֪IP0801]', '', '', '/index.php'),
(1406229330, '113.118.168.142', 1, 'Safari 534.30', 'Linux', 'zh-CN, en-US', 'IANA', '', '', '/mobile/flow.php'),
(1406229382, '113.107.244.4', 1, 'Safari 7534.48.3', 'Unknown', 'zh-CN,zh', 'IANA', '', '', '/mobile/flow.php'),
(1406229386, '113.107.244.4', 2, 'Safari 7534.48.3', 'Unknown', 'zh-CN,zh', 'IANA', '', '', '/index.php'),
(1406229386, '113.107.244.4', 3, 'Safari 7534.48.3', 'Unknown', 'zh-CN,zh', 'IANA', '', '', '/mobile/index.php'),
(1406229398, '119.147.146.192', 1, 'Internet Explorer 6.0', 'Windows XP', 'zh-CN,zh', 'APNIC', '', '', '/mobile/flow.php'),
(1406229549, '113.118.168.142', 3, 'Safari 534.30', 'Linux', 'zh-CN, en-US', 'IANA', '', '', '/index.php'),
(1406229549, '113.118.168.142', 4, 'Safari 534.30', 'Linux', 'zh-CN, en-US', 'IANA', '', '', '/mobile/index.php'),
(1406229552, '113.118.168.142', 5, 'Safari 534.30', 'Linux', 'zh-CN, en-US', 'IANA', 'http://q.yunmoban.cn', '/mobile/', '/index.php'),
(1406229552, '113.118.168.142', 6, 'Safari 534.30', 'Linux', 'zh-CN, en-US', 'IANA', 'http://q.yunmoban.cn', '/mobile/', '/mobile/index.php'),
(1406229553, '180.173.95.210', 2, 'FireFox 30.0', 'Windows XP', 'zh-cn,zh', '[δ֪IP0801]', '', '', '/mobile/index.php'),
(1406229589, '113.118.168.142', 7, 'Safari 534.30', 'Linux', 'zh-CN, en-US', 'IANA', '', '', '/index.php'),
(1406229589, '113.118.168.142', 8, 'Safari 534.30', 'Linux', 'zh-CN, en-US', 'IANA', '', '', '/mobile/index.php'),
(1406229672, '140.207.54.74', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406229676, '140.207.54.74', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406229684, '140.207.54.74', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406229726, '120.193.223.139', 23, 'Safari 534.30', 'Linux', 'zh-CN, en-US', 'APNIC', '', '', '/mobile/goods.php'),
(1406229783, '180.173.95.210', 3, 'FireFox 30.0', 'Windows XP', 'zh-cn,zh', '[δ֪IP0801]', 'http://q.yunmoban.cn', '/', '/goods.php'),
(1406229869, '180.173.95.210', 4, 'FireFox 30.0', 'Windows XP', 'zh-cn,zh', '[δ֪IP0801]', '', '', '/mobile/index.php'),
(1406229930, '180.173.95.210', 1, 'Safari 534.30', 'Linux', 'zh-CN, en-US', '[δ֪IP0801]', '', '', '/mobile/index.php'),
(1406229988, '180.173.95.210', 2, 'Safari 534.30', 'Linux', 'zh-CN, en-US', '[δ֪IP0801]', 'http://q.yunmoban.cn', '/mobile/index.php', '/index.php'),
(1406229989, '180.173.95.210', 3, 'Safari 534.30', 'Linux', 'zh-CN, en-US', '[δ֪IP0801]', '', '', '/mobile/index.php'),
(1406229999, '180.173.95.210', 4, 'Safari 534.30', 'Linux', 'zh-CN, en-US', '[δ֪IP0801]', 'http://q.yunmoban.cn', '/mobile/', '/index.php'),
(1406229999, '180.173.95.210', 5, 'Safari 534.30', 'Linux', 'zh-CN, en-US', '[δ֪IP0801]', 'http://q.yunmoban.cn', '/mobile/', '/mobile/index.php'),
(1406230035, '101.226.62.83', 1, 'Unknow browser', 'Unknown', '', 'IANA', '', '', '/wechat/weixin.php'),
(1406230044, '101.226.62.83', 1, 'Unknow browser', 'Unknown', '', 'IANA', '', '', '/wechat/weixin.php'),
(1406230047, '120.36.189.5', 6, 'Safari 534.30', 'Linux', 'zh-CN, en-US', 'APNIC', '', '', '/mobile/user.php'),
(1406230084, '101.226.62.86', 1, 'Unknow browser', 'Unknown', '', 'IANA', '', '', '/wechat/weixin.php'),
(1406230125, '101.226.62.82', 1, 'Unknow browser', 'Unknown', '', 'IANA', '', '', '/wechat/weixin.php'),
(1406230128, '116.224.137.131', 1, 'Safari 534.30', 'Linux', 'zh-CN, en-US', '', '', '', '/mobile/user.php'),
(1406230152, '101.226.62.82', 1, 'Unknow browser', 'Unknown', '', 'IANA', '', '', '/wechat/weixin.php'),
(1406230160, '101.226.62.82', 1, 'Unknow browser', 'Unknown', '', 'IANA', '', '', '/wechat/weixin.php'),
(1406230166, '101.226.62.82', 1, 'Unknow browser', 'Unknown', '', 'IANA', '', '', '/wechat/weixin.php'),
(1406230218, '113.107.244.4', 4, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/index.php'),
(1406230245, '1.182.219.218', 1, 'Internet Explorer 9.0', 'Windows NT', 'zh-CN', 'IANA', '', '', '/mobile/index.php'),
(1406230290, '101.226.62.85', 1, 'Unknow browser', 'Unknown', '', 'IANA', '', '', '/wechat/weixin.php'),
(1406230300, '116.224.137.131', 2, 'Safari 534.30', 'Linux', 'zh-CN, en-US', '', 'http://q.yunmoban.cn', '/mobile/user.php?act=logout', '/mobile/index.php'),
(1406230319, '116.224.137.131', 3, 'Safari 534.30', 'Linux', 'zh-CN, en-US', '', 'http://q.yunmoban.cn', '/mobile/user.php?act=logout', '/mobile/index.php'),
(1406230337, '101.226.62.82', 1, 'Unknow browser', 'Unknown', '', 'IANA', '', '', '/wechat/weixin.php'),
(1406230429, '101.226.62.82', 1, 'Unknow browser', 'Unknown', '', 'IANA', '', '', '/wechat/weixin.php'),
(1406230615, '101.226.62.81', 1, 'Unknow browser', 'Unknown', '', 'IANA', '', '', '/wechat/weixin.php'),
(1406230618, '101.226.62.81', 1, 'Unknow browser', 'Unknown', '', 'IANA', '', '', '/wechat/weixin.php'),
(1406230621, '116.224.137.131', 1, 'Safari 534.30', 'Linux', 'zh-CN, en-US', '', '', '', '/mobile/user.php'),
(1406230628, '116.224.137.131', 2, 'Safari 534.30', 'Linux', 'zh-CN, en-US', '', 'http://q.yunmoban.cn', '/mobile/user.php?act=logout', '/mobile/index.php'),
(1406230997, '110.75.105.142', 1, 'Internet Explorer 8.0', 'Windows NT', 'en-US,*', 'IANA', '', '', '/mobile/index.php'),
(1406231008, '110.75.216.254', 1, 'Internet Explorer 8.0', 'Windows NT', 'en-US,*', 'IANA', '', '', '/mobile/index.php'),
(1406231183, '140.207.54.74', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406231187, '140.207.54.74', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406231196, '140.207.54.75', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406231236, '140.207.54.75', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406231267, '113.118.168.142', 9, 'Safari 534.30', 'Linux', 'zh-CN, en-US', 'IANA', 'http://q.yunmoban.cn', '/mobile/user.php?act=logout', '/mobile/index.php'),
(1406231295, '140.207.54.74', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406231309, '110.75.105.73', 1, 'Internet Explorer 8.0', 'Windows NT', 'en-US,*', 'IANA', '', '', '/mobile/index.php'),
(1406231392, '101.226.62.82', 1, 'Unknow browser', 'Unknown', '', 'IANA', '', '', '/wechat/weixin.php'),
(1406231395, '183.156.3.226', 18, 'Safari 534.30', 'Linux', 'zh-CN, en-US', '[δ֪IP0801]', '', '', '/mobile/user.php'),
(1406231400, '180.173.95.210', 5, 'FireFox 30.0', 'Windows XP', 'zh-cn,zh', '[δ֪IP0801]', '', '', '/index.php'),
(1406231536, '140.207.54.74', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406234777, '113.107.244.4', 10, 'Safari 534.30', 'Linux', 'zh-CN, en-US', 'IANA', '', '', '/mobile/user.php'),
(1406234782, '140.207.54.73', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406234794, '140.207.54.74', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406234804, '140.207.54.74', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406234809, '140.207.54.74', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406234823, '140.207.54.75', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406234828, '140.207.54.74', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406234832, '140.207.54.74', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406234840, '140.207.54.74', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406234847, '140.207.54.74', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406234847, '113.107.244.4', 11, 'Safari 534.30', 'Linux', 'zh-CN, en-US', 'IANA', '', '', '/index.php'),
(1406234847, '113.107.244.4', 12, 'Safari 534.30', 'Linux', 'zh-CN, en-US', 'IANA', '', '', '/mobile/index.php'),
(1406234876, '113.107.244.4', 13, 'Safari 534.30', 'Linux', 'zh-CN, en-US', 'IANA', 'http://q.yunmoban.cn', '/mobile/article_cat.php?id=3', '/index.php'),
(1406234877, '113.107.244.4', 14, 'Safari 534.30', 'Linux', 'zh-CN, en-US', 'IANA', 'http://q.yunmoban.cn', '/mobile/article_cat.php?id=3', '/mobile/index.php'),
(1406234955, '140.207.54.74', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406234957, '140.207.54.74', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406234960, '140.207.54.74', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406234960, '113.107.244.4', 15, 'Safari 534.30', 'Linux', 'zh-CN, en-US', 'IANA', '', '', '/index.php'),
(1406234960, '113.107.244.4', 16, 'Safari 534.30', 'Linux', 'zh-CN, en-US', 'IANA', '', '', '/mobile/index.php'),
(1406235805, '42.156.139.18', 1, 'Unknow browser', 'Unknown', 'zh-cn,en-us,zh-tw,en', 'IANA', '', '', '/index.php'),
(1406235818, '140.207.54.74', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406235824, '140.207.54.74', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406235824, '113.107.244.4', 17, 'Safari 534.30', 'Linux', 'zh-CN, en-US', 'IANA', '', '', '/index.php'),
(1406235824, '113.107.244.4', 18, 'Safari 534.30', 'Linux', 'zh-CN, en-US', 'IANA', '', '', '/mobile/index.php'),
(1406235831, '113.107.244.4', 19, 'Safari 534.30', 'Linux', 'zh-CN, en-US', 'IANA', 'http://q.yunmoban.cn', '/mobile/', '/index.php'),
(1406235831, '113.107.244.4', 20, 'Safari 534.30', 'Linux', 'zh-CN, en-US', 'IANA', 'http://q.yunmoban.cn', '/mobile/', '/mobile/index.php'),
(1406235851, '140.207.54.74', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406235851, '113.107.244.4', 21, 'Safari 534.30', 'Linux', 'zh-CN, en-US', 'IANA', '', '', '/index.php'),
(1406235851, '113.107.244.4', 22, 'Safari 534.30', 'Linux', 'zh-CN, en-US', 'IANA', '', '', '/mobile/index.php'),
(1406235998, '140.207.54.75', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406235998, '113.107.244.4', 23, 'Safari 534.30', 'Linux', 'zh-CN, en-US', 'IANA', '', '', '/index.php'),
(1406235998, '113.107.244.4', 24, 'Safari 534.30', 'Linux', 'zh-CN, en-US', 'IANA', '', '', '/mobile/index.php'),
(1406236056, '140.207.54.74', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406236059, '140.207.54.74', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406236065, '140.207.54.74', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406236072, '140.207.54.74', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406236075, '140.207.54.74', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406236081, '140.207.54.74', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406236113, '140.207.54.74', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406236284, '113.107.244.4', 2, 'Safari 534.30', 'Linux', 'zh-CN, en-US', 'IANA', '', '', '/mobile/flow.php'),
(1406236287, '124.134.54.146', 1, 'FireFox 31.0', 'Windows XP', 'zh-cn,zh', 'ɽ', 'http://www.yunmoban.cn', '/goods-130.html', '/index.php'),
(1406236297, '116.224.137.131', 64, 'Safari 537.36', 'Windows XP', 'zh-CN,zh', '', 'http://www.yunmoban.cn', '/goods-130.html', '/index.php'),
(1406236934, '113.82.131.7', 1, 'Safari 537.1', 'Windows XP', 'zh-CN,zh', 'IANA', '', '', '/mobile/index.php'),
(1406236948, '113.82.131.7', 2, 'Safari 537.1', 'Windows XP', 'zh-CN,zh', 'IANA', '', '', '/index.php'),
(1406238837, '101.226.62.81', 1, 'Unknow browser', 'Unknown', '', 'IANA', '', '', '/wechat/weixin.php'),
(1406238843, '101.226.62.81', 1, 'Unknow browser', 'Unknown', '', 'IANA', '', '', '/wechat/weixin.php'),
(1406238862, '101.226.62.80', 1, 'Unknow browser', 'Unknown', '', 'IANA', '', '', '/wechat/weixin.php'),
(1406238875, '101.226.62.81', 1, 'Unknow browser', 'Unknown', '', 'IANA', '', '', '/wechat/weixin.php'),
(1406238882, '101.226.62.81', 1, 'Unknow browser', 'Unknown', '', 'IANA', '', '', '/wechat/weixin.php'),
(1406238894, '101.226.33.200', 1, 'Unknow browser', 'Unknown', 'zh-cn, zh', 'IANA', '', '', '/category.php'),
(1406238900, '116.224.137.131', 1, 'Safari 534.30', 'Linux', 'zh-CN, en-US', '', '', '', '/mobile/user.php'),
(1406238997, '116.224.137.131', 2, 'Safari 534.30', 'Linux', 'zh-CN, en-US', '', 'http://q.yunmoban.cn', '/mobile/user.php?act=logout', '/mobile/index.php'),
(1406239010, '101.226.62.81', 1, 'Unknow browser', 'Unknown', '', 'IANA', '', '', '/wechat/weixin.php'),
(1406239016, '101.226.62.81', 1, 'Unknow browser', 'Unknown', '', 'IANA', '', '', '/wechat/weixin.php'),
(1406239022, '101.226.62.77', 1, 'Unknow browser', 'Unknown', '', 'IANA', '', '', '/wechat/weixin.php'),
(1406239104, '101.226.62.82', 1, 'Unknow browser', 'Unknown', '', 'IANA', '', '', '/wechat/weixin.php'),
(1406239109, '115.28.126.18', 1, 'FireFox 3.5.16', 'Windows XP', '', 'IANA', '', '', '/index.php'),
(1406239110, '101.226.62.82', 1, 'Unknow browser', 'Unknown', '', 'IANA', '', '', '/wechat/weixin.php'),
(1406239115, '101.226.62.82', 1, 'Unknow browser', 'Unknown', '', 'IANA', '', '', '/wechat/weixin.php'),
(1406239118, '116.224.137.131', 1, 'Safari 534.30', 'Linux', 'zh-CN, en-US', '', '', '', '/mobile/user.php'),
(1406239124, '116.224.137.131', 2, 'Safari 534.30', 'Linux', 'zh-CN, en-US', '', 'http://q.yunmoban.cn', '/mobile/user.php?act=logout', '/mobile/index.php'),
(1406239139, '101.226.62.82', 1, 'Unknow browser', 'Unknown', '', 'IANA', '', '', '/wechat/weixin.php'),
(1406239146, '101.226.62.82', 1, 'Unknow browser', 'Unknown', '', 'IANA', '', '', '/wechat/weixin.php'),
(1406239152, '101.226.62.82', 1, 'Unknow browser', 'Unknown', '', 'IANA', '', '', '/wechat/weixin.php'),
(1406241011, '101.226.62.83', 1, 'Unknow browser', 'Unknown', '', 'IANA', '', '', '/wechat/weixin.php'),
(1406241013, '120.36.189.5', 7, 'Safari 534.30', 'Linux', 'zh-CN, en-US', 'APNIC', '', '', '/mobile/user.php'),
(1406241710, '140.207.54.78', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406241846, '140.207.54.80', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406241848, '218.16.140.28', 47, 'Safari 534.30', 'Linux', 'zh-CN, en-US', '', '', '', '/index.php'),
(1406241848, '218.16.140.28', 48, 'Safari 534.30', 'Linux', 'zh-CN, en-US', '', '', '', '/mobile/index.php'),
(1406241943, '140.207.54.78', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406242962, '140.207.54.74', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406242971, '113.118.168.142', 25, 'Safari 534.30', 'Linux', 'zh-CN, en-US', 'IANA', '', '', '/mobile/goods.php'),
(1406243195, '113.118.219.3', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/mobile/index.php'),
(1406243443, '113.118.219.3', 2, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/index.php'),
(1406244506, '121.79.131.186', 1, 'Unknow browser', 'Windows NT', 'en-US', 'APNIC', '', '', '/index.php'),
(1406244542, '121.79.131.186', 2, 'Unknow browser', 'Windows NT', 'en-US', 'APNIC', '', '', '/mobile/index.php'),
(1406244668, '180.153.181.171', 1, 'Internet Explorer 9.0', 'Windows NT', 'zh-CN', '[δ֪IP0801]', 'http://q.yunmoban.cn', '/mobile/', '/mobile/index.php'),
(1406245798, '180.153.206.23', 1, 'Unknow browser', 'Unknown', 'zh-cn, zh', '[δ֪IP0801]', 'http://q.yunmoban.cn', '/mobile/goods-19.html', '/mobile/captcha.php'),
(1406245842, '180.153.163.206', 1, 'Unknow browser', 'Unknown', 'zh-cn, zh', '[δ֪IP0801]', 'http://q.yunmoban.cn', '/mobile/goods-19.html', '/mobile/goods.php'),
(1406245856, '180.153.201.214', 1, 'Unknow browser', 'Unknown', 'zh-cn, zh', '[δ֪IP0801]', 'http://q.yunmoban.cn', '/mobile/flow.php?step=cart', '/mobile/flow.php'),
(1406245871, '180.153.163.191', 1, 'Unknow browser', 'Unknown', 'zh-cn, zh', '[δ֪IP0801]', 'http://q.yunmoban.cn', '/mobile/', '/mobile/goods.php'),
(1406245953, '180.153.206.22', 1, 'Unknow browser', 'Unknown', 'zh-cn, zh', '[δ֪IP0801]', 'http://q.yunmoban.cn', '/mobile/goods-19.html', '/mobile/flow.php'),
(1406246264, '140.207.54.78', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406246274, '140.207.54.78', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406246278, '140.207.54.78', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406246282, '140.207.54.78', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406246290, '140.207.54.78', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406246293, '140.207.54.78', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406246296, '140.207.54.77', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406246305, '140.207.54.78', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406246336, '140.207.54.78', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406246339, '116.224.137.131', 1, 'Safari 534.30', 'Linux', 'zh-CN, en-US', '', '', '', '/mobile/user.php'),
(1406246822, '116.224.137.131', 65, 'Safari 537.36', 'Windows XP', 'zh-CN,zh', '', '', '', '/index.php'),
(1406246964, '140.207.54.79', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406246975, '140.207.54.79', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406246980, '121.207.141.99', 1, 'Safari 534.30', 'Linux', 'zh-CN, en-US', '', '', '', '/mobile/goods.php'),
(1406247009, '140.207.54.78', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406247029, '140.207.54.78', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406247053, '140.207.54.79', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406247057, '140.207.54.79', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406247062, '140.207.54.79', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406247074, '140.207.54.79', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406247086, '140.207.54.79', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406247086, '121.207.141.99', 2, 'Safari 534.30', 'Linux', 'zh-CN, en-US', '', '', '', '/index.php'),
(1406247086, '121.207.141.99', 3, 'Safari 534.30', 'Linux', 'zh-CN, en-US', '', '', '', '/mobile/index.php'),
(1406247151, '140.207.54.76', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406247151, '121.207.141.99', 4, 'Safari 534.30', 'Linux', 'zh-CN, en-US', '', '', '', '/index.php'),
(1406247152, '121.207.141.99', 5, 'Safari 534.30', 'Linux', 'zh-CN, en-US', '', '', '', '/mobile/index.php'),
(1406247154, '121.207.141.99', 6, 'Safari 534.30', 'Linux', 'zh-CN, en-US', '', 'http://q.yunmoban.cn', '/mobile/', '/index.php'),
(1406247155, '121.207.141.99', 7, 'Safari 534.30', 'Linux', 'zh-CN, en-US', '', 'http://q.yunmoban.cn', '/mobile/', '/mobile/index.php'),
(1406247187, '140.207.54.76', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406247215, '140.207.54.78', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406247220, '140.207.54.79', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406247224, '140.207.54.79', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406247238, '140.207.54.79', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406247244, '140.207.54.79', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406247284, '140.207.54.78', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406247306, '140.207.54.78', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406247353, '140.207.54.78', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406247388, '140.207.54.78', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406247396, '122.242.72.57', 1, 'Safari 537.1', 'Windows NT', 'zh-CN,zh', '', '', '', '/index.php'),
(1406247414, '140.207.54.78', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406247422, '140.207.54.78', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406247445, '140.207.54.78', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406247694, '140.207.54.78', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406247732, '140.207.54.78', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406248362, '49.80.219.94', 1, 'FireFox 30.0', 'Windows XP', 'zh-cn,zh', 'IANA', '', '', '/mobile/index.php'),
(1406249398, '49.80.219.94', 2, 'FireFox 30.0', 'Windows XP', 'zh-cn,zh', 'IANA', '', '', '/index.php'),
(1406249679, '27.153.167.73', 1, 'Safari 537.36', 'Windows XP', 'zh-CN,zh', 'IANA', '', '', '/mobile/index.php'),
(1406250473, '101.226.33.205', 1, 'Unknow browser', 'Unknown', 'zh-cn, zh', 'IANA', '', '', '/article.php'),
(1406252286, '140.207.54.78', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406252301, '140.207.54.78', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406252340, '140.207.54.78', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406252427, '116.224.137.131', 66, 'Safari 537.36', 'Windows XP', 'zh-CN,zh', '', '', '', '/index.php'),
(1406253147, '122.230.64.219', 1, 'FireFox 32.0', 'Windows NT', 'zh-cn,zh', '', 'http://item.taobao.com', '/item.htm?spm=a230r.1.14.91.wEoikS&id=39305837789&ns=1', '/index.php'),
(1406253200, '140.207.54.78', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406253205, '140.207.54.78', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406253205, '116.224.137.131', 1, 'Safari 534.30', 'Linux', 'zh-CN, en-US', '', '', '', '/index.php'),
(1406253205, '116.224.137.131', 2, 'Safari 534.30', 'Linux', 'zh-CN, en-US', '', '', '', '/mobile/index.php'),
(1406253827, '140.207.54.78', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406254927, '116.224.137.131', 67, 'Safari 537.36', 'Windows XP', 'zh-CN,zh', '', 'http://q.yunmoban.cn', '/index.php', '/index.php'),
(1406255494, '119.32.195.230', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'APNIC', '', '', '/mobile/index.php'),
(1406258021, '101.226.89.117', 1, 'Unknow browser', 'Unknown', 'zh-cn, zh', 'IANA', '', '', '/user.php'),
(1406258039, '101.226.66.175', 1, 'Unknow browser', 'Unknown', 'zh-cn, zh', 'IANA', 'http://q.yunmoban.cn', '/mobile/goods-122.html', '/mobile/goods.php'),
(1406258113, '101.226.65.107', 1, 'Unknow browser', 'Unknown', 'zh-cn, zh', 'IANA', 'http://q.yunmoban.cn', '/mobile/goods-122.html', '/mobile/captcha.php'),
(1406258775, '101.226.66.179', 1, 'Unknow browser', 'Unknown', 'zh-cn, zh', 'IANA', '', '', '/goods.php'),
(1406258912, '112.64.235.89', 1, 'Unknow browser', 'Unknown', 'zh-cn, zh', 'IANA', '', '', '/category.php'),
(1406258922, '180.153.206.22', 1, 'Unknow browser', 'Unknown', 'zh-cn, zh', '[δ֪IP0801]', '', '', '/goods.php'),
(1406259018, '180.153.163.209', 1, 'Unknow browser', 'Unknown', 'zh-cn, zh', '[δ֪IP0801]', '', '', '/goods.php'),
(1406259253, '101.226.33.206', 1, 'Unknow browser', 'Unknown', 'zh-cn, zh', 'IANA', '', '', '/goods.php'),
(1406260106, '119.32.195.230', 2, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'APNIC', 'http://q.yunmoban.cn', '/mobile/flow.php?step=cart', '/mobile/goods.php'),
(1406260640, '180.153.206.16', 1, 'Unknow browser', 'Unknown', 'zh-cn, zh', '[δ֪IP0801]', 'http://q.yunmoban.cn', '/mobile/goods-122.html', '/mobile/captcha.php'),
(1406262840, '180.153.201.214', 1, 'Unknow browser', 'Unknown', 'zh-cn, zh', '[δ֪IP0801]', 'http://q.yunmoban.cn', '/mobile/cat_all.php', '/mobile/category.php'),
(1406265335, '140.207.54.79', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406266260, '220.166.255.170', 9, 'FireFox 30.0', 'Windows NT', 'zh-cn,zh', '', '', '', '/mobile/index.php'),
(1406267260, '171.35.71.51', 1, 'Internet Explorer 9.0', 'Windows NT', 'zh-CN', 'RIPE', '', '', '/mobile/index.php'),
(1406267829, '140.207.54.74', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406267871, '140.207.54.74', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406267882, '117.136.39.249', 1, 'Safari 534.30', 'Linux', 'zh-CN, en-US', '', '', '', '/index.php'),
(1406267884, '117.136.39.249', 2, 'Safari 534.30', 'Linux', 'zh-CN, en-US', '', '', '', '/mobile/index.php'),
(1406268129, '117.136.39.249', 3, 'Safari 534.30', 'Linux', 'zh-CN, en-US', '', 'http://q.yunmoban.cn', '/mobile/index.php', '/index.php'),
(1406268130, '117.136.39.249', 4, 'Safari 534.30', 'Linux', 'zh-CN, en-US', '', 'http://q.yunmoban.cn', '/mobile/index.php', '/mobile/index.php'),
(1406268297, '140.207.54.74', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406268315, '140.207.54.74', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406268326, '140.207.54.74', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406268413, '220.166.255.170', 10, 'FireFox 30.0', 'Windows NT', 'zh-cn,zh', '', '', '', '/mobile/index.php'),
(1406268977, '140.207.54.78', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406268996, '182.242.227.230', 1, 'Unknow browser', 'Unknown', 'zh-cn', '[δ֪IP0801]', '', '', '/index.php'),
(1406268996, '182.242.227.230', 2, 'Unknow browser', 'Unknown', 'zh-cn', '[δ֪IP0801]', '', '', '/mobile/index.php'),
(1406269652, '140.207.54.78', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406269658, '140.207.54.78', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406269668, '101.226.66.191', 1, 'Unknow browser', 'Unknown', 'zh-cn, zh', 'IANA', '', '', '/mobile/goods.php'),
(1406269773, '101.226.33.220', 1, 'Unknow browser', 'Unknown', 'zh-cn, zh', 'IANA', 'http://q.yunmoban.cn', '/mobile/goods-122.html', '/mobile/flow.php'),
(1406269890, '140.207.54.78', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406269913, '140.207.54.78', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406269919, '140.207.54.78', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406269925, '140.207.54.78', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406269959, '182.242.227.230', 3, 'Unknow browser', 'Unknown', 'zh-cn', '[δ֪IP0801]', '', '', '/index.php'),
(1406269959, '182.242.227.230', 4, 'Unknow browser', 'Unknown', 'zh-cn', '[δ֪IP0801]', '', '', '/mobile/index.php'),
(1406270122, '140.207.54.78', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406270136, '140.207.54.78', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406270303, '113.108.80.206', 1, 'Internet Explorer 9.0', 'Windows NT', 'zh-cn', 'IANA', 'http://q.yunmoban.cn', '/mobile', '/mobile/index.php'),
(1406270311, '171.8.179.89', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '', '', '', '/mobile/index.php'),
(1406270429, '140.207.54.77', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406270584, '140.207.54.78', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406270602, '182.242.227.230', 5, 'Unknow browser', 'Unknown', 'zh-cn', '[δ֪IP0801]', '', '', '/index.php'),
(1406270603, '182.242.227.230', 6, 'Unknow browser', 'Unknown', 'zh-cn', '[δ֪IP0801]', '', '', '/mobile/index.php'),
(1406270661, '42.120.145.127', 1, '', 'Unknown', '', 'IANA', '', '', '/index.php'),
(1406270664, '42.120.145.127', 2, '', 'Unknown', '', 'IANA', '', '', '/mobile/index.php'),
(1406270751, '140.207.54.78', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406270766, '140.207.54.78', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406270775, '140.207.54.77', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406270786, '140.207.54.78', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406270799, '140.207.54.78', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406270805, '140.207.54.78', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406270810, '140.207.54.78', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406270829, '140.207.54.78', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406270840, '140.207.54.78', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406270852, '140.207.54.78', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406270857, '140.207.54.78', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406270868, '140.207.54.78', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406270874, '140.207.54.78', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406270890, '140.207.54.78', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406270899, '140.207.54.78', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406273755, '140.207.54.74', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406273758, '183.37.191.63', 5, 'Safari 534.30', 'Linux', 'zh-CN, en-US', '[δ֪IP0801]', '', '', '/mobile/user.php'),
(1406274911, '140.207.54.79', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406274996, '118.88.58.77', 1, 'Safari 534.30', 'Linux', 'zh-CN, en-US', '', '', '', '/index.php'),
(1406274996, '118.88.58.77', 2, 'Safari 534.30', 'Linux', 'zh-CN, en-US', '', '', '', '/mobile/index.php'),
(1406275721, '123.13.38.4', 5, 'Unknow browser', 'Unknown', 'zh-cn', '', '', '', '/index.php'),
(1406275721, '123.13.38.4', 6, 'Unknow browser', 'Unknown', 'zh-cn', '', '', '', '/mobile/index.php'),
(1406275723, '140.207.54.78', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406275805, '123.13.38.4', 7, 'Unknow browser', 'Unknown', 'zh-cn', '', 'http://q.yunmoban.cn', '/mobile/index.php', '/index.php'),
(1406275805, '123.13.38.4', 8, 'Unknow browser', 'Unknown', 'zh-cn', '', 'http://q.yunmoban.cn', '/mobile/index.php', '/mobile/index.php'),
(1406275923, '140.207.54.78', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406275929, '140.207.54.76', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406280197, '140.207.54.78', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406281679, '140.207.54.78', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406281682, '182.242.227.230', 7, 'Unknow browser', 'Unknown', 'zh-cn', '[δ֪IP0801]', '', '', '/mobile/goods.php'),
(1406284796, '182.118.20.230', 1, 'Internet Explorer 9.0', 'Windows NT', 'zh-CN', '[δ֪IP0801]', 'http://q.yunmoban.cn', '/', '/index.php'),
(1406285299, '140.207.54.79', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406285309, '14.145.138.251', 1, 'Safari 534.30', 'Linux', 'zh-CN, en-US', '', '', '', '/index.php'),
(1406285309, '14.145.138.251', 2, 'Safari 534.30', 'Linux', 'zh-CN, en-US', '', '', '', '/mobile/index.php'),
(1406285410, '140.207.54.79', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406285442, '140.207.54.79', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406285453, '140.207.54.79', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406285454, '140.207.54.79', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406285466, '140.207.54.79', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406285473, '140.207.54.79', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406288615, '115.238.225.110', 1, 'Unknow browser', 'Unknown', 'en', 'IANA', '', '', '/index.php'),
(1406294819, '140.207.54.79', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406294918, '220.181.51.80', 1, 'FireFox 6.0.2', 'Windows XP', '', '', 'http://www.baidu.com', '/s?wd=q.yunmoban.cn&rsv_bp=0&rsv_spt=3&rsv_n=2&inputT=30014', '/index.php'),
(1406299416, '183.136.190.62', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/index.php'),
(1406300309, '180.153.181.153', 1, 'Internet Explorer 9.0', 'Windows NT', 'zh-CN', '[δ֪IP0801]', 'http://q.yunmoban.cn', '/', '/index.php'),
(1406302065, '140.207.54.74', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406302068, '117.28.220.2', 1, 'Safari 537.36', 'Linux', 'zh-CN,en-US', '', '', '', '/mobile/goods.php'),
(1406302170, '140.207.54.74', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406302172, '115.238.225.110', 1, 'Unknow browser', 'Unknown', 'en', 'IANA', '', '', '/index.php'),
(1406302180, '140.207.54.74', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406302184, '140.207.54.74', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406303168, '140.207.54.78', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406304810, '183.160.6.228', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', 'http://www.yunmoban.cn', '/goods-130.html', '/index.php'),
(1406306500, '27.153.165.129', 2, 'Safari 537.36', 'Windows XP', 'zh-CN,zh', 'IANA', '', '', '/mobile/user.php'),
(1406308823, '220.181.132.219', 1, 'Internet Explorer 8.0', 'Windows NT', '', '', 'http://q.yunmoban.cn', '/', '/index.php'),
(1406308843, '101.199.108.58', 1, 'Safari 536.11', '', 'en-us,en', 'IANA', '', '', '/index.php'),
(1406310289, '27.153.165.129', 3, 'Safari 537.36', 'Windows XP', 'zh-CN,zh', 'IANA', 'http://q.yunmoban.cn', '/mobile/user.php', '/mobile/user.php'),
(1406310951, '202.98.20.240', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '', '', '', '/mobile/index.php'),
(1406310997, '110.75.105.48', 1, 'Internet Explorer 8.0', 'Windows NT', 'en-US,*', 'IANA', '', '', '/mobile/index.php'),
(1406311270, '140.207.54.78', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406311288, '140.207.54.79', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406311312, '117.136.24.131', 1, 'Safari 534.30', 'Linux', 'zh-CN, en-US', '', '', '', '/index.php'),
(1406311312, '117.136.24.131', 2, 'Safari 534.30', 'Linux', 'zh-CN, en-US', '', '', '', '/mobile/index.php'),
(1406312779, '140.207.54.74', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406312792, '115.50.129.202', 1, 'Unknow browser', 'Unknown', 'zh-cn', 'IANA', '', '', '/index.php'),
(1406312793, '115.50.129.202', 2, 'Unknow browser', 'Unknown', 'zh-cn', 'IANA', '', '', '/mobile/index.php'),
(1406314796, '140.207.54.79', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406316356, '220.112.26.72', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '', '', '', '/index.php'),
(1406317809, '140.207.54.79', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406317823, '49.69.184.123', 1, 'Safari 534.30', 'Linux', 'zh-CN, en-US', 'IANA', '', '', '/index.php'),
(1406317823, '49.69.184.123', 2, 'Safari 534.30', 'Linux', 'zh-CN, en-US', 'IANA', '', '', '/mobile/index.php'),
(1406317891, '140.207.54.74', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406317894, '59.174.93.32', 8, 'Safari 534.30', 'Linux', 'zh-CN, en-US', '', '', '', '/mobile/goods.php'),
(1406318662, '140.207.54.79', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406318692, '140.207.54.79', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406318706, '140.207.54.79', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406318904, '140.207.54.77', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406318905, '10.154.223.201', 49, 'Safari 534.30', 'Linux', 'zh-CN, en-US', 'LAN', '', '', '/index.php'),
(1406318905, '10.154.223.201', 50, 'Safari 534.30', 'Linux', 'zh-CN, en-US', 'LAN', '', '', '/mobile/index.php'),
(1406318912, '140.207.54.79', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406318913, '10.154.223.201', 51, 'Safari 534.30', 'Linux', 'zh-CN, en-US', 'LAN', '', '', '/index.php'),
(1406318913, '10.154.223.201', 52, 'Safari 534.30', 'Linux', 'zh-CN, en-US', 'LAN', '', '', '/mobile/index.php'),
(1406318921, '10.154.223.201', 3, 'Safari 534.30;', 'Linux', 'zh-CN, en-US', 'LAN', '', '', '/mobile/index.php'),
(1406318967, '14.16.136.223', 8, 'Safari 537.1', 'Windows NT', 'zh-CN,zh', '', '', '', '/index.php'),
(1406319016, '10.154.223.201', 53, 'Safari 534.30', 'Linux', 'zh-CN, en-US', 'LAN', '', '', '/index.php'),
(1406319017, '10.154.223.201', 54, 'Safari 534.30', 'Linux', 'zh-CN, en-US', 'LAN', '', '', '/mobile/index.php'),
(1406319028, '140.207.54.79', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406319040, '140.207.54.79', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406319059, '140.207.54.76', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406319067, '140.207.54.79', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406319074, '140.207.54.79', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406319351, '117.93.18.104', 3, 'Safari 534.30', 'Linux', 'zh-CN, en-US', '', '', '', '/index.php'),
(1406319351, '117.93.18.104', 4, 'Safari 534.30', 'Linux', 'zh-CN, en-US', '', '', '', '/mobile/index.php'),
(1406319440, '117.93.18.104', 5, 'Safari 534.30', 'Linux', 'zh-CN, en-US', '', '', '', '/index.php'),
(1406319440, '117.93.18.104', 6, 'Safari 534.30', 'Linux', 'zh-CN, en-US', '', '', '', '/mobile/index.php'),
(1406319710, '111.192.45.23', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/mobile/index.php'),
(1406319880, '140.207.54.79', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406320375, '183.60.70.30', 1, 'Unknow browser', 'Unknown', 'zh-cn, zh', '[δ֪IP0801]', '', '', '/mobile/index.php'),
(1406321475, '110.211.51.68', 1, 'Safari 537.1', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/index.php'),
(1406321527, '110.211.51.68', 2, 'Safari 537.1', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/mobile/index.php'),
(1406322029, '180.153.206.32', 1, 'Unknow browser', 'Unknown', 'zh-cn, zh', '[δ֪IP0801]', 'http://q.yunmoban.cn', '/mobile/', '/mobile/goods.php'),
(1406322062, '112.65.193.14', 1, 'Unknow browser', 'Unknown', 'zh-cn, zh', 'IANA', 'http://q.yunmoban.cn', '/mobile/goods-17.html', '/mobile/captcha.php'),
(1406322120, '101.226.33.228', 1, 'Unknow browser', 'Unknown', 'zh-cn, zh', 'IANA', '', '', '/mobile/index.php'),
(1406322490, '183.224.195.8', 1, 'Safari 537.36', 'Windows XP', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/index.php'),
(1406322682, '183.224.195.8', 1, 'Safari 537.36', 'Linux', 'zh-CN,en-US', '[δ֪IP0801]', '', '', '/mobile/index.php'),
(1406322727, '113.108.70.13', 1, 'Unknow browser', 'Unknown', 'zh-cn, zh', 'IANA', '', '', '/mobile/article_cat.php'),
(1406322911, '180.153.201.66', 1, 'Unknow browser', 'Unknown', 'zh-cn, zh', '[δ֪IP0801]', 'http://q.yunmoban.cn', '/mobile/', '/mobile/user.php'),
(1406322919, '101.226.33.228', 1, 'Unknow browser', 'Unknown', 'zh-cn, zh', 'IANA', 'http://q.yunmoban.cn', '/mobile/cat_all.php', '/mobile/index.php'),
(1406322977, '101.226.33.218', 1, 'Unknow browser', 'Unknown', 'zh-cn, zh', 'IANA', 'http://q.yunmoban.cn', '/mobile/goods-17.html', '/mobile/captcha.php'),
(1406323032, '180.174.4.183', 1, 'Safari 528.16', 'Unknown', 'zh-cn,zh', '[δ֪IP0801]', '', '', '/index.php'),
(1406323032, '180.174.4.183', 2, 'Safari 528.16', 'Unknown', 'zh-cn,zh', '[δ֪IP0801]', '', '', '/mobile/index.php'),
(1406323042, '180.174.4.183', 1, 'Unknow browser', 'Windows 32', '', '[δ֪IP0801]', 'http://q.yunmoban.cn', '/mobile/flow.php', '/mobile/flow.php'),
(1406323063, '180.174.4.183', 1, 'Unknow browser', 'Windows 32', '', '[δ֪IP0801]', 'http://q.yunmoban.cn', '/mobile/flow.php?step=consignee', '/mobile/flow.php'),
(1406323066, '180.174.4.183', 1, 'Unknow browser', 'Windows 32', '', '[δ֪IP0801]', 'http://q.yunmoban.cn', '/mobile/flow.php?step=cart', '/mobile/flow.php'),
(1406323078, '180.174.4.183', 1, 'Unknow browser', 'Windows 32', '', '[δ֪IP0801]', 'http://q.yunmoban.cn', '/mobile/flow.php?step=consignee', '/mobile/flow.php'),
(1406323083, '180.153.214.178', 1, 'Unknow browser', 'Unknown', 'zh-cn, zh', '[δ֪IP0801]', 'http://q.yunmoban.cn', '/mobile/search.php?encode=YToyOntzOjU6ImludHJvIjtzOjM6ImhvdCI7czoxODoic2VhcmNoX2VuY29kZV90aW1lIjtpOjE0MDYzNDkzNzQ7fQ==', '/mobile/goods.php'),
(1406323107, '180.174.4.183', 1, 'Unknow browser', 'Windows 32', '', '[δ֪IP0801]', 'http://q.yunmoban.cn', '/mobile/user.php', '/mobile/user.php'),
(1406323577, '101.226.66.192', 1, 'Unknow browser', 'Unknown', 'zh-cn, zh', 'IANA', 'http://q.yunmoban.cn', '/mobile/', '/mobile/search.php'),
(1406323718, '101.226.89.115', 1, 'Unknow browser', 'Unknown', 'zh-cn, zh', 'IANA', 'http://q.yunmoban.cn', '/mobile/goods-17.html', '/mobile/cat_all.php'),
(1406327095, '49.80.222.121', 3, 'FireFox 30.0', 'Windows XP', 'zh-cn,zh', 'IANA', '', '', '/index.php'),
(1406327587, '49.69.184.123', 7, 'Safari 534.30', 'Linux', 'zh-CN, en-US', 'IANA', '', '', '/index.php'),
(1406327587, '49.69.184.123', 8, 'Safari 534.30', 'Linux', 'zh-CN, en-US', 'IANA', '', '', '/mobile/index.php'),
(1406329381, '180.153.181.144', 1, 'Internet Explorer 9.0', 'Windows NT', 'zh-CN', '[δ֪IP0801]', 'http://q.yunmoban.cn', '/mobile/flow.php?step=consignee', '/mobile/flow.php'),
(1406329804, '49.80.222.121', 4, 'FireFox 30.0', 'Windows XP', 'zh-cn,zh', 'IANA', 'http://q.yunmoban.cn', '/group_buy-21.html', '/category.php'),
(1406332201, '180.174.4.183', 1, 'Unknow browser', 'Windows 32', '', '[δ֪IP0801]', 'http://q.yunmoban.cn', '/mobile/user.php', '/mobile/user.php'),
(1406332201, '180.174.4.183', 3, 'Safari 528.16', 'Unknown', 'zh-cn,zh', '[δ֪IP0801]', 'http://q.yunmoban.cn', '/mobile/user.php', '/mobile/user.php');
INSERT INTO `ecs_stats` (`access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url`) VALUES
(1406332242, '180.174.4.183', 1, 'Unknow browser', 'Windows 32', '', '[δ֪IP0801]', 'http://q.yunmoban.cn', '/mobile/flow.php', '/mobile/flow.php'),
(1406332745, '115.226.14.178', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/index.php'),
(1406332796, '115.226.14.178', 1, 'Unknow browser', 'Unknown', 'zh-cn', 'IANA', '', '', '/mobile/index.php'),
(1406332816, '14.17.18.143', 1, 'Unknow browser', 'Unknown', 'zh-cn, zh', '', '', '', '/mobile/group_buy.php'),
(1406332825, '14.17.29.85', 1, 'Unknow browser', 'Unknown', 'zh-cn, zh', '', '', '', '/mobile/group_buy.php'),
(1406332848, '14.17.18.152', 1, 'Unknow browser', 'Unknown', 'zh-cn, zh', '', '', '', '/mobile/user.php'),
(1406333808, '101.226.33.216', 1, 'Unknow browser', 'Unknown', 'zh-cn, zh', 'IANA', 'http://tophack.net', '/dandan520houhouhou/index.php?key=&sstate=&sqz=&spr=&ssite=&sord=&skq=&page=8', '/mobile/myship.php'),
(1406334143, '119.129.209.249', 1, 'Internet Explorer 8.0', 'Windows XP', 'zh-cn', 'APNIC', '', '', '/index.php'),
(1406334144, '119.147.146.189', 1, 'Internet Explorer 6.0', 'Windows XP', 'zh-CN,zh', 'APNIC', '', '', '/index.php'),
(1406334177, '119.129.209.249', 2, 'Internet Explorer 8.0', 'Windows XP', 'zh-cn', 'APNIC', '', '', '/mobile/index.php'),
(1406334178, '119.147.146.195', 1, 'Internet Explorer 6.0', 'Windows XP', 'zh-CN,zh', 'APNIC', '', '', '/mobile/index.php'),
(1406334178, '119.147.146.195', 1, 'Internet Explorer 6.0', 'Windows XP', 'zh-CN,zh', 'APNIC', '', '', '/mobile/index.php'),
(1406337686, '121.9.95.109', 1, 'Safari 536.11', 'Windows NT', 'zh-CN,zh', '', '', '', '/index.php'),
(1406338703, '121.196.43.131', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/mobile/certi.php'),
(1406338757, '180.174.4.183', 68, 'Safari 537.36', 'Windows XP', 'zh-CN,zh', '[δ֪IP0801]', 'http://q.yunmoban.cn', '/miq/index.php?act=top', '/index.php'),
(1406338832, '140.207.54.78', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406338835, '180.174.4.183', 1, 'Safari 534.30', 'Linux', 'zh-CN, en-US', '[δ֪IP0801]', '', '', '/mobile/user.php'),
(1406338844, '140.207.54.78', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406338861, '140.207.54.78', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406338872, '140.207.54.78', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406338889, '140.207.54.78', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406338898, '140.207.54.78', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406338911, '140.207.54.78', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406338954, '140.207.54.78', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406338972, '140.207.54.78', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406339203, '175.49.217.210', 3, 'Safari 537.1', 'Windows XP', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/mobile/index.php'),
(1406339437, '110.89.63.72', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/index.php'),
(1406339523, '180.174.4.183', 69, 'Safari 537.36', 'Windows XP', 'zh-CN,zh', '[δ֪IP0801]', 'http://q.yunmoban.cn', '/', '/index.php'),
(1406342012, '140.207.54.78', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406342522, '220.165.243.42', 1, 'Safari 537.1', 'Windows XP', 'zh-CN,zh', '', '', '', '/mobile/index.php'),
(1406344250, '42.156.138.18', 1, 'Unknow browser', 'Unknown', 'zh-cn,en-us,zh-tw,en', 'IANA', '', '', '/goods.php'),
(1406344250, '42.156.137.18', 1, 'Unknow browser', 'Unknown', 'zh-cn,en-us,zh-tw,en', 'IANA', '', '', '/category.php'),
(1406344271, '42.120.161.18', 1, 'Unknow browser', 'Unknown', 'zh-cn,en-us,zh-tw,en', 'IANA', '', '', '/brand.php'),
(1406344271, '42.156.139.18', 1, 'Unknow browser', 'Unknown', 'zh-cn,en-us,zh-tw,en', 'IANA', '', '', '/category.php'),
(1406344284, '42.120.160.18', 1, 'Unknow browser', 'Unknown', 'zh-cn,en-us,zh-tw,en', 'IANA', '', '', '/category.php'),
(1406344290, '42.156.139.18', 1, 'Unknow browser', 'Unknown', 'zh-cn,en-us,zh-tw,en', 'IANA', '', '', '/category.php'),
(1406344290, '42.156.136.18', 1, 'Unknow browser', 'Unknown', 'zh-cn,en-us,zh-tw,en', 'IANA', '', '', '/category.php'),
(1406344309, '42.120.160.18', 1, 'Unknow browser', 'Unknown', 'zh-cn,en-us,zh-tw,en', 'IANA', '', '', '/category.php'),
(1406344309, '42.156.137.18', 1, 'Unknow browser', 'Unknown', 'zh-cn,en-us,zh-tw,en', 'IANA', '', '', '/brand.php'),
(1406344325, '42.120.161.18', 1, 'Unknow browser', 'Unknown', 'zh-cn,en-us,zh-tw,en', 'IANA', '', '', '/category.php'),
(1406344325, '42.156.138.18', 1, 'Unknow browser', 'Unknown', 'zh-cn,en-us,zh-tw,en', 'IANA', '', '', '/brand.php'),
(1406344341, '42.156.136.18', 1, 'Unknow browser', 'Unknown', 'zh-cn,en-us,zh-tw,en', 'IANA', '', '', '/category.php'),
(1406344341, '42.156.139.18', 1, 'Unknow browser', 'Unknown', 'zh-cn,en-us,zh-tw,en', 'IANA', '', '', '/brand.php'),
(1406344365, '42.156.137.18', 1, 'Unknow browser', 'Unknown', 'zh-cn,en-us,zh-tw,en', 'IANA', '', '', '/article_cat.php'),
(1406344366, '42.120.160.18', 1, 'Unknow browser', 'Unknown', 'zh-cn,en-us,zh-tw,en', 'IANA', '', '', '/category.php'),
(1406344383, '42.156.138.18', 1, 'Unknow browser', 'Unknown', 'zh-cn,en-us,zh-tw,en', 'IANA', '', '', '/category.php'),
(1406344383, '42.120.161.18', 1, 'Unknow browser', 'Unknown', 'zh-cn,en-us,zh-tw,en', 'IANA', '', '', '/category.php'),
(1406344420, '42.156.139.18', 1, 'Unknow browser', 'Unknown', 'zh-cn,en-us,zh-tw,en', 'IANA', '', '', '/category.php'),
(1406344420, '42.156.136.18', 1, 'Unknow browser', 'Unknown', 'zh-cn,en-us,zh-tw,en', 'IANA', '', '', '/category.php'),
(1406344488, '42.156.136.18', 1, 'Unknow browser', 'Unknown', 'zh-cn,en-us,zh-tw,en', 'IANA', '', '', '/category.php'),
(1406344488, '42.156.139.18', 1, 'Unknow browser', 'Unknown', 'zh-cn,en-us,zh-tw,en', 'IANA', '', '', '/category.php'),
(1406344761, '42.156.136.18', 1, 'Unknow browser', 'Unknown', 'zh-cn,en-us,zh-tw,en', 'IANA', '', '', '/category.php'),
(1406344761, '42.156.139.18', 1, 'Unknow browser', 'Unknown', 'zh-cn,en-us,zh-tw,en', 'IANA', '', '', '/category.php'),
(1406344805, '42.120.160.18', 1, 'Unknow browser', 'Unknown', 'zh-cn,en-us,zh-tw,en', 'IANA', '', '', '/brand.php'),
(1406344805, '42.156.137.18', 1, 'Unknow browser', 'Unknown', 'zh-cn,en-us,zh-tw,en', 'IANA', '', '', '/category.php'),
(1406344840, '42.156.138.18', 1, 'Unknow browser', 'Unknown', 'zh-cn,en-us,zh-tw,en', 'IANA', '', '', '/category.php'),
(1406344840, '42.120.161.18', 1, 'Unknow browser', 'Unknown', 'zh-cn,en-us,zh-tw,en', 'IANA', '', '', '/brand.php'),
(1406346058, '42.156.137.18', 1, 'Unknow browser', 'Unknown', 'zh-cn,en-us,zh-tw,en', 'IANA', '', '', '/category.php'),
(1406346058, '42.156.138.18', 1, 'Unknow browser', 'Unknown', 'zh-cn,en-us,zh-tw,en', 'IANA', '', '', '/brand.php'),
(1406346079, '42.156.139.18', 1, 'Unknow browser', 'Unknown', 'zh-cn,en-us,zh-tw,en', 'IANA', '', '', '/category.php'),
(1406346079, '42.120.161.18', 1, 'Unknow browser', 'Unknown', 'zh-cn,en-us,zh-tw,en', 'IANA', '', '', '/category.php'),
(1406346094, '42.120.160.18', 1, 'Unknow browser', 'Unknown', 'zh-cn,en-us,zh-tw,en', 'IANA', '', '', '/brand.php'),
(1406346094, '42.156.136.18', 1, 'Unknow browser', 'Unknown', 'zh-cn,en-us,zh-tw,en', 'IANA', '', '', '/category.php'),
(1406346129, '42.156.138.18', 1, 'Unknow browser', 'Unknown', 'zh-cn,en-us,zh-tw,en', 'IANA', '', '', '/category.php'),
(1406346129, '42.156.137.18', 1, 'Unknow browser', 'Unknown', 'zh-cn,en-us,zh-tw,en', 'IANA', '', '', '/category.php'),
(1406346139, '42.156.139.18', 1, 'Unknow browser', 'Unknown', 'zh-cn,en-us,zh-tw,en', 'IANA', '', '', '/goods.php'),
(1406346139, '42.120.161.18', 1, 'Unknow browser', 'Unknown', 'zh-cn,en-us,zh-tw,en', 'IANA', '', '', '/user.php'),
(1406346153, '42.156.136.18', 1, 'Unknow browser', 'Unknown', 'zh-cn,en-us,zh-tw,en', 'IANA', '', '', '/goods.php'),
(1406346154, '42.120.160.18', 1, 'Unknow browser', 'Unknown', 'zh-cn,en-us,zh-tw,en', 'IANA', '', '', '/category.php'),
(1406346172, '42.156.138.18', 1, 'Unknow browser', 'Unknown', 'zh-cn,en-us,zh-tw,en', 'IANA', '', '', '/article.php'),
(1406346172, '42.156.137.18', 1, 'Unknow browser', 'Unknown', 'zh-cn,en-us,zh-tw,en', 'IANA', '', '', '/category.php'),
(1406346188, '42.156.136.44', 1, 'Unknow browser', 'Unknown', 'zh-cn,en-us,zh-tw,en', 'IANA', '', '', '/index.php'),
(1406346190, '42.120.161.18', 1, 'Unknow browser', 'Unknown', 'zh-cn,en-us,zh-tw,en', 'IANA', '', '', '/article.php'),
(1406346190, '42.156.139.18', 1, 'Unknow browser', 'Unknown', 'zh-cn,en-us,zh-tw,en', 'IANA', '', '', '/category.php'),
(1406346202, '42.120.160.18', 1, 'Unknow browser', 'Unknown', 'zh-cn,en-us,zh-tw,en', 'IANA', '', '', '/category.php'),
(1406346202, '42.156.136.18', 1, 'Unknow browser', 'Unknown', 'zh-cn,en-us,zh-tw,en', 'IANA', '', '', '/category.php'),
(1406346224, '42.156.137.18', 1, 'Unknow browser', 'Unknown', 'zh-cn,en-us,zh-tw,en', 'IANA', '', '', '/category.php'),
(1406346224, '42.156.138.18', 1, 'Unknow browser', 'Unknown', 'zh-cn,en-us,zh-tw,en', 'IANA', '', '', '/category.php'),
(1406348897, '113.213.11.122', 1, 'Internet Explorer 8.0', 'Windows XP', 'zh-cn', 'IANA', '', '', '/mobile/index.php'),
(1406348985, '113.213.11.122', 3, 'Safari 534.30', 'Linux', 'zh-CN, en-US', 'IANA', '', '', '/mobile/index.php'),
(1406349062, '202.98.20.240', 1, 'Unknow browser', 'Unknown', 'zh-cn', '', '', '', '/mobile/index.php'),
(1406354929, '202.70.4.245', 1, 'Unknow browser', 'Unknown', 'zh-cn,zh', '', '', '', '/index.php'),
(1406357637, '10.52.96.79', 55, 'Safari 534.30', 'Linux', 'zh-CN, en-US', 'LAN', '', '', '/mobile/user.php'),
(1406358509, '113.213.11.122', 1, 'Safari 534.30', 'Linux', 'zh-CN, en-US', 'IANA', '', '', '/mobile/index.php'),
(1406359573, '101.28.175.83', 1, 'Safari 537.36', 'Windows XP', 'zh-CN,zh', 'IANA', '', '', '/mobile/index.php'),
(1406361179, '140.207.54.78', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406361766, '183.156.3.226', 5, 'Safari 534.30', 'Linux', 'zh-CN, en-US', '[δ֪IP0801]', '', '', '/mobile/group_buy.php'),
(1406366371, '110.155.68.59', 1, 'Safari 537.31', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/mobile/index.php'),
(1406367622, '140.207.54.78', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406367631, '140.207.54.78', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406367635, '140.207.54.78', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406367639, '140.207.54.78', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406367642, '183.237.8.240', 1, 'Safari 537.36', 'Linux', 'zh-CN,en-US', '[δ֪IP0801]', '', '', '/mobile/goods.php'),
(1406367681, '140.207.54.78', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406367686, '140.207.54.78', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406367686, '183.237.8.240', 2, 'Safari 537.36', 'Linux', 'zh-CN,en-US', '[δ֪IP0801]', '', '', '/index.php'),
(1406368714, '59.56.5.217', 1, 'Safari 537.1', 'Windows NT', 'zh-CN,zh', '', '', '', '/mobile/index.php'),
(1406368757, '59.56.5.217', 2, 'Safari 537.1', 'Windows NT', 'zh-CN,zh', '', 'http://q.yunmoban.cn', '/mobile/index.php', '/index.php'),
(1406368766, '59.56.5.217', 3, 'Safari 537.1', 'Windows NT', 'zh-CN,zh', '', '', '', '/mobile/index.php'),
(1406369599, '1.80.188.135', 1, 'Internet Explorer 10.0', 'Windows NT', 'zh-CN', 'IANA', '', '', '/index.php'),
(1406371857, '180.153.181.81', 1, 'Internet Explorer 9.0', 'Windows NT', 'zh-CN', '[δ֪IP0801]', 'http://q.yunmoban.cn', '/', '/index.php'),
(1406382486, '140.207.54.78', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406382496, '140.207.54.78', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406382500, '171.82.140.199', 1, 'Safari 533.1', 'Linux', 'zh-CN, en-US', 'RIPE', '', '', '/mobile/user.php'),
(1406382778, '140.207.54.78', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406384086, '123.125.71.78', 1, 'Unknow browser', 'Unknown', 'zh-cn,zh-tw', '', '', '', '/index.php'),
(1406386086, '220.181.108.169', 1, 'Unknow browser', 'Unknown', 'zh-cn,zh-tw', '', '', '', '/goods.php'),
(1406386768, '148.251.23.114', 1, 'Unknow browser', 'Unknown', 'zh', '[δ֪IP0801]', '', '', '/index.php'),
(1406388085, '123.125.71.112', 1, 'Unknow browser', 'Unknown', 'zh-cn,zh-tw', '', '', '', '/category.php'),
(1406390085, '220.181.108.157', 1, 'Unknow browser', 'Unknown', 'zh-cn,zh-tw', '', '', '', '/category.php'),
(1406392085, '123.125.71.115', 1, 'Unknow browser', 'Unknown', 'zh-cn,zh-tw', '', '', '', '/category.php'),
(1406394085, '123.125.71.85', 1, 'Unknow browser', 'Unknown', 'zh-cn,zh-tw', '', '', '', '/article_cat.php'),
(1406394846, '140.207.54.74', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406396085, '220.181.108.83', 1, 'Unknow browser', 'Unknown', 'zh-cn,zh-tw', '', '', '', '/category.php'),
(1406399017, '103.19.87.128', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/mobile/index.php'),
(1406399119, '140.207.54.79', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406399127, '58.54.145.230', 1, 'Safari 534.30', 'Linux', 'zh-CN, en-US', '', '', '', '/index.php'),
(1406399127, '58.54.145.230', 2, 'Safari 534.30', 'Linux', 'zh-CN, en-US', '', '', '', '/mobile/index.php'),
(1406399157, '140.207.54.79', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406399181, '140.207.54.79', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406399188, '140.207.54.79', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406399193, '140.207.54.79', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406399199, '140.207.54.79', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406399203, '140.207.54.79', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406399206, '140.207.54.79', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406399374, '140.207.54.80', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406399389, '140.207.54.79', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406399395, '140.207.54.79', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406399418, '140.207.54.79', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406399484, '140.207.54.79', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406399488, '140.207.54.79', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406399496, '140.207.54.79', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406399513, '140.207.54.79', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406402360, '27.115.22.206', 1, 'Safari 537.1', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/index.php'),
(1406402373, '27.115.22.206', 1, 'Unknow browser', 'Unknown', 'zh-cn', 'IANA', '', '', '/index.php'),
(1406402373, '27.115.22.206', 2, 'Unknow browser', 'Unknown', 'zh-cn', 'IANA', '', '', '/mobile/index.php'),
(1406402901, '58.251.207.101', 1, 'Safari 537.36', 'Windows XP', 'zh-CN,zh', '', 'http://www.yunmoban.cn', '/goods-130.html', '/index.php'),
(1406403071, '27.38.221.88', 2, 'Safari 537.36', 'Windows XP', 'zh-CN,zh', 'IANA', 'http://q.yunmoban.cn', '/category.php?id=3', '/goods.php'),
(1406403077, '58.251.207.101', 3, 'Safari 537.36', 'Windows XP', 'zh-CN,zh', '', 'http://q.yunmoban.cn', '/goods-23.html', '/captcha.php'),
(1406403086, '27.38.216.48', 4, 'Safari 537.36', 'Windows XP', 'zh-CN,zh', 'IANA', 'http://q.yunmoban.cn', '/goods-23.html', '/goods.php'),
(1406403318, '112.23.107.128', 1, 'Internet Explorer 8.0', 'Windows XP', 'zh-cn', 'IANA', 'http://www.yunmoban.cn', '/goods-130.html', '/index.php'),
(1406404224, '223.73.154.101', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/mobile/index.php'),
(1406404248, '223.73.154.101', 2, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/index.php'),
(1406406600, '180.153.211.190', 1, 'Unknow browser', 'Unknown', 'zh-cn, zh', '[δ֪IP0801]', 'http://www.sogou.com', '/', '/gallery.php'),
(1406407485, '140.207.54.74', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406407507, '117.136.12.192', 1, 'Safari 533.1', 'Linux', 'zh-CN, en-US', '', '', '', '/mobile/user.php'),
(1406407802, '117.136.12.192', 2, 'Safari 533.1', 'Linux', 'zh-CN, en-US', '', '', '', '/index.php'),
(1406407803, '117.136.12.192', 3, 'Safari 533.1', 'Linux', 'zh-CN, en-US', '', '', '', '/mobile/index.php'),
(1406408675, '58.39.246.204', 70, 'Safari 537.36', 'Windows XP', 'zh-CN,zh', '', '', '', '/index.php'),
(1406408747, '110.75.105.204', 1, 'Internet Explorer 8.0', 'Windows NT', 'en-US,*', 'IANA', '', '', '/index.php'),
(1406410141, '221.15.175.1', 1, 'Internet Explorer 9.0', 'Windows NT', 'zh-CN', '', '', '', '/mobile/index.php'),
(1406410976, '113.120.101.71', 4, 'Unknow browser', 'Unknown', 'zh-cn', 'IANA', '', '', '/index.php'),
(1406410977, '113.120.101.71', 5, 'Unknow browser', 'Unknown', 'zh-cn', 'IANA', '', '', '/mobile/index.php'),
(1406411376, '140.207.54.78', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406411379, '140.207.54.79', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406411379, '140.207.54.76', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406411386, '140.207.54.78', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406411387, '140.207.54.77', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406411779, '140.207.54.78', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406411792, '140.207.54.78', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406411878, '140.207.54.74', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406411900, '113.120.101.71', 1, 'Unknow browser', 'Unknown', 'zh-cn', 'IANA', '', '', '/mobile/user.php'),
(1406411989, '140.207.54.74', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406411989, '113.120.101.71', 2, 'Unknow browser', 'Unknown', 'zh-cn', 'IANA', '', '', '/index.php'),
(1406411990, '113.120.101.71', 3, 'Unknow browser', 'Unknown', 'zh-cn', 'IANA', '', '', '/mobile/index.php'),
(1406412819, '220.181.132.219', 1, 'Internet Explorer 8.0', 'Windows NT', '', '', 'http://q.yunmoban.cn', '/', '/index.php'),
(1406412836, '101.199.112.45', 1, 'Safari 536.11', '', 'en-us,en', 'IANA', '', '', '/index.php'),
(1406415872, '49.80.219.70', 1, 'Internet Explorer 8.0', 'Windows XP', 'zh-cn', 'IANA', '', '', '/index.php'),
(1406418547, '14.150.166.156', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '', '', '', '/index.php'),
(1406419131, '180.153.214.191', 1, 'Unknow browser', 'Unknown', 'zh-cn, zh', '[δ֪IP0801]', '', '', '/index.php'),
(1406420882, '58.54.250.106', 1, 'Safari 537.36', 'Windows XP', 'zh-CN,zh', '', '', '', '/index.php'),
(1406420884, '58.54.250.106', 2, 'Safari 537.36', 'Windows XP', 'zh-CN,zh', '', '', '', '/mobile/index.php'),
(1406420938, '120.1.229.147', 1, 'Safari 537.1', 'Windows NT', 'zh-CN,zh', 'APNIC', '', '', '/index.php'),
(1406421269, '101.69.66.155', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/index.php'),
(1406421292, '123.155.91.99', 1, 'Safari 537.36', 'Linux', 'zh-CN,zh', '', '', '', '/mobile/index.php'),
(1406422304, '140.207.54.78', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406422324, '140.207.54.78', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406422328, '218.207.123.88', 1, 'Safari 534.30', 'Linux', 'zh-CN, en-US', '', '', '', '/mobile/goods.php'),
(1406422499, '140.207.54.78', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406422528, '140.207.54.78', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406422534, '140.207.54.78', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406422583, '140.207.54.78', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406422615, '140.207.54.78', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406422643, '140.207.54.78', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406422643, '218.207.123.88', 2, 'Safari 534.30', 'Linux', 'zh-CN, en-US', '', '', '', '/index.php'),
(1406422644, '218.207.123.88', 3, 'Safari 534.30', 'Linux', 'zh-CN, en-US', '', '', '', '/mobile/index.php'),
(1406424231, '112.85.64.34', 1, 'Safari 537.1', 'Windows XP', 'zh-CN,zh', 'IANA', '', '', '/mobile/index.php'),
(1406425079, '112.85.64.105', 2, 'Safari 537.1', 'Windows XP', 'zh-CN,zh', 'IANA', '', '', '/index.php'),
(1406425302, '112.85.64.105', 3, 'Safari 537.1', 'Windows XP', 'zh-CN,zh', 'IANA', 'http://q.yunmoban.cn', '/', '/mobile/index.php'),
(1406425394, '112.85.64.105', 1, 'Safari 533.1', 'Linux', 'zh-CN', 'IANA', '', '', '/mobile/index.php'),
(1406425489, '1.196.162.155', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/index.php'),
(1406425903, '58.39.246.204', 71, 'Safari 537.36', 'Windows XP', 'zh-CN,zh', '', '', '', '/index.php'),
(1406425961, '58.39.246.204', 72, 'Safari 537.36', 'Windows XP', 'zh-CN,zh', '', 'http://q.yunmoban.cn', '/group_buy.php', '/mobile/index.php'),
(1406428366, '58.39.246.204', 73, 'Safari 537.36', 'Windows XP', 'zh-CN,zh', '', '', '', '/index.php'),
(1406428379, '101.226.33.240', 1, 'Unknow browser', 'Unknown', 'zh-cn, zh', 'IANA', 'http://www.sogou.com', '/', '/group_buy.php'),
(1406428988, '140.207.54.75', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406428991, '140.207.54.74', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406428995, '121.15.79.120', 6, 'Safari 534.30', 'Linux', 'zh-CN, en-US', '', '', '', '/mobile/user.php'),
(1406429244, '117.136.12.192', 4, 'Safari 533.1', 'Linux', 'zh-CN, en-US', '', '', '', '/mobile/user.php'),
(1406429780, '58.39.246.204', 74, 'Safari 537.36', 'Windows XP', 'zh-CN,zh', '', '', '', '/index.php'),
(1406430172, '1.196.162.155', 2, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/index.php'),
(1406431351, '183.212.216.64', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/index.php'),
(1406431440, '183.212.216.64', 2, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/mobile/index.php'),
(1406431585, '183.212.216.64', 3, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/index.php'),
(1406432635, '101.226.66.187', 1, 'Unknow browser', 'Unknown', 'zh-cn, zh', 'IANA', 'http://www.sogou.com', '/', '/auction.php'),
(1406433070, '42.196.168.116', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/index.php'),
(1406433594, '42.196.168.116', 2, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/mobile/index.php'),
(1406433890, '211.162.34.184', 1, 'Unknow browser', 'Unknown', 'zh-cn', '', '', '', '/mobile/index.php'),
(1406435089, '112.95.113.138', 1, 'Safari 537.1', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/mobile/index.php'),
(1406436838, '180.153.181.27', 1, 'Internet Explorer 9.0', 'Windows NT', 'zh-CN', '[δ֪IP0801]', 'http://q.yunmoban.cn', '/mobile/index.php', '/mobile/index.php'),
(1406438529, '218.241.98.202', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/index.php'),
(1406440409, '180.153.183.86', 1, 'Internet Explorer 9.0', 'Windows NT', 'zh-CN', '[δ֪IP0801]', 'http://q.yunmoban.cn', '/mobile/', '/mobile/index.php'),
(1406440977, '118.181.7.240', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'APNIC', '', '', '/index.php'),
(1406441005, '118.181.7.240', 2, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'APNIC', '', '', '/mobile/index.php'),
(1406441248, '1.196.162.155', 2, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/index.php'),
(1406442392, '139.202.162.57', 1, 'Internet Explorer 6.0', 'Windows XP', 'zh-cn', '[δ֪IP0801]', '', '', '/index.php'),
(1406443089, '112.65.62.200', 1, 'Safari 537.1', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/index.php'),
(1406443115, '112.65.62.200', 2, 'Safari 537.1', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/mobile/index.php'),
(1406443223, '112.65.62.200', 3, 'Safari 537.1', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/index.php'),
(1406443887, '1.196.162.155', 3, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/index.php'),
(1406444640, '122.194.232.13', 2, 'Safari 533.1', 'Linux', 'zh-CN', '', 'http://q.yunmoban.cn', '/mobile/group_buy.php', '/mobile/group_buy.php'),
(1406444927, '106.57.44.192', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', 'http://www.yunmoban.cn', '/goods-130.html', '/index.php'),
(1406446766, '140.207.54.78', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406446799, '58.39.246.204', 1, 'Safari 534.30', 'Linux', 'zh-CN, en-US', '', '', '', '/mobile/user.php'),
(1406446876, '1.196.162.155', 4, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/index.php'),
(1406448767, '140.207.54.78', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406448802, '112.255.182.133', 1, 'Safari 534.30', 'Linux', 'zh-CN, en-US', 'IANA', '', '', '/index.php'),
(1406448802, '112.255.182.133', 2, 'Safari 534.30', 'Linux', 'zh-CN, en-US', 'IANA', '', '', '/mobile/index.php'),
(1406448886, '218.11.178.87', 2, 'Unknow browser', 'Unknown', 'zh-cn', '', 'http://q.yunmoban.cn', '/mobile/category-1-b0.html', '/mobile/cat_all.php'),
(1406448983, '140.207.54.78', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406450376, '140.207.54.78', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406450380, '58.39.246.204', 1, 'Safari 534.30', 'Linux', 'zh-CN, en-US', '', '', '', '/mobile/user.php'),
(1406450665, '42.156.139.18', 1, 'Unknow browser', 'Unknown', 'zh-cn,en-us,zh-tw,en', 'IANA', '', '', '/category.php'),
(1406450665, '42.120.161.18', 1, 'Unknow browser', 'Unknown', 'zh-cn,en-us,zh-tw,en', 'IANA', '', '', '/category.php'),
(1406450975, '58.39.246.204', 2, 'Safari 534.30', 'Linux', 'zh-CN, en-US', '', 'http://q.yunmoban.cn', '/mobile/user.php?act=logout', '/mobile/index.php'),
(1406450985, '140.207.54.78', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406450985, '58.39.246.204', 3, 'Safari 534.30', 'Linux', 'zh-CN, en-US', '', '', '', '/index.php'),
(1406450985, '58.39.246.204', 4, 'Safari 534.30', 'Linux', 'zh-CN, en-US', '', '', '', '/mobile/index.php'),
(1406450992, '140.207.54.78', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406450996, '140.207.54.78', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406451001, '140.207.54.78', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406451011, '140.207.54.78', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406451028, '140.207.54.78', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406451031, '140.207.54.78', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406451036, '140.207.54.78', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406451039, '140.207.54.78', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406451051, '140.207.54.78', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406451057, '58.39.246.204', 2, 'Safari 537.36', 'Linux', 'zh-CN', '', '', '', '/mobile/user.php'),
(1406451057, '58.39.246.204', 2, 'Safari 537.36', 'Linux', 'zh-CN', '', '', '', '/mobile/user.php'),
(1406453681, '112.64.235.249', 1, 'Unknow browser', 'Unknown', 'zh-cn, zh', 'IANA', '', '', '/mobile/user.php'),
(1406454677, '122.194.232.13', 3, 'Safari 533.1', 'Linux', 'zh-CN', '', 'http://q.yunmoban.cn', '/mobile/flow.php', '/mobile/index.php'),
(1406457708, '59.38.64.180', 1, 'FireFox 30.0', 'Windows NT', 'zh-cn,en-us', '', '', '', '/index.php'),
(1406457719, '59.38.64.180', 2, 'FireFox 30.0', 'Windows NT', 'zh-cn,en-us', '', '', '', '/mobile/index.php'),
(1406457720, '180.153.206.16', 1, 'Unknow browser', 'Unknown', 'zh-cn, zh', '[δ֪IP0801]', '', '', '/mobile/index.php'),
(1406457725, '101.226.65.105', 1, 'Unknow browser', 'Unknown', 'zh-cn, zh', 'IANA', 'http://q.yunmoban.cn', '/mobile/', '/mobile/affiche.php'),
(1406457725, '59.38.64.180', 3, 'FireFox 30.0', 'Windows NT', 'zh-cn,en-us', '', '', '', '/index.php'),
(1406457879, '182.118.21.206', 1, 'Internet Explorer 9.0', 'Windows NT', 'zh-CN', '[δ֪IP0801]', 'http://q.yunmoban.cn', '/article-11.html', '/article.php'),
(1406457879, '182.118.21.202', 1, 'Internet Explorer 9.0', 'Windows NT', 'zh-CN', '[δ֪IP0801]', 'http://q.yunmoban.cn', '/article-12.html', '/article.php'),
(1406457879, '182.118.21.203', 1, 'Internet Explorer 9.0', 'Windows NT', 'zh-CN', '[δ֪IP0801]', 'http://q.yunmoban.cn', '/article-16.html', '/article.php'),
(1406457879, '182.118.21.201', 1, 'Internet Explorer 9.0', 'Windows NT', 'zh-CN', '[δ֪IP0801]', 'http://q.yunmoban.cn', '/', '/index.php'),
(1406457879, '182.118.21.209', 1, 'Internet Explorer 9.0', 'Windows NT', 'zh-CN', '[δ֪IP0801]', 'http://q.yunmoban.cn', '/article-14.html', '/article.php'),
(1406457901, '182.118.21.202', 1, 'Internet Explorer 9.0', 'Windows NT', 'zh-CN', '[δ֪IP0801]', 'http://q.yunmoban.cn', '/article-18.html', '/article.php'),
(1406457901, '182.118.20.205', 1, 'Internet Explorer 9.0', 'Windows NT', 'zh-CN', '[δ֪IP0801]', 'http://q.yunmoban.cn', '/article-20.html', '/article.php'),
(1406457922, '182.118.21.205', 1, 'Internet Explorer 9.0', 'Windows NT', 'zh-CN', '[δ֪IP0801]', 'http://q.yunmoban.cn', '/article-22.html', '/article.php'),
(1406457955, '101.226.168.253', 1, 'Safari 537.1;', 'Windows NT', 'zh-CN', 'IANA', 'http://q.yunmoban.cn', '/article-36.html', '/article.php'),
(1406457955, '101.226.168.253', 1, 'Safari 537.1;', 'Windows NT', 'zh-CN', 'IANA', 'http://q.yunmoban.cn', '/article_cat-10.html', '/article_cat.php'),
(1406457955, '101.226.169.195', 1, 'Safari 537.1;', 'Windows NT', 'zh-CN', 'IANA', 'http://q.yunmoban.cn', '/article-25.html', '/article.php'),
(1406457961, '101.226.169.196', 1, 'Safari 537.1;', 'Windows NT', 'zh-CN', 'IANA', 'http://q.yunmoban.cn', '/article_cat-6.html', '/article_cat.php'),
(1406457961, '101.226.168.252', 1, 'Safari 537.1;', 'Windows NT', 'zh-CN', 'IANA', 'http://q.yunmoban.cn', '/article_cat-8.html', '/article_cat.php'),
(1406457961, '101.226.168.254', 1, 'Safari 537.1;', 'Windows NT', 'zh-CN', 'IANA', 'http://q.yunmoban.cn', '/brand-1-c0.html', '/brand.php'),
(1406457965, '101.226.168.251', 1, 'Safari 537.1;', 'Windows NT', 'zh-CN', 'IANA', 'http://q.yunmoban.cn', '/brand-13-c0.html', '/brand.php'),
(1406457965, '101.226.169.197', 1, 'Safari 537.1;', 'Windows NT', 'zh-CN', 'IANA', 'http://q.yunmoban.cn', '/brand-12-c0.html', '/brand.php'),
(1406457969, '101.226.169.195', 1, 'Safari 537.1;', 'Windows NT', 'zh-CN', 'IANA', 'http://q.yunmoban.cn', '/brand-15-c0.html', '/brand.php'),
(1406457969, '101.226.168.251', 1, 'Safari 537.1;', 'Windows NT', 'zh-CN', 'IANA', 'http://q.yunmoban.cn', '/brand-17-c0.html', '/brand.php'),
(1406458228, '182.118.22.214', 1, 'Internet Explorer 9.0', 'Windows NT', 'zh-CN', '[δ֪IP0801]', 'http://q.yunmoban.cn', '/brand-20-c0.html', '/brand.php'),
(1406458228, '182.118.22.214', 1, 'Internet Explorer 9.0', 'Windows NT', 'zh-CN', '[δ֪IP0801]', 'http://q.yunmoban.cn', '/brand-22-c0.html', '/brand.php'),
(1406458236, '182.118.22.211', 1, 'Internet Explorer 9.0', 'Windows NT', 'zh-CN', '[δ֪IP0801]', 'http://q.yunmoban.cn', '/brand-24-c0.html', '/brand.php'),
(1406458236, '182.118.22.212', 1, 'Internet Explorer 9.0', 'Windows NT', 'zh-CN', '[δ֪IP0801]', 'http://q.yunmoban.cn', '/brand-25-c0.html', '/brand.php'),
(1406458243, '182.118.22.213', 1, 'Internet Explorer 9.0', 'Windows NT', 'zh-CN', '[δ֪IP0801]', 'http://q.yunmoban.cn', '/brand-27-c0.html', '/brand.php'),
(1406458244, '182.118.22.215', 1, 'Internet Explorer 9.0', 'Windows NT', 'zh-CN', '[δ֪IP0801]', 'http://q.yunmoban.cn', '/brand-29-c0.html', '/brand.php'),
(1406458250, '182.118.22.211', 1, 'Internet Explorer 9.0', 'Windows NT', 'zh-CN', '[δ֪IP0801]', 'http://q.yunmoban.cn', '/brand-31-c0.html', '/brand.php'),
(1406458250, '182.118.22.214', 1, 'Internet Explorer 9.0', 'Windows NT', 'zh-CN', '[δ֪IP0801]', 'http://q.yunmoban.cn', '/brand-33-c0.html', '/brand.php'),
(1406458257, '182.118.22.213', 1, 'Internet Explorer 9.0', 'Windows NT', 'zh-CN', '[δ֪IP0801]', 'http://q.yunmoban.cn', '/brand-35-c0.html', '/brand.php'),
(1406458257, '182.118.22.212', 1, 'Internet Explorer 9.0', 'Windows NT', 'zh-CN', '[δ֪IP0801]', 'http://q.yunmoban.cn', '/brand-37-c0.html', '/brand.php'),
(1406458265, '182.118.22.211', 1, 'Internet Explorer 9.0', 'Windows NT', 'zh-CN', '[δ֪IP0801]', 'http://q.yunmoban.cn', '/brand-19-c0.html', '/brand.php'),
(1406458506, '101.226.167.231', 1, 'Safari 537.1;', 'Windows NT', 'zh-CN', 'IANA', 'http://q.yunmoban.cn', '/brand-40-c0.html', '/brand.php'),
(1406458506, '101.226.167.238', 1, 'Safari 537.1;', 'Windows NT', 'zh-CN', 'IANA', 'http://q.yunmoban.cn', '/brand-7-c0.html', '/brand.php'),
(1406458506, '101.226.167.232', 1, 'Safari 537.1;', 'Windows NT', 'zh-CN', 'IANA', 'http://q.yunmoban.cn', '/brand-42-c0.html', '/brand.php'),
(1406458514, '101.226.167.236', 1, 'Safari 537.1;', 'Windows NT', 'zh-CN', 'IANA', 'http://q.yunmoban.cn', '/category-1-b0.html', '/category.php'),
(1406458514, '101.226.167.231', 1, 'Safari 537.1;', 'Windows NT', 'zh-CN', 'IANA', 'http://q.yunmoban.cn', '/category-1-b12.html', '/category.php'),
(1406458514, '101.226.167.235', 1, 'Safari 537.1;', 'Windows NT', 'zh-CN', 'IANA', 'http://q.yunmoban.cn', '/category-1-b20.html', '/category.php'),
(1406458524, '101.226.167.234', 1, 'Safari 537.1;', 'Windows NT', 'zh-CN', 'IANA', 'http://q.yunmoban.cn', '/category-1-b21.html', '/category.php'),
(1406458524, '101.226.167.237', 1, 'Safari 537.1;', 'Windows NT', 'zh-CN', 'IANA', 'http://q.yunmoban.cn', '/category-1-b23.html', '/category.php'),
(1406458540, '101.226.167.237', 1, 'Safari 537.1;', 'Windows NT', 'zh-CN', 'IANA', 'http://q.yunmoban.cn', '/category-1-b25.html', '/category.php'),
(1406458540, '101.226.167.236', 1, 'Safari 537.1;', 'Windows NT', 'zh-CN', 'IANA', 'http://q.yunmoban.cn', '/category-100-b0.html', '/category.php'),
(1406458612, '182.118.25.222', 1, 'Internet Explorer 9.0', 'Windows NT', 'zh-CN', '[δ֪IP0801]', 'http://q.yunmoban.cn', '/article-24.html', '/article.php'),
(1406458665, '101.226.168.230', 1, 'Safari 537.1;', 'Windows NT', 'zh-CN', 'IANA', 'http://q.yunmoban.cn', '/category-104-b0.html', '/category.php'),
(1406458665, '101.226.168.234', 1, 'Safari 537.1;', 'Windows NT', 'zh-CN', 'IANA', 'http://q.yunmoban.cn', '/category-106-b0.html', '/category.php'),
(1406458665, '101.226.168.230', 1, 'Safari 537.1;', 'Windows NT', 'zh-CN', 'IANA', 'http://q.yunmoban.cn', '/category-107-b0.html', '/category.php'),
(1406458671, '101.226.168.233', 1, 'Safari 537.1;', 'Windows NT', 'zh-CN', 'IANA', 'http://q.yunmoban.cn', '/category-109-b0.html', '/category.php'),
(1406458671, '101.226.168.229', 1, 'Safari 537.1;', 'Windows NT', 'zh-CN', 'IANA', 'http://q.yunmoban.cn', '/category-110-b0.html', '/category.php'),
(1406458671, '101.226.168.229', 1, 'Safari 537.1;', 'Windows NT', 'zh-CN', 'IANA', 'http://q.yunmoban.cn', '/category-112-b0.html', '/category.php'),
(1406458675, '101.226.168.227', 1, 'Safari 537.1;', 'Windows NT', 'zh-CN', 'IANA', 'http://q.yunmoban.cn', '/category-114-b0.html', '/category.php'),
(1406458675, '101.226.168.233', 1, 'Safari 537.1;', 'Windows NT', 'zh-CN', 'IANA', 'http://q.yunmoban.cn', '/category-116-b0.html', '/category.php'),
(1406458678, '101.226.168.231', 1, 'Safari 537.1;', 'Windows NT', 'zh-CN', 'IANA', 'http://q.yunmoban.cn', '/category-118-b0.html', '/category.php'),
(1406458678, '101.226.168.232', 1, 'Safari 537.1;', 'Windows NT', 'zh-CN', 'IANA', 'http://q.yunmoban.cn', '/category-12-b0.html', '/category.php'),
(1406458745, '182.118.22.206', 1, 'Internet Explorer 9.0', 'Windows NT', 'zh-CN', '[δ֪IP0801]', 'http://q.yunmoban.cn', '/brand-38-c0.html', '/brand.php'),
(1406459246, '101.226.166.198', 1, 'Safari 537.1;', 'Windows NT', 'zh-CN', 'IANA', 'http://q.yunmoban.cn', '/category-102-b0.html', '/category.php'),
(1406459386, '182.118.20.219', 1, 'Internet Explorer 9.0', 'Windows NT', 'zh-CN', '[δ֪IP0801]', 'http://q.yunmoban.cn', '/category-12-b1.html', '/category.php'),
(1406459388, '101.226.168.202', 1, 'Safari 537.1;', 'Windows NT', 'zh-CN', 'IANA', 'http://q.yunmoban.cn', '/category-130-b0.html', '/category.php'),
(1406459497, '182.118.22.219', 1, 'Internet Explorer 9.0', 'Windows NT', 'zh-CN', '[δ֪IP0801]', 'http://q.yunmoban.cn', '/category-12-b23.html', '/category.php'),
(1406459498, '182.118.22.217', 1, 'Internet Explorer 9.0', 'Windows NT', 'zh-CN', '[δ֪IP0801]', 'http://q.yunmoban.cn', '/category-12-b34.html', '/category.php'),
(1406459498, '182.118.22.220', 1, 'Internet Explorer 9.0', 'Windows NT', 'zh-CN', '[δ֪IP0801]', 'http://q.yunmoban.cn', '/category-12-b41.html', '/category.php'),
(1406459559, '101.226.168.209', 1, 'Safari 537.1;', 'Windows NT', 'zh-CN', 'IANA', 'http://q.yunmoban.cn', '/category-16-b14.html', '/category.php'),
(1406459700, '182.118.20.233', 1, 'Internet Explorer 9.0', 'Windows NT', 'zh-CN', '[δ֪IP0801]', 'http://q.yunmoban.cn', '/category-132-b0.html', '/category.php'),
(1406459700, '182.118.20.235', 1, 'Internet Explorer 9.0', 'Windows NT', 'zh-CN', '[δ֪IP0801]', 'http://q.yunmoban.cn', '/category-134-b0.html', '/category.php'),
(1406459700, '182.118.20.235', 1, 'Internet Explorer 9.0', 'Windows NT', 'zh-CN', '[δ֪IP0801]', 'http://q.yunmoban.cn', '/category-135-b0.html', '/category.php'),
(1406459904, '101.226.168.234', 1, 'Safari 537.1;', 'Windows NT', 'zh-CN', 'IANA', 'http://q.yunmoban.cn', '/category-22-b0.html', '/category.php'),
(1406459904, '101.226.168.230', 1, 'Safari 537.1;', 'Windows NT', 'zh-CN', 'IANA', 'http://q.yunmoban.cn', '/category-24-b0.html', '/category.php'),
(1406459904, '101.226.168.230', 1, 'Safari 537.1;', 'Windows NT', 'zh-CN', 'IANA', 'http://q.yunmoban.cn', '/category-21-b0.html', '/category.php'),
(1406459908, '101.226.168.229', 1, 'Safari 537.1;', 'Windows NT', 'zh-CN', 'IANA', 'http://q.yunmoban.cn', '/category-26-b0.html', '/category.php'),
(1406459908, '101.226.168.231', 1, 'Safari 537.1;', 'Windows NT', 'zh-CN', 'IANA', 'http://q.yunmoban.cn', '/category-28-b0.html', '/category.php'),
(1406459908, '101.226.168.227', 1, 'Safari 537.1;', 'Windows NT', 'zh-CN', 'IANA', 'http://q.yunmoban.cn', '/category-3-b0.html', '/category.php'),
(1406459911, '101.226.168.232', 1, 'Safari 537.1;', 'Windows NT', 'zh-CN', 'IANA', 'http://q.yunmoban.cn', '/category-31-b0.html', '/category.php'),
(1406459911, '101.226.168.229', 1, 'Safari 537.1;', 'Windows NT', 'zh-CN', 'IANA', 'http://q.yunmoban.cn', '/category-33-b0.html', '/category.php'),
(1406459914, '101.226.168.233', 1, 'Safari 537.1;', 'Windows NT', 'zh-CN', 'IANA', 'http://q.yunmoban.cn', '/category-34-b0.html', '/category.php'),
(1406459914, '101.226.168.234', 1, 'Safari 537.1;', 'Windows NT', 'zh-CN', 'IANA', 'http://q.yunmoban.cn', '/category-36-b0.html', '/category.php'),
(1406459917, '182.118.22.216', 1, 'Internet Explorer 9.0', 'Windows NT', 'zh-CN', '[δ֪IP0801]', 'http://q.yunmoban.cn', '/category-12-b43.html', '/category.php'),
(1406459917, '182.118.22.220', 1, 'Internet Explorer 9.0', 'Windows NT', 'zh-CN', '[δ֪IP0801]', 'http://q.yunmoban.cn', '/category-120-b0.html', '/category.php'),
(1406459947, '182.118.20.236', 1, 'Internet Explorer 9.0', 'Windows NT', 'zh-CN', '[δ֪IP0801]', 'http://q.yunmoban.cn', '/category-137-b0.html', '/category.php'),
(1406459947, '182.118.20.233', 1, 'Internet Explorer 9.0', 'Windows NT', 'zh-CN', '[δ֪IP0801]', 'http://q.yunmoban.cn', '/category-139-b0.html', '/category.php'),
(1406460078, '101.226.169.228', 1, 'Safari 537.1;', 'Windows NT', 'zh-CN', 'IANA', 'http://q.yunmoban.cn', '/category-2-b0.html', '/category.php'),
(1406460082, '182.118.20.234', 1, 'Internet Explorer 9.0', 'Windows NT', 'zh-CN', '[δ֪IP0801]', 'http://q.yunmoban.cn', '/category-140-b0.html', '/category.php'),
(1406460082, '182.118.20.235', 1, 'Internet Explorer 9.0', 'Windows NT', 'zh-CN', '[δ֪IP0801]', 'http://q.yunmoban.cn', '/category-142-b0.html', '/category.php'),
(1406460152, '182.118.20.235', 1, 'Internet Explorer 9.0', 'Windows NT', 'zh-CN', '[δ֪IP0801]', 'http://q.yunmoban.cn', '/category-144-b0.html', '/category.php'),
(1406460152, '182.118.20.237', 1, 'Internet Explorer 9.0', 'Windows NT', 'zh-CN', '[δ֪IP0801]', 'http://q.yunmoban.cn', '/category-16-b0.html', '/category.php'),
(1406460153, '182.118.25.201', 1, 'Internet Explorer 9.0', 'Windows NT', 'zh-CN', '[δ֪IP0801]', 'http://q.yunmoban.cn', '/category-16-b26.html', '/category.php'),
(1406460153, '182.118.25.201', 1, 'Internet Explorer 9.0', 'Windows NT', 'zh-CN', '[δ֪IP0801]', 'http://q.yunmoban.cn', '/category-16-b28.html', '/category.php'),
(1406460154, '182.118.25.204', 1, 'Internet Explorer 9.0', 'Windows NT', 'zh-CN', '[δ֪IP0801]', 'http://q.yunmoban.cn', '/category-16-b30.html', '/category.php'),
(1406460154, '182.118.25.201', 1, 'Internet Explorer 9.0', 'Windows NT', 'zh-CN', '[δ֪IP0801]', 'http://q.yunmoban.cn', '/category-17-b0.html', '/category.php'),
(1406460154, '182.118.25.205', 1, 'Internet Explorer 9.0', 'Windows NT', 'zh-CN', '[δ֪IP0801]', 'http://q.yunmoban.cn', '/category-17-b17.html', '/category.php'),
(1406460173, '182.118.25.205', 1, 'Internet Explorer 9.0', 'Windows NT', 'zh-CN', '[δ֪IP0801]', 'http://q.yunmoban.cn', '/category-17-b32.html', '/category.php'),
(1406460173, '182.118.25.205', 1, 'Internet Explorer 9.0', 'Windows NT', 'zh-CN', '[δ֪IP0801]', 'http://q.yunmoban.cn', '/category-17-b34.html', '/category.php'),
(1406460195, '182.118.25.205', 1, 'Internet Explorer 9.0', 'Windows NT', 'zh-CN', '[δ֪IP0801]', 'http://q.yunmoban.cn', '/category-17-b36.html', '/category.php'),
(1406460195, '182.118.25.201', 1, 'Internet Explorer 9.0', 'Windows NT', 'zh-CN', '[δ֪IP0801]', 'http://q.yunmoban.cn', '/category-17-b38.html', '/category.php'),
(1406460214, '182.118.25.205', 1, 'Internet Explorer 9.0', 'Windows NT', 'zh-CN', '[δ֪IP0801]', 'http://q.yunmoban.cn', '/category-18-b0.html', '/category.php'),
(1406460273, '182.118.20.234', 1, 'Internet Explorer 9.0', 'Windows NT', 'zh-CN', '[δ֪IP0801]', 'http://q.yunmoban.cn', '/category-16-b12.html', '/category.php'),
(1406460284, '182.118.22.217', 1, 'Internet Explorer 9.0', 'Windows NT', 'zh-CN', '[δ֪IP0801]', 'http://q.yunmoban.cn', '/category-122-b0.html', '/category.php'),
(1406460284, '182.118.22.218', 1, 'Internet Explorer 9.0', 'Windows NT', 'zh-CN', '[δ֪IP0801]', 'http://q.yunmoban.cn', '/category-123-b0.html', '/category.php'),
(1406460521, '182.118.22.217', 1, 'Internet Explorer 9.0', 'Windows NT', 'zh-CN', '[δ֪IP0801]', 'http://q.yunmoban.cn', '/category-125-b0.html', '/category.php'),
(1406460521, '182.118.22.217', 1, 'Internet Explorer 9.0', 'Windows NT', 'zh-CN', '[δ֪IP0801]', 'http://q.yunmoban.cn', '/category-127-b0.html', '/category.php'),
(1406460601, '182.118.22.211', 1, 'Internet Explorer 9.0', 'Windows NT', 'zh-CN', '[δ֪IP0801]', 'http://q.yunmoban.cn', '/category-38-b0.html', '/category.php'),
(1406460658, '101.226.167.237', 1, 'Safari 537.1;', 'Windows NT', 'zh-CN', 'IANA', 'http://q.yunmoban.cn', '/category-59-b0.html', '/category.php'),
(1406460658, '101.226.167.231', 1, 'Safari 537.1;', 'Windows NT', 'zh-CN', 'IANA', 'http://q.yunmoban.cn', '/category-6-b12.html', '/category.php'),
(1406460661, '101.226.167.231', 1, 'Safari 537.1;', 'Windows NT', 'zh-CN', 'IANA', 'http://q.yunmoban.cn', '/category-6-b0.html', '/category.php'),
(1406460668, '101.226.167.231', 1, 'Safari 537.1;', 'Windows NT', 'zh-CN', 'IANA', 'http://q.yunmoban.cn', '/category-6-b14.html', '/category.php'),
(1406460668, '101.226.167.236', 1, 'Safari 537.1;', 'Windows NT', 'zh-CN', 'IANA', 'http://q.yunmoban.cn', '/category-6-b16.html', '/category.php'),
(1406460668, '101.226.167.238', 1, 'Safari 537.1;', 'Windows NT', 'zh-CN', 'IANA', 'http://q.yunmoban.cn', '/category-6-b18.html', '/category.php'),
(1406460669, '182.118.22.218', 1, 'Internet Explorer 9.0', 'Windows NT', 'zh-CN', '[δ֪IP0801]', 'http://q.yunmoban.cn', '/category-129-b0.html', '/category.php'),
(1406460676, '101.226.167.237', 1, 'Safari 537.1;', 'Windows NT', 'zh-CN', 'IANA', 'http://q.yunmoban.cn', '/category-6-b23.html', '/category.php'),
(1406460676, '101.226.167.232', 1, 'Safari 537.1;', 'Windows NT', 'zh-CN', 'IANA', 'http://q.yunmoban.cn', '/category-6-b32.html', '/category.php'),
(1406460684, '101.226.167.234', 1, 'Safari 537.1;', 'Windows NT', 'zh-CN', 'IANA', 'http://q.yunmoban.cn', '/category-6-b33.html', '/category.php'),
(1406460684, '101.226.167.236', 1, 'Safari 537.1;', 'Windows NT', 'zh-CN', 'IANA', 'http://q.yunmoban.cn', '/category-6-b36.html', '/category.php'),
(1406460817, '182.118.20.171', 1, 'Internet Explorer 9.0', 'Windows NT', 'zh-CN', '[δ֪IP0801]', 'http://q.yunmoban.cn', '/category-4-b0.html', '/category.php'),
(1406460817, '182.118.20.173', 1, 'Internet Explorer 9.0', 'Windows NT', 'zh-CN', '[δ֪IP0801]', 'http://q.yunmoban.cn', '/category-41-b0.html', '/category.php'),
(1406460817, '182.118.20.169', 1, 'Internet Explorer 9.0', 'Windows NT', 'zh-CN', '[δ֪IP0801]', 'http://q.yunmoban.cn', '/category-43-b0.html', '/category.php'),
(1406460818, '182.118.20.173', 1, 'Internet Explorer 9.0', 'Windows NT', 'zh-CN', '[δ֪IP0801]', 'http://q.yunmoban.cn', '/category-45-b0.html', '/category.php'),
(1406460818, '182.118.20.163', 1, 'Internet Explorer 9.0', 'Windows NT', 'zh-CN', '[δ֪IP0801]', 'http://q.yunmoban.cn', '/category-47-b0.html', '/category.php'),
(1406460909, '182.118.22.228', 1, 'Internet Explorer 9.0', 'Windows NT', 'zh-CN', '[δ֪IP0801]', 'http://q.yunmoban.cn', '/category-57-b0.html', '/category.php'),
(1406460940, '101.226.169.223', 1, 'Safari 537.1;', 'Windows NT', 'zh-CN', 'IANA', 'http://q.yunmoban.cn', '/category-6-b44.html', '/category.php'),
(1406460986, '182.118.20.174', 1, 'Internet Explorer 9.0', 'Windows NT', 'zh-CN', '[δ֪IP0801]', 'http://q.yunmoban.cn', '/category-5-b0.html', '/category.php'),
(1406460986, '182.118.20.171', 1, 'Internet Explorer 9.0', 'Windows NT', 'zh-CN', '[δ֪IP0801]', 'http://q.yunmoban.cn', '/category-48-b0.html', '/category.php'),
(1406460986, '182.118.20.166', 1, 'Internet Explorer 9.0', 'Windows NT', 'zh-CN', '[δ֪IP0801]', 'http://q.yunmoban.cn', '/category-51-b0.html', '/category.php'),
(1406461063, '182.118.20.172', 1, 'Internet Explorer 9.0', 'Windows NT', 'zh-CN', '[δ֪IP0801]', 'http://q.yunmoban.cn', '/category-55-b0.html', '/category.php'),
(1406461063, '182.118.20.173', 1, 'Internet Explorer 9.0', 'Windows NT', 'zh-CN', '[δ֪IP0801]', 'http://q.yunmoban.cn', '/category-53-b0.html', '/category.php'),
(1406461142, '182.118.22.204', 1, 'Internet Explorer 9.0', 'Windows NT', 'zh-CN', '[δ֪IP0801]', 'http://q.yunmoban.cn', '/category-6-b48.html', '/category.php'),
(1406461142, '182.118.22.203', 1, 'Internet Explorer 9.0', 'Windows NT', 'zh-CN', '[δ֪IP0801]', 'http://q.yunmoban.cn', '/category-6-b46.html', '/category.php'),
(1406461150, '101.226.166.224', 1, 'Safari 537.1;', 'Windows NT', 'zh-CN', 'IANA', 'http://q.yunmoban.cn', '/category-6-b66.html', '/category.php'),
(1406461150, '101.226.166.226', 1, 'Safari 537.1;', 'Windows NT', 'zh-CN', 'IANA', 'http://q.yunmoban.cn', '/category-6-b68.html', '/category.php'),
(1406461150, '101.226.166.225', 1, 'Safari 537.1;', 'Windows NT', 'zh-CN', 'IANA', 'http://q.yunmoban.cn', '/category-6-b7.html', '/category.php'),
(1406461154, '101.226.166.219', 1, 'Safari 537.1;', 'Windows NT', 'zh-CN', 'IANA', 'http://q.yunmoban.cn', '/category-60-b0.html', '/category.php'),
(1406461154, '101.226.166.220', 1, 'Safari 537.1;', 'Windows NT', 'zh-CN', 'IANA', 'http://q.yunmoban.cn', '/category-64-b0.html', '/category.php'),
(1406461154, '101.226.166.221', 1, 'Safari 537.1;', 'Windows NT', 'zh-CN', 'IANA', 'http://q.yunmoban.cn', '/category-62-b0.html', '/category.php'),
(1406461158, '101.226.166.224', 1, 'Safari 537.1;', 'Windows NT', 'zh-CN', 'IANA', 'http://q.yunmoban.cn', '/category-66-b0.html', '/category.php'),
(1406461158, '101.226.166.221', 1, 'Safari 537.1;', 'Windows NT', 'zh-CN', 'IANA', 'http://q.yunmoban.cn', '/category-67-b0.html', '/category.php'),
(1406461161, '182.118.22.203', 1, 'Internet Explorer 9.0', 'Windows NT', 'zh-CN', '[δ֪IP0801]', 'http://q.yunmoban.cn', '/category-6-b50.html', '/category.php'),
(1406461161, '182.118.22.204', 1, 'Internet Explorer 9.0', 'Windows NT', 'zh-CN', '[δ֪IP0801]', 'http://q.yunmoban.cn', '/category-6-b52.html', '/category.php'),
(1406461162, '101.226.166.219', 1, 'Safari 537.1;', 'Windows NT', 'zh-CN', 'IANA', 'http://q.yunmoban.cn', '/category-69-b0.html', '/category.php'),
(1406461162, '101.226.166.224', 1, 'Safari 537.1;', 'Windows NT', 'zh-CN', 'IANA', 'http://q.yunmoban.cn', '/category-70-b0.html', '/category.php'),
(1406461180, '182.118.22.202', 1, 'Internet Explorer 9.0', 'Windows NT', 'zh-CN', '[δ֪IP0801]', 'http://q.yunmoban.cn', '/category-6-b53.html', '/category.php'),
(1406461180, '182.118.22.204', 1, 'Internet Explorer 9.0', 'Windows NT', 'zh-CN', '[δ֪IP0801]', 'http://q.yunmoban.cn', '/category-6-b55.html', '/category.php'),
(1406461200, '182.118.22.204', 1, 'Internet Explorer 9.0', 'Windows NT', 'zh-CN', '[δ֪IP0801]', 'http://q.yunmoban.cn', '/category-6-b57.html', '/category.php'),
(1406461200, '182.118.22.202', 1, 'Internet Explorer 9.0', 'Windows NT', 'zh-CN', '[δ֪IP0801]', 'http://q.yunmoban.cn', '/category-6-b59.html', '/category.php'),
(1406461218, '182.118.22.205', 1, 'Internet Explorer 9.0', 'Windows NT', 'zh-CN', '[δ֪IP0801]', 'http://q.yunmoban.cn', '/category-6-b63.html', '/category.php'),
(1406461218, '182.118.22.204', 1, 'Internet Explorer 9.0', 'Windows NT', 'zh-CN', '[δ֪IP0801]', 'http://q.yunmoban.cn', '/category-6-b61.html', '/category.php'),
(1406461234, '182.118.22.218', 1, 'Internet Explorer 9.0', 'Windows NT', 'zh-CN', '[δ֪IP0801]', 'http://q.yunmoban.cn', '/category-6-b65.html', '/category.php');
INSERT INTO `ecs_stats` (`access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url`) VALUES
(1406461505, '101.226.169.217', 1, 'Safari 537.1;', 'Windows NT', 'zh-CN', 'IANA', 'http://q.yunmoban.cn', '/category-72-b0.html', '/category.php'),
(1406461507, '101.226.169.196', 1, 'Safari 537.1;', 'Windows NT', 'zh-CN', 'IANA', 'http://q.yunmoban.cn', '/category-78-b0.html', '/category.php'),
(1406461507, '101.226.168.253', 1, 'Safari 537.1;', 'Windows NT', 'zh-CN', 'IANA', 'http://q.yunmoban.cn', '/category-76-b0.html', '/category.php'),
(1406461507, '101.226.169.197', 1, 'Safari 537.1;', 'Windows NT', 'zh-CN', 'IANA', 'http://q.yunmoban.cn', '/category-74-b0.html', '/category.php'),
(1406461510, '101.226.168.252', 1, 'Safari 537.1;', 'Windows NT', 'zh-CN', 'IANA', 'http://q.yunmoban.cn', '/category-79-b0.html', '/category.php'),
(1406461510, '101.226.168.251', 1, 'Safari 537.1;', 'Windows NT', 'zh-CN', 'IANA', 'http://q.yunmoban.cn', '/category-82-b0.html', '/category.php'),
(1406461510, '101.226.168.251', 1, 'Safari 537.1;', 'Windows NT', 'zh-CN', 'IANA', 'http://q.yunmoban.cn', '/category-80-b0.html', '/category.php'),
(1406461515, '101.226.168.254', 1, 'Safari 537.1;', 'Windows NT', 'zh-CN', 'IANA', 'http://q.yunmoban.cn', '/category-84-b0.html', '/category.php'),
(1406461515, '101.226.168.252', 1, 'Safari 537.1;', 'Windows NT', 'zh-CN', 'IANA', 'http://q.yunmoban.cn', '/category-86-b0.html', '/category.php'),
(1406461518, '101.226.168.253', 1, 'Safari 537.1;', 'Windows NT', 'zh-CN', 'IANA', 'http://q.yunmoban.cn', '/category-88-b0.html', '/category.php'),
(1406461518, '101.226.169.197', 1, 'Safari 537.1;', 'Windows NT', 'zh-CN', 'IANA', 'http://q.yunmoban.cn', '/category-9-b0.html', '/category.php'),
(1406461672, '122.194.232.13', 4, 'Safari 533.1', 'Linux', 'zh-CN', '', 'http://q.yunmoban.cn', '/mobile/goods-117.html', '/mobile/cat_all.php'),
(1406461809, '182.118.25.220', 1, 'Internet Explorer 9.0', 'Windows NT', 'zh-CN', '[δ֪IP0801]', 'http://q.yunmoban.cn', '/category-91-b0.html', '/category.php'),
(1406461834, '122.194.232.13', 5, 'Safari 533.1', 'Linux', 'zh-CN', '', '', '', '/mobile/goods.php'),
(1406461887, '101.226.167.236', 1, 'Safari 537.1;', 'Windows NT', 'zh-CN', 'IANA', 'http://q.yunmoban.cn', '/category-92-b0.html', '/category.php'),
(1406461887, '101.226.167.235', 1, 'Safari 537.1;', 'Windows NT', 'zh-CN', 'IANA', 'http://q.yunmoban.cn', '/category-94-b0.html', '/category.php'),
(1406461887, '101.226.167.232', 1, 'Safari 537.1;', 'Windows NT', 'zh-CN', 'IANA', 'http://q.yunmoban.cn', '/category-95-b0.html', '/category.php'),
(1406461891, '101.226.167.232', 1, 'Safari 537.1;', 'Windows NT', 'zh-CN', 'IANA', 'http://q.yunmoban.cn', '/category-97-b0.html', '/category.php'),
(1406461891, '101.226.167.233', 1, 'Safari 537.1;', 'Windows NT', 'zh-CN', 'IANA', 'http://q.yunmoban.cn', '/category-99-b0.html', '/category.php'),
(1406461891, '101.226.167.236', 1, 'Safari 537.1;', 'Windows NT', 'zh-CN', 'IANA', 'http://q.yunmoban.cn', '/category.php?id=5', '/category.php'),
(1406461894, '101.226.167.232', 1, 'Safari 537.1;', 'Windows NT', 'zh-CN', 'IANA', 'http://q.yunmoban.cn', '/goods-1.html', '/goods.php'),
(1406461898, '101.226.167.234', 1, 'Safari 537.1;', 'Windows NT', 'zh-CN', 'IANA', 'http://q.yunmoban.cn', '/goods-10.html', '/goods.php'),
(1406461898, '101.226.167.236', 1, 'Safari 537.1;', 'Windows NT', 'zh-CN', 'IANA', 'http://q.yunmoban.cn', '/goods-117.html', '/goods.php'),
(1406462319, '82.168.152.94', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '', '', '', '/index.php'),
(1406462367, '82.168.152.94', 2, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '', '', '', '/mobile/index.php'),
(1406462380, '182.118.22.203', 1, 'Internet Explorer 9.0', 'Windows NT', 'zh-CN', '[δ֪IP0801]', 'http://q.yunmoban.cn', '/goods-119.html', '/goods.php'),
(1406462829, '101.226.166.205', 1, 'Safari 537.1;', 'Windows NT', 'zh-CN', 'IANA', 'http://q.yunmoban.cn', '/goods-56.html', '/goods.php'),
(1406462829, '101.226.166.204', 1, 'Safari 537.1;', 'Windows NT', 'zh-CN', 'IANA', 'http://q.yunmoban.cn', '/goods-59.html', '/goods.php'),
(1406462829, '101.226.166.210', 1, 'Safari 537.1;', 'Windows NT', 'zh-CN', 'IANA', 'http://q.yunmoban.cn', '/goods-54.html', '/goods.php'),
(1406462829, '101.226.167.209', 1, 'Safari 537.1;', 'Windows NT', 'zh-CN', 'IANA', 'http://q.yunmoban.cn', '/goods-53.html', '/goods.php'),
(1406462835, '101.226.166.208', 1, 'Safari 537.1;', 'Windows NT', 'zh-CN', 'IANA', 'http://q.yunmoban.cn', '/goods-61.html', '/goods.php'),
(1406462835, '101.226.166.209', 1, 'Safari 537.1;', 'Windows NT', 'zh-CN', 'IANA', 'http://q.yunmoban.cn', '/goods-63.html', '/goods.php'),
(1406462835, '101.226.166.205', 1, 'Safari 537.1;', 'Windows NT', 'zh-CN', 'IANA', 'http://q.yunmoban.cn', '/goods-65.html', '/goods.php'),
(1406462843, '101.226.166.210', 1, 'Safari 537.1;', 'Windows NT', 'zh-CN', 'IANA', 'http://q.yunmoban.cn', '/goods-68.html', '/goods.php'),
(1406462843, '101.226.166.207', 1, 'Safari 537.1;', 'Windows NT', 'zh-CN', 'IANA', 'http://q.yunmoban.cn', '/goods-67.html', '/goods.php'),
(1406462851, '101.226.166.207', 1, 'Safari 537.1;', 'Windows NT', 'zh-CN', 'IANA', 'http://q.yunmoban.cn', '/goods-70.html', '/goods.php'),
(1406462851, '101.226.166.203', 1, 'Safari 537.1;', 'Windows NT', 'zh-CN', 'IANA', 'http://q.yunmoban.cn', '/goods-72.html', '/goods.php'),
(1406462879, '101.226.166.231', 1, 'Safari 537.1;', 'Windows NT', 'zh-CN', 'IANA', 'http://q.yunmoban.cn', '/goods-74.html', '/goods.php'),
(1406462980, '182.118.20.218', 1, 'Internet Explorer 9.0', 'Windows NT', 'zh-CN', '[δ֪IP0801]', 'http://q.yunmoban.cn', '/goods-78.html', '/goods.php'),
(1406462980, '182.118.20.219', 1, 'Internet Explorer 9.0', 'Windows NT', 'zh-CN', '[δ֪IP0801]', 'http://q.yunmoban.cn', '/goods-76.html', '/goods.php'),
(1406463022, '101.226.169.210', 1, 'Safari 537.1;', 'Windows NT', 'zh-CN', 'IANA', 'http://q.yunmoban.cn', '/user.php?act=oath&type=weibo', '/user.php'),
(1406463059, '183.136.190.62', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/index.php'),
(1406463059, '182.118.20.218', 1, 'Internet Explorer 9.0', 'Windows NT', 'zh-CN', '[δ֪IP0801]', 'http://q.yunmoban.cn', '/group_buy-10.html', '/group_buy.php'),
(1406463059, '182.118.20.218', 1, 'Internet Explorer 9.0', 'Windows NT', 'zh-CN', '[δ֪IP0801]', 'http://q.yunmoban.cn', '/group_buy-11.html', '/group_buy.php'),
(1406463153, '182.118.20.219', 1, 'Internet Explorer 9.0', 'Windows NT', 'zh-CN', '[δ֪IP0801]', 'http://q.yunmoban.cn', '/group_buy-13.html', '/group_buy.php'),
(1406463154, '182.118.20.218', 1, 'Internet Explorer 9.0', 'Windows NT', 'zh-CN', '[δ֪IP0801]', 'http://q.yunmoban.cn', '/group_buy-15.html', '/group_buy.php'),
(1406463245, '182.118.20.215', 1, 'Internet Explorer 9.0', 'Windows NT', 'zh-CN', '[δ֪IP0801]', 'http://q.yunmoban.cn', '/group_buy-9.html', '/group_buy.php'),
(1406463245, '182.118.20.219', 1, 'Internet Explorer 9.0', 'Windows NT', 'zh-CN', '[δ֪IP0801]', 'http://q.yunmoban.cn', '/group_buy-16.html', '/group_buy.php'),
(1406463318, '122.194.232.13', 6, 'Safari 533.1', 'Linux', 'zh-CN', '', '', '', '/mobile/goods.php'),
(1406463328, '182.118.20.219', 1, 'Internet Explorer 9.0', 'Windows NT', 'zh-CN', '[δ֪IP0801]', 'http://q.yunmoban.cn', '/index.php', '/index.php'),
(1406464139, '182.118.20.168', 1, 'Internet Explorer 9.0', 'Windows NT', 'zh-CN', '[δ֪IP0801]', 'http://q.yunmoban.cn', '/user.php?act=oath&type=alipay', '/user.php'),
(1406469467, '140.207.54.78', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406470973, '58.39.246.204', 5, 'Safari 534.30', 'Linux', 'zh-CN, en-US', '', '', '', '/mobile/user.php'),
(1406475087, '140.207.54.78', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406475091, '58.39.246.204', 1, 'Safari 534.30', 'Linux', 'zh-CN, en-US', '', '', '', '/mobile/user.php'),
(1406475104, '140.207.54.78', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406475111, '140.207.54.78', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406477757, '183.60.70.30', 1, 'Unknow browser', 'Unknown', 'zh-cn, zh', '[δ֪IP0801]', '', '', '/mobile/index.php'),
(1406479197, '116.208.89.255', 1, 'Safari 537.1', 'Windows NT', 'zh-CN,zh', '', '', '', '/index.php'),
(1406479219, '116.208.89.255', 2, 'Safari 537.1', 'Windows NT', 'zh-CN,zh', '', 'http://q.yunmoban.cn', '/', '/mobile/index.php'),
(1406479500, '27.153.165.129', 4, 'Safari 537.36', 'Windows XP', 'zh-CN,zh', 'IANA', '', '', '/mobile/user.php'),
(1406481264, '171.113.69.239', 1, 'Safari 536.11', 'Windows NT', 'zh-CN,zh', 'RIPE', '', '', '/index.php'),
(1406481811, '110.75.105.83', 1, 'Internet Explorer 8.0', 'Windows NT', 'en-US,*', 'IANA', '', '', '/mobile/index.php'),
(1406481822, '110.75.105.81', 1, 'Internet Explorer 8.0', 'Windows NT', 'en-US,*', 'IANA', '', '', '/mobile/index.php'),
(1406483795, '14.120.193.214', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '', 'http://item.taobao.com', '/item.htm?spm=a230r.1.14.25.MckZYx&id=39305837789&ns=1', '/mobile/index.php'),
(1406483805, '111.10.254.231', 2, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/mobile/index.php'),
(1406483844, '111.10.254.231', 3, 'Safari 537.36', 'Linux', 'zh-CN,zh', 'IANA', '', '', '/index.php'),
(1406483844, '111.10.254.231', 4, 'Safari 537.36', 'Linux', 'zh-CN,zh', 'IANA', '', '', '/mobile/index.php'),
(1406483883, '111.10.254.231', 5, 'Safari 537.36', 'Linux', 'zh-CN,zh', 'IANA', '', '', '/index.php'),
(1406483884, '111.10.254.231', 6, 'Safari 537.36', 'Linux', 'zh-CN,zh', 'IANA', '', '', '/mobile/index.php'),
(1406483916, '111.10.254.231', 7, 'Safari 537.36', 'Linux', 'zh-CN,zh', 'IANA', 'http://q.yunmoban.cn', '/mobile/', '/index.php'),
(1406483916, '111.10.254.231', 8, 'Safari 537.36', 'Linux', 'zh-CN,zh', 'IANA', 'http://q.yunmoban.cn', '/mobile/', '/mobile/index.php'),
(1406484405, '111.10.254.231', 9, 'Safari 537.36', 'Linux', 'zh-CN,zh', 'IANA', '', '', '/index.php'),
(1406484405, '111.10.254.231', 10, 'Safari 537.36', 'Linux', 'zh-CN,zh', 'IANA', '', '', '/mobile/index.php'),
(1406484535, '110.52.239.198', 1, 'Safari 537.36', 'Windows XP', 'zh-CN,zh', 'IANA', '', '', '/mobile/index.php'),
(1406484591, '27.153.165.129', 5, 'Safari 537.36', 'Windows XP', 'zh-CN,zh', 'IANA', 'http://q.yunmoban.cn', '/mobile/user.php', '/mobile/user.php'),
(1406484595, '27.153.165.129', 6, 'Safari 537.36', 'Windows XP', 'zh-CN,zh', 'IANA', 'http://q.yunmoban.cn', '/mobile/user.php?act=logout', '/mobile/index.php'),
(1406487405, '183.18.153.197', 1, 'Safari 537.36', 'Windows XP', 'zh-CN,zh', '[δ֪IP0801]', 'http://www.baidu.com', '/s?cl=3&wd=ECSHOP%E6%A8%A1%E6%9D%BF%E5%A0%82%E7%B1%B3%E5%A5%87%E7%BD%912014%E8%87%B3%E5%B0%8A%E6%97%97%E8%88%B0%E7%89%88&tn=baidu&ie=utf-8&f=8&oq=ecshop%E5%A4%9A%E5%9F%8E%E5%B8%82%E5%A4%9A%E4%BB%93%E5', '/index.php'),
(1406487454, '182.118.25.177', 1, 'Internet Explorer 9.0', 'Windows NT', 'zh-CN', '[δ֪IP0801]', 'http://q.yunmoban.cn', '/', '/index.php'),
(1406487487, '183.158.75.241', 1, 'Safari 534.30', 'Linux', 'zh-CN, en-US', '[δ֪IP0801]', '', '', '/mobile/index.php'),
(1406487514, '113.108.70.13', 1, 'Unknow browser', 'Unknown', 'zh-cn, zh', 'IANA', '', '', '/mobile/user.php'),
(1406487519, '14.17.29.92', 1, 'Unknow browser', 'Unknown', 'zh-cn, zh', '', '', '', '/mobile/user.php'),
(1406487609, '14.17.34.189', 1, 'Unknow browser', 'Unknown', 'zh-cn, zh', '', '', '', '/mobile/user.php'),
(1406487618, '14.17.34.189', 1, 'Unknow browser', 'Unknown', 'zh-cn, zh', '', '', '', '/mobile/goods.php'),
(1406487638, '112.90.78.25', 1, 'Unknow browser', 'Unknown', 'zh-cn, zh', 'IANA', '', '', '/mobile/flow.php'),
(1406487640, '183.60.70.30', 1, 'Unknow browser', 'Unknown', 'zh-cn, zh', '[δ֪IP0801]', '', '', '/mobile/flow.php'),
(1406487954, '183.158.75.241', 1, 'FireFox 29.0', 'Windows 2003', 'zh-cn,zh', '[δ֪IP0801]', '', '', '/index.php'),
(1406489429, '106.44.114.243', 1, 'Safari 537.1', 'Windows XP', 'zh-CN,zh', 'IANA', '', '', '/index.php'),
(1406489442, '106.44.114.243', 2, 'Safari 537.1', 'Windows XP', 'zh-CN,zh', 'IANA', '', '', '/mobile/index.php'),
(1406489961, '1.196.162.155', 5, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/index.php'),
(1406492036, '219.136.1.76', 1, 'Safari 537.1', 'Windows NT', 'zh-CN,zh', '', '', '', '/index.php'),
(1406492057, '219.136.1.76', 2, 'Safari 537.1', 'Windows NT', 'zh-CN,zh', '', '', '', '/mobile/index.php'),
(1406492207, '42.49.143.97', 1, 'Safari 537.36', 'Windows XP', 'zh-CN,zh', 'IANA', '', '', '/mobile/index.php'),
(1406492234, '42.49.143.97', 2, 'Safari 537.36', 'Windows XP', 'zh-CN,zh', 'IANA', 'http://q.yunmoban.cn', '/mobile/', '/index.php'),
(1406492240, '42.49.143.97', 3, 'Safari 537.36', 'Windows XP', 'zh-CN,zh', 'IANA', 'http://q.yunmoban.cn', '/mobile/', '/mobile/index.php'),
(1406493366, '106.120.248.202', 1, 'Safari 537.36', 'Unknown', 'zh-CN,zh', 'IANA', '', '', '/mobile/index.php'),
(1406493399, '106.120.248.202', 2, 'Safari 537.36', 'Unknown', 'zh-CN,zh', 'IANA', 'http://q.yunmoban.cn', '/mobile/index.php', '/index.php'),
(1406494185, '49.113.105.193', 1, 'Internet Explorer 8.0', 'Windows NT', 'zh-CN', 'IANA', '', '', '/index.php'),
(1406494327, '49.113.105.193', 2, 'Internet Explorer 8.0', 'Windows NT', 'zh-CN', 'IANA', 'http://q.yunmoban.cn', '/', '/mobile/index.php'),
(1406494510, '140.207.54.78', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406494525, '49.113.105.193', 1, 'Safari 534.30', 'Linux', 'zh-CN, en-US', 'IANA', '', '', '/index.php'),
(1406494525, '49.113.105.193', 2, 'Safari 534.30', 'Linux', 'zh-CN, en-US', 'IANA', '', '', '/mobile/index.php'),
(1406494738, '49.113.105.193', 3, 'Safari 534.30', 'Linux', 'zh-CN, en-US', 'IANA', '', '', '/index.php'),
(1406494739, '49.113.105.193', 4, 'Safari 534.30', 'Linux', 'zh-CN, en-US', 'IANA', '', '', '/mobile/index.php'),
(1406494900, '49.113.105.193', 5, 'Safari 534.30', 'Linux', 'zh-CN, en-US', 'IANA', '', '', '/index.php'),
(1406494900, '49.113.105.193', 6, 'Safari 534.30', 'Linux', 'zh-CN, en-US', 'IANA', '', '', '/mobile/index.php'),
(1406494932, '14.151.4.113', 1, 'FireFox 30.0', 'Windows NT', 'zh-cn,zh', '', 'http://www.yunmoban.cn', '/goods-130.html', '/index.php'),
(1406494943, '140.207.54.79', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406494948, '42.49.143.97', 4, 'Safari 537.36', 'Windows XP', 'zh-CN,zh', 'IANA', '', '', '/index.php'),
(1406494956, '42.49.143.97', 5, 'Safari 537.36', 'Windows XP', 'zh-CN,zh', 'IANA', '', '', '/mobile/index.php'),
(1406494959, '140.207.54.78', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406494971, '140.207.54.78', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406494977, '14.151.4.113', 1, 'Unknow browser', 'Windows 32', '', '', 'http://q.yunmoban.cn', '/group_buy.php?act=buy', '/user.php'),
(1406494984, '14.151.4.113', 1, 'Unknow browser', 'Windows 32', '', '', 'http://q.yunmoban.cn', '/user.php?act=register', '/user.php'),
(1406494992, '140.207.54.78', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406495000, '140.207.54.78', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406495006, '140.207.54.78', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406495024, '49.113.105.193', 7, 'Safari 534.30', 'Linux', 'zh-CN, en-US', 'IANA', 'http://q.yunmoban.cn', '/mobile/user.php?act=logout', '/mobile/index.php'),
(1406495165, '140.207.54.78', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406495644, '112.253.25.50', 1, 'Safari 537.1', 'Windows XP', 'zh-CN,zh', 'IANA', '', '', '/index.php'),
(1406495746, '49.113.105.193', 3, 'Internet Explorer 8.0', 'Windows NT', 'zh-CN', 'IANA', '', '', '/index.php'),
(1406496234, '101.226.66.177', 1, 'Unknow browser', 'Unknown', 'zh-cn, zh', 'IANA', '', '', '/mobile/exchange.php'),
(1406496323, '140.207.54.78', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406496340, '140.207.54.78', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406496355, '140.207.54.78', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406496659, '180.153.163.189', 1, 'Unknow browser', 'Unknown', 'zh-cn, zh', '[δ֪IP0801]', '', '', '/mobile/index.php'),
(1406498122, '111.85.107.174', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/mobile/index.php'),
(1406498465, '218.0.69.93', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '', '', '', '/mobile/index.php'),
(1406498495, '218.0.69.93', 2, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '', '', '', '/index.php'),
(1406498619, '218.0.69.93', 1, 'Safari 533.1', 'Linux', 'zh-CN', '', '', '', '/mobile/index.php'),
(1406498630, '183.60.35.80', 1, 'Unknow browser', 'Unknown', 'zh-cn, zh', '[δ֪IP0801]', '', '', '/mobile/goods.php'),
(1406498639, '117.135.149.14', 1, 'FireFox 3.0b4', 'Windows XP', '', '', '', '', '/index.php'),
(1406498639, '112.90.11.79', 1, 'Unknow browser', 'Unknown', 'zh-cn, zh', 'IANA', '', '', '/mobile/user.php'),
(1406498639, '112.64.199.29', 1, 'FireFox 3.0b4', 'Windows XP', '', 'IANA', '', '', '/index.php'),
(1406498639, '120.204.201.77', 1, 'FireFox 3.0b4', 'Windows XP', '', 'APNIC', '', '', '/index.php'),
(1406498639, '183.195.233.90', 1, 'FireFox 3.0b4', 'Windows XP', '', '[δ֪IP0801]', '', '', '/index.php'),
(1406498639, '140.207.118.16', 1, 'FireFox 3.0b4', 'Windows XP', '', '', '', '', '/index.php'),
(1406498639, '140.207.118.16', 1, 'FireFox 3.0b4', 'Windows XP', '', '', '', '', '/index.php'),
(1406498639, '120.204.201.77', 1, 'FireFox 3.0b4', 'Windows XP', '', 'APNIC', '', '', '/index.php'),
(1406498639, '183.195.232.37', 1, 'FireFox 3.0b4', 'Windows XP', '', '[δ֪IP0801]', '', '', '/index.php'),
(1406498640, '120.204.201.77', 1, 'FireFox 3.0b4', 'Windows XP', '', 'APNIC', '', '', '/index.php'),
(1406498640, '27.115.124.46', 1, 'FireFox 3.0b4', 'Windows XP', '', 'IANA', '', '', '/index.php'),
(1406498640, '27.115.124.46', 1, 'FireFox 3.0b4', 'Windows XP', '', 'IANA', '', '', '/index.php'),
(1406498640, '140.207.55.80', 1, 'FireFox 3.0b4', 'Windows XP', '', '', '', '', '/index.php'),
(1406498751, '221.236.124.126', 1, 'Internet Explorer 10.0', 'Windows NT', 'zh-Hans-CN,zh-Hans', '', '', '', '/mobile/index.php'),
(1406498975, '183.60.35.80', 1, 'Unknow browser', 'Unknown', 'zh-cn, zh', '[δ֪IP0801]', '', '', '/mobile/user.php'),
(1406499063, '183.60.35.80', 1, 'Unknow browser', 'Unknown', 'zh-cn, zh', '[δ֪IP0801]', '', '', '/mobile/user.php'),
(1406499088, '163.177.69.38', 1, 'Unknow browser', 'Unknown', 'zh-cn, zh', '', '', '', '/mobile/goods.php'),
(1406499208, '113.105.95.122', 1, 'Unknow browser', 'Unknown', 'zh-cn, zh', 'IANA', '', '', '/mobile/index.php'),
(1406499558, '220.181.132.219', 1, 'Internet Explorer 8.0', 'Windows NT', '', '', 'http://q.yunmoban.cn', '/', '/index.php'),
(1406499582, '101.199.112.50', 1, 'Safari 536.11', '', 'en-us,en', 'IANA', '', '', '/index.php'),
(1406499745, '183.60.35.78', 1, 'Unknow browser', 'Unknown', 'zh-cn, zh', '[δ֪IP0801]', '', '', '/mobile/user.php'),
(1406499801, '115.28.126.18', 1, 'FireFox 3.5.16', 'Windows XP', '', 'IANA', '', '', '/index.php'),
(1406499923, '110.75.105.159', 1, 'Internet Explorer 8.0', 'Windows NT', 'en-US,*', 'IANA', '', '', '/index.php'),
(1406499935, '110.75.105.156', 1, 'Internet Explorer 8.0', 'Windows NT', 'en-US,*', 'IANA', '', '', '/index.php'),
(1406499971, '110.75.105.148', 1, 'Internet Explorer 8.0', 'Windows NT', 'en-US,*', 'IANA', '', '', '/mobile/index.php'),
(1406499993, '110.75.105.143', 1, 'Internet Explorer 8.0', 'Windows NT', 'en-US,*', 'IANA', '', '', '/mobile/index.php'),
(1406500074, '110.75.105.124', 1, 'Internet Explorer 8.0', 'Windows NT', 'en-US,*', 'IANA', '', '', '/index.php'),
(1406500152, '183.60.70.29', 1, 'Unknow browser', 'Unknown', 'zh-cn, zh', '[δ֪IP0801]', '', '', '/mobile/goods.php'),
(1406500190, '218.0.69.93', 3, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '', 'http://q.yunmoban.cn', '/index.php', '/mobile/index.php'),
(1406500213, '183.60.15.14', 1, 'Internet Explorer 9.0', 'Windows NT', 'zh-cn', '[δ֪IP0801]', '', '', '/index.php'),
(1406500215, '14.17.34.191', 1, 'Unknow browser', 'Unknown', 'zh-cn, zh', '', '', '', '/index.php'),
(1406500459, '218.0.69.93', 4, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '', 'http://q.yunmoban.cn', '/index.php', '/group_buy.php'),
(1406501135, '120.36.217.54', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'APNIC', '', '', '/mobile/index.php'),
(1406501179, '110.75.105.125', 1, 'Internet Explorer 8.0', 'Windows NT', 'en-US,*', 'IANA', '', '', '/mobile/index.php'),
(1406501196, '110.75.105.122', 1, 'Internet Explorer 8.0', 'Windows NT', 'en-US,*', 'IANA', '', '', '/index.php'),
(1406501528, '110.75.105.46', 1, 'Internet Explorer 8.0', 'Windows NT', 'en-US,*', 'IANA', '', '', '/mobile/index.php'),
(1406501555, '110.75.105.40', 1, 'Internet Explorer 8.0', 'Windows NT', 'en-US,*', 'IANA', '', '', '/index.php'),
(1406501629, '49.67.67.193', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/mobile/index.php'),
(1406502228, '14.151.4.113', 2, 'FireFox 30.0', 'Windows NT', 'zh-cn,zh', '', '', '', '/index.php'),
(1406502982, '218.0.69.93', 2, 'Safari 533.1', 'Linux', 'zh-CN', '', '', '', '/mobile/index.php'),
(1406503083, '222.216.195.97', 1, '(Internet Explorer ) Maxthon ', 'Windows XP', 'zh-CN', '', '', '', '/mobile/index.php'),
(1406503108, '119.147.146.189', 1, 'Internet Explorer 6.0', 'Windows XP', 'zh-CN,zh', 'APNIC', '', '', '/mobile/flow.php'),
(1406503114, '222.216.195.97', 2, '(Internet Explorer ) Maxthon ', 'Windows XP', 'zh-CN', '', '', '', '/index.php'),
(1406503348, '140.206.98.218', 1, 'Safari 537.1', 'Windows XP', 'zh-CN,zh', '', '', '', '/index.php'),
(1406503354, '140.206.98.218', 2, 'Safari 537.1', 'Windows XP', 'zh-CN,zh', '', '', '', '/mobile/index.php'),
(1406504074, '218.0.69.93', 5, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '', '', '', '/index.php'),
(1406504238, '218.0.69.93', 6, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '', 'http://q.yunmoban.cn', '/', '/mobile/index.php'),
(1406505390, '218.0.69.93', 7, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '', '', '', '/index.php'),
(1406505631, '111.58.168.30', 1, 'Safari 537.1', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/index.php'),
(1406506116, '61.172.203.189', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '', '', '', '/index.php'),
(1406506140, '125.117.236.98', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '', '', '', '/index.php'),
(1406506150, '183.129.173.163', 1, '(Internet Explorer ) Maxthon ', 'Windows XP', 'zh-CN', '[δ֪IP0801]', '', '', '/index.php'),
(1406506305, '1.192.121.14', 1, 'Safari 537.1', 'Windows NT', 'zh-CN,zh', 'IANA', 'http://www.yunmoban.cn', '/goods-130.html', '/index.php'),
(1406506511, '218.0.69.93', 3, 'Safari 533.1', 'Linux', 'zh-CN', '', 'http://htdata.qq.com', '/cgi-bin/httpconn?htcmd=0x6ff0080&u=http%3A%2F%2Fq.yunmoban.cn%2Fmobile%2Fuser.php&wap=3&qq-pf-to=mqq.temporaryc2c&uin=2232783008', '/mobile/user.php'),
(1406506572, '14.17.29.85', 1, 'Unknow browser', 'Unknown', 'zh-cn, zh', '', '', '', '/mobile/exchange.php'),
(1406506582, '183.60.62.44', 1, 'Unknow browser', 'Unknown', 'zh-cn, zh', '[δ֪IP0801]', '', '', '/mobile/group_buy.php'),
(1406506586, '14.17.29.92', 1, 'Unknow browser', 'Unknown', 'zh-cn, zh', '', '', '', '/mobile/group_buy.php'),
(1406506601, '14.17.29.85', 1, 'Unknow browser', 'Unknown', 'zh-cn, zh', '', '', '', '/mobile/ectouch.php'),
(1406506608, '14.17.34.189', 1, 'Unknow browser', 'Unknown', 'zh-cn, zh', '', '', '', '/mobile/article_cat.php'),
(1406506629, '14.17.29.92', 1, 'Unknow browser', 'Unknown', 'zh-cn, zh', '', '', '', '/index.php'),
(1406506629, '111.58.168.30', 1, 'Safari 534.30', 'Linux', 'zh-CN, en-US', 'IANA', '', '', '/index.php'),
(1406506632, '111.58.168.30', 2, 'Safari 534.30', 'Linux', 'zh-CN, en-US', 'IANA', '', '', '/mobile/index.php'),
(1406506903, '175.171.175.22', 1, 'Safari 537.36', 'Windows NT', 'zh-CN', '[δ֪IP0801]', '', '', '/index.php'),
(1406507057, '140.207.54.74', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406507110, '113.102.133.64', 1, 'Unknow browser', 'Unknown', 'zh-cn', 'IANA', '', '', '/index.php'),
(1406507110, '113.102.133.64', 2, 'Unknow browser', 'Unknown', 'zh-cn', 'IANA', '', '', '/mobile/index.php'),
(1406507229, '140.207.54.74', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406507728, '218.0.69.93', 8, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '', 'http://q.yunmoban.cn', '/', '/mobile/index.php'),
(1406508031, '140.207.54.74', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406508037, '140.207.54.74', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406508041, '140.207.54.74', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406508045, '140.207.54.74', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406508068, '140.207.54.74', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406508073, '140.207.54.75', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406508077, '140.207.54.74', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406508081, '140.207.54.74', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406508202, '120.193.223.139', 1, 'Safari 537.1', 'Windows NT', 'zh-CN,zh', 'APNIC', '', '', '/mobile/index.php'),
(1406508213, '140.207.54.74', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406508214, '113.107.244.4', 7, 'Safari 534.30', 'Linux', 'zh-CN, en-US', 'IANA', '', '', '/index.php'),
(1406508214, '113.107.244.4', 8, 'Safari 534.30', 'Linux', 'zh-CN, en-US', 'IANA', '', '', '/mobile/index.php'),
(1406508224, '140.207.54.74', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406508240, '140.207.54.74', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/wechat/weixin.php'),
(1406508240, '113.107.244.4', 9, 'Safari 534.30', 'Linux', 'zh-CN, en-US', 'IANA', '', '', '/index.php'),
(1406508240, '113.107.244.4', 10, 'Safari 534.30', 'Linux', 'zh-CN, en-US', 'IANA', '', '', '/mobile/index.php'),
(1406508721, '218.0.69.93', 1, 'Internet Explorer 10.0', 'Windows NT', 'zh-CN', '', '', '', '/mobile/index.php'),
(1406508721, '119.147.146.193', 1, 'Internet Explorer 6.0', 'Windows XP', 'zh-CN,zh', 'APNIC', '', '', '/mobile/index.php'),
(1406508722, '119.147.146.189', 1, 'Internet Explorer 6.0', 'Windows XP', 'zh-CN,zh', 'APNIC', '', '', '/mobile/index.php'),
(1406508728, '119.147.146.189', 1, 'Internet Explorer 6.0', 'Windows XP', 'zh-CN,zh', 'APNIC', '', '', '/mobile/affiche.php'),
(1406508728, '119.147.146.189', 1, 'Internet Explorer 6.0', 'Windows XP', 'zh-CN,zh', 'APNIC', '', '', '/mobile/index.php'),
(1406508728, '119.147.146.189', 1, 'Internet Explorer 6.0', 'Windows XP', 'zh-CN,zh', 'APNIC', '', '', '/mobile/index.php'),
(1406508760, '119.147.146.195', 1, 'Internet Explorer 6.0', 'Windows XP', 'zh-CN,zh', 'APNIC', '', '', '/mobile/index.php'),
(1406508776, '119.147.146.189', 1, 'Internet Explorer 6.0', 'Windows XP', 'zh-CN,zh', 'APNIC', '', '', '/mobile/goods.php'),
(1406509081, '218.0.69.93', 9, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '', '', '', '/index.php'),
(1406509434, '14.107.166.106', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '', '', '', '/index.php'),
(1406509451, '14.107.166.106', 2, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '', '', '', '/mobile/index.php'),
(1406509719, '58.39.246.204', 75, 'Safari 537.36', 'Windows XP', 'zh-CN,zh', '', '', '', '/index.php'),
(1406509740, '14.107.166.106', 1, 'Safari 534.30', 'Linux', 'zh-CN, en-US', '', '', '', '/mobile/index.php'),
(1406509807, '58.39.246.204', 76, 'Safari 537.36', 'Windows XP', 'zh-CN,zh', '', 'http://q.yunmoban.cn', '/index.php', '/mobile/index.php'),
(1406512675, '127.0.0.1', 436, 'Safari 537.36', 'Windows XP', 'zh-CN,zh', 'LAN', 'http://localhost', '/admin/index.php?act=top', '/index.php'),
(1406512718, '127.0.0.1', 437, 'Safari 537.36', 'Windows XP', 'zh-CN,zh', 'LAN', '', '', '/mobile/index.php'),
(1406513009, '127.0.0.1', 438, 'Safari 537.36', 'Windows XP', 'zh-CN,zh', 'LAN', 'http://localhost', '/admin/index.php?act=top', '/index.php'),
(1406513119, '127.0.0.1', 439, 'Safari 537.36', 'Windows XP', 'zh-CN,zh', 'LAN', 'http://localhost', '/index.php', '/mobile/index.php'),
(1406513139, '127.0.0.1', 440, 'Safari 537.36', 'Windows XP', 'zh-CN,zh', 'LAN', 'http://localhost', '/admin/index.php?act=top', '/index.php'),
(1406515019, '127.0.0.1', 441, 'Safari 537.36', 'Windows XP', 'zh-CN,zh', 'LAN', 'http://localhost', '/index.php', '/mobile/index.php'),
(1406515196, '127.0.0.1', 442, 'Safari 537.36', 'Windows XP', 'zh-CN,zh', 'LAN', 'http://localhost', '/index.php', '/index.php'),
(1406515338, '127.0.0.1', 443, 'Safari 537.36', 'Windows XP', 'zh-CN,zh', 'LAN', 'http://localhost', '/mobile/exchange.php', '/mobile/exchange.php'),
(1406515425, '127.0.0.1', 444, 'Safari 537.36', 'Windows XP', 'zh-CN,zh', 'LAN', 'http://localhost', '/admin/index.php?act=top', '/index.php'),
(1406516494, '127.0.0.1', 445, 'Safari 537.36', 'Windows XP', 'zh-CN,zh', 'LAN', 'http://localhost', '/mobile/admin/index.php?act=top', '/mobile/index.php'),
(1406516539, '127.0.0.1', 446, 'Safari 537.36', 'Windows XP', 'zh-CN,zh', 'LAN', 'http://localhost', '/admin/index.php?act=top', '/index.php'),
(1406516553, '127.0.0.1', 447, 'Safari 537.36', 'Windows XP', 'zh-CN,zh', 'LAN', 'http://localhost', '/mobile/admin/index.php?act=top', '/mobile/index.php'),
(1409204385, '119.100.0.110', 3, 'Internet Explorer 8.0', 'Windows NT', 'zh-CN', 'APNIC', 'http://ect.180.haoid.cn', '/admin/index.php?act=top', '/index.php'),
(1437764849, '0.0.0.0', 107, 'Safari 537.36', 'Windows NT', 'en-US,en', 'IANA', '', '', '/ectouch/index.php'),
(1437764856, '0.0.0.0', 108, 'Safari 537.36', 'Windows NT', 'en-US,en', 'IANA', 'http://localhost', '/ectouch/', '/ectouch/mobile/index.php'),
(1437765872, '0.0.0.0', 109, 'Safari 537.36', 'Windows NT', 'en-US,en', 'IANA', '', '', '/ectouch/index.php'),
(1437765878, '0.0.0.0', 110, 'Safari 537.36', 'Windows NT', 'en-US,en', 'IANA', 'http://localhost', '/ectouch/', '/ectouch/mobile/index.php'),
(1437766505, '0.0.0.0', 22, 'Safari 537.36', 'Windows NT', 'en-US,en', 'IANA', '', '', '/ectouch/index.php'),
(1437766564, '0.0.0.0', 23, 'Safari 6533.18.5', 'Unknown', 'en-US,en', 'IANA', '', '', '/ectouch/mobile/index.php'),
(1437766901, '0.0.0.0', 24, 'Safari 537.36', 'Windows NT', 'en-US,en', 'IANA', 'http://localhost', '/ectouch/admin/index.php?act=top', '/ectouch/index.php'),
(1437767014, '0.0.0.0', 25, 'Safari 6533.18.5', 'Unknown', 'en-US,en', 'IANA', 'http://localhost', '/ectouch/admin/index.php?act=top', '/ectouch/mobile/index.php'),
(1437767074, '0.0.0.0', 26, 'Safari 537.36', 'Windows NT', 'en-US,en', 'IANA', '', '', '/ectouch/index.php'),
(1437767507, '0.0.0.0', 27, 'Safari 600.1.4', 'Unknown', 'en-US,en', 'IANA', 'http://localhost', '/ectouch/goods-9.html', '/ectouch/mobile/index.php'),
(1437768229, '0.0.0.0', 28, 'Safari 537.36', 'Windows NT', 'en-US,en', 'IANA', '', '', '/ectouch/index.php'),
(1437768459, '0.0.0.0', 29, 'Safari 600.1.4', 'Unknown', 'en-US,en', 'IANA', '', '', '/ectouch/mobile/category.php'),
(1437769019, '0.0.0.0', 30, 'Safari 537.36', 'Windows NT', 'en-US,en', 'IANA', '', '', '/ectouch/index.php'),
(1437769898, '0.0.0.0', 31, 'Safari 600.1.4', 'Unknown', 'en-US,en', 'IANA', 'http://localhost', '/ectouch/mobile/', '/ectouch/mobile/goods.php'),
(1437770400, '0.0.0.0', 32, 'Safari 537.36', 'Windows NT', 'en-US,en', 'IANA', 'http://localhost', '/ectouch/', '/ectouch/group_buy.php'),
(1437770733, '0.0.0.0', 33, 'Safari 600.1.4', 'Unknown', 'en-US,en', 'IANA', 'http://localhost', '/ectouch/mobile/', '/ectouch/mobile/goods.php'),
(1437770826, '0.0.0.0', 34, 'Safari 537.36', 'Windows NT', 'en-US,en', 'IANA', '', '', '/ectouch/index.php'),
(1437771727, '0.0.0.0', 35, 'Safari 600.1.4', 'Unknown', 'en-US,en', 'IANA', 'http://localhost', '/ectouch/mobile/', '/ectouch/mobile/goods.php'),
(1437772557, '0.0.0.0', 36, 'Safari 537.36', 'Windows NT', 'en-US,en', 'IANA', 'http://localhost', '/ectouch/admin/index.php?act=top', '/ectouch/index.php'),
(1437773405, '0.0.0.0', 37, 'Safari 537.36', 'Windows NT', 'en-US,en', 'IANA', 'http://localhost', '/ectouch/', '/ectouch/mobile/index.php'),
(1437773587, '0.0.0.0', 38, 'Safari 600.1.4', 'Unknown', 'en-US,en', 'IANA', 'http://localhost', '/ectouch/mobile/index.php', '/ectouch/index.php'),
(1437773587, '0.0.0.0', 39, 'Safari 600.1.4', 'Unknown', 'en-US,en', 'IANA', 'http://localhost', '/ectouch/mobile/index.php', '/ectouch/mobile/index.php'),
(1437773656, '0.0.0.0', 40, 'Safari 600.1.4', 'Unknown', 'en-US,en', 'IANA', 'http://localhost', '/ectouch/admin/index.php?act=top', '/ectouch/index.php'),
(1437773656, '0.0.0.0', 41, 'Safari 600.1.4', 'Unknown', 'en-US,en', 'IANA', 'http://localhost', '/ectouch/admin/index.php?act=top', '/ectouch/mobile/index.php'),
(1437775474, '0.0.0.0', 1, 'Unknow browser', 'Windows NT', 'en-US,en', 'IANA', '', '', '/ectouch/mobile/category.php'),
(1437775954, '0.0.0.0', 42, 'Safari 537.36', 'Windows NT', 'en-US,en', 'IANA', '', '', '/ectouch/index.php'),
(1437778698, '0.0.0.0', 43, 'Safari 537.36', 'Windows NT', 'en-US,en', 'IANA', '', '', '/ectouch/index.php'),
(1438020540, '0.0.0.0', 44, 'Safari 537.36', 'Windows NT', 'en-US,en', 'IANA', '', '', '/ectouch/index.php'),
(1438020548, '0.0.0.0', 45, 'Safari 6533.18.5', 'Unknown', 'en-US,en', 'IANA', '', '', '/ectouch/mobile/index.php'),
(1438022104, '0.0.0.0', 46, 'Safari 537.36', 'Windows NT', 'en-US,en', 'IANA', '', '', '/ectouch/user.php'),
(1438024254, '0.0.0.0', 48, 'Safari 537.36', 'Windows NT', 'en-US,en', 'IANA', '', '', '/warket/index.php'),
(1437996345, '0.0.0.0', 50, 'Safari 537.36', 'Windows NT', 'en-US,en', 'IANA', '', '', '/prowx/index.php'),
(1438025550, '0.0.0.0', 52, 'Safari 537.36', 'Windows NT', 'en-US,en', 'IANA', '', '', '/warket/index.php'),
(1438027042, '0.0.0.0', 53, 'Safari 6533.18.5', 'Unknown', 'en-US,en', 'IANA', 'http://localhost', '/warket/admin/index.php?act=top', '/warket/mobile/index.php'),
(1438027052, '0.0.0.0', 54, 'Safari 537.36', 'Windows NT', 'en-US,en', 'IANA', '', '', '/warket/index.php'),
(1438029352, '0.0.0.0', 56, 'Safari 537.36', 'Windows NT', 'en-US,en', 'IANA', '', '', '/warket/index.php'),
(1438104597, '0.0.0.0', 58, 'Safari 537.36', 'Windows NT', 'en-US,en', 'IANA', 'http://localhost', '/warket/admin/index.php?act=top', '/warket/index.php'),
(1438113942, '0.0.0.0', 59, 'Safari 537.36', 'Windows NT', 'en-US,en', 'IANA', 'http://localhost', '/warket/admin/index.php?act=top', '/warket/index.php'),
(1438115632, '0.0.0.0', 2, 'Unknow browser', 'Windows NT', 'en-US,en', 'IANA', '', '', '/warket/index.php'),
(1438177291, '0.0.0.0', 60, 'Safari 537.36', 'Windows NT', 'en-US,en', 'IANA', 'http://localhost', '/warket/goods-62.html', '/warket/index.php'),
(1438177734, '0.0.0.0', 64, 'Safari 537.36', 'Windows NT', 'en-US,en', 'IANA', 'http://localhost', '/warket/goods-62.html', '/warket/index.php'),
(1438183560, '0.0.0.0', 66, 'Safari 537.36', 'Windows NT', 'en-US,en', 'IANA', 'http://localhost', '/warket/user.php', '/warket/index.php'),
(1438186183, '0.0.0.0', 3, 'Unknow browser', 'Windows NT', 'en-US,en', 'IANA', '', '', '/warket/index.php'),
(1438186785, '0.0.0.0', 68, 'Safari 537.36', 'Windows NT', 'en-US,en', 'IANA', 'http://localhost', '/warket/index.php', '/warket/goods.php'),
(1438189349, '0.0.0.0', 70, 'Safari 537.36', 'Windows NT', 'en-US,en', 'IANA', 'http://localhost', '/warket/index.php', '/warket/goods.php'),
(1438192267, '0.0.0.0', 71, 'Safari 537.36', 'Windows NT', 'en-US,en', 'IANA', 'http://localhost', '/warket/index.php', '/warket/goods.php'),
(1438204893, '0.0.0.0', 72, 'Safari 537.36', 'Windows NT', 'en-US,en', 'IANA', '', '', '/warket/index.php'),
(1438206815, '0.0.0.0', 74, 'Safari 537.36', 'Windows NT', 'en-US,en', 'IANA', 'http://localhost', '/warket/', '/warket/goods.php'),
(1438262692, '0.0.0.0', 75, 'Safari 537.36', 'Windows NT', 'en-US,en', 'IANA', '', '', '/warket/index.php'),
(1438262901, '0.0.0.0', 1, 'Safari 537.36', 'Windows NT', 'en-US,en', 'IANA', '', '', '/warket/index.php'),
(1438271392, '0.0.0.0', 77, 'Safari 537.36', 'Windows NT', 'en-US,en', 'IANA', '', '', '/warket/index.php'),
(1438275677, '0.0.0.0', 78, 'Safari 537.36', 'Windows NT', 'en-US,en', 'IANA', 'http://localhost', '/warket/index.php', '/warket/goods.php'),
(1438276023, '0.0.0.0', 80, 'Safari 537.36', 'Windows NT', 'en-US,en', 'IANA', '', '', '/warket/index.php'),
(1438276029, '0.0.0.0', 81, 'Safari 537.36', 'Windows NT', 'en-US,en', 'IANA', '', '', '/warket/index.php'),
(1438277815, '0.0.0.0', 82, 'Safari 537.36', 'Windows NT', 'en-US,en', 'IANA', '', '', '/warket/index.php'),
(1438282059, '0.0.0.0', 2, 'Safari 537.36', 'Windows NT', 'en-US,en', 'IANA', '', '', '/warket/index.php'),
(1438287107, '0.0.0.0', 3, 'Safari 537.36', 'Windows NT', 'en-US,en', 'IANA', '', '', '/warket/index.php'),
(1438295020, '0.0.0.0', 4, 'Safari 537.36', 'Windows NT', 'en-US,en', 'IANA', '', '', '/warket/index.php'),
(1438295148, '0.0.0.0', 4, 'Unknow browser', 'Windows NT', 'en-US,en', 'IANA', '', '', '/warket/index.php'),
(1438295579, '0.0.0.0', 6, 'Unknow browser', 'Windows NT', 'en-US,en', 'IANA', '', '', '/warket/index.php'),
(1438365893, '0.0.0.0', 83, 'Safari 537.36', 'Windows NT', 'en-US,en', 'IANA', 'http://localhost', '/warket/admin/index.php?act=top', '/warket/index.php'),
(1438381429, '0.0.0.0', 7, 'Safari 537.36', 'Windows NT', 'en-US,en', 'IANA', '', '', '/warket/index.php');

-- --------------------------------------------------------

--
-- Table structure for table `ecs_suppliers`
--

CREATE TABLE IF NOT EXISTS `ecs_suppliers` (
  `suppliers_id` smallint(5) unsigned NOT NULL,
  `suppliers_name` varchar(255) DEFAULT NULL,
  `suppliers_desc` mediumtext,
  `is_check` tinyint(1) unsigned NOT NULL DEFAULT '1'
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ecs_suppliers`
--

INSERT INTO `ecs_suppliers` (`suppliers_id`, `suppliers_name`, `suppliers_desc`, `is_check`) VALUES
(1, '北京供货商', '北京供货商', 1),
(2, '上海供货商', '上海供货商', 1);

-- --------------------------------------------------------

--
-- Table structure for table `ecs_tag`
--

CREATE TABLE IF NOT EXISTS `ecs_tag` (
  `tag_id` mediumint(8) NOT NULL,
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `tag_words` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ecs_tag`
--

INSERT INTO `ecs_tag` (`tag_id`, `user_id`, `goods_id`, `tag_words`) VALUES
(1, 0, 13, '音乐手机'),
(2, 0, 14, '音乐手机'),
(3, 0, 23, '音乐手机'),
(4, 0, 23, '智能手机'),
(5, 0, 14, '智能手机'),
(6, 0, 22, '智能手机'),
(7, 0, 31, '音乐手机');

-- --------------------------------------------------------

--
-- Table structure for table `ecs_template`
--

CREATE TABLE IF NOT EXISTS `ecs_template` (
  `filename` varchar(30) NOT NULL DEFAULT '',
  `region` varchar(40) NOT NULL DEFAULT '',
  `library` varchar(40) NOT NULL DEFAULT '',
  `sort_order` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `number` tinyint(1) unsigned NOT NULL DEFAULT '5',
  `type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `theme` varchar(60) NOT NULL DEFAULT '',
  `remarks` varchar(30) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ecs_template`
--

INSERT INTO `ecs_template` (`filename`, `region`, `library`, `sort_order`, `id`, `number`, `type`, `theme`, `remarks`) VALUES
('index', '左边区域', '/library/vote_list.lbi', 8, 0, 0, 0, 'default', ''),
('index', '左边区域', '/library/email_list.lbi', 9, 0, 0, 0, 'default', ''),
('index', '左边区域', '/library/order_query.lbi', 6, 0, 0, 0, 'default', ''),
('index', '左边区域', '/library/cart.lbi', 0, 0, 0, 0, 'default', ''),
('index', '左边区域', '/library/promotion_info.lbi', 3, 0, 0, 0, 'default', ''),
('index', '左边区域', '/library/auction.lbi', 4, 0, 3, 0, 'default', ''),
('index', '左边区域', '/library/group_buy.lbi', 5, 0, 3, 0, 'default', ''),
('index', '', '/library/recommend_promotion.lbi', 0, 0, 4, 0, 'default', ''),
('index', '右边主区域', '/library/recommend_hot.lbi', 2, 0, 10, 0, 'default', ''),
('index', '右边主区域', '/library/recommend_new.lbi', 1, 0, 10, 0, 'default', ''),
('index', '右边主区域', '/library/recommend_best.lbi', 0, 0, 10, 0, 'default', ''),
('index', '左边区域', '/library/invoice_query.lbi', 7, 0, 0, 0, 'default', ''),
('index', '左边区域', '/library/top10.lbi', 2, 0, 0, 0, 'default', ''),
('index', '左边区域', '/library/category_tree.lbi', 1, 0, 0, 0, 'default', ''),
('index', '', '/library/brands.lbi', 0, 0, 11, 0, 'default', ''),
('category', '左边区域', '/library/category_tree.lbi', 1, 0, 0, 0, 'default', ''),
('category', '右边区域', '/library/recommend_best.lbi', 0, 0, 5, 0, 'default', ''),
('category', '右边区域', '/library/goods_list.lbi', 1, 0, 0, 0, 'default', ''),
('category', '右边区域', '/library/pages.lbi', 2, 0, 0, 0, 'default', ''),
('category', '左边区域', '/library/cart.lbi', 0, 0, 0, 0, 'default', ''),
('category', '左边区域', '/library/price_grade.lbi', 3, 0, 0, 0, 'default', ''),
('category', '左边区域', '/library/filter_attr.lbi', 2, 0, 0, 0, 'default', ''),
('goods', '左边区域2', '/library/brand_goods.lbi', 0, 14, 5, 2, 'miqinew', ''),
('goods', '左边区域', '/library/goods_related.lbi', 0, 0, 0, 0, 'miqinew', ''),
('goods', '', '/library/recommend_hot.lbi', 0, 0, 3, 0, 'miqinew', ''),
('goods', '', '/library/top10.lbi', 0, 0, 0, 0, 'miqinew', ''),
('goods', '', '/library/recommend_best.lbi', 0, 0, 10, 0, 'miqinew', ''),
('goods', '', '/library/recommend_new.lbi', 0, 0, 10, 0, 'miqinew', ''),
('index', '商品区域三', '/library/cat_goods.lbi', 0, 16, 10, 1, 'miqinew', ''),
('index', '商品区域四', '/library/cat_goods.lbi', 0, 17, 10, 1, 'miqinew', ''),
('index', '商品区域二', '/library/cat_goods.lbi', 0, 1, 10, 1, 'miqinew', ''),
('index', '商品区域一', '/library/cat_goods.lbi', 0, 6, 10, 1, 'miqinew', ''),
('index', '邮件订阅', '/library/email_list.lbi', 0, 0, 0, 0, 'miqinew', ''),
('index', '', '/library/auction.lbi', 0, 0, 3, 0, 'miqinew', ''),
('index', '', '/library/brands.lbi', 0, 0, 3, 0, 'miqinew', ''),
('index', '邮件订阅', '/library/order_query.lbi', 0, 0, 0, 0, 'miqinew', ''),
('index', '', '/library/group_buy.lbi', 0, 0, 25, 0, 'miqinew', ''),
('goods', '右边可编辑区域', '/library/bought_note_guide.lbi', 2, 0, 0, 0, 'miqinew', ''),
('goods', '', '/library/recommend_promotion.lbi', 0, 0, 4, 0, 'miqinew', ''),
('goods', '右边可编辑区域', '/library/goods_tags.lbi', 0, 0, 0, 0, 'miqinew', ''),
('goods', '右边可编辑区域', '/library/comments.lbi', 3, 0, 0, 0, 'miqinew', ''),
('goods', '右边可编辑区域', '/library/bought_goods.lbi', 1, 0, 0, 0, 'miqinew', ''),
('flow', '', '/library/recommend_promotion.lbi', 0, 0, 10, 0, 'miqinew', ''),
('group_buy_goods', '品牌专区', '/library/goods_related.lbi', 0, 0, 0, 0, 'miqinew', ''),
('group_buy_goods', '品牌专区', '/library/brands.lbi', 0, 0, 16, 0, 'miqinew', ''),
('category', '左边区域', '/library/history.lbi', 0, 0, 0, 0, 'miqinew', ''),
('category', '', '/library/recommend_best.lbi', 0, 0, 20, 0, 'miqinew', ''),
('category', '', '/library/recommend_hot.lbi', 0, 0, 3, 0, 'miqinew', ''),
('category', '右边区域', '/library/goods_list.lbi', 0, 0, 0, 0, 'miqinew', ''),
('category', '右边区域', '/library/pages.lbi', 1, 0, 0, 0, 'miqinew', ''),
('category', '', '/library/recommend_promotion.lbi', 0, 0, 3, 0, 'miqinew', ''),
('category', '', '/library/brands.lbi', 0, 0, 3, 0, 'miqinew', ''),
('index', '', '/library/recommend_promotion.lbi', 0, 0, 1, 0, 'miqinew', ''),
('index', '', '/library/recommend_hot.lbi', 0, 0, 3, 0, 'miqinew', ''),
('index', '', '/library/recommend_new.lbi', 0, 0, 2, 0, 'miqinew', ''),
('index', '', '/library/recommend_best.lbi', 0, 0, 2, 0, 'miqinew', ''),
('index', '热销排行榜', '/library/top10.lbi', 0, 0, 0, 0, 'miqinew', ''),
('index', '商品区域五', '/library/cat_goods.lbi', 0, 12, 10, 1, 'miqinew', ''),
('group_buy_list', '团购列表页右侧广告一', '/library/ad_position.lbi', 0, 11, 1, 4, 'miqinew', ''),
('group_buy_list', '团购列表页右侧广告三', '/library/ad_position.lbi', 0, 13, 1, 4, 'miqinew', ''),
('group_buy_list', '团购列表页右侧广告二', '/library/ad_position.lbi', 0, 12, 1, 4, 'miqinew', ''),
('group_buy_list', '品牌专区', '/library/brands.lbi', 0, 0, 16, 0, 'miqinew', ''),
('group_buy_list', '团购列表左侧广告一', '/library/ad_position.lbi', 0, 7, 1, 4, 'miqinew', ''),
('group_buy_list', '团购列表左侧广告二', '/library/ad_position.lbi', 0, 8, 1, 4, 'miqinew', ''),
('group_buy_list', '团购列表左侧广告三', '/library/ad_position.lbi', 0, 9, 1, 4, 'miqinew', ''),
('group_buy_list', '团购列表左侧广告四', '/library/ad_position.lbi', 0, 10, 1, 4, 'miqinew', '');

-- --------------------------------------------------------

--
-- Table structure for table `ecs_topic`
--

CREATE TABLE IF NOT EXISTS `ecs_topic` (
  `topic_id` int(10) unsigned NOT NULL,
  `title` varchar(255) NOT NULL DEFAULT '''''',
  `intro` text NOT NULL,
  `start_time` int(11) NOT NULL DEFAULT '0',
  `end_time` int(10) NOT NULL DEFAULT '0',
  `data` text NOT NULL,
  `template` varchar(255) NOT NULL DEFAULT '''''',
  `css` text NOT NULL,
  `topic_img` varchar(255) DEFAULT NULL,
  `title_pic` varchar(255) DEFAULT NULL,
  `base_style` char(6) DEFAULT NULL,
  `htmls` mediumtext,
  `keywords` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ecs_topic`
--

INSERT INTO `ecs_topic` (`topic_id`, `title`, `intro`, `start_time`, `end_time`, `data`, `template`, `css`, `topic_img`, `title_pic`, `base_style`, `htmls`, `keywords`, `description`) VALUES
(1, '夏新优惠大酬宾', '<p>夏新产品优惠开始了</p>', 1241107200, 1246291200, 'O:8:"stdClass":1:{s:7:"default";a:1:{i:0;s:11:"夏新N7|17";}}', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `ecs_touch_ad`
--

CREATE TABLE IF NOT EXISTS `ecs_touch_ad` (
  `ad_id` smallint(5) unsigned NOT NULL,
  `position_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `media_type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ad_name` varchar(60) NOT NULL DEFAULT '',
  `ad_link` varchar(255) NOT NULL DEFAULT '',
  `ad_code` text NOT NULL,
  `start_time` int(11) NOT NULL DEFAULT '0',
  `end_time` int(11) NOT NULL DEFAULT '0',
  `link_man` varchar(60) NOT NULL DEFAULT '',
  `link_email` varchar(60) NOT NULL DEFAULT '',
  `link_phone` varchar(60) NOT NULL DEFAULT '',
  `click_count` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `enabled` tinyint(3) unsigned NOT NULL DEFAULT '1'
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ecs_touch_ad`
--

INSERT INTO `ecs_touch_ad` (`ad_id`, `position_id`, `media_type`, `ad_name`, `ad_link`, `ad_code`, `start_time`, `end_time`, `link_man`, `link_email`, `link_phone`, `click_count`, `enabled`) VALUES
(1, 1, 0, '1', '', '1405993415897868755.jpg', 1396339200, 1525161600, '', '', '', 12, 1),
(2, 1, 0, '2', '', '1405993423056608174.jpg', 1396339200, 1525161600, '', '', '', 13, 1),
(3, 1, 0, '3', '', '1405993447816214694.jpg', 1396339200, 1525161600, '', '', '', 8, 1);

-- --------------------------------------------------------

--
-- Table structure for table `ecs_touch_ad_position`
--

CREATE TABLE IF NOT EXISTS `ecs_touch_ad_position` (
  `position_id` tinyint(3) unsigned NOT NULL,
  `position_name` varchar(60) NOT NULL DEFAULT '',
  `ad_width` smallint(5) unsigned NOT NULL DEFAULT '0',
  `ad_height` smallint(5) unsigned NOT NULL DEFAULT '0',
  `position_desc` varchar(255) NOT NULL DEFAULT '',
  `position_style` text NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ecs_touch_ad_position`
--

INSERT INTO `ecs_touch_ad_position` (`position_id`, `position_name`, `ad_width`, `ad_height`, `position_desc`, `position_style`) VALUES
(1, '手机版首页Banner', 360, 168, '', '<ul>\r\n{foreach from=$ads item=ad}\r\n  <li>{$ad}</li>\r\n{/foreach}\r\n</ul>\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `ecs_touch_nav`
--

CREATE TABLE IF NOT EXISTS `ecs_touch_nav` (
  `id` mediumint(8) NOT NULL,
  `ctype` varchar(10) DEFAULT NULL,
  `cid` smallint(5) unsigned DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `ifshow` tinyint(1) NOT NULL,
  `vieworder` tinyint(1) NOT NULL,
  `opennew` tinyint(1) NOT NULL,
  `url` varchar(255) NOT NULL,
  `pic` varchar(255) NOT NULL,
  `type` varchar(10) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ecs_touch_nav`
--

INSERT INTO `ecs_touch_nav` (`id`, `ctype`, `cid`, `name`, `ifshow`, `vieworder`, `opennew`, `url`, `pic`, `type`) VALUES
(1, '', 0, '全部分类', 1, 0, 0, 'cat_all.php', 'icon_indexn_01.png', 'middle'),
(2, '', 0, '帮助中心', 1, 0, 0, 'article_cat.php?id=3', 'icon_indexn_02.png', 'middle'),
(3, '', 0, '个人中心', 1, 0, 0, 'user.php', 'icon_indexn_03.png', 'middle'),
(4, '', 0, '分享', 1, 0, 0, 'ectouch.php?act=share', 'icon_indexn_04.png', 'middle'),
(5, '', 0, '联系我们', 1, 0, 0, 'ectouch.php?act=contact', 'icon_indexn_05.png', 'middle'),
(6, '', 0, '积分商城', 1, 0, 0, 'exchange.php', 'icon_indexn_06.png', 'middle'),
(7, '', 0, '团购', 1, 0, 0, 'group_buy.php', 'icon_indexn_07.png', 'middle'),
(8, '', 0, '电脑版', 1, 0, 0, '../', 'icon_indexn_08.png', 'middle');

-- --------------------------------------------------------

--
-- Table structure for table `ecs_touch_payment`
--

CREATE TABLE IF NOT EXISTS `ecs_touch_payment` (
  `pay_id` tinyint(3) unsigned NOT NULL,
  `pay_code` varchar(20) NOT NULL DEFAULT '',
  `pay_name` varchar(120) NOT NULL DEFAULT '',
  `pay_fee` varchar(10) NOT NULL DEFAULT '0',
  `pay_desc` text NOT NULL,
  `pay_order` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `pay_config` text NOT NULL,
  `enabled` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_cod` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_online` tinyint(1) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ecs_touch_payment`
--

INSERT INTO `ecs_touch_payment` (`pay_id`, `pay_code`, `pay_name`, `pay_fee`, `pay_desc`, `pay_order`, `pay_config`, `enabled`, `is_cod`, `is_online`) VALUES
(4, 'wxpay', '微信支付', '0', '微信支付，是基于客户端提供的服务功能。同时向商户提供销售经营分析、账户和资金管理的功能支持。用户通过扫描二维码、微信内打开商品页面购买等多种方式调起微信支付模块完成支付。', 0, 'a:6:{i:0;a:3:{s:4:"name";s:11:"wxpay_appid";s:4:"type";s:4:"text";s:5:"value";s:0:"";}i:1;a:3:{s:4:"name";s:15:"wxpay_appsecret";s:4:"type";s:4:"text";s:5:"value";s:0:"";}i:2;a:3:{s:4:"name";s:16:"wxpay_paysignkey";s:4:"type";s:4:"text";s:5:"value";s:0:"";}i:3;a:3:{s:4:"name";s:15:"wxpay_partnerid";s:4:"type";s:4:"text";s:5:"value";s:0:"";}i:4;a:3:{s:4:"name";s:16:"wxpay_partnerkey";s:4:"type";s:4:"text";s:5:"value";s:0:"";}i:5;a:3:{s:4:"name";s:14:"wxpay_signtype";s:4:"type";s:4:"text";s:5:"value";s:4:"sha1";}}', 1, 0, 1),
(5, 'alipay_wap', '支付宝（手机版）', '0', '支付宝（手机版）网站(www.alipay.com) 是国内先进的网上支付平台。', 0, 'a:3:{i:0;a:3:{s:4:"name";s:14:"alipay_account";s:4:"type";s:4:"text";s:5:"value";s:16:"yunhunet@163.com";}i:1;a:3:{s:4:"name";s:10:"alipay_key";s:4:"type";s:4:"text";s:5:"value";s:32:"6cmxx9tfy319fgfehf3w0hh3yc3wgr9p";}i:2;a:3:{s:4:"name";s:14:"alipay_partner";s:4:"type";s:4:"text";s:5:"value";s:16:"2088901332681362";}}', 1, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `ecs_touch_shipping`
--

CREATE TABLE IF NOT EXISTS `ecs_touch_shipping` (
  `shipping_id` tinyint(3) unsigned NOT NULL,
  `shipping_code` varchar(20) NOT NULL DEFAULT '',
  `shipping_name` varchar(120) NOT NULL DEFAULT '',
  `shipping_desc` varchar(255) NOT NULL DEFAULT '',
  `insure` varchar(10) NOT NULL DEFAULT '0',
  `support_cod` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `enabled` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `shipping_print` text NOT NULL,
  `print_bg` varchar(255) DEFAULT NULL,
  `config_lable` text,
  `print_model` tinyint(1) DEFAULT '0',
  `shipping_order` tinyint(3) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ecs_touch_shipping`
--

INSERT INTO `ecs_touch_shipping` (`shipping_id`, `shipping_code`, `shipping_name`, `shipping_desc`, `insure`, `support_cod`, `enabled`, `shipping_print`, `print_bg`, `config_lable`, `print_model`, `shipping_order`) VALUES
(1, 'post_express', '邮政快递包裹', '邮政快递包裹的描述内容。', '1%', 0, 1, '', '', '', 0, 0),
(2, 'yto', '圆通速递', '上海圆通物流（速递）有限公司经过多年的网络快速发展，在中国速递行业中一直处于领先地位。为了能更好的发展国际快件市场，加快与国际市场的接轨，强化圆通的整体实力，圆通已在东南亚、欧美、中东、北美洲、非洲等许多城市运作国际快件业务', '0', 1, 1, '', '', '', 0, 0),
(3, 'city_express', '城际快递', '配送的运费是固定的', '0', 1, 1, '', '', '', 0, 0),
(4, 'flat', '市内快递', '固定运费的配送方式内容', '0', 1, 1, '', '', '', 0, 0),
(5, 'sto_express', '申通快递', '江、浙、沪地区首重为15元/KG，其他地区18元/KG， 续重均为5-6元/KG， 云南地区为8元', '0', 0, 1, '', '', '', 0, 0),
(6, 'post_mail', '邮局平邮', '邮局平邮的描述内容。', '0', 0, 1, '', '', '', 0, 0),
(7, 'fpd', '运费到付', '所购商品到达即付运费', '0', 0, 1, '', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ecs_touch_shipping_area`
--

CREATE TABLE IF NOT EXISTS `ecs_touch_shipping_area` (
  `shipping_area_id` smallint(5) unsigned NOT NULL,
  `shipping_area_name` varchar(150) NOT NULL DEFAULT '',
  `shipping_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `configure` text NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ecs_touch_shipping_area`
--

INSERT INTO `ecs_touch_shipping_area` (`shipping_area_id`, `shipping_area_name`, `shipping_id`, `configure`) VALUES
(1, '申通', 5, 'a:5:{i:0;a:2:{s:4:"name";s:8:"item_fee";s:5:"value";s:2:"15";}i:1;a:2:{s:4:"name";s:8:"base_fee";s:5:"value";s:2:"15";}i:2;a:2:{s:4:"name";s:8:"step_fee";s:5:"value";s:1:"5";}i:3;a:2:{s:4:"name";s:10:"free_money";s:5:"value";s:1:"0";}i:4;a:2:{s:4:"name";s:16:"fee_compute_mode";s:5:"value";s:9:"by_weight";}}'),
(2, '1', 3, 'a:4:{i:0;a:2:{s:4:"name";s:8:"base_fee";s:5:"value";s:2:"10";}i:1;a:2:{s:4:"name";s:10:"free_money";s:5:"value";s:6:"100000";}i:2;a:2:{s:4:"name";s:16:"fee_compute_mode";s:5:"value";N;}i:3;a:2:{s:4:"name";s:7:"pay_fee";s:5:"value";s:1:"5";}}'),
(3, '邮局', 6, 'a:7:{i:0;a:2:{s:4:"name";s:8:"item_fee";s:5:"value";s:1:"4";}i:1;a:2:{s:4:"name";s:8:"base_fee";s:5:"value";s:3:"3.5";}i:2;a:2:{s:4:"name";s:8:"step_fee";s:5:"value";s:3:"2.5";}i:3;a:2:{s:4:"name";s:9:"step_fee1";s:5:"value";N;}i:4;a:2:{s:4:"name";s:8:"pack_fee";s:5:"value";s:1:"0";}i:5;a:2:{s:4:"name";s:10:"free_money";s:5:"value";s:5:"50000";}i:6;a:2:{s:4:"name";s:16:"fee_compute_mode";s:5:"value";s:9:"by_weight";}}'),
(4, '运费到付', 7, 'a:2:{i:0;a:2:{s:4:"name";s:10:"free_money";s:5:"value";s:5:"50000";}i:1;a:2:{s:4:"name";s:16:"fee_compute_mode";s:5:"value";N;}}');

-- --------------------------------------------------------

--
-- Table structure for table `ecs_touch_shop_config`
--

CREATE TABLE IF NOT EXISTS `ecs_touch_shop_config` (
  `id` smallint(5) unsigned NOT NULL,
  `parent_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `code` varchar(30) NOT NULL DEFAULT '',
  `type` varchar(10) NOT NULL DEFAULT '',
  `store_range` varchar(255) NOT NULL DEFAULT '',
  `store_dir` varchar(255) NOT NULL DEFAULT '',
  `value` text NOT NULL,
  `sort_order` tinyint(3) unsigned NOT NULL DEFAULT '1'
) ENGINE=MyISAM AUTO_INCREMENT=907 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ecs_touch_shop_config`
--

INSERT INTO `ecs_touch_shop_config` (`id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order`) VALUES
(1, 0, 'shop_info', 'group', '', '', '', 1),
(2, 0, 'basic', 'group', '', '', '', 1),
(3, 0, 'display', 'group', '', '', '', 1),
(4, 0, 'shopping_flow', 'group', '', '', '', 1),
(5, 0, 'smtp', 'group', '', '', '', 1),
(6, 0, 'hidden', 'hidden', '', '', '', 1),
(7, 0, 'goods', 'group', '', '', '', 1),
(8, 0, 'sms', 'group', '', '', '', 1),
(9, 0, 'wap', 'hidden', '', '', '', 1),
(101, 1, 'shop_name', 'text', '', '', 'ECTouch企业版', 1),
(102, 1, 'shop_title', 'text', '', '', 'ECTouch企业版演示站', 1),
(103, 1, 'shop_desc', 'text', '', '', 'ECTouch企业版演示站', 1),
(104, 1, 'shop_keywords', 'text', '', '', 'ECTouch企业版演示站', 1),
(105, 1, 'shop_country', 'manual', '', '', '1', 1),
(106, 1, 'shop_province', 'manual', '', '', '2', 1),
(107, 1, 'shop_city', 'manual', '', '', '52', 1),
(108, 1, 'shop_address', 'text', '', '', '', 1),
(109, 1, 'qq', 'text', '', '', '', 1),
(110, 1, 'ww', 'text', '', '', '', 1),
(111, 1, 'skype', 'text', '', '', '', 1),
(112, 1, 'ym', 'text', '', '', '', 1),
(113, 1, 'msn', 'text', '', '', '', 1),
(114, 1, 'service_email', 'text', '', '', '', 1),
(115, 1, 'service_phone', 'text', '', '', '', 1),
(116, 1, 'shop_closed', 'select', '0,1', '', '0', 1),
(117, 1, 'close_comment', 'textarea', '', '', '', 1),
(118, 1, 'shop_logo', 'file', '', '../themes/{$template}/images/', '', 1),
(119, 1, 'licensed', 'select', '0,1', '', '1', 1),
(120, 1, 'user_notice', 'textarea', '', '', '用户中心公告！', 1),
(121, 1, 'shop_notice', 'textarea', '', '', '欢迎光临手机网,我们的宗旨：诚信经营、服务客户！\r\n<MARQUEE onmouseover=this.stop() onmouseout=this.start() \r\nscrollAmount=3><U><FONT color=red>\r\n<P>咨询电话010-10124444  010-21252454 8465544</P></FONT></U></MARQUEE>', 1),
(122, 1, 'shop_reg_closed', 'select', '1,0', '', '0', 1),
(201, 2, 'lang', 'manual', '', '', 'zh_cn', 1),
(202, 2, 'icp_number', 'text', '', '', '', 1),
(203, 2, 'icp_file', 'file', '', '../cert/', '', 1),
(204, 2, 'watermark', 'file', '', '../images/', '', 1),
(205, 2, 'watermark_place', 'select', '0,1,2,3,4,5', '', '1', 1),
(206, 2, 'watermark_alpha', 'text', '', '', '65', 1),
(207, 2, 'use_storage', 'select', '1,0', '', '1', 1),
(208, 2, 'market_price_rate', 'text', '', '', '1.2', 1),
(209, 2, 'rewrite', 'select', '0,1,2', '', '1', 1),
(210, 2, 'integral_name', 'text', '', '', '积分', 1),
(211, 2, 'integral_scale', 'text', '', '', '1', 1),
(212, 2, 'integral_percent', 'text', '', '', '1', 1),
(213, 2, 'sn_prefix', 'text', '', '', 'ECS', 1),
(214, 2, 'comment_check', 'select', '0,1', '', '1', 1),
(215, 2, 'no_picture', 'file', '', '../images/', '', 1),
(218, 2, 'stats_code', 'textarea', '', '', '', 1),
(219, 2, 'cache_time', 'text', '', '', '3600', 1),
(220, 2, 'register_points', 'text', '', '', '0', 1),
(221, 2, 'enable_gzip', 'select', '0,1', '', '0', 1),
(222, 2, 'top10_time', 'select', '0,1,2,3,4', '', '0', 1),
(223, 2, 'timezone', 'options', '-12,-11,-10,-9,-8,-7,-6,-5,-4,-3.5,-3,-2,-1,0,1,2,3,3.5,4,4.5,5,5.5,5.75,6,6.5,7,8,9,9.5,10,11,12', '', '8', 1),
(224, 2, 'upload_size_limit', 'options', '-1,0,64,128,256,512,1024,2048,4096', '', '64', 1),
(226, 2, 'cron_method', 'select', '0,1', '', '0', 1),
(227, 2, 'comment_factor', 'select', '0,1,2,3', '', '0', 1),
(228, 2, 'enable_order_check', 'select', '0,1', '', '1', 1),
(229, 2, 'default_storage', 'text', '', '', '1', 1),
(230, 2, 'bgcolor', 'text', '', '', '#FFFFFF', 1),
(231, 2, 'visit_stats', 'select', 'on,off', '', 'on', 1),
(232, 2, 'send_mail_on', 'select', 'on,off', '', 'off', 1),
(233, 2, 'auto_generate_gallery', 'select', '1,0', '', '1', 1),
(234, 2, 'retain_original_img', 'select', '1,0', '', '1', 1),
(235, 2, 'member_email_validate', 'select', '1,0', '', '1', 1),
(236, 2, 'message_board', 'select', '1,0', '', '1', 1),
(239, 2, 'certificate_id', 'hidden', '', '', '1973173734', 1),
(240, 2, 'token', 'hidden', '', '', '05a66699b557e322c2d739cdb0bfde18f536fbc7e850515f7a222d15ef8533b1', 1),
(241, 2, 'certi', 'hidden', '', '', 'http://service.shopex.cn/openapi/api.php', 1),
(242, 2, 'send_verify_email', 'select', '1,0', '', '0', 1),
(243, 2, 'ent_id', 'hidden', '', '', '', 1),
(244, 2, 'ent_ac', 'hidden', '', '', '', 1),
(245, 2, 'ent_sign', 'hidden', '', '', '', 1),
(246, 2, 'ent_email', 'hidden', '', '', '', 1),
(301, 3, 'date_format', 'hidden', '', '', 'Y-m-d', 1),
(302, 3, 'time_format', 'text', '', '', 'Y-m-d H:i:s', 1),
(303, 3, 'currency_format', 'text', '', '', '￥%s元', 1),
(304, 3, 'thumb_width', 'text', '', '', '100', 1),
(305, 3, 'thumb_height', 'text', '', '', '100', 1),
(306, 3, 'image_width', 'text', '', '', '230', 1),
(307, 3, 'image_height', 'text', '', '', '230', 1),
(312, 3, 'top_number', 'text', '', '', '10', 1),
(313, 3, 'history_number', 'text', '', '', '5', 1),
(314, 3, 'comments_number', 'text', '', '', '5', 1),
(315, 3, 'bought_goods', 'text', '', '', '3', 1),
(316, 3, 'article_number', 'text', '', '', '8', 1),
(317, 3, 'goods_name_length', 'text', '', '', '7', 1),
(318, 3, 'price_format', 'select', '0,1,2,3,4,5', '', '5', 1),
(319, 3, 'page_size', 'text', '', '', '10', 1),
(320, 3, 'sort_order_type', 'select', '0,1,2', '', '0', 1),
(321, 3, 'sort_order_method', 'select', '0,1', '', '0', 1),
(322, 3, 'show_order_type', 'select', '0,1,2', '', '1', 1),
(323, 3, 'attr_related_number', 'text', '', '', '5', 1),
(324, 3, 'goods_gallery_number', 'text', '', '', '5', 1),
(325, 3, 'article_title_length', 'text', '', '', '16', 1),
(326, 3, 'name_of_region_1', 'text', '', '', '国家', 1),
(327, 3, 'name_of_region_2', 'text', '', '', '省', 1),
(328, 3, 'name_of_region_3', 'text', '', '', '市', 1),
(329, 3, 'name_of_region_4', 'text', '', '', '区', 1),
(330, 3, 'search_keywords', 'text', '', '', '', 0),
(332, 3, 'related_goods_number', 'text', '', '', '4', 1),
(333, 3, 'help_open', 'select', '0,1', '', '1', 1),
(334, 3, 'article_page_size', 'text', '', '', '10', 1),
(335, 3, 'page_style', 'select', '0,1', '', '1', 1),
(336, 3, 'recommend_order', 'select', '0,1', '', '0', 1),
(337, 3, 'index_ad', 'hidden', '', '', 'sys', 1),
(401, 4, 'can_invoice', 'select', '1,0', '', '1', 1),
(402, 4, 'use_integral', 'select', '1,0', '', '1', 1),
(403, 4, 'use_bonus', 'select', '1,0', '', '1', 1),
(404, 4, 'use_surplus', 'select', '1,0', '', '1', 1),
(405, 4, 'use_how_oos', 'select', '1,0', '', '1', 1),
(406, 4, 'send_confirm_email', 'select', '1,0', '', '0', 1),
(407, 4, 'send_ship_email', 'select', '1,0', '', '0', 1),
(408, 4, 'send_cancel_email', 'select', '1,0', '', '0', 1),
(409, 4, 'send_invalid_email', 'select', '1,0', '', '0', 1),
(410, 4, 'order_pay_note', 'select', '1,0', '', '1', 1),
(411, 4, 'order_unpay_note', 'select', '1,0', '', '1', 1),
(412, 4, 'order_ship_note', 'select', '1,0', '', '1', 1),
(413, 4, 'order_receive_note', 'select', '1,0', '', '1', 1),
(414, 4, 'order_unship_note', 'select', '1,0', '', '1', 1),
(415, 4, 'order_return_note', 'select', '1,0', '', '1', 1),
(416, 4, 'order_invalid_note', 'select', '1,0', '', '1', 1),
(417, 4, 'order_cancel_note', 'select', '1,0', '', '1', 1),
(418, 4, 'invoice_content', 'textarea', '', '', '', 1),
(419, 4, 'anonymous_buy', 'select', '1,0', '', '1', 1),
(420, 4, 'min_goods_amount', 'text', '', '', '0', 1),
(421, 4, 'one_step_buy', 'select', '1,0', '', '0', 1),
(422, 4, 'invoice_type', 'manual', '', '', 'a:2:{s:4:"type";a:3:{i:0;s:1:"1";i:1;s:1:"2";i:2;s:0:"";}s:4:"rate";a:3:{i:0;d:1;i:1;d:1.5;i:2;d:0;}}', 1),
(423, 4, 'stock_dec_time', 'select', '1,0', '', '0', 1),
(424, 4, 'cart_confirm', 'options', '1,2,3,4', '', '3', 0),
(425, 4, 'send_service_email', 'select', '1,0', '', '0', 1),
(426, 4, 'show_goods_in_cart', 'select', '1,2,3', '', '3', 1),
(427, 4, 'show_attr_in_cart', 'select', '1,0', '', '1', 1),
(501, 5, 'smtp_host', 'text', '', '', 'localhost', 1),
(502, 5, 'smtp_port', 'text', '', '', '25', 1),
(503, 5, 'smtp_user', 'text', '', '', '', 1),
(504, 5, 'smtp_pass', 'password', '', '', '', 1),
(505, 5, 'smtp_mail', 'text', '', '', '', 1),
(506, 5, 'mail_charset', 'select', 'UTF8,GB2312,BIG5', '', 'UTF8', 1),
(507, 5, 'mail_service', 'select', '0,1', '', '0', 0),
(508, 5, 'smtp_ssl', 'select', '0,1', '', '0', 0),
(601, 6, 'integrate_code', 'hidden', '', '', 'ecshop', 1),
(602, 6, 'integrate_config', 'hidden', '', '', '', 1),
(603, 6, 'hash_code', 'hidden', '', '', 'a1b827baf2cfef7fbfbf581376707011', 1),
(604, 6, 'template', 'hidden', '', '', 'default', 1),
(605, 6, 'install_date', 'hidden', '', '', '1405743969', 1),
(606, 6, 'ecs_version', 'hidden', '', '', 'v2.7.3', 1),
(607, 6, 'sms_user_name', 'hidden', '', '', '', 1),
(608, 6, 'sms_password', 'hidden', '', '', '', 1),
(609, 6, 'sms_auth_str', 'hidden', '', '', '', 1),
(610, 6, 'sms_domain', 'hidden', '', '', '', 1),
(611, 6, 'sms_count', 'hidden', '', '', '', 1),
(612, 6, 'sms_total_money', 'hidden', '', '', '', 1),
(613, 6, 'sms_balance', 'hidden', '', '', '', 1),
(614, 6, 'sms_last_request', 'hidden', '', '', '', 1),
(616, 6, 'affiliate', 'hidden', '', '', 'a:3:{s:6:"config";a:7:{s:6:"expire";d:24;s:11:"expire_unit";s:4:"hour";s:11:"separate_by";i:0;s:15:"level_point_all";s:2:"5%";s:15:"level_money_all";s:2:"1%";s:18:"level_register_all";i:2;s:17:"level_register_up";i:60;}s:4:"item";a:4:{i:0;a:2:{s:11:"level_point";s:3:"60%";s:11:"level_money";s:3:"60%";}i:1;a:2:{s:11:"level_point";s:3:"30%";s:11:"level_money";s:3:"30%";}i:2;a:2:{s:11:"level_point";s:2:"7%";s:11:"level_money";s:2:"7%";}i:3;a:2:{s:11:"level_point";s:2:"3%";s:11:"level_money";s:2:"3%";}}s:2:"on";i:1;}', 1),
(617, 6, 'captcha', 'hidden', '', '', '36', 1),
(618, 6, 'captcha_width', 'hidden', '', '', '100', 1),
(619, 6, 'captcha_height', 'hidden', '', '', '20', 1),
(620, 6, 'sitemap', 'hidden', '', '', 'a:6:{s:19:"homepage_changefreq";s:6:"hourly";s:17:"homepage_priority";s:3:"0.9";s:19:"category_changefreq";s:6:"hourly";s:17:"category_priority";s:3:"0.8";s:18:"content_changefreq";s:6:"weekly";s:16:"content_priority";s:3:"0.7";}', 0),
(621, 6, 'points_rule', 'hidden', '', '', '', 0),
(622, 6, 'flash_theme', 'hidden', '', '', 'dynfocus', 1),
(623, 6, 'stylename', 'hidden', '', '', '', 1),
(701, 7, 'show_goodssn', 'select', '1,0', '', '1', 1),
(702, 7, 'show_brand', 'select', '1,0', '', '1', 1),
(703, 7, 'show_goodsweight', 'select', '1,0', '', '1', 1),
(704, 7, 'show_goodsnumber', 'select', '1,0', '', '1', 1),
(705, 7, 'show_addtime', 'select', '1,0', '', '1', 1),
(706, 7, 'goodsattr_style', 'select', '1,0', '', '1', 1),
(707, 7, 'show_marketprice', 'select', '1,0', '', '1', 1),
(801, 8, 'sms_shop_mobile', 'text', '', '', '', 1),
(802, 8, 'sms_order_placed', 'select', '1,0', '', '0', 1),
(803, 8, 'sms_order_payed', 'select', '1,0', '', '0', 1),
(804, 8, 'sms_order_shipped', 'select', '1,0', '', '0', 1),
(901, 9, 'wap_config', 'select', '1,0', '', '0', 1),
(902, 9, 'wap_logo', 'file', '', '../images/', '', 1),
(903, 2, 'message_check', 'select', '1,0', '', '1', 1),
(904, 8, 'sms_ecmoban_user', 'text', '', '', '', 0),
(905, 8, 'sms_ecmoban_password', 'password', '', '', '', 0),
(906, 8, 'sms_signin', 'select', '1,0', '', '0', 1);

-- --------------------------------------------------------

--
-- Table structure for table `ecs_touch_template`
--

CREATE TABLE IF NOT EXISTS `ecs_touch_template` (
  `filename` varchar(30) NOT NULL DEFAULT '',
  `region` varchar(40) NOT NULL DEFAULT '',
  `library` varchar(40) NOT NULL DEFAULT '',
  `sort_order` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `number` tinyint(1) unsigned NOT NULL DEFAULT '5',
  `type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `theme` varchar(60) NOT NULL DEFAULT '',
  `remarks` varchar(30) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ecs_touch_template`
--

INSERT INTO `ecs_touch_template` (`filename`, `region`, `library`, `sort_order`, `id`, `number`, `type`, `theme`, `remarks`) VALUES
('index', 'touch首页广告区域', '/library/ad_position.lbi', 0, 1, 4, 4, 'default', ''),
('index', '中部主区域', '/library/recommend_hot.lbi', 2, 0, 10, 0, 'default', ''),
('index', '中部主区域', '/library/recommend_new.lbi', 1, 0, 10, 0, 'default', ''),
('index', '中部主区域', '/library/recommend_best.lbi', 0, 0, 10, 0, 'default', '');

-- --------------------------------------------------------

--
-- Table structure for table `ecs_users`
--

CREATE TABLE IF NOT EXISTS `ecs_users` (
  `user_id` mediumint(8) unsigned NOT NULL,
  `aite_id` text NOT NULL,
  `email` varchar(60) NOT NULL DEFAULT '',
  `user_name` varchar(60) NOT NULL DEFAULT '',
  `password` varchar(32) NOT NULL DEFAULT '',
  `question` varchar(255) NOT NULL DEFAULT '',
  `answer` varchar(255) NOT NULL DEFAULT '',
  `sex` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `birthday` date NOT NULL DEFAULT '0000-00-00',
  `user_money` decimal(10,2) NOT NULL DEFAULT '0.00',
  `frozen_money` decimal(10,2) NOT NULL DEFAULT '0.00',
  `pay_points` int(10) unsigned NOT NULL DEFAULT '0',
  `rank_points` int(10) unsigned NOT NULL DEFAULT '0',
  `address_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `reg_time` int(10) unsigned NOT NULL DEFAULT '0',
  `last_login` int(11) unsigned NOT NULL DEFAULT '0',
  `last_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_ip` varchar(15) NOT NULL DEFAULT '',
  `visit_count` smallint(5) unsigned NOT NULL DEFAULT '0',
  `user_rank` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `is_special` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ec_salt` varchar(10) DEFAULT NULL,
  `salt` varchar(10) NOT NULL DEFAULT '0',
  `parent_id` mediumint(9) NOT NULL DEFAULT '0',
  `flag` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `alias` varchar(60) NOT NULL,
  `msn` varchar(60) NOT NULL,
  `qq` varchar(20) NOT NULL,
  `office_phone` varchar(20) NOT NULL,
  `home_phone` varchar(20) NOT NULL,
  `mobile_phone` varchar(20) NOT NULL,
  `is_validated` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `credit_line` decimal(10,2) unsigned NOT NULL,
  `passwd_question` varchar(50) DEFAULT NULL,
  `passwd_answer` varchar(255) DEFAULT NULL,
  `wxid` char(28) NOT NULL,
  `wxch_bd` char(2) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ecs_users`
--

INSERT INTO `ecs_users` (`user_id`, `aite_id`, `email`, `user_name`, `password`, `question`, `answer`, `sex`, `birthday`, `user_money`, `frozen_money`, `pay_points`, `rank_points`, `address_id`, `reg_time`, `last_login`, `last_time`, `last_ip`, `visit_count`, `user_rank`, `is_special`, `ec_salt`, `salt`, `parent_id`, `flag`, `alias`, `msn`, `qq`, `office_phone`, `home_phone`, `mobile_phone`, `is_validated`, `credit_line`, `passwd_question`, `passwd_answer`, `wxid`, `wxch_bd`) VALUES
(1, '', 'fourit@yahoo.com', 'fourit', '1c66f1d1e2538b6842f477e4e370b58d', '', '', 0, '0000-00-00', '0.00', '0.00', 0, 0, 0, 1438020620, 1438182696, '0000-00-00 00:00:00', '0.0.0.0', 2, 0, 0, '50', '0', 0, 0, '', '', '', '', '', '', 0, '0.00', NULL, NULL, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `ecs_user_account`
--

CREATE TABLE IF NOT EXISTS `ecs_user_account` (
  `id` mediumint(8) unsigned NOT NULL,
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `admin_user` varchar(255) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `add_time` int(10) NOT NULL DEFAULT '0',
  `paid_time` int(10) NOT NULL DEFAULT '0',
  `admin_note` varchar(255) NOT NULL,
  `user_note` varchar(255) NOT NULL,
  `process_type` tinyint(1) NOT NULL DEFAULT '0',
  `payment` varchar(90) NOT NULL,
  `is_paid` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ecs_user_address`
--

CREATE TABLE IF NOT EXISTS `ecs_user_address` (
  `address_id` mediumint(8) unsigned NOT NULL,
  `address_name` varchar(50) NOT NULL DEFAULT '',
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `consignee` varchar(60) NOT NULL DEFAULT '',
  `email` varchar(60) NOT NULL DEFAULT '',
  `country` smallint(5) NOT NULL DEFAULT '0',
  `province` smallint(5) NOT NULL DEFAULT '0',
  `city` smallint(5) NOT NULL DEFAULT '0',
  `district` smallint(5) NOT NULL DEFAULT '0',
  `address` varchar(120) NOT NULL DEFAULT '',
  `zipcode` varchar(60) NOT NULL DEFAULT '',
  `tel` varchar(60) NOT NULL DEFAULT '',
  `mobile` varchar(60) NOT NULL DEFAULT '',
  `sign_building` varchar(120) NOT NULL DEFAULT '',
  `best_time` varchar(120) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ecs_user_bonus`
--

CREATE TABLE IF NOT EXISTS `ecs_user_bonus` (
  `bonus_id` mediumint(8) unsigned NOT NULL,
  `bonus_type_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `bonus_sn` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `used_time` int(10) unsigned NOT NULL DEFAULT '0',
  `order_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `emailed` tinyint(3) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ecs_user_bonus`
--

INSERT INTO `ecs_user_bonus` (`bonus_id`, `bonus_type_id`, `bonus_sn`, `user_id`, `used_time`, `order_id`, `emailed`) VALUES
(3, 4, 1000018450, 0, 0, 0, 0),
(4, 4, 1000023774, 0, 0, 0, 0),
(5, 4, 1000039394, 0, 0, 0, 0),
(6, 4, 1000049305, 0, 0, 0, 0),
(7, 4, 1000052248, 0, 0, 0, 0),
(8, 4, 1000061542, 0, 0, 0, 0),
(9, 4, 1000070278, 0, 0, 0, 0),
(10, 4, 1000080588, 0, 0, 0, 0),
(11, 4, 1000091405, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ecs_user_feed`
--

CREATE TABLE IF NOT EXISTS `ecs_user_feed` (
  `feed_id` mediumint(8) unsigned NOT NULL,
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `value_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `feed_type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_feed` tinyint(1) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ecs_user_rank`
--

CREATE TABLE IF NOT EXISTS `ecs_user_rank` (
  `rank_id` tinyint(3) unsigned NOT NULL,
  `rank_name` varchar(30) NOT NULL DEFAULT '',
  `min_points` int(10) unsigned NOT NULL DEFAULT '0',
  `max_points` int(10) unsigned NOT NULL DEFAULT '0',
  `discount` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `show_price` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `special_rank` tinyint(1) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=100 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ecs_user_rank`
--

INSERT INTO `ecs_user_rank` (`rank_id`, `rank_name`, `min_points`, `max_points`, `discount`, `show_price`, `special_rank`) VALUES
(1, '注册用户', 0, 10000, 100, 1, 0),
(2, 'vip', 10000, 10000000, 95, 1, 0),
(3, '代销用户', 0, 0, 90, 0, 1),
(99, '微信用户', 0, 0, 100, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `ecs_virtual_card`
--

CREATE TABLE IF NOT EXISTS `ecs_virtual_card` (
  `card_id` mediumint(8) NOT NULL,
  `goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `card_sn` varchar(60) NOT NULL DEFAULT '',
  `card_password` varchar(60) NOT NULL DEFAULT '',
  `add_date` int(11) NOT NULL DEFAULT '0',
  `end_date` int(11) NOT NULL DEFAULT '0',
  `is_saled` tinyint(1) NOT NULL DEFAULT '0',
  `order_sn` varchar(20) NOT NULL DEFAULT '',
  `crc32` varchar(12) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ecs_virtual_card`
--

INSERT INTO `ecs_virtual_card` (`card_id`, `goods_id`, `card_sn`, `card_password`, `add_date`, `end_date`, `is_saled`, `order_sn`, `crc32`) VALUES
(1, 25, 'RVlYQhFY', 'RVlYQhFYQg', 1241972716, 1273449600, 0, '', '-1958172277'),
(2, 25, 'RVlYQhFYQhFQEg', 'RVlYQhFYQhFQEg', 1241972726, 1273449600, 0, '', '-1958172277'),
(3, 26, 'RVlYQhFYQg', 'RVlYQhFYQg', 1241972801, 1273449600, 0, '', '-1958172277'),
(4, 26, 'RVlYQhFYQhFQEVo', 'RVlYQhFYQhFQEVo', 1241972811, 1273449600, 0, '', '-1958172277'),
(5, 27, 'RlpbQRI', 'RlpbQRJbQQ', 1241972903, 1273449600, 0, '', '-1958172277'),
(6, 27, 'RlpbQRJbQg', 'RVpbQBJaQRE', 1241972911, 1273449600, 0, '', '-1958172277'),
(7, 30, 'RVtbQBJYQBJQE1lU', 'R1pYRxJaQhRTEVhXSEdaWA', 1241973121, 1273449600, 0, '', '-1958172277'),
(8, 30, 'R1pYRxJYRxNTFV9S', 'TF5cQBVdQA', 1241973127, 1273449600, 0, '', '-1958172277'),
(9, 30, 'Q15cSxZeRhhWFg', 'TV9fSxdfSxdXGFxTQUI', 1241973134, 1273449600, 0, '', '-1958172277'),
(10, 30, 'QVxaRhRaRhRSF11d', 'TFBeRRheRRhWFlJdSU1Q', 1241973146, 1273449600, 0, '', '-1958172277'),
(11, 30, 'R1xaRxNcRw', 'QF1dRRVdRBY', 1241973157, 1273449600, 0, '', '-1958172277'),
(12, 30, 'RlpbQRNdQBJU', 'R1xaQRRaQRVSEg', 1241973164, 1273449600, 0, '', '-1958172277'),
(13, 30, 'RltdQBRaQQ', 'Rl1dRRheRRhYF10', 1241973170, 1273449600, 0, '', '-1958172277'),
(14, 30, 'RltdQBVeRhg', 'RlxaQRZeRhVV', 1241973178, 1273449600, 0, '', '-1958172277'),
(15, 30, 'QFtbRhRaQRZVEw', 'Rl1aQRRaQRZUElg', 1241973185, 1273449600, 0, '', '-1958172277');

-- --------------------------------------------------------

--
-- Table structure for table `ecs_volume_price`
--

CREATE TABLE IF NOT EXISTS `ecs_volume_price` (
  `price_type` tinyint(1) unsigned NOT NULL,
  `goods_id` mediumint(8) unsigned NOT NULL,
  `volume_number` smallint(5) unsigned NOT NULL DEFAULT '0',
  `volume_price` decimal(10,2) NOT NULL DEFAULT '0.00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ecs_volume_price`
--

INSERT INTO `ecs_volume_price` (`price_type`, `goods_id`, `volume_number`, `volume_price`) VALUES
(1, 1, 5, '1366.00'),
(1, 9, 5, '2100.00'),
(1, 9, 3, '2200.00'),
(1, 13, 3, '1200.00'),
(1, 13, 5, '1150.00');

-- --------------------------------------------------------

--
-- Table structure for table `ecs_vote`
--

CREATE TABLE IF NOT EXISTS `ecs_vote` (
  `vote_id` smallint(5) unsigned NOT NULL,
  `vote_name` varchar(250) NOT NULL DEFAULT '',
  `start_time` int(11) unsigned NOT NULL DEFAULT '0',
  `end_time` int(11) unsigned NOT NULL DEFAULT '0',
  `can_multi` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `vote_count` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ecs_vote`
--

INSERT INTO `ecs_vote` (`vote_id`, `vote_name`, `start_time`, `end_time`, `can_multi`, `vote_count`) VALUES
(1, '您从哪里知道我们的网站', 1213200000, 1274803200, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ecs_vote_log`
--

CREATE TABLE IF NOT EXISTS `ecs_vote_log` (
  `log_id` mediumint(8) unsigned NOT NULL,
  `vote_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `ip_address` varchar(15) NOT NULL DEFAULT '',
  `vote_time` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ecs_vote_option`
--

CREATE TABLE IF NOT EXISTS `ecs_vote_option` (
  `option_id` smallint(5) unsigned NOT NULL,
  `vote_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `option_name` varchar(250) NOT NULL DEFAULT '',
  `option_count` int(8) unsigned NOT NULL DEFAULT '0',
  `option_order` tinyint(3) unsigned NOT NULL DEFAULT '100'
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ecs_vote_option`
--

INSERT INTO `ecs_vote_option` (`option_id`, `vote_id`, `option_name`, `option_count`, `option_order`) VALUES
(1, 1, '论坛', 0, 100),
(2, 1, '朋友', 0, 100),
(3, 1, '友情链接', 0, 100);

-- --------------------------------------------------------

--
-- Table structure for table `ecs_wholesale`
--

CREATE TABLE IF NOT EXISTS `ecs_wholesale` (
  `act_id` mediumint(8) unsigned NOT NULL,
  `goods_id` mediumint(8) unsigned NOT NULL,
  `goods_name` varchar(255) NOT NULL,
  `rank_ids` varchar(255) NOT NULL,
  `prices` text NOT NULL,
  `enabled` tinyint(3) unsigned NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ecs_wholesale`
--

INSERT INTO `ecs_wholesale` (`act_id`, `goods_id`, `goods_name`, `rank_ids`, `prices`, `enabled`) VALUES
(1, 21, '金立 A30', '1,2', 'a:1:{i:0;a:2:{s:4:"attr";a:1:{i:120;s:1:"0";}s:7:"qp_list";a:2:{i:0;a:2:{s:8:"quantity";i:50;s:5:"price";d:1700;}i:1;a:2:{s:8:"quantity";i:100;s:5:"price";d:1680;}}}}', 1);

-- --------------------------------------------------------

--
-- Table structure for table `ecs_xe_rate`
--

CREATE TABLE IF NOT EXISTS `ecs_xe_rate` (
  `xe_rate_id` mediumint(8) unsigned NOT NULL,
  `base_cur` varchar(60) NOT NULL,
  `trans_cur` varchar(60) NOT NULL,
  `cur_date` int(10) unsigned NOT NULL DEFAULT '0',
  `rate` decimal(10,4) unsigned NOT NULL DEFAULT '0.0000'
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ecs_xe_rate`
--

INSERT INTO `ecs_xe_rate` (`xe_rate_id`, `base_cur`, `trans_cur`, `cur_date`, `rate`) VALUES
(2, 'CNY', 'CAD', 1435892700, '4.9622');

-- --------------------------------------------------------

--
-- Table structure for table `wxch_cfg`
--

CREATE TABLE IF NOT EXISTS `wxch_cfg` (
  `cfg_id` int(3) unsigned NOT NULL,
  `cfg_name` varchar(64) NOT NULL DEFAULT '',
  `cfg_value` varchar(100) NOT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes'
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wxch_cfg`
--

INSERT INTO `wxch_cfg` (`cfg_id`, `cfg_name`, `cfg_value`, `autoload`) VALUES
(1, 'murl', 'mobile/', 'yes'),
(2, 'baseurl', 'http://ecshop273utf8.com/shop/', 'yes'),
(3, 'imgpath', 'local', 'yes'),
(4, 'plustj', 'true', 'yes'),
(5, 'userpwd', 'wxch', 'yes'),
(6, 'cxbd', 'true', 'yes'),
(8, 'oauth', 'false', 'yes'),
(7, 'bd', 'web', 'yes'),
(9, 'goods', 'false', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `wxch_config`
--

CREATE TABLE IF NOT EXISTS `wxch_config` (
  `id` int(1) NOT NULL,
  `token` varchar(100) NOT NULL,
  `appid` char(18) NOT NULL,
  `appsecret` char(32) NOT NULL,
  `access_token` text NOT NULL,
  `dateline` int(10) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wxch_config`
--

INSERT INTO `wxch_config` (`id`, `token`, `appid`, `appsecret`, `access_token`, `dateline`) VALUES
(1, 'weixin', '', '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wxch_coupon`
--

CREATE TABLE IF NOT EXISTS `wxch_coupon` (
  `id` tinyint(1) NOT NULL,
  `type_id` int(5) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wxch_coupon`
--

INSERT INTO `wxch_coupon` (`id`, `type_id`) VALUES
(1, 4);

-- --------------------------------------------------------

--
-- Table structure for table `wxch_keywords`
--

CREATE TABLE IF NOT EXISTS `wxch_keywords` (
  `id` int(4) unsigned NOT NULL,
  `name` varchar(100) NOT NULL,
  `keyword` varchar(100) NOT NULL,
  `type` tinyint(1) unsigned NOT NULL,
  `contents` text NOT NULL,
  `count` int(10) unsigned NOT NULL,
  `status` tinyint(1) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wxch_keywords_article`
--

CREATE TABLE IF NOT EXISTS `wxch_keywords_article` (
  `kws_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `article_id` mediumint(8) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wxch_keywords_article`
--

INSERT INTO `wxch_keywords_article` (`kws_id`, `article_id`) VALUES
(95, 25),
(95, 26),
(95, 27),
(95, 28),
(95, 29),
(95, 30),
(95, 31),
(96, 23),
(96, 24),
(96, 25);

-- --------------------------------------------------------

--
-- Table structure for table `wxch_lang`
--

CREATE TABLE IF NOT EXISTS `wxch_lang` (
  `lang_id` int(4) unsigned NOT NULL,
  `lang_name` varchar(64) NOT NULL,
  `lang_value` text NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wxch_lang`
--

INSERT INTO `wxch_lang` (`lang_id`, `lang_name`, `lang_value`) VALUES
(1, 'regmsg', '<p>欢迎关注微信通</p>'),
(2, 'help', '功能说明：\r\n输入news显示新品\r\n\r\n输入hot显示热销\r\n\r\n输入best显示推荐\r\n\r\n输入bd进入绑定会员流程\r\n\r\n输入ddcx查询最后一个订单\r\n\r\n输入kdcx查询最后一个订单中的快递\r\n输入ddlb显示多个订单信息\r\n\r\n输入help显示帮助说明'),
(3, 'coupon', '欢迎关注微信通,您已经领取过优惠卷'),
(4, 'coupon1', '欢迎关注Ecshop微信,活动期间关注送'),
(5, 'coupon2', '欢迎关注Ecshop微信,优惠卷已送完'),
(6, 'coupon3', '相关功能2'),
(7, 'qdok', '签到成功+'),
(8, 'qdno', '签到数次已用完'),
(9, 'qdstop', '已经关闭了签到'),
(11, 'prize_egg', '砸金蛋抽奖规则222'),
(10, 'bd', '快速绑定微信通账号，享受我们提供给你更全面的服务');

-- --------------------------------------------------------

--
-- Table structure for table `wxch_menu`
--

CREATE TABLE IF NOT EXISTS `wxch_menu` (
  `id` int(3) NOT NULL,
  `menu_type` varchar(6) NOT NULL,
  `level` int(1) NOT NULL,
  `name` varchar(30) NOT NULL,
  `value` varchar(250) NOT NULL,
  `aid` int(3) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wxch_menu`
--

INSERT INTO `wxch_menu` (`id`, `menu_type`, `level`, `name`, `value`, `aid`) VALUES
(1, 'click', 1, '商品查看', '', 0),
(2, 'click', 1, '会员功能', '', 0),
(3, 'click', 1, '更多..', '', 0),
(4, 'click', 2, '热销产品', 'hot', 1),
(5, 'click', 2, '精品推荐', 'best', 1),
(6, 'click', 2, '新款推荐', 'news', 1),
(7, 'click', 2, '', '', 1),
(8, 'click', 2, '', '', 1),
(9, 'click', 2, '会员绑定', 'bd', 2),
(10, 'click', 2, '重新绑定', 'cxbd', 2),
(11, 'click', 2, '订单查询', 'ddcx', 2),
(12, 'click', 2, '', '', 2),
(13, 'click', 2, '', '', 2),
(14, 'click', 2, '帮忙说明', 'help', 3),
(15, 'click', 2, '订单快递', 'kdcx', 3),
(16, 'click', 2, '菜单回复', 'cdhf', 3),
(17, 'view', 2, '首页', 'http://ecshoputf8.weixincaihong.com/wechat/oauth/wxch_oauth.php?oid=1', 3),
(18, 'click', 2, '', '', 3);

-- --------------------------------------------------------

--
-- Table structure for table `wxch_message`
--

CREATE TABLE IF NOT EXISTS `wxch_message` (
  `id` int(9) unsigned NOT NULL,
  `wxid` char(28) NOT NULL,
  `w_message` text NOT NULL,
  `message` text NOT NULL,
  `belong` int(9) unsigned NOT NULL,
  `dateline` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wxch_msg`
--

CREATE TABLE IF NOT EXISTS `wxch_msg` (
  `id` int(3) NOT NULL,
  `name` varchar(100) NOT NULL,
  `function` varchar(30) NOT NULL,
  `command` text NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wxch_msg`
--

INSERT INTO `wxch_msg` (`id`, `name`, `function`, `command`) VALUES
(1, '新品', 'news', 'xk 新款 News'),
(2, '精品', 'best', 'Best 精品'),
(3, '热销', 'hot', 'Hot 热销'),
(4, '绑定会员', 'bd', 'BD Bd 绑定会员'),
(5, '重新绑定', 'cxbd', '重新绑定 Cxbd'),
(6, '订单列表', 'ddlb', '订单列表 Ddlb'),
(7, '订单查询', 'ddcx', '订单查询 Ddcx'),
(8, '订单快递', 'kdcx', '订单快递 Kdcx'),
(9, '帮助说明', 'help', '帮助说明 Help 帮助'),
(10, '砸金蛋', 'zjd', '砸金蛋 Zjd'),
(11, '签到', 'qiandao', 'qiandao 签到');

-- --------------------------------------------------------

--
-- Table structure for table `wxch_oauth`
--

CREATE TABLE IF NOT EXISTS `wxch_oauth` (
  `oid` int(4) unsigned NOT NULL,
  `name` varchar(100) NOT NULL,
  `contents` text NOT NULL,
  `count` int(10) unsigned NOT NULL,
  `status` tinyint(1) unsigned NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wxch_oauth`
--

INSERT INTO `wxch_oauth` (`oid`, `name`, `contents`, `count`, `status`) VALUES
(1, '手机版网站首页', 'http://ecshop273utf8.com/', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `wxch_order`
--

CREATE TABLE IF NOT EXISTS `wxch_order` (
  `id` tinyint(1) NOT NULL,
  `order_name` varchar(30) NOT NULL,
  `title` varchar(100) NOT NULL,
  `image` varchar(150) NOT NULL,
  `content` text NOT NULL,
  `autoload` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wxch_order`
--

INSERT INTO `wxch_order` (`id`, `order_name`, `title`, `image`, `content`, `autoload`) VALUES
(1, 'order', '发货提醒', 'images/201401/1388925596106500893.jpg', '<p>&nbsp;ffffff</p>', 'yes'),
(2, 'reorder', '订单确认提醒', 'images/201401/1389555522246530163.png', 'fff', 'yes'),
(3, 'pay', '成功支付', '', '已经成功支付', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `wxch_pay`
--

CREATE TABLE IF NOT EXISTS `wxch_pay` (
  `id` int(1) NOT NULL,
  `appid` char(18) NOT NULL,
  `paysignkey` char(128) NOT NULL,
  `partnerkey` char(32) NOT NULL,
  `appsecret` char(32) NOT NULL,
  `dateline` int(10) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wxch_pay`
--

INSERT INTO `wxch_pay` (`id`, `appid`, `paysignkey`, `partnerkey`, `appsecret`, `dateline`) VALUES
(1, '', '', '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wxch_point`
--

CREATE TABLE IF NOT EXISTS `wxch_point` (
  `point_id` int(3) unsigned NOT NULL,
  `point_name` varchar(64) NOT NULL DEFAULT '',
  `point_value` int(3) unsigned NOT NULL,
  `point_num` int(3) NOT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes'
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wxch_point`
--

INSERT INTO `wxch_point` (`point_id`, `point_name`, `point_value`, `point_num`, `autoload`) VALUES
(1, 'news', 5, 2, 'yes'),
(2, 'best', 15, 1, 'yes'),
(3, 'hot', 5, 1, 'yes'),
(4, 'bd', 30, 1, 'yes'),
(5, 'ddcx', 5, 1, 'yes'),
(6, 'kdcx', 5, 1, 'yes'),
(7, 'zjd', 5, 0, 'no'),
(8, 'qiandao', 10, 1, 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `wxch_point_record`
--

CREATE TABLE IF NOT EXISTS `wxch_point_record` (
  `pr_id` int(7) NOT NULL,
  `wxid` char(28) NOT NULL,
  `point_name` varchar(64) NOT NULL,
  `num` int(5) NOT NULL,
  `lasttime` int(10) NOT NULL,
  `datelinie` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wxch_prize`
--

CREATE TABLE IF NOT EXISTS `wxch_prize` (
  `pid` int(4) NOT NULL,
  `title` varchar(100) NOT NULL,
  `fun` varchar(10) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `num` int(2) unsigned NOT NULL,
  `count` int(8) NOT NULL,
  `loop` int(3) NOT NULL,
  `starttime` int(10) NOT NULL,
  `endtime` int(10) NOT NULL,
  `dateline` int(10) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wxch_prize`
--

INSERT INTO `wxch_prize` (`pid`, `title`, `fun`, `status`, `num`, `count`, `loop`, `starttime`, `endtime`, `dateline`) VALUES
(1, '正在测试的', 'egg', 0, 1, 6, 1, 1394899200, 1397491200, 1395648563);

-- --------------------------------------------------------

--
-- Table structure for table `wxch_prize_append`
--

CREATE TABLE IF NOT EXISTS `wxch_prize_append` (
  `id` int(5) unsigned NOT NULL,
  `prize_id` int(4) unsigned NOT NULL,
  `prize_name` varchar(64) NOT NULL,
  `prize_value` int(8) unsigned NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wxch_prize_append`
--

INSERT INTO `wxch_prize_append` (`id`, `prize_id`, `prize_name`, `prize_value`) VALUES
(1, 1, '10万汽车1', 1),
(2, 1, 'Macbook2', 2),
(3, 1, 'Ipad3', 3),
(4, 1, '话费100元4', 4),
(5, 1, '优惠卷5', 5),
(6, 1, '未中奖6', 10),
(7, 7, '10万汽车', 1),
(8, 7, 'Macbook', 3),
(9, 7, 'Ipad', 5),
(10, 7, '未中奖', 1000),
(11, 7, '', 0),
(12, 7, '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wxch_prize_cnum`
--

CREATE TABLE IF NOT EXISTS `wxch_prize_cnum` (
  `pcid` int(5) NOT NULL,
  `paid` int(5) NOT NULL,
  `pid` int(4) NOT NULL,
  `prize_name` varchar(64) NOT NULL,
  `prize_value` int(8) unsigned NOT NULL,
  `user_count` int(8) unsigned NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wxch_prize_cnum`
--

INSERT INTO `wxch_prize_cnum` (`pcid`, `paid`, `pid`, `prize_name`, `prize_value`, `user_count`) VALUES
(1, 5, 1, '未中奖5', 5, 2),
(2, 10, 7, '未中奖', 1000, 7);

-- --------------------------------------------------------

--
-- Table structure for table `wxch_prize_count`
--

CREATE TABLE IF NOT EXISTS `wxch_prize_count` (
  `cid` int(7) NOT NULL,
  `pid` int(5) NOT NULL,
  `wxid` char(28) NOT NULL,
  `num` int(5) NOT NULL,
  `count` int(5) unsigned NOT NULL,
  `lasttime` int(10) unsigned NOT NULL,
  `dateline` int(10) unsigned NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wxch_prize_count`
--

INSERT INTO `wxch_prize_count` (`cid`, `pid`, `wxid`, `num`, `count`, `lasttime`, `dateline`) VALUES
(1, 1, 'oo1v-tir7oHXTL42WpwAlNsLTZlc', 0, 5, 1395980256, 1395475456);

-- --------------------------------------------------------

--
-- Table structure for table `wxch_prize_register`
--

CREATE TABLE IF NOT EXISTS `wxch_prize_register` (
  `rid` int(8) NOT NULL,
  `pid` int(7) unsigned NOT NULL,
  `wxid` char(28) NOT NULL,
  `nickname` varchar(200) NOT NULL,
  `phone` varchar(12) NOT NULL,
  `name` varchar(100) NOT NULL,
  `dateline` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wxch_prize_users`
--

CREATE TABLE IF NOT EXISTS `wxch_prize_users` (
  `id` int(7) unsigned NOT NULL,
  `wxid` char(28) NOT NULL DEFAULT '',
  `fun` varchar(10) NOT NULL,
  `nickname` varchar(200) NOT NULL,
  `prize_id` int(5) DEFAULT NULL,
  `prize_name` varchar(64) DEFAULT NULL,
  `prize_sn` varchar(35) NOT NULL,
  `register` tinyint(1) unsigned NOT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `yn` varchar(3) NOT NULL,
  `dateline` int(10) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wxch_qr`
--

CREATE TABLE IF NOT EXISTS `wxch_qr` (
  `qid` int(7) NOT NULL,
  `type` char(2) NOT NULL,
  `expire_seconds` int(4) NOT NULL,
  `action_name` varchar(30) NOT NULL,
  `scene_id` int(7) NOT NULL,
  `ticket` varchar(120) NOT NULL,
  `scene` varchar(200) NOT NULL,
  `qr_path` varchar(200) NOT NULL,
  `subscribe` int(8) unsigned NOT NULL,
  `scan` int(8) unsigned NOT NULL,
  `function` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wxch_user`
--

CREATE TABLE IF NOT EXISTS `wxch_user` (
  `uid` int(7) NOT NULL,
  `subscribe` tinyint(1) unsigned NOT NULL,
  `wxid` char(28) NOT NULL,
  `nickname` varchar(200) NOT NULL,
  `sex` tinyint(1) unsigned NOT NULL,
  `city` varchar(100) NOT NULL,
  `country` varchar(100) NOT NULL,
  `province` varchar(100) NOT NULL,
  `language` varchar(50) NOT NULL,
  `headimgurl` varchar(200) NOT NULL,
  `subscribe_time` int(10) unsigned NOT NULL,
  `localimgurl` varchar(200) NOT NULL,
  `setp` smallint(2) unsigned NOT NULL,
  `uname` varchar(50) NOT NULL,
  `coupon` varchar(30) NOT NULL,
  `dateline` int(10) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ecs_account_log`
--
ALTER TABLE `ecs_account_log`
  ADD PRIMARY KEY (`log_id`), ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `ecs_ad`
--
ALTER TABLE `ecs_ad`
  ADD PRIMARY KEY (`ad_id`), ADD KEY `position_id` (`position_id`), ADD KEY `enabled` (`enabled`);

--
-- Indexes for table `ecs_admin_action`
--
ALTER TABLE `ecs_admin_action`
  ADD PRIMARY KEY (`action_id`), ADD KEY `parent_id` (`parent_id`);

--
-- Indexes for table `ecs_admin_log`
--
ALTER TABLE `ecs_admin_log`
  ADD PRIMARY KEY (`log_id`), ADD KEY `log_time` (`log_time`), ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `ecs_admin_message`
--
ALTER TABLE `ecs_admin_message`
  ADD PRIMARY KEY (`message_id`), ADD KEY `sender_id` (`sender_id`,`receiver_id`), ADD KEY `receiver_id` (`receiver_id`);

--
-- Indexes for table `ecs_admin_user`
--
ALTER TABLE `ecs_admin_user`
  ADD PRIMARY KEY (`user_id`), ADD KEY `user_name` (`user_name`), ADD KEY `agency_id` (`agency_id`);

--
-- Indexes for table `ecs_adsense`
--
ALTER TABLE `ecs_adsense`
  ADD KEY `from_ad` (`from_ad`);

--
-- Indexes for table `ecs_ad_custom`
--
ALTER TABLE `ecs_ad_custom`
  ADD PRIMARY KEY (`ad_id`);

--
-- Indexes for table `ecs_ad_position`
--
ALTER TABLE `ecs_ad_position`
  ADD PRIMARY KEY (`position_id`);

--
-- Indexes for table `ecs_affiliate_log`
--
ALTER TABLE `ecs_affiliate_log`
  ADD PRIMARY KEY (`log_id`);

--
-- Indexes for table `ecs_agency`
--
ALTER TABLE `ecs_agency`
  ADD PRIMARY KEY (`agency_id`), ADD KEY `agency_name` (`agency_name`);

--
-- Indexes for table `ecs_area_region`
--
ALTER TABLE `ecs_area_region`
  ADD PRIMARY KEY (`shipping_area_id`,`region_id`);

--
-- Indexes for table `ecs_article`
--
ALTER TABLE `ecs_article`
  ADD PRIMARY KEY (`article_id`), ADD KEY `cat_id` (`cat_id`);

--
-- Indexes for table `ecs_article_cat`
--
ALTER TABLE `ecs_article_cat`
  ADD PRIMARY KEY (`cat_id`), ADD KEY `cat_type` (`cat_type`), ADD KEY `sort_order` (`sort_order`), ADD KEY `parent_id` (`parent_id`);

--
-- Indexes for table `ecs_attribute`
--
ALTER TABLE `ecs_attribute`
  ADD PRIMARY KEY (`attr_id`), ADD KEY `cat_id` (`cat_id`);

--
-- Indexes for table `ecs_auction_log`
--
ALTER TABLE `ecs_auction_log`
  ADD PRIMARY KEY (`log_id`), ADD KEY `act_id` (`act_id`);

--
-- Indexes for table `ecs_auto_manage`
--
ALTER TABLE `ecs_auto_manage`
  ADD PRIMARY KEY (`item_id`,`type`);

--
-- Indexes for table `ecs_back_goods`
--
ALTER TABLE `ecs_back_goods`
  ADD PRIMARY KEY (`rec_id`), ADD KEY `back_id` (`back_id`), ADD KEY `goods_id` (`goods_id`);

--
-- Indexes for table `ecs_back_order`
--
ALTER TABLE `ecs_back_order`
  ADD PRIMARY KEY (`back_id`), ADD KEY `user_id` (`user_id`), ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `ecs_bonus_type`
--
ALTER TABLE `ecs_bonus_type`
  ADD PRIMARY KEY (`type_id`);

--
-- Indexes for table `ecs_booking_goods`
--
ALTER TABLE `ecs_booking_goods`
  ADD PRIMARY KEY (`rec_id`), ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `ecs_brand`
--
ALTER TABLE `ecs_brand`
  ADD PRIMARY KEY (`brand_id`), ADD KEY `is_show` (`is_show`);

--
-- Indexes for table `ecs_card`
--
ALTER TABLE `ecs_card`
  ADD PRIMARY KEY (`card_id`);

--
-- Indexes for table `ecs_cart`
--
ALTER TABLE `ecs_cart`
  ADD PRIMARY KEY (`rec_id`), ADD KEY `session_id` (`session_id`);

--
-- Indexes for table `ecs_cart_combo`
--
ALTER TABLE `ecs_cart_combo`
  ADD PRIMARY KEY (`rec_id`), ADD KEY `session_id` (`session_id`);

--
-- Indexes for table `ecs_category`
--
ALTER TABLE `ecs_category`
  ADD PRIMARY KEY (`cat_id`), ADD KEY `parent_id` (`parent_id`);

--
-- Indexes for table `ecs_cat_recommend`
--
ALTER TABLE `ecs_cat_recommend`
  ADD PRIMARY KEY (`cat_id`,`recommend_type`);

--
-- Indexes for table `ecs_collect_goods`
--
ALTER TABLE `ecs_collect_goods`
  ADD PRIMARY KEY (`rec_id`), ADD KEY `user_id` (`user_id`), ADD KEY `goods_id` (`goods_id`), ADD KEY `is_attention` (`is_attention`);

--
-- Indexes for table `ecs_comment`
--
ALTER TABLE `ecs_comment`
  ADD PRIMARY KEY (`comment_id`), ADD KEY `parent_id` (`parent_id`), ADD KEY `id_value` (`id_value`);

--
-- Indexes for table `ecs_crons`
--
ALTER TABLE `ecs_crons`
  ADD PRIMARY KEY (`cron_id`), ADD KEY `nextime` (`nextime`), ADD KEY `enable` (`enable`), ADD KEY `cron_code` (`cron_code`);

--
-- Indexes for table `ecs_delivery_goods`
--
ALTER TABLE `ecs_delivery_goods`
  ADD PRIMARY KEY (`rec_id`), ADD KEY `delivery_id` (`delivery_id`,`goods_id`), ADD KEY `goods_id` (`goods_id`);

--
-- Indexes for table `ecs_delivery_order`
--
ALTER TABLE `ecs_delivery_order`
  ADD PRIMARY KEY (`delivery_id`), ADD KEY `user_id` (`user_id`), ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `ecs_email_list`
--
ALTER TABLE `ecs_email_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ecs_email_sendlist`
--
ALTER TABLE `ecs_email_sendlist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ecs_error_log`
--
ALTER TABLE `ecs_error_log`
  ADD PRIMARY KEY (`id`), ADD KEY `time` (`time`);

--
-- Indexes for table `ecs_exchange_goods`
--
ALTER TABLE `ecs_exchange_goods`
  ADD PRIMARY KEY (`goods_id`);

--
-- Indexes for table `ecs_favourable_activity`
--
ALTER TABLE `ecs_favourable_activity`
  ADD PRIMARY KEY (`act_id`), ADD KEY `act_name` (`act_name`);

--
-- Indexes for table `ecs_feedback`
--
ALTER TABLE `ecs_feedback`
  ADD PRIMARY KEY (`msg_id`), ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `ecs_friend_link`
--
ALTER TABLE `ecs_friend_link`
  ADD PRIMARY KEY (`link_id`), ADD KEY `show_order` (`show_order`);

--
-- Indexes for table `ecs_goods`
--
ALTER TABLE `ecs_goods`
  ADD PRIMARY KEY (`goods_id`), ADD KEY `goods_sn` (`goods_sn`), ADD KEY `cat_id` (`cat_id`), ADD KEY `last_update` (`last_update`), ADD KEY `brand_id` (`brand_id`), ADD KEY `goods_weight` (`goods_weight`), ADD KEY `promote_end_date` (`promote_end_date`), ADD KEY `promote_start_date` (`promote_start_date`), ADD KEY `goods_number` (`goods_number`), ADD KEY `sort_order` (`sort_order`), ADD KEY `sales_volume` (`sales_volume`);

--
-- Indexes for table `ecs_goods_activity`
--
ALTER TABLE `ecs_goods_activity`
  ADD PRIMARY KEY (`act_id`), ADD KEY `act_name` (`act_name`,`act_type`,`goods_id`);

--
-- Indexes for table `ecs_goods_article`
--
ALTER TABLE `ecs_goods_article`
  ADD PRIMARY KEY (`goods_id`,`article_id`,`admin_id`);

--
-- Indexes for table `ecs_goods_attr`
--
ALTER TABLE `ecs_goods_attr`
  ADD PRIMARY KEY (`goods_attr_id`), ADD KEY `goods_id` (`goods_id`), ADD KEY `attr_id` (`attr_id`);

--
-- Indexes for table `ecs_goods_cat`
--
ALTER TABLE `ecs_goods_cat`
  ADD PRIMARY KEY (`goods_id`,`cat_id`);

--
-- Indexes for table `ecs_goods_gallery`
--
ALTER TABLE `ecs_goods_gallery`
  ADD PRIMARY KEY (`img_id`), ADD KEY `goods_id` (`goods_id`);

--
-- Indexes for table `ecs_goods_type`
--
ALTER TABLE `ecs_goods_type`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `ecs_group_goods`
--
ALTER TABLE `ecs_group_goods`
  ADD PRIMARY KEY (`parent_id`,`goods_id`,`admin_id`);

--
-- Indexes for table `ecs_keywords`
--
ALTER TABLE `ecs_keywords`
  ADD PRIMARY KEY (`date`,`searchengine`,`keyword`);

--
-- Indexes for table `ecs_link_goods`
--
ALTER TABLE `ecs_link_goods`
  ADD PRIMARY KEY (`goods_id`,`link_goods_id`,`admin_id`);

--
-- Indexes for table `ecs_mail_templates`
--
ALTER TABLE `ecs_mail_templates`
  ADD PRIMARY KEY (`template_id`), ADD UNIQUE KEY `template_code` (`template_code`), ADD KEY `type` (`type`);

--
-- Indexes for table `ecs_member_price`
--
ALTER TABLE `ecs_member_price`
  ADD PRIMARY KEY (`price_id`), ADD KEY `goods_id` (`goods_id`,`user_rank`);

--
-- Indexes for table `ecs_nav`
--
ALTER TABLE `ecs_nav`
  ADD PRIMARY KEY (`id`), ADD KEY `type` (`type`), ADD KEY `ifshow` (`ifshow`);

--
-- Indexes for table `ecs_order_action`
--
ALTER TABLE `ecs_order_action`
  ADD PRIMARY KEY (`action_id`), ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `ecs_order_goods`
--
ALTER TABLE `ecs_order_goods`
  ADD PRIMARY KEY (`rec_id`), ADD KEY `order_id` (`order_id`), ADD KEY `goods_id` (`goods_id`);

--
-- Indexes for table `ecs_order_info`
--
ALTER TABLE `ecs_order_info`
  ADD PRIMARY KEY (`order_id`), ADD UNIQUE KEY `order_sn` (`order_sn`), ADD KEY `user_id` (`user_id`), ADD KEY `order_status` (`order_status`), ADD KEY `shipping_status` (`shipping_status`), ADD KEY `pay_status` (`pay_status`), ADD KEY `shipping_id` (`shipping_id`), ADD KEY `pay_id` (`pay_id`), ADD KEY `extension_code` (`extension_code`,`extension_id`), ADD KEY `agency_id` (`agency_id`);

--
-- Indexes for table `ecs_pack`
--
ALTER TABLE `ecs_pack`
  ADD PRIMARY KEY (`pack_id`);

--
-- Indexes for table `ecs_package_goods`
--
ALTER TABLE `ecs_package_goods`
  ADD PRIMARY KEY (`package_id`,`goods_id`,`admin_id`,`product_id`);

--
-- Indexes for table `ecs_payment`
--
ALTER TABLE `ecs_payment`
  ADD PRIMARY KEY (`pay_id`), ADD UNIQUE KEY `pay_code` (`pay_code`);

--
-- Indexes for table `ecs_pay_log`
--
ALTER TABLE `ecs_pay_log`
  ADD PRIMARY KEY (`log_id`);

--
-- Indexes for table `ecs_plugins`
--
ALTER TABLE `ecs_plugins`
  ADD PRIMARY KEY (`code`);

--
-- Indexes for table `ecs_products`
--
ALTER TABLE `ecs_products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `ecs_region`
--
ALTER TABLE `ecs_region`
  ADD PRIMARY KEY (`region_id`), ADD KEY `parent_id` (`parent_id`), ADD KEY `region_type` (`region_type`), ADD KEY `agency_id` (`agency_id`);

--
-- Indexes for table `ecs_reg_extend_info`
--
ALTER TABLE `ecs_reg_extend_info`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `ecs_reg_fields`
--
ALTER TABLE `ecs_reg_fields`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ecs_role`
--
ALTER TABLE `ecs_role`
  ADD PRIMARY KEY (`role_id`), ADD KEY `user_name` (`role_name`);

--
-- Indexes for table `ecs_searchengine`
--
ALTER TABLE `ecs_searchengine`
  ADD PRIMARY KEY (`date`,`searchengine`);

--
-- Indexes for table `ecs_sessions`
--
ALTER TABLE `ecs_sessions`
  ADD PRIMARY KEY (`sesskey`), ADD KEY `expiry` (`expiry`);

--
-- Indexes for table `ecs_sessions_data`
--
ALTER TABLE `ecs_sessions_data`
  ADD PRIMARY KEY (`sesskey`), ADD KEY `expiry` (`expiry`);

--
-- Indexes for table `ecs_shipping`
--
ALTER TABLE `ecs_shipping`
  ADD PRIMARY KEY (`shipping_id`), ADD KEY `shipping_code` (`shipping_code`,`enabled`);

--
-- Indexes for table `ecs_shipping_area`
--
ALTER TABLE `ecs_shipping_area`
  ADD PRIMARY KEY (`shipping_area_id`), ADD KEY `shipping_id` (`shipping_id`);

--
-- Indexes for table `ecs_shop_config`
--
ALTER TABLE `ecs_shop_config`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `code` (`code`), ADD KEY `parent_id` (`parent_id`);

--
-- Indexes for table `ecs_snatch_log`
--
ALTER TABLE `ecs_snatch_log`
  ADD PRIMARY KEY (`log_id`), ADD KEY `snatch_id` (`snatch_id`);

--
-- Indexes for table `ecs_stats`
--
ALTER TABLE `ecs_stats`
  ADD KEY `access_time` (`access_time`);

--
-- Indexes for table `ecs_suppliers`
--
ALTER TABLE `ecs_suppliers`
  ADD PRIMARY KEY (`suppliers_id`);

--
-- Indexes for table `ecs_tag`
--
ALTER TABLE `ecs_tag`
  ADD PRIMARY KEY (`tag_id`), ADD KEY `user_id` (`user_id`), ADD KEY `goods_id` (`goods_id`);

--
-- Indexes for table `ecs_template`
--
ALTER TABLE `ecs_template`
  ADD KEY `filename` (`filename`,`region`), ADD KEY `theme` (`theme`), ADD KEY `remarks` (`remarks`);

--
-- Indexes for table `ecs_topic`
--
ALTER TABLE `ecs_topic`
  ADD KEY `topic_id` (`topic_id`);

--
-- Indexes for table `ecs_touch_ad`
--
ALTER TABLE `ecs_touch_ad`
  ADD PRIMARY KEY (`ad_id`), ADD KEY `position_id` (`position_id`), ADD KEY `enabled` (`enabled`);

--
-- Indexes for table `ecs_touch_ad_position`
--
ALTER TABLE `ecs_touch_ad_position`
  ADD PRIMARY KEY (`position_id`);

--
-- Indexes for table `ecs_touch_nav`
--
ALTER TABLE `ecs_touch_nav`
  ADD PRIMARY KEY (`id`), ADD KEY `type` (`type`), ADD KEY `ifshow` (`ifshow`);

--
-- Indexes for table `ecs_touch_payment`
--
ALTER TABLE `ecs_touch_payment`
  ADD PRIMARY KEY (`pay_id`), ADD UNIQUE KEY `pay_code` (`pay_code`);

--
-- Indexes for table `ecs_touch_shipping`
--
ALTER TABLE `ecs_touch_shipping`
  ADD PRIMARY KEY (`shipping_id`), ADD KEY `shipping_code` (`shipping_code`,`enabled`);

--
-- Indexes for table `ecs_touch_shipping_area`
--
ALTER TABLE `ecs_touch_shipping_area`
  ADD PRIMARY KEY (`shipping_area_id`), ADD KEY `shipping_id` (`shipping_id`);

--
-- Indexes for table `ecs_touch_shop_config`
--
ALTER TABLE `ecs_touch_shop_config`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `code` (`code`), ADD KEY `parent_id` (`parent_id`);

--
-- Indexes for table `ecs_touch_template`
--
ALTER TABLE `ecs_touch_template`
  ADD KEY `filename` (`filename`,`region`), ADD KEY `theme` (`theme`), ADD KEY `remarks` (`remarks`);

--
-- Indexes for table `ecs_users`
--
ALTER TABLE `ecs_users`
  ADD PRIMARY KEY (`user_id`), ADD UNIQUE KEY `user_name` (`user_name`), ADD KEY `email` (`email`), ADD KEY `parent_id` (`parent_id`), ADD KEY `flag` (`flag`);

--
-- Indexes for table `ecs_user_account`
--
ALTER TABLE `ecs_user_account`
  ADD PRIMARY KEY (`id`), ADD KEY `user_id` (`user_id`), ADD KEY `is_paid` (`is_paid`);

--
-- Indexes for table `ecs_user_address`
--
ALTER TABLE `ecs_user_address`
  ADD PRIMARY KEY (`address_id`), ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `ecs_user_bonus`
--
ALTER TABLE `ecs_user_bonus`
  ADD PRIMARY KEY (`bonus_id`), ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `ecs_user_feed`
--
ALTER TABLE `ecs_user_feed`
  ADD PRIMARY KEY (`feed_id`);

--
-- Indexes for table `ecs_user_rank`
--
ALTER TABLE `ecs_user_rank`
  ADD PRIMARY KEY (`rank_id`);

--
-- Indexes for table `ecs_virtual_card`
--
ALTER TABLE `ecs_virtual_card`
  ADD PRIMARY KEY (`card_id`), ADD KEY `goods_id` (`goods_id`), ADD KEY `car_sn` (`card_sn`), ADD KEY `is_saled` (`is_saled`);

--
-- Indexes for table `ecs_volume_price`
--
ALTER TABLE `ecs_volume_price`
  ADD PRIMARY KEY (`price_type`,`goods_id`,`volume_number`);

--
-- Indexes for table `ecs_vote`
--
ALTER TABLE `ecs_vote`
  ADD PRIMARY KEY (`vote_id`);

--
-- Indexes for table `ecs_vote_log`
--
ALTER TABLE `ecs_vote_log`
  ADD PRIMARY KEY (`log_id`), ADD KEY `vote_id` (`vote_id`);

--
-- Indexes for table `ecs_vote_option`
--
ALTER TABLE `ecs_vote_option`
  ADD PRIMARY KEY (`option_id`), ADD KEY `vote_id` (`vote_id`);

--
-- Indexes for table `ecs_wholesale`
--
ALTER TABLE `ecs_wholesale`
  ADD PRIMARY KEY (`act_id`), ADD KEY `goods_id` (`goods_id`);

--
-- Indexes for table `ecs_xe_rate`
--
ALTER TABLE `ecs_xe_rate`
  ADD PRIMARY KEY (`xe_rate_id`);

--
-- Indexes for table `wxch_cfg`
--
ALTER TABLE `wxch_cfg`
  ADD PRIMARY KEY (`cfg_id`), ADD UNIQUE KEY `cfg_name` (`cfg_name`);

--
-- Indexes for table `wxch_config`
--
ALTER TABLE `wxch_config`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wxch_coupon`
--
ALTER TABLE `wxch_coupon`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wxch_keywords`
--
ALTER TABLE `wxch_keywords`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wxch_keywords_article`
--
ALTER TABLE `wxch_keywords_article`
  ADD PRIMARY KEY (`kws_id`,`article_id`);

--
-- Indexes for table `wxch_lang`
--
ALTER TABLE `wxch_lang`
  ADD PRIMARY KEY (`lang_id`);

--
-- Indexes for table `wxch_menu`
--
ALTER TABLE `wxch_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wxch_message`
--
ALTER TABLE `wxch_message`
  ADD PRIMARY KEY (`id`), ADD KEY `wxid` (`wxid`);

--
-- Indexes for table `wxch_msg`
--
ALTER TABLE `wxch_msg`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wxch_oauth`
--
ALTER TABLE `wxch_oauth`
  ADD PRIMARY KEY (`oid`);

--
-- Indexes for table `wxch_order`
--
ALTER TABLE `wxch_order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wxch_pay`
--
ALTER TABLE `wxch_pay`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wxch_point`
--
ALTER TABLE `wxch_point`
  ADD PRIMARY KEY (`point_id`), ADD UNIQUE KEY `option_name` (`point_name`);

--
-- Indexes for table `wxch_point_record`
--
ALTER TABLE `wxch_point_record`
  ADD PRIMARY KEY (`pr_id`);

--
-- Indexes for table `wxch_prize`
--
ALTER TABLE `wxch_prize`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `wxch_prize_append`
--
ALTER TABLE `wxch_prize_append`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wxch_prize_cnum`
--
ALTER TABLE `wxch_prize_cnum`
  ADD PRIMARY KEY (`pcid`);

--
-- Indexes for table `wxch_prize_count`
--
ALTER TABLE `wxch_prize_count`
  ADD PRIMARY KEY (`cid`), ADD KEY `pid` (`pid`);

--
-- Indexes for table `wxch_prize_register`
--
ALTER TABLE `wxch_prize_register`
  ADD PRIMARY KEY (`rid`), ADD KEY `wxid` (`wxid`), ADD KEY `pid` (`pid`);

--
-- Indexes for table `wxch_prize_users`
--
ALTER TABLE `wxch_prize_users`
  ADD PRIMARY KEY (`id`), ADD KEY `prize_id` (`prize_id`);

--
-- Indexes for table `wxch_qr`
--
ALTER TABLE `wxch_qr`
  ADD PRIMARY KEY (`qid`);

--
-- Indexes for table `wxch_user`
--
ALTER TABLE `wxch_user`
  ADD PRIMARY KEY (`uid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ecs_account_log`
--
ALTER TABLE `ecs_account_log`
  MODIFY `log_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ecs_ad`
--
ALTER TABLE `ecs_ad`
  MODIFY `ad_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=34;
--
-- AUTO_INCREMENT for table `ecs_admin_action`
--
ALTER TABLE `ecs_admin_action`
  MODIFY `action_id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=136;
--
-- AUTO_INCREMENT for table `ecs_admin_log`
--
ALTER TABLE `ecs_admin_log`
  MODIFY `log_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=1207;
--
-- AUTO_INCREMENT for table `ecs_admin_message`
--
ALTER TABLE `ecs_admin_message`
  MODIFY `message_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ecs_admin_user`
--
ALTER TABLE `ecs_admin_user`
  MODIFY `user_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `ecs_ad_custom`
--
ALTER TABLE `ecs_ad_custom`
  MODIFY `ad_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ecs_ad_position`
--
ALTER TABLE `ecs_ad_position`
  MODIFY `position_id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `ecs_affiliate_log`
--
ALTER TABLE `ecs_affiliate_log`
  MODIFY `log_id` mediumint(8) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ecs_agency`
--
ALTER TABLE `ecs_agency`
  MODIFY `agency_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ecs_article`
--
ALTER TABLE `ecs_article`
  MODIFY `article_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=37;
--
-- AUTO_INCREMENT for table `ecs_article_cat`
--
ALTER TABLE `ecs_article_cat`
  MODIFY `cat_id` smallint(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `ecs_attribute`
--
ALTER TABLE `ecs_attribute`
  MODIFY `attr_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=223;
--
-- AUTO_INCREMENT for table `ecs_auction_log`
--
ALTER TABLE `ecs_auction_log`
  MODIFY `log_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `ecs_back_goods`
--
ALTER TABLE `ecs_back_goods`
  MODIFY `rec_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ecs_back_order`
--
ALTER TABLE `ecs_back_order`
  MODIFY `back_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `ecs_bonus_type`
--
ALTER TABLE `ecs_bonus_type`
  MODIFY `type_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `ecs_booking_goods`
--
ALTER TABLE `ecs_booking_goods`
  MODIFY `rec_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ecs_brand`
--
ALTER TABLE `ecs_brand`
  MODIFY `brand_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=71;
--
-- AUTO_INCREMENT for table `ecs_card`
--
ALTER TABLE `ecs_card`
  MODIFY `card_id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `ecs_cart`
--
ALTER TABLE `ecs_cart`
  MODIFY `rec_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ecs_cart_combo`
--
ALTER TABLE `ecs_cart_combo`
  MODIFY `rec_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ecs_category`
--
ALTER TABLE `ecs_category`
  MODIFY `cat_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=145;
--
-- AUTO_INCREMENT for table `ecs_collect_goods`
--
ALTER TABLE `ecs_collect_goods`
  MODIFY `rec_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ecs_comment`
--
ALTER TABLE `ecs_comment`
  MODIFY `comment_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=40;
--
-- AUTO_INCREMENT for table `ecs_crons`
--
ALTER TABLE `ecs_crons`
  MODIFY `cron_id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ecs_delivery_goods`
--
ALTER TABLE `ecs_delivery_goods`
  MODIFY `rec_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `ecs_delivery_order`
--
ALTER TABLE `ecs_delivery_order`
  MODIFY `delivery_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `ecs_email_list`
--
ALTER TABLE `ecs_email_list`
  MODIFY `id` mediumint(8) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `ecs_email_sendlist`
--
ALTER TABLE `ecs_email_sendlist`
  MODIFY `id` mediumint(8) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ecs_error_log`
--
ALTER TABLE `ecs_error_log`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ecs_favourable_activity`
--
ALTER TABLE `ecs_favourable_activity`
  MODIFY `act_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `ecs_feedback`
--
ALTER TABLE `ecs_feedback`
  MODIFY `msg_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `ecs_friend_link`
--
ALTER TABLE `ecs_friend_link`
  MODIFY `link_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `ecs_goods`
--
ALTER TABLE `ecs_goods`
  MODIFY `goods_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=124;
--
-- AUTO_INCREMENT for table `ecs_goods_activity`
--
ALTER TABLE `ecs_goods_activity`
  MODIFY `act_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `ecs_goods_attr`
--
ALTER TABLE `ecs_goods_attr`
  MODIFY `goods_attr_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=324;
--
-- AUTO_INCREMENT for table `ecs_goods_gallery`
--
ALTER TABLE `ecs_goods_gallery`
  MODIFY `img_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=164;
--
-- AUTO_INCREMENT for table `ecs_goods_type`
--
ALTER TABLE `ecs_goods_type`
  MODIFY `cat_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `ecs_mail_templates`
--
ALTER TABLE `ecs_mail_templates`
  MODIFY `template_id` tinyint(1) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `ecs_member_price`
--
ALTER TABLE `ecs_member_price`
  MODIFY `price_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `ecs_nav`
--
ALTER TABLE `ecs_nav`
  MODIFY `id` mediumint(8) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT for table `ecs_order_action`
--
ALTER TABLE `ecs_order_action`
  MODIFY `action_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT for table `ecs_order_goods`
--
ALTER TABLE `ecs_order_goods`
  MODIFY `rec_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=65;
--
-- AUTO_INCREMENT for table `ecs_order_info`
--
ALTER TABLE `ecs_order_info`
  MODIFY `order_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=58;
--
-- AUTO_INCREMENT for table `ecs_pack`
--
ALTER TABLE `ecs_pack`
  MODIFY `pack_id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `ecs_payment`
--
ALTER TABLE `ecs_payment`
  MODIFY `pay_id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `ecs_pay_log`
--
ALTER TABLE `ecs_pay_log`
  MODIFY `log_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=89;
--
-- AUTO_INCREMENT for table `ecs_products`
--
ALTER TABLE `ecs_products`
  MODIFY `product_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `ecs_region`
--
ALTER TABLE `ecs_region`
  MODIFY `region_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3409;
--
-- AUTO_INCREMENT for table `ecs_reg_extend_info`
--
ALTER TABLE `ecs_reg_extend_info`
  MODIFY `Id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ecs_reg_fields`
--
ALTER TABLE `ecs_reg_fields`
  MODIFY `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `ecs_role`
--
ALTER TABLE `ecs_role`
  MODIFY `role_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ecs_shipping`
--
ALTER TABLE `ecs_shipping`
  MODIFY `shipping_id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `ecs_shipping_area`
--
ALTER TABLE `ecs_shipping_area`
  MODIFY `shipping_area_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `ecs_shop_config`
--
ALTER TABLE `ecs_shop_config`
  MODIFY `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=906;
--
-- AUTO_INCREMENT for table `ecs_snatch_log`
--
ALTER TABLE `ecs_snatch_log`
  MODIFY `log_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `ecs_suppliers`
--
ALTER TABLE `ecs_suppliers`
  MODIFY `suppliers_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `ecs_tag`
--
ALTER TABLE `ecs_tag`
  MODIFY `tag_id` mediumint(8) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `ecs_topic`
--
ALTER TABLE `ecs_topic`
  MODIFY `topic_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `ecs_touch_ad`
--
ALTER TABLE `ecs_touch_ad`
  MODIFY `ad_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `ecs_touch_ad_position`
--
ALTER TABLE `ecs_touch_ad_position`
  MODIFY `position_id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `ecs_touch_nav`
--
ALTER TABLE `ecs_touch_nav`
  MODIFY `id` mediumint(8) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `ecs_touch_payment`
--
ALTER TABLE `ecs_touch_payment`
  MODIFY `pay_id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `ecs_touch_shipping`
--
ALTER TABLE `ecs_touch_shipping`
  MODIFY `shipping_id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `ecs_touch_shipping_area`
--
ALTER TABLE `ecs_touch_shipping_area`
  MODIFY `shipping_area_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `ecs_touch_shop_config`
--
ALTER TABLE `ecs_touch_shop_config`
  MODIFY `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=907;
--
-- AUTO_INCREMENT for table `ecs_users`
--
ALTER TABLE `ecs_users`
  MODIFY `user_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `ecs_user_account`
--
ALTER TABLE `ecs_user_account`
  MODIFY `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ecs_user_address`
--
ALTER TABLE `ecs_user_address`
  MODIFY `address_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ecs_user_bonus`
--
ALTER TABLE `ecs_user_bonus`
  MODIFY `bonus_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `ecs_user_feed`
--
ALTER TABLE `ecs_user_feed`
  MODIFY `feed_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ecs_user_rank`
--
ALTER TABLE `ecs_user_rank`
  MODIFY `rank_id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=100;
--
-- AUTO_INCREMENT for table `ecs_virtual_card`
--
ALTER TABLE `ecs_virtual_card`
  MODIFY `card_id` mediumint(8) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `ecs_vote`
--
ALTER TABLE `ecs_vote`
  MODIFY `vote_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `ecs_vote_log`
--
ALTER TABLE `ecs_vote_log`
  MODIFY `log_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ecs_vote_option`
--
ALTER TABLE `ecs_vote_option`
  MODIFY `option_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `ecs_wholesale`
--
ALTER TABLE `ecs_wholesale`
  MODIFY `act_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `ecs_xe_rate`
--
ALTER TABLE `ecs_xe_rate`
  MODIFY `xe_rate_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `wxch_cfg`
--
ALTER TABLE `wxch_cfg`
  MODIFY `cfg_id` int(3) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `wxch_coupon`
--
ALTER TABLE `wxch_coupon`
  MODIFY `id` tinyint(1) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `wxch_keywords`
--
ALTER TABLE `wxch_keywords`
  MODIFY `id` int(4) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wxch_lang`
--
ALTER TABLE `wxch_lang`
  MODIFY `lang_id` int(4) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `wxch_menu`
--
ALTER TABLE `wxch_menu`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `wxch_message`
--
ALTER TABLE `wxch_message`
  MODIFY `id` int(9) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wxch_msg`
--
ALTER TABLE `wxch_msg`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `wxch_oauth`
--
ALTER TABLE `wxch_oauth`
  MODIFY `oid` int(4) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `wxch_point`
--
ALTER TABLE `wxch_point`
  MODIFY `point_id` int(3) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `wxch_point_record`
--
ALTER TABLE `wxch_point_record`
  MODIFY `pr_id` int(7) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wxch_prize`
--
ALTER TABLE `wxch_prize`
  MODIFY `pid` int(4) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `wxch_prize_append`
--
ALTER TABLE `wxch_prize_append`
  MODIFY `id` int(5) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `wxch_prize_cnum`
--
ALTER TABLE `wxch_prize_cnum`
  MODIFY `pcid` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `wxch_prize_count`
--
ALTER TABLE `wxch_prize_count`
  MODIFY `cid` int(7) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `wxch_prize_register`
--
ALTER TABLE `wxch_prize_register`
  MODIFY `rid` int(8) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wxch_prize_users`
--
ALTER TABLE `wxch_prize_users`
  MODIFY `id` int(7) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wxch_qr`
--
ALTER TABLE `wxch_qr`
  MODIFY `qid` int(7) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wxch_user`
--
ALTER TABLE `wxch_user`
  MODIFY `uid` int(7) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
