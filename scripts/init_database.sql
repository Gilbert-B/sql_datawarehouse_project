/*
=============================================================
Create Database and Schemas
=============================================================
Purpose:
    Creates the DataWarehouse database and the bronze, silver and gold schemas 
	that hold each layer of the warehouse.
*/


USE master;
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
