-ifndef(cfg_equipSuit_hrl).
-define(cfg_equipSuit_hrl, true).

-record(equipSuitCfg, {
	%% 套装ID
	%% 装备
	%% 时装
	iD,
	%% 套装数量
	numb,
	%% 客户端索引
	index,
	%% 名字
	name,
	%% 描述
	desc,
	%% 角色ID，对应characterSwitch中的ID字段
	skinModelID,
	%% 最大套装件数
	maxNum,
	%% 强化预览界面按钮显示上文字
	text,
	%% 预览所需套装图片
	image,
	%% 部件ID
	%% 如x|x|x|x 4件套
	item,
	%% 附带技能ID
	skillID,
	%% 团队属性（AttributeTeam）ID
	attrTeam,
	%% 附加属性
	%% {附加属性ID，附加值}
	%% 2代表生命值
	%% 3代表生命值修正
	%% 4代表击中生命恢复
	%% 5代表击中生命恢复比
	%% 6代表治疗效果比
	%% 7代表被治疗效果比
	%% 8代表魔力值
	%% 9代表魔力恢复
	%% 10代表霸体值
	%% 11代表霸体自然增量
	%% 12代表硬直
	%% 13代表硬直抵抗
	%% 14代表伤害强度
	%% 15代表防御强度
	%% 16代表基础伤害加成
	%% 17代表基础伤害减免
	%% 18代表真实伤害
	%% 19代表真实防御
	%% 20代表火焰元素强度
	%% 21代表冰冻元素强度
	%% 22代表雷电元素强度
	%% 23代表火焰元素防御
	%% 24代表冰冻元素防御
	%% 25代表雷电元素防御
	%% 26代表暴击值
	%% 27代表抗暴值
	%% 28代表暴击伤害
	%% 29代表格挡值
	%% 30代表格挡抗性
	%% 31代表格挡减免
	%% 32代表沉默值
	%% 33代表沉默抗性
	%% 34代表晕眩值
	%% 35代表晕眩抗性
	%% 36代表减速值
	%% 37代表减速抗性
	%% 38代表冻结值
	%% 39代表冻结抗性
	%% 40代表控制加成
	%% 41代表控制减免
	%% 42代表移动速度
	%% 43代表元素伤害加成
	%% 44代表元素伤害减免
	%% 45代表最终伤害加成
	%% 46代表最终伤害减免
	%% 47代表对妖基础伤害加成
	%% 48代表对仙基础伤害加成
	%% 49代表对佛基础伤害加成
	%% 50代表对魔基础伤害加成
	%% 51代表对無基础伤害加成
	%% 52代表对妖基础伤害减免
	%% 53代表对仙基础伤害减免
	%% 54代表对佛基础伤害减免
	%% 55代表对魔基础伤害减免
	%% 56代表对無基础伤害减免
	%% 57代表鼓舞
	%% 58代表鼓舞时间
	%% 59代表休整
	%% 60代表休整时间
	attribute,
	%% 阶数
	order,
	%% 套装数量
	%% 激活当前套装需要数量
	number
}).

-endif.
