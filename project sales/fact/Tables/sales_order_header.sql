CREATE TABLE [fact].[sales_order_header] (
    [sales_order_ID]        INT             NOT NULL,
    [order_date]            SMALLDATETIME   NULL,
    [due_date]              SMALLDATETIME   NULL,
    [ship_date]             SMALLDATETIME   NULL,
    [sales_order_number]    VARCHAR (50)    NULL,
    [online_order_flag]     BIT             NULL,
    [purchase_order_number] VARCHAR (50)    NULL,
    [account_number]        VARCHAR (50)    NULL,
    [cus_ID]                INT             NULL,
    [sp_ID]                 INT             NULL,
    [sub_total]             NUMERIC (38, 4) NULL,
    [tax_amount]            FLOAT (53)      NULL,
    [freight]               FLOAT (53)      NULL,
    [total_due]             FLOAT (53)      NULL,
    CONSTRAINT [pk_sales_order_header_sales_order_ID] PRIMARY KEY CLUSTERED ([sales_order_ID] ASC),
    CONSTRAINT [fk_sales_order_header_cus_ID] FOREIGN KEY ([cus_ID]) REFERENCES [dim].[customer] ([cus_ID]),
    CONSTRAINT [fk_sales_order_header_sp_ID] FOREIGN KEY ([sp_ID]) REFERENCES [dim].[sales_person] ([sp_ID])
);



