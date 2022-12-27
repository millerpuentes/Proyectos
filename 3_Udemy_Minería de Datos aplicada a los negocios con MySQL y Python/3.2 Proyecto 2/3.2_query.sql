SELECT 
	t1.SalesOrderID AS  factura
    ,t1.ProductID AS stockId
    ,t2.Name AS producto
    ,t1.OrderQty AS cantidad
	,DATE_FORMAT(t3.OrderDate, "%y-%m-%d") AS fecha
    ,t1.LineTotal AS monto
    ,t3.CustomerID AS cliente
FROM nuevo_esquema.salesorderdetail AS t1
	JOIN nuevo_esquema.product AS t2 ON t1.ProductID = t2.ProductID
    JOIN nuevo_esquema.salesorderheader AS t3 ON t1.SalesOrderID = t3.SalesOrderID;