CREATE TABLE [fact].[sales_order_details] (
    [sales_order_details_ID] INT        IDENTITY (1, 1) NOT NULL,
    [sales_order_ID]         INT        NULL,
    [order_qty]              INT        NULL,
    [product_ID]             INT        NULL,
    [unit_price]             FLOAT (53) NULL,
    [unit_price_discount]    FLOAT (53) NULL,
    [line_total]             FLOAT (53) NULL,
    CONSTRAINT [pk_sales_order_details_sales_order_details_ID] PRIMARY KEY CLUSTERED ([sales_order_details_ID] ASC),
    CONSTRAINT [fk_sales_order_details_product_ID] FOREIGN KEY ([product_ID]) REFERENCES [dim].[products] ([product_ID]),
    CONSTRAINT [fk_sales_order_details_sales_order_ID] FOREIGN KEY ([sales_order_ID]) REFERENCES [fact].[sales_order_header] ([sales_order_ID])
);

