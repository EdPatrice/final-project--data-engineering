CREATE TABLE [dim].[product_model] (
    [model_ID]   INT          IDENTITY (1, 1) NOT NULL,
    [model_name] VARCHAR (50) NULL,
    CONSTRAINT [pk_product_model_model_ID] PRIMARY KEY CLUSTERED ([model_ID] ASC)
);

