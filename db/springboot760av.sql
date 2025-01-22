-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: springboot760av
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
-- Current Database: `springboot760av`
--

/*!40000 DROP DATABASE IF EXISTS `springboot760av`*/;

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `springboot760av` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `springboot760av`;

--
-- Table structure for table `chat`
--

DROP TABLE IF EXISTS `chat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chat` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `adminid` bigint(20) DEFAULT NULL COMMENT '管理员id',
  `ask` longtext COMMENT '提问',
  `reply` longtext COMMENT '回复',
  `isreply` int(11) DEFAULT NULL COMMENT '是否回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8 COMMENT='在线客服';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chat`
--

LOCK TABLES `chat` WRITE;
/*!40000 ALTER TABLE `chat` DISABLE KEYS */;
INSERT INTO `chat` VALUES (81,'2022-04-10 02:45:20',1,1,'提问1','回复1',1),(82,'2022-04-10 02:45:20',2,2,'提问2','回复2',2),(83,'2022-04-10 02:45:20',3,3,'提问3','回复3',3),(84,'2022-04-10 02:45:20',4,4,'提问4','回复4',4),(85,'2022-04-10 02:45:20',5,5,'提问5','回复5',5),(86,'2022-04-10 02:45:20',6,6,'提问6','回复6',6);
/*!40000 ALTER TABLE `chat` ENABLE KEYS */;
UNLOCK TABLES;

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','upload/picture1.jpg'),(2,'picture2','upload/picture2.jpg'),(3,'picture3','upload/picture3.jpg');
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
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8 COMMENT='课程信息评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discusskechengxinxi`
--

LOCK TABLES `discusskechengxinxi` WRITE;
/*!40000 ALTER TABLE `discusskechengxinxi` DISABLE KEYS */;
INSERT INTO `discusskechengxinxi` VALUES (111,'2022-04-10 02:45:20',1,1,'用户名1','评论内容1','回复内容1'),(112,'2022-04-10 02:45:20',2,2,'用户名2','评论内容2','回复内容2'),(113,'2022-04-10 02:45:20',3,3,'用户名3','评论内容3','回复内容3'),(114,'2022-04-10 02:45:20',4,4,'用户名4','评论内容4','回复内容4'),(115,'2022-04-10 02:45:20',5,5,'用户名5','评论内容5','回复内容5'),(116,'2022-04-10 02:45:20',6,6,'用户名6','评论内容6','回复内容6');
/*!40000 ALTER TABLE `discusskechengxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `goumaikecheng`
--

DROP TABLE IF EXISTS `goumaikecheng`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `goumaikecheng` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingdanbianhao` varchar(200) DEFAULT NULL COMMENT '订单编号',
  `kechengmingcheng` varchar(200) DEFAULT NULL COMMENT '课程名称',
  `kechengfenlei` varchar(200) DEFAULT NULL COMMENT '课程分类',
  `feiyong` float DEFAULT NULL COMMENT '费用',
  `goumaishijian` datetime DEFAULT NULL COMMENT '购买时间',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`),
  UNIQUE KEY `dingdanbianhao` (`dingdanbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='购买课程';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `goumaikecheng`
--

LOCK TABLES `goumaikecheng` WRITE;
/*!40000 ALTER TABLE `goumaikecheng` DISABLE KEYS */;
INSERT INTO `goumaikecheng` VALUES (51,'2022-04-10 02:45:20','1111111111','课程名称1','课程分类1',1,'2022-04-10 10:45:20','账号1','姓名1','未支付'),(52,'2022-04-10 02:45:20','2222222222','课程名称2','课程分类2',2,'2022-04-10 10:45:20','账号2','姓名2','未支付'),(53,'2022-04-10 02:45:20','3333333333','课程名称3','课程分类3',3,'2022-04-10 10:45:20','账号3','姓名3','未支付'),(54,'2022-04-10 02:45:20','4444444444','课程名称4','课程分类4',4,'2022-04-10 10:45:20','账号4','姓名4','未支付'),(55,'2022-04-10 02:45:20','5555555555','课程名称5','课程分类5',5,'2022-04-10 10:45:20','账号5','姓名5','未支付'),(56,'2022-04-10 02:45:20','6666666666','课程名称6','课程分类6',6,'2022-04-10 10:45:20','账号6','姓名6','未支付');
/*!40000 ALTER TABLE `goumaikecheng` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jiazhang`
--

DROP TABLE IF EXISTS `jiazhang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jiazhang` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) NOT NULL COMMENT '账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `nianling` int(11) DEFAULT NULL COMMENT '年龄',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhanghao` (`zhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='家长';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jiazhang`
--

LOCK TABLES `jiazhang` WRITE;
/*!40000 ALTER TABLE `jiazhang` DISABLE KEYS */;
INSERT INTO `jiazhang` VALUES (11,'2022-04-10 02:45:20','账号1','123456','姓名1',1,'男','13823888881','upload/jiazhang_zhaopian1.jpg'),(12,'2022-04-10 02:45:20','账号2','123456','姓名2',2,'男','13823888882','upload/jiazhang_zhaopian2.jpg'),(13,'2022-04-10 02:45:20','账号3','123456','姓名3',3,'男','13823888883','upload/jiazhang_zhaopian3.jpg'),(14,'2022-04-10 02:45:20','账号4','123456','姓名4',4,'男','13823888884','upload/jiazhang_zhaopian4.jpg'),(15,'2022-04-10 02:45:20','账号5','123456','姓名5',5,'男','13823888885','upload/jiazhang_zhaopian5.jpg'),(16,'2022-04-10 02:45:20','账号6','123456','姓名6',6,'男','13823888886','upload/jiazhang_zhaopian6.jpg');
/*!40000 ALTER TABLE `jiazhang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kechengfenlei`
--

DROP TABLE IF EXISTS `kechengfenlei`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kechengfenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `kechengfenlei` varchar(200) DEFAULT NULL COMMENT '课程分类',
  PRIMARY KEY (`id`),
  UNIQUE KEY `kechengfenlei` (`kechengfenlei`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='课程分类';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kechengfenlei`
--

LOCK TABLES `kechengfenlei` WRITE;
/*!40000 ALTER TABLE `kechengfenlei` DISABLE KEYS */;
INSERT INTO `kechengfenlei` VALUES (31,'2022-04-10 02:45:20','课程分类1'),(32,'2022-04-10 02:45:20','课程分类2'),(33,'2022-04-10 02:45:20','课程分类3'),(34,'2022-04-10 02:45:20','课程分类4'),(35,'2022-04-10 02:45:20','课程分类5'),(36,'2022-04-10 02:45:20','课程分类6');
/*!40000 ALTER TABLE `kechengfenlei` ENABLE KEYS */;
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
  `kechengfenlei` varchar(200) DEFAULT NULL COMMENT '课程分类',
  `kaikeshijian` datetime DEFAULT NULL COMMENT '开课时间',
  `keshi` varchar(200) DEFAULT NULL COMMENT '课时',
  `feiyong` float DEFAULT NULL COMMENT '费用',
  `shipinyulan` varchar(200) DEFAULT NULL COMMENT '视频预览',
  `kechengneirong` longtext COMMENT '课程内容',
  `fengmian` varchar(200) DEFAULT NULL COMMENT '封面',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='课程信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kechengxinxi`
--

LOCK TABLES `kechengxinxi` WRITE;
/*!40000 ALTER TABLE `kechengxinxi` DISABLE KEYS */;
INSERT INTO `kechengxinxi` VALUES (41,'2022-04-10 02:45:20','课程名称1','课程分类1','2022-04-10 10:45:20','课时1',1,'','课程内容1','upload/kechengxinxi_fengmian1.jpg','2022-04-10 10:45:20',1),(42,'2022-04-10 02:45:20','课程名称2','课程分类2','2022-04-10 10:45:20','课时2',2,'','课程内容2','upload/kechengxinxi_fengmian2.jpg','2022-04-10 10:45:20',2),(43,'2022-04-10 02:45:20','课程名称3','课程分类3','2022-04-10 10:45:20','课时3',3,'','课程内容3','upload/kechengxinxi_fengmian3.jpg','2022-04-10 10:45:20',3),(44,'2022-04-10 02:45:20','课程名称4','课程分类4','2022-04-10 10:45:20','课时4',4,'','课程内容4','upload/kechengxinxi_fengmian4.jpg','2022-04-10 10:45:20',4),(45,'2022-04-10 02:45:20','课程名称5','课程分类5','2022-04-10 10:45:20','课时5',5,'','课程内容5','upload/kechengxinxi_fengmian5.jpg','2022-04-10 10:45:20',5),(46,'2022-04-10 02:45:20','课程名称6','课程分类6','2022-04-10 10:45:20','课时6',6,'','课程内容6','upload/kechengxinxi_fengmian6.jpg','2022-04-10 10:45:20',6);
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
  `cpicture` varchar(200) DEFAULT NULL COMMENT '留言图片',
  `reply` longtext COMMENT '回复内容',
  `rpicture` varchar(200) DEFAULT NULL COMMENT '回复图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8 COMMENT='留言反馈';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messages`
--

LOCK TABLES `messages` WRITE;
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
INSERT INTO `messages` VALUES (101,'2022-04-10 02:45:20',1,'用户名1','留言内容1','upload/messages_cpicture1.jpg','回复内容1','upload/messages_rpicture1.jpg'),(102,'2022-04-10 02:45:20',2,'用户名2','留言内容2','upload/messages_cpicture2.jpg','回复内容2','upload/messages_rpicture2.jpg'),(103,'2022-04-10 02:45:20',3,'用户名3','留言内容3','upload/messages_cpicture3.jpg','回复内容3','upload/messages_rpicture3.jpg'),(104,'2022-04-10 02:45:20',4,'用户名4','留言内容4','upload/messages_cpicture4.jpg','回复内容4','upload/messages_rpicture4.jpg'),(105,'2022-04-10 02:45:20',5,'用户名5','留言内容5','upload/messages_cpicture5.jpg','回复内容5','upload/messages_rpicture5.jpg'),(106,'2022-04-10 02:45:20',6,'用户名6','留言内容6','upload/messages_cpicture6.jpg','回复内容6','upload/messages_rpicture6.jpg');
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
  `type` varchar(200) DEFAULT '1' COMMENT '类型(1:收藏,21:赞,22:踩)',
  `inteltype` varchar(200) DEFAULT NULL COMMENT '推荐类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='收藏表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storeup`
--

LOCK TABLES `storeup` WRITE;
/*!40000 ALTER TABLE `storeup` DISABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tongzhigonggao`
--

DROP TABLE IF EXISTS `tongzhigonggao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tongzhigonggao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) NOT NULL COMMENT '标题',
  `jianjie` longtext COMMENT '简介',
  `fabushijian` date DEFAULT NULL COMMENT '发布时间',
  `fengmian` varchar(200) DEFAULT NULL COMMENT '封面',
  `neirong` longtext COMMENT '内容',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8 COMMENT='通知公告';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tongzhigonggao`
--

LOCK TABLES `tongzhigonggao` WRITE;
/*!40000 ALTER TABLE `tongzhigonggao` DISABLE KEYS */;
INSERT INTO `tongzhigonggao` VALUES (71,'2022-04-10 02:45:20','标题1','简介1','2022-04-10','upload/tongzhigonggao_fengmian1.jpg','内容1','2022-04-10 10:45:20',1),(72,'2022-04-10 02:45:20','标题2','简介2','2022-04-10','upload/tongzhigonggao_fengmian2.jpg','内容2','2022-04-10 10:45:20',2),(73,'2022-04-10 02:45:20','标题3','简介3','2022-04-10','upload/tongzhigonggao_fengmian3.jpg','内容3','2022-04-10 10:45:20',3),(74,'2022-04-10 02:45:20','标题4','简介4','2022-04-10','upload/tongzhigonggao_fengmian4.jpg','内容4','2022-04-10 10:45:20',4),(75,'2022-04-10 02:45:20','标题5','简介5','2022-04-10','upload/tongzhigonggao_fengmian5.jpg','内容5','2022-04-10 10:45:20',5),(76,'2022-04-10 02:45:20','标题6','简介6','2022-04-10','upload/tongzhigonggao_fengmian6.jpg','内容6','2022-04-10 10:45:20',6);
/*!40000 ALTER TABLE `tongzhigonggao` ENABLE KEYS */;
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
INSERT INTO `users` VALUES (1,'abo','abo','管理员','2022-04-10 02:45:20');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wanzhengkecheng`
--

DROP TABLE IF EXISTS `wanzhengkecheng`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wanzhengkecheng` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingdanbianhao` varchar(200) DEFAULT NULL COMMENT '订单编号',
  `kechengmingcheng` varchar(200) DEFAULT NULL COMMENT '课程名称',
  `kechengfenlei` varchar(200) DEFAULT NULL COMMENT '课程分类',
  `wanzhengshipin` varchar(200) DEFAULT NULL COMMENT '完整视频',
  `fasongshijian` datetime DEFAULT NULL COMMENT '发送时间',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COMMENT='完整课程';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wanzhengkecheng`
--

LOCK TABLES `wanzhengkecheng` WRITE;
/*!40000 ALTER TABLE `wanzhengkecheng` DISABLE KEYS */;
INSERT INTO `wanzhengkecheng` VALUES (61,'2022-04-10 02:45:20','订单编号1','课程名称1','课程分类1','','2022-04-10 10:45:20','账号1','姓名1'),(62,'2022-04-10 02:45:20','订单编号2','课程名称2','课程分类2','','2022-04-10 10:45:20','账号2','姓名2'),(63,'2022-04-10 02:45:20','订单编号3','课程名称3','课程分类3','','2022-04-10 10:45:20','账号3','姓名3'),(64,'2022-04-10 02:45:20','订单编号4','课程名称4','课程分类4','','2022-04-10 10:45:20','账号4','姓名4'),(65,'2022-04-10 02:45:20','订单编号5','课程名称5','课程分类5','','2022-04-10 10:45:20','账号5','姓名5'),(66,'2022-04-10 02:45:20','订单编号6','课程名称6','课程分类6','','2022-04-10 10:45:20','账号6','姓名6');
/*!40000 ALTER TABLE `wanzhengkecheng` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xueshengxinxi`
--

DROP TABLE IF EXISTS `xueshengxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xueshengxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xueshengxuehao` varchar(200) NOT NULL COMMENT '学生学号',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  `nianling` int(11) DEFAULT NULL COMMENT '年龄',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `jiguan` varchar(200) DEFAULT NULL COMMENT '籍贯',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  `zhengzhimianmao` varchar(200) DEFAULT NULL COMMENT '政治面貌',
  `gerenjianjie` longtext COMMENT '个人简介',
  `dengjiriqi` date DEFAULT NULL COMMENT '登记日期',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  PRIMARY KEY (`id`),
  UNIQUE KEY `xueshengxuehao` (`xueshengxuehao`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='学生信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xueshengxinxi`
--

LOCK TABLES `xueshengxinxi` WRITE;
/*!40000 ALTER TABLE `xueshengxinxi` DISABLE KEYS */;
INSERT INTO `xueshengxinxi` VALUES (21,'2022-04-10 02:45:20','学生学号1','学生姓名1',1,'男','13823888881','籍贯1','440300199101010001','upload/xueshengxinxi_zhaopian1.jpg','政治面貌1','个人简介1','2022-04-10','账号1','姓名1'),(22,'2022-04-10 02:45:20','学生学号2','学生姓名2',2,'男','13823888882','籍贯2','440300199202020002','upload/xueshengxinxi_zhaopian2.jpg','政治面貌2','个人简介2','2022-04-10','账号2','姓名2'),(23,'2022-04-10 02:45:20','学生学号3','学生姓名3',3,'男','13823888883','籍贯3','440300199303030003','upload/xueshengxinxi_zhaopian3.jpg','政治面貌3','个人简介3','2022-04-10','账号3','姓名3'),(24,'2022-04-10 02:45:20','学生学号4','学生姓名4',4,'男','13823888884','籍贯4','440300199404040004','upload/xueshengxinxi_zhaopian4.jpg','政治面貌4','个人简介4','2022-04-10','账号4','姓名4'),(25,'2022-04-10 02:45:20','学生学号5','学生姓名5',5,'男','13823888885','籍贯5','440300199505050005','upload/xueshengxinxi_zhaopian5.jpg','政治面貌5','个人简介5','2022-04-10','账号5','姓名5'),(26,'2022-04-10 02:45:20','学生学号6','学生姓名6',6,'男','13823888886','籍贯6','440300199606060006','upload/xueshengxinxi_zhaopian6.jpg','政治面貌6','个人简介6','2022-04-10','账号6','姓名6');
/*!40000 ALTER TABLE `xueshengxinxi` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-04-10 10:58:44
