/****** Script para el comando SelectTopNRows de SSMS  ******/
SELECT [VALORES]
      ,[DESCRIPCIO]
      ,[CODIGO]
      ,[EST]
  FROM [SIGSALUD].[dbo].[TABSITUACION]
  
  
  select * 
  
  
  SELECT *  FROM OPENROWSET('VFPOLEDB.1','d:\situacio.dbf';'';'','SELECT * FROM situacio')
  
  exec sp_configure
  
  
exec sp_configure 'show advanced options', 1;
RECONFIGURE;
exec sp_configure 'Ad Hoc Distributed Queries', 1;
RECONFIGURE;
GO