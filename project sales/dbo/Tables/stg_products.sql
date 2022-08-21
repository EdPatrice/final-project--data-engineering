CREATE TABLE [dbo].[stg_products] (
    [ProductId]             FLOAT (53)     NULL,
    [Name]                  NVARCHAR (255) NULL,
    [ProductNumber]         NVARCHAR (255) NULL,
    [Color]                 NVARCHAR (255) NULL,
    [SafetyStockLevel]      FLOAT (53)     NULL,
    [ReorderPoint]          FLOAT (53)     NULL,
    [StandardCost]          FLOAT (53)     NULL,
    [ListPrice]             FLOAT (53)     NULL,
    [Size]                  NVARCHAR (255) NULL,
    [SizeUnitMeasureCode]   NVARCHAR (255) NULL,
    [Weight]                NVARCHAR (255) NULL,
    [WeightUnitMeasureCode] NVARCHAR (255) NULL,
    [ProductLine]           NVARCHAR (255) NULL,
    [ProductCategory]       NVARCHAR (255) NULL,
    [ProductSubCategory]    NVARCHAR (255) NULL,
    [ProductModel]          NVARCHAR (255) NULL
);

