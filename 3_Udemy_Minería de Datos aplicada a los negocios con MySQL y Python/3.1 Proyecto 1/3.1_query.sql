SELECT 
    -- CONCAT(YEAR(t1.OrderDate), "-", MONTH(t1.OrderDate)) AS perido,
    COUNT(DISTINCT t1.SalesOrderID) as transacciones,
    ROUND(SUM(t1.TotalDue),2) AS ventas
FROM nuevo_esquema.salesorderheader AS t1
	GROUP BY YEAR(t1.OrderDate),MONTH(t1.OrderDate)
    ORDER BY YEAR(t1.OrderDate),MONTH(t1.OrderDate);