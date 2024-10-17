-ifndef(cfg_advertisingCode_hrl).
-define(cfg_advertisingCode_hrl, true).

-record(advertisingCodeCfg, {
	%% ID
	iD,
	%% 兑换码
	%% 码：一般定为：“英文大写、英文小写、数值”的组合.
	code,
	%% 单次输入码后给的奖励
	%% （序号，类型，ID，数量）
	%% 序号：Code字段对应位置的序号，从左至右为1、2、3...
	%% 类型1：道具
	%% 类型2：货币.
	reward,
	%% CD时间
	%% （序号，时间秒）
	%% 序号：Code字段对应位置的序号，从左至右为1、2、3…
	%% (1,600)|(2,1200)|(3,1800)，表示：
	%% 输入码1后，600秒后才能再次输入获得奖励；
	%% 输入码2后，1200秒后才能再次输入获得奖励；
	%% 输入码3后，1800秒后才能再次输入获得奖励.
	cD,
	%% 商城入口
	%% ·（VIP等级，商店ID）
	%% 不同VIP前往不同的商店
	%% ·如果配置0，则不显示商店入口
	shopId
}).

-endif.
