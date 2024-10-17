-ifndef(cfg_prophecy_hrl).
-define(cfg_prophecy_hrl, true).

-record(prophecyCfg, {
	%% ID
	%% 1.时光预言（265，287)
	%% 2.火焰预言(198,149)
	%% 3.光明预言(199,150)
	%% 4.黑暗预言(200,151)
	%% 5.寒冰预言(201,152)
	%% 6.天神预言（194,153)
	iD,
	%% 达成序号
	oder,
	%% 顺序
	num,
	%% 索引
	index,
	%% IDMAX
	iDMAX,
	%% 达成需要完成的条件
	%% (职业，条件类型，参数1，参数2，参数3，参数4，参数5）
	%% 条件类型1：主角属性，参数1=属性ID，参数2=属性值，参数3=0,4=0；
	%% 条件类型2：穿戴装备，参数1=装备阶级，参数2=装备品质，参数3=装备星级，参数4=装备部位（装备阶级1-16阶，品质0-6品对应不同颜色，部位1-10对应不同部位）；
	%% 条件类型3：打造套装，参数1=套装阶级，参数2=打造品质类型，参数3=装备部位；（打造品质1=普通，2=完美，3=传奇）
	%% 条件类型4：击杀BOSS，参数1=BOSS_ID，参数2=BOSS所在地图ID，参数3=0,4=0；（怪物预览也读取这里）【击杀BOSS类的条件需要修改书的话需要通知后端，且全部配在同一本书内】
	%% 条件类型5：杂项，
	%% 参数1=1完成首充，参数2=0，参数3=0,4=0    
	%% 参数1=2完成月卡投资，参数2=0，参数3=0,4=0
	%% 参数1=3成为VIP，参数2=VIP等级，参数3=0,4=0
	%% 参数1=4参与投资计划，参数2=0，参数3=0,4=0
	%% 参数1=5佩戴守护，参数2=守护ID，参数3=0,4=0
	%% 参数1=6完成续充，参数2=0，参数3=0,4=0
	%% 参数1=7完成终身卡，参数2=0，参数3=0,4=0
	%% 参数1=8解锁主线战令，参数2=0，参数3=0,4=0（未使用，之后新增可覆盖）
	%% 参数1=9解锁打宝战令，参数2=0，参数3=0,4=0
	%% 参数1=10解锁材料本战令，参数2=0，参数3=0,4=0
	%% 参数1=11购买直购，参数2=直购类型（1.新手礼包2.日礼包 3.周礼包 4.月礼包 5.寻宝礼包 0.任意礼包）参数3=等级段（向下取），参数4=分组编号，参数5=礼包ID 
	%% 参数1=12购买赏金特权 ，参数2=0，参数3=0,4=0
	%% 参数1=13购买成长基金，参数2=（基金类型ID,0表示任意），参数3=0,4=0
	%% 参数1=14购买VIP礼包，参数2=（具体VIP等级，0代表任意礼包），参数3=0,4=0
	%% 参数1=15购买吞噬特权，参数2=0，参数3=0,4=0
	%% 参数1=16购买觉醒之路战令，参数2=（觉醒之路的战令ID，0代表任意），参数3=0,4=0
	%% 参数1=17购买月理财，参数2=（1.30元挡位 2.98元挡位，0.任意挡位），参数3=0,4=0
	%% 条件类型6：收集养成伙伴，
	%% 参数1=1收集宠物，参数2=宠物ID，参数3=0,4=0
	%% 参数1=2收集坐骑，参数2=坐骑ID，参数3=0,4=0
	%% 参数1=3收集翅膀，参数2=翅膀ID，参数3=0,4=0
	%% 参数1=4收集圣物，参数2=圣物ID，参数3=0,4=0
	%% 参数1=5收集主战龙神，参数2=主战龙神ID，参数3=0,4=0
	%% 参数1=6收集精灵龙神，参数2=精灵龙神ID，参数3=0,4=0
	%% 参数1=7收集龙神武器，参数2=龙神武器ID，参数3=0,4=0
	%% 参数1=8收集龙神秘典，参数2=龙神秘典ID，参数3=0,4=0
	%% 条件类型7：达到技能等级
	%% 参数1=技能ID，参数2=技能等级，参数3=技能位 
	%% 条件类型8：玩法参与
	%% 参数1=赏金任务，参数2=完成次数，参数3=完成品级【0:任意;1:A;2:S;3:SS;4:SSS】，参数4=0 
	%% 参数2=勇者试炼，参数2=完成次数
	%% 参数3=快速讨伐，参数2=完成次数
	%% 参数4=世界BOSS，参数2=完成次数
	%% 参数5=死亡地狱BOSS，参数2=击杀次数
	%% 参数6=死亡森林BOSS，参数2=击杀次数
	%% 参数7=竞技场，参数2=完成次数
	%% 参数8=坐骑副本，参数2=完成次数
	%% 参数9=翅膀副本，参数2=完成次数
	%% 参数10=英雄试炼扫荡，参数2=完成次数
	%% 参数11=法老宝库，参数2=完成次数
	%% 参数12=诅咒禁地BOSS，参数2=击杀次数
	%% 条件类型9：等级达成
	%% 参数1=达成等级 参数2到4=0
	condition,
	%% 达成奖励
	%% （职业，类型，类型ID，掉落是否绑定,掉落数量）
	%% 职业：0=所有职业的人均可获得该掉落，1004=战士，1005=法师，1006=弓手.（如果是职业一的人，不会掉落职业二的奖励，但是可以获得不分职业的奖励）
	%% 类型1：道具，类型ID为道具ID
	%% 类型2：货币，类型ID为货币ID
	%% 掉落是否绑定：0为非绑 1为绑定（货币没有绑定或非绑的说法）
	%% 掉落数量：奖励道具的数量
	awardBoxNew
}).

-endif.
