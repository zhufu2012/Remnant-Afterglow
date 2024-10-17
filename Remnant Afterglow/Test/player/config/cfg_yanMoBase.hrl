-ifndef(cfg_yanMoBase_hrl).
-define(cfg_yanMoBase_hrl, true).

-record(yanMoBaseCfg, {
	%% 炎魔地图ID
	iD,
	%% Boss出生相关配置
	%% 格式：
	%% (坐标X,坐标Z,朝向，本服BossID,跨服BossID)
	born,
	%% 格式：
	%% (复活间隔S,本服最大等级,跨服最大等级)
	bossPara,
	%% 保底等级
	%% （本服boss保底等级，跨服boss保底等级）
	%% 每次boss刷新的等级取 ：MAX（世界等级、保底等级、刷新等级）
	minLv,
	%% 本服Boss每次复活增加等级
	%% 格式：(等级段1,等级段2,提升等级,退等级)
	%% 等级段1  <=  等级  <  等级段2
	bossLv1,
	%% 跨服Boss每次复活增加等级
	%% 格式：(等级段1,等级段2,提升等级,退等级)
	bossLv2,
	%% 怪物属性参数(依次找到符合要求的配置)
	%% 格式：
	%% (序号,优先级,怪物类型,区分序号,等级方式,等级参数,属性列,特殊情况)
	%% 序号：1为本服,2为跨服
	%% 优先级：0为全部
	%% 怪物类型：0为全部,1为小怪,2为精英
	%% 区分序号：区分同类怪物；0为全部,大于0为区分序号
	%% 等级方式：确定怪物等级获取方式
	%% 0为固定,怪物等级='等级参数'
	%% 1为等同玩家等级,
	%% 怪物等级=（玩家等级/'等级参数'）{向下取整}*'等级参数'
	%% 2为世界等级,怪物等级=世界等级
	%% 3为传输等级
	%% 属性列号：对应取第几种属性列
	%% 字段HpFold,AttrBase[MonsterAttr]
	%% 特殊情况：0为没有；1为按某玩家生成一份怪物'属性',其他玩家生成一份怪物'生命值'叠加到怪物上；
	monsterAttr,
	%% 时间经验奖励
	%% 参加该玩法每间隔一段时间获得一次经验奖励
	%% (时间间隔，经验参数）
	%% 时间间隔：秒；
	%% 经验参数：获得经验=经验参数*玩家等级对应获得经验标准值
	%% 玩家等级对应获得经验标准值：配置在ExpDistribution表中StandardEXP字段中
	timeExp,
	%% 自动掉血，战斗总时长（秒）
	%% 战斗总时长：炎魔BOSS自动掉血多少秒后可将生命值耗完
	autoHP,
	%% 在死亡前a秒内，对BOSS造成过伤害的玩家，才有机会得到击杀奖
	%% 配置：时间（秒）
	timeLimit,
	%% 面板上伤害进行排名，通过排名对应的权重分配.
	%% （排名,权重）
	%% (1,100)|(2,95)|(3,90)|(4,10)
	%% 第1名权重：100
	%% 第2名权重：95
	%% 第3名权重：90
	%% 第4名及以后权重：各为10
	ranking
}).

-endif.
