/*
=============================================================
Create Database and Schemas
=============================================================
Purpose:
    Creates the DataWarehouse database and the bronze, silver and gold schemas 
	that hold each layer of the warehouse.
Warning :
	This deletes the database together with its schemas and recreates it.
*/


USE master;
GO

-- Drop the database if it already exists, so the script can be re-run   --

IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'DataWarehouse')
BEGIN
    ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
    DROP DATABASE DataWarehouse;
END;
GO


CREATE DATABASE DataWarehouse;
GO

USE DataWarehouse;
GO

CREATE SCHEMA gold;
GO

CREATE SCHEMA silver;
GO

CREATE SCHEMA bronze;
GO

