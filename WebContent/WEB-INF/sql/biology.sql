/*
SQLyog 企业版 - MySQL GUI v8.14 
MySQL - 5.5.15 : Database - biology
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`biology` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `biology`;

/*Table structure for table `home` */

DROP TABLE IF EXISTS `home`;

CREATE TABLE `home` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `home_content` text,
  `title` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC;

/*Data for the table `home` */

insert  into `home`(`id`,`home_content`,`title`) values (1,'东北师范大学计算机科学与信息技术学院生物信息学科研团队创立于2003年。团队创始初期，团队创始人马志强老师一方面积极联系与外界的合作，先后尝试与吉林大学农学部、东北师范大学生科院以及澳大利亚中央昆士兰大学William Guo教授开展合作；另一方面，鼓励团队成员积极去外面参加学术会议、短期学习以及国际交流。目前，团队已经确立了较为明确固定的研究课题。多个研究成果已经发表在生物信息学核心期刊《Plos ONE》以及《BMC Bioinformatics》上。自创立之日起，团队创始人与各成员团结奋进，勇于创新，取得了一系列科研成果。至2013年，团队先后完成了国家自然科学基金、教育部、吉林省科技厅以及吉林省人事厅等项目10余项；发表论文60余篇，其中SCI检索论文40余篇。几年间，团队培养博士研究生2名，硕士研究生30余名，另有一名硕士研究生出国继续深造。今后，团队将继续努力工作，争取做出更多更好的研究成果。为我国生物信息学的发展做出贡献！','东北师范大学生物信息学简介');

/*Table structure for table `project` */

DROP TABLE IF EXISTS `project`;

CREATE TABLE `project` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `list` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC;

/*Data for the table `project` */

insert  into `project`(`id`,`list`) values (1,'基于本体的主题爬行建模与方法研究'),(2,'基于计算智能的微生物基因组功能注释算法研究'),(3,'关于进化算法运行机理分析与应用的研究'),(4,'基因调控网络的建模与推断'),(5,'基于计算智能与信息融合的B细胞表位预测研究'),(6,'基于噬菌体展示库的B细胞构象性表位预测算法及其应用研究'),(7,'基于抗原结构特征和噬菌体组合肽库筛选的B细胞表位预测研究'),(8,'基于噬菌体组合肽库筛选的高精度B细胞表位预测算法研究'),(9,'细胞凋亡信号转导网络的计算建模研究'),(10,'细胞凋亡信号转导网络多尺度建模及其在新抗肿瘤药物靶标识别方面的应用研究'),(11,'基于药效团和定量构效关系模型的计算机虚拟筛选平台'),(12,'中药有效成分和药物分子作用靶标的计算机虚拟筛选');

/*Table structure for table `team` */

DROP TABLE IF EXISTS `team`;

CREATE TABLE `team` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(15) NOT NULL,
  `professional` varchar(30) NOT NULL,
  `study` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC;

/*Data for the table `team` */

insert  into `team`(`id`,`name`,`professional`,`study`) values (1,'马志强','教授/博士生导师','生物信息计算智能'),(2,'黄艳新','副教授/博士生导师','系统生物学、计算机辅助药物分子设计'),(3,'张友','副教授','模式识别、自动化'),(4,'李艳文','讲师','基因调控网络建模、智能计算'),(5,'孙平平','讲师','抗原表位研究'),(6,'赵晓威','博士后','蛋白质组学'),(7,'王红岩','博士','基因调控网络建模'),(8,'张春华','博士','B细胞表位研究'),(9,'张健','博士','抗原抗体Docking'),(10,'逯畅','硕士研究生二年级','T细胞表位研究'),(11,'李云云','硕士研究生一年级',NULL);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
