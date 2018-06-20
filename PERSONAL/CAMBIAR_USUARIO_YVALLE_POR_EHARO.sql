USE SIGSALUD
GO

/* Busqueda por Numero de Boleta */

declare @lboletainicial varchar(100) = '001-1665003'
declare @lboletafinal varchar(100) = '001-1665024'
/* UPDATE PAGOC SET USUARIO = 'EHARO' WHERE NUMERO BETWEEN @lboletainicial AND @lboletafinal */
SELECT * FROM PAGOC WHERE NUMERO BETWEEN @lboletainicial AND @lboletafinal ORDER BY FECHA_REGISTRO ASC

