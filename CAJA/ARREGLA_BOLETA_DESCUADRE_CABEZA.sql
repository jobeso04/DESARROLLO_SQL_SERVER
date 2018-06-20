use SIGSALUD
declare @lboletainicial varchar(100) = '001-1594997'
declare @lboletafinal varchar(100) = '001-1595268'

SELECT * FROM PAGOC WHERE NUMERO BETWEEN @lboletainicial AND @lboletafinal ORDER BY NUMERO ASC

SELECT SUM(TOTAL) as tt FROM PAGOC WHERE NUMERO BETWEEN @lboletainicial AND @lboletafinal  and estado = '2'