-ifndef(cfg_firstCharge_hrl).
-define(cfg_firstCharge_hrl, true).

-record(firstChargeCfg, {
	%% 首充奖励档位ID
	iD,
	%% 服务器组
	%% 含义修改为：
	%% 1、0.99直购版本的首充
	%% 2、4档位本的首充
	serverGroup,
	%% 索引
	index,
	%% 首充奖励
	%% （职业，掉落ID，掉落是否绑定,掉落数量，掉落概率）
	%% 职业：0=所有职业的人均可获得该掉落，1004=战士，1005=法师，1006=弓手.（如果是职业一的人，不会掉落职业二的奖励，但是可以获得不分职业的奖励）
	%% 掉落ID：读取[DropItem]的ID
	%% 掉落是否绑定：0为非绑 1为绑定
	%% 掉落数量为掉落包的个数，开启时每个包独立开启
	%% 掉落概率值为万分比，上限为10000，下限为0
	%% 首充改版：可连续几天领取奖励；
	%% 该版后，废弃原奖励及展示字段，使用“天数-奖励编号”对应新表“FirstChargeAward_1_首充奖励”
	award,
	%% 首充后，可连续几天领奖
	%% (天数，奖励编号）
	%% 天数：1为充值当天，24点重置天数
	%% 奖励编号：对应“FirstChargeAward_1_首充奖励”的ID
	%% 领奖天数不要超过31天，涉及到后端功能实现机制问题
	awardNum,
	%% 首充档位
	%% 直购商品ID
	directPurchase,
	%% 货币奖励
	%% (货币ID，数量）
	reward,
	%% 额外赠送道具
	%% (序号，职业，类型，物品ID，装备品质，装备星级，是否绑定，数量，是否大奖）
	%% 职业：0=所有职业，1004=战士，1005=法师，1006=弓手，1007=魔剑
	%% 类型：1=道具，2=货币，3=装备
	%% 非装备时品质星级为0
	%% 是否绑定：0为非绑   1为绑定
	%% 是否大奖：0为非大奖  1为大奖
	awardExtra,
	%% 额外VIP经验
	%% （备注：全局表需要对应处理：shouchongVIP和shouchongVIP_Max，对应首充VIP展示最小值和最大值)
	vIPExpAward
}).

-endif.
