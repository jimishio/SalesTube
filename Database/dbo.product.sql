CREATE TABLE [dbo].[product] (
    [prod_id]    VARCHAR (50)  NOT NULL,
    [prod_name]  VARCHAR (50)  NOT NULL,
    [prod_desc]  VARCHAR (MAX) NULL,
    [prod_price] FLOAT (53)    NULL,
    [prod_qty] INT NULL, 
    CONSTRAINT [PK_product] PRIMARY KEY CLUSTERED ([prod_id] ASC)
);

