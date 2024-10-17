-ifndef(cfg_promotionTypeAD_hrl).
-define(cfg_promotionTypeAD_hrl, true).

-record(promotionTypeADCfg, {
	%% 活动ID
	%% PB表类型：125
	iD,
	%% 商品ID
	num,
	index,
	%% 玩家等级区间
	%% （最小等级，最大等级）
	%% 区间取相等
	%% 最大等级填0，表示：直达目前游戏的最大等级
	lv,
	%% 礼包 包装名称
	name,
	%% 礼包 包装名称
	name_EN,
	%% 礼包 包装名称
	name_IN,
	%% 礼包 包装名称
	name_TH,
	%% 出售物品：
	%% (序号，职业，物品类型，物品ID，物品数量，是否绑定，是否显示转圈特效，装备品质，装备星级)
	%% 1、序号，从1开始,1默认为最突出那个,同职业中序号填不一样的
	%% 2、职业ID：1004战 1005法 1006弓 1007魔剑
	%% 3、物品类型：1道具，2货币，3装备
	%% 4、物品ID：对应ID
	%% 5、物品数量：对应数量
	%% 6、是否绑定：0.非绑  1.绑定
	%% 7、是否显示转圈特效：1.显示  0.不显示
	%% 8、装备品质，装备星级：是装备就填，不是装备默认填0.
	item,
	%% 货币消耗
	%% (购买货币类型,价格)
	currType,
	%% 直购商品ID
	%% 货币消耗或者直购商品ID只能配置其中一个
	%% 价格：
	%% DISCODE1
	%% DISCODE2
	%% DISCODE3
	%% …
	%% DISCODE11
	directPurchase,
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
	%% 限购内容品质
	%% 1：低品质
	%% 2：中品质
	%% 3：高品质
	character,
	%% 购买后是否公告
	notice
}).

-endif.
