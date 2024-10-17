-ifndef(cfg_guildCopyNode_hrl).
-define(cfg_guildCopyNode_hrl, true).

-record(guildCopyNodeCfg, {
	%% 章ID
	iD,
	%% 关卡ID
	nodeID,
	index,
	%% 关卡名称
	nodeName,
	%% 最大关卡数
	nodeID_Max,
	%% 地图ID
	mapId,
	%% 关卡坐标
	%% 以大地图中心为(0,0)坐标配置
	nodePosition,
	%% 个人，解锁条件
	%% （组号，条件，参数）
	%% 组号：组号相同为“且”，组号不同为“或“；
	%% 条件1：通过前置关卡，参数=NodeID；
	%% 0：不限制
	%% 通过前置关卡解锁，控制线路
	priorPoint,
	%% 公共，解锁条件
	%% （组号，条件，参数）
	%% 组号：组号相同为“且”，组号不同为“或“；
	%% 条件1：通过前置关卡，参数=NodeID；
	%% 0：不限制
	priorPoint2,
	%% 关卡效果类型
	%% 1、进度关
	%% 2、效果关
	%% 3、福利关
	%% 4、个人进度关
	type,
	%% 累计进度万分比
	%% 公会通关该副本后达成的进度
	%% 最终进度：取当前最大的那个关卡对应的进度
	progress,
	%% 重置类型：
	%% 1、随章重进度重置而重置；
	%% 2、每周一5:00点重置。
	resetType,
	%% 副本消耗
	%% 消耗公用次数的消耗量
	%% 公用次数在：Consume【GuildCopyChapter_1_章基础】
	consume,
	%% 关卡玩法类型
	%% 1、BOSS关
	%% 2、小怪关
	%% 3、采集关
	%% 4、迷宫
	%% 5、福利采集
	%% 6、福利杀怪
	%% 7、福利收集
	%% 8、福利打桩
	playType,
	%% 通关条件
	%% （枚举，参数1）
	%% 枚举类型：
	%% 1.BOSS死亡，参数填0
	%% 2.采集数量，参数为具体数量
	%% 3.杀怪数量，参数为具体数量
	%% 4.多人迷宫到达出口，参数为逃脱人次
	%% 5.完成关卡次数，参数为要求次数
	%% 6.达到限制挑战次数，参数为0(单人)
	%% 7.收集数量
	success,
	%% 进度BOSS关个人单次最多停留时间（秒）
	stayTime,
	%% 类型：
	%% 1、增强buff：给全体公会成员提升伤害，下一个进度boss关有效；
	%% 2、削弱boss：使下一个进度boss关的BOSS遭到削弱，减弱特定boss.
	rewardBuff1,
	%% 效果关buff获取条件：
	%% （参数1，参数2）
	%% 参数：
	%% 参数1代表需要的杀怪数，参数2代表获得的BUFFID
	rewardBuff2,
	%% 采集
	%% 效果关-通关奖励2：掉血道具
	%% （采集物id，道具ID，数量下限，数量上限）
	%% （X，Y，1，4）:在1、2、3、4中随机奖励1个数量。
	%% 结算奖励给指定道具，该道具可由公会【会长、执法者、副盟主】在指定界面使用，使用后，可以使下一个进度BOSS关的BOSS直接按照百分比掉血
	rewardItem1,
	%% 采集
	%% 效果关-通关奖励2：掉血道具
	%% 采集达到上限后，采集关卡通通过，结算奖励的道具
	%% （道具ID，数量)
	collectionLimitReward,
	%% 效果关的效果对那个进度BOSS关生效
	%% 即RewardBuff/RewardItem1这两个字段的效果，对NodeID字段的关卡生效
	%% 配置：NodeID字段的ID
	effectArea,
	%% 福利关-通关奖励：
	%% (职业，类型，ID，数量，品质，星级，是否绑定)
	%% 结算给的奖励
	%% 职业：0=所有职业的人均可获得该掉落，1004=战士，1005=法师，1006=弓手.（如果是职业一的人，不会掉落职业二的奖励，但是可以获得不分职业的奖励）
	%% 类型1=道具，ID=道具ID；
	%% 类型2=货币，ID=货币ID
	%% 类型3=装备，ID=装备ID
	%% 品质、星级：对应装备的品质和星级，其他类型无效
	%% 是否绑定：0.非绑  1.绑定
	rewardItem2,
	%% 进度BOSS关，单个玩家单次最多打掉BOSS血量万分比
	%% 配置：万分比
	deductLimit,
	%% 进度BOSS关卡，首通红包
	%% （货币总量，红包数量)
	%% 蓝钻
	%% ·货币总量：红包总货币数量
	%% ·红包数量
	%% 单个红包中货币数量=货币总量/红包数量，向上取整
	%% （不计入公会宝箱红包上限）
	firstRedBag,
	%% 分配奖励1：首通分配奖励
	%% ·随通关进度变化奖励ID，计入每周公会分配中
	%% (道具ID，数量）
	firstReward,
	%% BOSS死亡奖励
	%% ·无论玩家是否参与，只有boss死亡了就能领取到一份福利，公会所有玩家都有且是一样的
	%% ·地图上点击领取
	%% (职业，类型，ID，数量，品质，星级，是否绑定)
	%% 职业：0=所有职业的人均可获得该掉落，1004=战士，1005=法师，1006=弓手.（如果是职业一的人，不会掉落职业二的奖励，但是可以获得不分职业的奖励）
	%% 类型1=道具，ID=道具ID；
	%% 类型2=货币，ID=货币ID
	%% 类型3=装备，ID=装备ID
	%% 品质、星级：对应装备的品质和星级，其他类型无效
	%% 是否绑定：0.非绑  1.绑定
	%% ·受迷宫关进度的限制，如果本人前面的迷宫关未通关，则即时公会进度已经到后面了，那么进度boss的非首通奖励也不能去领取，要自己迷宫关通过了才能去领取。
	reward1,
	%% 击杀进度关BOSS奖励
	%% ·boss死亡时在场有一份击杀boss奖励
	%% (职业，类型，ID，数量，品质，星级，是否绑定)
	%% 职业：0=所有职业的人均可获得该掉落，1004=战士，1005=法师，1006=弓手.（如果是职业一的人，不会掉落职业二的奖励，但是可以获得不分职业的奖励）
	%% 类型1=道具，ID=道具ID；
	%% 类型2=货币，ID=货币ID
	%% 类型3=装备，ID=装备ID
	%% 品质、星级：对应装备的品质和星级，其他类型无效
	%% 是否绑定：0.非绑  1.绑定
	reward2,
	%% BOSS关专用
	%% BOSS出生位置及朝向
	%% (怪物id,X偏移,Z偏移,朝向)
	bossBorn,
	%% 小怪关维持怪物数量
	num,
	%% 小怪关刷新小怪时间
	time,
	%% 小怪关刷怪。
	%% 例如：{序号怪物id,怪物x坐标,怪物z坐标,朝向}
	monsterBorn,
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
	%% 采集关专用
	%% 采集物属性
	%% (采集物ID,数量,刷新时间)
	collectionBorn,
	%% 采集关专用
	%% 采集时间缩放万分比
	%% （当前地图人数，时间缩放万分比）
	%% (1,10000)|(2,8000)|(3,7000)|(4,6000)|(5,5000)
	%% 即大于等于5人时，为50%
	%% 采集时间=Col_Time[Collection_1_采集物]*时间缩放，向上取整
	%% 个人单个采集开始后，时间不用变。
	collectionTime,
	%% 采集关专用
	%% 采集物区域的位置列表
	%% (坐标,z坐标,朝向)
	collectionPos1,
	%% 小怪关
	%% ·进入地图人数越多，打怪的速度越快，通过buff实现
	%% ·（人数，buff-ID）
	%% 人数：同公会成员同时进入地图的人数，人数变化及时刷新buff，
	%% 人数，向后取。
	%% （2,1001）|（5,100）
	%% 2-4人：1001buff
	%% ≥5人：1002buff
	%% buff加到公会成员生效，在当前地图生效，具体由数值设计，这里buff定位伤害加成属性buff
	monsterEfficiency,
	%% 福利关专用
	%% 福利关类型
	%% 1.宝箱
	%% 2.打木桩
	%% 3.变身打怪
	%% 4.收集
	welfareType,
	%% 福利关专用
	%% 根据 WelfareType 不同填入不同的参数
	%% 1.(宝箱ID，X坐标，Z坐标，朝向)
	%% 2.(怪物ID，X坐标，Z坐标，朝向)
	%% 3.(BUFFid,0,0,0)
	%% 4.(采集物ID，X坐标，Z坐标，朝向)
	welfareBorn,
	%% 福利关专用
	%% 奖励标准值
	%% 达到标准值则为100%的奖励
	%% 标准值根据 WelfareType 不同，含义不同
	standardValues,
	%% 福利关专用
	%% 奖励道具
	%% 玩家达到奖励标准值则可获得全额奖励
	%% 未达到时按百分比换算
	welfareReward,
	%% 迷宫关专用
	%% 正确路线序号
	%% triggerid序号|triggerid序号
	rightWay,
	%% 是否可以被标记
	%% 0.不可以
	%% 1.可以
	isMark,
	%% 是否可以重复挑战
	%% 0.不可以
	%% 1.可以
	isRepeat,
	%% 关卡图标
	nodeImage,
	%% 关卡详情页描述
	nodeDes,
	%% 迷宫地图资源
	%% 仅跑酷关使用
	mazeMap
}).

-endif.
