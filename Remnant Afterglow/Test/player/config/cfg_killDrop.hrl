-ifndef(cfg_killDrop_hrl).
-define(cfg_killDrop_hrl, true).

-record(killDropCfg, {
	%% 击杀掉落组
	%% 每个组记录击杀数（服务器），根据条件及修正，来控制掉落
	iD,
	%% 掉落控制
	%% （开启掉落的累计击杀数，每多1个boss击杀的掉率增值）
	%% 玩家击杀怪物时，根据条件判断本次是否掉落及几率
	%% 掉落成功后，该组的击杀计数重置清0
	%% 开启条件（击杀数）受vip等级和指定道具获取记录修正
	dropControl,
	%% 开启修正-玩家vip等级
	%% （vip等级，修正开启掉落的累计击杀数）
	%% 取小于等于玩家vip等级的最大配置值
	correctVip,
	%% 开启修正-玩家道具获取记录
	%% 道具id
	correctItem,
	%% 开启修正-道具获取记录
	%% （获得数量，修正开启掉落的累计击杀数）
	%% 取小于等于玩家当前累计获得次数的最大配置值
	correctItemRecord,
	%% 普通通用奖励（任何归属必掉，不想掉配0即可）
	%% {角色等级下限，角色等级上限，职业，掉落ID，掉落是否绑定,掉落数量，掉落概率,是否受幸运值影响，是否受数量加成影响}
	%% 角色等级下/上限：角色当前等级在配置范围内才有掉落（包括下限，不包括上限）
	%% 职业：0=所有职业的人均可获得该掉落，1004-战士，1005-法师，1006-弓手.（如果是职业一的人，不会掉落职业二的奖励，但是可以获得不分职业的奖励）
	%% 掉落是否绑定：0为非绑 1为绑定
	%% 掉落数量为掉落包的个数，开启时每个包独立开启
	%% 掉落概率值为万分比，上限为10000，下限为0
	%% 掉落成功重置击杀数，是按掉落id是否成功掉落，没有索引击杀掉落组，因此，本字段中的掉落id不能与其他地方重用，包括其他击杀掉落组的掉落id
	dropID
}).

-endif.
