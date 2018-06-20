USE SIGSALUD
GO

/* Busqueda por Numero de Boleta */

declare @lboletainicial varchar(100) = '001-1566582'
declare @lboletafinal varchar(100) = '001-1566582'

SELECT * FROM PAGOC WHERE NUMERO = '001-1566582'