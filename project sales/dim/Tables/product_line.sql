CREATE TABLE [dim].[product_line] (
    [product_line_ID]   INT          IDENTITY (1, 1) NOT NULL,
    [product_line_name] VARCHAR (50) NULL,
    CONSTRAINT [pk_product_line_product_line_ID] PRIMARY KEY CLUSTERED ([product_line_ID] ASC)
);

