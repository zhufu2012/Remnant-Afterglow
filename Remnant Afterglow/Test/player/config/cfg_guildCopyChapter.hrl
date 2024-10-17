-ifndef(cfg_guildCopyChapter_hrl).
-define(cfg_guildCopyChapter_hrl, true).

-record(guildCopyChapterCfg, {
	%% 章ID
	iD,
	%% 章名称
	chapterName,
	%% 章节描述
	des,
	%% 背景图片
	image,
	%% 最大章
	%% 当达到最大章后，每次重置后都是打最大章的
	maxID,
	%% 前置章节
	%% ·配0表示无前置
	%% ·需要通过前置关卡通关后下次重置才有可能重置出新的章
	%% 重置为新的章的前提条件：
	%% 1、通过前置章
	%% 2、开服时间达到开服第几周
	%% 3、重置关卡时间固定为：每周一的5:00【程序写死】
	%% 章重置逻辑举例：
	%% 1、公会副本功能开启后，该是开服第1周的周3
	%% 2、那么第1章开启，
	%% 3、第2周的周一5:00判断重置时，先判断第1章是否通过，在判断第2章的开服周配置是否达到。
	%% 4、如果两个条件都完成，那么这个重置时间点重置后为第2章；如果有1个条件未达成那么重置后还是打的1章。
	%% 5、每个服都需要按照章的顺序判断，不会跳跃章顺序ID
	%% 6、如果合服后，开服第几周，按照主服的时间来
	priorCopy,
	%% 开服第几周加入
	%% 配置：开服第几周
	%% 1，表示开服第1周
	%% 2，表示开服第2周
	week,
	%% 分配奖励2：
	%% ·随通关进度变化奖励ID，计入每周公会分配中
	%% (进度，道具ID）
	%% 进度：RateRange【GuildCopyRate_1_进度奖】进度序号
	%% 分配奖励1和2，各管各的，由有资格分配的职位进行分配，都可以分配到，各自最多可被分配1个。也可能都没被分配到。
	%% 即现在的公会分配奖励共有3种：
	%% 1、原公会的分配功能
	%% 2、公会副本，分配奖励1，FirstReward【GuildCopyNode_1_具体关卡】
	%% 3、公会副本，分配奖励2.
	firstReward,
	%% 分配奖励2，数量
	firstRewardNum,
	%% ·副本消耗公用次数ID
	%% ·配置;参数为公用次数SuitTime表ID
	consume
}).

-endif.
