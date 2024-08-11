/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb3 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP DATABASE IF EXISTS `t321`;
CREATE DATABASE IF NOT EXISTS `t321` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `t321`;

DROP TABLE IF EXISTS `config`;
CREATE TABLE IF NOT EXISTS `config` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='配置文件';

DELETE FROM `config`;

DROP TABLE IF EXISTS `dictionary`;
CREATE TABLE IF NOT EXISTS `dictionary` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb3 COMMENT='字典';

DELETE FROM `dictionary`;
INSERT INTO `dictionary` (`id`, `dic_code`, `dic_name`, `code_index`, `index_name`, `super_id`, `beizhu`, `create_time`) VALUES
	(1, 'gonggao_types', '公告类型', 1, '公告类型1', NULL, NULL, '2022-04-27 07:11:55'),
	(2, 'gonggao_types', '公告类型', 2, '公告类型2', NULL, NULL, '2022-04-27 07:11:55'),
	(3, 'sex_types', '性别类型', 1, '男', NULL, NULL, '2022-04-27 07:11:55'),
	(4, 'sex_types', '性别类型', 2, '女', NULL, NULL, '2022-04-27 07:11:55'),
	(5, 'zhuanye_types', '专业', 1, '专业1', NULL, NULL, '2022-04-27 07:11:55'),
	(6, 'zhuanye_types', '专业', 2, '专业2', NULL, NULL, '2022-04-27 07:11:55'),
	(7, 'zhuanye_types', '专业', 3, '专业3', NULL, NULL, '2022-04-27 07:11:55'),
	(8, 'banji_types', '班级', 1, '班级1', NULL, NULL, '2022-04-27 07:11:55'),
	(9, 'banji_types', '班级', 2, '班级2', NULL, NULL, '2022-04-27 07:11:55'),
	(10, 'banji_types', '班级', 3, '班级3', NULL, NULL, '2022-04-27 07:11:55'),
	(11, 'liuyan_types', '留言类型', 1, '留言类型1', NULL, NULL, '2022-04-27 07:11:55'),
	(12, 'liuyan_types', '留言类型', 2, '留言类型2', NULL, NULL, '2022-04-27 07:11:55'),
	(13, 'gonggao_types', '公告类型', 3, '公告类型3', NULL, '', '2022-04-27 07:36:55');

DROP TABLE IF EXISTS `fudaoyuan`;
CREATE TABLE IF NOT EXISTS `fudaoyuan` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `fudaoyuan_name` varchar(200) DEFAULT NULL COMMENT '辅导员姓名 Search111 ',
  `fudaoyuan_phone` varchar(200) DEFAULT NULL COMMENT '辅导员手机号',
  `fudaoyuan_id_number` varchar(200) DEFAULT NULL COMMENT '辅导员身份证号',
  `fudaoyuan_photo` varchar(200) DEFAULT NULL COMMENT '辅导员头像',
  `sex_types` int DEFAULT NULL COMMENT '性别',
  `fudaoyuan_email` varchar(200) DEFAULT NULL COMMENT '电子邮箱',
  `banji_types` int DEFAULT NULL COMMENT '班级 Search111 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='辅导员';

DELETE FROM `fudaoyuan`;
INSERT INTO `fudaoyuan` (`id`, `username`, `password`, `fudaoyuan_name`, `fudaoyuan_phone`, `fudaoyuan_id_number`, `fudaoyuan_photo`, `sex_types`, `fudaoyuan_email`, `banji_types`, `create_time`) VALUES
	(1, '辅导员1', '123456', '辅导员姓名1', '17703786901', '410224199610232001', 'http://localhost:8080/zonghesuzhipingjiaxitong/upload/fudaoyuan1.jpg', 2, '1@qq.com', 1, '2022-04-27 07:12:01'),
	(2, '辅导员2', '123456', '辅导员姓名2', '17703786902', '410224199610232002', 'http://localhost:8080/zonghesuzhipingjiaxitong/upload/fudaoyuan2.jpg', 1, '2@qq.com', 2, '2022-04-27 07:12:01'),
	(3, '辅导员3', '123456', '辅导员姓名3', '17703786903', '410224199610232003', 'http://localhost:8080/zonghesuzhipingjiaxitong/upload/fudaoyuan3.jpg', 2, '3@qq.com', 1, '2022-04-27 07:12:01');

DROP TABLE IF EXISTS `gerenzonghesuzhi`;
CREATE TABLE IF NOT EXISTS `gerenzonghesuzhi` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `xuesheng_id` int DEFAULT NULL COMMENT '学生',
  `sixiangdaode` decimal(10,2) DEFAULT NULL COMMENT '思想道德水平',
  `xueye` decimal(10,2) DEFAULT NULL COMMENT '学业综合宿舍',
  `shenxinjiankang` decimal(10,2) DEFAULT NULL COMMENT '身心健康',
  `yishusuyang` decimal(10,2) DEFAULT NULL COMMENT '艺术素养',
  `shehuizongheshijian` decimal(10,2) DEFAULT NULL COMMENT '社会综合实践',
  `gerenzonghesuzhi_content` text COMMENT '备注 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='个人综合素质';

DELETE FROM `gerenzonghesuzhi`;
INSERT INTO `gerenzonghesuzhi` (`id`, `xuesheng_id`, `sixiangdaode`, `xueye`, `shenxinjiankang`, `yishusuyang`, `shehuizongheshijian`, `gerenzonghesuzhi_content`, `insert_time`, `create_time`) VALUES
	(1, 2, 967.14, 66.54, 53.60, 174.97, 257.62, '备注1', '2022-04-27 07:12:01', '2022-04-27 07:12:01'),
	(2, 1, 298.12, 610.79, 960.92, 211.23, 430.00, '备注2', '2022-04-27 07:12:01', '2022-04-27 07:12:01'),
	(5, 3, 72.22, 320.04, 647.24, 678.76, 686.25, '备注5', '2022-04-27 07:12:01', '2022-04-27 07:12:01');

DROP TABLE IF EXISTS `gonggao`;
CREATE TABLE IF NOT EXISTS `gonggao` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `gonggao_name` varchar(200) DEFAULT NULL COMMENT '公告名称 Search111  ',
  `gonggao_photo` varchar(200) DEFAULT NULL COMMENT '公告图片 ',
  `gonggao_types` int NOT NULL COMMENT '公告类型 Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '公告发布时间 ',
  `gonggao_content` text COMMENT '公告详情 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 COMMENT='公告';

DELETE FROM `gonggao`;
INSERT INTO `gonggao` (`id`, `gonggao_name`, `gonggao_photo`, `gonggao_types`, `insert_time`, `gonggao_content`, `create_time`) VALUES
	(1, '公告名称1', 'http://localhost:8080/zonghesuzhipingjiaxitong/upload/gonggao1.jpg', 2, '2022-04-27 07:12:01', '公告详情1', '2022-04-27 07:12:01'),
	(2, '公告名称2', 'http://localhost:8080/zonghesuzhipingjiaxitong/upload/gonggao2.jpg', 1, '2022-04-27 07:12:01', '公告详情2', '2022-04-27 07:12:01'),
	(3, '公告名称3', 'http://localhost:8080/zonghesuzhipingjiaxitong/upload/gonggao3.jpg', 1, '2022-04-27 07:12:01', '公告详情3', '2022-04-27 07:12:01'),
	(4, '公告名称4', 'http://localhost:8080/zonghesuzhipingjiaxitong/upload/gonggao4.jpg', 1, '2022-04-27 07:12:01', '公告详情4', '2022-04-27 07:12:01'),
	(5, '公告名称5', 'http://localhost:8080/zonghesuzhipingjiaxitong/upload/gonggao5.jpg', 2, '2022-04-27 07:12:01', '公告详情5', '2022-04-27 07:12:01'),
	(6, '公告1', 'http://localhost:8080/zonghesuzhipingjiaxitong/upload/1651045033737.jpg', 3, '2022-04-27 07:37:16', '<p>的誓师大会翻山倒海积分到</p>', '2022-04-27 07:37:16');

DROP TABLE IF EXISTS `laoshi`;
CREATE TABLE IF NOT EXISTS `laoshi` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `laoshi_name` varchar(200) DEFAULT NULL COMMENT '老师姓名 Search111 ',
  `laoshi_phone` varchar(200) DEFAULT NULL COMMENT '老师手机号',
  `laoshi_id_number` varchar(200) DEFAULT NULL COMMENT '老师身份证号',
  `laoshi_photo` varchar(200) DEFAULT NULL COMMENT '老师头像',
  `sex_types` int DEFAULT NULL COMMENT '性别',
  `laoshi_email` varchar(200) DEFAULT NULL COMMENT '电子邮箱',
  `banji_types` int DEFAULT NULL COMMENT '班级 Search111 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='老师';

DELETE FROM `laoshi`;
INSERT INTO `laoshi` (`id`, `username`, `password`, `laoshi_name`, `laoshi_phone`, `laoshi_id_number`, `laoshi_photo`, `sex_types`, `laoshi_email`, `banji_types`, `create_time`) VALUES
	(1, '老师1', '123456', '老师姓名1', '17703786901', '410224199610232001', 'http://localhost:8080/zonghesuzhipingjiaxitong/upload/laoshi1.jpg', 2, '1@qq.com', 2, '2022-04-27 07:12:01'),
	(2, '老师2', '123456', '老师姓名2', '17703786902', '410224199610232002', 'http://localhost:8080/zonghesuzhipingjiaxitong/upload/laoshi2.jpg', 2, '2@qq.com', 1, '2022-04-27 07:12:01'),
	(3, '老师3', '123456', '老师姓名3', '17703786903', '410224199610232003', 'http://localhost:8080/zonghesuzhipingjiaxitong/upload/laoshi3.jpg', 1, '3@qq.com', 3, '2022-04-27 07:12:01');

DROP TABLE IF EXISTS `liuyan`;
CREATE TABLE IF NOT EXISTS `liuyan` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `xuesheng_id` int DEFAULT NULL COMMENT '学生',
  `liuyan_name` varchar(200) DEFAULT NULL COMMENT '留言名称 Search111  ',
  `liuyan_types` int NOT NULL COMMENT '留言类型 Search111 ',
  `liuyan_file` varchar(200) DEFAULT NULL COMMENT '留言附件',
  `liuyan_content` text COMMENT '留言内容 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '留言时间 ',
  `huifu_content` text COMMENT '回复内容 ',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3 COMMENT='留言';

DELETE FROM `liuyan`;
INSERT INTO `liuyan` (`id`, `xuesheng_id`, `liuyan_name`, `liuyan_types`, `liuyan_file`, `liuyan_content`, `insert_time`, `huifu_content`, `update_time`, `create_time`) VALUES
	(1, 3, '留言名称1', 1, 'http://localhost:8080/zonghesuzhipingjiaxitong/upload/file.rar', '留言内容1', '2022-04-27 07:12:01', '回复内容1', '2022-04-27 07:12:01', '2022-04-27 07:12:01'),
	(2, 2, '留言名称2', 2, 'http://localhost:8080/zonghesuzhipingjiaxitong/upload/file.rar', '留言内容2', '2022-04-27 07:12:01', '回复内容2', '2022-04-27 07:12:01', '2022-04-27 07:12:01'),
	(3, 2, '留言名称3', 1, 'http://localhost:8080/zonghesuzhipingjiaxitong/upload/file.rar', '留言内容3', '2022-04-27 07:12:01', '回复内容3', '2022-04-27 07:12:01', '2022-04-27 07:12:01'),
	(4, 1, '留言名称4', 2, 'http://localhost:8080/zonghesuzhipingjiaxitong/upload/file.rar', '留言内容4', '2022-04-27 07:12:01', '回复内容4', '2022-04-27 07:12:01', '2022-04-27 07:12:01'),
	(5, 3, '留言名称5', 2, 'http://localhost:8080/zonghesuzhipingjiaxitong/upload/file.rar', '留言内容5', '2022-04-27 07:12:01', '回复内容5', '2022-04-27 07:12:01', '2022-04-27 07:12:01'),
	(6, 1, '标日111', 2, 'http://localhost:8080/zonghesuzhipingjiaxitong/upload/1651044236275.rar', '<p>沙发电费似懂非懂给付对价</p>', '2022-04-27 07:23:59', '<p>dsshsdf</p>', '2022-04-27 07:39:34', '2022-04-27 07:23:59'),
	(7, 1, '留言1111', 2, 'http://localhost:8080/zonghesuzhipingjiaxitong/upload/1651045215905.rar', '<p>大杀四方单号是房间号</p>', '2022-04-27 07:40:18', '', NULL, '2022-04-27 07:40:18');

DROP TABLE IF EXISTS `token`;
CREATE TABLE IF NOT EXISTS `token` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='token表';

DELETE FROM `token`;
INSERT INTO `token` (`id`, `userid`, `username`, `tablename`, `role`, `token`, `addtime`, `expiratedtime`) VALUES
	(1, 6, 'admin', 'users', '管理员', 'vp9phgq858hum7tnr82mqcpxdaq1pctm', '2022-04-27 07:02:44', '2024-08-04 02:32:50'),
	(2, 1, 'a1', 'xuesheng', '学生', 'kard8arxbx02h6zbinu0h6q24lj2x3t4', '2022-04-27 07:18:59', '2024-08-04 02:34:02'),
	(3, 1, 'a1', 'fudaoyuan', '辅导员', '7vy5dln6p8vvk9a4x0o2167g6l5d4nuo', '2022-04-27 07:24:06', '2024-08-04 02:33:49'),
	(4, 1, 'a1', 'laoshi', '老师', 'jcgahrovgin85t1qoy2plclw8nzouoa7', '2022-04-27 07:37:33', '2024-08-04 02:33:37');

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='管理员';

DELETE FROM `users`;
INSERT INTO `users` (`id`, `username`, `password`, `role`, `addtime`) VALUES
	(6, 'admin', '123456', '管理员', '2022-05-02 06:51:13');

DROP TABLE IF EXISTS `xuesheng`;
CREATE TABLE IF NOT EXISTS `xuesheng` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `xuesheng_name` varchar(200) DEFAULT NULL COMMENT '学生姓名 Search111 ',
  `xuesheng_phone` varchar(200) DEFAULT NULL COMMENT '学生手机号',
  `xuesheng_id_number` varchar(200) DEFAULT NULL COMMENT '学生身份证号',
  `xuesheng_photo` varchar(200) DEFAULT NULL COMMENT '学生头像',
  `sex_types` int DEFAULT NULL COMMENT '性别',
  `xuesheng_email` varchar(200) DEFAULT NULL COMMENT '电子邮箱',
  `zhuanye_types` int DEFAULT NULL COMMENT '专业 Search111 ',
  `banji_types` int DEFAULT NULL COMMENT '班级 Search111 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='学生';

DELETE FROM `xuesheng`;
INSERT INTO `xuesheng` (`id`, `username`, `password`, `xuesheng_name`, `xuesheng_phone`, `xuesheng_id_number`, `xuesheng_photo`, `sex_types`, `xuesheng_email`, `zhuanye_types`, `banji_types`, `create_time`) VALUES
	(1, '学生1', '123456', '学生姓名1', '17703786901', '410224199610232001', 'http://localhost:8080/zonghesuzhipingjiaxitong/upload/xuesheng1.jpg', 2, '1@qq.com', 2, 1, '2022-04-27 07:12:01'),
	(2, '学生2', '123456', '学生姓名2', '17703786902', '410224199610232002', 'http://localhost:8080/zonghesuzhipingjiaxitong/upload/xuesheng2.jpg', 1, '2@qq.com', 1, 3, '2022-04-27 07:12:01'),
	(3, '学生3', '123456', '学生姓名3', '17703786903', '410224199610232003', 'http://localhost:8080/zonghesuzhipingjiaxitong/upload/xuesheng3.jpg', 1, '3@qq.com', 2, 2, '2022-04-27 07:12:01');

DROP TABLE IF EXISTS `zhuanyezonghesuzhi`;
CREATE TABLE IF NOT EXISTS `zhuanyezonghesuzhi` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `zhuanye_types` int DEFAULT NULL COMMENT '专业 Search111 ',
  `sixiangdaode_pingjun` decimal(10,2) DEFAULT NULL COMMENT '思想道德水平平均分',
  `xueye_pingjun` decimal(10,2) DEFAULT NULL COMMENT '学业综合宿舍平均分',
  `shenxinjiankang_pingjun` decimal(10,2) DEFAULT NULL COMMENT '身心健康平均分',
  `yishusuyang_pingjun` decimal(10,2) DEFAULT NULL COMMENT '艺术素养平均分',
  `shehuizongheshijian_pingjun` decimal(10,2) DEFAULT NULL COMMENT '社会综合实践平均分',
  `zhuanyezonghesuzhi_content` text COMMENT '备注 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='专业综合素质';

DELETE FROM `zhuanyezonghesuzhi`;
INSERT INTO `zhuanyezonghesuzhi` (`id`, `zhuanye_types`, `sixiangdaode_pingjun`, `xueye_pingjun`, `shenxinjiankang_pingjun`, `yishusuyang_pingjun`, `shehuizongheshijian_pingjun`, `zhuanyezonghesuzhi_content`, `insert_time`, `create_time`) VALUES
	(1, 1, 120.76, 988.38, 249.30, 918.42, 298.11, '备注1', '2022-04-27 07:12:01', '2022-04-27 07:12:01'),
	(2, 3, 343.82, 11.23, 57.10, 543.07, 153.69, '备注2', '2022-04-27 07:12:01', '2022-04-27 07:12:01'),
	(3, 2, 891.03, 799.79, 73.57, 129.03, 619.30, '备注3', '2022-04-27 07:12:01', '2022-04-27 07:12:01');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
