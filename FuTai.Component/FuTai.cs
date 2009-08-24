using System;
namespace FuTai.Component
{
    partial class FuTaiDataContext
    {
    }

    public interface ISearchResult
    {
        Nullable<decimal> Price { get; set; }

        Nullable<System.DateTime> CreateDate { get; set; }
    }

    partial class search_SearchRingBracket_个结果 : ISearchResult
    {
 
    }

    partial class search_SearchDiamondOrnament_个结果 : ISearchResult
    {

    }

    partial class search_SearchJewel_个结果 : ISearchResult
    {

    }

    partial class search_SearchPairRing_个结果 : ISearchResult
    {

    }

    partial class search_SearchDiamondRing_个结果 : ISearchResult
    {

    }

    partial class search_SearchGoldOrnament_个结果 : ISearchResult
    {

    }

    partial class search_SearchDiamond_个结果 : ISearchResult
    {

    }
}
