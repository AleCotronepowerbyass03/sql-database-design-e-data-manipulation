use CorsoSQL
SELECT Denominazione 
FROM dbo.Fornitori
SELECT  TOP 5 * 
FROM dbo.Clienti
ORDER BY Cognome ASC
SELECT Importo 
FROM dbo.Fatture
WHERE Importo > 100
SELECT *
FROM dbo.Clienti
WHERE RegioneResidenza IN  ('Lazio', 'Lombardia')
SELECT *
FROM dbo.Clienti
WHERE Cognome LIKE '%OS%'
SELECT COUNT(*)
FROM dbo.Fatture
WHERE  DataFattura BETWEEN '20180601' AND '20190831'
SELECT YEAR(DataFattura) AS Anno,  
 SUM(Importo) AS Fatturato
 FROM dbo.Fatture
 WHERE Tipologia = 'V'
 GROUP BY  YEAR(DataFattura)
 SELECT Tipologia,
   COUNT(*) AS Conteggio
   FROM  dbo.Fatture
   GROUP BY Tipologia;
   
   

 
