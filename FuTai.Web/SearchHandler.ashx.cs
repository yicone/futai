using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Data.Linq;
using FuTai.Component;
using System.Collections;

namespace FuTai.Web
{
    /// <summary>
    /// $codebehindclassname$ 的摘要说明
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [AjaxPro.AjaxNamespace("MyAjax")]
    public class SearchHandler : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            context.Response.ContentType = "text/plain";
            context.Response.Write("Hello World");
        }

        public bool IsReusable
        {
            get
            {
                return false;
            }
        }

        [AjaxPro.AjaxMethod]
        public static object Search(string productType, string price1, string price2, string sort, string order, string[] typeIdCollection)
        {
            IEnumerable  result = null;

            decimal p1, p2;
            decimal? np1 = (decimal.TryParse(price1, out p1)) ? (decimal?)p1 : null;
            decimal? np2 = (decimal.TryParse(price2, out p2)) ? (decimal?)p2 : null;

            int t1, t2;
            int? type1 = (typeIdCollection.Length > 0 && int.TryParse(typeIdCollection[0], out t1)) ? (int?)t1 : null;

            int? type2 = (typeIdCollection.Length > 1 && int.TryParse(typeIdCollection[1], out t2)) ? (int?)t2 : null;

            FuTaiDBDataContext cxt = FuTaiDBDataContextFactory.GetFuTaiDBContext();

            switch (productType)
            {
                case "Diamond":
                    result = cxt.SearchDiamond(np1, np2, type1, type2);
                    break;
                case "DiamondOrnament":
                    result = cxt.SearchDiamondOrnament(np1, np2, type1, type2);
                    break;
                case "DiamondRing":
                    result = cxt.SearchDiamondRing(np1, np2, type1, type2);
                    break;
                case "GoldOrnament":
                    result = cxt.SearchGoldOrnament(np1, np2, type1, type2);
                    break;
                case "Jewel":
                    result = cxt.SearchJewel(np1, np2, type1, type2);
                    break;
                case "PairRing":
                    result = cxt.SearchPairRing(np1, np2, type1, type2);
                    break;
                case "RingBracket":
                    result = cxt.SearchRingBracket(np1, np2, type1, type2);
                    break;
                default:
                    break;
            }

            var list = result.AsQueryable().Cast<ISearchResult>();

            switch (sort.ToLower())
            {
                case "price":
                    list = list.OrderBy(item => item.Price);   // 价格
                    break;
                case "time":    // 上架时间
                    list = list.OrderBy(item => item.CreateDate);
                    break;
                case "sales":   // 销量
                    break;
                default:
                    break;
            }

            if (order.ToLower() == "desc")
            {
                result = list.Reverse();
            }

            return result;
        }
    }
}
