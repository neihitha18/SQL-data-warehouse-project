/*
==================================================================================================================
Create Database and Schemas
==================================================================================================================
Script purpose:
The script creates a new database named 'Datawarehouse after checking if it already exists.
If the database exists, it is dropped and recreated. Additionally, the script sets up three schemas 
within the database: 'bronze', 'silver', 'gold'.

warning:
Running script will drop the entire 'Datawarehouse' database if exists.
All data in the database will be permanently deleted. Proceed with caution 
and ensure you have backups before running this script.
*/


USE master;
GO

--Drop and recreate 'Datawarehouse' database
IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'Datawarehouse')
BEGIN
    ALTER DATABASE Datawarehouse SET SINGLR_USER WITH ROLLBACK IMMEDIATE;
    DROP DATABASE Datawarehouse;
END;
GO

--Create the 'Datawarehouse' database
CREATE DATABASE Datawarehouse;
GO

USE Datawarehouse;
GO

--Create Schemas
CREATE SCHEMA bronze;
GO
CREATE SCHEMA silver;
GO
CREATE SCHEMA gold;
GO
