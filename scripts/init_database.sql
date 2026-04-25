/*
==========================================================================================================
Create Database and Schemas
==========================================================================================================
Script Purpose:

This script creates a new database named 'DATAWAREHOUSE'after checking if it already exists, 
if the database exists, it is dropped and recreated. Additionally, script sets up three schemas
within the database : 'bronze','silver' and 'gold'.

Wraning 
Running the scripts will drop the entire 'DATAWAREHOUSE' Database if it exists.
All data in the database will be permanently deleted. Proceed with caution and ensures that 
you have proper backups befor running this scripts
*/

USE master;
GO

  -- Drop and recreate  the  'DTAWAREHOUSE' database
  IF EXISTS ( SELECT 1 FROM sys.databases WHERE name = 'DATAWAREHOUSE')
  BEGIN
  ALTER DATABASE DATAWAREHOUSE SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
  DROP DATABASE DATAWAREHOUSE;
  END;
  GO



 -- create the "DATAWAREHOUSE' database
CREATE DATABASE DATAWAREHOUSE
  GO
USE DATAWAREHOUSE;
GO


-- Create Schemas
CREATE SCHEMA bronze;
GO
CREATE SCHEMA silver;
GO
CREATE SCHEMA gold;
