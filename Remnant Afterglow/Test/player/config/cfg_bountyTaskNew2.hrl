-ifndef(cfg_bountyTaskNew2_hrl).
-define(cfg_bountyTaskNew2_hrl, true).

-record(bountyTaskNew2Cfg, {
	%% 任务ID
	%% 9999为引导任务用的特殊任务，勿删
	iD,
	%% 个人等级区间
	level,
	%% 等级区间编号
	levelSegment,
	%% 任务品质
	%% 1、1星
	%% 2、2星
	%% 3、3星
	%% 4、4星
	%% 5、5星
	taskQuality,
	%% 随机权重
	weight,
	%% 任务名称
	taskName,
	%% 任务列表上的底图
	taskPic,
	%% 任务时长（秒）
	taskTime,
	%% 快速完成任务时，消耗的货币
	%% （时间间隔，货币类型，数量）
	%% 时间间隔：秒
	%% (10,0,10):每剩余10秒消耗10钻石，不足10秒按10秒计算，计算出当前加加速完成任务的总消耗
	taskCost,
	%% 派遣要求1：
	%% （宠物品质，数量）
	%% 宠物品质：
	%% 0、白、N
	%% 1、蓝、R
	%% 2、紫、SR
	%% 3、橙、SSR
	%% 4、红、SP
	%% 5、粉、UR
	%% (3,2):本任务最低派遣SSR的宠物2个.
	fightNumber,
	%% 派遣要求2：
	%% 派遣的宠物需要包含的类别
	%% 宠物类别：
	%% 1、风元素
	%% 2、火元素
	%% 3、土元素
	fightType,
	%% 奖励：道具/货币
	%% (职业,类型,物品ID,是否绑定,数量,是否是稀有奖励)
	%% 职业：0=所有职业的人均可获得该掉落,1004=战士，1005=法师，1006=弓手.
	%% 类型：1为道具,填写道具ID,2为货币,填写货币枚举
	%% 掉落是否绑定：0为非绑 1为绑定,货币不使用此参数
	%% 是否是稀有奖励：0为非稀有奖励，1为稀有奖励，稀有奖励加转圈特效
	%% 显示和实际产出都用这个字段,按照等级和职业读取
	itemAward,
	%% 任务消耗
	%% （类型，id，数量）
	%% 1、道具
	%% 2、货币
	consume
}).

-endif.
