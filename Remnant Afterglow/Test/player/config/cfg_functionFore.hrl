-ifndef(cfg_functionFore_hrl).
-define(cfg_functionFore_hrl, true).

-record(functionForeCfg, {
	%% 功能ID（同Openaction表的ID保持一致）
	%% ID=0表示举办婚礼，程序特效处理
	iD,
	%% 活动开启时间段，序号
	oder,
	%% 双索引
	index,
	%% 功能开启时间
	%% 36000表示 10:00:00开启
	%% 36100表示 10:01:40开启
	%% 周历排序规则：
	%% 根据每天的功能预告时间由小到大，从上至下排序
	%% （配置后，需按时间升序排序）
	timeStart,
	%% 功能结束时间
	%% 36000表示 10:00:00
	%% 36100表示 10:01:40
	timeEnd,
	%% 每日限制次数
	limtTime,
	%% 预告/周历显示 优先级
	%% 数值越低，优先级越高
	%% 用于 如果功能开启时间重合时的优先推送/周历显示顺序的判断
	priority,
	%% 控制开关
	%% 是否推送|是否显示在周历|是否周历推荐
	%% 是否推送：1预告推送，0不推送
	%% 是否显示在周历：1显示，0不显示
	%% 是否周历推荐：1显示图鉴，0不显示
	show,
	%% 开服第几天开启这个活动
	%% 在“Week/WeekUnite字段”之前判断，该字段生效后才判断“Week/WeekUnite字段”；
	%% 填“0”表示：没有这个限制；
	%% 如果有多个时间段，则多个时间段的多行数据配置相同的参数；
	%% 3|6 表示：开服第3天和第6天开启这个活动，然后再第6天之后才判断后面的周几开.
	openDay,
	%% 功能开启周几(联服前）
	%% 1.表示星期一
	%% 2.表示星期二
	%% …
	%% 7.表示星期天
	%% 0.表示星期一至星期天都开启
	%% 1|2|3表示 星期一二三开启
	week,
	%% 功能开启周几（联服后）
	%% 1.表示星期一
	%% 2.表示星期二
	%% …
	%% 7.表示星期天
	%% 0.表示星期一至星期天都开启
	%% 1|2|3表示 星期一二三开启
	weekUnite,
	%% 流线上前几次的副本次数是否为玩家保留并开启副本
	%% 0代表不保留次数，数字代表保留几次进入副本次数并在有次数时开启副本
	firstTime,
	%% 界面跳转
	%% 填0为不做跳转
	jumpId,
	%% 弹窗拉入功能
	%% 0表示活动开启时不弹提醒框，1表示活动开启后主城玩家会收到活动开启弹窗
	pullin
}).

-endif.
