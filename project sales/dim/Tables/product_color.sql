CREATE TABLE [dim].[product_color] (
    [color_ID]   INT          IDENTITY (1, 1) NOT NULL,
    [color_name] VARCHAR (50) NULL,
    CONSTRAINT [pk_product_color_color_ID] PRIMARY KEY CLUSTERED ([color_ID] ASC)
);

