using System.Collections.Generic;
using Godot;
namespace Remnant_Afterglow
{
    /// <summary>
    /// 自动生成的配置类 AnimaTower 用于 炮塔动画,拓展请在expand_class文件下使用partial拓展
    /// </summary>
    public partial class AnimaTower
    {
        #region 参数及初始化
        /// <summary>        
        /// 实体id
        ///炮塔
        /// </summary>
        public int ObjectId { get; set; }
        /// <summary>        
        /// 帧动画类型
        ///1 默认状态
        /// </summary>
        public int AnimaType { get; set; }
        /// <summary>        
        /// 帧图坐标
        /// </summary>
        public Vector2I Coords { get; set; }
        /// <summary>        
        /// 单个帧图
        ///长宽（横纵）
        /// </summary>
        public Vector2I LengWidth { get; set; }
        /// <summary>        
        /// 帧图最大序号
        ///第一张图是1
        /// </summary>
        public int MaxIndex { get; set; }
        /// <summary>        
        /// 帧图大小
        ///（横,纵）
        /// </summary>
        public Vector2I Size { get; set; }
        /// <summary>        
        /// 持续时间,
        ///单位毫秒
        /// </summary>
        public int DurationMs { get; set; }
        /// <summary>        
        /// 帧数
        /// </summary>
        public int FrameCount { get; set; }
        /// <summary>        
        /// 是否自动播放
        /// </summary>
        public bool IsAutoplay { get; set; }
        /// <summary>        
        /// 是否循环播放
        /// </summary>
        public bool IsLoop { get; set; }
        /// <summary>        
        /// 帧图
        /// </summary>
        public Texture2D Picture { get; set; }

        public AnimaTower(int id)
        {
            Dictionary<string, object> dict = ConfigLoadSystem.GetCfgIndex(ConfigConstant.Config_AnimaTower, id);//public const string Config_AnimaTower = "cfg_AnimaTower"; 
			ObjectId = (int)dict["ObjectId"];
			AnimaType = (int)dict["AnimaType"];
			Coords = (Vector2I)dict["Coords"];
			LengWidth = (Vector2I)dict["LengWidth"];
			MaxIndex = (int)dict["MaxIndex"];
			Size = (Vector2I)dict["Size"];
			DurationMs = (int)dict["DurationMs"];
			FrameCount = (int)dict["FrameCount"];
			IsAutoplay = (bool)dict["IsAutoplay"];
			IsLoop = (bool)dict["IsLoop"];
			Picture = (Texture2D)dict["Picture"];
			InitData();
        }

        
        public AnimaTower(string cfg_id)
        {
            Dictionary<string, object> dict = ConfigLoadSystem.GetCfgIndex(ConfigConstant.Config_AnimaTower, cfg_id);//public const string Config_AnimaTower = "cfg_AnimaTower"; 
			ObjectId = (int)dict["ObjectId"];
			AnimaType = (int)dict["AnimaType"];
			Coords = (Vector2I)dict["Coords"];
			LengWidth = (Vector2I)dict["LengWidth"];
			MaxIndex = (int)dict["MaxIndex"];
			Size = (Vector2I)dict["Size"];
			DurationMs = (int)dict["DurationMs"];
			FrameCount = (int)dict["FrameCount"];
			IsAutoplay = (bool)dict["IsAutoplay"];
			IsLoop = (bool)dict["IsLoop"];
			Picture = (Texture2D)dict["Picture"];
			InitData();
        }

        public AnimaTower(Dictionary<string, object> dict)
        {
			ObjectId = (int)dict["ObjectId"];
			AnimaType = (int)dict["AnimaType"];
			Coords = (Vector2I)dict["Coords"];
			LengWidth = (Vector2I)dict["LengWidth"];
			MaxIndex = (int)dict["MaxIndex"];
			Size = (Vector2I)dict["Size"];
			DurationMs = (int)dict["DurationMs"];
			FrameCount = (int)dict["FrameCount"];
			IsAutoplay = (bool)dict["IsAutoplay"];
			IsLoop = (bool)dict["IsLoop"];
			Picture = (Texture2D)dict["Picture"];
			InitData();
        }
        #endregion
    }
}
