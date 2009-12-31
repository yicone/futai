using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Collections;
using System.Web;

namespace FuTai.Component
{
    public class OrderBll:BaseBll
    {
        public void MakeOrder(string name, bool sex, string phone, string scity,string city,string address,string code, string speical,string email,string nick)
        {
            using (var dataContext = DataContext)
            {
                Order neword = new Order();
                neword.CuName = name;
                neword.CuSex = sex;
                neword.scity = scity;
                neword.phone = phone;
                neword.city = city;
                neword.maddress = address;
                neword.mcode = code;
                neword.speical = speical;
                neword.UserEmail = email;
                neword.UserNick = nick;
                neword.CreateDate = Convert.ToDateTime(DateTime.Now);
                ArrayList CarList = (ArrayList)HttpContext.Current.Session["CarList"];
                string Pname="";
                string Pnum = "";
                string Price = "";
                string Pdis="";
                foreach (string[] arr in CarList)
                {
                    Pname += arr[1] + ",";
                    Pnum += arr[2] + ",";
                    Price += arr[3] + ",";
                    Pdis += arr[4] + ",";
                }
                Pname = Pname.Substring(0, Pname.Length - 1);
                Pnum = Pnum.Substring(0, Pnum.Length - 1);
                Price = Price.Substring(0, Price.Length - 1);
                Pdis = Pdis.Substring(0, Pdis.Length - 1);

                neword.ProductName = Pname;
                neword.ProductNum = Pnum;
                neword.productPrice = Price;
                neword.productDis = Pdis;

                dataContext.Order.InsertOnSubmit(neword);
                dataContext.SubmitChanges();
            }
        }

        public List<Order> SearchOrder(string mtype)
        {
            List<Order> rvalue = new List<Order>();
            if (mtype == "no")
            {
                var q = from p in DataContext.Order
                    where p.IsChecked == false
                    orderby p.CreateDate descending
                    select p;

                rvalue = q == null ? rvalue : q.ToList();
                return rvalue;
            }
            if (mtype == "yes")
            {
                var q = from p in DataContext.Order
                    where p.IsChecked==true
                    orderby p.CreateDate descending
                    select p;

                rvalue = q == null ? rvalue : q.ToList();
                return rvalue;
            }
            if (mtype == "all")
            {
                var q = from p in DataContext.Order
                    orderby p.CreateDate descending
                    select p;

                rvalue = q == null ? rvalue : q.ToList();
                return rvalue;
            }
            return null;
        }

        public void TackOrder(int id,bool ticked)
        {
            using (var dataContext = DataContext)
            {
                Order order = dataContext.Order.First(c => c.OrderId == id);
                order.IsChecked = ticked;

                dataContext.SubmitChanges();
            }
        }

        public void DelTack(int id)
        {
            using (var dataContext = DataContext)
            {
                Order order = dataContext.Order.First(c => c.OrderId == id);
                dataContext.Order.DeleteOnSubmit(order);

                dataContext.SubmitChanges();
            }
        }
    }
}
