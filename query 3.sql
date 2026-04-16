Use CorsoSQL;
SELECT Nome, Cognome
FROM dbo.Clienti;
SELECT Nome, Cognome, DataNascita
FROM   dbo.Clienti;
SELECT Nome, Cognome, DataNascita  RegioneResidenza
FROM   dbo.Clienti; 
SELECT *
FROM dbo.Fatture 
WHERE DataFattura >= '20180101'
AND DataFattura <  '20190101'; 
SELECT *
FROM dbo.fatture
WHERE Iva <> 20 OR Iva IS NULL
SELECT *
FROM dbo.fatture
WHERE Iva IS NULL;
SELECT *
FROM dbo.fatture 
WHERE Iva IS NOT NULL;
SELECT  *
FROM dbo.fatture
WHERE Importo > 1;
SELECT Nome, Cognome  
FROM dbo.Clienti
WHERE Nome LIKE '%N';
SELECT  *
FROM dbo.Fornitori
WHERE DataPrimaAcquisto >= '20180101';
SELECT *
FROM Dbo.fornitori
WHERE DataPrimaAcquisto >= '20180101'
AND DataFineContratto  <  '20191001';



