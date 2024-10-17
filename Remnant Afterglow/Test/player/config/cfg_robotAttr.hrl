-ifndef(cfg_robotAttr_hrl).
-define(cfg_robotAttr_hrl, true).

-record(robotAttrCfg, {
	%% 世界等级段
	%% 向下取，例：1级向下取的最大等级为0级
	wLevel,
	%% 序号
	%% 每个世界等级段5套数据
	%% 每个机器人各自随机一个序号，
	order,
	%% 索引
	%% 机器按当前所属世界段和随机到的序号获取属性
	index,
	%% 最大序号
	%% 对应世界等级段的最大序号，程序用来选择具体的序号
	maxOrder,
	%% 属性
	%% (属性id,属性值)
	%% 非镜像系统直接使用该属性，没有填写的属性值未默认值
	%% 牛怪迷宫、雷霆要塞，一般属性列12，一般属性列13
	attr,
	%% 战力
	%% V0/3
	combat,
	%% 机器人等级波动范围
	%% （向下波动极限，向上波动极限）
	%% 以当前世界等级为标准，上下波动；结果不小于1
	robLevel,
	%% 战力
	%% 王者1V1匹配机器人时使用该字段
	combat2
}).

-endif.
