-- Cleaning the DIM Customer Table
SELECT 
	customer.CustomerKey AS [Customer Key]
      --,[GeographyKey]
      --,[CustomerAlternateKey]
      --,[Title]
      ,customer.FirstName
      --,[MiddleName]
      ,customer.LastName
      ,customer.FirstName + ' ' + customer.LastName AS [Full Name]
      --,[NameStyle]
      --,[BirthDate]
      --,[MaritalStatus]
      --,[Suffix]
      ,CASE customer.Gender WHEN 'M' THEN 'Male' WHEN 'F' THEN 'Female' END AS [Gender]
      --,[EmailAddress]
      --,[YearlyIncome]
      --,[TotalChildren]
      --,[NumberChildrenAtHome]
      --,[EnglishEducation]
      --,[SpanishEducation]
      --,[FrenchEducation]
      --,[EnglishOccupation]
      --,[SpanishOccupation]
      --,[FrenchOccupation]
      --,[HouseOwnerFlag]
      --,[NumberCarsOwned]
      --,[AddressLine1]
      --,[AddressLine2]
      --,[Phone]
      ,customer.DateFirstPurchase
      --,[CommuteDistance]
      ,geo.City AS [Customer City] --This is from the "DimGeography Table"
FROM 
    [AdventureWorksDW2022].[dbo].[DimCustomer] AS customer
  LEFT JOIN dbo.DimGeography AS geo ON geo.[geographykey]= customer.[GeographyKey]
ORDER BY
  customer.CustomerKey ASC
