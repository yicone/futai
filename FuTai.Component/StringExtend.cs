using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace FuTai.Component
{
    public static class StringExtend
    {
        /// <summary>
        /// 将字符串的尾部截掉, 并替换为指定长度的某字符组合
        /// </summary>
        /// <param name="str">原字符串</param>
        /// <param name="tailChar">用于替换的尾部字符</param>
        /// <param name="remainLength">原字符串的保留长度</param>
        /// <param name="tailLength">尾部字符的重复次数</param>
        /// <returns>替换后的字符串</returns>
        public static string TailReplace(this string str, char tailChar, int remainLength, int tailLength)
        {
            if (str.Length < remainLength)
                remainLength = str.Length;

            StringBuilder sb = new StringBuilder(str.Substring(0, remainLength));
            for (int i = 0; i < tailLength; i++)
            {
                sb.Append(tailChar);
            }
            return sb.ToString();
        }

        public static string CutTail(string str, char tailChar, int remainLength, int tailLength)
        {
            if (str.Length < remainLength)
                remainLength = str.Length;

            StringBuilder sb = new StringBuilder(str.Substring(0, remainLength));
            for (int i = 0; i < tailLength; i++)
            {
                sb.Append(tailChar);
            }
            return sb.ToString();
        }

        public static string TailReplace(string str, int totalWidth, char paddingChar)
        {
            if (str.Length > totalWidth)
            {
                return str.Substring(0, totalWidth);
            }

            var len = Encoding.GetEncoding("GB2312").GetByteCount(str);
            var sb = new StringBuilder(str);
            for (var i = 0; i < totalWidth * 2 - len; i++)
            {
                sb.Append(".");
            }
            return sb.ToString();
        }

        public static string CutTail(string str, int totalWidth)
        {
            if (str.Length <= totalWidth)
            {
                return str;
            }

            return str.Substring(0, totalWidth);
        }
    }
}
