-ifndef(cfg_longHuiPromotionTypeX2_hrl).
-define(cfg_longHuiPromotionTypeX2_hrl, true).

-record(longHuiPromotionTypeX2Cfg, {
	%% ID
	iD,
	%% 龙徽等级
	lv,
	index,
	%% 升至下一级所需经验
	exp,
	%% 精英版奖励
	%% 装备
	%% （职业，装备ID，品质，星级，是否绑定，数量，展示排序)
	%% 职业：0=所有职业的人均可看到该，1004=战士，10005=法师，1006=弓手.（如果是职业一的人，不会看到职业二的奖励，但是可以获得不分职业的奖励）
	%% 是否绑定：0为非绑 1为绑定
	%% AwardEquip1与AwardItem1为一组
	%% 填0表示该等级无奖励
	%% 精英版一个等级最多配置1种奖励
	%% 展示排序：用于大奖界面的进阶奖励展示排序，值大的在前
	awardEquip1,
	%% 精英版奖励
	%% 道具/货币
	%% (职业,类型，物品ID，是否绑定，数量，展示排序)
	%% 职业：0=所有职业的人均可获得该掉落，1004=战士，10005=法师，1006=弓手.（如果是职业一的人，不会掉落职业二的奖励，但是可以获得不分职业的奖励）
	%% 类型：1为道具，填写道具ID；
	%% 2为货币，填写货币枚举；
	%% 是否绑定：0为非绑 1为绑定
	%% AwardEquip1与AwardItem1为一组
	%% 填0表示该等级无奖励
	%% 精英版一个等级最多配置1种奖励
	%% 展示排序：用于大奖界面的进阶奖励展示排序，值大的在前
	awardItem1,
	%% 精英版奖励
	%% 每日限制声望上限增加值
	%% 限制声望ID：33
	%% （配置成累计）
	prestigeLimit1,
	%% 精英版奖励
	%% 协助限制声望加成
	%% 填：百分比
	%% （配置成累计）
	prestigeUp1,
	%% 精英版奖励
	%% 经验加成奖励
	%% 填：buff ID
	%% 杀怪经验buff
	%% （经验buff替换）
	expUp1,
	%% 进阶版奖励
	%% 装备
	%% （职业，装备ID，品质，星级，，是否绑定，数量，展示排序)
	%% 职业：0=所有职业的人均可看到该，1004=战士，10005=法师，1006=弓手.（如果是职业一的人，不会看到职业二的奖励，但是可以获得不分职业的奖励）
	%% 是否绑定：0为非绑 1为绑定
	%% AwardEquip2与AwardItem2为一组
	%% 填0表示该等级无奖励
	%% 进阶版一个等级最多配置2种奖励
	%% 展示排序：用于大奖界面的进阶奖励展示排序，值大的在前
	awardEquip2,
	%% 进阶版奖励
	%% 道具/货币
	%% (职业,类型，物品ID，是否绑定，数量，展示排序)
	%% 职业：0=所有职业的人均可获得该掉落，1004=战士，10005=法师，1006=弓手.（如果是职业一的人，不会掉落职业二的奖励，但是可以获得不分职业的奖励）
	%% 类型：1为道具，填写道具ID；
	%% 2为货币，填写货币枚举；
	%% 是否绑定：0为非绑 1为绑定
	%% AwardEquip2与AwardItem2为一组
	%% 填0表示该等级无奖励
	%% 进阶版一个等级最多配置2种奖励
	%% 展示排序：用于大奖界面的进阶奖励展示排序，值大的在前
	awardItem2,
	%% 进阶版奖励
	%% 每日限制声望上限增加值
	%% 限制声望ID：33
	prestigeLimit2,
	%% 进阶版奖励
	%% 协助限制声望加成
	%% 填：百分比
	prestigeUp2,
	%% 进阶版奖励
	%% 经验加成奖励
	%% 填：buff ID
	%% 杀怪经验buff
	expUp2,
	%% 至尊进阶版奖励
	%% 装备
	%% （职业，装备ID，品质，星级，是否绑定，数量，展示排序)
	%% 职业：0=所有职业的人均可看到该，1004=战士，10005=法师，1006=弓手.（如果是职业一的人，不会看到职业二的奖励，但是可以获得不分职业的奖励）
	%% 是否绑定：0为非绑 1为绑定
	%% AwardEquip3与AwardItem3为一组
	%% 填0表示该等级无奖励
	%% 至尊进阶版一个等级最多配置2种奖励
	%% 展示排序：用于大奖界面的进阶奖励展示排序，值大的在前
	awardEquip3,
	%% 至尊进阶版奖励
	%% 道具/货币
	%% (职业,类型，物品ID，是否绑定，数量，展示排序)
	%% 职业：0=所有职业的人均可获得该掉落，1004=战士，10005=法师，1006=弓手.（如果是职业一的人，不会掉落职业二的奖励，但是可以获得不分职业的奖励）
	%% 类型：1为道具，填写道具ID；
	%% 2为货币，填写货币枚举；
	%% 是否绑定：0为非绑 1为绑定
	%% AwardEquip3与AwardItem3为一组
	%% 填0表示该等级无奖励
	%% 至尊进阶版一个等级最多配置2种奖励
	%% 展示排序：用于大奖界面的进阶奖励展示排序，值大的在前
	awardItem3,
	%% 至尊进阶版励
	%% 每日限制声望上限增加值
	%% 限制声望ID：33
	prestigeLimit3,
	%% 至尊进阶版励
	%% 协助限制声望加成
	%% 填：百分比
	prestigeUp3,
	%% 至尊进阶版励
	%% 经验加成奖励
	%% 填：buff ID
	%% 杀怪经验buff
	expUp3,
	%% 大奖是否预览
	%% 1.是
	%% 0.否
	%% 初始只预览精英版和进阶版
	show
}).

-endif.
