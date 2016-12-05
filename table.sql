CREATE TABLE `xc_wx_hbask` (
  `id` int(11) NOT NULL,
  `wx_user_id` int(11) NOT NULL COMMENT 'xc_wx_users表id',
  `content` varchar(45) NOT NULL DEFAULT '' COMMENT '内容',
  `addtime` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(2) NOT NULL DEFAULT '0' COMMENT '发放状态：0-否 1-是',
  `price` decimal(11,2) NOT NULL DEFAULT '0.00' COMMENT '发放金额',
  `uptime` int(11) NOT NULL DEFAULT '0' COMMENT '最后更新时间',
  `sendtime` int(11) NOT NULL DEFAULT '0' COMMENT '发送时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='红包发送消息';

CREATE TABLE `xc_wx_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `unionid` varchar(45) NOT NULL DEFAULT '' COMMENT '只有在用户将公众号绑定到微信开放平台帐号后，才会出现该字段。\n',
  `openid` varchar(45) NOT NULL DEFAULT '' COMMENT '用户的标识，对当前公众号唯一',
  `nickname` varchar(45) NOT NULL DEFAULT '' COMMENT '用户的昵称',
  `sex` tinyint(2) NOT NULL DEFAULT '0' COMMENT '用户的性别，值为1时是男性，值为2时是女性，值为0时是未知',
  `language` varchar(45) NOT NULL DEFAULT '' COMMENT '用户的语言，简体中文为zh_CN',
  `city` varchar(45) NOT NULL DEFAULT '' COMMENT '用户所在城市',
  `province` varchar(45) NOT NULL DEFAULT '' COMMENT '	用户所在省份',
  `country` varchar(45) NOT NULL DEFAULT '' COMMENT '	用户所在国家',
  `headimgurl` varchar(500) NOT NULL DEFAULT '' COMMENT '用户头像，最后一个数值代表正方形头像大小（有0、46、64、96、132数值可选，0代表640*640正方形头像），用户没有头像时该项为空。若用户更换头像，原有头像URL将失效。',
  `subscribe_time` int(11) NOT NULL DEFAULT '0' COMMENT '关注时间用户关注时间，为时间戳。如果用户曾多次关注，则取最后关注时间',
  `remark` varchar(45) NOT NULL DEFAULT '' COMMENT '公众号运营者对粉丝的备注，公众号运营者可在微信公众平台用户管理界面对粉丝添加备注',
  `subscribe` tinyint(2) NOT NULL DEFAULT '0' COMMENT '用户是否订阅该公众号标识，值为0时，代表此用户没有关注该公众号，拉取不到其余信息。',
  `groupid` int(11) NOT NULL DEFAULT '0' COMMENT '用户所在的分组ID（兼容旧的用户分组接口）',
  `tagid_list` varchar(500) NOT NULL DEFAULT '' COMMENT '用户被打上的标签ID列表',
  `version` int(11) NOT NULL DEFAULT '0',
  `addtime` int(11) NOT NULL DEFAULT '0',
  `uptime` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='微信用户';
