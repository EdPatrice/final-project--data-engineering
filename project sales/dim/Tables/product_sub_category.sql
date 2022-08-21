CREATE TABLE [dim].[product_sub_category] (
    [ps_category_ID]   INT          IDENTITY (1, 1) NOT NULL,
    [ps_category_name] VARCHAR (50) NULL,
    CONSTRAINT [pk_product_sub_category_ps_category_ID] PRIMARY KEY CLUSTERED ([ps_category_ID] ASC)
);

