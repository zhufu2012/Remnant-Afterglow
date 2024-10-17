-ifndef(cfg_rouletteNew_hrl).
-define(cfg_rouletteNew_hrl, true).

-record(rouletteNewCfg, {
	%% 寻宝分类
	%% 1装备寻宝
	%% 2龙印寻宝
	%% 3坐骑寻宝
	%% 4翅膀寻宝
	%% 5魔宠寻宝
	%% 6巅峰寻宝（2019/5/10添加)
	%% D2X新增
	%% 7圣纹寻宝
	%% 8神兵寻宝
	%% 9神魂寻宝
	%% 10至尊寻宝
	%% 11神翼寻宝
	%% 12圣装寻宝
	%% D3新增：
	%% 13宝石寻宝
	%% 14卡片寻宝
	%% 15黄金寻宝
	%% 16坐骑装备寻宝
	%% 17远征寻宝（泰坦寻宝）
	%% 18坐骑装备寻宝
	type,
	%% ID=1时,为等级；
	%% ID=2时,为转生数；
	%% ID=3时,为等级；
	%% ID=4时,为等级；
	%% ID=4时,为等级；
	%% ID=14时，为转生数；
	%% ID=17时，为远征赛季ID
	%% 需要达到相应的等级才升级下一个寻宝ID,或达到相应的龙神塔层数才升级到下一个寻宝ID
	%% 需要达到相应的转生数才升级下一个寻宝ID，例如：参数=3时，表示转生数3可升级到该寻宝ID
	%% 向前取最近的玩家等级；
	%% 向前取最近的龙神塔层数；向前取最近的玩家转生数；
	levelLimit,
	%% 轮换ID
	%% 大奖的轮换用
	%% D2X新增
	award2,
	%% 作者:
	%% 客户端索引
	index,
	%% 规则说明文字读取文字表字段
	xunbao_text,
	%% 寻宝界面标题
	%% D2X新增
	%% （后端读取）
	xunbao_title,
	%% 寻宝界面额外赠送文字说明
	%% D2X新增
	xunbao_Doc,
	%% 寻宝界面10连抽必得道具展示
	xunbao_Show,
	%% 龙印寻宝增加等级限制
	%% Type=2时,该字段才有用；
	%% Type=其他时,这个字段配0,没用.
	lvLimit,
	%% 消耗道具ID
	%% 消耗道具则不消耗货币
	%% 消耗货币则不消耗道具
	consItem,
	%% 消耗通用道具ID
	%% 此处填写通用寻宝道具ID
	%% 消耗道具则不消耗货币
	%% 消耗货币则不消耗道具
	consItem2,
	%% 免费寻宝时间间隔(s)
	%% 填“0”表示：没有免费寻宝
	freeOnce,
	%% 连抽档次
	%% （Vip等级段下限,Vip等级段上限,抽卡次数,抽卡消耗道具数量)
	%% D2X新增字段
	%% 做好后删除ConsNumb和ConsNumTen字段
	%% Vip等级段上限：配置为0时，表示无限大的V
	%% (0,6,1,1)|(0,6,10,10)|
	%% (7,9,1,1)|(7,9,10,10)|(7,9,50,50)|
	%% (10,15,1,1)|(10,15,10,10)|(10,15,100,100)
	%% V0-V6：单抽、10连抽
	%% V7-V9：单抽、10连抽、50连抽
	%% V10-V15：单抽、10连抽、100连抽
	numb,
	%% 单次寻宝
	%% 消耗道具数量
	%% (废弃的）
	consNumb,
	%% 十连抽寻宝
	%% 消耗道具数量
	%% (废弃的）
	consNumTen,
	%% 固定产出物品和货币
	%% (职业,类型,类型ID,是否绑定,数量)
	%% 职业：0=所有职业的人均可获得该掉落,1004=战士,1005=法师,1006=弓手.(如果是职业一的人,不会掉落职业二的奖励,但是可以获得不分职业的奖励)
	%% 类型1：道具,类型ID为道具ID
	%% 类型2：货币,类型ID为货币ID
	%% 是否绑定：0为非绑 1为绑定(货币没有绑定或非绑的说法)
	%% 数量：奖励道具的数量
	item,
	%% 玩家个人第一次寻宝掉用掉落ID
	%% （职业,掉落ID,是否绑定)
	%% 特殊：不计入正常积分、不计入正常次数
	%% 职业：
	%% 0,所有职业,1004战士,1005法师,1006弓手
	%% 是否绑定：0非绑,1绑定
	firstTime,
	%% 玩家个人第二次寻宝掉用掉落ID
	%% （职业,掉落ID,是否绑定)
	%% 特殊：不计入正常积分、不计入正常次数
	%% 职业：
	%% 0,所有职业,1004战士,1005法师,1006弓手
	%% 是否绑定：0非绑,1绑定
	secondTime,
	%% 第1次点击“寻宝10次”时出该字段
	%% 玩家个人第一次使用10次寻宝掉用掉的落ID
	%% （职业,掉落ID,是否绑定)
	%% 职业：
	%% 0,所有职业,1004战士,1005法师,1006弓手
	%% 是否绑定：0非绑,1绑定
	firstTenTime,
	%% 第1次点击“寻宝20次”时出该字段
	%% 玩家个人第一次使用20次寻宝掉用掉的落ID
	%% （职业,掉落ID,是否绑定)
	%% 职业：
	%% 0,所有职业,1004战士,1005法师,1006弓手
	%% 是否绑定：0非绑,1绑定
	%% D2X新增字段
	firstDoubleTenTime,
	%% 第1次点击“寻宝30次”时出该字段
	%% 玩家个人第一次使用30次寻宝掉用掉的落ID
	%% （职业,掉落ID,是否绑定)
	%% 职业：
	%% 0,所有职业,1004战士,1005法师,1006弓手
	%% 是否绑定：0非绑,1绑定
	%% D2X新增字段
	thirtyTime,
	%% 第1次点击“寻宝50次”时出该字段
	%% 玩家个人第一次使用50次寻宝掉用掉的落ID
	%% （职业,掉落ID,是否绑定)
	%% 职业：
	%% 0,所有职业,1004战士,1005法师,1006弓手
	%% 是否绑定：0非绑,1绑定
	%% D2X新增字段
	fiftyTime,
	%% 第1次点击“寻宝10次”时奖励预览
	%% （职业,类型,类型ID,品质,星级,是否绑定,数量)
	%% 职业：0=所有职业的人均可获得该掉落,1004=战士,1005=法师,1006=弓手.(如果是职业一的人,不会掉落职业二的奖励,但是可以获得不分职业的奖励)
	%% 类型1：道具,类型ID为道具ID,品质星级默认为0
	%% 类型2：货币,类型ID为货币ID,品质星级默认为0
	%% 类型3：装备,类型ID为装备ID
	%% 品质：0白1蓝2紫3橙4红5粉6神
	%% 星级：0-3
	%% 是否绑定：0为非绑 1为绑定(货币没有绑定或非绑的说法)
	%% 数量：奖励道具的数量
	%% D2X新增字段
	firstTenTimeShow,
	%% 第1次点击“寻宝20次”时奖励预览
	%% （职业,类型,类型ID,品质,星级,是否绑定,数量)
	%% 职业：0=所有职业的人均可获得该掉落,1004=战士,1005=法师,1006=弓手.(如果是职业一的人,不会掉落职业二的奖励,但是可以获得不分职业的奖励)
	%% 类型1：道具,类型ID为道具ID,品质星级默认为0
	%% 类型2：货币,类型ID为货币ID,品质星级默认为0
	%% 类型3：装备,类型ID为装备ID
	%% 品质：0白1蓝2紫3橙4红5粉6神
	%% 星级：0-3
	%% 是否绑定：0为非绑 1为绑定(货币没有绑定或非绑的说法)
	%% 数量：奖励道具的数量
	%% D2X新增字段
	firstDoubleTenTimeShow,
	%% 第1次点击“寻宝30次”时奖励预览
	%% （职业,类型,类型ID,品质,星级,是否绑定,数量)
	%% 职业：0=所有职业的人均可获得该掉落,1004=战士,1005=法师,1006=弓手.(如果是职业一的人,不会掉落职业二的奖励,但是可以获得不分职业的奖励)
	%% 类型1：道具,类型ID为道具ID,品质星级默认为0
	%% 类型2：货币,类型ID为货币ID,品质星级默认为0
	%% 类型3：装备,类型ID为装备ID
	%% 品质：0白1蓝2紫3橙4红5粉6神
	%% 星级：0-3
	%% 是否绑定：0为非绑 1为绑定(货币没有绑定或非绑的说法)
	%% 数量：奖励道具的数量
	%% D2X新增字段
	thirtyTimeShow,
	%% 第1次点击“寻宝50次”时奖励预览
	%% （职业,类型,类型ID,品质,星级,是否绑定,数量)
	%% 职业：0=所有职业的人均可获得该掉落,1004=战士,1005=法师,1006=弓手.(如果是职业一的人,不会掉落职业二的奖励,但是可以获得不分职业的奖励)
	%% 类型1：道具,类型ID为道具ID,品质星级默认为0
	%% 类型2：货币,类型ID为货币ID,品质星级默认为0
	%% 类型3：装备,类型ID为装备ID
	%% 品质：0白1蓝2紫3橙4红5粉6神
	%% 星级：0-3
	%% 是否绑定：0为非绑 1为绑定(货币没有绑定或非绑的说法)
	%% 数量：奖励道具的数量
	%% D2X新增字段
	fiftyTimeShow,
	%% 特殊条件掉落
	%% （职业,掉落ID,是否绑定,万分比概率,所需累计个人次数)
	%% 职业：0,所有职业,1004战士,1005法师,1006弓手；
	%% 是否绑定：0非绑,1绑定；
	%% 所需累计个人次数：累计次数达到才有机会出该掉落,累计次数绑定到个人的该掉落ID上,如果随中,个人的该掉落ID的累计次数清0,重新计次数.
	%% 根据配置的顺序依次判断每组数据是否通过对应概率出奖,从配置的从前往后的顺序依次判断（理论上价值越高的物品会配置在前面),如果其中一组数据随中了,那么本次抽奖结束,如果全没中,那么在普通掉落中根据权值出结果.
	specWeight,
	%% 单次抽卡增加全服幸运值
	%% 0表示无幸运值增加
	%% D2X新增字段
	allLuck,
	%% 全服幸运值上限
	%% D2X新增字段
	allLuckMax,
	%% 特殊条件掉落概率增加
	%% （职业,掉落包ID,是否绑定,增加的概率万分比,倍数)
	%% 倍数：前端显示用,为玩家看到的倍数显示,前端处理成百分比形式
	%% D2X字段新增
	weightAdd,
	%% 单次抽卡增加个人幸运值
	%% 0表示无幸运值增加
	%% D2X新增字段
	luck,
	%% 个人幸运值上限
	%% D2X新增字段
	luckMax,
	%% 幸运值达到上限触发掉落
	%% （职业,掉落ID,是否绑定,万分比权重)
	%% 职业：0,所有职业,1004战士,1005法师,1006弓手；
	%% 是否绑定：0非绑,1绑定；
	%% D2X字段新增
	luckWeight,
	%% 普通掉落
	%% （职业,掉落ID,是否绑定,权值)
	commWeight,
	%% 累计十连抽掉落
	%% （职业,掉落ID,是否绑定,权值)
	tenWeight,
	%% 累计二十连抽掉落
	%% （职业,掉落ID,是否绑定,权值)
	doubleTenWeight,
	%% 累计三十连抽掉落
	%% （职业,掉落ID,是否绑定,权值)
	%% D2X新增
	thirtyWeight,
	%% 累计五十连抽掉落
	%% （职业,掉落ID,是否绑定,权值)
	%% D2X新增
	fiftyWeight,
	%% 滚动装备显示预览
	%% (职业,装备ID,装备品质,装备星级,是否绑定)
	%% 职业：0=所有职业的人均可看到该,1004=战士,10005=法师,1006=弓手.(如果是职业一的人,不会看到职业二的奖励,但是可以获得不分职业的奖励)
	%% 品质0白1蓝2紫3橙4红5粉6神
	%% 星级0-3
	%% 掉落是否绑定：0为非绑 1为绑定,货币不使用此参数
	%% 该字段只是前端显示装备奖励使用
	%% 预览规则：先显现装备预览,在其他预览,列表中从左至右依次显示
	rollingEquipShow,
	%% 滚动道具/货币预览
	%% (职业,类型,类型ID,是否绑定,数量)
	%% 职业：0=所有职业的人均可获得该掉落,1004=战士,1005=法师,1006=弓手.(如果是职业一的人,不会掉落职业二的奖励,但是可以获得不分职业的奖励)
	%% 类型1：道具,类型ID为道具ID
	%% 类型2：货币,类型ID为货币ID
	%% 是否绑定：0为非绑 1为绑定(货币没有绑定或非绑的说法)
	%% 数量：奖励道具的数量（预览不显示具体数量,默认填0)
	rollingItemShow,
	%% 大奖预览（D3新增）
	%% (类型,类型ID,数量,装备品质,装备星级)
	%% 类型1：道具,类型ID为道具ID
	%% 类型2：货币,类型ID为货币ID
	%% 数量：奖励道具的数量（预览不显示具体数量,默认填0)
	awardShow,
	%% 全部预览
	%% 所有装备显示预览
	%% (职业,装备ID,装备品质,装备星级,是否绑定,是否兑换获得)
	%% 职业：0=所有职业的人均可看到该,1004=战士,10005=法师,1006=弓手.(如果是职业一的人,不会看到职业二的奖励,但是可以获得不分职业的奖励)
	%% 品质0白1蓝2紫3橙4红5粉6神
	%% 星级0-3
	%% 掉落是否绑定：0为非绑 1为绑定,货币不使用此参数
	%% 该字段只是前端显示装备奖励使用
	%% 是否兑换获得：1是（有文字标识），0否。
	equipShow,
	%% 符文寻宝展示预览专用
	%% 符文评分，序号
	showNum,
	%% 全部预览
	%% (序号，职业,类型,类型ID,是否绑定,数量,是否兑换获得)
	%% 职业：0=所有职业的人均可获得该掉落,1004=战士,1005=法师,1006=弓手.(如果是职业一的人,不会掉落职业二的奖励,但是可以获得不分职业的奖励)
	%% 类型1：道具,类型ID为道具ID
	%% 类型2：货币,类型ID为货币ID
	%% 是否绑定：0为非绑 1为绑定(货币没有绑定或非绑的说法)
	%% 数量：奖励道具的数量（预览不显示具体数量,默认填0)
	%% 是否兑换获得：1是（有文字标识），0否。
	itemShow,
	%% 界面奖励
	%% （序号,职业,类型,类型ID,品质,星级,是否绑定,数量,是否有转圈特效)
	%% 序号：1-5指大奖,6及以上指普通奖励
	%% 职业：0=所有职业的人均可获得该掉落,1004=战士,1005=法师,1006=弓手.(如果是职业一的人,不会掉落职业二的奖励,但是可以获得不分职业的奖励)
	%% 类型1：道具,类型ID为道具ID,品质星级默认为0
	%% 类型2：货币,类型ID为货币ID,品质星级默认为0
	%% 类型3：装备,类型ID为装备ID
	%% 品质：0白1蓝2紫3橙4红5粉6神
	%% 星级：0-3
	%% 是否绑定：0为非绑 1为绑定(货币没有绑定或非绑的说法)
	%% 数量：奖励道具的数量（预览不显示具体数量,默认填0)
	%% D2X新增字段
	show,
	%% 热点奖励
	%% 类型|参数,次数ID1|次数ID2|…|次数Idn
	%% 类型=1表示：按周重置；
	%% 参数为周几,1表示周一,2表示周二,…,0表示周天(周内某一天的0点)；
	%% 类型=2表示：按天重置；
	%% 参数为第几天重置一次
	%% 同一种寻宝的热点类型只能填一种；
	%% 次数ID循环读取 [RouletteTime_1_寻宝热点ID]
	awardTime,
	%% 大奖轮换奖励
	%% 类型|参数,次数ID1|次数ID2|…|次数Idn
	%% 类型=1表示：按周重置；
	%% 参数为周几,1表示周一,2表示周二,…,0表示周天(周内某一天的0点)；
	%% 类型=2表示：按天重置；
	%% 参数为第几天重置一次
	%% D2X新增
	awardTime2,
	%% 【RouletteTimeItem_1_多次寻宝必定获得】的ID
	%% 没有填“0”
	rouletteTimeItemID,
	%% RouletteTimeItem2_1_寻宝次数累计奖励
	rouletteTimeItem2ID,
	%% 切换积分兑换店ID
	%% 填“0”表示没有
	shopID,
	%% 奖池变更图标
	%% （直接配置图集中示意图的名称)
	%%  0表示没有
	%% 功能做好的,现在游戏中没有用,不要删除该字段
	preview,
	%% 可提前变更奖池的等级限制
	%%  
	%% 功能做好的,现在游戏中没有用,不要删除该字段
	previewLimtLv,
	%% 可按照选择表更的库的顺序
	%% 对应ParaArray1、ParaArray2、ParaArray3中数组的顺序
	%% 功能做好的,现在游戏中没有用,不要删除该字段
	changeNum,
	%% 左侧模型展示
	%% （职业,物品ID,模型ID,x轴位移,y轴位移,z轴位移,x轴旋转,y轴旋转,z轴旋转,比例)
	%% 字段配置为100倍,前端自己去除100
	%% D2X新增
	%% 1个大奖是左,两个大奖,左中,三个左中右
	modelLeft,
	%% 中间模型展示
	%% （职业,物品ID,模型ID,x轴位移,y轴位移,z轴位移,x轴旋转,y轴旋转,z轴旋转,比例)
	%% 字段配置为100倍,前端自己去除100
	%% D2X新增
	modelCentre,
	%% 右侧模型展示
	%% （职业,物品ID,模型ID,x轴位移,y轴位移,z轴位移,x轴旋转,y轴旋转,z轴旋转,比例)
	%% 字段配置为100倍,前端自己去除100
	%% D2X新增
	modelRight,
	%% 火力值界面模型1
	%% （职业,物品ID,模型ID,x轴位移,y轴位移,z轴位移,x轴旋转,y轴旋转,z轴旋转,比例)
	%% 字段配置为100倍,前端自己去除100
	%% D2X新增
	%% 1个大奖是左,两个大奖,左中,三个左中右
	modelLeft2,
	%% 火力值界面模型2
	%% （职业,物品ID,模型ID,x轴位移,y轴位移,z轴位移,x轴旋转,y轴旋转,z轴旋转,比例)
	%% 字段配置为100倍,前端自己去除100
	%% D2X新增
	%% 1个大奖是左,两个大奖,左中,三个左中右
	modelCentre2,
	%% 火力值界面模型3
	%% （职业,物品ID,模型ID,x轴位移,y轴位移,z轴位移,x轴旋转,y轴旋转,z轴旋转,比例)
	%% 字段配置为100倍,前端自己去除100
	%% D2X新增
	%% 1个大奖是左,两个大奖,左中,三个左中右
	modelRight2,
	%% 兑换商店展示模型
	%% （职业,物品ID,模型ID,x轴位移,y轴位移,z轴位移,x轴旋转,y轴旋转,z轴旋转,比例)
	%% 字段配置为100倍,前端自己去除100
	%% D2X新增
	model,
	%% 左侧特效展示
	%% D2X新增
	%% 特效类型的展示通过此字段配置
	slotLeft,
	%% 中间特效展示
	%% D2X新增
	%% 特效类型的展示通过此字段配置
	slotCentre,
	%% 右侧特效展示
	%% D2X新增
	%% 特效类型的展示通过此字段配置
	slotRight,
	%% 奖池道具卡背特效
	%% （道具id，最小道具数量,最大道具数量，特效序号)
	%% 特效序号=1时，为低重要度，蓝色特效；
	%% 特效序号=2时，为中重要度，紫色特效；
	%% 特效序号=3时，为高重要度，橙色特效
	effects,
	%% 2023/2/13优化版本的寻宝览调用
	%% (类型，调用ID）
	%% RoulettePreviewBig_1_大预览
	%% 类型1：中间展示
	%% 类型2：四周环绕的展示
	%% 类型3：必得展示，有多个时根据RouletteTimeItemID字段配置的顺序对应
	previewBig
}).

-endif.
