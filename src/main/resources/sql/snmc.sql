/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50624
Source Host           : localhost:3306
Source Database       : db_news

Target Server Type    : MYSQL
Target Server Version : 50624
File Encoding         : 65001

Date: 2019-07-10 15:48:55
*/
create database if not exists snmcsite;

use snmcsite;


SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `test`
-- ----------------------------
DROP TABLE IF EXISTS `test`;
CREATE TABLE `test` (
  `a` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of test
-- ----------------------------

-- ----------------------------
-- Table structure for `t_file`
-- ----------------------------
DROP TABLE IF EXISTS `t_file`;
CREATE TABLE `t_file` (
  `fileId` int(11) NOT NULL AUTO_INCREMENT,
  `title` text NOT NULL,
  `publishDate` date NOT NULL,
  `author` text NOT NULL,
  `typeOne` int(11) NOT NULL,
  `realName` text NOT NULL,
  `path` text NOT NULL,
  `count` int(11) NOT NULL,
  PRIMARY KEY (`fileId`)
) ENGINE=InnoDB AUTO_INCREMENT=124 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_file
-- ----------------------------
INSERT INTO `t_file` VALUES ('43', '1--有关入网事宜(必读）.doc', '2018-05-27', '许寅杰', '1', '7dd21f7a-92f6-4a30-91e9-4338f377b2a4_1--有关入网事宜(必读）.doc', 'http：//127.0.0.1:8080/SNMC/download/1/3', '0');
INSERT INTO `t_file` VALUES ('44', '2--需要填写-卫星通信地球站入网申请表（一式六份）.doc', '2018-05-27', '许寅杰', '1', '86248378-888b-481f-a642-ccb55f6a72f6_2--需要填写-卫星通信地球站入网申请表（一式六份）.doc', 'C:\\Workspaces\\MyEclipse 2017 CI\\.metadata\\.me_tcat85\\webapps\\SNMC\\WEB-INF\\download\\2\\1', '0');
INSERT INTO `t_file` VALUES ('45', '3--需要填写-附表1用户联系表.doc', '2018-05-27', '许寅杰', '1', 'deae63f1-0e7e-441a-9153-4f5b2203b22e_3--需要填写-附表1用户联系表.doc', 'C:\\Workspaces\\MyEclipse 2017 CI\\.metadata\\.me_tcat85\\webapps\\SNMC\\WEB-INF\\download\\0\\3', '0');
INSERT INTO `t_file` VALUES ('46', '4--需要填写-附表2人防卫星通信地球站系统信息统计表(建议由集成厂家填写）.doc', '2018-05-27', '许寅杰', '1', 'fc4772fd-14b4-4099-a2f5-24ef1f6ac687_4--需要填写-附表2人防卫星通信地球站系统信息统计表(建议由集成厂家填写）.doc', 'C:\\Workspaces\\MyEclipse 2017 CI\\.metadata\\.me_tcat85\\webapps\\SNMC\\WEB-INF\\download\\7\\1', '0');
INSERT INTO `t_file` VALUES ('47', '人民防空跨区域卫星通信申请表.doc', '2018-05-27', '许寅杰', '1', '5f65c630-042b-4980-9dc3-29c4b8531dcc_人民防空跨区域卫星通信申请表.doc', 'C:\\Workspaces\\MyEclipse 2017 CI\\.metadata\\.me_tcat85\\webapps\\SNMC\\WEB-INF\\download\\7\\13', '0');
INSERT INTO `t_file` VALUES ('48', '人民防空重大节日或纪念日卫星通信应用申请表.doc', '2018-05-27', '许寅杰', '1', '0b0f7a8a-8471-4f94-8765-607c6518c08d_人民防空重大节日或纪念日卫星通信应用申请表.doc', 'C:\\Workspaces\\MyEclipse 2017 CI\\.metadata\\.me_tcat85\\webapps\\SNMC\\WEB-INF\\download\\9\\3', '0');
INSERT INTO `t_file` VALUES ('49', '人民防空重大演习卫星通信应用申请表.doc', '2018-05-27', '许寅杰', '1', '3df165a3-ce6a-48de-aceb-7a1e7a68300f_人民防空重大演习卫星通信应用申请表.doc', 'C:\\Workspaces\\MyEclipse 2017 CI\\.metadata\\.me_tcat85\\webapps\\SNMC\\WEB-INF\\download\\14\\15', '0');
INSERT INTO `t_file` VALUES ('50', '卫星临时信道申请表.doc', '2018-05-27', '许寅杰', '1', 'e06b683a-e41d-4916-9f41-d7500d59b7ab_卫星临时信道申请表.doc', 'C:\\Workspaces\\MyEclipse 2017 CI\\.metadata\\.me_tcat85\\webapps\\SNMC\\WEB-INF\\download\\8\\14', '0');
INSERT INTO `t_file` VALUES ('52', '卫星临时信道申请表.doc', '2018-05-27', '许寅杰', '0', 'c0c26ac1-702c-4a80-8490-dc86b794de7a_卫星临时信道申请表.doc', 'C:\\Workspaces\\MyEclipse 2017 CI\\.metadata\\.me_tcat85\\webapps\\SNMC\\WEB-INF\\download\\12\\11', '0');
INSERT INTO `t_file` VALUES ('53', '人民防空重大演习卫星通信应用申请表.doc', '2018-05-27', '许寅杰', '0', 'e36a943a-355b-41a2-95a9-fe1ab10d87a0_人民防空重大演习卫星通信应用申请表.doc', 'C:\\Workspaces\\MyEclipse 2017 CI\\.metadata\\.me_tcat85\\webapps\\SNMC\\WEB-INF\\download\\8\\8', '0');
INSERT INTO `t_file` VALUES ('54', '卫星通信地球站入网申请表.doc', '2018-05-29', '许寅杰', '0', '7387fd56-9c34-4f07-a5a1-61c89cf64e81_卫星通信地球站入网申请表.doc', 'C:\\Workspaces\\MyEclipse 2017 CI\\.metadata\\.me_tcat85\\webapps\\SNMC\\WEB-INF\\download\\14\\13', '0');
INSERT INTO `t_file` VALUES ('118', 'FeiQ.rar', '2018-07-02', '许寅杰', '3', '86c6ce80-202f-441e-9baa-127bc8c525e5_FeiQ.rar', 'C:\\Workspaces\\MyEclipse 2017 CI\\.metadata\\.me_tcat85\\webapps\\SNMC\\WEB-INF\\download\\1\\5', '0');
INSERT INTO `t_file` VALUES ('120', 'chrome-win7-xp-32.rar', '2018-07-02', '许寅杰', '3', 'e22fe4d6-c9d1-47e4-b734-903d94def4b1_chrome-win7-xp-32.rar', 'C:\\Workspaces\\MyEclipse 2017 CI\\.metadata\\.me_tcat85\\webapps\\SNMC\\WEB-INF\\download\\7\\14', '0');
INSERT INTO `t_file` VALUES ('121', 'flash_player(ie播放视频插件).rar', '2018-07-02', '许寅杰', '3', '086c8db6-2a1e-4919-a33e-b2f1583851ff_flash_player(ie播放视频插件).rar', 'C:\\Workspaces\\MyEclipse 2017 CI\\.metadata\\.me_tcat85\\webapps\\SNMC\\WEB-INF\\download\\15\\10', '0');
INSERT INTO `t_file` VALUES ('122', '6.8-星-河北4M.doc', '2018-07-03', '许寅杰', '2', '31c52c3e-e9e8-4e70-9e4f-90607c80ac4c_6.8-星-河北4M.doc', 'C:\\Workspaces\\MyEclipse 2017 CI\\.metadata\\.me_tcat85\\webapps\\SNMC\\WEB-INF\\download\\3\\2', '0');
INSERT INTO `t_file` VALUES ('123', '人民防空跨区域卫星通信申请表.doc', '2018-07-03', '许寅杰', '2', '8a20b63b-82df-4924-aa1a-7f5c080adc67_人民防空跨区域卫星通信申请表.doc', 'C:\\Workspaces\\MyEclipse 2017 CI\\.metadata\\.me_tcat85\\webapps\\SNMC\\WEB-INF\\download\\9\\12', '0');

-- ----------------------------
-- Table structure for `t_flow`
-- ----------------------------
DROP TABLE IF EXISTS `t_flow`;
CREATE TABLE `t_flow` (
  `flowId` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(11) CHARACTER SET utf8 NOT NULL,
  `content` text CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`flowId`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of t_flow
-- ----------------------------
INSERT INTO `t_flow` VALUES ('1', '入网申报', '<div id=\"one\">&nbsp; &nbsp;<h3>入网相关须知</h3><p>（1）管理规定（试行）》的通知，对于人防卫星通信系统入网及日后使用有详细的规定和流程说明；<br/>\r\n			（2）省级人防主管部门组织辖区内各防办按每个地球站为单位填写提交《人民防空卫星通信地球站入网申请表一》，且该地球站系统应具备最终用户功能验收报告；<br/>\r\n			（3）集成及设计单位需提交相应资质证明：计算机信息系统集成企业资质副本、人防信息系统设计施工资质、人防装车单位资质、涉密计算机系统集成资质及资信等级证书；<br/>\r\n			（4）申请单位填写详细设备配置（附件表格）及软件配置提交网管中心进行技术审核。根据《人民防空机动指挥通信系统装车规范》（修订版）的要求，IDU软件配置需要打开以下功能：<br/>\r\n			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1）IP Forwarding；<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2）RDR；<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3）OSPF；<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;4）TCP Accelerator；<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;5）QoS。<br/>\r\n			（5）根据管理规定要求，申请入网系统需要与网管中心联系进行入网测试。网管中心联系方式：<br/>\r\n		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;	电话：025-82285822/33（值班机房），025-82285805（办公室）<br/>\r\n		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;	传真： 025-82285806（办公室）&nbsp;&nbsp; &nbsp;</p></div><div id=\"two\"><h3>填报申请材料 <br/></h3><p>&nbsp;（1）人防主管部门应填写《人民防空卫星通信地球站入网申请表》（模板见：常用下载—入网材料），通过二级网管站或直接向网管中心站提出申请，且该地球站系统应具备最终用户功能验收报告。申请表：4页，一式六份，填写固定站及车载站内容，封面申请入网单位名称处盖章。<br/>\r\n			（2）填写《入网申请表：附表1——用户基本信息表》（模板见：常用下载—入网材料）<br/>\r\n			（3）填写《入网申请表：附表2——人防卫星通信地球站系统信息统计表》（模板见：常用下载—入网材料）<br/>\r\n			（4）集成及设计单位需提交相应资质证明：计算机信息系统集成企业资质副本、人防信息系统设计施工资质、人防装车单位资质、涉密计算机系统集成资质及资信等级证书；&nbsp;&nbsp; &nbsp;</p></div><div id=\"three\"><h3>入网验证</h3><p>&nbsp; &nbsp;		国家人防卫星通信系统网管中心对入网申请材料内容进行审核，对于二级网管站或区域业务中心在必要时将通过实地考察确认。<br/>\r\n			当申请单位满足如下条件：<br/>\r\n			1）设计及集成施工单位具备相应的保密资质；<br/>\r\n			2）已完成方案系统功能检测及交付工作；<br/>\r\n			3）已向国家人防卫星通信系统网管中心提交《人民防空卫星通信地球站入网申请表》。<br/>\r\n			申请单位可以向国家人防卫星通信系统网管中心提交进行远程或现场系统测试的申请，国家人防卫星通信系统网管中心通过技术测试判定给出回复：是否批准申请单位入网或者其他改进意见。<br/><br/>\r\n			入网测试主要包含如下内容：<br/>\r\n			1）验证拟入网卫星站点配置：包括其站址信息、卫星通信设备的软硬件配置以及业务终端的配置是否与上报材料一致；<br/>\r\n			2）验证拟入网卫星站点各项通信性能指标是否符合国家人防卫星通信系统的入网标准；<br/>\r\n			3）对拟入网卫星站点的业务组网工作情况进行测试。<br/><br/>\r\n			测试结果应满足如下要求：<br/>\r\n			1）硬件设备配置符合规范要求，与入网填报材料一致。<br/>\r\n			2）卫星调制解调器具备如下五种软件功能：<br/>\r\n			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;IP Forwarding(IP 转发)；<br/>\r\n			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;RDR（网状网功能）；<br/>\r\n			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;OSPF（动态路由）；<br/>\r\n			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;TCP Accelerator（TCP 加速）；<br/>\r\n			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;QoS（业务优先级保证）。\r\n &nbsp;\r\n &nbsp; &nbsp; &nbsp; <br/>3）业务传输正常，图像清晰流畅，画面内容清晰可辨，话音通信连贯清晰，无杂音。 <br/>4）工作参数应达到相应指标，详见下表。</p>&nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp;	\r\n &nbsp; &nbsp; &nbsp;	\r\n &nbsp; &nbsp; &nbsp;	\r\n &nbsp; &nbsp; &nbsp;	\r\n &nbsp; &nbsp; &nbsp;	\r\n &nbsp; &nbsp; &nbsp;	\r\n &nbsp; &nbsp; &nbsp;	\r\n &nbsp; &nbsp; &nbsp;	\r\n &nbsp; &nbsp; &nbsp;	\r\n &nbsp; &nbsp; &nbsp;	\r\n &nbsp; &nbsp; &nbsp;	\r\n &nbsp; &nbsp; &nbsp;	\r\n &nbsp; &nbsp; &nbsp;	\r\n &nbsp; &nbsp; &nbsp;	\r\n &nbsp; &nbsp; &nbsp;	\r\n &nbsp; &nbsp; &nbsp;	\r\n &nbsp; &nbsp; &nbsp;	\r\n &nbsp; &nbsp; &nbsp;	\r\n &nbsp; &nbsp; &nbsp;	\r\n &nbsp; &nbsp; &nbsp;	\r\n &nbsp; &nbsp; &nbsp;	\r\n &nbsp; &nbsp; &nbsp;	\r\n &nbsp; &nbsp; &nbsp;	\r\n &nbsp; &nbsp; &nbsp;	\r\n &nbsp; &nbsp; &nbsp;	\r\n &nbsp; &nbsp; &nbsp;	\r\n &nbsp; &nbsp; &nbsp;	\r\n &nbsp; &nbsp; &nbsp;	\r\n &nbsp; &nbsp; &nbsp;	\r\n &nbsp; &nbsp; &nbsp;	\r\n &nbsp; &nbsp; &nbsp;	\r\n &nbsp; &nbsp; &nbsp;	\r\n &nbsp; &nbsp; &nbsp;	\r\n &nbsp; &nbsp; &nbsp;	\r\n &nbsp; &nbsp; &nbsp;	\r\n &nbsp; &nbsp; &nbsp;&nbsp; &nbsp;	\r\n &nbsp; &nbsp; &nbsp;	\r\n &nbsp; &nbsp; &nbsp;	\r\n &nbsp; &nbsp; &nbsp;	\r\n &nbsp; &nbsp; &nbsp;	\r\n &nbsp; &nbsp; &nbsp;	\r\n &nbsp; &nbsp; &nbsp;	\r\n &nbsp; &nbsp; &nbsp;<table class=\"zebra\" id=\"step3\"><tbody><tr><th>工作参数</th><th>测试结果</th></tr><tr><td>帧同步状态/FrameSyncState</td><td class=\"center\">好/ok</td></tr><tr><td>丢包率/circularGrade</td><td class=\"center\">无</td></tr><tr><td>时隙同步状态/slotSyncState</td><td class=\"center\">好/ok</td></tr><tr><td>包头误码率/headCrcErrorsOne</td><td class=\"center\">无</td></tr><tr><td>发射电平/bbandEsToNoOwn</td><td class=\"center\">≥10dB</td></tr><tr><td>接收电平/esToNoRef</td><td class=\"center\">≥12dB</td></tr><tr><td>发射衰减/Tx atten</td><td class=\"center\">≥10dB</td></tr><tr><td>系统余量</td><td class=\"center\">≥3dB~6dB</td></tr></tbody></table></div><div id=\"four\">&nbsp;		\r\n &nbsp; &nbsp;<h3>合同签订&nbsp; &nbsp;</h3><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;通过入网验证的人防卫星通信地球站与国家人防卫星通信系统网管中心签订卫星信道使用协议。国家人防卫星通信系统网管中心将新站点纳入网管系统，进行统一的调配管理。&nbsp; &nbsp;	\r\n &nbsp; &nbsp;	\r\n &nbsp; &nbsp; &nbsp;	\r\n &nbsp; &nbsp; &nbsp;	\r\n &nbsp; &nbsp; &nbsp;	\r\n &nbsp; &nbsp; &nbsp;	\r\n &nbsp; &nbsp; &nbsp;	\r\n &nbsp; &nbsp; &nbsp;	\r\n &nbsp; &nbsp; &nbsp;	\r\n &nbsp; &nbsp; &nbsp;	\r\n &nbsp; &nbsp; &nbsp;	\r\n &nbsp; &nbsp; &nbsp;	\r\n &nbsp; &nbsp; &nbsp;	\r\n &nbsp; &nbsp; &nbsp;	\r\n &nbsp; &nbsp; &nbsp;	\r\n &nbsp; &nbsp; &nbsp;	\r\n &nbsp; &nbsp; &nbsp;	\r\n &nbsp; &nbsp; &nbsp;	\r\n &nbsp; &nbsp; &nbsp;	\r\n &nbsp; &nbsp; &nbsp;	\r\n &nbsp; &nbsp; &nbsp;	\r\n &nbsp; &nbsp; &nbsp;	\r\n &nbsp; &nbsp; &nbsp;	\r\n &nbsp; &nbsp; &nbsp;	\r\n &nbsp; &nbsp; &nbsp;	\r\n &nbsp; &nbsp; &nbsp;	\r\n &nbsp; &nbsp; &nbsp;	\r\n &nbsp; &nbsp; &nbsp;	\r\n &nbsp; &nbsp; &nbsp;	\r\n &nbsp; &nbsp; &nbsp;	\r\n &nbsp; &nbsp; &nbsp;</p><table class=\"zebra\"><tbody><tr><th>终端站点类型</th><th>价格</th><th>信道带宽和享用时间</th></tr><tr><td class=\"center\">省二级网管站</td><td class=\"center\">15万/站</td><td>全年2M共享、全年160小时10M专享</td></tr><tr><td class=\"center\">地市级固定站/车载战</td><td class=\"center\">3万/站</td><td>全年2M共享、全年44小时4M专享</td></tr><tr><td class=\"center\">便携站</td><td class=\"center\">1.5万/站</td><td>全年2M共享、全年24小时2M专享</td></tr><tr><td class=\"center\">动中通</td><td class=\"center\">4万/站</td><td>全年70小时2M带宽专享</td></tr></tbody></table><br/></div><h3>统一管理</h3><p>&nbsp; &nbsp;	\r\n &nbsp; &nbsp;	所有人防卫星站点在使用卫星时，必须遵守《人民防空卫星通信系统使用管理规定（试行）》的相关要求。<br/>\r\n		（1）首次用星的站点，在使用卫星信道前需按相关规定进行天线极化标定和载波功率标定。<br/>\r\n		（2）至少提前一天向网管中心提出卫星信道使用申请，并详细填写《人防卫星信道申请表》，签字盖章后传真到网管中心。<br/>\r\n		（3）严禁擅自在人防统一卫星信道上做收、发测试，以防对网内其他人防用户产生干扰。<br/>\r\n		（4）严禁私自复制网内卫星信道传输设备的配置文件。卫星信道传输设备的配置文件属涉密文件，请各集成单位自觉遵守保密规定。<br/>\r\n		（5）严禁将人防卫星通信网与其他信息网络（公众通信网、指挥信息网、政务网等）连接。<br/>\r\n		（6）维修卫星信道传输设备时，无论何种故障情况，均应第一时间发至网管中心，清除相应参数后再作后续处理。</p><p><br/></p>');
INSERT INTO `t_flow` VALUES ('2', '信道申请', '<div class=\"newsText\"><p>&nbsp; &nbsp; &nbsp; &nbsp;&nbsp; 根据国家人防办《关于全国人防系统统一采用卫星通信信道和传输设备有关问题的通知》（国人防〔2009〕285号）和《关于设立国家人防卫星通信系统网管中心和备用网管中心》（国人防〔2009〕445号文件）的有关要求，全国人防卫星通信网络信道资源由国家人防卫星通信系统网管中心统一负责租用、调度和管理，各级人防站点应在其监管下合理规范的使用。<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;根据各人防单位实际需求，网管中心提供多种信道申请方式<br/>\r\n &nbsp; <img src=\"http://192.168.16.4/SNMC/background/ueditor/jsp/upload/20180622/49341529633410830.png\" _src=\"http://192.168.16.4/SNMC/background/ueditor/jsp/upload/20180622/49341529633410830.png\"/></p><p>值班电话<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;7*24小时服务电话：025-82285822/33/44/55<br/>传 &nbsp;真<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;传真号码：025-8228580<br/>电子邮件<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;snmc_nj@126.com &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; <br/></p></div>');
INSERT INTO `t_flow` VALUES ('3', '设备送修', '<div class=\"newsText\"><p>&nbsp;\r\n ★	根据《人民防空卫星通信系统使用管理规定（试行）》的相关要求，障碍处理原则为故障及时上报，杜绝参数泄露</p>&nbsp; &nbsp;<h3>报修流程</h3>一、人防卫星通信设备出现故障时应当及时组织维修，维修时由系统集成单位或设备生产单位填写《人民防空卫星通信设备送修报告单》。<br/>二、人防卫星通信室内单元设备出现故障无法自行解决时，应向国家人民防空卫星通信系统网管中心通报。<br/>三、人防卫星通信系统室内单元设备送修前，必须将将所设置的参数进行清除后再送相关维修单位进行修理。无法自行清除参数的，应当送国家人民防空卫星通信系统网管中心进行处理后再送修理部门维修。<br/>四、其他设备维修可直接送交系统集成单位或设备生产单位，或由系统集成单位或设备生产单位上门维修。<br/></div><p><img src=\"http://172.16.6.67:8080/SNMC/background/ueditor/jsp/upload/20180622/16211529629404013.png\" _src=\"http://172.16.6.67:8080/SNMC/background/ueditor/jsp/upload/20180622/16211529629404013.png\"/>&nbsp;&nbsp;\r\n &nbsp; &nbsp; &nbsp; \r\n &nbsp; &nbsp; &nbsp; &nbsp; <br/></p><p><br/></p><p><br/></p><p>&nbsp;&nbsp; &nbsp; &nbsp; &nbsp;&nbsp; <br/></p>');
INSERT INTO `t_flow` VALUES ('4', '培训咨询', '哦哦');

-- ----------------------------
-- Table structure for `t_log`
-- ----------------------------
DROP TABLE IF EXISTS `t_log`;
CREATE TABLE `t_log` (
  `logId` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(10) CHARACTER SET utf8 NOT NULL,
  `author` varchar(10) CHARACTER SET utf8 NOT NULL,
  `time` datetime NOT NULL,
  `action` varchar(10) CHARACTER SET utf8 NOT NULL,
  `content` text CHARACTER SET utf8 NOT NULL,
  `obj` text CHARACTER SET utf8 NOT NULL,
  `result` int(11) NOT NULL,
  PRIMARY KEY (`logId`)
) ENGINE=InnoDB AUTO_INCREMENT=466 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of t_log
-- ----------------------------
INSERT INTO `t_log` VALUES ('1', 'admin', '', '2018-06-20 00:00:00', '编辑', '', '滚动新闻', '0');
INSERT INTO `t_log` VALUES ('2', 'admin', '', '2018-06-20 09:07:05', '编辑', '', '新闻动态', '0');
INSERT INTO `t_log` VALUES ('3', 'admin', '', '2018-06-20 09:32:49', '编辑', '', '滚动新闻', '0');
INSERT INTO `t_log` VALUES ('4', 'admin', '', '2018-06-20 09:33:35', '新增', '', '滚动新闻', '0');
INSERT INTO `t_log` VALUES ('5', 'admin', '', '2018-06-20 09:34:00', '删除', '', '滚动新闻', '0');
INSERT INTO `t_log` VALUES ('6', 'admin', '', '2018-06-20 09:37:47', '删除', '', '其他软件', '0');
INSERT INTO `t_log` VALUES ('7', 'admin', '', '2018-06-20 10:15:58', '编辑', '', '滚动新闻', '0');
INSERT INTO `t_log` VALUES ('8', 'admin', '', '2018-06-20 10:23:20', '上传', '', '其他软件', '0');
INSERT INTO `t_log` VALUES ('9', 'admin', '', '2018-06-20 10:33:05', '删除', '', '其他软件', '0');
INSERT INTO `t_log` VALUES ('10', 'user', '', '2018-06-20 16:19:02', '新增', '', '滚动新闻', '0');
INSERT INTO `t_log` VALUES ('11', 'admin', '', '2018-06-20 16:30:49', '编辑', '', '滚动新闻', '0');
INSERT INTO `t_log` VALUES ('12', 'user', '', '2018-06-20 16:32:52', '新增', '', '滚动新闻', '0');
INSERT INTO `t_log` VALUES ('13', 'admin', '', '2018-06-20 16:35:52', '编辑', '', '滚动新闻', '0');
INSERT INTO `t_log` VALUES ('14', 'admin', '', '2018-06-20 16:41:00', '删除', '', '滚动新闻', '0');
INSERT INTO `t_log` VALUES ('15', 'admin', '', '2018-06-20 16:41:22', '新增', '', '滚动新闻', '0');
INSERT INTO `t_log` VALUES ('16', 'admin', '', '2018-06-20 17:28:39', '新增', '', '常用下载', '0');
INSERT INTO `t_log` VALUES ('17', 'admin', '', '2018-06-20 17:28:59', '新增', '', '常用下载', '0');
INSERT INTO `t_log` VALUES ('18', 'admin', '', '2018-06-20 18:14:48', '编辑', '', '新闻动态', '0');
INSERT INTO `t_log` VALUES ('19', 'admin', '', '2018-06-20 18:36:17', '编辑', '', '滚动新闻', '0');
INSERT INTO `t_log` VALUES ('20', 'admin', '', '2018-06-20 18:36:45', '编辑', '', '滚动新闻', '0');
INSERT INTO `t_log` VALUES ('21', 'admin', '', '2018-06-20 18:36:59', '编辑', '', '滚动新闻', '0');
INSERT INTO `t_log` VALUES ('22', 'admin', '', '2018-06-20 18:37:22', '编辑', '', '滚动新闻', '0');
INSERT INTO `t_log` VALUES ('23', 'admin', '', '2018-06-20 18:38:39', '删除', '', '新闻动态', '0');
INSERT INTO `t_log` VALUES ('24', 'admin', '', '2018-06-20 18:38:42', '删除', '', '新闻动态', '0');
INSERT INTO `t_log` VALUES ('25', 'admin', '', '2018-06-20 18:38:43', '删除', '', '新闻动态', '0');
INSERT INTO `t_log` VALUES ('26', 'admin', '', '2018-06-20 18:42:35', '删除', '', '新闻动态', '0');
INSERT INTO `t_log` VALUES ('27', 'admin', '', '2018-06-20 18:53:53', '编辑', '', '滚动新闻', '0');
INSERT INTO `t_log` VALUES ('28', 'admin', '', '2018-06-20 18:54:08', '编辑', '', '滚动新闻', '0');
INSERT INTO `t_log` VALUES ('29', 'admin', '', '2018-06-20 18:54:25', '编辑', '', '滚动新闻', '0');
INSERT INTO `t_log` VALUES ('30', 'admin', '', '2018-06-20 18:56:07', '编辑', '', '滚动新闻', '0');
INSERT INTO `t_log` VALUES ('31', 'admin', '', '2018-06-20 18:56:23', '编辑', '', '滚动新闻', '0');
INSERT INTO `t_log` VALUES ('32', 'admin', '', '2018-06-20 18:56:37', '编辑', '', '滚动新闻', '0');
INSERT INTO `t_log` VALUES ('33', 'admin', '', '2018-06-20 18:56:50', '编辑', '', '滚动新闻', '0');
INSERT INTO `t_log` VALUES ('34', 'admin', '', '2018-06-21 11:40:17', '上传', '', '常用下载', '0');
INSERT INTO `t_log` VALUES ('35', 'admin', '', '2018-06-21 16:11:27', '编辑', '', '新闻动态', '0');
INSERT INTO `t_log` VALUES ('36', 'admin', '', '2018-06-22 14:07:14', '登录', '', '后台系统', '0');
INSERT INTO `t_log` VALUES ('37', 'admin', '', '2018-06-22 14:17:36', '登录', '', '后台系统', '0');
INSERT INTO `t_log` VALUES ('38', 'admin', '', '2018-06-22 14:19:22', '登录', '', '后台系统', '0');
INSERT INTO `t_log` VALUES ('39', 'admin', '', '2018-06-22 14:19:32', '登录', '', '后台系统', '0');
INSERT INTO `t_log` VALUES ('40', 'admin', '', '2018-06-22 14:22:26', '登录', '', '后台系统', '0');
INSERT INTO `t_log` VALUES ('41', 'admin', '', '2018-06-22 14:24:28', '登录', '', '后台系统', '0');
INSERT INTO `t_log` VALUES ('42', 'admin', '', '2018-06-22 14:24:33', '注销', '', '后台系统', '0');
INSERT INTO `t_log` VALUES ('43', 'admin', '', '2018-06-22 14:24:36', '登录', '', '后台系统', '0');
INSERT INTO `t_log` VALUES ('44', 'admin', '', '2018-06-22 14:24:48', '注销', '', '后台系统', '0');
INSERT INTO `t_log` VALUES ('45', 'user', '', '2018-06-22 14:24:50', '登录', '', '后台系统', '0');
INSERT INTO `t_log` VALUES ('46', 'user', '', '2018-06-22 14:24:54', '注销', '', '后台系统', '0');
INSERT INTO `t_log` VALUES ('47', 'admin', '', '2018-06-22 14:24:57', '登录', '', '后台系统', '0');
INSERT INTO `t_log` VALUES ('48', 'admin', '', '2018-06-22 14:25:11', '注销', '', '后台系统', '0');
INSERT INTO `t_log` VALUES ('49', 'admin', '', '2018-06-22 14:25:37', '登录', '', '后台系统', '0');
INSERT INTO `t_log` VALUES ('50', 'admin', '', '2018-06-22 15:02:27', '登录', '', '后台系统', '0');
INSERT INTO `t_log` VALUES ('51', 'admin', '', '2018-06-25 08:44:59', '登录', '', '后台系统', '0');
INSERT INTO `t_log` VALUES ('52', 'admin', '', '2018-06-25 15:13:45', '登录', '', '后台系统', '0');
INSERT INTO `t_log` VALUES ('53', 'admin', '', '2018-06-25 20:40:56', '登录', '', '后台系统', '0');
INSERT INTO `t_log` VALUES ('54', 'admin', '', '2018-06-26 08:48:48', '登录', '', '后台系统', '0');
INSERT INTO `t_log` VALUES ('55', 'admin', '', '2018-06-26 15:37:38', '登录', '', '后台系统', '0');
INSERT INTO `t_log` VALUES ('56', 'admin', '', '2018-06-26 15:42:16', '删除', '', '滚动新闻', '0');
INSERT INTO `t_log` VALUES ('57', 'admin', '', '2018-06-26 15:47:46', '上传', '', '其他软件', '0');
INSERT INTO `t_log` VALUES ('58', 'admin', '', '2018-06-26 15:47:59', '上传', '', '其他软件', '0');
INSERT INTO `t_log` VALUES ('59', 'admin', '', '2018-06-26 15:48:15', '上传', '', '其他软件', '0');
INSERT INTO `t_log` VALUES ('60', 'admin', '', '2018-06-26 16:36:57', '登录', '', '后台系统', '0');
INSERT INTO `t_log` VALUES ('61', 'admin', '', '2018-06-26 18:12:47', '登录', '', '后台系统', '0');
INSERT INTO `t_log` VALUES ('62', 'admin', '', '2018-06-26 18:13:15', '上传', '', '工具软件', '0');
INSERT INTO `t_log` VALUES ('63', 'admin', '', '2018-06-26 18:14:26', '上传', '', '工具软件', '0');
INSERT INTO `t_log` VALUES ('64', 'admin', '', '2018-06-26 18:14:47', '上传', '', '工具软件', '0');
INSERT INTO `t_log` VALUES ('65', 'admin', '', '2018-06-26 18:14:48', '上传', '', '工具软件', '0');
INSERT INTO `t_log` VALUES ('66', 'admin', '', '2018-06-26 18:20:02', '登录', '', '后台系统', '0');
INSERT INTO `t_log` VALUES ('67', 'admin', '', '2018-06-26 18:20:37', '上传', '', '工具软件', '0');
INSERT INTO `t_log` VALUES ('68', 'admin', '', '2018-06-26 18:20:38', '上传', '', '工具软件', '0');
INSERT INTO `t_log` VALUES ('69', 'admin', '', '2018-06-26 18:21:33', '登录', '', '后台系统', '0');
INSERT INTO `t_log` VALUES ('70', 'admin', '', '2018-06-26 18:21:56', '上传', '', '工具软件', '0');
INSERT INTO `t_log` VALUES ('71', 'admin', '', '2018-06-26 18:22:27', '上传', '', '工具软件', '0');
INSERT INTO `t_log` VALUES ('72', 'admin', '', '2018-06-26 18:22:55', '上传', '', '工具软件', '0');
INSERT INTO `t_log` VALUES ('73', 'admin', '', '2018-06-26 19:03:40', '上传', '', '工具软件', '0');
INSERT INTO `t_log` VALUES ('74', 'admin', '', '2018-06-26 19:04:22', '上传', '', '工具软件', '0');
INSERT INTO `t_log` VALUES ('75', 'admin', '', '2018-06-26 19:04:48', '上传', '', '工具软件', '0');
INSERT INTO `t_log` VALUES ('76', 'admin', '', '2018-06-26 19:05:10', '上传', '', '工具软件', '0');
INSERT INTO `t_log` VALUES ('77', 'admin', '', '2018-06-26 19:05:19', '删除', '', '工具软件', '0');
INSERT INTO `t_log` VALUES ('78', 'admin', '', '2018-06-26 19:05:22', '删除', '', '工具软件', '0');
INSERT INTO `t_log` VALUES ('79', 'admin', '', '2018-06-26 19:05:24', '删除', '', '工具软件', '0');
INSERT INTO `t_log` VALUES ('80', 'admin', '', '2018-06-26 19:05:26', '删除', '', '工具软件', '0');
INSERT INTO `t_log` VALUES ('81', 'admin', '', '2018-06-26 19:05:28', '删除', '', '工具软件', '0');
INSERT INTO `t_log` VALUES ('82', 'admin', '', '2018-06-26 19:05:53', '上传', '', '工具软件', '0');
INSERT INTO `t_log` VALUES ('83', 'admin', '', '2018-06-26 19:07:11', '上传', '', '工具软件', '0');
INSERT INTO `t_log` VALUES ('84', 'admin', '', '2018-06-26 19:08:10', '上传', '', '工具软件', '0');
INSERT INTO `t_log` VALUES ('85', 'admin', '', '2018-06-26 19:08:35', '上传', '', '入网材料', '0');
INSERT INTO `t_log` VALUES ('86', 'admin', '', '2018-06-26 19:08:57', '上传', '', '入网材料', '0');
INSERT INTO `t_log` VALUES ('87', 'admin', '', '2018-06-26 19:12:44', '登录', '', '后台系统', '0');
INSERT INTO `t_log` VALUES ('88', 'admin', '', '2018-06-26 19:14:27', '上传', '', '工具软件', '0');
INSERT INTO `t_log` VALUES ('89', 'admin', '', '2018-06-26 19:15:37', '上传', '', '工具软件', '0');
INSERT INTO `t_log` VALUES ('90', 'admin', '', '2018-06-26 19:17:03', '上传', '', '工具软件', '0');
INSERT INTO `t_log` VALUES ('91', 'admin', '', '2018-06-26 19:17:44', '上传', '', '工具软件', '0');
INSERT INTO `t_log` VALUES ('92', 'admin', '', '2018-06-26 19:22:18', '上传', '', '工具软件', '0');
INSERT INTO `t_log` VALUES ('93', 'admin', '', '2018-06-26 19:46:53', '上传', '', '工具软件', '0');
INSERT INTO `t_log` VALUES ('94', 'admin', '', '2018-06-26 20:27:17', '上传', '', '入网材料', '0');
INSERT INTO `t_log` VALUES ('95', 'admin', '', '2018-06-26 20:27:56', '上传', '', '入网材料', '0');
INSERT INTO `t_log` VALUES ('96', 'admin', '', '2018-06-26 20:50:22', '上传', '', '入网材料', '0');
INSERT INTO `t_log` VALUES ('97', 'admin', '', '2018-06-26 20:58:36', '上传', '', '入网材料', '0');
INSERT INTO `t_log` VALUES ('98', 'admin', '', '2018-06-26 20:59:36', '上传', '', '入网材料', '0');
INSERT INTO `t_log` VALUES ('99', 'admin', '', '2018-06-26 21:00:36', '登录', '', '后台系统', '0');
INSERT INTO `t_log` VALUES ('100', 'admin', '', '2018-06-26 21:10:19', '上传', '', '入网材料', '0');
INSERT INTO `t_log` VALUES ('101', 'admin', '', '2018-06-27 09:17:13', '登录', '', '后台系统', '0');
INSERT INTO `t_log` VALUES ('102', 'admin', '', '2018-06-27 09:33:28', '注销', '', '后台系统', '0');
INSERT INTO `t_log` VALUES ('103', 'admin', '', '2018-06-27 09:33:31', '登录', '', '后台系统', '0');
INSERT INTO `t_log` VALUES ('104', 'admin', '', '2018-06-27 09:33:41', '注销', '', '后台系统', '0');
INSERT INTO `t_log` VALUES ('105', 'admin', '', '2018-06-27 09:33:58', '登录', '', '后台系统', '0');
INSERT INTO `t_log` VALUES ('106', 'admin', '', '2018-06-27 09:34:06', '注销', '', '后台系统', '0');
INSERT INTO `t_log` VALUES ('107', 'admin', '', '2018-06-27 09:34:10', '登录', '', '后台系统', '0');
INSERT INTO `t_log` VALUES ('108', 'admin', '', '2018-06-27 11:56:41', '登录', '', '后台系统', '0');
INSERT INTO `t_log` VALUES ('109', 'admin', '', '2018-06-27 11:57:20', '上传', '', '工具软件', '0');
INSERT INTO `t_log` VALUES ('110', 'admin', '', '2018-06-27 11:57:31', '删除', '', '工具软件', '0');
INSERT INTO `t_log` VALUES ('111', 'admin', '', '2018-06-27 14:53:15', '登录', '', '后台系统', '0');
INSERT INTO `t_log` VALUES ('112', 'admin', '', '2018-06-27 16:20:47', '登录', '', '后台系统', '0');
INSERT INTO `t_log` VALUES ('113', 'admin', '', '2018-06-27 16:37:27', '上传', 'SPlugin.dll', '入网材料', '0');
INSERT INTO `t_log` VALUES ('114', 'admin', '', '2018-06-27 16:57:41', '上传', 'MPlugin.dll', '入网材料', '0');
INSERT INTO `t_log` VALUES ('115', 'admin', '', '2018-06-27 16:59:18', '上传', 'SPlugin.dll', '入网材料', '0');
INSERT INTO `t_log` VALUES ('116', 'admin', '', '2018-06-27 17:03:27', '上传', 'SPlugin.dll', '入网材料', '0');
INSERT INTO `t_log` VALUES ('117', 'admin', 'tex', '2018-06-27 17:06:30', '上传', 'MPlugin.dll', '入网材料', '0');
INSERT INTO `t_log` VALUES ('118', 'admin', '许寅杰', '2018-06-27 17:13:53', '上传', 'SPlugin.dll', '入网材料', '0');
INSERT INTO `t_log` VALUES ('119', 'admin', '许寅杰', '2018-06-27 17:15:36', '上传', 'SPlugin.dll', '入网材料', '0');
INSERT INTO `t_log` VALUES ('120', 'admin', 'tex', '2018-06-27 17:23:12', '上传', 'SPlugin.dll', '入网材料', '0');
INSERT INTO `t_log` VALUES ('121', 'admin', 'admin', '2018-06-28 10:00:41', '登录', '无', '后台系统', '0');
INSERT INTO `t_log` VALUES ('122', 'user', 'user', '2018-06-29 09:15:34', '登录', '无', '后台系统', '0');
INSERT INTO `t_log` VALUES ('123', 'user', 'user', '2018-06-29 09:15:45', '注销', '无', '后台系统', '0');
INSERT INTO `t_log` VALUES ('124', 'admin', 'admin', '2018-06-29 09:15:47', '登录', '无', '后台系统', '0');
INSERT INTO `t_log` VALUES ('125', 'admin', 'admin', '2018-06-29 10:17:24', '登录', '无', '后台系统', '0');
INSERT INTO `t_log` VALUES ('126', 'admin', 'admin', '2018-06-30 09:54:03', '登录', '无', '后台系统', '0');
INSERT INTO `t_log` VALUES ('127', 'admin', 'admin', '2018-06-30 11:08:50', '登录', '无', '后台系统', '0');
INSERT INTO `t_log` VALUES ('128', 'admin', 'admin', '2018-06-30 11:18:07', '登录', '无', '后台系统', '0');
INSERT INTO `t_log` VALUES ('129', 'admin', 'admin', '2018-06-30 12:06:13', '注销', '无', '后台系统', '0');
INSERT INTO `t_log` VALUES ('130', 'admin', 'admin', '2018-06-30 12:06:15', '登录', '无', '后台系统', '0');
INSERT INTO `t_log` VALUES ('131', 'admin', 'admin', '2018-06-30 12:06:44', '登录', '无', '后台系统', '0');
INSERT INTO `t_log` VALUES ('132', 'admin', 'admin', '2018-06-30 12:07:27', '注销', '无', '后台系统', '0');
INSERT INTO `t_log` VALUES ('133', 'admin', 'admin', '2018-06-30 12:07:29', '登录', '无', '后台系统', '0');
INSERT INTO `t_log` VALUES ('134', 'admin', 'admin', '2018-06-30 12:49:36', '登录', '无', '后台系统', '0');
INSERT INTO `t_log` VALUES ('135', 'admin', 'admin', '2018-06-30 13:03:26', '注销', '无', '后台系统', '0');
INSERT INTO `t_log` VALUES ('136', 'admin', 'admin', '2018-06-30 13:03:30', '登录', '无', '后台系统', '0');
INSERT INTO `t_log` VALUES ('137', 'admin', 'admin', '2018-06-30 13:05:33', '注销', '无', '后台系统', '0');
INSERT INTO `t_log` VALUES ('138', 'admin', 'admin', '2018-06-30 13:05:35', '登录', '无', '后台系统', '0');
INSERT INTO `t_log` VALUES ('139', 'admin', 'admin', '2018-06-30 13:15:42', '登录', '无', '后台系统', '0');
INSERT INTO `t_log` VALUES ('140', 'admin', 'admin', '2018-06-30 13:17:49', '登录', '无', '后台系统', '0');
INSERT INTO `t_log` VALUES ('141', 'admin', 'admin', '2018-06-30 13:18:07', '注销', '无', '后台系统', '0');
INSERT INTO `t_log` VALUES ('142', 'user', 'user', '2018-06-30 13:18:13', '登录', '无', '后台系统', '0');
INSERT INTO `t_log` VALUES ('143', 'user', 'user', '2018-06-30 13:18:44', '注销', '无', '后台系统', '0');
INSERT INTO `t_log` VALUES ('144', 'admin', 'admin', '2018-06-30 13:19:18', '登录', '无', '后台系统', '0');
INSERT INTO `t_log` VALUES ('145', 'admin', 'admin', '2018-06-30 13:35:14', '登录', '无', '后台系统', '0');
INSERT INTO `t_log` VALUES ('146', 'admin', 'admin', '2018-06-30 13:41:26', '登录', '无', '后台系统', '0');
INSERT INTO `t_log` VALUES ('147', 'admin', 'admin', '2018-06-30 13:41:31', '登录', '无', '后台系统', '0');
INSERT INTO `t_log` VALUES ('148', 'admin', 'admin', '2018-06-30 13:41:44', '登录', '无', '后台系统', '0');
INSERT INTO `t_log` VALUES ('149', 'admin', 'admin', '2018-06-30 13:41:51', '登录', '无', '后台系统', '0');
INSERT INTO `t_log` VALUES ('150', 'admin', 'admin', '2018-06-30 13:43:01', '登录', '无', '后台系统', '0');
INSERT INTO `t_log` VALUES ('151', 'admin', 'admin', '2018-06-30 13:46:24', '登录', '无', '后台系统', '0');
INSERT INTO `t_log` VALUES ('152', 'admin', 'admin', '2018-06-30 13:51:56', '登录', '无', '后台系统', '0');
INSERT INTO `t_log` VALUES ('153', 'admin', 'admin', '2018-06-30 13:53:54', '注销', '无', '后台系统', '0');
INSERT INTO `t_log` VALUES ('154', 'admin', 'admin', '2018-06-30 13:55:12', '登录', '无', '后台系统', '0');
INSERT INTO `t_log` VALUES ('155', 'admin', '许寅杰', '2018-06-30 13:55:55', '新增', '测试', '新闻动态', '0');
INSERT INTO `t_log` VALUES ('156', 'admin', 'admin', '2018-06-30 14:11:28', '注销', '无', '后台系统', '0');
INSERT INTO `t_log` VALUES ('157', 'admin', 'admin', '2018-06-30 14:11:31', '登录', '无', '后台系统', '0');
INSERT INTO `t_log` VALUES ('158', 'admin', 'admin', '2018-06-30 14:13:17', '编辑', '入网申报', '入网申报', '0');
INSERT INTO `t_log` VALUES ('159', 'admin', 'admin', '2018-06-30 14:16:40', '登录', '无', '后台系统', '0');
INSERT INTO `t_log` VALUES ('160', 'admin', 'admin', '2018-06-30 14:30:51', '注销', '无', '后台系统', '0');
INSERT INTO `t_log` VALUES ('161', 'admin', 'admin', '2018-06-30 14:31:11', '登录', '无', '后台系统', '0');
INSERT INTO `t_log` VALUES ('162', 'admin', 'admin', '2018-06-30 14:37:55', '注销', '无', '后台系统', '0');
INSERT INTO `t_log` VALUES ('163', 'admin', 'admin', '2018-06-30 14:37:56', '登录', '无', '后台系统', '0');
INSERT INTO `t_log` VALUES ('164', 'admin', 'admin', '2018-06-30 14:38:47', '注销', '无', '后台系统', '0');
INSERT INTO `t_log` VALUES ('165', 'admin', 'admin', '2018-06-30 14:38:49', '登录', '无', '后台系统', '0');
INSERT INTO `t_log` VALUES ('166', 'admin', 'admin', '2018-06-30 14:39:41', '注销', '无', '后台系统', '0');
INSERT INTO `t_log` VALUES ('167', 'admin', 'admin', '2018-06-30 14:39:44', '登录', '无', '后台系统', '0');
INSERT INTO `t_log` VALUES ('168', 'admin', 'admin', '2018-06-30 14:40:04', '注销', '无', '后台系统', '0');
INSERT INTO `t_log` VALUES ('169', 'admin', 'admin', '2018-06-30 14:40:19', '登录', '无', '后台系统', '0');
INSERT INTO `t_log` VALUES ('170', 'admin', 'admin', '2018-06-30 14:50:28', '注销', '无', '后台系统', '0');
INSERT INTO `t_log` VALUES ('171', 'admin', 'admin', '2018-07-02 08:52:07', '登录', '无', '后台系统', '0');
INSERT INTO `t_log` VALUES ('172', 'admin', 'admin', '2018-07-02 08:58:56', '登录', '无', '后台系统', '0');
INSERT INTO `t_log` VALUES ('173', 'admin', 'admin', '2018-07-02 09:10:16', '注销', '无', '后台系统', '0');
INSERT INTO `t_log` VALUES ('174', 'admin', 'admin', '2018-07-02 09:28:47', '登录', '无', '后台系统', '0');
INSERT INTO `t_log` VALUES ('175', 'admin', 'admin', '2018-07-02 09:39:14', '注销', '无', '后台系统', '0');
INSERT INTO `t_log` VALUES ('176', 'user', 'user', '2018-07-02 18:46:15', '登录', '无', '后台系统', '0');
INSERT INTO `t_log` VALUES ('177', 'user', 'user', '2018-07-02 18:46:18', '注销', '无', '后台系统', '0');
INSERT INTO `t_log` VALUES ('178', 'admin', 'admin', '2018-07-02 18:46:20', '登录', '无', '后台系统', '0');
INSERT INTO `t_log` VALUES ('179', 'admin', 'admin', '2018-07-02 18:46:56', '编辑', '信道申请', '信道申请', '0');
INSERT INTO `t_log` VALUES ('180', 'admin', '许寅杰', '2018-07-02 19:06:46', '上传', '1 (1).txt', '设备送修', '0');
INSERT INTO `t_log` VALUES ('181', 'admin', '许寅杰', '2018-07-02 19:06:46', '上传', '1 (2).txt', '设备送修', '0');
INSERT INTO `t_log` VALUES ('182', 'admin', '许寅杰', '2018-07-02 19:06:46', '上传', '1 (3).txt', '设备送修', '0');
INSERT INTO `t_log` VALUES ('183', 'admin', '许寅杰', '2018-07-02 19:08:00', '上传', '1.txt', '设备送修', '0');
INSERT INTO `t_log` VALUES ('184', 'admin', '许寅杰', '2018-07-02 19:08:00', '上传', '1 (1).txt', '设备送修', '0');
INSERT INTO `t_log` VALUES ('185', 'admin', '许寅杰', '2018-07-02 19:08:00', '上传', '1 (3).txt', '设备送修', '0');
INSERT INTO `t_log` VALUES ('186', 'admin', '许寅杰', '2018-07-02 19:09:05', '上传', '1 (1).txt', '设备送修', '0');
INSERT INTO `t_log` VALUES ('187', 'admin', '许寅杰', '2018-07-02 19:09:05', '上传', '1 (2).txt', '设备送修', '0');
INSERT INTO `t_log` VALUES ('188', 'admin', '许寅杰', '2018-07-02 19:09:05', '上传', '1 (3).txt', '设备送修', '0');
INSERT INTO `t_log` VALUES ('189', 'admin', '许寅杰', '2018-07-02 19:09:05', '上传', '1 (4).txt', '设备送修', '0');
INSERT INTO `t_log` VALUES ('190', 'admin', '许寅杰', '2018-07-02 19:09:05', '上传', '1 (5).txt', '设备送修', '0');
INSERT INTO `t_log` VALUES ('191', 'admin', '许寅杰', '2018-07-02 19:10:59', '上传', 'FeiQ.rar', '工具软件', '0');
INSERT INTO `t_log` VALUES ('192', 'admin', '许寅杰', '2018-07-02 19:18:33', '上传', 'chrome-win7-32.rar', '工具软件', '0');
INSERT INTO `t_log` VALUES ('193', 'admin', '许寅杰', '2018-07-02 19:21:22', '上传', 'chrome-win7-xp-32.rar', '工具软件', '0');
INSERT INTO `t_log` VALUES ('194', 'admin', '许寅杰', '2018-07-02 19:24:20', '上传', 'flash_player(ie播放视频插件).rar', '工具软件', '0');
INSERT INTO `t_log` VALUES ('195', 'admin', 'tex', '2018-07-02 19:29:29', '编辑', '想一想', '新闻动态', '0');
INSERT INTO `t_log` VALUES ('196', 'admin', '', '2018-07-02 20:11:46', '登录', '无', '后台系统', '1');
INSERT INTO `t_log` VALUES ('197', 'admin', '', '2018-07-02 20:21:11', '登录', '无', '后台系统', '1');
INSERT INTO `t_log` VALUES ('198', 'admin', '', '2018-07-02 20:22:46', '登录', '无', '后台系统', '1');
INSERT INTO `t_log` VALUES ('199', 'admin', '', '2018-07-02 20:24:07', '登录', '无', '后台系统', '1');
INSERT INTO `t_log` VALUES ('200', 'admin', '', '2018-07-02 20:25:13', '登录', '无', '后台系统', '1');
INSERT INTO `t_log` VALUES ('201', 'admin', '', '2018-07-02 20:25:19', '删除', '想一想', '新闻动态', '1');
INSERT INTO `t_log` VALUES ('202', 'admin', '', '2018-07-02 20:26:49', '上传', '6.8-星-河北4M.doc', '其他软件', '1');
INSERT INTO `t_log` VALUES ('203', 'admin', '', '2018-07-02 20:26:51', '删除', '59037b29-f3de-4bb0-8fac-80429af7dc4d_6.8-星-河北4M.doc', '其他软件', '1');
INSERT INTO `t_log` VALUES ('204', 'admin', '', '2018-07-02 20:34:19', '登录', '无', '后台系统', '1');
INSERT INTO `t_log` VALUES ('205', 'admin', '', '2018-07-02 20:35:06', '注销', '无', '后台系统', '1');
INSERT INTO `t_log` VALUES ('206', 'admin', '', '2018-07-02 20:35:08', '登录', '无', '后台系统', '1');
INSERT INTO `t_log` VALUES ('207', 'admin', '', '2018-07-02 20:35:48', '注销', '无', '后台系统', '1');
INSERT INTO `t_log` VALUES ('208', 'admin', '', '2018-07-02 20:35:50', '登录', '无', '后台系统', '1');
INSERT INTO `t_log` VALUES ('209', 'admin', '', '2018-07-02 20:36:19', '注销', '无', '后台系统', '1');
INSERT INTO `t_log` VALUES ('210', 'admin', '', '2018-07-02 20:36:20', '登录', '无', '后台系统', '1');
INSERT INTO `t_log` VALUES ('211', 'admin', '', '2018-07-03 10:28:53', '登录', '无', '后台系统', '1');
INSERT INTO `t_log` VALUES ('212', 'admin', '', '2018-07-03 10:29:50', '新增', 'e', '滚动新闻', '1');
INSERT INTO `t_log` VALUES ('213', 'admin', '', '2018-07-03 10:30:12', '删除', 'e', '滚动新闻', '1');
INSERT INTO `t_log` VALUES ('214', 'admin', '', '2018-07-03 10:50:30', '登录', '无', '后台系统', '1');
INSERT INTO `t_log` VALUES ('215', 'admin', '', '2018-07-03 10:51:52', '登录', '无', '后台系统', '1');
INSERT INTO `t_log` VALUES ('216', 'admin', '', '2018-07-03 10:55:41', '登录', '无', '后台系统', '1');
INSERT INTO `t_log` VALUES ('217', 'admin', '', '2018-07-03 10:57:15', '上传', '无', '设备送修', '0');
INSERT INTO `t_log` VALUES ('218', 'admin', '', '2018-07-03 10:57:16', '上传', '无', '设备送修', '0');
INSERT INTO `t_log` VALUES ('219', 'admin', '', '2018-07-03 10:57:17', '上传', '无', '设备送修', '0');
INSERT INTO `t_log` VALUES ('220', 'admin', '', '2018-07-03 10:57:18', '上传', '无', '设备送修', '0');
INSERT INTO `t_log` VALUES ('221', 'admin', '', '2018-07-03 10:57:19', '上传', '无', '设备送修', '0');
INSERT INTO `t_log` VALUES ('222', 'admin', '', '2018-07-03 10:57:20', '上传', '无', '设备送修', '0');
INSERT INTO `t_log` VALUES ('223', 'admin', '', '2018-07-03 10:57:21', '上传', '无', '设备送修', '0');
INSERT INTO `t_log` VALUES ('224', 'admin', '', '2018-07-03 10:59:53', '登录', '无', '后台系统', '1');
INSERT INTO `t_log` VALUES ('225', 'admin', '', '2018-07-03 11:00:05', '上传', '无', '设备送修', '0');
INSERT INTO `t_log` VALUES ('226', 'admin', '', '2018-07-03 11:00:06', '上传', '无', '设备送修', '0');
INSERT INTO `t_log` VALUES ('227', 'admin', '', '2018-07-03 11:00:34', '登录', '无', '后台系统', '1');
INSERT INTO `t_log` VALUES ('228', 'admin', '', '2018-07-03 11:16:23', '登录', '无', '后台系统', '1');
INSERT INTO `t_log` VALUES ('229', 'admin', '', '2018-07-03 11:26:54', '登录', '无', '后台系统', '1');
INSERT INTO `t_log` VALUES ('230', 'admin', '', '2018-07-03 11:28:33', '注销', '无', '后台系统', '1');
INSERT INTO `t_log` VALUES ('231', 'admin', '', '2018-07-03 11:40:27', '登录', '无', '后台系统', '1');
INSERT INTO `t_log` VALUES ('232', 'admin', '', '2018-07-03 11:52:10', '登录', '无', '后台系统', '1');
INSERT INTO `t_log` VALUES ('233', 'admin', '', '2018-07-03 11:54:07', '登录', '无', '后台系统', '1');
INSERT INTO `t_log` VALUES ('234', 'admin', '', '2018-07-03 12:06:07', '注销', '无', '后台系统', '1');
INSERT INTO `t_log` VALUES ('235', 'admin', '', '2018-07-03 15:45:58', '登录', '无', '后台系统', '1');
INSERT INTO `t_log` VALUES ('236', 'admin', '', '2018-07-03 15:56:29', '注销', '无', '后台系统', '1');
INSERT INTO `t_log` VALUES ('237', 'admin', '', '2018-07-03 15:56:45', '登录', '无', '后台系统', '1');
INSERT INTO `t_log` VALUES ('238', 'admin', '', '2018-07-03 16:05:34', '注销', '无', '后台系统', '1');
INSERT INTO `t_log` VALUES ('239', 'admin', '', '2018-07-03 16:05:36', '登录', '无', '后台系统', '1');
INSERT INTO `t_log` VALUES ('240', 'admin', '', '2018-07-03 16:07:31', '上传', '6.8-星-河北4M.doc', '设备送修', '1');
INSERT INTO `t_log` VALUES ('241', 'admin', '', '2018-07-03 16:34:28', '上传', '终极算法：机器学习和人工智能如何重塑世界.pdf', '设备送修', '1');
INSERT INTO `t_log` VALUES ('242', 'admin', '', '2018-07-03 16:44:01', '上传', '终极算法：机器学习和人工智能如何重塑世界.pdf', '设备送修', '1');
INSERT INTO `t_log` VALUES ('243', 'admin', '', '2018-07-03 16:46:04', '登录', '无', '后台系统', '1');
INSERT INTO `t_log` VALUES ('244', 'admin', '', '2018-07-03 16:54:17', '登录', '无', '后台系统', '1');
INSERT INTO `t_log` VALUES ('245', 'admin', '', '2018-07-03 17:11:35', '登录', '无', '后台系统', '1');
INSERT INTO `t_log` VALUES ('246', 'admin', '', '2018-07-03 17:21:20', '登录', '无', '后台系统', '1');
INSERT INTO `t_log` VALUES ('247', 'admin', '', '2018-07-03 17:21:32', '上传', '讲座报道.docx', '设备送修', '1');
INSERT INTO `t_log` VALUES ('248', 'admin', '', '2018-07-03 17:21:50', '上传', '人民防空跨区域卫星通信申请表.doc', '设备送修', '1');
INSERT INTO `t_log` VALUES ('249', 'admin', '', '2018-07-03 17:22:02', '上传', '终极算法：机器学习和人工智能如何重塑世界.pdf', '设备送修', '1');
INSERT INTO `t_log` VALUES ('250', 'admin', '', '2018-07-03 17:35:51', '注销', '无', '后台系统', '1');
INSERT INTO `t_log` VALUES ('251', 'admin', '', '2018-07-03 18:39:56', '登录', '无', '后台系统', '1');
INSERT INTO `t_log` VALUES ('252', 'admin', '', '2018-07-03 18:41:04', '编辑', '设备送修', '设备送修', '1');
INSERT INTO `t_log` VALUES ('253', 'admin', '', '2018-07-03 18:41:57', '编辑', '设备送修', '设备送修', '1');
INSERT INTO `t_log` VALUES ('254', 'admin', '', '2018-07-03 18:42:44', '编辑', '设备送修', '设备送修', '1');
INSERT INTO `t_log` VALUES ('255', 'admin', '', '2018-07-03 19:01:39', '注销', '无', '后台系统', '1');
INSERT INTO `t_log` VALUES ('256', 'user', '', '2018-07-03 19:12:20', '登录', '无', '后台系统', '1');
INSERT INTO `t_log` VALUES ('257', 'user', '', '2018-07-03 19:23:51', '注销', '无', '后台系统', '1');
INSERT INTO `t_log` VALUES ('258', 'admin', '', '2018-07-03 19:24:26', '登录', '无', '后台系统', '1');
INSERT INTO `t_log` VALUES ('259', 'admin', '', '2018-07-03 19:24:58', '编辑', '设备送修', '设备送修', '1');
INSERT INTO `t_log` VALUES ('260', 'admin', '', '2018-07-03 19:34:14', '编辑', '通知3', '重要通知', '1');
INSERT INTO `t_log` VALUES ('261', 'admin', '', '2018-07-03 19:35:30', '编辑', '测试', '资讯平台-新闻动态', '1');
INSERT INTO `t_log` VALUES ('262', 'admin', '', '2018-07-03 19:35:49', '删除', '讲座报道.docx', '设备送修', '1');
INSERT INTO `t_log` VALUES ('263', 'admin', '', '2018-07-03 19:36:42', '删除', '终极算法：机器学习和人工智能如何重塑世界.pdf', '设备送修', '1');
INSERT INTO `t_log` VALUES ('264', 'admin', '', '2018-07-03 19:38:05', '删除', '人民防空跨区域卫星通信申请表.doc', '设备送修', '1');
INSERT INTO `t_log` VALUES ('265', 'admin', '', '2018-07-03 19:38:36', '删除', '终极算法：机器学习和人工智能如何重塑世界.pdf', '常用下载-设备送修', '1');
INSERT INTO `t_log` VALUES ('266', 'admin', '', '2018-07-03 19:38:55', '删除', '测试', '资讯平台-新闻动态', '1');
INSERT INTO `t_log` VALUES ('267', 'admin', '', '2018-07-03 19:43:19', '编辑', '通知1', '资讯平台-重要通知', '1');
INSERT INTO `t_log` VALUES ('268', 'admin', '', '2018-07-03 19:53:42', '注销', '无', '后台系统', '1');
INSERT INTO `t_log` VALUES ('269', 'admin', '', '2018-07-04 09:28:29', '登录', '无', '后台系统', '1');
INSERT INTO `t_log` VALUES ('270', 'admin', '', '2018-07-04 09:32:14', '新增', '测试', '资讯平台-新闻动态', '1');
INSERT INTO `t_log` VALUES ('271', 'admin', '', '2018-07-04 09:32:22', '新增', '测试', '资讯平台-新闻动态', '1');
INSERT INTO `t_log` VALUES ('272', 'admin', '', '2018-07-04 09:32:28', '新增', '测试', '资讯平台-新闻动态', '1');
INSERT INTO `t_log` VALUES ('273', 'admin', '', '2018-07-04 09:32:34', '新增', '测试', '资讯平台-新闻动态', '1');
INSERT INTO `t_log` VALUES ('274', 'admin', '', '2018-07-04 09:32:40', '新增', '测试', '资讯平台-新闻动态', '1');
INSERT INTO `t_log` VALUES ('275', 'admin', '', '2018-07-04 09:55:01', '注销', '无', '后台系统', '1');
INSERT INTO `t_log` VALUES ('276', 'admin', '', '2018-07-04 10:33:35', '登录', '无', '后台系统', '1');
INSERT INTO `t_log` VALUES ('277', 'admin', '', '2018-07-04 10:44:05', '注销', '无', '后台系统', '1');
INSERT INTO `t_log` VALUES ('278', 'admin', '', '2018-07-04 14:31:50', '登录', '无', '后台系统', '1');
INSERT INTO `t_log` VALUES ('279', 'admin', '', '2018-07-04 14:44:49', '登录', '无', '后台系统', '1');
INSERT INTO `t_log` VALUES ('280', 'admin', '', '2018-07-04 14:44:53', '删除', '终极算法：机器学习和人工智能如何重塑世界.pdf', '常用下载-设备送修', '1');
INSERT INTO `t_log` VALUES ('281', 'admin', '', '2018-07-04 14:50:21', '删除', '测试', '资讯平台-新闻动态', '1');
INSERT INTO `t_log` VALUES ('282', 'admin', '', '2018-07-04 15:07:47', '注销', '无', '后台系统', '1');
INSERT INTO `t_log` VALUES ('283', 'admin', '', '2018-07-04 15:28:38', '登录', '无', '后台系统', '1');
INSERT INTO `t_log` VALUES ('284', 'user', '', '2018-07-04 15:51:28', '登录', '无', '后台系统', '1');
INSERT INTO `t_log` VALUES ('285', 'admin', '', '2018-07-04 15:53:51', '登录', '无', '后台系统', '1');
INSERT INTO `t_log` VALUES ('286', 'admin', '', '2018-07-04 16:09:48', '注销', '无', '后台系统', '1');
INSERT INTO `t_log` VALUES ('287', 'admin', '', '2018-07-04 16:10:27', '登录', '无', '后台系统', '1');
INSERT INTO `t_log` VALUES ('288', 'admin', '', '2018-07-04 16:24:08', '注销', '无', '后台系统', '1');
INSERT INTO `t_log` VALUES ('289', 'admin', '', '2018-07-04 16:24:10', '登录', '无', '后台系统', '1');
INSERT INTO `t_log` VALUES ('290', 'admin', '', '2018-07-04 16:51:58', '登录', '无', '后台系统', '1');
INSERT INTO `t_log` VALUES ('291', 'admin', '', '2018-07-04 17:03:54', '注销', '无', '后台系统', '1');
INSERT INTO `t_log` VALUES ('292', 'admin', '', '2018-07-04 17:05:55', '登录', '无', '后台系统', '1');
INSERT INTO `t_log` VALUES ('293', 'admin', '', '2018-07-04 17:07:21', '编辑', '测试', '资讯平台-新闻动态', '1');
INSERT INTO `t_log` VALUES ('294', 'admin', '', '2018-07-04 17:19:49', '注销', '无', '后台系统', '1');
INSERT INTO `t_log` VALUES ('295', 'admin', '', '2018-07-05 08:48:06', '登录', '无', '后台系统', '1');
INSERT INTO `t_log` VALUES ('296', 'admin', '', '2018-07-05 09:23:45', '注销', '无', '后台系统', '1');
INSERT INTO `t_log` VALUES ('297', 'admin', '', '2018-07-05 11:09:21', '登录', '无', '后台系统', '1');
INSERT INTO `t_log` VALUES ('298', 'admin', '', '2018-07-05 12:01:11', '注销', '无', '后台系统', '1');
INSERT INTO `t_log` VALUES ('299', 'admin', '', '2018-07-05 15:33:43', '登录', '无', '后台系统', '1');
INSERT INTO `t_log` VALUES ('300', 'admin', '', '2018-07-05 16:39:40', '登录', '无', '后台系统', '1');
INSERT INTO `t_log` VALUES ('301', 'admin', '', '2018-07-05 16:41:19', '登录', '无', '后台系统', '1');
INSERT INTO `t_log` VALUES ('302', 'admin', '', '2018-07-05 16:48:53', '登录', '无', '后台系统', '1');
INSERT INTO `t_log` VALUES ('303', 'admin', '', '2018-07-05 16:49:53', '登录', '无', '后台系统', '1');
INSERT INTO `t_log` VALUES ('304', 'admin', '', '2018-07-05 16:53:33', '登录', '无', '后台系统', '1');
INSERT INTO `t_log` VALUES ('305', 'admin', '', '2018-07-05 16:58:13', '登录', '无', '后台系统', '1');
INSERT INTO `t_log` VALUES ('306', 'admin', '', '2018-07-05 16:58:51', '登录', '无', '后台系统', '1');
INSERT INTO `t_log` VALUES ('307', 'admin', '', '2018-07-05 17:00:17', '登录', '无', '后台系统', '1');
INSERT INTO `t_log` VALUES ('308', 'admin', '', '2018-07-05 17:13:28', '登录', '无', '后台系统', '1');
INSERT INTO `t_log` VALUES ('309', 'admin', '', '2018-07-05 17:21:42', '登录', '无', '后台系统', '1');
INSERT INTO `t_log` VALUES ('310', 'admin', '', '2018-07-06 09:00:37', '登录', '无', '后台系统', '1');
INSERT INTO `t_log` VALUES ('311', 'admin', '', '2018-07-06 09:02:46', '登录', '无', '后台系统', '1');
INSERT INTO `t_log` VALUES ('312', 'admin', '', '2018-07-06 09:18:33', '登录', '无', '后台系统', '1');
INSERT INTO `t_log` VALUES ('313', 'admin', '', '2018-07-06 09:22:13', '登录', '无', '后台系统', '1');
INSERT INTO `t_log` VALUES ('314', 'admin', '', '2018-07-06 09:23:29', '登录', '无', '后台系统', '1');
INSERT INTO `t_log` VALUES ('315', 'admin', '', '2018-07-06 09:43:35', '注销', '无', '后台系统', '1');
INSERT INTO `t_log` VALUES ('316', 'admin', '', '2018-07-06 09:58:13', '登录', '无', '后台系统', '1');
INSERT INTO `t_log` VALUES ('317', 'admin', '', '2018-07-06 10:24:48', '注销', '无', '后台系统', '1');
INSERT INTO `t_log` VALUES ('318', 'admin', '', '2018-07-06 16:04:41', '登录', '无', '后台系统', '1');
INSERT INTO `t_log` VALUES ('319', 'admin', '', '2018-07-06 16:18:16', '注销', '无', '后台系统', '1');
INSERT INTO `t_log` VALUES ('320', 'admin', '', '2018-07-06 16:51:55', '登录', '无', '后台系统', '1');
INSERT INTO `t_log` VALUES ('321', 'admin', '', '2018-07-06 17:02:45', '删除', '人民防空跨区域卫星通信申请表.doc', '常用下载-设备送修', '1');
INSERT INTO `t_log` VALUES ('322', 'admin', '', '2018-07-06 17:03:32', '删除', '测试', '资讯平台-新闻动态', '1');
INSERT INTO `t_log` VALUES ('323', 'admin', '', '2018-07-06 17:03:41', '删除', '测试', '资讯平台-新闻动态', '1');
INSERT INTO `t_log` VALUES ('324', 'admin', '', '2018-07-10 10:10:55', '登录', '无', '后台系统', '1');
INSERT INTO `t_log` VALUES ('325', 'admin', '', '2018-07-10 10:26:54', '注销', '无', '后台系统', '1');
INSERT INTO `t_log` VALUES ('326', 'admin', '', '2018-07-17 14:17:42', '登录', '无', '后台系统', '1');
INSERT INTO `t_log` VALUES ('327', 'admin', '', '2018-07-17 14:28:25', '注销', '无', '后台系统', '1');
INSERT INTO `t_log` VALUES ('328', 'admin', '', '2018-07-24 10:03:38', '登录', '无', '后台系统', '1');
INSERT INTO `t_log` VALUES ('329', 'admin', '', '2018-07-24 10:14:05', '注销', '无', '后台系统', '1');
INSERT INTO `t_log` VALUES ('330', 'admin', '', '2018-07-24 10:37:59', '登录', '无', '后台系统', '1');
INSERT INTO `t_log` VALUES ('331', 'admin', '', '2018-07-24 10:49:03', '注销', '无', '后台系统', '1');
INSERT INTO `t_log` VALUES ('332', 'admin', '', '2018-07-24 13:50:02', '登录', '无', '后台系统', '1');
INSERT INTO `t_log` VALUES ('333', 'admin', '', '2018-07-24 14:00:28', '注销', '无', '后台系统', '1');
INSERT INTO `t_log` VALUES ('334', 'admin', '', '2018-07-24 16:24:59', '登录', '无', '后台系统', '1');
INSERT INTO `t_log` VALUES ('335', 'admin', '', '2018-07-24 16:35:23', '注销', '无', '后台系统', '1');
INSERT INTO `t_log` VALUES ('336', 'admin', '', '2018-07-26 10:07:11', '登录', '无', '后台系统', '1');
INSERT INTO `t_log` VALUES ('337', 'admin', '', '2018-07-26 10:17:48', '注销', '无', '后台系统', '1');
INSERT INTO `t_log` VALUES ('338', 'admin', '', '2018-07-26 14:50:52', '登录', '无', '后台系统', '1');
INSERT INTO `t_log` VALUES ('339', 'admin', '', '2018-07-26 15:01:36', '注销', '无', '后台系统', '1');
INSERT INTO `t_log` VALUES ('340', 'admin', '', '2018-07-27 08:49:30', '登录', '无', '后台系统', '1');
INSERT INTO `t_log` VALUES ('341', 'admin', '', '2018-07-27 08:59:56', '注销', '无', '后台系统', '1');
INSERT INTO `t_log` VALUES ('342', 'admin', '', '2018-08-07 09:18:54', '登录', '无', '后台系统', '1');
INSERT INTO `t_log` VALUES ('343', 'admin', '', '2018-08-07 09:29:23', '注销', '无', '后台系统', '1');
INSERT INTO `t_log` VALUES ('344', 'admin', '', '2018-08-07 09:51:59', '登录', '无', '后台系统', '1');
INSERT INTO `t_log` VALUES ('345', 'admin', '', '2018-08-07 10:10:01', '注销', '无', '后台系统', '1');
INSERT INTO `t_log` VALUES ('346', 'admin', '', '2018-08-07 10:13:50', '登录', '无', '后台系统', '1');
INSERT INTO `t_log` VALUES ('347', 'admin', '', '2018-08-07 10:14:26', '编辑', '习近平总书记发表重要讲话', '资讯平台-新闻动态', '1');
INSERT INTO `t_log` VALUES ('348', 'admin', '', '2018-08-07 10:16:23', '编辑', '“学思践悟，知行合一” ——记第八党支部第二期技术分享主题讲座', '资讯平台-新闻动态', '1');
INSERT INTO `t_log` VALUES ('349', 'admin', '', '2018-08-07 10:17:04', '编辑', '“学思践悟，知行合一” ——记第八党支部第二期技术分享主题讲座', '资讯平台-新闻动态', '1');
INSERT INTO `t_log` VALUES ('350', 'admin', '', '2018-08-07 10:19:13', '编辑', '“学思践悟，知行合一” ——记第八党支部第二期技术分享主题讲座', '资讯平台-新闻动态', '1');
INSERT INTO `t_log` VALUES ('351', 'admin', '', '2018-08-07 10:29:57', '注销', '无', '后台系统', '1');
INSERT INTO `t_log` VALUES ('352', 'admin', '', '2018-08-07 14:07:12', '登录', '无', '后台系统', '1');
INSERT INTO `t_log` VALUES ('353', 'admin', '', '2018-08-07 14:17:37', '注销', '无', '后台系统', '1');
INSERT INTO `t_log` VALUES ('354', 'admin', '', '2018-08-07 14:18:23', '登录', '无', '后台系统', '1');
INSERT INTO `t_log` VALUES ('355', 'admin', '', '2018-08-07 14:27:59', '编辑', '“学思践悟，知行合一” ——记第八党支部第二期技术分享主题讲座“学思践悟，知行合一” ——记第八党支部第二期技术分享主题讲座', '资讯平台-新闻动态', '1');
INSERT INTO `t_log` VALUES ('356', 'admin', '', '2018-08-07 14:28:12', '编辑', '“学思践悟，知行合一” ——记第八党支部第二期技术分享主题讲座“学思践悟，知行合一” ——', '资讯平台-新闻动态', '1');
INSERT INTO `t_log` VALUES ('357', 'admin', '', '2018-08-07 14:28:26', '编辑', '“学思践悟，知行合一” ——记第八党支部第二期技术分享主题讲座', '资讯平台-新闻动态', '1');
INSERT INTO `t_log` VALUES ('358', 'admin', '', '2018-08-07 14:54:06', '编辑', '紧跟技术前沿 提升业务能力——网管中心与中信卫星专家开展技术交流', '资讯平台-新闻动态', '1');
INSERT INTO `t_log` VALUES ('359', 'admin', '', '2018-08-07 14:56:26', '登录', '无', '后台系统', '1');
INSERT INTO `t_log` VALUES ('360', 'admin', '', '2018-08-07 14:56:44', '编辑', '紧跟技术前沿 提升业务能力——网管中心与中信卫星专家开展技术交流', '资讯平台-新闻动态', '1');
INSERT INTO `t_log` VALUES ('361', 'admin', '', '2018-08-07 14:59:04', '删除', '新闻4', '资讯平台-新闻动态', '1');
INSERT INTO `t_log` VALUES ('362', 'admin', '', '2018-08-07 14:59:12', '删除', '测试', '资讯平台-新闻动态', '1');
INSERT INTO `t_log` VALUES ('363', 'admin', '', '2018-08-07 15:09:17', '编辑', '“学思践悟，知行合一” ——记第八党支部第二期技术分享主题讲座', '资讯平台-新闻动态', '1');
INSERT INTO `t_log` VALUES ('364', 'admin', '', '2018-08-07 15:11:04', '删除', '“学思践悟，知行合一” ——记第八党支部第二期技术分享主题讲座', '资讯平台-新闻动态', '1');
INSERT INTO `t_log` VALUES ('365', 'admin', '', '2018-08-07 15:11:19', '删除', '紧跟技术前沿 提升业务能力——网管中心与中信卫星专家开展技术交流', '资讯平台-新闻动态', '1');
INSERT INTO `t_log` VALUES ('366', 'admin', '', '2018-08-07 15:11:26', '删除', '测试', '资讯平台-新闻动态', '1');
INSERT INTO `t_log` VALUES ('367', 'admin', '', '2018-08-07 15:12:32', '新增', '“学思践悟，知行合一” ——记第八党支部第二期技术分享主题讲座', '资讯平台-新闻动态', '1');
INSERT INTO `t_log` VALUES ('368', 'admin', '', '2018-08-07 15:14:13', '新增', ' 紧跟技术前沿 提升业务能力——网管中心与中信卫星专家开展技术交流', '资讯平台-新闻动态', '1');
INSERT INTO `t_log` VALUES ('369', 'admin', '', '2018-08-07 15:15:57', '新增', '博观而约取 厚积而薄发——网管中心与德国诺达公司专家开展技术交流', '资讯平台-新闻动态', '1');
INSERT INTO `t_log` VALUES ('370', 'admin', '', '2018-08-07 15:17:52', '新增', '网管中心保障全国人防卫星资源接替及网络升级', '资讯平台-新闻动态', '1');
INSERT INTO `t_log` VALUES ('371', 'admin', '', '2018-08-07 15:25:36', '新增', '紧跟技术前沿 提升业务能力——网管中心与中信卫星专家开展技术交流', '资讯平台-新闻动态', '1');
INSERT INTO `t_log` VALUES ('372', 'admin', '', '2018-08-07 15:43:04', '注销', '无', '后台系统', '1');
INSERT INTO `t_log` VALUES ('373', 'admin', '', '2018-08-07 16:18:36', '登录', '无', '后台系统', '1');
INSERT INTO `t_log` VALUES ('374', 'admin', '', '2018-08-07 16:30:28', '注销', '无', '后台系统', '1');
INSERT INTO `t_log` VALUES ('375', 'admin', '', '2018-08-07 16:35:14', '登录', '无', '后台系统', '1');
INSERT INTO `t_log` VALUES ('376', 'admin', '', '2018-08-07 16:53:25', '注销', '无', '后台系统', '1');
INSERT INTO `t_log` VALUES ('377', 'admin', '', '2018-08-09 10:42:34', '登录', '无', '后台系统', '1');
INSERT INTO `t_log` VALUES ('378', 'admin', '', '2018-08-09 10:58:37', '注销', '无', '后台系统', '1');
INSERT INTO `t_log` VALUES ('379', 'admin', '', '2018-08-09 11:32:33', '登录', '无', '后台系统', '1');
INSERT INTO `t_log` VALUES ('380', 'admin', '', '2018-08-09 12:07:22', '注销', '无', '后台系统', '1');
INSERT INTO `t_log` VALUES ('381', 'admin', '', '2018-08-09 15:43:29', '登录', '无', '后台系统', '1');
INSERT INTO `t_log` VALUES ('382', 'admin', '', '2018-08-09 15:53:53', '注销', '无', '后台系统', '1');
INSERT INTO `t_log` VALUES ('383', 'admin', '', '2018-08-10 09:20:04', '登录', '无', '后台系统', '1');
INSERT INTO `t_log` VALUES ('384', 'admin', '', '2018-08-10 09:35:38', '注销', '无', '后台系统', '1');
INSERT INTO `t_log` VALUES ('385', 'admin', '', '2018-08-14 08:41:50', '登录', '无', '后台系统', '1');
INSERT INTO `t_log` VALUES ('386', 'admin', '', '2018-08-14 08:52:15', '注销', '无', '后台系统', '1');
INSERT INTO `t_log` VALUES ('387', 'admin', '', '2018-08-16 10:06:29', '登录', '无', '后台系统', '1');
INSERT INTO `t_log` VALUES ('388', 'admin', '', '2018-08-16 10:06:49', '编辑', '滚动新闻', '首页-滚动新闻', '1');
INSERT INTO `t_log` VALUES ('389', 'admin', '', '2018-08-16 10:06:57', '编辑', '滚动新闻2', '首页-滚动新闻', '1');
INSERT INTO `t_log` VALUES ('390', 'admin', '', '2018-08-16 10:07:18', '编辑', '通知1', '资讯平台-重要通知', '1');
INSERT INTO `t_log` VALUES ('391', 'admin', '', '2018-08-16 10:07:34', '编辑', '通知2', '资讯平台-重要通知', '1');
INSERT INTO `t_log` VALUES ('392', 'admin', '', '2018-08-16 10:07:48', '编辑', '习近平总书记发表重要讲话', '资讯平台-新闻动态', '1');
INSERT INTO `t_log` VALUES ('393', 'admin', '', '2018-08-16 10:08:00', '编辑', '“学思践悟，知行合一” ——记第八党支部第二期技术分享主题讲座', '资讯平台-新闻动态', '1');
INSERT INTO `t_log` VALUES ('394', 'admin', '', '2018-08-16 10:08:12', '编辑', ' 紧跟技术前沿 提升业务能力——网管中心与中信卫星专家开展技术交流', '资讯平台-新闻动态', '1');
INSERT INTO `t_log` VALUES ('395', 'admin', '', '2018-08-16 10:08:24', '编辑', '博观而约取 厚积而薄发——网管中心与德国诺达公司专家开展技术交流', '资讯平台-新闻动态', '1');
INSERT INTO `t_log` VALUES ('396', 'admin', '', '2018-08-16 10:08:37', '编辑', '博观而约取 厚积而薄发——网管中心与德国诺达公司专家开展技术交流', '资讯平台-新闻动态', '1');
INSERT INTO `t_log` VALUES ('397', 'admin', '', '2018-08-16 10:08:48', '编辑', '网管中心保障全国人防卫星资源接替及网络升级', '资讯平台-新闻动态', '1');
INSERT INTO `t_log` VALUES ('398', 'admin', '', '2018-08-16 10:09:03', '编辑', '网管中心保障全国人防卫星资源接替及网络升级', '资讯平台-新闻动态', '1');
INSERT INTO `t_log` VALUES ('399', 'admin', '', '2018-08-16 10:09:15', '编辑', '紧跟技术前沿 提升业务能力——网管中心与中信卫星专家开展技术交流', '资讯平台-新闻动态', '1');
INSERT INTO `t_log` VALUES ('400', 'admin', '', '2018-08-16 10:09:37', '编辑', '滚动新闻', '首页-滚动新闻', '1');
INSERT INTO `t_log` VALUES ('401', 'admin', '', '2018-08-16 10:09:47', '编辑', '滚动新闻2', '首页-滚动新闻', '1');
INSERT INTO `t_log` VALUES ('402', 'admin', '', '2018-08-16 10:15:13', '登录', '无', '后台系统', '1');
INSERT INTO `t_log` VALUES ('403', 'admin', '', '2018-08-16 10:17:25', '登录', '无', '后台系统', '1');
INSERT INTO `t_log` VALUES ('404', 'admin', '', '2018-08-16 10:18:23', '编辑', '通知1', '资讯平台-重要通知', '1');
INSERT INTO `t_log` VALUES ('405', 'admin', '', '2018-08-16 10:18:49', '编辑', '通知3', '资讯平台-重要通知', '1');
INSERT INTO `t_log` VALUES ('406', 'admin', '', '2018-08-16 10:24:28', '编辑', '通知1', '资讯平台-重要通知', '1');
INSERT INTO `t_log` VALUES ('407', 'admin', '', '2018-08-16 10:24:40', '编辑', '通知1', '资讯平台-重要通知', '1');
INSERT INTO `t_log` VALUES ('408', 'admin', '', '2018-08-16 10:43:01', '注销', '无', '后台系统', '1');
INSERT INTO `t_log` VALUES ('409', 'admin', '', '2018-08-16 15:26:35', '登录', '无', '后台系统', '1');
INSERT INTO `t_log` VALUES ('410', 'admin', '', '2018-08-16 15:27:21', '编辑', ' 紧跟技术前沿 提升业务能力——网管中心与中信卫星专家开展技术交流', '资讯平台-新闻动态', '1');
INSERT INTO `t_log` VALUES ('411', 'admin', '', '2018-08-16 15:27:31', '编辑', '习近平总书记发表重要讲话', '资讯平台-新闻动态', '1');
INSERT INTO `t_log` VALUES ('412', 'admin', '', '2018-08-16 15:27:38', '编辑', ' 紧跟技术前沿 提升业务能力——网管中心与中信卫星专家开展技术交流', '资讯平台-新闻动态', '1');
INSERT INTO `t_log` VALUES ('413', 'admin', '', '2018-08-16 15:27:47', '编辑', '“学思践悟，知行合一” ——记第八党支部第二期技术分享主题讲座', '资讯平台-新闻动态', '1');
INSERT INTO `t_log` VALUES ('414', 'admin', '', '2018-08-16 15:27:55', '编辑', '博观而约取 厚积而薄发——网管中心与德国诺达公司专家开展技术交流', '资讯平台-新闻动态', '1');
INSERT INTO `t_log` VALUES ('415', 'admin', '', '2018-08-16 15:28:05', '编辑', '博观而约取 厚积而薄发——网管中心与德国诺达公司专家开展技术交流', '资讯平台-新闻动态', '1');
INSERT INTO `t_log` VALUES ('416', 'admin', '', '2018-08-16 15:28:15', '编辑', '网管中心保障全国人防卫星资源接替及网络升级', '资讯平台-新闻动态', '1');
INSERT INTO `t_log` VALUES ('417', 'admin', '', '2018-08-16 15:28:25', '编辑', '紧跟技术前沿 提升业务能力——网管中心与中信卫星专家开展技术交流', '资讯平台-新闻动态', '1');
INSERT INTO `t_log` VALUES ('418', 'admin', '', '2018-08-16 15:28:40', '编辑', '通知1', '资讯平台-重要通知', '1');
INSERT INTO `t_log` VALUES ('419', 'admin', '', '2018-08-16 15:28:47', '编辑', '通知2', '资讯平台-重要通知', '1');
INSERT INTO `t_log` VALUES ('420', 'admin', '', '2018-08-16 15:28:55', '编辑', '通知3', '资讯平台-重要通知', '1');
INSERT INTO `t_log` VALUES ('421', 'admin', '', '2018-08-16 15:29:08', '编辑', '滚动新闻', '首页-滚动新闻', '1');
INSERT INTO `t_log` VALUES ('422', 'admin', '', '2018-08-16 15:29:17', '编辑', '滚动新闻2', '首页-滚动新闻', '1');
INSERT INTO `t_log` VALUES ('423', 'admin', '', '2018-08-16 15:41:32', '注销', '无', '后台系统', '1');
INSERT INTO `t_log` VALUES ('424', 'admin', '', '2018-08-21 13:51:42', '登录', '无', '后台系统', '1');
INSERT INTO `t_log` VALUES ('425', 'admin', '', '2018-08-21 14:17:43', '注销', '无', '后台系统', '1');
INSERT INTO `t_log` VALUES ('426', 'admin', '', '2018-08-24 18:00:09', '登录', '无', '后台系统', '1');
INSERT INTO `t_log` VALUES ('427', 'admin', '', '2018-08-24 18:18:42', '注销', '无', '后台系统', '1');
INSERT INTO `t_log` VALUES ('428', 'admin', '', '2018-08-27 09:03:04', '登录', '无', '后台系统', '1');
INSERT INTO `t_log` VALUES ('429', 'admin', '', '2018-08-27 09:04:37', '登录', '无', '后台系统', '1');
INSERT INTO `t_log` VALUES ('430', 'admin', '', '2018-08-27 09:05:04', '编辑', '入网申报', '业务流程-入网申报', '1');
INSERT INTO `t_log` VALUES ('431', 'admin', '', '2018-08-27 09:07:10', '编辑', '入网申报', '业务流程-入网申报', '1');
INSERT INTO `t_log` VALUES ('432', 'admin', '', '2018-08-27 09:09:41', '编辑', '入网申报', '业务流程-入网申报', '1');
INSERT INTO `t_log` VALUES ('433', 'admin', '', '2018-08-27 09:12:24', '编辑', '信道申请', '业务流程-信道申请', '1');
INSERT INTO `t_log` VALUES ('434', 'admin', '', '2018-08-27 09:14:59', '注销', '无', '后台系统', '1');
INSERT INTO `t_log` VALUES ('435', 'admin', '', '2018-08-27 09:23:58', '注销', '无', '后台系统', '1');
INSERT INTO `t_log` VALUES ('436', 'admin', '', '2018-09-06 11:19:27', '登录', '无', '后台系统', '1');
INSERT INTO `t_log` VALUES ('437', 'admin', '', '2018-09-06 11:20:08', '编辑', '习近平总书记发表重要讲话', '资讯平台-新闻动态', '1');
INSERT INTO `t_log` VALUES ('438', 'admin', '', '2018-09-06 11:30:09', '注销', '无', '后台系统', '1');
INSERT INTO `t_log` VALUES ('439', 'admin', '', '2018-09-06 13:39:43', '登录', '无', '后台系统', '1');
INSERT INTO `t_log` VALUES ('440', 'admin', '', '2018-09-06 13:50:02', '注销', '无', '后台系统', '1');
INSERT INTO `t_log` VALUES ('441', 'admin', '', '2018-09-06 13:51:24', '登录', '无', '后台系统', '1');
INSERT INTO `t_log` VALUES ('442', 'admin', '', '2018-09-07 17:29:07', '登录', '无', '后台系统', '1');
INSERT INTO `t_log` VALUES ('443', 'admin', '', '2018-09-07 17:29:39', '登录', '无', '后台系统', '1');
INSERT INTO `t_log` VALUES ('444', 'admin', '', '2018-09-07 17:30:10', '编辑', '滚动新闻', '首页-滚动新闻', '1');
INSERT INTO `t_log` VALUES ('445', 'admin', '', '2018-09-07 17:46:26', '注销', '无', '后台系统', '1');
INSERT INTO `t_log` VALUES ('446', 'admin', '', '2018-09-10 09:11:44', '登录', '无', '后台系统', '1');
INSERT INTO `t_log` VALUES ('447', 'admin', '', '2018-09-10 09:12:11', '编辑', '滚动新闻', '首页-滚动新闻', '1');
INSERT INTO `t_log` VALUES ('448', 'admin', '', '2018-09-10 09:13:18', '编辑', '通知2', '资讯平台-重要通知', '1');
INSERT INTO `t_log` VALUES ('449', 'admin', '', '2018-09-10 09:14:16', '编辑', '通知2', '资讯平台-重要通知', '1');
INSERT INTO `t_log` VALUES ('450', 'admin', '', '2018-09-10 09:17:01', '编辑', '滚动新闻', '首页-滚动新闻', '1');
INSERT INTO `t_log` VALUES ('451', 'admin', '', '2018-09-10 09:31:43', '注销', '无', '后台系统', '1');
INSERT INTO `t_log` VALUES ('452', 'admin', '', '2018-09-10 10:44:22', '登录', '无', '后台系统', '1');
INSERT INTO `t_log` VALUES ('453', 'admin', '', '2018-09-10 10:44:36', '编辑', '滚动新闻', '首页-滚动新闻', '1');
INSERT INTO `t_log` VALUES ('454', 'admin', '', '2018-09-10 10:47:12', '编辑', '滚动新闻2', '首页-滚动新闻', '1');
INSERT INTO `t_log` VALUES ('455', 'admin', '', '2018-09-10 10:50:17', '编辑', '滚动新闻', '首页-滚动新闻', '1');
INSERT INTO `t_log` VALUES ('456', 'admin', '', '2018-09-10 10:54:13', '编辑', '滚动新闻2', '首页-滚动新闻', '1');
INSERT INTO `t_log` VALUES ('457', 'admin', '', '2018-09-10 10:54:52', '新增', '滚动新闻3', '首页-滚动新闻', '1');
INSERT INTO `t_log` VALUES ('458', 'admin', '', '2018-09-10 11:24:11', '注销', '无', '后台系统', '1');
INSERT INTO `t_log` VALUES ('459', 'admin', '', '2018-09-10 16:59:39', '登录', '无', '后台系统', '1');
INSERT INTO `t_log` VALUES ('460', 'admin', '', '2018-09-10 16:59:47', '删除', '通知3', '资讯平台-重要通知', '1');
INSERT INTO `t_log` VALUES ('461', 'admin', '', '2018-09-10 17:00:52', '新增', '通知3', '资讯平台-重要通知', '1');
INSERT INTO `t_log` VALUES ('462', 'admin', '', '2018-09-10 17:01:24', '编辑', '通知3', '资讯平台-重要通知', '1');
INSERT INTO `t_log` VALUES ('463', 'admin', '', '2018-09-10 17:17:00', '注销', '无', '后台系统', '1');
INSERT INTO `t_log` VALUES ('464', 'admin', '', '2018-09-18 16:57:38', '登录', '无', '后台系统', '1');
INSERT INTO `t_log` VALUES ('465', 'admin', '', '2018-09-18 17:15:19', '注销', '无', '后台系统', '1');

-- ----------------------------
-- Table structure for `t_news`
-- ----------------------------
DROP TABLE IF EXISTS `t_news`;
CREATE TABLE `t_news` (
  `newsId` int(11) NOT NULL AUTO_INCREMENT,
  `title` text NOT NULL,
  `content` text NOT NULL,
  `PublishDate` date NOT NULL,
  `Author` text NOT NULL,
  `typeOne` int(11) NOT NULL,
  `typeTwo` int(11) NOT NULL,
  `ImageName` text NOT NULL,
  PRIMARY KEY (`newsId`)
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_news
-- ----------------------------
INSERT INTO `t_news` VALUES ('46', '通知1', '<p>&nbsp;&nbsp; 在中国科学院第十九次院士大会、中国工程院第十四次院士大会上，<a href=\"http://news.sina.com.cn/c/xl/2018-05-28/doc-ihcffhsu4677507.shtml\" target=\"_blank\">习近平总书记发表重要讲话，</a>站在党和国家事业发展的战略全局，高度概括党的十八大以来我国科技事业的历史性变革与成就，准确把握科技创新与发展大势，深刻分析我国科技发展面临的形势与任务，对实现建设世界科技强国的目标作出了重点部署、提出了明确要求。这一重要讲话对于鼓舞广大科技工作者勇做新时代科技创新排头兵，动员全党全国全社会为实现建设世界科技强国的目标而努力奋斗，具有重大现实意义和深远历史意义</p><p align=\"center\"><img src=\"http://192.168.16.4:80/SNMC/background/ueditor/jsp/upload/20180529/27091527557465477.jpg\" _src=\"http://localhost:8080/SNMC/background/ueditor/jsp/upload/20180529/27091527557465477.jpg\"/></p><p><br/></p>', '2018-05-28', '许寅杰', '2', '1', 'http://192.168.16.4:80/SNMC/background/ueditor/jsp/upload/20180529/27091527557465477.jpg');
INSERT INTO `t_news` VALUES ('47', '通知2', '<p>通知2</p><p align=\"center\"><img src=\"http://192.168.16.4/SNMC/background/ueditor/jsp/upload/20180910/1791536542053984.png\" _src=\"http://192.168.16.4/SNMC/background/ueditor/jsp/upload/20180910/1791536542053984.png\"/></p>', '2018-05-28', '许寅杰', '2', '1', 'http://192.168.16.4/SNMC/background/ueditor/jsp/upload/20180910/1791536542053984.png');
INSERT INTO `t_news` VALUES ('48', '习近平总书记发表重要讲话', '<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 新闻在中国科学院第十九次院士大会、中国工程院第十四次院士大会上，<a href=\"http://news.sina.com.cn/c/xl/2018-05-28/doc-ihcffhsu4677507.shtml\" target=\"_blank\">习近平总书记</a>站在党和国家事业发展的战略全局，高度概括党的十八大以来我国科技事业的历史性变革与成就，准确把握科技创新与发展大势，深刻分析我国科技发展面临的形势与任务，对实现建设世界科技强国的目标作出了重点部署、提出了明确要求。这一重要讲话对于鼓舞广大科技工作者勇做新时代科技创新排头兵，动员全党全国全社会为实现建设世界科技强国的目标而努力奋斗，具有重大现实意义和深远历史意义</p><p align=\"center\"><img src=\"http://192.168.16.4:80/SNMC/background/ueditor/jsp/upload/20180529/27091527557465477.jpg\" _src=\"http://localhost:8080/SNMC/background/ueditor/jsp/upload/20180529/27091527557465477.jpg\"/></p><p><br/></p>', '2018-05-29', '许寅杰', '1', '1', 'http://192.168.16.4:80/SNMC/background/ueditor/jsp/upload/20180529/27091527557465477.jpg');
INSERT INTO `t_news` VALUES ('59', '滚动新闻', '<p>输入或粘贴新闻内容</p><p><img src=\"http://192.168.16.4/SNMC/background/ueditor/jsp/upload/20180910/16391536547814684.png\" _src=\"http://192.168.16.4/SNMC/background/ueditor/jsp/upload/20180910/16391536547814684.png\"/></p>', '2018-06-14', '许寅杰', '0', '1', 'http://192.168.16.4/SNMC/background/ueditor/jsp/upload/20180910/16391536547814684.png');
INSERT INTO `t_news` VALUES ('63', '滚动新闻2', '<p>输入或粘贴新闻内容</p><p><img src=\"http://192.168.16.4/SNMC/background/ueditor/jsp/upload/20180910/72571536548049818.png\" _src=\"http://192.168.16.4/SNMC/background/ueditor/jsp/upload/20180910/72571536548049818.png\"/></p>', '2018-06-20', '许寅杰', '0', '1', 'http://192.168.16.4/SNMC/background/ueditor/jsp/upload/20180910/72571536548049818.png');
INSERT INTO `t_news` VALUES ('66', '“学思践悟，知行合一” ——记第八党支部第二期技术分享主题讲座', '<p>“中国共产党人依靠学习走到今天，也必然要依靠学习走向未来。”习近平总书记反复强调学习的重要性。中国特色社会主义进入新时代，要持之以恒学思践悟，学习新知识、贯彻新思想、践行新理念、增强新本领。为更好地学习交流新技术新知识，2018年度起，第八党支部启动“学思践悟，知行合一”系列主题讲座活动。本系列活动采取内部交流学习的方式，担任主讲人的同志自身学习消化新技术、新知识后，再以内部讲座形式在支部内宣讲，这既促进了个人自身学习，又加强了表达能力的锻炼。在5月21日许晟赟主讲第一期讲座后，第八党支部又于7月2日在1906会议室开展第二期技术分享主题讲座，主题是高通量卫星HTS的技术应用。<br/>主讲人许协首先从卫星通信的发展开始介绍，讲述了卫星通信过去的高速发展到最近十年遇到的问题，提出高通量卫星HTS是卫星通信发展的新希望。随后，主讲人分析了高通量卫星对比传统卫星的几大优势，HTS主要是通过容量的大幅提升来降低单位带宽的成本。然后，主讲人为与会人员讲解了高通量卫星的三大关键技术：多波束天线技术，频率复用技术，高增益波束技术。讲座后半段主要围绕高通量卫星的应用展开，许协列举了国内外成功应用案例。各与会员工积极参与交流，并联系了5G技术的发展趋势，讨论了两者技术融合的可能性。<br/>本次讲座，全体员工对高通量卫星有了一定了解，学习了许多前沿技术和知识，各员工之间的交流讨论也迸发出许多新思想。第八党支部举办的“学思践悟，知行合一”系列技术分享主题讲座为各位员工提供了持续学习、积极交流、了解前沿技术的平台，为网管中心的良好发展打下了坚实的基础。</p><p align=\"center\"><img src=\"http://192.168.16.4:80/SNMC/background/ueditor/jsp/upload/20180807/47791533625946404.png\" _src=\"http://172.16.6.67:8080/SNMC/background/ueditor/jsp/upload/20180807/47791533625946404.png\"/></p>', '2018-08-07', '许寅杰', '1', '1', 'http://192.168.16.4:80/SNMC/background/ueditor/jsp/upload/20180807/47791533625946404.png');
INSERT INTO `t_news` VALUES ('67', ' 紧跟技术前沿 提升业务能力——网管中心与中信卫星专家开展技术交流', '<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 6月20日下午，亚洲卫星有限公司胡海博士，中信数字媒体网络有限公司卫星通信分公司技术总监边力军等一行四人至公司进行卫星通信新技术交流。网管中心主任方芳、副主任曹菁菁，人防系统事业部副总经理戴胜及公司相关技术人员一同参加。<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 会上，方芳主任首先对技术专家们的到访表示热烈欢迎，并对人防卫星通信网和网管中心情况作了简要介绍。随后，来访的各位专家依次对目前在轨的卫星资源、卫星行业总体发展趋势、卫星通信的新技术新应用、国内卫星通信产业现状和中信卫星/亚洲卫星HTS计划等内容作了详细讲解。会谈期间，双方着重对国内卫星行业的国产化进程、高通量卫星的发展趋势及人防卫星通信网使用高通量卫星的可行性等问题进行了深入探讨。<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 交流活动结束后，网管中心的青年骨干们纷纷表示本次交流内容丰富、专业性强，有效拓宽了大家的技术视野。网管中心将继续紧密跟踪卫星通信前沿技术，努力钻研专业知识，同时定期在内部组织技术交流活动，不断提升网管中心在卫星通信领域的技术和网络管理能力。</p><p align=\"center\"><img src=\"http://192.168.16.4:80/SNMC/background/ueditor/jsp/upload/20180807/1141533626031553.jpg\" _src=\"http://172.16.6.67:8080/SNMC/background/ueditor/jsp/upload/20180807/1141533626031553.jpg\" width=\"967\" height=\"725\"/></p>', '2018-08-07', '何雪保', '1', '1', 'http://192.168.16.4:80/SNMC/background/ueditor/jsp/upload/20180807/1141533626031553.jpg');
INSERT INTO `t_news` VALUES ('68', '博观而约取 厚积而薄发——网管中心与德国诺达公司专家开展技术交流', '<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 4月10日，德国诺达卫星通信系统有限公司技术总监迈克、资深专家汉默特莅临公司进行卫星通信技术交流，网管中心主任方芳、副主任曹菁菁及相关技术人员参加接待。<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 会上，方芳主任首先致辞，对于德国诺达卫星通信系统有限公司一行来访表示热烈欢迎，并表示对此次技术交流活动充满期许。随后，德国诺达的技术总监迈克先生详细介绍了有关SKYWAN 5G系统的最新研发成果及国际卫星通信技术发展趋势。本次技术交流，双方针对SKYWAN卫星系统的组网管理、应用案例分析、技术开发等问题进行了深度探讨和交流，学习氛围浓烈。会后，双方总结形成了一份相关问题的解决方案，技术交流活动取得圆满成功。<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 业精于勤荒于嬉，行成于思毁于随。网管中心的青年骨干们纷纷表示，此次交流活动安排紧凑，内容丰富，是提升业务能力、扩充专业视野的有效举措，希望能够定期举办此类交流活动。此外，作为年轻的科研人员，只有锲而不舍地学习专业知识，升级自己的知识宝库，才能在人防信息化的大浪中直挂云帆济沧海。<br/><img src=\"http://192.168.16.4:80/SNMC/background/ueditor/jsp/upload/20180807/10001533626149736.jpg\" _src=\"http://172.16.6.67:8080/SNMC/background/ueditor/jsp/upload/20180807/10001533626149736.jpg\"/></p>', '2018-08-07', '许协', '1', '1', 'http://192.168.16.4:80/SNMC/background/ueditor/jsp/upload/20180807/10001533626149736.jpg');
INSERT INTO `t_news` VALUES ('69', '网管中心保障全国人防卫星资源接替及网络升级', '<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 亚洲九号卫星于2017年9月29日成功发射，目前已定轨到原亚洲四号卫星位置。网管中心为保障全国人防卫星通信系统在亚洲九号卫星上正常使用，全力投入到卫星资源接替及网络升级工作中。<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 首先，在接到卫星公司通知后，网管中心及时联系各省人防办，告知卫星资源接替及网络升级时间、技术参数等并发送函件，跟踪各省人防办近期使用计划，对有重大演习或保障活动的单位优先进行卫星资源接替及网络升级，合理安排各省人防站点上线时间。<br/>其次，编写《卫星资源接替用户手册》、《网络升级操作手册》，发给各省人防办相关部门。耐心解答用户提出的问题，打消其在卫星资源接替时出现故障的忧虑。<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 再次，确保网管中心主站正常。在11月17日18:00亚洲九号卫星启用后及时联系卫星公司，标定主站状态，各项参数均达到亚洲卫星公司的要求。<br/>由于前期准备工作充分，之后的卫星资源接替及网络升级紧张而有序。为使各省人防站点尽快迁移到亚洲九号卫星，网管中心全体人员放弃周末休息，加班加点进行保障。此次卫星资源接替也得到亚洲卫星公司的支持，安排北京分公司人员到网管中心现场指导工作，也凸显了公司在卫星通信领域的重要地位。</p><p align=\"center\"><img src=\"http://192.168.16.4:80/SNMC/background/ueditor/jsp/upload/20180807/3401533626264801.bmp\" _src=\"http://172.16.6.67:8080/SNMC/background/ueditor/jsp/upload/20180807/3401533626264801.bmp\"/></p>', '2018-08-07', '鲁岩', '1', '1', 'http://192.168.16.4:80/SNMC/background/ueditor/jsp/upload/20180807/3401533626264801.bmp');
INSERT INTO `t_news` VALUES ('70', '紧跟技术前沿 提升业务能力——网管中心与中信卫星专家开展技术交流', '<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 6月20日下午，亚洲卫星有限公司胡海博士，中信数字媒体网络有限公司卫星通信分公司技术总监边力军等一行四人至公司进行卫星通信新技术交流。网管中心主任方芳、副主任曹菁菁，人防系统事业部副总经理戴胜及公司相关技术人员一同参加。<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 会上，方芳主任首先对技术专家们的到访表示热烈欢迎，并对人防卫星通信网和网管中心情况作了简要介绍。随后，来访的各位专家依次对目前在轨的卫星资源、卫星行业总体发展趋势、卫星通信的新技术新应用、国内卫星通信产业现状和中信卫星/亚洲卫星HTS计划等内容作了详细讲解。会谈期间，双方着重对国内卫星行业的国产化进程、高通量卫星的发展趋势及人防卫星通信网使用高通量卫星的可行性等问题进行了深入探讨。<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 交流活动结束后，网管中心的青年骨干们纷纷表示本次交流内容丰富、专业性强，有效拓宽了大家的技术视野。网管中心将继续紧密跟踪卫星通信前沿技术，努力钻研专业知识，同时定期在内部组织技术交流活动，不断提升网管中心在卫星通信领域的技术和网络管理能力。</p><p align=\"center\"><img src=\"http://192.168.16.4:80/SNMC/background/ueditor/jsp/upload/20180807/26161533626728078.jpg\" _src=\"http://172.16.6.67:8080/SNMC/background/ueditor/jsp/upload/20180807/26161533626728078.jpg\"/></p>', '2018-08-07', '何雪保', '1', '1', 'http://192.168.16.4:80/SNMC/background/ueditor/jsp/upload/20180807/26161533626728078.jpg');
INSERT INTO `t_news` VALUES ('71', '滚动新闻3', '<p>输入或粘贴新闻内容</p><p><img src=\"http://192.168.16.4/SNMC/background/ueditor/jsp/upload/20180910/69281536548089794.png\" _src=\"http://192.168.16.4/SNMC/background/ueditor/jsp/upload/20180910/69281536548089794.png\"/></p>', '2018-09-10', '许寅杰', '0', '1', 'http://192.168.16.4/SNMC/background/ueditor/jsp/upload/20180910/69281536548089794.png');
INSERT INTO `t_news` VALUES ('72', '通知3', '<p>输入或粘贴新闻内容输入或粘贴新闻内容</p><p align=\"center\"><img src=\"http://192.168.16.4/SNMC/background/ueditor/jsp/upload/20180910/85971536570048280.png\" _src=\"http://192.168.16.4/SNMC/background/ueditor/jsp/upload/20180910/85971536570048280.png\"/></p>', '2018-09-10', '许寅杰', '2', '1', 'http://192.168.16.4/SNMC/background/ueditor/jsp/upload/20180910/85971536570048280.png');

-- ----------------------------
-- Table structure for `t_user`
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user` (
  `userId` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(15) NOT NULL,
  `account` varchar(20) NOT NULL,
  `organization` varchar(10) NOT NULL,
  PRIMARY KEY (`userId`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES ('1', '12345', 'admin', '网管中心');
INSERT INTO `t_user` VALUES ('2', '111111', 'user', '网管中心');
