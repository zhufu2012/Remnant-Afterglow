-ifndef(cfg_elementTrial_hrl).
-define(cfg_elementTrial_hrl, true).

-record(elementTrialCfg, {
	%% 地图ID
	mapID,
	%% 区域序号
	order,
	%% 索引
	index,
	%% 最大区域序号
	maxOrder,
	%% 地图名
	mapName,
	%% 法则需求
	%% 光|火|水|风|土
	ruleNeed,
	%% 图腾刷新
	%% (图腾品质ID,刷新权重)
	%% 图腾品质ID：引用“ElementTrialTotems_1_图腾”的ID
	%% 刷新权重：按权重随机刷新对应的图腾品质
	totemsBorn,
	%% 图腾位置
	%% (x,z,朝向）
	totemsPos,
	%% 刷怪
	%% (序号,怪物id,x坐标,z坐标,朝向,刷新时间（秒）)
	bossBorn,
	%% 怪物属性参数(依次找到符合要求的配置)
	%% 格式：
	%% (序号,优先级,怪物类型,区分序号,等级方式,等级参数,属性列,特殊情况)
	%% 序号：怪物序号,0为全部
	%% 优先级：图腾被占领，调用优先级1；未被占领，调用优先级2
	%% 怪物类型：0为全部,1为小怪,2为精英
	%% 区分序号：区分同类怪物；0为全部,大于0为区分序号
	%% 等级方式：确定怪物等级获取方式
	%% 0为固定,怪物等级='等级参数'
	%% 1为等同玩家等级,
	%% 怪物等级=（玩家等级/'等级参数'）(向下取整)*'等级参数'
	%% 2为世界等级,怪物等级=世界等级；
	%% 3为传输等级-元素试炼：图腾占领取
	%% 4为联服主服世界等级,怪物等级=联服主服世界等级；
	%% 属性列号：对应取第几种属性列
	%% 字段HpFold,AttrBase[MonsterAttr]
	%% 特殊情况：0为没有；1为按某玩家生成一份怪物'属性',其他玩家生成一份怪物'生命值'叠加到怪物上；2为组队进入副本中时，按照等级最高的玩家来对应生成怪物属性
	%% 填0表示没有怪物
	monsterAttr,
	%% 积分掉落
	rankBase,
	%% 时间经验奖励
	%% 参加该玩法每间隔一段时间获得一次经验奖励
	%% (时间间隔，经验参数）
	%% 时间间隔：秒；
	%% 经验参数：获得经验=经验参数*玩家等级对应获得经验标准值
	%% 玩家等级对应获得经验标准值：配置在ExpDistribution表中StandardEXP字段中
	timeExp
}).

-endif.
