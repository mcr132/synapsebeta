CREATE EXTERNAL DATA SOURCE [AzureStorage_west_public]
    WITH (
    TYPE = HADOOP,
    LOCATION = N'wasbs://contosoretaildw-tables@contosoretaildw.blob.core.windows.net/'
    );

