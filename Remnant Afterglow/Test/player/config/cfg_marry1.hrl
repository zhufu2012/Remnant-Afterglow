-ifndef(cfg_marry1_hrl).
-define(cfg_marry1_hrl, true).

-record(marry1Cfg, {
	iD,
	%% 结婚条件
	%% ·配置多个条件时需要同时满足
	%% （条件类型，参数1,参数2）
	%% 条件类型1：亲密度达到X，参数1=亲密度，参数2=0
	%% 条件类型2：消耗道具，参数1=道具ID，参数2=数量
	cons,
	%% 伴侣特权
	%% ·同时在线时生效
	%% ·配置buffID
	buff,
	%% 离婚
	%% （离婚方式,参数，消耗货币类型,消耗货币数量）
	%% 1、好久好散，需双方确认；参数=0
	%% 2、对方N天为上线；参数=天数
	%% 3、强制离婚；参数=0.
	divorce1,
	%% 离婚后亲密密度修正
	%% (离婚方式,修正万分比)
	%% ·离婚后亲密值改为当前值*修正万分比/10000
	divorce2,
	%% 婚礼新郎新娘的变身，需要对应职业变身buffid
	%% （职业id，时装id，时装id，……）
	%% 主角角色ID
	%% 1004、战士
	%% 1005、法师
	%% 1006、弓箭手
	%% 1007、圣职
	weddingBuffID
}).

-endif.
