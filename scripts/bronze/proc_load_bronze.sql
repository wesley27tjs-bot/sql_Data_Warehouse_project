			--DEVElOP Bronze SQL Load Scripts--
-- CREATE/ALTER procedure to call a block of code from another query, BEGIN and END used to set the block of code
CREATE OR ALTER PROCEDURE bronze.load_bronze AS
BEGIN

--DECLARE used to define variable
DECLARE @start_time DATETIME, @end_time DATETIME;
--TRY and CATCH function to find and catch errors
BEGIN TRY

-- SET function sets variable at certain value
SET @start_time = GETDATE();
PRINT'======================================================================================================================'
PRINT 'Loading Bronze Layer'
PRINT'======================================================================================================================'

/*						DUMMY WARNING				*/
/*	PLEASE CREATE A TABLE BEFORE DOING BULK INSERT	*/

PRINT '/*******************************************************************************************************************/'
PRINT 'Loading CRM Tables'

									/*CUSTOMER INFORMATION TABLE*/
--DECLARE used to define variable
DECLARE @start_time1 DATETIME, @end_time1 DATETIME;
-------------------------------------------------------------------------------------------------------------------------------
print ''
print '>>> INSERTING DATA:bronze.crm_cust_info'
--Dumps massive amount of data from external files to database
BULK INSERT bronze.crm_cust_info 

--FROM function tells database where to source the data
FROM 'C:\Users\Devic\OneDrive\Documents\Projects\sql-data-warehouse-project\datasets\source_crm\cust_info.csv'

--WITH function tells us how to handle the file
WITH (
	--First row usually holds the header so the first row of data is row 2
	FIRSTROW = 2,

	--FIELDTERMINATOR determines the seperator of data
	FIELDTERMINATOR = ',',

	--TABLOCK improve performance of view the data as it loads
	TABLOCK
);

--Test if data has been loaded into SQL
SELECT COUNT (*) FROM bronze.crm_cust_info

-- SET function sets variable at certain value
SET @end_time1 = GETDATE();
print '<<Load Duration: '+CAST(DATEDIFF(second,@start_time1,@end_time1)AS NVARCHAR)+' seconds';
-------------------------------------------------------------------------------------------------------------------------------

									/*PRODUCT INFORMATION TABLE*/
--DECLARE used to define variable
DECLARE @start_time2 DATETIME, @end_time2 DATETIME;
-------------------------------------------------------------------------------------------------------------------------------
print ''
print '>>> INSERTING DATA:bronze.crm_prd_info'
--Dumps massive amount of data from external files to database
BULK INSERT bronze.crm_prd_info 

--FROM function tells database where to source the data
FROM 'C:\Users\Devic\OneDrive\Documents\Projects\sql-data-warehouse-project\datasets\source_crm\prd_info.csv'

--WITH function tells us how to handle the file
WITH (
	--First row usually holds the header so the first row of data is row 2
	FIRSTROW = 2,

	--FIELDTERMINATOR determines the seperator of data
	FIELDTERMINATOR = ',',

	--TABLOCK improve performance of view the data as it loads
	TABLOCK
);

--Test if data has been loaded into SQL
SELECT COUNT (*) FROM bronze.crm_prd_info

-- SET function sets variable at certain value
SET @end_time2 = GETDATE();
print '<<Load Duration: '+CAST(DATEDIFF(second,@start_time2,@end_time2)AS NVARCHAR)+' seconds';
-------------------------------------------------------------------------------------------------------------------------------
									/*SALES DETAIL TABLE*/
--DECLARE used to define variable
DECLARE @start_time3 DATETIME, @end_time3 DATETIME;
-------------------------------------------------------------------------------------------------------------------------------
print ''
print '>>> INSERTING DATA:bronze.crm_sales_details'
--Dumps massive amount of data from external files to database
BULK INSERT bronze.crm_sales_details 

--FROM function tells database where to source the data
FROM 'C:\Users\Devic\OneDrive\Documents\Projects\sql-data-warehouse-project\datasets\source_crm\sales_details.csv'

--WITH function tells us how to handle the file
WITH (
	--First row usually holds the header so the first row of data is row 2
	FIRSTROW = 2,

	--FIELDTERMINATOR determines the seperator of data
	FIELDTERMINATOR = ',',

	--TABLOCK improve performance of view the data as it loads
	TABLOCK
);

--Test if data has been loaded into SQL
SELECT COUNT (*) FROM bronze.crm_sales_details

-- SET function sets variable at certain value
SET @end_time3 = GETDATE();
print '<<Load Duration: '+CAST(DATEDIFF(second,@start_time3,@end_time3)AS NVARCHAR)+' seconds';
-------------------------------------------------------------------------------------------------------------------------------
PRINT '/*******************************************************************************************************************/'

PRINT 'Loading ERP Tables'
PRINT '/*******************************************************************************************************************/'
									/*CUST AZ12 TABLE*/
--DECLARE used to define variable
DECLARE @start_time4 DATETIME, @end_time4 DATETIME;
-------------------------------------------------------------------------------------------------------------------------------
print ''
print '>>> INSERTING DATA:bronze.erp_CUST_AZ12'
--Dumps massive amount of data from external files to database
BULK INSERT bronze.erp_CUST_AZ12 

--FROM function tells database where to source the data
FROM 'C:\Users\Devic\OneDrive\Documents\Projects\sql-data-warehouse-project\datasets\source_erp\CUST_AZ12.csv'

--WITH function tells us how to handle the file
WITH (
	--First row usually holds the header so the first row of data is row 2
	FIRSTROW = 2,

	--FIELDTERMINATOR determines the seperator of data
	FIELDTERMINATOR = ',',

	--TABLOCK improve performance of view the data as it loads
	TABLOCK
);

--Test if data has been loaded into SQL
SELECT COUNT (*) FROM bronze.erp_CUST_AZ12

-- SET function sets variable at certain value
SET @end_time4 = GETDATE();
print '<<Load Duration: '+CAST(DATEDIFF(second,@start_time4,@end_time4)AS NVARCHAR)+' seconds';
-------------------------------------------------------------------------------------------------------------------------------
									/*LOC A101 TABLE*/
--DECLARE used to define variable
DECLARE @start_time5 DATETIME, @end_time5 DATETIME;
-------------------------------------------------------------------------------------------------------------------------------
print ''
print '>>> INSERTING DATA:bronze.erp_LOC_A101'
--Dumps massive amount of data from external files to database
BULK INSERT bronze.erp_LOC_A101 

--FROM function tells database where to source the data
FROM 'C:\Users\Devic\OneDrive\Documents\Projects\sql-data-warehouse-project\datasets\source_erp\LOC_A101.csv'

--WITH function tells us how to handle the file
WITH (
	--First row usually holds the header so the first row of data is row 2
	FIRSTROW = 2,

	--FIELDTERMINATOR determines the seperator of data
	FIELDTERMINATOR = ',',

	--TABLOCK improve performance of view the data as it loads
	TABLOCK
);

--Test if data has been loaded into SQL
SELECT COUNT (*) FROM bronze.erp_LOC_A101

-- SET function sets variable at certain value
SET @end_time5 = GETDATE();
print '<<Load Duration: '+CAST(DATEDIFF(second,@start_time5,@end_time5)AS NVARCHAR)+' seconds';
-------------------------------------------------------------------------------------------------------------------------------
									/*PX CAT G1V2 TABLE*/
--DECLARE used to define variable
DECLARE @start_time6 DATETIME, @end_time6 DATETIME;
-------------------------------------------------------------------------------------------------------------------------------
print ''
print '>>> INSERTING DATA:bronze.erp_PX_CAT_G1V2'
--Dumps massive amount of data from external files to database
BULK INSERT bronze.erp_PX_CAT_G1V2 

--FROM function tells database where to source the data
FROM 'C:\Users\Devic\OneDrive\Documents\Projects\sql-data-warehouse-project\datasets\source_erp\PX_CAT_G1V2.csv'

--WITH function tells us how to handle the file
WITH (
	--First row usually holds the header so the first row of data is row 2
	FIRSTROW = 2,

	--FIELDTERMINATOR determines the seperator of data
	FIELDTERMINATOR = ',',

	--TABLOCK improve performance of view the data as it loads
	TABLOCK
);

--Test if data has been loaded into SQL
SELECT COUNT (*) FROM bronze.erp_PX_CAT_G1V2

-- SET function sets variable at certain value
SET @end_time6 = GETDATE();
print '<<Load Duration: '+CAST(DATEDIFF(second,@start_time6,@end_time6)AS NVARCHAR)+' seconds';
-------------------------------------------------------------------------------------------------------------------------------
PRINT '/*******************************************************************************************************************/'
SET @end_time = GETDATE();
print '<<Load Duration: '+CAST(DATEDIFF(second,@start_time,@end_time)AS NVARCHAR)+' seconds';
END TRY

BEGIN CATCH
PRINT '/*******************************************************************************************************************/'
PRINT 'CRITCAL ERROR IN LOADING BRONZE LAYER!'
--ERROR_MESSAGE retrives the text of the error
PRINT 'Located source of error '+ ERROR_MESSAGE()
--Using CAST to transform into ERROR_NUMBER (numerical code) and 
--ERROR STATE (a function in SQL Server that returns the state number of the error) 
--NVARCHAR which is a data type used to store variable-length Unicode data
PRINT 'How are you gentlemen !! '+ CAST(ERROR_NUMBER()AS NVARCHAR)
PRINT 'All your base are belong to us '+ CAST(ERROR_STATE()AS NVARCHAR)
PRINT '/*******************************************************************************************************************/'
END CATCH
END
