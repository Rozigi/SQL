/****** Script for SelectTopNRows command from SSMS  ******/
/*

WHY STORE PROCEDURE

-Helps hide data, i.e encapsulate data
-To also make code  reuseable. you don't have to be rewriting codes everytime
-For performance, i.e helps improve performance of a code.
-Also if you automate a code you don't have to rewrite ur code from scratch
-For Security Purpose

*/
--How To Create Store Procedure
DROP PROCEDURE IF EXISTS spPullNobleData
;
CREATE PROCEDURE spPullNobleData
AS
BEGIN

--How To Remove A Table
DROP TABLE IF EXISTS NobleBackup

--Creating A Backup Table
SELECT * INTO NobleBackup
FROM Noble

UPDATE Noble
SET Year = 2025
WHERE Year = 1963


SELECT *
FROM NobleBackup
SELECT [Year]
      ,[Subject]
      ,[Winner]
  FROM [SqlTraining].[dbo].[Noble]
END

SELECT *
FROM Noble

  --How To Run Store Procedure

  EXECUTE spPullNobleData

--How To Remove Store Procedure From The Database

DROP PROCEDURE spPullNobleData

--How To Create A BAckup Table

SELECT * INTO NobleBackup
FROM Noble

SELECT *
FROM NobleBackup

--How To Modify Store Procedure.

ALTER PROCEDURE spPullNobleData
AS
BEGIN

--How To Remove A Table
DROP TABLE IF EXISTS NobleBackup

--Creating A Backup Table
SELECT * INTO NobleBackup
FROM Noble

--Updating Noble Table
UPDATE Noble
SET Year = 2025
WHERE Year = 1963

--Fetching All Records
SELECT *
FROM NobleBackup
SELECT [Year]
      ,[Subject]
      ,[Winner]
  FROM [SqlTraining].[dbo].[Noble]
END

SELECT *
FROM Noble

EXEC spPullNobleData

--How To Track Changes In A Code 