-ifndef(cfg_petPillAttr_hrl).
-define(cfg_petPillAttr_hrl, true).

-record(petPillAttrCfg, {
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
