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

3) Run Install.sql to create tables w/ data.


4) Run Solution.sql to find each seller's average daily amount of apples sold.


5) Unit Testing with tSQLt. Download material at https://tsqlt.org