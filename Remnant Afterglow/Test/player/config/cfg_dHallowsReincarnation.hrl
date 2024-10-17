-ifndef(cfg_dHallowsReincarnation_hrl).
-define(cfg_dHallowsReincarnation_hrl, true).

-record(dHallowsReincarnationCfg, {
	%% 幻化圣物ID
	iD,
	%% 可转生的条件
	%% (分组，条件类型，参数)
	%% 分组：同组条件必须同时满足，不同组是“或”的关系.
	%% 条件类型1：升级等级，参数=等级；
	%% 条件类型2：升星等级，参数=星级；
	condition,
	%% 转生消耗
	%% (类型，ID，数量)
	%% 类型1：道具，ID=道具ID；
	%% 类型2：货币，ID=货币ID。
	consume,
	%% 转生成功后增加的属性奖励
	%% (属性ID，属性值)
	attrAdd,
	%% 转生前后升星等级限制
	%% (转生前，转生后)
	%% 最大升星等级
	starMax
}).

-endif.
