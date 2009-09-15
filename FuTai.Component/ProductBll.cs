using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Collections;

namespace FuTai.Component
{
    public class ProductResult
    {
        public Product Product { get; set; }
        public object ConProduct {get;set;}
    }


    public class ProductBll : BaseBll
    {
        public ProductResult SearchProduct(string productId)
        {
            ProductResult result = new ProductResult();
            string productType;

            using (var dataContext = DataContext)
            {
                var a = from p in dataContext.Products
                        where p.ProductId == productId
                        select p;

                var product = a.SingleOrDefault();
                result.Product = product;

                productType = product.ProductType;
            }

            using (var dataContext = DataContext)
            {
                switch (productType)
                {
                    case "Diamond":
                        var j1 = from d in dataContext.Diamonds
                                 where d.DiamondID == productId
                                 select d;

                        var diamond = j1.SingleOrDefault();
                        result.ConProduct = diamond;
                        break;
                    case "DiamondOrnament":
                        var j2 = from d in dataContext.DiamondOrnaments
                                 where d.DiamondOrnamentId == productId
                                 select d;

                        var diamondOrnament = j2.SingleOrDefault();
                        result.ConProduct = (diamondOrnament);
                        break;
                    case "DiamondRing":
                        var j3 = from d in dataContext.DiamondRings
                                 where d.DiamondRingId == productId
                                 select d;

                        var diamondRing = j3.SingleOrDefault();
                        result.ConProduct = (diamondRing);
                        break;
                    case "Jewel":
                        var j4 = from d in dataContext.Jewels
                                 where d.JewelId == productId
                                 select d;

                        var jewel = j4.SingleOrDefault();
                        result.ConProduct = (jewel);
                        break;
                    case "PairRing":
                        var j5 = from d in dataContext.PairRings
                                 where d.PairRingId == productId
                                 select d;

                        var pairRing = j5.SingleOrDefault();
                        result.ConProduct = (pairRing);
                        break;
                    case "RingBracket":
                        var j6 = from d in dataContext.RingBrackets
                                 where d.BracketId == productId
                                 select d;

                        var ringBracket = j6.SingleOrDefault();
                        result.ConProduct = (ringBracket);
                        break;
                    case "GoldOrnament":
                        var j7 = from d in dataContext.GoldOrnaments
                                 where d.GoldOrnamentId == productId
                                 select d;

                        var goldornament = j7.SingleOrDefault();
                        result.ConProduct = (goldornament);
                        break;
                    default:
                        break;
                }
            }

            return result;
        }
    }
}
