-ifndef(cfg_research_hrl).
-define(cfg_research_hrl, true).

-record(researchCfg, {
	%% 研究序号
	num,
	%% 等级
	%% 未激活为0级
	level,
	%% Key
	index,
	%% 研究最大等级
	maxLevel,
	%% 研究前置条件
	%% （类型，参数1，参数2）
	%% 类型1：英雄星级，参数1=具体星数，参数2=0
	%% 类型2：前置天赋，参数1=研究序号，参数2=研究序号至少所需等级
	%% 类型3：研究圣所等级，参数1=具体等级，参数2=0
	needCondition,
	%% 升至下一级消耗
	%% （货币ID，数量）
	needConsume,
	%% 研究时间（秒）
	needTime,
	%% （类型，参数）
	%% 类型1：祈愿时间加速，参数=万分比
	%% 类型2：星光祭坛生产速率，参数=万分比
	%% 类型3：研究时间缩短，参数=万分比
	%% 类型4：召唤时间缩短，参数=万分比
	%% 类型5：锻造时间缩短，参数=万分比
	%% 类型6：建造时间缩短，参数=万分比
	countryAddition,
	%% 天赋技能或修正
	%% (技能类型,ID,学习位)
	%% 技能类型：
	%% 1为技能(skillBase);
	%% 2为技能修正(SkillCorr)
	%% 学习位：为0时不可直接获得
	%% 研究圣所学习位：690-730
	%% 仅前端使用做展示
	skill,
	%% 英雄增加属性
	%% （属性ID，具体值）
	%% 后端不读技能，直接在这里取值
	%% 这里配的是累计值，相同研究ID直接取最高的
	petAdd,
	%% 人物增加属性
	%% （属性ID，具体值）
	%% 后端不读技能，直接在这里取值
	%% 这里配的是累计值，相同研究ID直接取最高的
	playerAdd
}).

-endif.
