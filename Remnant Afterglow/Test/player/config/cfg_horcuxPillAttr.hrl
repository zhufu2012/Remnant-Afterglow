-ifndef(cfg_horcuxPillAttr_hrl).
-define(cfg_horcuxPillAttr_hrl, true).

-record(horcuxPillAttrCfg, {
	%% 编号id
	iD,
	%% 道具ID
	itemID,
	%% 每次嗑丹增加属性
	attrAdd,
	%% 提升系统中需要用到的评价该系统养成进度的依据值
	evaluate
}).

-endif.
