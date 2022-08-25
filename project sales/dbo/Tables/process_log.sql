CREATE TABLE [dbo].[process_log] (
    [process_log_ID]     INT          IDENTITY (1, 1) NOT NULL,
    [process_date]       DATE         NULL,
    [file_name]          VARCHAR (50) NULL,
    [status]             VARCHAR (50) NULL,
    [number_of_rows]     INT          NULL,
    [process_start_time] DATETIME     NULL,
    [process_end_time]   DATETIME     NULL,
    CONSTRAINT [pk_process_log_process_log_ID] PRIMARY KEY CLUSTERED ([process_log_ID] ASC)
);



