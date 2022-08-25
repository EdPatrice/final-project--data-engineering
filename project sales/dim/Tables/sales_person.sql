CREATE TABLE [dim].[sales_person] (
    [sp_ID]          INT        NOT NULL,
    [sales_quota]    INT        NULL,
    [bonus]          INT        NULL,
    [commission_pct] FLOAT (53) NULL,
    CONSTRAINT [pk_sales_person_sp_ID] PRIMARY KEY CLUSTERED ([sp_ID] ASC)
);



