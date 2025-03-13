-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: jspm89g3d
-- ------------------------------------------------------
-- Server version	5.7.31

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','http://localhost:8080/jspm89g3d/upload/1611646484940.jpg'),(2,'picture2','http://localhost:8080/jspm89g3d/upload/1611646493470.jpg'),(3,'picture3','http://localhost:8080/jspm89g3d/upload/1611646502168.jpg'),(6,'homepage',NULL);
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discusskechengxinxi`
--

DROP TABLE IF EXISTS `discusskechengxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discusskechengxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1611646983024 DEFAULT CHARSET=utf8 COMMENT='课程信息评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discusskechengxinxi`
--

LOCK TABLES `discusskechengxinxi` WRITE;
/*!40000 ALTER TABLE `discusskechengxinxi` DISABLE KEYS */;
INSERT INTO `discusskechengxinxi` VALUES (91,'2021-01-26 07:29:06',1,1,'评论内容1','回复内容1'),(92,'2021-01-26 07:29:06',2,2,'评论内容2','回复内容2'),(93,'2021-01-26 07:29:06',3,3,'评论内容3','回复内容3'),(94,'2021-01-26 07:29:06',4,4,'评论内容4','回复内容4'),(95,'2021-01-26 07:29:06',5,5,'评论内容5','回复内容5'),(96,'2021-01-26 07:29:06',6,6,'评论内容6','回复内容6'),(1611646983023,'2021-01-26 07:43:02',1611646929417,1611646698085,'哪里哪里有错误',NULL);
/*!40000 ALTER TABLE `discusskechengxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forum`
--

DROP TABLE IF EXISTS `forum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `forum` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) DEFAULT NULL COMMENT '帖子标题',
  `content` longtext NOT NULL COMMENT '帖子内容',
  `parentid` bigint(20) DEFAULT NULL COMMENT '父节点id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `isdone` varchar(200) DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1611647333587 DEFAULT CHARSET=utf8 COMMENT='论坛表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forum`
--

LOCK TABLES `forum` WRITE;
/*!40000 ALTER TABLE `forum` DISABLE KEYS */;
INSERT INTO `forum` VALUES (1611647041740,'2021-01-26 07:44:01','11111','<p>请输入内容这里也可以发布一些信息给用户跟教师可以进行 信息交流</p>',0,1611646698085,'1','开放'),(1611647049454,'2021-01-26 07:44:08',NULL,'请输入评论111111',1611647041740,1611646698085,'1',NULL),(1611647333586,'2021-01-26 07:48:53',NULL,'请输入评论1111',1611647041740,1611646698085,'1',NULL);
/*!40000 ALTER TABLE `forum` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jiaoshi`
--

DROP TABLE IF EXISTS `jiaoshi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jiaoshi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gonghao` varchar(200) NOT NULL COMMENT '工号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `nianling` varchar(200) DEFAULT NULL COMMENT '年龄',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `dianhua` varchar(200) DEFAULT NULL COMMENT '电话',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  PRIMARY KEY (`id`),
  UNIQUE KEY `gonghao` (`gonghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1611646720605 DEFAULT CHARSET=utf8 COMMENT='教师';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jiaoshi`
--

LOCK TABLES `jiaoshi` WRITE;
/*!40000 ALTER TABLE `jiaoshi` DISABLE KEYS */;
INSERT INTO `jiaoshi` VALUES (21,'2021-01-26 07:29:06','001','001','教师姓名1','男','年龄1','http://localhost:8080/jspm89g3d/upload/jiaoshi_touxiang1.jpg','13823888881','773890001@qq.com'),(22,'2021-01-26 07:29:06','教师2','123456','教师姓名2','男','年龄2','http://localhost:8080/jspm89g3d/upload/jiaoshi_touxiang2.jpg','13823888882','773890002@qq.com'),(23,'2021-01-26 07:29:06','教师3','123456','教师姓名3','男','年龄3','http://localhost:8080/jspm89g3d/upload/jiaoshi_touxiang3.jpg','13823888883','773890003@qq.com'),(24,'2021-01-26 07:29:06','教师4','123456','教师姓名4','男','年龄4','http://localhost:8080/jspm89g3d/upload/jiaoshi_touxiang4.jpg','13823888884','773890004@qq.com'),(25,'2021-01-26 07:29:06','教师5','123456','教师姓名5','男','年龄5','http://localhost:8080/jspm89g3d/upload/jiaoshi_touxiang5.jpg','13823888885','773890005@qq.com'),(26,'2021-01-26 07:29:06','教师6','123456','教师姓名6','男','年龄6','http://localhost:8080/jspm89g3d/upload/jiaoshi_touxiang6.jpg','13823888886','773890006@qq.com'),(1611646720604,'2021-01-26 07:38:40','1','1','王老师','女','35','http://localhost:8080/jspm89g3d/upload/1611646841411.png','1520141214121','12122@163.com');
/*!40000 ALTER TABLE `jiaoshi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jiarukecheng`
--

DROP TABLE IF EXISTS `jiarukecheng`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jiarukecheng` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `kechengmingcheng` varchar(200) DEFAULT NULL COMMENT '课程名称',
  `kechengleixing` varchar(200) DEFAULT NULL COMMENT '课程类型',
  `gonghao` varchar(200) DEFAULT NULL COMMENT '工号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  `sizhengyuansu` longtext COMMENT '思政元素',
  `faburiqi` date DEFAULT NULL COMMENT '发布日期',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1611647014231 DEFAULT CHARSET=utf8 COMMENT='加入课程';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jiarukecheng`
--

LOCK TABLES `jiarukecheng` WRITE;
/*!40000 ALTER TABLE `jiarukecheng` DISABLE KEYS */;
INSERT INTO `jiarukecheng` VALUES (51,'2021-01-26 07:29:06','课程名称1','课程类型1','工号1','教师姓名1','思政元素1','2021-01-26','用户名1','姓名1','是',''),(52,'2021-01-26 07:29:06','课程名称2','课程类型2','工号2','教师姓名2','思政元素2','2021-01-26','用户名2','姓名2','是',''),(53,'2021-01-26 07:29:06','课程名称3','课程类型3','工号3','教师姓名3','思政元素3','2021-01-26','用户名3','姓名3','是',''),(54,'2021-01-26 07:29:06','课程名称4','课程类型4','工号4','教师姓名4','思政元素4','2021-01-26','用户名4','姓名4','是',''),(55,'2021-01-26 07:29:06','课程名称5','课程类型5','工号5','教师姓名5','思政元素5','2021-01-26','用户名5','姓名5','是',''),(56,'2021-01-26 07:29:06','课程名称6','课程类型6','工号6','教师姓名6','思政元素6','2021-01-26','用户名6','姓名6','是',''),(1611647014230,'2021-01-26 07:43:34','英语语法速成','英语','1','王老师','<p>这里可以提供一些思政元素给教师参考</p>','2021-01-14','1','刘倩','是','感谢你的提供');
/*!40000 ALTER TABLE `jiarukecheng` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kechengleixing`
--

DROP TABLE IF EXISTS `kechengleixing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kechengleixing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `kechengleixing` varchar(200) NOT NULL COMMENT '课程类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1611646859869 DEFAULT CHARSET=utf8 COMMENT='课程类型';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kechengleixing`
--

LOCK TABLES `kechengleixing` WRITE;
/*!40000 ALTER TABLE `kechengleixing` DISABLE KEYS */;
INSERT INTO `kechengleixing` VALUES (41,'2021-01-26 07:29:06','语文'),(42,'2021-01-26 07:29:06','课程类型2'),(43,'2021-01-26 07:29:06','课程类型3'),(44,'2021-01-26 07:29:06','课程类型4'),(45,'2021-01-26 07:29:06','课程类型5'),(46,'2021-01-26 07:29:06','课程类型6'),(1611646859868,'2021-01-26 07:40:59','英语');
/*!40000 ALTER TABLE `kechengleixing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kechengxinxi`
--

DROP TABLE IF EXISTS `kechengxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kechengxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `kechengmingcheng` varchar(200) DEFAULT NULL COMMENT '课程名称',
  `kechengleixing` varchar(200) DEFAULT NULL COMMENT '课程类型',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `zhishidian` longtext COMMENT '知识点',
  `kechengxiangqing` longtext COMMENT '课程详情',
  `gonghao` varchar(200) DEFAULT NULL COMMENT '工号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1611646929418 DEFAULT CHARSET=utf8 COMMENT='课程信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kechengxinxi`
--

LOCK TABLES `kechengxinxi` WRITE;
/*!40000 ALTER TABLE `kechengxinxi` DISABLE KEYS */;
INSERT INTO `kechengxinxi` VALUES (31,'2021-01-26 07:29:06','课程名称1','课程类型1','http://localhost:8080/jspm89g3d/upload/kechengxinxi_tupian1.jpg','知识点1','课程详情1','工号1','教师姓名1'),(32,'2021-01-26 07:29:06','课程名称2','课程类型2','http://localhost:8080/jspm89g3d/upload/1611646629448.jpg','知识点2','课程详情2\r\n','工号2','教师姓名2'),(33,'2021-01-26 07:29:06','课程名称3','课程类型3','http://localhost:8080/jspm89g3d/upload/kechengxinxi_tupian3.jpg','知识点3','课程详情3','工号3','教师姓名3'),(34,'2021-01-26 07:29:06','课程名称4','课程类型4','http://localhost:8080/jspm89g3d/upload/1611646637731.jpg','知识点4','课程详情4\r\n','工号4','教师姓名4'),(35,'2021-01-26 07:29:06','课程名称5','课程类型5','http://localhost:8080/jspm89g3d/upload/kechengxinxi_tupian5.jpg','知识点5','课程详情5','工号5','教师姓名5'),(36,'2021-01-26 07:29:06','课程名称6','课程类型6','http://localhost:8080/jspm89g3d/upload/1611646649247.jpg','知识点6','课程详情6\r\n','工号6','教师姓名6'),(1611646929417,'2021-01-26 07:42:09','英语语法速成','英语','http://localhost:8080/jspm89g3d/upload/1611646890332.jpg','111','1111这里可以发布一些相关思政元素信息，内容这里都是用于测试的，可以自行添加修改删除的\r\n','1','王老师');
/*!40000 ALTER TABLE `kechengxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `messages` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '留言人id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '留言内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1611647067538 DEFAULT CHARSET=utf8 COMMENT='留言板';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messages`
--

LOCK TABLES `messages` WRITE;
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
INSERT INTO `messages` VALUES (1611647067537,'2021-01-26 07:44:26',1611646698085,'1','有什么问或者意见也可以给管理员进行反馈','对于意见反馈也可以进行回复');
/*!40000 ALTER TABLE `messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storeup`
--

DROP TABLE IF EXISTS `storeup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1611647019698 DEFAULT CHARSET=utf8 COMMENT='收藏表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storeup`
--

LOCK TABLES `storeup` WRITE;
/*!40000 ALTER TABLE `storeup` DISABLE KEYS */;
INSERT INTO `storeup` VALUES (1611646962567,'2021-01-26 07:42:42',1611646698085,1611646929417,'kechengxinxi','英语语法速成','http://localhost:8080/jspm89g3d/upload/1611646890332.jpg');
/*!40000 ALTER TABLE `storeup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,1,'abo','users','管理员','t8bo9lsusz0494f2g6pkcnw7gete31q1','2021-01-26 07:32:58','2021-01-26 08:46:43'),(2,11,'001','yonghu','用户','5u46nowoqllc2fxvoh8f4z15zw8yg86m','2021-01-26 07:33:31','2021-01-26 08:33:32'),(3,1611646720604,'1','jiaoshi','教师','wyoqaba7z7bldvjjcneaj65c1q6cgqxd','2021-01-26 07:38:45','2021-01-26 08:45:33'),(4,21,'001','jiaoshi','教师','mjs5am66a9ukl1wzlp8t4gl6x9xtnt49','2021-01-26 07:39:51','2021-01-26 08:39:52'),(5,1611646698085,'1','yonghu','用户','7kzuacyl2k6hs13pd5jto5ges5z4rqa3','2021-01-26 07:42:28','2021-01-26 08:48:47');
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'abo','abo','管理员','2021-01-26 07:29:06');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yonghu`
--

DROP TABLE IF EXISTS `yonghu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuming` varchar(200) NOT NULL COMMENT '用户名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `nianling` varchar(200) DEFAULT NULL COMMENT '年龄',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuming` (`yonghuming`)
) ENGINE=InnoDB AUTO_INCREMENT=1611646698086 DEFAULT CHARSET=utf8 COMMENT='用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yonghu`
--

LOCK TABLES `yonghu` WRITE;
/*!40000 ALTER TABLE `yonghu` DISABLE KEYS */;
INSERT INTO `yonghu` VALUES (11,'2021-01-26 07:29:06','001','001','姓名1','男','年龄1','http://localhost:8080/jspm89g3d/upload/yonghu_touxiang1.jpg','13823888881','773890001@qq.com'),(12,'2021-01-26 07:29:06','用户2','123456','姓名2','男','年龄2','http://localhost:8080/jspm89g3d/upload/yonghu_touxiang2.jpg','13823888882','773890002@qq.com'),(13,'2021-01-26 07:29:06','用户3','123456','姓名3','男','年龄3','http://localhost:8080/jspm89g3d/upload/yonghu_touxiang3.jpg','13823888883','773890003@qq.com'),(14,'2021-01-26 07:29:06','用户4','123456','姓名4','男','年龄4','http://localhost:8080/jspm89g3d/upload/yonghu_touxiang4.jpg','13823888884','773890004@qq.com'),(15,'2021-01-26 07:29:06','用户5','123456','姓名5','男','年龄5','http://localhost:8080/jspm89g3d/upload/yonghu_touxiang5.jpg','13823888885','773890005@qq.com'),(16,'2021-01-26 07:29:06','用户6','123456','姓名6','男','年龄6','http://localhost:8080/jspm89g3d/upload/yonghu_touxiang6.jpg','13823888886','773890006@qq.com'),(1611646698085,'2021-01-26 07:38:18','1','1','刘倩','女','21','http://localhost:8080/jspm89g3d/upload/1611647083589.png','15214121412','11212@163.com');
/*!40000 ALTER TABLE `yonghu` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-01-26 20:42:52
