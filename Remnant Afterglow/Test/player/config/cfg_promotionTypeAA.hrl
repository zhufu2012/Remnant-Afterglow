-ifndef(cfg_promotionTypeAA_hrl).
-define(cfg_promotionTypeAA_hrl, true).

-record(promotionTypeAACfg, {
	%% 商品ID
	iD,
	%% 开服礼包 广告语
	adverName,
	%% 开服礼包 广告语
	%% 英语
	adverName_EN,
	%% 开服礼包 广告语
	%% 印尼语
	adverName_IN,
	%% 开服礼包 广告语
	%% 泰语
	adverName_TH,
	%% 礼包 包装名称
	name,
	%% 礼包 包装名称
	%% 英语
	name_EN,
	%% 礼包 包装名称
	%% 印尼语
	name_IN,
	%% 礼包 包装名称
	%% 泰语
	name_TH,
	%% 礼包 包装描述
	discribe,
	%% 礼包 包装描述
	%% 英语
	discribe_EN,
	%% 礼包 包装描述
	%% 印尼语
	discribe_IN,
	%% 礼包 包装描述
	%% 泰语
	discribe_TH,
	%% 礼包底图
	packImage,
	%% 出售物品：
	%% (序号，职业，物品类型，物品ID，物品数量，是否绑定，是否显示转圈特效，装备品质，装备星级)
	%% 1、序号，从1开始,1默认为最突出那个,同职业中序号填不一样的
	%% 2、职业ID：1004战 1005法 1006弓 1007魔剑
	%% 3、物品类型：1道具，2货币，3装备
	%% 4、物品ID：对应ID
	%% 5、物品数量：对应数量
	%% 6、是否绑定：0.非绑  1.绑定
	%% 7、是否显示转圈特效：1.显示  0.不显示
	%% 8、装备品质、星级：是装备就填，不是装备默认填0.
	item,
	%% 大奖预览界面奖励模型的参数配置
	%% （职业，模型ID，缩放，表现方式,位置X,位置Y，位置Z,旋转X，旋转Y，旋转Z）
	%% 缩放：100表示缩放的100%
	%% 表现方式：
	%% 0 无表现
	%% 1 可旋转
	%% 2 上下浮动
	%% 3 自转
	openServiceShow,
	%% 货币消耗
	%% (购买货币类型,价格)
	currType,
	%% 礼包折扣万分比
	%% 礼包原价=货币消耗/活动折扣百分比
	discount,
	%% 限购
	%% (类型，参数1，参数2）
	%% 填0：表示不限购
	%% 类型1：个人每日限购，参数1=限购次数，参数2=0；
	%% 类型2：个人活动期间限购，参数1=限购次数，参数2=0；
	limit,
	%% 可购买条件
	%% （条件，参数）
	%% 0.代表无需条件
	%% 1.玩家等级，参数=对应等级
	%% 2、vip等级，参数=对应等级
	conditionType,
	%% 可显示条件
	%% （条件，参数）
	%% 0.代表无需条件
	%% 1.玩家等级，参数=对应等级
	%% 2、vip等级，参数=对应等级
	showType,
	%% 购买后是否公告
	%% 1：是  0：否
	notice
}).

-endif.
