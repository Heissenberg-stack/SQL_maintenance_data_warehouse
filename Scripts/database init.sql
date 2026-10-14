/* 
 Maintenance Data Warehouse  --  Medallion Architecture
   Source  : CSV files store in hardpoint
   ONE database (maintenance_dw) holds all three layers.
   layer is shown by a table-name prefix:
       bronze>>>   raw copy of the CSV without any alteration or cleaning
       silver>>>   cleaned, typed , structured data 
       gold>>>>>   final stage of the data, business ready data
 **Note**

 Running this script will drop and truncate the database and create a new database with the
 mentioned structure
*/
USE MASTER 
GO
-- Dropping and re-creating the database "maintenance_data_warehouse"--
IF EXISTS (SELECT 1 FROM SYS.DATABASES WHERE NAME='maintenance_data_warehouse')
BEGIN
	ALTER DATABASE maintenance_data_warehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
	DROP DATABASE maintenance_data_warehouse
END;

-- Create "maintenance_data_warehouse" database--
CREATE DATABASE maintenance_data_warehouse;
GO

USE maintenance_data_warehouse;
GO
-- Creating shcemas--
CREATE SCHEMA bronze;
GO

CREATE SCHEMA silver;
GO

CREATE SCHEMA gold;
GO
