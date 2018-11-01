
SELECT DISTINCT
  t2.Seller,
  t1.Day,
  AVG(t1.ApplesSold) OVER (PARTITION BY t2.Seller, t1.Day) AS AvgDailySold
FROM dbo.tbl1 t1,
     dbo.tbl2 t2
WHERE t1.SellerId = t2.Id