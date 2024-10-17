using System.Collections.Generic;
namespace Remnant_Afterglow
{
    /// <summary>
    /// 自动生成的配置类 ChapterCopyUI 用于 章节关卡UI数据,拓展请在expand_class文件下使用partial拓展
    /// </summary>
    public partial class ChapterCopyUI
    {
        #region 参数及初始化
        /// <summary>
        /// 关卡UIid
        /// </summary>
        public int CopyId { get; set; }
        /// <summary>
        /// 关卡名称
        /// </summary>
        public string CopyName { get; set; }
        /// <summary>
        /// 关卡描述文字1
        /// </summary>
        public string Describe1 { get; set; }
        /// <summary>
        /// 关卡描述文字2
        /// </summary>
        public string Describe2 { get; set; }

        public ChapterCopyUI(int id)
        {
            Dictionary<string, object> dict = ConfigLoadSystem.GetCfgIndex(ConfigConstant.Config_ChapterCopyUI, id);//public const string Config_ChapterCopyUI = "cfg_ChapterCopyUI"; 
			CopyId = (int)dict["CopyId"];
			CopyName = (string)dict["CopyName"];
			Describe1 = (string)dict["Describe1"];
			Describe2 = (string)dict["Describe2"];
			InitData();
        }

        
        public ChapterCopyUI(string cfg_id)
        {
            Dictionary<string, object> dict = ConfigLoadSystem.GetCfgIndex(ConfigConstant.Config_ChapterCopyUI, cfg_id);//public const string Config_ChapterCopyUI = "cfg_ChapterCopyUI"; 
			CopyId = (int)dict["CopyId"];
			CopyName = (string)dict["CopyName"];
			Describe1 = (string)dict["Describe1"];
			Describe2 = (string)dict["Describe2"];
			InitData();
        }

        public ChapterCopyUI(Dictionary<string, object> dict)
        {
			CopyId = (int)dict["CopyId"];
			CopyName = (string)dict["CopyName"];
			Describe1 = (string)dict["Describe1"];
			Describe2 = (string)dict["Describe2"];
			InitData();
        }
        #endregion
    }
}
