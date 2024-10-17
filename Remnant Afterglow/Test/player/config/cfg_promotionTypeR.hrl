-ifndef(cfg_promotionTypeR_hrl).
-define(cfg_promotionTypeR_hrl, true).

-record(promotionTypeRCfg, {
	%% 签到ID
	iD,
	%% 签到类型
	%% 1、普通签到
	%% 2、至尊签到
	type,
	%% 签到及补签条件：
	%% (第几天，签到条件类型，条件参数，补签消耗类型，消耗id，数量)
	%% 第几天：以活动开始当天为第1天，依次往后推
	%% 签到条件类型：1当日登陆游戏，参数默认0
	%%          2当日累计充值，参数为充值的钻石数
	%%          3当日累计消费非绑钻石，参数为非绑钻石数
	%%          4当日累计消费钻石，参数为钻石数（包括非绑和绑定）
	%% 补签消耗类型：1道具，2货币
	%% 消耗id：道具id或货币枚举
	%% 数量：补签消耗的数量
	signCondition,
	%% 签到奖励：
	%% (第几天，职业，奖励类型，奖励ID，品质，星级，数量，是否绑定，是否显示转圈特效，可否过期领取)
	%% 职业：0全职业，1004战士，1005法师，1006弓手
	%% 奖励类型：1道具，2货币（货币ID通用：0绑元，1铜币 … 15灵玉），3装备
	%% ID：道具装备ID或者货币枚举
	%% 品质、星级：装备填写；道具货币默认0
	%% 数量：奖励的数量
	%% 是否绑定：0非绑，1绑定
	%% 是否显示转圈特效：1显示，0不显示
	%% 可否过期领取：达成条件后未签到领奖，跨天之后是否可以直接签到领取；1可以，0不可以（补签）
	signAward,
	%% 累计签到领奖条件：
	%% (条件组，条件类型，参数1)
	%% 条件组：同组条件需都满足，不同组只需满足一组条件即可
	%% 条件类型：1活动期间累计充值，参数为充值的钻石数
	%% 2活动期间消费非绑钻石，参数为非绑钻石数
	totalSignCondition,
	%% 累计签到奖励：
	%% (累计签到天数，职业，奖励类型，奖励ID，品质，星级，数量，是否绑定，是否显示转圈特效)
	%% 累计签到天数：包括签到和补签
	totalSignAward,
	%% 签到大奖条件：
	%% (条件组，条件类型，条件参数)
	%% 完成对应所有签到时，默认激活签到大奖
	%% 条件组：同组条件需都满足，不同组只需满足一组条件即可
	%% 大奖条件类型：1活动期间累计充值，参数为充值的钻石数
	%% 2活动期间累计消费非绑钻石，参数为消费额
	%% 只配一个条件（多条件需处理）
	finalSignCondition,
	%% 签到大奖：
	%% (职业，奖励类型，奖励ID，品质，星级，数量，是否绑定，是否显示转圈特效)
	finalSignAward,
	%% 签到大奖界面奖励模型的参数配置
	%% （职业，模型ID，缩放，位置X,位置Y，位置Z,旋转X，旋转Y，旋转Z）
	%% 缩放：100表示缩放的100%
	%% 实际上，前端是通过奖励的物品id去取的模型id，这里配置的模型id没用
	model
}).

-endif.
