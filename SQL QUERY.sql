USE AdventureWorks2012

--A QUERY TO EXTRACT ALL EMPLOYEES LIST

SELECT *
FROM [HumanResources].[Employee]

--A QUERY TO EXTRACT SINGLE MALE EMPLOYEES DATA

SELECT [BusinessEntityID]
	   [JobTitle],
       [BirthDate],
       [MaritalStatus],
       [Gender]
FROM [HumanResources].[Employee]
WHERE [Gender] = 'M' AND [MaritalStatus]= 'S';

--A QUERY OF A LIST OF EMPLOYEE WITH SICK LEAVE MORE THAN 50 OR LESS THAN 50 VACATION HRS

SELECT [BusinessEntityID],
       [JobTitle],
       [BirthDate],
       [MaritalStatus],
       [Gender],
       [SickLeaveHours],
       [HireDate],
       [VacationHours],
       [SickLeaveHours]
FROM [HumanResources].[Employee]
WHERE [SickLeaveHours] > 50 OR [VacationHours] < 50

--A QUERY OF A LIST OF EMPLOYEE WITH SICK LEAVE BETWEEN 50 AND 70

SELECT [BusinessEntityID],
       [JobTitle],
       [BirthDate],
       [MaritalStatus],
       [Gender],
       [SickLeaveHours],
       [HireDate],
       [VacationHours],
       [SickLeaveHours]
FROM [HumanResources].[Employee]
WHERE [SickLeaveHours] BETWEEN 50 AND 70 

--A QUERY OF A LIST OF MARRIED FEMALE EMPLOYEE 

SELECT [BusinessEntityID],
       [JobTitle],
       [BirthDate],
       [MaritalStatus],
       [Gender],
       [SickLeaveHours],
       [HireDate],
       [VacationHours]
FROM [HumanResources].[Employee]
WHERE [MaritalStatus] = 'M' AND [Gender] ='F'


--A QUERY OF A LIST OF MARRIED FEMALE EMPLOYEE WITH SICK LEAVE IN DESCENDING ORDER

SELECT [BusinessEntityID],
       [JobTitle],
       [BirthDate],
       [MaritalStatus],
       [Gender],
       [SickLeaveHours],
       [HireDate],
       [VacationHours]
FROM [HumanResources].[Employee]
WHERE [MaritalStatus] = 'M' AND [Gender] ='F'
ORDER BY [SickLeaveHours] DESC


--A QUERY OF A LIST OF SINGLE MALE EMPLOYEE WITH SICK LEAVE IN ASCENDING ORDER

SELECT [BusinessEntityID],
       [JobTitle],
       [BirthDate],
       [MaritalStatus],
       [Gender],
       [SickLeaveHours],
       [HireDate],
       [VacationHours]
FROM [HumanResources].[Employee]
WHERE [MaritalStatus] = 'S' AND [Gender] ='M'
ORDER BY [SickLeaveHours] ASC


--A QUERY TO SHOW THE UNIQUE EMPLOYEE JOB TITLE

SELECT DISTINCT [JobTitle]
FROM [HumanResources].[Employee]

--A QUERY TO GET THE TOP 50 EMPLOYEES IN TERM OF VACATION LEAVE

SELECT TOP 50 [BusinessEntityID], 
              [JobTitle],
              [MaritalStatus],
              [Gender],
              [SickLeaveHours],
              [VacationHours]
FROM [HumanResources].[Employee]
ORDER BY [VacationHours] DESC



--A QUERY TO EXTRACT EMPLOYEES DATA WITH VACATION HOURS NOT LESS THAN 20 HRS
SELECT [BusinessEntityID],
       [JobTitle],
       [BirthDate],
       [MaritalStatus],
       [Gender],
       [SickLeaveHours]
FROM [HumanResources].[Employee]
WHERE  [VacationHours] >= 20

--A QUERY TO LIST ALL PRODUCTS 
SELECT *
FROM [Production].[Product]


--A QUERY TO LIST ALL PRODUCTS EXCEPT PRODUCTS WITH RED OR BLACK COLOR
SELECT  [ProductID],
        [Name],
		[ProductModelID],
        [ProductNumber],
		[ProductSubcategoryID],
        [Color]
FROM [Production].[Product]
WHERE [Color] NOT IN ('Red', 'Black') 



