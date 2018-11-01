Challenge 1

Observations:
1) `Id` from both tables is unique and incremented by 1.
2) `SellerId` from table 1 & `Id` from table 2 create a relationship between the collection of data.

Goal:
1) Store data in a relational database.
2) Query for each seller's average daily amount of apples sold.
3) Unit Testing

Solution:
1) Create a SQL database in Azure at azure.microsoft.com
2) Connect database to SSMS using the following jdbc connection string:
	jdbc:sqlserver://triseddonnguyen.database.windows.net:1433;database=challenge_1;user=triseddonnguyen@triseddonnguyen;password={7Tz(B,sUbJj;};encrypt=true;trustServerCertificate=false;hostNameInCertificate=*.database.windows.net;loginTimeout=30;

3) SQL Script:

-- Create table 1
DROP TABLE IF EXISTS dbo.tbl1;

CREATE TABLE dbo.tbl1 (
  Id int NOT NULL IDENTITY (1, 1), 
  Day nvarchar(20) NOT NULL, 
  SellerId int NOT NULL, 
  ApplesSold int NOT NULL, 
  PRIMARY KEY (Id)
);

-- Insert 5 entries into tbl1
INSERT INTO tbl1
VALUES ('Monday', 1, 5);

INSERT INTO tbl1
VALUES ('Monday', 2, 4);

INSERT INTO tbl1 
VALUES ('Tuesday', 2, 8);

INSERT INTO tbl1 
VALUES ('Thursday', 3, 10);

INSERT INTO tbl1 
VALUES ('Thursday', 3, 6);

-- Create table 2
DROP TABLE IF EXISTS dbo.tbl2;

CREATE TABLE dbo.tbl2 (
  Id int NOT NULL IDENTITY (1, 1), 
  Seller nvarchar(20) NOT NULL, 
  PRIMARY KEY (Id)
);

-- Insert 3 entries into tbl2
INSERT INTO tbl2 
VALUES ('Mary');

INSERT INTO tbl2 
VALUES ('Bob');

INSERT INTO tbl2 
VALUES ('Jane');

4) Query for each seller's average daily amount of apples sold.

SELECT DISTINCT
  t2.Seller,
  t1.Day,
  AVG(t1.ApplesSold) OVER (PARTITION BY t2.Seller, t1.Day) AS AvgDailySold
FROM dbo.tbl1 t1,
     dbo.tbl2 t2
WHERE t1.SellerId = t2.Id

5) Unit Testing with tSQLt. Download material at https://tsqlt.org
