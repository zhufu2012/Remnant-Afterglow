-ifndef(cfg_wingSkillOpensNew_hrl).
-define(cfg_wingSkillOpensNew_hrl, true).

-record(wingSkillOpensNewCfg, {
	%% 技能格子ID
	iD,
	%% 翼灵等级要求
	needLv,
	%% VIP等级
	vIPLv,
	%% VIP解锁消耗道具ID（达到VIP等级要求后需要道具开启）
	needItem,
	%% VIP解锁消耗货币ID（达到VIP等级要求后需要货币开启）（类型，数量）
	needCoin,
	%% 解锁格子奖励属性
	attrAdd
}).

-endif.
