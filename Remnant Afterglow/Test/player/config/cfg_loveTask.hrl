-ifndef(cfg_loveTask_hrl).
-define(cfg_loveTask_hrl, true).

-record(loveTaskCfg, {
	%% 作者:
	%% 任务ID
	iD,
	%% 作者:
	%% 0为不可重置
	%% 1为每日重置
	resetType,
	%% 作者:
	%% 完成条件
	%% {条件，参数}
	%% 所有完成条件必须与仙侣互动
	%% 条件：
	%% 1为仙侣副本(仙侣参加),参数：挑战次数
	%% 2为送花（送仙侣）,参数：送花次数
	%% 3为约会（仙侣参加），参数：完成次数
	%% 4为2V2仙侣(仙侣参加),参数：挑战次数【D2暂时没有】
	%% 5为亲密度等级（自己和仙侣达到才算，获得称号永久获得，获得后亲密度降了或者离婚，称号一样在），参数：亲密度等级
	%% 6为个人获得中式婚礼时装件数，参数：时装件数；客户端不显示此条件到界面内
	%% 7为夫妻双方都拥有中式婚礼时装件数，参数：时装件数；客户端不显示此条件到界面内
	condPara,
	%% 作者:
	%% {奖励类型,参数1,参数2}
	%% 类型：
	%% 1为物品，参数1为道具ID，参数2为数量
	%% 2为货币，参数1为货币ID，参数2为数量
	%% 3为亲密度,参数1为亲密度值
	awardPara,
	%% 作者:
	%% 奖励称号，填写称号ID
	%% 0就是没有奖励
	awardTitle,
	%% 奖励：
	%% （职业，类型，类型ID，掉落是否绑定,掉落数量）
	%% 职业：0=所有职业的人均可获得该掉落，1004=战士，1005=法师，1006=弓手.（如果是职业一的人，不会掉落职业二的奖励，但是可以获得不分职业的奖励）
	%% 类型1：道具，类型ID为道具ID
	%% 类型2：货币，类型ID为货币ID
	%% 掉落是否绑定：0为非绑 1为绑定（货币没有绑定或非绑的说法）
	%% 掉落数量：奖励道具的数量
	award
}).

-endif.
