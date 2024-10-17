-ifndef(cfg_actiKnightsAward_hrl).
-define(cfg_actiKnightsAward_hrl, true).

-record(actiKnightsAwardCfg, {
	%% 活动ID
	iD,
	%% 结算类型
	%% 1每小时的普通结算
	%% 2最终结算
	isFinalRank,
	%% 战盟排名
	guildRank,
	%% 战盟内玩家排名1
	memberRank,
	%% 索引
	index,
	%% 称号奖励
	%% 填写称号id
	%% 称号头顶图用于界面展示
	%% 前几天直接奖励称号，最后一天奖励称号道具-MemberTitleItem
	memberTitle,
	%% 奖励道具/货币
	%% （职业，类型，类型ID，掉落是否绑定,掉落数量）
	%% 没有填0
	%% 职业：0=所有职业的人均可获得该掉落，1004=战士，1005=法师，1006=弓手.（如果是职业一的人，不会掉落职业二的奖励，但是可以获得不分职业的奖励）
	%% 类型1：道具，类型ID为道具ID
	%% 类型2：货币，类型ID为货币ID
	%% 掉落是否绑定：0为非绑 1为绑定（货币没有绑定或非绑的说法）
	%% 掉落数量：奖励道具的数量
	awardItem,
	%% 奖励装备
	%% （职业，装备ID，装备品质，装备星级，是否绑定）
	%% 没有填0
	%% 职业：0=所有职业的人均可看到该，1004=战士，10005=法师，1006=弓手.（如果是职业一的人，不会看到职业二的奖励，但是可以获得不分职业的奖励）
	%% 品质0白1蓝2紫3橙4红5粉6神
	%% 星级0-3
	%% 掉落是否绑定：0为非绑 1为绑定
	awardEquip,
	%% 称号奖励
	%% 填写称号道具id
	%% 道具ID用于前段获取称号tips
	%% 最后一天奖励道具
	memberTitleItem
}).

-endif.
