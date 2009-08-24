using System;
using System.Collections;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Collections.Generic;
using System.Xml.Linq;
using System.Text;

namespace FuTai.Web.CustomBuy
{
    public partial class SearchMethod : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Response.ContentType = "text/xml";
            string FuTai = ConfigurationManager.ConnectionStrings["FuTaiData"].ToString();
            Dictionary<string, string[]> SqlCon = GetQuery(Request);
            this.MakeResponse(SqlCon, FuTai);
        }
        public Dictionary<string, string[]> GetQuery(HttpRequest Hres)
        {
            Dictionary<string, string[]> TempObj = new Dictionary<string, string[]>();
            if (Hres.Form["CutStyle"].ToString() != "null")
                TempObj.Add("CutStyle", MakeSar(Hres.Form["CutStyle"].ToString()));
            if (Hres.Form["Color"].ToString() != "null")
                TempObj.Add("Color", MakeSar(Hres.Form["Color"].ToString()));
            //string TempPrice = Hres.Form["Price"].ToString();
            if (Hres.Form["Carat"].ToString() != "null")
                TempObj.Add("Carat", MakeSar(Hres.Form["Carat"].ToString()));
            //if (TempPrice != "null")
            //{
            //    TempObj.Add("PriceL", TempPrice.Split(spl)[0].ToString());
            //    TempObj.Add("PriceH", TempPrice.Split(spl)[1].ToString());
            //}
            if (Hres.Form["Clarity"].ToString()!="null")
                TempObj.Add("Clarity", MakeSar(Hres.Form["Clarity"].ToString()));
            if (Hres.Form["Cut"].ToString() != "null")
                TempObj.Add("Cut", MakeSar(Hres.Form["Cut"].ToString()));
            if (Hres.Form["Fluorescence"].ToString() != "null")
                TempObj.Add("Fluorescence", MakeSar(Hres.Form["Fluorescence"].ToString()));
            if (Hres.Form["Polishing"].ToString()!="null")
                TempObj.Add("Polish", MakeSar(Hres.Form["Polishing"].ToString()));
            if (Hres.Form["Symmetry"].ToString() != "null")
                TempObj.Add("Symmetry", MakeSar(Hres.Form["Symmetry"].ToString()));

            TempObj.Add("page", new string [] {Hres.Form["page"].ToString()});
            return TempObj;
        }
        private string[] MakeSar(string Str)
        { 
            char [] spt={'|'};
            string[] ResArr = Str.Split(spt);
            for (int i=0;i<ResArr.Length;i++)
            {
                if (ResArr[i]=="Circel")
                    ResArr[i] = "圆钻形";
                else if (ResArr[i] == "NoRule")
                    ResArr[i] = "异形";
            }
            return ResArr;
        }
        private void MakeResponse(Dictionary<string, string[]> con, string conn)
        {
            SqlConnection Con = new SqlConnection(conn);
            Con.Open();
            string SqlStr = MakeString(con);
            string SqlCount = MakeStrCot(con);
            SqlCommand Cmd = new SqlCommand(SqlStr,Con);
            SqlCommand Cmd2 = new SqlCommand(SqlCount, Con);
            SqlDataReader Dr = Cmd.ExecuteReader(CommandBehavior.CloseConnection);
            Response.Write("<root>");
            if (Dr.HasRows)
            { 
                while(Dr.Read())
                {
                    Response.Write("<Mes>");
                    Response.Write("<id>" + Dr.GetValue(0) + "</id><weight>" + Dr.GetValue(1).ToString() + "</weight><clean>" + Dr.GetValue(2).ToString() + "</clean><color>" + Dr.GetValue(3).ToString() + "</color><cut>" + Dr.GetValue(4).ToString() + "</cut><polish>"+Dr.GetValue(5)+"</polish><sym>"+Dr.GetValue(6)+"</sym><fluo>"+Dr.GetValue(7)+"</fluo>");
                    Response.Write("</Mes>");
                }
            }
            Dr.Close();
            Con.Open();
            SqlDataReader Dr2 = Cmd2.ExecuteReader(CommandBehavior.CloseConnection);
            if (Dr2.HasRows)
            {
                Dr2.Read();
                Response.Write("<Count>" + Dr2.GetValue(0).ToString() + "</Count>");
            }
            Response.Write("</root>");
            Response.End();
        }
        private string MakeString(Dictionary<string, string[]> consql)
        {
            StringBuilder SqlWord = new StringBuilder("select top 10 DiamondId,Carat,Clarity,Color,Cut,Polish,Symmetry,Fluorescence from Diamond where ");
            string Pid = ((string[])consql["page"])[0];
            string NotInCon = "DiamondId Not IN (select top " + (int.Parse(Pid) - 1) * 10 + " DiamondId from Diamond";
            string TempCon="";
            if (consql.Count > 1)
            {
                foreach (string Key in consql.Keys)
                {
                    if (Key != "page")
                    {
                        if (Key == "Carat")
                        {
                            char[] spl = { '-' };
                            TempCon += " " + Key + ">='" + ((string[])consql[Key])[0].ToString().Split(spl)[0] + "' And " + Key + "<='" + ((string[])consql[Key])[0].ToString().Split(spl)[1] + "' And";
                        }
                        else
                        {
                            string[] ConArr = (string[])consql[Key];
                            TempCon+="(";
                            for (int i = 0; i < ConArr.Length; i++)
                            {
                                if (i == ConArr.Length - 1)
                                    TempCon+=" "+Key+"='"+ConArr[i].ToString()+"') And";
                                else
                                    TempCon += " " + Key + "='" + ConArr[i].ToString() + "' OR";
                            }
                        }
                    }
                }
                TempCon = TempCon.Substring(0, TempCon.Length-4);
            }
            if (TempCon != "")
            {
                NotInCon +=" where"+ TempCon;
            }
            NotInCon += ")";
            SqlWord.Append(NotInCon);
            if (TempCon != "")
                SqlWord.Append(" And ");

            SqlWord.Append(TempCon);


            return SqlWord.ToString();
        }
        private string MakeStrCot(Dictionary<string, string[]> consql)
        {
            StringBuilder SqlWord = new StringBuilder("select Count(*) from Diamond");
            if (consql.Count > 1)
            {
                SqlWord.Append(" where ");
                foreach (string Key in consql.Keys)
                {
                    if (Key != "page")
                    {
                        if (Key == "Carat")
                        {
                            char[] spl = { '-' };
                            SqlWord.Append(Key + ">='" + ((string[])consql[Key])[0].ToString().Split(spl)[0] + "' And " + Key + "<='" + ((string[])consql[Key])[0].ToString().Split(spl)[1] + "' And ");
                        }
                        else
                        {
                            string[] ConArr = (string[])consql[Key];
                            SqlWord.Append("(");
                            for (int i = 0; i < ConArr.Length; i++)
                            {
                                if (i == ConArr.Length - 1)
                                    SqlWord.Append(string.Format("{0}='{1}') And ",Key,ConArr[i].ToString()));
                                else
                                    SqlWord.Append(string.Format("{0}='{1}' OR ",Key,ConArr[i].ToString()));
                            }
                        }
                    }
                }
                SqlWord = new StringBuilder(SqlWord.ToString().Substring(0, SqlWord.ToString().Length - 5));
            }
            return SqlWord.ToString();
        }

    }
}
