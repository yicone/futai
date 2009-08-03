using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace FuTai.Component
{
    public class Singleton<T> where T : new()
    {
        private static T s_instance;

        public static T Instance
        {
            get
            {
                if (s_instance == null)
                    s_instance = new T();

                return s_instance;
            }
        }
    }
}
