USE CorsoSQL
SELECT *
FROM Dbo.Fatture, dbo.Clienti
WHERE dbo.Fatture.IdCliente = dbo.Clienti.IdCliente
AND dbo.Fatture.Iva IS NOT NULL;
SELECT *
FROM dbo.Fatture
INNER JOIN dbo.Clienti
   ON dbo.Fatture.IdCliente = dbo.Clienti.IdCliente; 
   SELECT dbo.Fatture. *, dbo.Clienti.Nome , dbo.Clienti.Cognome
   FROM dbo.Fatture
   INNER JOIN dbo.Clienti
      ON dbo.Fatture.IdCliente = dbo.Clienti.IdCliente;
      SELECT dbo.Fatture. *, dbo.Fornitori.Denominazione
      FROM dbo.Fatture
      INNER JOIN dbo.Fornitori
      ON dbo.Fatture.IdFornitore = dbo.Fornitori.IdFornitore
      WHERE dbo.Fornitori.IdFornitore IS NOT NULL;
      SELECT  dbo.Fatture. *, dbo.Fornitori.Denominazione
      FROM dbo.Fatture
      LEFT JOIN dbo.Fornitori
      ON dbo.Fatture.IdFornitore = dbo.Fornitori.IdFornitore
      ORDER BY dbo.Fatture.Importo DESC
      SELECT YEAR(dbo.Fatture.DataFattura) AS ANNO,
      COUNT(DISTINCT dbo.Fatture.IdCliente) AS NumeroClienti
      FROM dbo.Fatture
      INNER JOIN dbo.Clienti 
         ON dbo.Fatture.IdCliente =  dbo.Clienti.IdCliente
      WHERE dbo.Fatture.Importo > 10
      GROUP BY YEAR(dbo.Fatture.DataFattura);
      SELECT Nome , Cognome
      FROM dbo.Clienti
      INTERSECT
      SELECT Nome, Cognome
      FROM dbo.Prospect
      SELECT Nome , Cognome
      FROM dbo.Clienti
      EXCEPT
      SELECT Nome, Cognome
      FROM dbo.Prospect
      ORDER BY Nome DESC;


     

      
      

      
