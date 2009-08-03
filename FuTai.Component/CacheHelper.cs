using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;

namespace FuTai.Component
{
    /// <summary>
    /// 缓存处理
    /// </summary>
    public class CacheHelper
    {
        /// <summary>
        /// 如果缓存中不存在"方法相关的缓存对象",
        /// 则将方法的返回值写入缓存;
        /// 如果存在, 则取出缓存值, 而不重新调用方法
        /// ("方法相关的缓存对象", 以"类.方法_参数1_参数2_...参数N"的命名规则作为缓存键, 缓存方法的返回值)
        /// v.wangxinguang
        /// </summary>
        /// <typeparam name="TR">方法返回值的类型</typeparam>
        /// <param name="cacheKey">缓存键</param>
        /// <param name="cacheMinutes">缓存时间</param>
        /// <param name="func"></param>
        /// <returns></returns>
        public static TR GetAndSetCacheValue<TR>(string cacheKey, double cacheMinutes, Func<TR> func)
        {
            TR o = CacheHelper.GetCacheValue<TR>(cacheKey);
            if (o == null || o.Equals(default(TR)))
            {
                try
                {
                    o = func();
                    CacheHelper.SetCacheValue<TR>(cacheKey, o, cacheMinutes);
                }
                catch
                {
                    throw;
                }
            }

            return o;
        }

        /// <summary>
        ///  如果缓存中不存在"方法相关的缓存对象",
        /// 则将方法的返回值写入缓存;
        /// 如果存在, 则取出缓存值, 而不重新调用方法
        /// ("方法相关的缓存对象", 以"类.方法_参数1_参数2_...参数N"的命名规则作为缓存键, 缓存方法的返回值)
        /// v.wangxinguang
        /// </summary>
        /// <typeparam name="T">方法返回值的类型</typeparam>
        /// <typeparam name="TP">方法签名中参数1的类型</typeparam>
        /// <param name="cacheKey">缓存键</param>
        /// <param name="cacheMinutes">缓存时间</param>
        /// <param name="func"></param>
        /// <param name="param">方法签名中参数1的值</param>
        /// <returns>方法的返回值</returns>
        public static TR GetAndSetCacheValue<TR, TP>(string cacheKey, double cacheMinutes, Func<TP, TR> func, TP param)
        {
            TR o = CacheHelper.GetCacheValue<TR>(cacheKey);
            if (o == null || o.Equals(default(TR)))
            {
                try
                {
                    o = func(param);
                    CacheHelper.SetCacheValue<TR>(cacheKey, o, cacheMinutes);
                }
                catch
                {
                    throw;
                }
            }

            return o;
        }

        /// <summary>
        /// 从缓存获得数据
        /// </summary>
        /// <typeparam name="T"></typeparam>
        /// <param name="key"></param>
        /// <returns>如果缓存项不存在,或者缓存项不是T的子类对象, 则返回T的默认值</returns>
        public static T GetCacheValue<T>(string key)
        {
            if (HttpContext.Current == null)
            {
                throw new InvalidOperationException("读取缓存失败, 无法获取HttpContext对象");
            }

            T obj = default(T);
            if (HttpContext.Current.Cache[key] != null)
            {
                try
                {
                    obj = (T)HttpContext.Current.Cache[key];
                }
                catch (InvalidCastException)
                {
                    return obj;
                }
            }
            return obj;
        }

        /// <summary>
        /// 填充数据至服务器缓存
        /// </summary>
        /// <param name="key"></param>
        /// <param name="obj"></param>
        /// <param name="minutes"></param>
        /// <returns></returns>
        public static void SetCacheValue<T>(string key, T obj, double minutes)
        {
            if (HttpContext.Current == null)
            {
                throw new InvalidOperationException("设置对象缓存失败, 无法获取HttpContext对象");
            }

            if (key == null)
            {
                throw new InvalidOperationException("设置对象缓存失败, 键为null");
            }

            if (obj == null)
            {
                LogHelper.Logger.Warn("设置对象缓存失败, 对象为null");
            }

            HttpContext.Current.Cache.Insert(key, obj, null, DateTime.UtcNow.AddMinutes(minutes), TimeSpan.Zero);
        }
    }
}
