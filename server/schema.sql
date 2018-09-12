SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for t_user
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user` (
  `id`                    bigint(20)          NOT NULL AUTO_INCREMENT      COMMENT '主键',
  `username`              varchar(20)         NOT NULL unique              COMMENT '用户名',
  `password`              varchar(50)         DEFAULT '123'                COMMENT '密码',
  `create_time`           TIMESTAMP           DEFAULT CURRENT_TIMESTAMP    COMMENT '创建时间',
  KEY(id),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户表';

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES ('1', '123', default , null);

-- ----------------------------
-- Table structure for t_song
-- ----------------------------
DROP TABLE IF EXISTS `t_song`;
CREATE TABLE `t_song` (
  `id`                 bigint(20)             NOT NULL AUTO_INCREMENT        COMMENT '主键',
  `title`              varchar(50)            NOT NULL                       COMMENT '标题',
  `author`             varchar(50)            DEFAULT NULL                   COMMENT '作者',
  `country`            varchar(200)           NOT NULL                       COMMENT '国家地区',
  `language`           varchar(20)            DEFAULT NULL                   COMMENT '语言',
  `publishtime`        DATE                   DEFAULT NULL                   COMMENT '发行时间',
  `type`               varchar(20)            NOT NULL                       COMMENT '类别',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='音乐表';

-- ----------------------------
-- Records of t_song 2-热歌  1-新歌榜
-- ----------------------------
INSERT INTO `t_song` VALUES ('1', '无问西东', '王菲', '内地', '国语', '2018-01-11', '2');
INSERT INTO `t_song` VALUES ('2', '我们不一样', 'Mc黑总 bb机登录用户', '内地', '国语', '2017-12-05', '2');
INSERT INTO `t_song` VALUES ('3', '一起红火火', '凤凰传奇', '内地', '国语', '2018-01-25', '2');
INSERT INTO `t_song` VALUES ('4', '让一切走吧', '龙梅子', '内地', '国语', '2018-01-12', '2');
INSERT INTO `t_song` VALUES ('5', '一时间', '韩红', '内地', '国语', '2018-02-01', '2');
INSERT INTO `t_song` VALUES ('6', '狐狸（电影《二代妖精之今生有幸》推广曲）', '薛之谦', '内地', '国语', '2017-12-22', '2');
INSERT INTO `t_song` VALUES ('7', '红颜旧', '崔子格', '内地', '国语', '2017-09-08', '2');
INSERT INTO `t_song` VALUES ('8', '暖山', '刘珂矣', '内地', '国语', '2018-01-16', '2');
INSERT INTO `t_song` VALUES ('9', '怎样遇见你', '孙露', '内地', '国语', '2017-03-29', '2');
INSERT INTO `t_song` VALUES ('10', '十九岁', '赵雷', '内地', '国语', '2018-01-19', '2');
INSERT INTO `t_song` VALUES ('11', '绒花', '韩红', '内地', '国语', '2017-12-19', '2');
INSERT INTO `t_song` VALUES ('12', '带你去旅行', '宗顺康Ken', '内地', '国语', '2018-01-15', '2');
INSERT INTO `t_song` VALUES ('13', '你是我今生的依靠', '冷漠,杨小曼', '内地', '国语', '2014-09-15', '2');
INSERT INTO `t_song` VALUES ('14', '暧昧', '薛之谦', '内地', '国语', '2017-04-11', '2');
INSERT INTO `t_song` VALUES ('15', '逆流成河', '宇桐非', '内地', '国语', '2017-02-07', '2');
INSERT INTO `t_song` VALUES ('16', '半壶纱', '刘珂矣', '内地', '国语', '2016-01-15', '2');
INSERT INTO `t_song` VALUES ('17', '演员', '薛之谦', '内地', '国语', '2015-05-20', '2');
INSERT INTO `t_song` VALUES ('18', '粉红色的回忆', '王宝强,刘昊然,肖央,潘粤明,小沈阳,张子枫', '内地', '国语', '2018-02-01', '2');
INSERT INTO `t_song` VALUES ('19', '寂寞的人伤心的歌', '龙梅子,杨海彪', '内地', '国语', '2016-04-27', '2');
INSERT INTO `t_song` VALUES ('20', '老婆你辛苦了', '祁隆', '内地', '国语', '2017-01-11', '2');
INSERT INTO `t_song` VALUES ('21', '送别', '韩红', '内地', '国语', '2018-01-29', '2');
INSERT INTO `t_song` VALUES ('22', '你还要我怎样', '薛之谦', '内地', '国语', '2013-11-11', '2');
INSERT INTO `t_song` VALUES ('23', '亲爱的别想我', '祁隆,苏月', '内地', '国语', '2015-12-03', '2');
INSERT INTO `t_song` VALUES ('24', '大王叫我来巡山', '贾乃亮,甜馨', '内地', '国语', '2015-11-11', '2');
INSERT INTO `t_song` VALUES ('25', '桃花诺 ', 'G.E.M.邓紫棋', '内地', '国语', '2017-07-03', '2');
INSERT INTO `t_song` VALUES ('26', '乌兰姑娘', '乌兰图雅', '内地', '国语', '2016-12-20', '2');
INSERT INTO `t_song` VALUES ('27', '你不来我不老 (对唱版)', '高安,西单女孩', '内地', '国语', '2016-06-04', '2');
INSERT INTO `t_song` VALUES ('28', '言不由衷', '徐佳莹', '内地', '国语', '2017-12-27', '2');
INSERT INTO `t_song` VALUES ('29', '三生三世十里桃花', '那英', '内地', '国语', '2017-07-21', '2');
INSERT INTO `t_song` VALUES ('30', '小苹果（新年Remix版）', '筷子兄弟', '内地', '国语', '2015-01-08', '2');
INSERT INTO `t_song` VALUES ('31', '美好生活', '龙梅子,徐子崴', '内地', '国语', '2017-10-20', '2');
INSERT INTO `t_song` VALUES ('32', '离不开', '庄妮', '内地', '国语', '2018-01-23', '2');
INSERT INTO `t_song` VALUES ('33', '我是谁', '黄渤', '内地', '国语', '2018-01-24', '2');
INSERT INTO `t_song` VALUES ('34', '怒放', '龙梅子,葛荟婕', '内地', '国语', '2016-12-08', '2');
INSERT INTO `t_song` VALUES ('35', '像风一样', '薛之谦', '内地', '国语', '2017-11-03', '2');
INSERT INTO `t_song` VALUES ('36', '后来', '刘若英', '内地', '国语', '2000-01-07', '2');
INSERT INTO `t_song` VALUES ('37', '只想和你静度时光', '大张伟', '内地', '国语', '2018-02-06', '2');
INSERT INTO `t_song` VALUES ('38', '逆风飞行', '赵传', '内地', '国语', '2018-01-05', '2');
INSERT INTO `t_song` VALUES ('39', '最炫小苹果', '凤凰传奇,筷子兄弟', '内地', '国语', '2015-02-20', '2');
INSERT INTO `t_song` VALUES ('40', '想你啦', '冷漠,龙梅子', '内地', '国语', '2016-04-27', '2');
INSERT INTO `t_song` VALUES ('41', '亲爱的 你在哪里', '龙飞,门丽', '内地', '国语', '2015-01-14', '2');
INSERT INTO `t_song` VALUES ('42', 'C哩C哩', '海潮哥', '内地', '纯音乐', '2017-12-01', '2');
INSERT INTO `t_song` VALUES ('43', '等你等了那么久', '祁隆', '内地', '国语', '2013-04-01', '2');
INSERT INTO `t_song` VALUES ('44', '一念花开', '李谷一,霍尊', '内地', '国语', '2018-01-18', '2');
INSERT INTO `t_song` VALUES ('45', '美丽的牧羊姑娘', '乌兰图雅', '内地', '国语', '2014-10-21', '2');
INSERT INTO `t_song` VALUES ('46', '背过手', '薛之谦', '内地', '国语', '2017-11-28', '2');
INSERT INTO `t_song` VALUES ('47', '一生为你感动', '祁隆', '内地', '国语', '2017-01-11', '2');
INSERT INTO `t_song` VALUES ('48', '你在终点等我', '王菲', '内地', '国语', '2016-09-24', '2');
INSERT INTO `t_song` VALUES ('49', '说散就散', '艾福杰尼,黄旭,田羽生', '内地', '国语', '2017-12-14', '2');
INSERT INTO `t_song` VALUES ('50', '老屋', '降央卓玛', '内地', '国语', '2016-12-12', '2');
INSERT INTO `t_song` VALUES ('51', '啦啦爱 （DJ版）', '祁隆,孟小笛', '内地', '国语', '2014-08-14', '2');
INSERT INTO `t_song` VALUES ('52', '追梦赤子心', '鹿晗', '内地', '国语', '2017-09-10', '2');
INSERT INTO `t_song` VALUES ('53', '爱在上', '崔子格,盛一伦', '内地', '国语', '2017-10-25', '2');
INSERT INTO `t_song` VALUES ('54', '梦醉荷塘', '高安,云菲菲', '内地', '国语', '2014-09-30', '2');
INSERT INTO `t_song` VALUES ('55', '无所畏惧', '袁娅维', '内地', '国语', '2018-01-25', '2');
INSERT INTO `t_song` VALUES ('56', '不同时间', '易安音乐社', '内地', '国语', '2018-02-02', '2');
INSERT INTO `t_song` VALUES ('57', '最久的瞬间', '炎亚纶', '内地', '国语', '2018-02-01', '2');
INSERT INTO `t_song` VALUES ('58', '刚刚好', '薛之谦', '内地', '国语', '2016-06-07', '2');
INSERT INTO `t_song` VALUES ('59', '他们都老了 (Guitar Version)', '孙露,郑文', '内地', '国语', '2017-07-17', '2');
INSERT INTO `t_song` VALUES ('60', '拥抱你离去', '神州 守护 思佳美人', '内地', '国语', '2017-12-05', '2');
INSERT INTO `t_song` VALUES ('61', '可惜不是你', '曹轩宾,金海心', '内地', '国语', '2017-11-27', '2');
INSERT INTO `t_song` VALUES ('62', '无情的雨无情的你', '齐秦', '港台', '国语', '1994-01-22', '2');
INSERT INTO `t_song` VALUES ('63', '莫斯科郊外的晚上', '乌兰图雅', '内地', '国语', '2014-07-17', '2');
INSERT INTO `t_song` VALUES ('64', '福建如你', '赵照', '内地', '国语', '2018-01-30', '2');
INSERT INTO `t_song` VALUES ('65', '一个人', '张一然', '内地', '国语', '2018-01-24', '2');
INSERT INTO `t_song` VALUES ('66', '世上只有爸爸好', '赵英俊', '内地', '国语', '2018-01-26', '2');
INSERT INTO `t_song` VALUES ('67', '骆驼', '薛之谦', '内地', '国语', '2017-11-16', '2');
INSERT INTO `t_song` VALUES ('68', '冲锋', '谭维维', '内地', '国语', '2018-01-19', '2');
INSERT INTO `t_song` VALUES ('69', '北京·忘不了', '龙梅子', '内地', '国语', '2017-11-13', '2');
INSERT INTO `t_song` VALUES ('70', '彻骨伤（电视剧《艳骨》片头曲）', '岳靖川', '内地', '国语', '2018-01-09', '2');
INSERT INTO `t_song` VALUES ('71', '大鱼', '周深', '内地', '国语', '2016-05-20', '2');
INSERT INTO `t_song` VALUES ('72', '再见前任', '冯提莫', '内地', '国语', '2017-12-21', '2');
INSERT INTO `t_song` VALUES ('73', '来日方长', '黄龄,薛之谦', '内地', '国语', '2017-05-15', '2');
INSERT INTO `t_song` VALUES ('74', '草原妹妹', '乌兰图雅', '内地', '国语', '2014-10-31', '2');
INSERT INTO `t_song` VALUES ('75', '伤心太平洋', '任贤齐', '内地', '国语', '2004-03-25', '2');
INSERT INTO `t_song` VALUES ('76', '群畅赚赚赚', '龙梅子,老猫', '内地', '国语', '2016-12-08', '2');
INSERT INTO `t_song` VALUES ('77', '爱我中国', '龙梅子,高安,祁隆', '内地', '国语', '2013-09-20', '2');
INSERT INTO `t_song` VALUES ('78', '此时彼岸', '刘惜君', '内地', '国语', '2018-01-22', '2');
INSERT INTO `t_song` VALUES ('79', '水倒流', '龙梅子', '内地', '国语', '2018-02-08', '2');
INSERT INTO `t_song` VALUES ('80', '好人一生平安', '李娜', '内地', '国语', '1998-08-08', '2');
INSERT INTO `t_song` VALUES ('81', '如我', '刘惜君', '内地', '国语', '2017-12-29', '2');
INSERT INTO `t_song` VALUES ('82', '近了远了', '王菲,杜若溪', '内地', '国语', '2018-01-17', '2');
INSERT INTO `t_song` VALUES ('83', '越过山丘', '杨宗纬', '内地', '国语', '2017-07-21', '2');
INSERT INTO `t_song` VALUES ('84', '安和桥', '宋冬野', '内地', '国语', '2013-08-30', '2');
INSERT INTO `t_song` VALUES ('85', '风吹麦浪', '李健', '内地', '国语', '2007-04-01', '2');
INSERT INTO `t_song` VALUES ('86', '恋恋风尘', '老狼', '内地', '国语', '1995-12-31', '2');
INSERT INTO `t_song` VALUES ('87', '无问', '毛不易', '内地', '国语', '2017-12-26', '2');
INSERT INTO `t_song` VALUES ('88', '下完这场雨', '后弦', '内地', '国语', '2016-10-10', '2');
INSERT INTO `t_song` VALUES ('89', '我在未来等你', '好妹妹乐队', '内地', '国语', '2018-01-03', '2');
INSERT INTO `t_song` VALUES ('90', '关于爱', '李琦', '内地', '国语', '2018-02-02', '2');
INSERT INTO `t_song` VALUES ('91', '大中国', '高枫', '其他', '国语', '2002-10-01', '2');
INSERT INTO `t_song` VALUES ('92', '想家了 念家了 你就往回走', '侃侃', '内地', '国语', '2018-02-06', '2');
INSERT INTO `t_song` VALUES ('93', '逆流成河', '金南玲', '内地', '国语', '2013-12-06', '2');
INSERT INTO `t_song` VALUES ('94', '鬼迷心窍', '周华健', '内地', '国语', '1999-11-29', '2');
INSERT INTO `t_song` VALUES ('95', '韧享快乐年', '崔子格,崔恕,崔栩维', '内地', '国语', '2018-01-18', '2');
INSERT INTO `t_song` VALUES ('96', '感谢你', '赵传', '内地', '国语', '2018-01-05', '2');
INSERT INTO `t_song` VALUES ('97', '你们都爱说些骗人的话', '方玥', '内地', '国语', '2018-02-01', '2');
INSERT INTO `t_song` VALUES ('98', '喜欢你', '胡灵', '内地', '国语', '2018-02-01', '2');
INSERT INTO `t_song` VALUES ('99', '草原之夜', '乌兰图雅', '内地', '国语', '2016-08-01', '2');
INSERT INTO `t_song` VALUES ('100', '勇气', '梁静茹', '内地', '国语', '2000-08-02', '2');

INSERT INTO `t_song` VALUES ('101', 'New Silk Road（新丝绸之路）', 'Maksim', '欧美', '英语', '2018-02-13', '1');
INSERT INTO `t_song` VALUES ('102', '另一个结局', '孙盛希', '内地', '国语', '2018-02-12', '1');
INSERT INTO `t_song` VALUES ('103', '一时间', '韩红', '内地', '国语', '2018-02-01', '1');
INSERT INTO `t_song` VALUES ('104', '创业者', '韩磊', '内地', '国语', '2018-02-12', '1');
INSERT INTO `t_song` VALUES ('105', '一起红火火', '凤凰传奇', '内地', '国语', '2018-01-25', '1');
INSERT INTO `t_song` VALUES ('106', '一念尘埃（《柜中美人》主题曲）', '陈洁仪', '内地', '国语', '2018-02-09', '1');
INSERT INTO `t_song` VALUES ('107', '无问西东', '王菲', '内地', '国语', '2018-01-11', '1');
INSERT INTO `t_song` VALUES ('108', '带我回家(Thunder to the Ground)', '周笔畅', '内地', '英语', '2018-02-12', '1');
INSERT INTO `t_song` VALUES ('109', '红烧肉', '王蓉', '内地', '国语', '2018-02-09', '1');
INSERT INTO `t_song` VALUES ('110', '中国', '群星', '内地', '国语', '2018-02-17', '1');
INSERT INTO `t_song` VALUES ('111', '漂亮重要吗', '岳云鹏,郭麒麟', '内地', '国语', '2018-02-09', '1');
INSERT INTO `t_song` VALUES ('112', '粉红色的回忆', '王宝强,刘昊然,肖央,潘粤明,小沈阳,张子枫', '内地', '国语', '2018-02-01', '1');
INSERT INTO `t_song` VALUES ('113', '寒风（《柜中美人》片尾曲）', '赵泳鑫', '内地', '国语', '2018-02-09', '1');
INSERT INTO `t_song` VALUES ('114', 'Work For Light', '刘力扬', '欧美', '英语', '2018-02-09', '1');
INSERT INTO `t_song` VALUES ('115', '让一切走吧', '龙梅子', '内地', '国语', '2018-01-12', '1');
INSERT INTO `t_song` VALUES ('116', '丢丢铜（贺岁版）', '罗忆诗', '内地', '国语', '2018-02-14', '1');
INSERT INTO `t_song` VALUES ('117', '暖山', '刘珂矣', '内地', '国语', '2018-01-16', '1');
INSERT INTO `t_song` VALUES ('118', '只想和你静度时光', '大张伟', '内地', '国语', '2018-02-06', '1');
INSERT INTO `t_song` VALUES ('119', '送别', '韩红', '内地', '国语', '2018-01-29', '1');
INSERT INTO `t_song` VALUES ('120', '独孤天下', '李玉刚', '内地', '国语', '2018-02-27', '1');
INSERT INTO `t_song` VALUES ('121', '十九岁', '赵雷', '内地', '国语', '2018-01-19', '1');
INSERT INTO `t_song` VALUES ('122', '柳暗花明（《柜中美人》插曲）', '胡冰卿', '内地', '国语', '2018-02-09', '1');
INSERT INTO `t_song` VALUES ('123', '最佳人选（《二分之一美少年》原声带片尾曲）', '王矜霖,金丽婷', '内地', '国语', '2018-02-23', '1');
INSERT INTO `t_song` VALUES ('124', '带你去旅行', '宗顺康Ken', '内地', '国语', '2018-01-15', '1');
INSERT INTO `t_song` VALUES ('125', '不同时间', '易安音乐社', '内地', '国语', '2018-02-02', '1');
INSERT INTO `t_song` VALUES ('126', '离不开', '庄妮', '内地', '国语', '2018-01-23', '1');
INSERT INTO `t_song` VALUES ('127', '最久的瞬间', '炎亚纶', '内地', '国语', '2018-02-01', '1');
INSERT INTO `t_song` VALUES ('128', '我是谁', '黄渤', '内地', '国语', '2018-01-24', '1');
INSERT INTO `t_song` VALUES ('129', '福建如你', '赵照', '内地', '国语', '2018-01-30', '1');
INSERT INTO `t_song` VALUES ('130', '水倒流', '龙梅子', '内地', '国语', '2018-02-08', '1');
INSERT INTO `t_song` VALUES ('131', '关于爱', '李琦', '内地', '国语', '2018-02-02', '1');
INSERT INTO `t_song` VALUES ('132', '狐狸（电影《二代妖精之今生有幸》推广曲）', '薛之谦', '内地', '国语', '2017-12-22', '1');
INSERT INTO `t_song` VALUES ('133', '想家了 念家了 你就往回走', '侃侃', '内地', '国语', '2018-02-06', '1');
INSERT INTO `t_song` VALUES ('134', '无所畏惧', '袁娅维', '内地', '国语', '2018-01-25', '1');
INSERT INTO `t_song` VALUES ('135', '你们都爱说些骗人的话', '方玥', '内地', '国语', '2018-02-01', '1');
INSERT INTO `t_song` VALUES ('136', '喜欢你', '胡灵', '内地', '国语', '2018-02-01', '1');
INSERT INTO `t_song` VALUES ('137', '粉红色的回忆', '肖央', '内地', '国语', '2018-02-08', '1');
INSERT INTO `t_song` VALUES ('138', '一个人', '张一然', '内地', '国语', '2018-01-24', '1');
INSERT INTO `t_song` VALUES ('139', '世上只有爸爸好', '赵英俊', '内地', '国语', '2018-01-26', '1');
INSERT INTO `t_song` VALUES ('140', '一念花开', '李谷一,霍尊', '内地', '国语', '2018-01-18', '1');
INSERT INTO `t_song` VALUES ('141', '此时彼岸', '刘惜君', '内地', '国语', '2018-01-22', '1');
INSERT INTO `t_song` VALUES ('142', 'HOME USAGii Remix', '王诗安', '欧美', '英语', '2018-01-31', '1');
INSERT INTO `t_song` VALUES ('143', '粉红色的回忆', '潘粤明', '内地', '国语', '2018-02-02', '1');
INSERT INTO `t_song` VALUES ('144', '逆风飞行', '赵传', '内地', '国语', '2018-01-05', '1');
INSERT INTO `t_song` VALUES ('145', '我们不一样', 'Mc黑总 bb机登录用户', '内地', '国语', '2017-12-05', '1');
INSERT INTO `t_song` VALUES ('146', '如期', '好妹妹乐队', '内地', '国语', '2018-01-29', '1');
INSERT INTO `t_song` VALUES ('147', '冲锋', '谭维维', '内地', '国语', '2018-01-19', '1');
INSERT INTO `t_song` VALUES ('148', '分开旅行的旅客', '1022', '内地', '国语', '2018-01-23', '1');
INSERT INTO `t_song` VALUES ('149', '绒花', '韩红', '内地', '国语', '2017-12-19', '1');
INSERT INTO `t_song` VALUES ('150', '念', '胡夏', '内地', '国语', '2018-01-23', '1');
INSERT INTO `t_song` VALUES ('151', '近了远了', '王菲,杜若溪', '内地', '国语', '2018-01-17', '1');
INSERT INTO `t_song` VALUES ('152', '言不由衷', '徐佳莹', '内地', '国语', '2017-12-27', '1');
INSERT INTO `t_song` VALUES ('153', '一个人不自由（福利版）', '可力', '内地', '国语', '2018-02-05', '1');
INSERT INTO `t_song` VALUES ('154', '最后的自由', '败犬', '内地', '国语', '2018-01-31', '1');
INSERT INTO `t_song` VALUES ('155', '返老还童', '胡彦斌,Jony J', '内地', '国语', '2018-01-26', '1');
INSERT INTO `t_song` VALUES ('156', '韧享快乐年', '崔子格,崔恕,崔栩维', '内地', '国语', '2018-01-18', '1');
INSERT INTO `t_song` VALUES ('157', '我们之间', '冯提莫,孙子涵', '内地', '国语', '2018-01-26', '1');
INSERT INTO `t_song` VALUES ('158', '辈分歌 ', '郭德纲,岳云鹏,郭麒麟,张云雷', '内地', '国语', '2018-01-29', '1');
INSERT INTO `t_song` VALUES ('159', '彻骨伤（电视剧《艳骨》片头曲）', '岳靖川', '内地', '国语', '2018-01-09', '1');
INSERT INTO `t_song` VALUES ('160', '风景', '丢火车乐队', '内地', '国语', '2018-01-29', '1');
INSERT INTO `t_song` VALUES ('161', '咖喱咖喱【欢乐颂2插曲】', '宗顺康Ken', '内地', '国语', '2018-01-15', '1');
INSERT INTO `t_song` VALUES ('162', '亲爱的', '旅行团乐队', '内地', '国语', '2018-01-23', '1');
INSERT INTO `t_song` VALUES ('163', '眼色(Live at Blue Note Beijing)', '李泉,JZ All Stars', '内地', '国语', '2018-01-29', '1');
INSERT INTO `t_song` VALUES ('164', '我在未来等你', '好妹妹乐队', '内地', '国语', '2018-01-03', '1');
INSERT INTO `t_song` VALUES ('165', '你要的全拿走', '胡彦斌', '内地', '', '2018-01-26', '1');
INSERT INTO `t_song` VALUES ('166', '感谢你', '赵传', '内地', '国语', '2018-01-05', '1');
INSERT INTO `t_song` VALUES ('167', '胡巴胡吧', '沙溢,胡可,安吉,小鱼儿', '内地', '国语', '2018-01-12', '1');
INSERT INTO `t_song` VALUES ('168', '再见前任', '冯提莫', '内地', '国语', '2017-12-21', '1');
INSERT INTO `t_song` VALUES ('169', '解脱的自由', '赵传', '内地', '国语', '2018-01-05', '1');
INSERT INTO `t_song` VALUES ('170', 'Another Day in Paradise', 'Plan Three', '欧美', '英语', '2018-01-12', '1');
INSERT INTO `t_song` VALUES ('171', '说散就散', '艾福杰尼,黄旭,田羽生', '内地', '国语', '2017-12-14', '1');
INSERT INTO `t_song` VALUES ('172', '如我', '刘惜君', '内地', '国语', '2017-12-29', '1');
INSERT INTO `t_song` VALUES ('173', '无问', '毛不易', '内地', '国语', '2017-12-26', '1');
INSERT INTO `t_song` VALUES ('174', '风如歌（电视剧《艳骨》插曲）', '刘潮', '内地', '国语', '2018-01-09', '1');
INSERT INTO `t_song` VALUES ('175', '看不见的地方', '赵传', '内地', '国语', '2018-01-05', '1');
INSERT INTO `t_song` VALUES ('176', '小屁孩儿', '韩红', '内地', '国语', '2017-12-31', '1');
INSERT INTO `t_song` VALUES ('177', '容我（电视剧《艳骨》插曲）', '赵紫骅', '内地', '国语', '2018-01-09', '1');
INSERT INTO `t_song` VALUES ('178', 'C哩C哩', '海潮哥', '内地', '纯音乐', '2017-12-01', '1');
INSERT INTO `t_song` VALUES ('179', '雾中列车', '李健,王俊凯', '内地', '国语', '2017-12-26', '1');
INSERT INTO `t_song` VALUES ('180', '爱是种感觉', '吴建京', '内地', '国语', '2018-01-09', '1');
INSERT INTO `t_song` VALUES ('181', '灰色', '徐佳莹', '内地', '国语', '2017-12-27', '1');
INSERT INTO `t_song` VALUES ('182', '拥抱你离去', '神州 守护 思佳美人', '内地', '国语', '2017-12-05', '1');
INSERT INTO `t_song` VALUES ('183', '送别2017', '窦唯', '内地', '国语', '2018-01-01', '1');
INSERT INTO `t_song` VALUES ('184', '如愿以偿', '品冠', '内地', '国语', '2017-12-28', '1');
INSERT INTO `t_song` VALUES ('185', '我在未来等你', '齐秦,米咪', '港台', '国语', '2017-12-25', '1');
INSERT INTO `t_song` VALUES ('186', '感觉自己是巨星', '毛不易', '内地', '国语', '2017-12-21', '1');
INSERT INTO `t_song` VALUES ('187', '追光者', '胡旭晨', '内地', '国语', '2017-12-03', '1');
INSERT INTO `t_song` VALUES ('188', '新年快乐', '好妹妹乐队,陈粒,粒粒, 焦迈奇 ', '内地', '国语', '2017-12-20', '1');
INSERT INTO `t_song` VALUES ('189', 'Sailors', 'Jono', '欧美', '英语', '2017-12-01', '1');
INSERT INTO `t_song` VALUES ('190', 'The March', 'Jono', '欧美', '英语', '2017-12-01', '1');
INSERT INTO `t_song` VALUES ('191', '重生', '容祖儿', '内地', '国语', '2017-12-10', '1');
INSERT INTO `t_song` VALUES ('192', '幻想曲-舒曼', '新雅室内乐', '内地', '国语', '0000-00-00', '1');
INSERT INTO `t_song` VALUES ('193', '爱的喜悦-马蒂尼', '新雅室内乐', '内地', '国语', '0000-00-00', '1');
INSERT INTO `t_song` VALUES ('194', '沉思曲-马斯内', '新雅室内乐', '内地', '纯音乐', '1950-01-01', '1');
INSERT INTO `t_song` VALUES ('195', '歌声与微笑', '少儿歌曲', '其他', '国语', '0000-00-00', '1');
INSERT INTO `t_song` VALUES ('196', '小白船', '少儿歌曲', '其他', '国语', '1930-01-01', '1');
INSERT INTO `t_song` VALUES ('197', '粗心的小画家', '少儿歌曲', '其他', '国语', '0000-00-00', '1');
INSERT INTO `t_song` VALUES ('198', '红蜻蜓', '少儿歌曲', '其他', '国语', '0000-00-00', '1');
INSERT INTO `t_song` VALUES ('199', '牧童', '少儿歌曲', '其他', '国语', '0000-00-00', '1');
INSERT INTO `t_song` VALUES ('200', '分手在那个秋天', 'DJ小可', '内地', '国语', '1970-01-01', '1');

INSERT INTO `t_song` VALUES ('201', '那一年', '许巍', '内地', '国语', '2000-11-30', '11');
INSERT INTO `t_song` VALUES ('202', '回到拉萨', '郑钧', '其他', '国语', '1994-06-30', '11');
INSERT INTO `t_song` VALUES ('203', '知足', '五月天', '港台', '国语', '2005-08-26', '11');
INSERT INTO `t_song` VALUES ('204', '在路上', '麦田守望者', '其他', '国语', '1997-12-01', '11');
INSERT INTO `t_song` VALUES ('205', '玛卡瑞纳', '海龟先生', '内地', '国语', '2012-12-31', '11');
INSERT INTO `t_song` VALUES ('206', '女爵', '杨乃文', '港台', '国语', '2006-12-01', '11');
INSERT INTO `t_song` VALUES ('207', '晚安北京', '鲍家街43号', '内地', '国语', '1997-06-01', '11');
INSERT INTO `t_song` VALUES ('208', '太阳', '唐朝乐队', '内地', '国语', '1992-12-07', '11');
INSERT INTO `t_song` VALUES ('209', '与声音跳舞', '谢天笑', '内地', '国语', '2013-03-03', '11');
INSERT INTO `t_song` VALUES ('210', '垃圾场', '何勇', '内地', '国语', '1994-10-06', '11');
INSERT INTO `t_song` VALUES ('211', '时代', '脑浊乐队', '其他', '国语', '0000-00-00', '11');

INSERT INTO `t_song` VALUES ('212', '迷宫', '王若琳', '港台', '国语', '2007-12-10', '12');
INSERT INTO `t_song` VALUES ('213', 'Somebody Already Broke My Heart', 'Sade', '欧美', '英语', '2001-01-01', '12');
INSERT INTO `t_song` VALUES ('214', 'Going Home', 'Kenny G', '欧美', '英语', '1991-06-17', '12');
INSERT INTO `t_song` VALUES ('215', 'Off Minor', 'Thelonious Monk', '欧美', '英语', '2001-01-04', '12');
INSERT INTO `t_song` VALUES ('216', 'Miles', 'Miles Davis', '欧美', '英语', '2002-08-06', '12');
INSERT INTO `t_song` VALUES ('217', '没有你了', '李泉', '内地', '国语', '0000-00-00', '12');
INSERT INTO `t_song` VALUES ('218', 'Three To Get Ready', 'Dave Brubeck', '欧美', '英语', '2000-05-10', '12');
INSERT INTO `t_song` VALUES ('219', 'Living For The City', 'Ramsey Lewis', '欧美', '英语', '1993-07-16', '12');
INSERT INTO `t_song` VALUES ('220', 'St. Louis Blues', 'Bessie Smith,Louis Armstrong', '欧美', '英语', '1994-09-01', '12');
INSERT INTO `t_song` VALUES ('221', 'Stardust', 'Louis Armstrong', '欧美', '英语', '2006-11-13', '12');
INSERT INTO `t_song` VALUES ('222', 'Mambozart', 'Klazz Brothers & Cuba Percussion', '欧美', '纯音乐', '2005-03-18', '12');

INSERT INTO `t_song` VALUES ('223', '我的歌声里', '曲婉婷', '内地', '国语', '2012-04-24', '16');
INSERT INTO `t_song` VALUES ('224', '怒放的生命', '汪峰', '内地', '国语', '2005-12-20', '16');
INSERT INTO `t_song` VALUES ('225', '小情歌', '苏打绿', '港台', '国语', '2006-10-20', '16');
INSERT INTO `t_song` VALUES ('226', '最炫民族风', '凤凰传奇', '内地', '国语', '2010-09-30', '16');
INSERT INTO `t_song` VALUES ('227', '爱是你我', '刀郎,云朵,王翰仪', '内地', '国语', '2006-04-21', '16');
INSERT INTO `t_song` VALUES ('228', '伤不起', '王麟', '内地', '国语', '2011-12-19', '16');
INSERT INTO `t_song` VALUES ('229', '我的好兄弟', '高进,小沈阳', '内地', '国语', '2011-04-15', '16');
INSERT INTO `t_song` VALUES ('230', '老婆最大', '崔子格,老猫', '内地', '国语', '2012-04-19', '16');
INSERT INTO `t_song` VALUES ('231', '滴答', '侃侃', '内地', '国语', '2009-09-08', '16');
INSERT INTO `t_song` VALUES ('232', '荷塘月色', '凤凰传奇', '内地', '国语', '2010-09-30', '16');
INSERT INTO `t_song` VALUES ('233', '爱要坦荡荡', '丁丁', '内地', '国语', '2012-07-20', '16');
INSERT INTO `t_song` VALUES ('234', 'High歌', '张玮', '内地', '国语', '2012-07-13', '16');
INSERT INTO `t_song` VALUES ('235', '一吻天荒（《轩辕剑》片头曲）', '胡歌', '内地', '国语', '2012-07-16', '16');
INSERT INTO `t_song` VALUES ('236', '你是我的眼', '林宥嘉', '港台', '国语', '2008-06-03', '16');
INSERT INTO `t_song` VALUES ('237', '鸿雁', '额尔古纳乐队', '内地', '国语', '2009-01-20', '16');
INSERT INTO `t_song` VALUES ('238', '没那么简单', '黄小琥', '港台', '国语', '2009-12-18', '16');
INSERT INTO `t_song` VALUES ('239', '明天，你好', '牛奶咖啡', '内地', '国语', '2011-07-19', '16');
INSERT INTO `t_song` VALUES ('240', '小情歌', '多亮', '内地', '国语', '2012-07-20', '16');
INSERT INTO `t_song` VALUES ('241', 'High歌', '黄龄', '港台', '国语', '2010-07-08', '16');
INSERT INTO `t_song` VALUES ('242', '爱情买卖', '慕容晓晓', '内地', '国语', '2010-07-06', '16');
INSERT INTO `t_song` VALUES ('243', '渡口', '潘辰', '内地', '国语', '2012-07-19', '16');
INSERT INTO `t_song` VALUES ('244', '自由飞翔', '凤凰传奇', '内地', '国语', '2009-01-01', '16');
INSERT INTO `t_song` VALUES ('245', '因为爱情', '王菲,陈奕迅', '港台', '国语', '2011-02-22', '16');
INSERT INTO `t_song` VALUES ('246', '传奇', '王菲', '港台', '国语', '2010-02-13', '16');
INSERT INTO `t_song` VALUES ('247', '净土', '孙楠', '内地', '国语', '2012-07-03', '16');
INSERT INTO `t_song` VALUES ('248', '活着', '谢安琪', '港台', '国语', '2009-04-30', '16');
INSERT INTO `t_song` VALUES ('249', '套马杆', '乌兰图雅', '内地', '国语', '2012-02-14', '16');
INSERT INTO `t_song` VALUES ('250', '可惜不是你', '梁静茹', '内地', '国语', '2005-09-16', '16');
INSERT INTO `t_song` VALUES ('251', '我们的歌谣', '凤凰传奇', '内地', '国语', '2011-08-17', '16');
INSERT INTO `t_song` VALUES ('252', '父亲', '筷子兄弟', '内地', '国语', '2011-12-20', '16');
INSERT INTO `t_song` VALUES ('253', '我的歌声里', '李代沫', '内地', '国语', '2012-07-13', '16');
INSERT INTO `t_song` VALUES ('254', '做我老婆好不好', '徐誉滕', '内地', '国语', '2012-09-07', '16');
INSERT INTO `t_song` VALUES ('255', '我只在乎你', '邓丽君', '港台', '国语', '2009-12-23', '16');
INSERT INTO `t_song` VALUES ('256', '我的歌声里', '曲婉婷', '港台', '国语', '2012-03-30', '16');
INSERT INTO `t_song` VALUES ('257', '爱的供养(女生版)', '杨幂', '内地', '国语', '2011-02-01', '16');
INSERT INTO `t_song` VALUES ('258', '十一年', '邱永传', '内地', '国语', '2010-04-28', '16');
INSERT INTO `t_song` VALUES ('259', '慢慢', '张学友', '港台', '国语', '2009-12-28', '16');
INSERT INTO `t_song` VALUES ('260', '犯错', '斯琴高丽', '内地', '国语', '2010-05-12', '16');
INSERT INTO `t_song` VALUES ('261', '大海', '张雨生', '港台', '国语', '1992-11-28', '16');
INSERT INTO `t_song` VALUES ('262', '唐古拉', '王麟', '内地', '国语', '2012-07-18', '16');
INSERT INTO `t_song` VALUES ('263', '三寸天堂', '严艺丹', '内地', '国语', '2011-09-01', '16');
INSERT INTO `t_song` VALUES ('264', '天路', '韩红', '内地', '国语', '2005-04-26', '16');
INSERT INTO `t_song` VALUES ('265', '雨花石', '石头,李玉刚', '内地', '国语', '2011-11-14', '16');
INSERT INTO `t_song` VALUES ('266', '甜蜜蜜', '邓丽君', '港台', '国语', '2009-07-14', '16');
INSERT INTO `t_song` VALUES ('267', '我的歌声里', '曲婉婷', '内地', '国语', '2012-02-14', '16');
INSERT INTO `t_song` VALUES ('268', '千千阙歌', '陈慧娴', '港台', '粤语', '1990-10-02', '16');
INSERT INTO `t_song` VALUES ('269', '指纹（《轩辕剑》插曲）', '胡歌', '内地', '国语', '2012-07-16', '16');
INSERT INTO `t_song` VALUES ('270', '爱', '小虎队', '港台', '国语', '1991-08-02', '16');
INSERT INTO `t_song` VALUES ('271', '依然爱你', '王力宏', '港台', '国语', '2011-09-30', '16');
INSERT INTO `t_song` VALUES ('272', '光辉岁月', 'Beyond', '港台', '粤语', '2007-06-28', '16');
INSERT INTO `t_song` VALUES ('273', '再回首', '姜育恒', '港台', '国语', '1989-06-01', '16');
INSERT INTO `t_song` VALUES ('274', '在水一方', '邓丽君', '港台', '国语', '2005-05-01', '16');
INSERT INTO `t_song` VALUES ('275', '幻听', '许嵩', '内地', '国语', '2012-06-28', '16');
INSERT INTO `t_song` VALUES ('276', '最浪漫的事', '赵咏华', '内地', '国语', '1994-06-03', '16');
INSERT INTO `t_song` VALUES ('277', '吻别', '张学友', '港台', '国语', '1993-03-01', '16');
INSERT INTO `t_song` VALUES ('278', '女人花', '梅艳芳', '港台', '国语', '1997-08-01', '16');
INSERT INTO `t_song` VALUES ('279', '别在我离开之前离开', '雷诺儿', '内地', '国语', '0000-00-00', '16');
INSERT INTO `t_song` VALUES ('280', '一千个伤心的理由', '张学友', '港台', '国语', '2010-12-01', '16');
INSERT INTO `t_song` VALUES ('281', '傻丫头', '王风举', '内地', '国语', '0000-00-00', '16');
INSERT INTO `t_song` VALUES ('282', '你把爱情给了谁', '龙梅子', '内地', '国语', '2012-03-20', '16');
INSERT INTO `t_song` VALUES ('283', '你说爱我又不爱我', '金生水', '内地', '国语', '2011-02-10', '16');
INSERT INTO `t_song` VALUES ('284', '类似爱情', '萧亚轩', '港台', '国语', '2008-06-13', '16');
INSERT INTO `t_song` VALUES ('285', '搞笑', '罗志祥', '港台', '国语', '2008-12-26', '16');
INSERT INTO `t_song` VALUES ('286', '这样爱了（《轩辕剑》片尾曲）', '张婧', '内地', '国语', '2012-07-16', '16');
INSERT INTO `t_song` VALUES ('287', '青花瓷', '周杰伦', '港台', '国语', '2007-11-02', '16');
INSERT INTO `t_song` VALUES ('288', '涛声依旧', '毛宁', '内地', '国语', '2004-04-08', '16');
INSERT INTO `t_song` VALUES ('289', '断桥残雪', '许嵩', '内地', '国语', '2008-03-28', '16');
INSERT INTO `t_song` VALUES ('290', '浮夸', '陈奕迅', '港台', '粤语', '2005-12-25', '16');
INSERT INTO `t_song` VALUES ('291', '最炫民族风', '凤凰传奇', '内地', '国语', '2009-06-02', '16');
INSERT INTO `t_song` VALUES ('292', '飞得更高', '汪峰', '港台', '国语', '2004-06-01', '16');
INSERT INTO `t_song` VALUES ('293', '包容', '郑源', '内地', '国语', '2010-07-02', '16');
INSERT INTO `t_song` VALUES ('294', '一剪梅', '费玉清', '港台', '国语', '2008-03-19', '16');
INSERT INTO `t_song` VALUES ('295', '祝福', '张学友', '港台', '国语', '2009-12-23', '16');
INSERT INTO `t_song` VALUES ('296', '爱情码头', '郑源', '内地', '国语', '2010-07-02', '16');

-- ----------------------------
-- Table structure for t_task
-- ALTER TABLE t_study ADD COLUMN completed CHAR(2) DEFAULT 'N' COMMENT '是否学完(Y/N)' AFTER `company_id`;
-- ALTER TABLE t_study DROP COLUMN completed
-- ----------------------------
DROP TABLE IF EXISTS `t_task`;
CREATE TABLE `t_task` (
  `id`                 bigint(20)                NOT NULL AUTO_INCREMENT      COMMENT '主键',
  `text`               varchar(20)               NOT NULL                     COMMENT '标题',
  `completed`          char(2)                   DEFAULT 'N'                  COMMENT '是否完成(Y/N)',
  `create_time`        TIMESTAMP                 DEFAULT CURRENT_TIMESTAMP    COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='任务表';

INSERT INTO `t_task` VALUES ('1', '需求编写', 'Y', default);
INSERT INTO `t_task` VALUES ('2', '技术方案', 'Y', default);
INSERT INTO `t_task` VALUES ('3', '设计方案', 'N', default);
INSERT INTO `t_task` VALUES ('4', '开发进度', 'N', default);
INSERT INTO `t_task` VALUES ('5', '测试进度', 'N', default);
INSERT INTO `t_task` VALUES ('6', '发布部署', 'N', default);


