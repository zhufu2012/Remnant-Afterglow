-ifndef(cfg_towerDefPro_hrl).
-define(cfg_towerDefPro_hrl, true).

-record(towerDefProCfg, {
	%% 怪物波次
	iD,
	%% 小怪斗魂产出
	monsterReward,
	%% BOSS斗魂产出
	%% （正常刷出来的BOSS的斗魂产出，召唤BOSS斗魂产出）
	bossReward,
	%% 小怪逃跑斗魂产出
	runMonster,
	%% BOSS逃跑斗魂产出
	%% （正常刷出来的BOSS的逃跑斗魂产出，召唤BOSS逃跑斗魂产出）
	runBOSS,
	%% 召唤BOSS
	%% 显示为高掉率BOSS
	%% 填BOSS id
	callBoss,
	%% 召唤boss出生位置：x坐标|z坐标
	callBossPos,
	%% 召唤BOSS消耗
	%% （货币类型,数量）
	callBossConsume,
	%% 召唤出来的BOSS的属性
	%% 怪物属性参数(依次找到符合要求的配置)
	%% 格式：
	%% (序号,优先级,怪物类型,区分序号,等级方式,等级参数,属性列,特殊情况)
	%% 序号：0为全部
	%% 优先级：0为全部
	%% 怪物类型：0为全部,1为小怪,2为精英
	%% 区分序号：区分同类怪物；0为全部,大于0为区分序号
	%% 等级方式：确定怪物等级获取方式
	%% 0为固定,怪物等级='等级参数'
	%% 1为等同玩家等级,
	%% 怪物等级=（玩家等级/'等级参数'）{向下取整}*'等级参数'
	%% 2为世界等级,怪物等级=世界等级；3为传输等级
	%% 属性列号：对应取第几种属性列
	%% 字段HpFold,AttrBase[MonsterAttr]
	%% 3，副本等级，关卡表中副本的配置等级
	%% 特殊情况：0为没有；1为按某玩家生成一份怪物'属性',其他玩家生成一份怪物'生命值'叠加到怪物上；
	monsterAttr,
	%% 召唤出来的BOSS的经验
	%% (序号,怪物类型,区分序号,经验等级获取方式,等级参数,经验列)
	%% 序号：该功能为刷怪波数，0为全部波数,大于0为对应波数
	%% 怪物类型：0为全部,1为小怪,2为精英
	%% 区分序号：区分同类怪物；0为全部,大于0为区分序号
	%% 经验等级获取方式:0固定等级,等级参数：等级
	%% 经验等级获取方式:1读取怪物等级，等级参数：填“0”（系统自动判断怪物等级）
	%% 经验等级获取方式:2读取玩家等级，等级参数：填“0”（系统自动判断玩家等级）
	%% 经验列：读取[MonsterExp表]中字段Exp1/Exp2/Exp3…
	%%   经验列1表示：Exp1[MonsterExp表]
	%%   经验列2表示：Exp2[MonsterExp表]
	%%   …
	monsterExp
}).

-endif.
