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
    public class CombineResult
    {
        public ProductResult DiamondResult { get; set; }
        public ProductResult RingResult { get; set; }
    }

    public class ProductBll : BaseBll
    {
        public CombineResult SerachCombineDiamond(string DiamondId, string RingId)
        {
            ProductResult ResultDiamond = new ProductResult();
            ProductResult ResultRing = new ProductResult();
            CombineResult result = new CombineResult();

            using (var dataContext = DataContext)  //Diamond
            {
                var a = from p in dataContext.Product
                        where p.ProductId == DiamondId
                        select p;

                var productD = a.SingleOrDefault();
                ResultDiamond.Product = productD;

                var a1 = from d in dataContext.Diamond
                         where d.DiamondID == DiamondId
                         select d;

                var diamond = a1.SingleOrDefault();
                ResultDiamond.ConProduct = diamond;
            }

            using (var dataContext = DataContext)  //RingBracket
            {
                var r = from p in dataContext.Product
                        where p.ProductId == RingId
                        select p;

                var productR = r.SingleOrDefault();
                ResultRing.Product = productR;

                var r1 = from d in dataContext.RingBracket
                         where d.BracketId == RingId
                         select d;

                var ringbracket = r1.SingleOrDefault();
                ResultRing.ConProduct = ringbracket;
            }

            result.DiamondResult = ResultDiamond;
            result.RingResult = ResultRing;

            return result;

        }
        public ProductResult SearchProduct(string productId)
        {
            ProductResult result = new ProductResult();
            string productType;

            using (var dataContext = DataContext)
            {
                var a = from p in dataContext.Product
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
                        var j1 = from d in dataContext.Diamond
                                 where d.DiamondID == productId
                                 select d;

                        var diamond = j1.SingleOrDefault();
                        result.ConProduct = diamond;
                        break;
                    case "DiamondOrnament":
                        var j2 = from d in dataContext.DiamondOrnament
                                 where d.DiamondOrnamentId == productId
                                 select d;

                        var diamondOrnament = j2.SingleOrDefault();
                        result.ConProduct = (diamondOrnament);
                        break;
                    case "DiamondRing":
                        var j3 = from d in dataContext.DiamondRing
                                 where d.DiamondRingId == productId
                                 select d;

                        var diamondRing = j3.SingleOrDefault();
                        result.ConProduct = (diamondRing);
                        break;
                    case "Jewel":
                        var j4 = from d in dataContext.Jewel
                                 where d.JewelId == productId
                                 select d;

                        var jewel = j4.SingleOrDefault();
                        result.ConProduct = (jewel);
                        break;
                    case "PairRing":
                        var j5 = from d in dataContext.PairRing
                                 where d.PairRingId == productId
                                 select d;

                        var pairRing = j5.SingleOrDefault();
                        result.ConProduct = (pairRing);
                        break;
                    case "RingBracket":
                        var j6 = from d in dataContext.RingBracket
                                 where d.BracketId == productId
                                 select d;

                        var ringBracket = j6.SingleOrDefault();
                        result.ConProduct = (ringBracket);
                        break;
                    case "GoldOrnament":
                        var j7 = from d in dataContext.GoldOrnament
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
