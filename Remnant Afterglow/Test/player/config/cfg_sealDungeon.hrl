-ifndef(cfg_sealDungeon_hrl).
-define(cfg_sealDungeon_hrl, true).

-record(sealDungeonCfg, {
	%% ID
	%% LevelSeal中的等级封印id
	iD,
	%% 封印副本类型
	%% 1：副本类型1（主要产出经验）
	%% 2：副本类型2（主要产出材料）
	type,
	%% 地图横坐标
	coordinateX,
	%% 地图纵坐标
	coordinateY,
	%% 索引
	index,
	%% 是否是出生点
	%% 1：是
	%% 0：否
	bornPoint,
	%% 地图连通规则
	%% 1：向左连通（横坐标-1）
	%% 2：向右连通（横坐标+1）
	%% 3：向下连通（纵坐标-1）
	%% 4：向上连通（纵坐标+1）
	connectRule,
	%% 房间玩法类型枚举
	%% 1：击杀普通怪
	%% 2：击杀精英怪
	%% 3：黄金宝箱
	%% 4：白银宝箱
	%% 5：体力采集
	%% 6：BOSS房间
	%% 0：出生点
	roomType,
	%% 房间玩法对应地图ID
	%% 2490001	小怪
	%% 2490002	精英怪
	%% 2490003	BOSS1
	%% 2490004	BOSS2
	%% 2490005	BOSS3
	%% 2490006	黄金宝箱
	%% 2490007	白银宝箱
	%% 2490008	体力收集
	mapType,
	%% 房间经验奖励
	%% 房间类型=1、2
	%% （参数1，参数2）任务经验
	%% 填“0”表示：该任务没有任务经验
	%%  参数1=1时，固定经验，获得经验=参数2
	%%  参数1=2时，动态经验，获得经验=参数2*玩家等级对应获得经验标准值
	%% 玩家等级对应获得经验标准值：配置在ExpDistribution表中StandardEXP字段中
	exp,
	%% 房间恢复体力
	%% 房间类型=5
	strength,
	%% 房间道具奖励
	%% （类型，道具ID，掉落数量）
	%% 类型1：道具，类型ID为道具ID
	%% 类型2：货币，类型ID为货币ID
	%% 掉落数量：奖励道具的数量
	reward,
	%% 开启房间消耗体力
	unlockStrength
}).

-endif.
