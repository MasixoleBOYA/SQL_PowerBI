SELECT
	product.[ProductKey]
      ,product.[ProductAlternateKey] AS ProductItemCode
      --,[ProductSubcategoryKey]
      --,[WeightUnitMeasureCode]
      --,[SizeUnitMeasureCode]
      ,product.[EnglishProductName] AS [Product Name]
      --,[SpanishProductName]
      --,[FrenchProductName]
      --,[StandardCost]
      --,[FinishedGoodsFlag]
      ,product.[Color] AS [Product Color]
      --,[SafetyStockLevel]
      --,[ReorderPoint]
      --,[ListPrice]
      ,product.[Size] AS [Product Size]
      --,[SizeRange]
      --,[Weight]
      --,[DaysToManufacture]
      ,product.[ProductLine] AS [Product Line]
      --,[DealerPrice]
      --,[Class]
      --,[Style]
      ,product.[ModelName] AS [Product Model]
      --,[LargePhoto]
      ,product.[EnglishDescription] AS [Product Description]
      --,[FrenchDescription]
      --,[ChineseDescription]
      --,[ArabicDescription]
      --,[HebrewDescription]
      --,[ThaiDescription]
      --,[GermanDescription]
      --,[JapaneseDescription]
      --,[TurkishDescription]
      --,[StartDate]
      --,[EndDate]
	  ,productC.[EnglishProductCategoryName] AS [Product Category]
	  ,productSC.[EnglishProductSubcategoryName] AS [Product Sub Category]

      ,ISNULL (product.Status, 'Outdated') AS [Product Status]
  FROM 
	[AdventureWorksDW2022].[dbo].[DimProduct] AS product
	LEFT JOIN dbo.DimProductSubcategory AS productSC ON productSC.ProductSubcategoryKey = product.ProductSubcategoryKey
	LEFT JOIN dbo.DimProductCategory AS productC ON productSC.ProductCategoryKey = productC.ProductCategoryKey 
ORDER BY
	product.ProductKey ASC

