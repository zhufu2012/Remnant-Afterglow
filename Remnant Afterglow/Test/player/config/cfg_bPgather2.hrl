-ifndef(cfg_bPgather2_hrl).
-define(cfg_bPgather2_hrl, true).

-record(bPgather2Cfg, {
	%% BP类型：
	%% 1、深渊猎魔BP
	%% 2、家园BP
	%% 3、英雄圣装评分BP
	%% 4、圣盾BP
	%% 5、圣甲BP
	iD,
	%% 序号
	%% 暂无实际作用
	%% ID=3时，为对应BP的组号，分为多组BP.
	%% ID=4时，为对应BP的组号，分为多组BP.
	%% ID=5时，为对应BP的组号，分为多组BP.
	oder,
	%% 序号2：
	%% 个人等级分段用
	oder2,
	%% 等级
	lv,
	index,
	%% 最大积分等级
	max,
	%% ID=1时，积分，累计值
	%% ID=2时，积分，累计值
	%% ID=3时，评分，达成值
	%% ID=4时，评分，达成值
	mertial,
	%% 免费奖励
	%% （职业，类型，ID，数量，品质，星级，是否绑定）
	%% 职业:0=所有职业，1004=战士，1005=法师，1006=弓手，1007=圣职
	%% 类型1=道具，ID=道具ID；
	%% 类型2=货币，ID=货币ID
	%% 类型3=装备，ID=装备ID
	%% 品质、星级：对应装备的品质和星级，其他类型无效
	%% 是否绑定：0.非绑  1.绑定
	awardItem1,
	%% 进阶奖励：
	%% （职业，类型，ID，数量，品质，星级，是否绑定）
	%% 职业:0=所有职业，1004=战士，1005=法师，1006=弓手，1007=圣职
	%% 类型1=道具，ID=道具ID；
	%% 类型2=货币，ID=货币ID
	%% 类型3=装备，ID=装备ID
	%% 品质、星级：对应装备的品质和星级，其他类型无效
	%% 是否绑定：0.非绑  1.绑定
	awardItem2,
	%% 至尊进阶奖励：
	%% （职业，类型，ID，数量，品质，星级，是否绑定）
	%% 职业:0=所有职业，1004=战士，1005=法师，1006=弓手，1007=圣职
	%% 类型1=道具，ID=道具ID；
	%% 类型2=货币，ID=货币ID
	%% 类型3=装备，ID=装备ID
	%% 品质、星级：对应装备的品质和星级，其他类型无效
	%% 是否绑定：0.非绑  1.绑定
	awardItem3
}).

-endif.
