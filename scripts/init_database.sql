/*
===============================================================================
Create Database and Schemas
===============================================================================
Script purpose:
  Script will check the database and drop it if found and will create a new data base named as DataWarehouse
  It will also create the schema named as bronze, silver and gold within the same database

Warning:
  Running this script will drop the entire database "DataWarehouse" and all data will be permanently deleted

*/

USE master
GO

-- Drop and recreate the "DataWarehouse" database

IF EXISTS (SELECT 1 FROM sys.databases WHERE name='DataWarehouse')
BEGIN 
	ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE
	DROP DATABASE DataWarehouse
END

GO

-- Create database DataWarehouse

CREATE DATABASE DataWarehouse;

Go

USE DataWareHouse

Go

-- Create Schemas

CREATE SCHEMA bronze
Go

CREATE SCHEMA silver
Go

CREATE SCHEMA gold
Go
