-ifndef(cfg_unionGuildFight8_hrl).
-define(cfg_unionGuildFight8_hrl, true).

-record(unionGuildFight8Cfg, {
	%% 合服、联服重置时补偿奖励
	%% 等级段序号
	%% 对应：Rule5【UnionGuildFight1_1_联服公会战-规则】
	iD,
	%% 小组积分赛时，给的补偿奖励
	%% （职业，类型，ID，数量，品质，星级，是否绑定）
	%% 职业:0=所有职业，1004=战士，1005=法师，1006=弓手，1007=圣职
	%% 类型1=道具，ID=道具ID；
	%% 类型2=货币，ID=货币ID
	%% 类型3=装备，ID=装备ID
	%% 品质、星级：对应装备的品质和星级，其他类型无效
	%% 是否绑定：0.非绑  1.绑定
	awardItem1,
	%% 8强赛时，给的补偿奖励
	%% （职业，类型，ID，数量，品质，星级，是否绑定）
	%% 职业:0=所有职业，1004=战士，1005=法师，1006=弓手，1007=圣职
	%% 类型1=道具，ID=道具ID；
	%% 类型2=货币，ID=货币ID
	%% 类型3=装备，ID=装备ID
	%% 品质、星级：对应装备的品质和星级，其他类型无效
	%% 是否绑定：0.非绑  1.绑定
	awardItem2,
	%% 4强赛时，给的补偿奖励
	%% （职业，类型，ID，数量，品质，星级，是否绑定）
	%% 职业:0=所有职业，1004=战士，1005=法师，1006=弓手，1007=圣职
	%% 类型1=道具，ID=道具ID；
	%% 类型2=货币，ID=货币ID
	%% 类型3=装备，ID=装备ID
	%% 品质、星级：对应装备的品质和星级，其他类型无效
	%% 是否绑定：0.非绑  1.绑定
	awardItem3,
	%% 决赛时，给的补偿奖励
	%% （职业，类型，ID，数量，品质，星级，是否绑定）
	%% 职业:0=所有职业，1004=战士，1005=法师，1006=弓手，1007=圣职
	%% 类型1=道具，ID=道具ID；
	%% 类型2=货币，ID=货币ID
	%% 类型3=装备，ID=装备ID
	%% 品质、星级：对应装备的品质和星级，其他类型无效
	%% 是否绑定：0.非绑  1.绑定
	awardItem4
}).

-endif.
