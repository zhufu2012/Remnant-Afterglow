-ifndef(cfg_pantheonIsland_hrl).
-define(cfg_pantheonIsland_hrl, true).

-record(pantheonIslandCfg, {
	%% 地图ID
	iD,
	%% 刷boss。
	%% 例如：{序号,bossid,bossx坐标,bossz坐标,朝向,刷新时间（秒）,刷新时间下限（秒）}
	%% 新增一个参数：刷新时间下限（秒）
	%% 刷新时间（秒）：为初始刷新时间，也是刷新时间上限.
	bossBorn,
	%% 界面显示
	%% 序号、X位移、Y位移、旋转参数、缩放大小百分比
	mONSTERSHOW,
	%% 神魔战场BossUI模型
	%% （序号、X偏移,Y偏移,Z偏移,X旋转,Y旋转,Z旋转,缩放值）
	modelTransform,
	%% 精英怪物刷新
	%% 例如：{序号,怪物id,怪物x坐标,怪物z坐标,朝向,刷新时间（秒）}
	monsterBorn,
	%% 每波刷的采集物
	%% {采集物索引,高级采集物,数量,刷新时间(秒),扣血单位时长（秒）,扣血当前生命万分比}|{采集物索引,低级采集物,数量,刷新时间(秒),扣血单位时长（秒）,扣血当前生命万分比}
	%% 不刷填0
	collectionBorn,
	%% 采集物奖励
	%% (采集物索引，职业，掉落ID，是否绑定，掉落数量，掉落概率)
	%% 采集物索引：CollecetionBorn采集物索引对应
	%% 职业：0为全职业，1004战士，1005法师，1006弓手
	%% 是否绑定：0为非绑，1为绑定
	%% 掉落概率：万分比
	collectionDrop,
	%% 索引1采集物区域的位置列表{x坐标,z坐标，朝向}
	collectionPos1,
	%% 索引2采集物的位置列表{x坐标,z坐标，朝向}
	collectionPos2,
	%% 地图类型：
	%% 类型|地图序号
	%% 类型=1，表示：单服神兽岛
	%% 类型=2，表示：跨服神兽岛
	%% 地图序号，1,2，3,4依次排序
	mapType,
	%% AutoBVT:
	%% 进入条件：{类型，参数}
	%% 类型1=等级，参数=多少级
	%% 类型2=神灵ID
	%% 神灵ID及以上就可进入
	entry,
	%% 怪物属性参数(依次找到符合要求的配置)
	%% 格式：
	%% (序号,优先级,怪物类型,区分序号,等级方式,等级参数,属性列,特殊情况)
	%% 序号：该功能为刷怪序号
	%% 0为全部,大于0为对应序号
	%% 优先级：0为全部
	%% 怪物类型：0为全部,1为小怪,2为精英
	%% 区分序号：区分同类怪物；0为全部,大于0为区分序号
	%% 等级方式：确定怪物等级获取方式
	%% 0为固定,怪物等级='等级参数'
	%% 1为等同玩家等级,
	%% 怪物等级=（玩家等级/'等级参数'）{向下取整}*'等级参数'
	%% 属性列号：对应取第几种属性列
	%% 字段HpFold,AttrBase[MonsterAttr]
	%% 特殊情况：0为没有
	monsterAttr,
	%% 时间经验奖励
	%% 参加该玩法每间隔一段时间获得一次经验奖励
	%% (时间间隔，经验参数）
	%% 时间间隔：秒；
	%% 经验参数：获得经验=经验参数*玩家等级对应获得经验标准值
	%% 玩家等级对应获得经验标准值：配置在ExpDistribution表中StandardEXP字段中
	timeExp,
	%% Boss对应玩家等级限制，如果玩家等级超过该等级，归属则不掉落任何物品，参与奖照常发放，只针对归属奖励
	%% ·归属奖励配在怪物掉落表
	%% ·参数数量和[MonsterBorn]字段的BOSS数量一一对应
	lvLimit,
	%% 等级压制枚举，读取MonsterGrade表的Grade的对应字段，填0标识不压制
	monsterGrade,
	%% （怪物类型，战力压制枚举），
	%% 怪物类型：0为全部,1为小怪,2为精英，没有填写的类型代表无压制
	%% 战力压制枚举读取怪物压制表的"MonsterGrade_ZhanLi_怪物对人战力压制"的对应字段，填0标识不压制
	%% 整体填0代表无压制
	monsterGrade2,
	%% 单角色战力压制
	%% （怪物类型，战力压制枚举），
	%% 怪物类型：0为全部,1为小怪,2为精英，没有填写的类型代表无压制
	%% 战力压制枚举读取怪物压制表的"MonsterGradeZhanLi2_1_对单角色战力压制"的对应字段，填0标识不压制
	%% 整体填0代表无压制
	monsterGrade3,
	%% 等级压制增加怪物最终伤害减免
	%% （怪物类型，等级压制枚举），
	%% 怪物类型：0为全部,1为小怪,2为精英，没有填写的类型代表无压制
	%% 等级压制枚举读取MonsterGrade2表的Grade的对应字段，填0标识不压制
	%% 整体填0代表无压制
	monsterGrade4,
	%% 是否显示前端对应地图入口
	%% 1为显示
	%% 0为隐藏
	openControl,
	%% 猎魔积分（标识，积分）
	%% 标识：前端使用，是否为该阶最后一个BOSS
	%% 积分：击杀该BOSS对应的积分
	razorbackScore
}).

-endif.
