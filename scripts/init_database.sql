-------------------------CREATE DATABASE AND SCHEMAS-------------------------
/****************************************************************************
Purpose:
    This script creates a new database named 'DataWarehouse' after checking if it already exists.
    Dropping and recreating it if the database exists, also sets up three schemas withing the database:
    'bronze', 'silver' and 'gold'.
WARNING:
    Running this script will drop the entire 'DataWarehouse' if it exists.
    All data in the database will be permanently deleted. Make sure to do 
    the nessasary backups before running this script.
****************************************************************************/
--Access master to create new databases
USE master;
GO

--Drop and recreate the 'DataWarehouse' database, incase it already exists
IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'DataWarehouse')
BEGIN
	ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
	DROP DATABASE DataWarehouse;
END;
GO

--Create new database
CREATE DATABASE DataWarehouse;

--Access new database
USE DataWarehouse;
GO

/* The Schema helps to organise the data within the database*/
					--*/BRONZE SCHEMA\*--
CREATE SCHEMA bronze;
GO
					--*/SILVER SCHEMA\*--
CREATE SCHEMA silver;
GO
					 --*/GOLD SCHEMA\*--
CREATE SCHEMA gold;
GO
