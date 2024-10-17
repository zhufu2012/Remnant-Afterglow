-ifndef(cfg_activeReward_hrl).
-define(cfg_activeReward_hrl, true).

-record(activeRewardCfg, {
	%% 奖励ID
	%% ID段规划
	%% 1-，欧美
	%% 2-，韩语
	%% 3-，港台
	%% 4-，
	%% 100000以上是特殊.
	iD,
	%% 奖励名称
	name,
	%% 激活码可使用限制
	%% （类型，参数）
	%% 类型1：每天可领，参数 = 每天可领的次数。
	%% 类型2：角色终身可领，参数 = 该角色终身可领的次数.
	limt,
	%% 道具和货币奖励配这里
	%% （职业，类型，类型ID，掉落是否绑定,掉落数量）
	%% 职业：0=所有职业的人均可获得该掉落，1004=战士，1005=法师，1006=弓手.（如果是职业一的人，不会掉落职业二的奖励，但是可以获得不分职业的奖励）
	%% 类型1：道具，类型ID为道具ID
	%% 类型2：货币，类型ID为货币ID
	%% 掉落是否绑定：0为非绑 1为绑定（货币没有绑定或非绑的说法）
	%% 掉落数量：奖励道具的数量
	awardItemNew,
	%% 装备奖励配这里
	%% (职业，掉落ID，掉落是否绑定,掉落数量，掉落概率)
	%% 职业：0=所有职业的人均可获得该掉落，1004=战士，1005=法师，1006=弓手.(如果是职业一的人，不会掉落职业二的奖励，但是可以获得不分职业的奖励)
	%% 掉落是否绑定：0为非绑 1为绑定
	%% 掉落数量为掉落包的个数，开启时每个包独立开启
	%% 掉落概率值为万分比，上限为10000，下限为0
	awardEquip
}).

-endif.
