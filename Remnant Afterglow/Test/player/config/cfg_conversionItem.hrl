-ifndef(cfg_conversionItem_hrl).
-define(cfg_conversionItem_hrl, true).

-record(conversionItemCfg, {
	%% 兑换类型ID
	%% 1为英雄分解与重生经验积分兑换物品
	%% 2为宝物重生经验积分兑换物品
	%% 3为为装备分解与重生经验积分兑换物品
	%% 100-399为活动副本
	%% 400为新秘境副本
	iD,
	%% 转换类型
	%% 1增转换 积分从大到小
	%% 2减转换 积分从小到大
	%% 3阶段转换
	type,
	%% 转换数据
	%% 增转换：
	%% 积分/除数=商+余
	%% 获得物品实际数量=商*数量基础系数
	%% 余数进行下次计算
	%% {除数，获得物品ID，数量基础系数}
	%% 减转换：
	%% 当积分大于等级积分段值，
	%% 给予该积分段全部奖励
	%% 进入下积分段
	%% 当积分小于积分段值，获得
	%% （积分-上积分段值）/（积分段-上积分段值）*总数量的该阶段奖励向下取整，结束。
	%% {积分段值，获得物品ID或货币类型ID，总数量}
	%% 货币类型ID
	%% 0-8:
	%% 104为装备强化石
	%% 阶段转化：
	%% 大于等于积分就可以获得对应积分的奖励
	conversion
}).

-endif.
