-ifndef(cfg_meleeScore_hrl).
-define(cfg_meleeScore_hrl, true).

-record(meleeScoreCfg, {
	%% 积分段ID
	iD,
	%% 积分参数
	%% 为积分段，达到该积分服务器就立即发奖励给玩家；
	%% 积分参数从小到大往下配置；
	param,
	%% 奖励序号
	%% （服务器类型，世界等级，奖励序号）
	%% 服务器类型：0不论单服和联服，1单服，2联服
	%% 世界等级：为世界等级段，如以下举例
	%% 奖励序号：序号不能重复
	%% （1,1,1)|(1,100,2)|(2,1,3)|(2,150,4)表示：
	%% 单服，世界等级1-99时，读取奖励序号为1的奖励；
	%% 单服，世界等级100级及以上时，读取奖励序号为2的奖励；
	%% 联服，世界等级1-99时，读取奖励序号为3的奖励；
	%% 单服，世界等级100级及以上时，读取奖励序号为4的奖励
	%% （0,1,1)表示：不论单服和联服，世界等级>=1时，都读取序号为1的奖励.
	orderReward,
	%% 积分奖
	%% （奖励序号，职业，类型，类型ID，掉落是否绑定,掉落数量）
	%% 奖励序号：OrderReward字段的奖励序号
	%% 职业：0=所有职业的人均可获得该掉落，1004=战士，1005=法师，1006=弓手.（如果是职业一的人，不会掉落职业二的奖励，但是可以获得不分职业的奖励）
	%% 类型1：道具，类型ID为道具ID
	%% 类型2：货币，类型ID为货币ID
	%% 掉落是否绑定：0为非绑 1为绑定（货币没有绑定或非绑的说法）
	%% 掉落数量：奖励道具的数量
	awardBoxNew
}).

-endif.
