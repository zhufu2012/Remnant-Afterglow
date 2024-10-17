-ifndef(cfg_gloryDragonEmblem4_hrl).
-define(cfg_gloryDragonEmblem4_hrl, true).

-record(gloryDragonEmblem4Cfg, {
	iD,
	%% {条件类型，目标，附加参数}
	%% 条件类型枚举：
	%% 1.等级(不能配置多次领取)
	%% 2.累计充值
	%% 3.消耗钻石
	%% 4.单次充值(不能配置多次领取)
	%% 5.参与次数 竞技场
	%% 9.参与次数 守护世界树
	%% 13.通关精英副本-ID
	%% 14 VIP等级达到
	%% 18 累计充值天数，每天至少【附加参数】钻石(不能配置多次领取)
	%% 19 累计登陆天数(不能配置多次领取)
	%% 20.通关剧情副本-ID
	%% 21.参与永恒战场次数
	%% 22 参与次数 诛仙
	%% 23 参与转盘次数
	%% 24 参与领地战次数
	%% 25 参与公会篝火次数
	%% 26 公会篝火喝酒次数
	%% 27 公会篝火开红包次数
	%% 28 元宝抽坐骑
	%% 29 野外Boss次数
	%% 30 野外挂机小时数
	%% 31 参与次数 仙盟副本次数
	%% 32 日常活跃度达到X(不能配置多次领取)
	%% 33 在线时长达到X分钟(不能配置多次领取)
	%% 34 使用指定道具次数：{34，次数，道具ID}
	%% 35 参与次数 牛怪迷宫
	%% 36 参与次数 护送魔晶
	%% 37 雷霆要塞次数
	%% 38 高级神翼元宝抽卡次数
	%% 39 传说神翼元宝抽卡次数
	%% 40 巅峰3V3参与次数
	%% 41 天宫试炼次数
	%% 42 天宫试炼开丹炉个数
	%% 43参数圣物材料副本次数
	%% 44情侣2V2次数
	%% 45 挑战副本次数
	%% 46消耗元宝（仅非绑）
	%% 47 庆典抽奖次数
	%% 48 资源盛典抽奖
	%% 49达到积分领取奖励，目标：积分值；参数：0 （特殊：对应活动积分馈赠使用）(不能配置多次领取)
	%% 50 击杀死亡地狱boss数量
	%% 51 约会次数
	%% 52 聚宝盆抽奖次数
	%% 53 迷宫抽奖次数
	%% 54 飞镖次数
	%% 55 击杀死亡地狱或死亡地狱联服boss次数
	%% 56 神魔战场次数
	%% 57 情侣试炼次数
	%% 58 世界boss
	%% 59 举办婚礼次数
	%% 60 参加婚礼次数
	%% 61 参加翅膀材料本次数
	%% 62 赏金任务完成次数
	%% 63 战盟任务完成次数
	%% 64 扫荡英雄试炼次数
	%% 65 参加坐骑材料本次数
	%% 66 参与龙王宝库次数
	%% 69 参与法老宝库次数
	%% 70 参与龙神秘典副本次数
	%% 71 参与天神塔次数
	%% 72 击杀死亡森林boss次数
	%% 73 参与个人BOSS次数
	%% 74 参与诅咒禁地次数
	%% 75 参与神魔战场次数（消耗疲劳） TODO
	%% 76 参与守卫战盟次数
	%% 77 参与王者1V1次数
	%% 78 送花次数
	%% 79 战斗力达到指定值
	%% 80 添加好友个数
	%% 81 任意一个好友亲密度达到1级
	%% 82 任意一个好友亲密度达到2级
	%% 83 任意一个好友亲密度达到3级
	%% 84 订婚次数
	%% 85 为对方购买情侣月卡次数
	%% 86 婚戒系统：提升纯爱无暇（情侣试炼激活）到20级｜信物id  101
	%% 87 许愿池边许心愿（约会中的一步）
	%% 88 玫瑰园中结誓言（约会中的一步）
	%% 89 爱神岛上永相随（约会中的一步）
	%% 90 婚戒系统：提升一生一世（结婚激活）到50级｜信物id 104
	%% 91 举办高级婚礼（和豪华婚礼区别）
	%% 92 婚戒系统：提升清水出芙蓉（豪华婚礼2激活）到50级｜信物id 111
	%% 93 创建公会
	%% 94 任命执法者
	%% 95 任命2个副盟主
	%% 96 战盟人数30
	%% 97 战盟等级2
	%% 98 战盟等级3
	%% 106 领地战S第一战盟的盟主
	%% 107 领地战S第一战盟的执法者和副盟主
	%% 108 领地战S第一战盟的成员
	%% 109 参与领地战
	%% 110 装备寻宝
	%% 111 龙印寻宝
	%% 112 坐骑寻宝
	%% 113 魔宠寻宝
	%% 114 翅膀寻宝
	%% 115 好感度达到2的好友数量
	%% 116 好感度达到3的好友数量
	%% 117 好感度达到4的好友数量
	%% 118 参与战盟争霸S级联赛的其他战盟盟主
	%% 119 可配置地图的死亡地狱枚举
	%% 121 XO大作战次数
	%% 122 烟花盛典转盘计数
	%% 123 恶魔深渊计数
	%% 124 深渊之海副本次数
	%% 125 巅峰寻宝次数
	%% 126 天神副本次数
	%% 127 探宝矩阵次数
	%% 128 资源盛典资源点数
	%% 129 神魔幻域击杀boss次数
	%% 130 新烟花盛典次数
	%% 136 参与云购抽奖次数（将云购的转盘次数从枚举23中拿出来，单独列一个）
	%% 137 参与勇者试炼次数
	%% 138 参与公会篝火次数
	%% 139 累积充值（和枚举2的累计充值需要独立，在同一活动中独立计算进度，互不影响）
	%% 140 消耗元宝 （和枚举3的累计充值需要独立，在同一活动中独立计算进度，互不影响）
	%% 155 护送公会商船次数
	%% 156 商船掠夺次数
	%% 157 参与地精宝库次数
	%% 158 神魔战场小采集次数
	%% 159 神魔战场大采集次数
	%% 160 日常活跃度，参数1为活跃度值
	%% 161 公会祭祀（高级）次数
	%% 162 经验祈福次数
	%% 163 公会BOSS次数
	%% 164 护送红色品质商船次数
	%% 170 快速讨伐次数
	%% 171 SSS赏金任务次数
	%% 172 公会捐献普通次数
	%% 173 发起卡片分享次数（赠送给别人）
	%% 174 公会篝火普通喝酒次数
	%% 175 公会篝火龙火辣酒次数
	%% 176 协助次数
	%% 177 参与材料副本次数（天神副本、坐骑副本、法老宝库、翅膀副本、英雄试炼（扫荡）
	%% 178 累计获得钻石数
	%% 179 公会捐赠次数（普通+高级）
	%% 199 领地战S联赛的其他公会的的成员
	%% 200 领地战S联赛的其他公会的执法者和副会长
	%% 201 活动期间：翅膀升级次数
	%% 202 活动期间：翅膀升星次数
	%% 203 活动期间：翅膀觉醒次数
	%% 204 活动期间：翅膀炼魂次数
	%% 205 活动期间：翅膀嗑丹次数
	%% 206 活动期间：翼灵升级次数
	%% 207 活动期间：飞翼升级次数
	%% 208 活动期间：坐骑升级次数
	%% 209 活动期间：坐骑升星次数
	%% 210 活动期间：坐骑觉醒次数
	%% 211 活动期间：坐骑炼魂次数
	%% 212 活动期间：坐骑嗑丹次数
	%% 213 活动期间：兽灵升级次数
	%% 214 活动期间：英雄升级次数
	%% 215 活动期间：英雄升星次数
	%% 216 活动期间：英雄觉醒次数
	%% 217 活动期间：英雄炼魂次数
	%% 218 活动期间：英雄嗑丹次数
	%% 219 活动期间：精灵升级次数
	%% 220 活动期间：装备强化次数
	%% 221 活动期间：装备追加次数
	%% 222 活动期间：装备洗练次数
	%% 223 活动期间：装备吞噬次数
	%% 251 神兵寻宝次数
	%% 252 神魂寻宝次数
	%% 253 至尊寻宝次数
	%% 254 圣纹寻宝次数
	%% 255 神翼寻宝次数
	%% 256 圣装寻宝次数
	%% 257 神兵类寻宝次数(神兵，巅峰，至尊，圣装)
	%% 258 龙印类寻宝次数(龙印，神魂，圣纹)
	%% 259 外显类寻宝次数(坐骑，翅膀，魔宠，神翼)
	%% 260 任意种类寻宝次数
	conditions,
	%% 群组
	%% (编号，排序ID，达成后是否显示）
	%% 编号：同一个区群组使用同一个编号
	%% 排序ID：同一个群组中，当前一个排序ID的条件还未达成时，后一个排序ID的添加不会显示出来，排序ID可以多个相同，相同则表示前一个排序ID条件达成时，一起显示出来
	%% 达成后是否显示：0表示即使条件已经达成，但是前一个排序ID没有达成时，不显示任务；1表示条件达成后，无视前一个排序ID是否达成，都显示出来
	%% 龙神神殿活动中，最终大奖的达成显示配置为2
	group,
	%% VIP等级可见限制
	%% 如果达成条件不满足，则需要满足VIP等级后才可见具体的达成列表
	%% 如果达成条件以满足，则无视VIP等级限制，直接可见对应列表，而且还下一级达成条件
	vIPlimit,
	%% {类型，参与次数}
	%% 0：无限制
	%% 1：每日限制
	%% 2：活动期间达成（针对不可逆的条件，比如：等级，活动中只完成一次）
	%% 3:活动期间反复可达成（龙神神殿使用）
	%% 慎用类型1，目前类型1只限制了每天的领取次数，但没有重置达成的进度。这个以后优化
	%% 类型1一般只在售卖物品的活动中使用
	%% {1,0}表示每日不限次数
	%% 显示文字：
	%% 1：YYHD_DesXX_2(每……)
	%% 2：YYHD_DesXX_0(活动内……)
	limit,
	%% 单次获得战纪经验
	score
}).

-endif.
