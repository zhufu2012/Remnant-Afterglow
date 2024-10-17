-ifndef(cfg_smeltVip_hrl).
-define(cfg_smeltVip_hrl, true).

-record(smeltVipCfg, {
	%% 特权ID
	iD,
	%% 直购ID
	directPurchase,
	%% 开启条件(序号，枚举，参数1，参数2）
	%% 同序号的是需要都满足，不同序号的任意满足即可开启
	%% 枚举1：开服天数 参数1为对应的开服天数 参数2=0
	%% 枚举2：吞噬等级 参数1为对应的炼金等级 参数2=0
	%% 特权3：购买特权后多少天开启 参数1为上一个购买的特权ID 参数2=购买上一个特权ID后的多少天
	%% 枚举4：VIP，参数1为VIP等级 参数2=0
	openSmeltBuy,
	%% 展示ID
	showItem,
	%% 购买条件(序号，枚举，参数1，参数2）
	%% 同序号的是需要都满足，不同序号的任意满足即可开启
	%% 枚举1：开服天数 参数1为对应的开服天数 参数2=0
	%% 枚举2：吞噬等级 参数1为对应的炼金等级 参数2=0
	%% 枚举3：购买特权后多少天开启 参数1为上一个购买的特权ID 参数2=购买上一个特权ID后的多少天
	%% 枚举4：VIP，参数1为VIP等级 参数2=0
	smeltBuy,
	%% 奖励
	%% （类型，ID，数量）
	%% 消耗类型：1.道具；
	%% 2.货币
	growItem,
	%% 炼金分解经验加成万分比
	%% 替换值
	smeltExpAdd,
	%% 炼金系统基础属性加成万分比
	%% 替换值
	smeltBaseAttrAdd
}).

-endif.
