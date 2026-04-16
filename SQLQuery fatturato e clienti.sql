use CorsoSQL
SELECT Denominazione
FROM dbo.Fornitori
SELECT TOP 5 *
FROM dbo.Clienti
ORDER BY Cognome ASC
SELECT COUNT(Importo)AS ConteggioImporti
FROM dbo.Fatture
GROUP BY  Importo
ORDER BY Importo DESC
SELECT *
FROM dbo.Clienti
WHERE RegioneResidenza IN ('Lazio', 'Lombardia')
SELECT *
FROM dbo.Clienti
WHERE Cognome  LIKE '%OS%'
SELECT *
FROM dbo.Fatture
WHERE DataFattura >= '20180601'
AND DataFattura < '20190831';
SELECT MAX(Importo) AS MaxImporto, MIN(Importo) AS MinImporto
FROM dbo.Fatture 
WHERE Tipologia = 'A'
SELECT AVG(Importo) AS  MediaImporto
FROM dbo.Fatture
WHERE YEAR(DataFattura) = 2018
SELECT YEAR(DataFattura),
  SUM(Importo) AS Fatturato 
  FROM dbo.Fatture
  WHERE Tipologia = 'V'
  GROUP BY YEAR(DataFattura)
  SELECT YEAR(DataFattura), Iva, 
  AVG (Importo) AS MediaImporto
  FROM dbo.Fatture
  WHERE  Iva IS NOT NULL 
  GROUP BY YEAR(DataFattura), Iva
  SELECT YEAR(DataFattura) AS AnnoFattura , Iva, 
  SUM(Importo) AS Fatturato
  FROM dbo.Fatture
  WHERE  Iva IS NOT NULL 
  GROUP BY YEAR(DataFattura), Iva
  SELECT Tipologia,
   COUNT(*) AS Conteggio 
   FROM dbo.Fatture 
   GROUP BY Tipologia
   SELECT IdFornitore,
   COUNT(*) AS Conteggio 
   FROM dbo.Fatture
   WHERE IdFornitore IS NOT NULL
   GROUP BY IdFornitore;
   SELECT  dbo.Fatture.IdFattura,  dbo.Fatture.Tipologia,  dbo.Fatture.Importo,  dbo.Fatture.Iva,  dbo.Fatture.IdCliente,  dbo.Fatture.DataFattura,  dbo.Fatture.IdFornitore
   FROM dbo.Fatture 
   INNER JOIN dbo.Clienti
    ON dbo.Fatture.IdCliente = dbo.Clienti.IdCliente 
    GROUP BY dbo.Fatture.IdFattura,  dbo.Fatture.Tipologia,  dbo.Fatture.Importo,  dbo.Fatture.Iva,  dbo.Fatture.IdCliente,  dbo.Fatture.DataFattura,  dbo.Fatture.IdFornitore
    HAVING SUM(dbo.Fatture.Importo) > 10
    SELECT  dbo.Fatture.IdFattura,  dbo.Fatture.Tipologia,  dbo.Fatture.Importo,  dbo.Fatture.Iva,  dbo.Fatture.IdCliente,  dbo.Fatture.DataFattura,  dbo.Fatture.IdFornitore
   FROM dbo.Fatture 
   LEFT JOIN dbo.Clienti
    ON dbo.Fatture.IdCliente = dbo.Clienti.IdCliente 
    GROUP BY dbo.Fatture.IdFattura,  dbo.Fatture.Tipologia,  dbo.Fatture.Importo,  dbo.Fatture.Iva,  dbo.Fatture.IdCliente,  dbo.Fatture.DataFattura,  dbo.Fatture.IdFornitore
    HAVING SUM(dbo.Fatture.Importo) > 10
    SELECT  dbo.Fatture.IdFattura,  dbo.Fatture.Tipologia,  dbo.Fatture.Importo,  dbo.Fatture.Iva,  dbo.Fatture.IdCliente,  dbo.Fatture.DataFattura,  dbo.Fatture.IdFornitore
   FROM dbo.Fatture 
   RIGHT JOIN dbo.Clienti
    ON dbo.Fatture.IdCliente = dbo.Clienti.IdCliente 
    GROUP BY dbo.Fatture.IdFattura,  dbo.Fatture.Tipologia,  dbo.Fatture.Importo,  dbo.Fatture.Iva,  dbo.Fatture.IdCliente,  dbo.Fatture.DataFattura,  dbo.Fatture.IdFornitore
    HAVING SUM(dbo.Fatture.Importo) > 10
    SELECT  dbo.Fatture.IdFattura,  dbo.Fatture.Tipologia,  dbo.Fatture.Importo,  dbo.Fatture.Iva,  dbo.Fatture.IdCliente,  dbo.Fatture.DataFattura,  dbo.Fatture.IdFornitore,
    SUM(dbo.Fatture.Importo) AS fatturato
   FROM dbo.Fatture 
   FULL JOIN dbo.Clienti
    ON dbo.Fatture.IdCliente = dbo.Clienti.IdCliente 
    GROUP BY dbo.Fatture.IdFattura,  dbo.Fatture.Tipologia,  dbo.Fatture.Importo,  dbo.Fatture.Iva,  dbo.Fatture.IdCliente,  dbo.Fatture.DataFattura,  dbo.Fatture.IdFornitore
    HAVING SUM(dbo.Fatture.Importo) > 10;


  



