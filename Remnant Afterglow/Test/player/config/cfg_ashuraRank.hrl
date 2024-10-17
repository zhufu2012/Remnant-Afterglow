-ifndef(cfg_ashuraRank_hrl).
-define(cfg_ashuraRank_hrl, true).

-record(ashuraRankCfg, {
	%% ID
	%% 1.资格赛
	%% 2.决赛
	iD,
	%% 积分排名奖励档次ID
	oder,
	index,
	%% 需求类型
	%% 1为排名需求
	%% 2为积分需求（没用）
	type,
	%% 参数1
	param1,
	%% 参数2
	param2,
	%% 排名奖1
	%% （奖励序号，职业，类型，类型ID，掉落是否绑定,掉落数量）
	%% 奖励序号：AshuraBase表中OrderReward字段的奖励序号
	%% 职业：0=所有职业的人均可获得该掉落，1004=战士，1005=法师，1006=弓手.（如果是职业一的人，不会掉落职业二的奖励，但是可以获得不分职业的奖励）
	%% 类型1：道具，类型ID为道具ID
	%% 类型2：货币，类型ID为货币ID
	%% 掉落是否绑定：0为非绑 1为绑定（货币没有绑定或非绑的说法）
	%% 掉落数量：奖励道具的数量
	awardBoxNew,
	%% 龙神塔通关层数分段奖励（限制AwardBoxNewTwo字段）
	%% （通关层数，层级奖励序号）
	%% (0,1)|(1,2)|(10,3)表示：
	%% 通关0层，给层级奖励序号为1的奖励；
	%% 通关第1-9层，给层级奖励序号为2的奖励；
	%% 通关第10层及以后，给层级奖励序号为3的奖励
	%% （0,1)表示：通关0层（即1层都没通关），仍然给层级奖励序号为1的奖励
	%% （1,1）表示：只有通关了1层及以上，给层级奖励序号为1的奖励
	hierarchy,
	%% 排名奖2(指定道具）
	%% （层级奖励序号，奖励列ID，奖励列序号）
	%% 层级奖励序号：对应Hierarchy字段的层级奖励序号
	%% 奖励列ID：【AshuraRewardColumn_1_动态奖励列】表的ID
	%% 奖励列序号：【AshuraRewardColumn_1_动态奖励列】表的AwardBoxTwo1、AwardBoxTwo2、…对应列字段
	awardBoxTwo
}).

-endif.
