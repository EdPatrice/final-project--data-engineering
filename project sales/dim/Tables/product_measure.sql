CREATE TABLE [dim].[product_measure] (
    [measure_ID]   INT          IDENTITY (1, 1) NOT NULL,
    [measure_name] VARCHAR (50) NULL,
    CONSTRAINT [pk_product_measure_measure_ID] PRIMARY KEY CLUSTERED ([measure_ID] ASC)
);

