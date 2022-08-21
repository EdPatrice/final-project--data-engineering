CREATE TABLE [dbo].[stg_orders] (
    [SalesOrderID]        FLOAT (53)     NULL,
    [OrderDate]           DATETIME       NULL,
    [DueDate]             DATETIME       NULL,
    [ShipDate]            DATETIME       NULL,
    [SalesOrderNumber]    NVARCHAR (255) NULL,
    [OnlineOrderFlag]     FLOAT (53)     NULL,
    [PurchaseOrderNumber] NVARCHAR (255) NULL,
    [AccountNumber]       NVARCHAR (255) NULL,
    [CustomerID]          FLOAT (53)     NULL,
    [SalesPersonID]       FLOAT (53)     NULL,
    [SubTotal]            FLOAT (53)     NULL,
    [TaxAmt]              FLOAT (53)     NULL,
    [Freight]             FLOAT (53)     NULL,
    [TotalDue]            FLOAT (53)     NULL,
    [OrderQty]            FLOAT (53)     NULL,
    [ProductID]           FLOAT (53)     NULL,
    [UnitPrice]           FLOAT (53)     NULL,
    [UnitPriceDiscount]   FLOAT (53)     NULL,
    [LineTotal]           FLOAT (53)     NULL
);

