﻿using Godot;
using System.Collections.Generic;

namespace Remnant_Afterglow
{
    /// <summary>
    /// 加载TileSet配置 祝福注释-这个可以改成默认加载
    /// </summary>
    public class LoadTileSetConfig
    {
        //常规地图的
        public static MapImageSet mapImageSet;
        private static TileSet tileSet;//地图静态
        public int Type = 1;

        public LoadTileSetConfig(int Type)
        {
            if (Type == 1)
            {
                mapImageSet = new MapImageSet(1, MapConstant.TileCellSize, MapConstant.TileCellSize);
                tileSet = GetTileSetData(1, MapConstant.TileCellSize, MapConstant.TileCellSize);
            }
            else
            {
                mapImageSet = new MapImageSet(2, MapConstant.BigCellSizeX, MapConstant.BigCellSizeY);
                tileSet = GetTileSetData(2, MapConstant.BigCellSizeX, MapConstant.BigCellSizeY);
            }
            this.Type = Type;
        }

        public TileSet GetTileSet()
        {
            return tileSet;
        }


        /// <summary>
        /// 获取由该对象生成的Godot.TileSet对象
        /// </summary>
        public static TileSet GetTileSetData(int Type, int Width, int Height)
        {
            tileSet = new TileSet();
            tileSet.TileSize = new Vector2I(Width, Height);
            if (Type == 2)//六边形大地图
            {
                tileSet.TileShape = TileSet.TileShapeEnum.Hexagon;
            }
            foreach (var data in mapImageSet.MapSetDict)
            {//初始化数据
                tileSet.AddSource(data.Value, data.Key);
            }
            return tileSet;
        }

        /// <summary>
        /// 通过图集id和图片序号，获得对应图片
        /// </summary>
        /// <param name="MapImageSetId"></param>
        /// <param name="index"></param>
        /// <returns></returns>
        public static Texture2D GetTexture2D(int MapImageSetId, Vector2I pos)
        {
            if (mapImageSet.MapSetDataDict.ContainsKey(MapImageSetId))
            {
                Dictionary<Vector2I, Texture2D> dict = mapImageSet.MapSetDataDict[MapImageSetId].textureList;
                if (dict.ContainsKey(pos))
                    return dict[pos];
                else
                    return null;
            }
            else
                return null;
        }

        public static Texture2D GetTexture2D(int MapImageSetId, int index)
        {
            if (mapImageSet.MapSetDataDict.ContainsKey(MapImageSetId))
            {
                Vector2I MapImageSize = mapImageSet.MapSetDataDict[MapImageSetId].MapImageSize;
                Vector2I pos = GetImageIndex_TO_Vector2(MapImageSetId, index);
                Dictionary<Vector2I, Texture2D> dict = mapImageSet.MapSetDataDict[MapImageSetId].textureList;
                if (dict.ContainsKey(pos))
                    return dict[pos];
                else
                    return null;
            }
            else
                return null;
        }

        /// <summary>
        /// 获取对应id图像集的大小
        /// </summary>
        /// <param name="index"></param>
        /// <returns></returns>
        public Vector2I GetImageSize(int data_id)
        {
            if (mapImageSet.MapSetDataDict.ContainsKey(data_id))
            {
                return mapImageSet.MapSetDataDict[data_id].MapImageSize;
            }
            else
            {
                return new Vector2I(-1, -1);
            }
        }


        /// <summary>
        /// 将对应图像集的index,转换为二维坐标
        /// </summary>
        /// <param name="data_id"></param>
        /// <param name="index"></param>
        /// <param name=""></param>
        /// <returns></returns>
        public static Vector2I GetImageIndex_TO_Vector2(int data_id, int index)
        {
            if (mapImageSet.MapSetDataDict.ContainsKey(data_id))
            {
                int max_index = mapImageSet.MapSetDataDict[data_id].ImageSetMaxId;
                if (max_index < index)//超过最大可使用序列
                {
                    return new Vector2I(-1, -1);
                }
                else
                {
                    Vector2I size = mapImageSet.MapSetDataDict[data_id].MapImageSize;
                    int y = (index - 1) / size.X;
                    return new Vector2I(index - y * size.X - 1, y);
                }
            }
            else//转换失败
            {
                return new Vector2I(-2, -2);
            }
        }

        /// <summary>
        /// 将对应图像集的pos 二维坐标,转换为index
        /// </summary>
        /// <param name="data_id"></param>
        /// <param name="pos"></param>
        /// <returns></returns>
        public int GetImageVector2_TO_Index(int data_id, Vector2 pos)
        {
            if (mapImageSet.MapSetDataDict.ContainsKey(data_id))
            {
                Vector2 size = mapImageSet.MapSetDataDict[data_id].MapImageSize;
                int index = (int)(size.X * pos.Y + pos.X + 1);
                if (index <= mapImageSet.MapSetDataDict[data_id].ImageSetMaxId)
                    return index;
                return -1;////注释//---之后这些地方得用报错系统的代码来提示
            }
            else//转换失败
            {
                return -2;
            }
        }

    }
}
