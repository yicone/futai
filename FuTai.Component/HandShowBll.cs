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
        public void MakeTicket(int id, int uid,string IP)
        {
            using (var dataContext = DataContext)
            {
                HandShow hs = dataContext.HandShow.First(c => c.HandShowId==id);
                hs.Ticket += 1;

                User user = dataContext.User.First(d => d.UserId==uid);
                if (user.Ticket != "" && user.Ticket!=null)
                    user.Ticket += "," + id.ToString();
                else
                    user.Ticket += id.ToString();


                //插入IP
                var r = from a in dataContext.IpAddress
                        where a.IP==IP
                        select a;

                List<IpAddress> IpList = new List<IpAddress>();
                IpList = r.ToList();
                IpAddress IpDB = new IpAddress();
                if (IpList.Count == 0)
                {
                    IpDB.IP = IP;
                    IpDB.Ticket = id.ToString();
                    dataContext.IpAddress.InsertOnSubmit(IpDB);
                }
                else
                {
                    IpAddress ipaddress = dataContext.IpAddress.First(e => e.IP == IP);
                    if (ipaddress.Ticket != "")
                        ipaddress.Ticket += "," + id.ToString();
                    else
                        ipaddress.Ticket += id.ToString();
                }

                dataContext.SubmitChanges();

            }
        }
    }
}
