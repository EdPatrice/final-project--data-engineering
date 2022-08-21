CREATE TABLE [dim].[product_category] (
    [product_category_ID]   INT          IDENTITY (1, 1) NOT NULL,
    [product_line_ID]       INT          NULL,
    [ps_category_ID]        INT          NULL,
    [product_category_name] VARCHAR (50) NULL,
    CONSTRAINT [pk_product_category_product_category_ID] PRIMARY KEY CLUSTERED ([product_category_ID] ASC),
    CONSTRAINT [fk_product_category_product_line_ID] FOREIGN KEY ([product_line_ID]) REFERENCES [dim].[product_line] ([product_line_ID]),
    CONSTRAINT [fk_product_category_ps_category_ID] FOREIGN KEY ([ps_category_ID]) REFERENCES [dim].[product_sub_category] ([ps_category_ID])
);

