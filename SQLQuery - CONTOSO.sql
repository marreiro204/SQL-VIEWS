CREATE VIEW V_sales_B AS
SELECT TOP(25) FactSales.UnitPrice, FactSales.SalesQuantity, DimCurrency.CurrencyName,DimProduct.ProductName
FROM FactSales
JOIN DimCurrency ON FactSales.CurrencyKey = DimCurrency.CurrencyKey
JOIN DimProduct ON FactSales.ProductKey = DimProduct.ProductKey

SELECT * FROM V_sales_B


------------------------------------------------
CREATE VIEW V_Gender AS
SELECT FirstName,
LastName
FROM DimCustomer
WHERE Gender = 'F'

UNION

SELECT
FirstName,
LastName
FROM DimEmployee
WHERE Gender= 'F'

CREATE UNIQUE CLUSTERED
INDEX V_WOMENID ON
dbo.DimCostumer(Womem)
-- Precisa de permissão para criar uma view indexada


SELECT *
FROM V_Gender

