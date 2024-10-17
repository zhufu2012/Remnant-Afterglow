-ifndef(cfg_wingAwakenNew_hrl).
-define(cfg_wingAwakenNew_hrl, true).

-record(wingAwakenNewCfg, {
	%% 翅膀id
	iD,
	%% 觉醒等级
	level,
	%% 客户端索引
	index,
	%% 最大觉醒等级
	lvMax,
	%% 所需翅膀星级
	needLv,
	%% 所需翅膀等级
	needLevel,
	%% 升级所需道具ID，数量
	needItem,
	%% 属性加值
	attrAdd,
	%% 当前等级觉醒下一级时提供飞翼经验值
	flyExp,
	%% 触发技等级
	skillLv,
	%% 翅膀技能或修正
	%% (技能类型1,ID1,学习位1)|
	%% (技能类型2,ID2,学习位2)
	%% 技能类型：1为技能(skillBase);
	%% 2为技能修正(SkillCorr)
	%% 学习位：为0时不可直接获得
	%% 翅膀打造技37-41
	skill
}).

-endif.
