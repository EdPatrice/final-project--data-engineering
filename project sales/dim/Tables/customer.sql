CREATE TABLE [dim].[customer] (
    [cus_ID]      INT          IDENTITY (1, 1) NOT NULL,
    [cus_title]   VARCHAR (50) NULL,
    [first_name]  VARCHAR (50) NULL,
    [middle_name] VARCHAR (50) NULL,
    [last_name]   VARCHAR (50) NULL,
    [suffix]      VARCHAR (50) NULL,
    CONSTRAINT [pk_customer_cus_ID] PRIMARY KEY CLUSTERED ([cus_ID] ASC)
);

