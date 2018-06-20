use SIGSALUD
select ESTADO, * from emergencia where MONTH(fecha) between 4 and 6 and YEAR(fecha) = 2016 order by fecha asc