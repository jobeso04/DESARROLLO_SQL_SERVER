use sigsalud	
declare @lmes int = 4
declare @lmes2 int = 6
declare @lanio int = 2016
declare @medico varchar(4) = 'VNC'

select FECHA, TURNO    from ATENCIONC where MONTH(fecha) between @lmes and @lmes2 and year(fecha) = @lanio and MEDICO = @medico
 group by fecha, TURNO ORDER BY MONTH(FECHA) ASC
 
 
 
select *    from ATENCIONC where MONTH(fecha) between @lmes and @lmes2 and year(fecha) = @lanio and MEDICO = @medico
 



select FECHA, TURNO    from ATENCIONC where MONTH(fecha) between @lmes and @lmes2 and year(fecha) = @lanio and MEDICO = @medico
 group by fecha, TURNO ORDER BY MONTH(FECHA) ASC
 

select * from MEDICO where NOMBRE like 'VALVE%'
