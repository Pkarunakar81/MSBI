sp_configure 'external scripts enabled', 1;
RECONFIGURE WITH OVERRIDE;  


EXEC sp_execute_external_script
  @language =N'R',
  @script=N'print("Welcome to R in SQL Server")'
GO


DROP PROCEDURE IF EXISTS dbo.GetMonthlySalesMean;
  GO
  CREATE PROCEDURE dbo.GetMonthlySalesMean
    (@MinSales MONEY, @MonthsYTD TINYINT)
  AS
    SET NOCOUNT ON;
    DECLARE @rscript NVARCHAR(MAX);
    SET @rscript = N'
      sales <- SqlData;
      sales[,3] <- SqlData$SalesYTD / TotalMonths;
      MeanOut <- mean(sales[,3]);';
    DECLARE @sqlscript NVARCHAR(MAX);
    SET @sqlscript = N'
      SELECT FirstName, LastName, SalesYTD
      FROM Sales.vSalesPerson
      WHERE SalesYTD > @TotalSales
      ORDER BY SalesYTD DESC;';
    DECLARE @mean MONEY;

    EXEC sp_execute_external_script
      @language = N'R',
      @script = @rscript,
      @input_data_1 = @sqlscript,
      @input_data_1_name = N'SqlData',
      @params = N'@TotalSales MONEY, @TotalMonths TINYINT, @MeanOut MONEY OUTPUT',
      @TotalSales = @MinSales,
      @TotalMonths = @MonthsYTD,
      @MeanOut = @mean OUTPUT
      WITH RESULT SETS NONE; 
    SELECT @mean AS SalesMean;
  GO


  EXEC dbo.GetMonthlySalesMean @MinSales = 2000000, @MonthsYTD = 7;