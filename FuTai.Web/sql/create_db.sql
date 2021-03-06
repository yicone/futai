SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[User]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[User](
	[UserId] [int] NULL,
	[CardId] [varchar](20) NULL,
	[Email] [varchar](20) NULL,
	[NickName] [nvarchar](20) NULL,
	[Password] [varchar](50) NULL,
	[Authority] [int] NULL,
	[UserName] [nvarchar](20) NULL,
	[Sex] [bit] NULL,
	[Phone] [nchar](10) NULL,
	[Impression] [nvarchar](200) NULL
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PairRing]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[PairRing](
	[PairRingId] [int] NOT NULL,
	[StockNumber] [nchar](10) NULL,
	[RingType] [nchar](10) NULL,
	[Type1] [int] NULL,
 CONSTRAINT [PK_PairRing] PRIMARY KEY CLUSTERED 
(
	[PairRingId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Jewel]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Jewel](
	[JewelId] [int] NOT NULL,
	[JewelType] [nchar](10) NULL,
	[Type1] [int] NULL,
 CONSTRAINT [PK_Jewel] PRIMARY KEY CLUSTERED 
(
	[JewelId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GoldOrnament]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[GoldOrnament](
	[GoldOrnamentId] [int] NOT NULL,
	[OrnamentType] [nchar](10) NULL,
	[Type1] [int] NULL,
	[Type2] [int] NULL,
 CONSTRAINT [PK_GoldOrnament] PRIMARY KEY CLUSTERED 
(
	[GoldOrnamentId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DiamondOrnament]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[DiamondOrnament](
	[DiamondOrnamentId] [int] NOT NULL,
	[OrnamentType] [nchar](10) NULL,
	[Type1] [int] NULL,
	[Type2] [int] NULL,
 CONSTRAINT [PK_DiamondOrnament] PRIMARY KEY CLUSTERED 
(
	[DiamondOrnamentId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DiamondGroup]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[DiamondGroup](
	[DiamondGroupId] [int] NOT NULL,
	[UserId] [int] NULL,
	[DiamondId] [int] NULL,
	[MetalType] [varchar](20) NULL,
	[Style] [varchar](20) NULL,
	[RingBracketId] [int] NULL,
	[CreateDate] [datetime] NULL,
	[UpdateDate] [datetime] NULL,
	[DeleteDate] [datetime] NULL,
 CONSTRAINT [PK_DiamondGroup] PRIMARY KEY CLUSTERED 
(
	[DiamondGroupId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[RingBracket]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[RingBracket](
	[BracketId] [int] IDENTITY(1,1) NOT NULL,
	[MetalType] [varchar](20) NULL,
	[Style] [varchar](20) NULL,
	[StyleId] [int] NULL,
	[Type1] [int] NULL,
	[Type2] [int] NULL,
	[Craft] [varchar](20) NULL,
 CONSTRAINT [PK_RingBracket] PRIMARY KEY CLUSTERED 
(
	[BracketId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'RingBracket', N'COLUMN',N'Type1'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'镶嵌方式' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RingBracket', @level2type=N'COLUMN',@level2name=N'Type1'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'RingBracket', N'COLUMN',N'Type2'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'分类' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RingBracket', @level2type=N'COLUMN',@level2name=N'Type2'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'RingBracket', N'COLUMN',N'Craft'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'镶石工艺' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RingBracket', @level2type=N'COLUMN',@level2name=N'Craft'
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[search_SearchDiamond]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[search_SearchDiamond]
	(
      @Price1 DECIMAL = NULL,
      @Price2 DECIMAL = NULL,
      @Type1 INT,
      @Type2 INT
    )
AS /* SET NOCOUNT ON */
    BEGIN
        SET @price1 = ISNULL(@Price1, 0) ;
        SET @Price2 = ISNULL(@Price2,
                             ( SELECT   MAX(p.Price)
                               FROM     dbo.Diamond rb
                                        INNER JOIN dbo.Product p ON rb.DiamondID = p.ProductId
                             )) ;

        SELECT  *
        FROM    dbo.Diamond rb
                INNER JOIN dbo.Product p ON rb.DiamondID = p.ProductId
        WHERE   p.Price BETWEEN @Price1 AND @Price2
                --AND Type1 = @Type1
                --AND Type2 = @Type2
        ORDER BY p.CreateDate,
                p.Price
    END' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DiamondRing]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[DiamondRing](
	[DiamondRingId] [int] NOT NULL,
	[StockNumber] [varchar](20) NULL,
	[Type1] [int] NULL,
 CONSTRAINT [PK_DiamondRing] PRIMARY KEY CLUSTERED 
(
	[DiamondRingId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[c_DiscountType]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[c_DiscountType](
	[TypeId] [int] NOT NULL,
	[Discount] [int] NULL,
	[TypeDescription] [varchar](20) NULL,
 CONSTRAINT [PK_DiscountType] PRIMARY KEY CLUSTERED 
(
	[TypeId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Diamond]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Diamond](
	[DiamondID] [int] IDENTITY(1,1) NOT NULL,
	[Carat] [varchar](20) NULL,
	[Clarity] [varchar](20) NULL,
	[Color] [varchar](20) NULL,
	[Cut] [varchar](20) NULL,
	[CutStyle] [varchar](20) NULL,
	[Diameter] [varchar](20) NULL,
	[CertType] [int] NULL,
	[CertId] [varchar](20) NULL,
	[Polish] [varchar](20) NULL,
	[Symmetry] [varchar](20) NULL,
	[AH] [varchar](20) NULL,
	[Fluorescence] [varchar](20) NULL,
 CONSTRAINT [PK_Diamond] PRIMARY KEY CLUSTERED 
(
	[DiamondID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Product]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Product](
	[ProductId] [int] NOT NULL,
	[ProductType] [varchar](20) NOT NULL,
	[FTId] [varchar](20) NULL,
	[CounterId] [varchar](20) NULL,
	[Price] [money] NULL,
	[CreateDate] [datetime] NULL,
	[Status] [int] NULL,
	[Location] [varchar](20) NULL,
	[DiscountType] [int] NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[ProductId] ASC,
	[ProductType] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Product', N'COLUMN',N'FTId'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'福泰内部编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Product', @level2type=N'COLUMN',@level2name=N'FTId'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Product', N'COLUMN',N'CounterId'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'柜台编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Product', @level2type=N'COLUMN',@level2name=N'CounterId'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Product', N'COLUMN',N'CreateDate'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'上架时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Product', @level2type=N'COLUMN',@level2name=N'CreateDate'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Product', N'COLUMN',N'Status'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'预定,在库,购买' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Product', @level2type=N'COLUMN',@level2name=N'Status'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Product', N'COLUMN',N'Location'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'商品所在地' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Product', @level2type=N'COLUMN',@level2name=N'Location'
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[search_SearchJewel]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[search_SearchJewel]
    (
      @Price1 DECIMAL = NULL,
      @Price2 DECIMAL = NULL,
      @Type1 INT,
      @Type2 INT
    )
AS /* SET NOCOUNT ON */
    BEGIN
        SET @price1 = ISNULL(@Price1, 0) ;
        SET @Price2 = ISNULL(@Price2,
                             ( SELECT   MAX(p.Price)
                               FROM     dbo.PairRing rb
                                        INNER JOIN dbo.Product p ON rb.PairRingId = p.ProductId
                             )) ;

        SELECT  *
        FROM    dbo.PairRing rb
                INNER JOIN dbo.Product p ON rb.PairRingId = p.ProductId
        WHERE   p.Price BETWEEN @Price1 AND @Price2
                AND Type1 = @Type1
                --AND Type2 = @Type2
        ORDER BY p.CreateDate,
                p.Price
    END
' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[search_SearchPairRing]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[search_SearchPairRing]
    (
      @Price1 DECIMAL = NULL,
      @Price2 DECIMAL = NULL,
      @Type1 INT,
      @Type2 INT
    )
AS /* SET NOCOUNT ON */
    BEGIN
        SET @price1 = ISNULL(@Price1, 0) ;
        SET @Price2 = ISNULL(@Price2,
                             ( SELECT   MAX(p.Price)
                               FROM     dbo.GoldOrnament rb
                                        INNER JOIN dbo.Product p ON rb.GoldOrnamentId = p.ProductId
                             )) ;

        SELECT  *
        FROM    dbo.GoldOrnament rb
                INNER JOIN dbo.Product p ON rb.GoldOrnamentId = p.ProductId
        WHERE   p.Price BETWEEN @Price1 AND @Price2
                AND Type1 = @Type1
                AND Type2 = @Type2
        ORDER BY p.CreateDate,
                p.Price
    END' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[search_SearchGoldOrnament]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[search_SearchGoldOrnament]
    (
      @Price1 DECIMAL = NULL,
      @Price2 DECIMAL = NULL,
      @Type1 INT,
      @Type2 INT
    )
AS /* SET NOCOUNT ON */
    BEGIN
        SET @price1 = ISNULL(@Price1, 0) ;
        SET @Price2 = ISNULL(@Price2,
                             ( SELECT   MAX(p.Price)
                               FROM     dbo.GoldOrnament rb
                                        INNER JOIN dbo.Product p ON rb.GoldOrnamentId = p.ProductId
                             )) ;

        SELECT  *
        FROM    dbo.GoldOrnament rb
                INNER JOIN dbo.Product p ON rb.GoldOrnamentId = p.ProductId
        WHERE   p.Price BETWEEN @Price1 AND @Price2
                AND Type1 = @Type1
                AND Type2 = @Type2
        ORDER BY p.CreateDate,
                p.Price
    END
' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[search_SearchDiamondOrnament]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[search_SearchDiamondOrnament]
	(
      @Price1 DECIMAL = NULL,
      @Price2 DECIMAL = NULL,
      @Type1 INT,
      @Type2 INT
    )
AS /* SET NOCOUNT ON */
    BEGIN
        SET @price1 = ISNULL(@Price1, 0) ;
        SET @Price2 = ISNULL(@Price2,
                             ( SELECT   MAX(p.Price)
                               FROM     dbo.DiamondOrnament rb
                                        INNER JOIN dbo.Product p ON rb.DiamondOrnamentId = p.ProductId
                             )) ;

        SELECT  *
        FROM    dbo.DiamondOrnament rb
                INNER JOIN dbo.Product p ON rb.DiamondOrnamentId = p.ProductId
        WHERE   p.Price BETWEEN @Price1 AND @Price2
                AND Type1 = @Type1
                AND Type2 = @Type2
        ORDER BY p.CreateDate,
                p.Price
    END' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[search_SearchRingBracket]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[search_SearchRingBracket]
    (
      @Price1 DECIMAL = NULL,
      @Price2 DECIMAL = NULL,
      @Type1 INT,
      @Type2 INT
    )
AS /* SET NOCOUNT ON */
    BEGIN
        SET @price1 = ISNULL(@Price1, 0) ;
        SET @Price2 = ISNULL(@Price2,
                             ( SELECT   MAX(p.Price)
                               FROM     dbo.RingBracket rb
                                        INNER JOIN dbo.Product p ON rb.BracketId = p.ProductId
                             )) ;

        SELECT  *
        FROM    dbo.RingBracket rb
                INNER JOIN dbo.Product p ON rb.BracketId = p.ProductId
        WHERE   p.Price BETWEEN @Price1 AND @Price2
                AND Type1 = @Type1
                AND Type2 = @Type2
        ORDER BY p.CreateDate,
                p.Price
    END
    

' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[search_SearchDiamondRing]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[search_SearchDiamondRing]
	(
      @Price1 DECIMAL = NULL,
      @Price2 DECIMAL = NULL,
      @Type1 INT,
      @Type2 INT
    )
AS /* SET NOCOUNT ON */
    BEGIN
        SET @price1 = ISNULL(@Price1, 0) ;
        SET @Price2 = ISNULL(@Price2,
                             ( SELECT   MAX(p.Price)
                               FROM     dbo.DiamondRing rb
                                        INNER JOIN dbo.Product p ON rb.DiamondRingId = p.ProductId
                             )) ;

        SELECT  *
        FROM    dbo.DiamondRing rb
                INNER JOIN dbo.Product p ON rb.DiamondRingId = p.ProductId
        WHERE   p.Price BETWEEN @Price1 AND @Price2
                AND Type1 = @Type1
                --AND Type2 = @Type2
        ORDER BY p.CreateDate,
                p.Price
    END
' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[product_InsertDiamond]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[product_InsertDiamond]
    (
      @FTId VARCHAR(20),
      @CounterId VARCHAR(20),	--柜台id
      @Status INT,			--商品状态
      @Location VARCHAR(20),	--商品所在地
      @DiscountType INT = NULL,	--折扣类型
      @Price MONEY,
      --
      @Carat VARCHAR(20),
      @Clarity VARCHAR(20),
      @Color VARCHAR(20),
      @Cut VARCHAR(20),
      @CutStyle VARCHAR(20),
      @Diameter VARCHAR(20),
      @CertType INT,
      @CertId VARCHAR(20),
      @Polish VARCHAR(20),
      @Symmetry VARCHAR(20),
      @AH VARCHAR(20),
      @Fluorescence VARCHAR(20)
    )
AS 
    BEGIN
        DECLARE @ProductId INT ;
                
        INSERT  dbo.Diamond
                (
                  Carat,
                  Clarity,
                  Color,
                  Cut,
                  CutStyle,
                  Diameter,
                  CertType,
                  CertId,
                  Polish,
                  Symmetry,
                  AH,
                  Fluorescence
				
                )
        VALUES  (
                  /* Carat - varchar(20) */
                  @Carat,
					/* Clarity - varchar(20) */
                  @Clarity,
					/* Color - varchar(20) */
                  @Color,
					/* Cut - varchar(20) */
                  @Cut,
					/* CutStyle - varchar(20) */
                  @CutStyle,
					/* Diameter - varchar(20) */
                  @Diameter,
					/* CertType - int */
                  @CertType,
					/* CertId - varchar(20) */
                  @CertId,
					/* Polish - varchar(20) */
                  @Polish,
					/* Symmetry - varchar(20) */
                  @Symmetry,
					/* AH - varchar(20) */
                  @AH,
					/* Fluorescence - varchar(20) */
                  @Fluorescence 
                ) 
                
        SET @ProductId = @@IDENTITY ;

        INSERT  INTO Product
                (
                  ProductId,
                  ProductType,
                  FTId,
                  CounterId,
                  Price,
                  CreateDate,
                  Status,
                  Location,
                  DiscountType
                )
        VALUES  (
                  @ProductId,
                  ''Diamond'',
                  @FTId,
                  @CounterId,
                  @Price,
                  GETDATE(),
                  @Status,
                  @Location,
                  @DiscountType
                )

    END' 
END
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Product_Diamond]') AND parent_object_id = OBJECT_ID(N'[dbo].[Product]'))
ALTER TABLE [dbo].[Product]  WITH NOCHECK ADD  CONSTRAINT [FK_Product_Diamond] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Diamond] ([DiamondID])
GO
ALTER TABLE [dbo].[Product] NOCHECK CONSTRAINT [FK_Product_Diamond]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Product_DiamondOrnament]') AND parent_object_id = OBJECT_ID(N'[dbo].[Product]'))
ALTER TABLE [dbo].[Product]  WITH NOCHECK ADD  CONSTRAINT [FK_Product_DiamondOrnament] FOREIGN KEY([ProductId])
REFERENCES [dbo].[DiamondOrnament] ([DiamondOrnamentId])
GO
ALTER TABLE [dbo].[Product] NOCHECK CONSTRAINT [FK_Product_DiamondOrnament]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Product_DiamondRing]') AND parent_object_id = OBJECT_ID(N'[dbo].[Product]'))
ALTER TABLE [dbo].[Product]  WITH NOCHECK ADD  CONSTRAINT [FK_Product_DiamondRing] FOREIGN KEY([ProductId])
REFERENCES [dbo].[DiamondRing] ([DiamondRingId])
GO
ALTER TABLE [dbo].[Product] NOCHECK CONSTRAINT [FK_Product_DiamondRing]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Product_GoldOrnament]') AND parent_object_id = OBJECT_ID(N'[dbo].[Product]'))
ALTER TABLE [dbo].[Product]  WITH NOCHECK ADD  CONSTRAINT [FK_Product_GoldOrnament] FOREIGN KEY([ProductId])
REFERENCES [dbo].[GoldOrnament] ([GoldOrnamentId])
GO
ALTER TABLE [dbo].[Product] NOCHECK CONSTRAINT [FK_Product_GoldOrnament]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Product_Jewel]') AND parent_object_id = OBJECT_ID(N'[dbo].[Product]'))
ALTER TABLE [dbo].[Product]  WITH NOCHECK ADD  CONSTRAINT [FK_Product_Jewel] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Jewel] ([JewelId])
GO
ALTER TABLE [dbo].[Product] NOCHECK CONSTRAINT [FK_Product_Jewel]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Product_RingBracket]') AND parent_object_id = OBJECT_ID(N'[dbo].[Product]'))
ALTER TABLE [dbo].[Product]  WITH NOCHECK ADD  CONSTRAINT [FK_Product_RingBracket] FOREIGN KEY([ProductId])
REFERENCES [dbo].[RingBracket] ([BracketId])
GO
ALTER TABLE [dbo].[Product] NOCHECK CONSTRAINT [FK_Product_RingBracket]
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_Product]') AND parent_object_id = OBJECT_ID(N'[dbo].[Product]'))
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [CK_Product] CHECK  (([ProductType]='Jewel' OR [ProductType]='GoldOrnament' OR [ProductType]='DiamondOrnament' OR [ProductType]='PairRing' OR [ProductType]='DiamondRing' OR [ProductType]='RingBracket' OR [ProductType]='Diamond'))
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [CK_Product]
