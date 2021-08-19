﻿CREATE EXTERNAL TABLE [asb].[DimProduct] (
    [ProductKey] INT NOT NULL,
    [ProductLabel] NVARCHAR (255) NULL,
    [ProductName] NVARCHAR (500) NULL,
    [ProductDescription] NVARCHAR (400) NULL,
    [ProductSubcategoryKey] INT NULL,
    [Manufacturer] NVARCHAR (50) NULL,
    [BrandName] NVARCHAR (50) NULL,
    [ClassID] NVARCHAR (10) NULL,
    [ClassName] NVARCHAR (20) NULL,
    [StyleID] NVARCHAR (10) NULL,
    [StyleName] NVARCHAR (20) NULL,
    [ColorID] NVARCHAR (10) NULL,
    [ColorName] NVARCHAR (20) NOT NULL,
    [Size] NVARCHAR (50) NULL,
    [SizeRange] NVARCHAR (50) NULL,
    [SizeUnitMeasureID] NVARCHAR (20) NULL,
    [Weight] FLOAT (53) NULL,
    [WeightUnitMeasureID] NVARCHAR (20) NULL,
    [UnitOfMeasureID] NVARCHAR (10) NULL,
    [UnitOfMeasureName] NVARCHAR (40) NULL,
    [StockTypeID] NVARCHAR (10) NULL,
    [StockTypeName] NVARCHAR (40) NULL,
    [UnitCost] MONEY NULL,
    [UnitPrice] MONEY NULL,
    [AvailableForSaleDate] DATETIME NULL,
    [StopSaleDate] DATETIME NULL,
    [Status] NVARCHAR (7) NULL,
    [ImageURL] NVARCHAR (150) NULL,
    [ProductURL] NVARCHAR (150) NULL,
    [ETLLoadID] INT NULL,
    [LoadDate] DATETIME NULL,
    [UpdateDate] DATETIME NULL
)
    WITH (
    DATA_SOURCE = [AzureStorage_west_public],
    LOCATION = N'/DimProduct/',
    FILE_FORMAT = [TextFileFormat],
    REJECT_TYPE = VALUE,
    REJECT_VALUE = 0
    );

