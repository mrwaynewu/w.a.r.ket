<?php
require("../../inc/header.php");

/*
		SoftName : EmpireBak Version 2010
		Author   : wm_chief
		Copyright: Powered by www.phome.net
*/

DoSetDbChar('utf8');
E_D("DROP TABLE IF EXISTS `ecs_searchengine`;");
E_C("CREATE TABLE `ecs_searchengine` (
  `date` date NOT NULL DEFAULT '0000-00-00',
  `searchengine` varchar(20) NOT NULL DEFAULT '',
  `count` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`date`,`searchengine`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8");
E_D("replace into `ecs_searchengine` values('2014-07-22','GOOGLE','1');");
E_D("replace into `ecs_searchengine` values('2014-07-24','GOOGLE','1');");
E_D("replace into `ecs_searchengine` values('2014-07-25','SOGOU','1');");
E_D("replace into `ecs_searchengine` values('2014-07-26','SOGOU','2201');");
E_D("replace into `ecs_searchengine` values('2014-07-26','GOOGLE','2');");
E_D("replace into `ecs_searchengine` values('2014-07-27','SOGOU','3239');");
E_D("replace into `ecs_searchengine` values('2014-07-27','GOOGLE','1');");
E_D("replace into `ecs_searchengine` values('2014-07-28','SOGOU','2165');");

require("../../inc/footer.php");
?>