using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace FuTai.Component
{
    public interface ISearchResult
    {
        Nullable<decimal> Price { get; set; }

        Nullable<System.DateTime> CreateDate { get; set; }
    }

    partial class search_SearchRingBracketResult : ISearchResult
    {

    }

    partial class search_SearchDiamondOrnamentResult : ISearchResult
    {

    }

    partial class search_SearchJewelResult : ISearchResult
    {

    }

    partial class search_SearchPairRingResult : ISearchResult
    {

    }

    partial class search_SearchDiamondRingResult : ISearchResult
    {

    }

    partial class search_SearchGoldOrnamentResult : ISearchResult
    {

    }

    partial class search_SearchDiamondResult : ISearchResult
    {

    }
}
