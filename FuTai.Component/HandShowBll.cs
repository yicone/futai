using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Collections;

namespace FuTai.Component
{
    public class HandShowBll :BaseBll
    {
        public List<HandShow> SearchHandShow()
        { 
            List<HandShow> result=new List<HandShow>();
            //if (!IsTop)
            //{
                using (var dataContext = DataContext)
                {
                    var a = from p in dataContext.HandShow
                            orderby p.Ticket descending
                            select p;

                    result = a == null ? result : a.ToList();
                }
            //}
            //else
            //{
            //    using (var dataContext = DataContext)
            //    {
            //        var a = from p in dataContext.HandShow
            //                orderby p.Ticket descending
            //                select p;

            //        result = a == null ? result : a.Take(3).ToList();  //take method
            //    }
            //}

            return result;
        }
        public void MakeTicket(int id)
        {
            using (var dataContext = DataContext)
            {
                HandShow hs = dataContext.HandShow.First(c => c.HandShowId==id);
                hs.Ticket += 1;
                dataContext.SubmitChanges();
            }
        }
    }
}
