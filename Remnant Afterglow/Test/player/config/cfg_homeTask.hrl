-ifndef(cfg_homeTask_hrl).
-define(cfg_homeTask_hrl, true).

-record(homeTaskCfg, {
	%% 任务ID
	iD,
	%% 类型
	%% 1主线
	%% 2支线
	type,
	%% 优先级排序
	num,
	%% 任务出现的前置条件.
	%% （类型，参数1，参数2）
	%% 类型1：人物等级；参数1=具体等级，参数2=0
	%% 类型2：任务ID；参数1=任务ID，参数2=0
	%% 类型3：建筑等级；参数1=建筑ID，参数2=建筑等级
	needCondition,
	%% 任务内容
	%% （类型，参数1，参数2）
	%% 类型1：建筑等级/建筑解锁；参数1=建筑ID，参数2=建筑等级
	%% 类型2：星光祭坛货币收集；参数1=货币ID，参数2=具体数额
	%% 类型3：完成打造；参数1=次数，参数2=0
	%% 类型4：完成次元召唤；参数1=次数，参数2=0
	%% 类型5：商城任意购买；参数1/2=0
	%% 类型6：完成研究；参数1=次数，参数2=0
	%% 类型7：完成祈愿收集；参数1=次数，参数2=0
	content,
	%% 完成奖励（类型，ID，数量）
	%% 类型1：道具，类型ID为道具ID
	%% 类型2：货币，类型ID为货币ID
	gift
}).

-endif.
