using System.Collections.Generic;
using Godot;
namespace Remnant_Afterglow
{
    /// <summary>
    /// 自动生成的配置类 ChapterCopyBase 用于 章节关卡基础数据,拓展请在expand_class文件下使用partial拓展
    /// </summary>
    public partial class ChapterCopyBase
    {
        #region 参数及初始化
        /// <summary>        
        /// 章节id
        ///同步cfg_CopyBrush_章节关卡
        ///刷怪数据表id
        /// </summary>
        public int ChapterId { get; set; }
        /// <summary>        
        /// 关卡id
        /// </summary>
        public int CopyId { get; set; }
        /// <summary>        
        /// 关卡UIid
        /// </summary>
        public int CopyUiId { get; set; }
        /// <summary>        
        /// 地图相机id
        /// </summary>
        public int CameraId { get; set; }
        /// <summary>        
        /// 关卡所用地图id
        ///地图生成.xlsx表的
        ///cfg_GenerateBottomMap_
        ///随机生成地图方式表id
        /// </summary>
        public int GenerateMapId { get; set; }
        /// <summary>        
        /// 关卡节点
        ///位置坐标
        /// </summary>
        public Vector2I Pos { get; set; }
        /// <summary>        
        /// 关卡在大地图上
        ///显示用节点id
        ///cfg_BigMapCell_大地图节点的id
        ///
        /// </summary>
        public int NodeId { get; set; }
        /// <summary>        
        /// 后继关卡id列表
        ///通关该关卡后会解锁的
        ///关卡id
        ///(非关卡的地图相邻才能打)
        ///
        /// </summary>
        public List<int> CopyIdList { get; set; }

        public ChapterCopyBase(int id)
        {
            Dictionary<string, object> dict = ConfigLoadSystem.GetCfgIndex(ConfigConstant.Config_ChapterCopyBase, id);//public const string Config_ChapterCopyBase = "cfg_ChapterCopyBase"; 
			ChapterId = (int)dict["ChapterId"];
			CopyId = (int)dict["CopyId"];
			CopyUiId = (int)dict["CopyUiId"];
			CameraId = (int)dict["CameraId"];
			GenerateMapId = (int)dict["GenerateMapId"];
			Pos = (Vector2I)dict["Pos"];
			NodeId = (int)dict["NodeId"];
			CopyIdList = (List<int>)dict["CopyIdList"];
			InitData();
        }

        
        public ChapterCopyBase(string cfg_id)
        {
            Dictionary<string, object> dict = ConfigLoadSystem.GetCfgIndex(ConfigConstant.Config_ChapterCopyBase, cfg_id);//public const string Config_ChapterCopyBase = "cfg_ChapterCopyBase"; 
			ChapterId = (int)dict["ChapterId"];
			CopyId = (int)dict["CopyId"];
			CopyUiId = (int)dict["CopyUiId"];
			CameraId = (int)dict["CameraId"];
			GenerateMapId = (int)dict["GenerateMapId"];
			Pos = (Vector2I)dict["Pos"];
			NodeId = (int)dict["NodeId"];
			CopyIdList = (List<int>)dict["CopyIdList"];
			InitData();
        }

        public ChapterCopyBase(Dictionary<string, object> dict)
        {
			ChapterId = (int)dict["ChapterId"];
			CopyId = (int)dict["CopyId"];
			CopyUiId = (int)dict["CopyUiId"];
			CameraId = (int)dict["CameraId"];
			GenerateMapId = (int)dict["GenerateMapId"];
			Pos = (Vector2I)dict["Pos"];
			NodeId = (int)dict["NodeId"];
			CopyIdList = (List<int>)dict["CopyIdList"];
			InitData();
        }
        #endregion
    }
}
