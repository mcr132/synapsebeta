﻿CREATE TABLE [cso].[FactOnlineSalesRR] (
    [OnlineSalesKey]       INT           NOT NULL,
    [DateKey]              DATETIME      NOT NULL,
    [StoreKey]             INT           NOT NULL,
    [ProductKey]           INT           NOT NULL,
    [PromotionKey]         INT           NOT NULL,
    [CurrencyKey]          INT           NOT NULL,
    [CustomerKey]          INT           NOT NULL,
    [SalesOrderNumber]     NVARCHAR (20) NOT NULL,
    [SalesOrderLineNumber] INT           NULL,
    [SalesQuantity]        INT           NOT NULL,
    [SalesAmount]          MONEY         NOT NULL,
    [ReturnQuantity]       INT           NOT NULL,
    [ReturnAmount]         MONEY         NULL,
    [DiscountQuantity]     INT           NULL,
    [DiscountAmount]       MONEY         NULL,
    [TotalCost]            MONEY         NOT NULL,
    [UnitCost]             MONEY         NULL,
    [UnitPrice]            MONEY         NULL,
    [ETLLoadID]            INT           NULL,
    [LoadDate]             DATETIME      NULL,
    [UpdateDate]           DATETIME      NULL
)
WITH (CLUSTERED COLUMNSTORE INDEX, DISTRIBUTION = ROUND_ROBIN);

