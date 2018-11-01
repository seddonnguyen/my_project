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