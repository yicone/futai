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

    partial class search_SearchRingBracket_����� : ISearchResult
    {
 
    }

    partial class search_SearchDiamondOrnament_����� : ISearchResult
    {

    }

    partial class search_SearchJewel_����� : ISearchResult
    {

    }

    partial class search_SearchPairRing_����� : ISearchResult
    {

    }

    partial class search_SearchDiamondRing_����� : ISearchResult
    {

    }

    partial class search_SearchGoldOrnament_����� : ISearchResult
    {

    }

    partial class search_SearchDiamond_����� : ISearchResult
    {

    }
}
