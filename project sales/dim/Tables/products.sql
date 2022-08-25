CREATE TABLE [dim].[products] (
    [product_ID]          INT          NOT NULL,
    [product_name]        VARCHAR (50) NULL,
    [product_number]      VARCHAR (50) NULL,
    [color_ID]            INT          NULL,
    [safety_stock_level]  INT          NULL,
    [reorder_point]       INT          NULL,
    [standard_cost]       FLOAT (53)   NULL,
    [list_price]          FLOAT (53)   NULL,
    [product_size]        VARCHAR (50) NULL,
    [ps_measure_ID]       INT          NULL,
    [product_weight]      VARCHAR (50) NULL,
    [pw_measure_ID]       INT          NULL,
    [product_line_ID]     INT          NULL,
    [product_category_ID] INT          NULL,
    [model_ID]            INT          NULL,
    CONSTRAINT [pk_products_products_ID] PRIMARY KEY CLUSTERED ([product_ID] ASC),
    CONSTRAINT [fk_product_category_product_line_ID] FOREIGN KEY ([product_line_ID]) REFERENCES [dim].[product_line] ([product_line_ID]),
    CONSTRAINT [fk_products_color_ID] FOREIGN KEY ([color_ID]) REFERENCES [dim].[product_color] ([color_ID]),
    CONSTRAINT [fk_products_model_ID] FOREIGN KEY ([model_ID]) REFERENCES [dim].[product_model] ([model_ID]),
    CONSTRAINT [fk_products_product_category_ID] FOREIGN KEY ([product_category_ID]) REFERENCES [dim].[product_category] ([product_category_ID]),
    CONSTRAINT [fk_products_ps_measure_ID] FOREIGN KEY ([ps_measure_ID]) REFERENCES [dim].[product_measure] ([measure_ID]),
    CONSTRAINT [fk_products_pw_measure_ID] FOREIGN KEY ([pw_measure_ID]) REFERENCES [dim].[product_measure] ([measure_ID])
);



