use BDPERSONAL
declare @lunidad VARCHAR(3) = '12'
declare @lmes int = 2
declare @lanio int = 2016

select CODIGO, count(codigo) as dias from ASISTENCIA 
   where codigo in (select CODIGO from ASISTENCIA where AÑO = @lanio and MES = @lmes and IdServDepartUnid =  @lunidad) 
     and AÑO = @lanio and MES = @lmes and IdServDepartUnid =  @lunidad group by codigo

 select CODIGO, NOMBRE, UNIDAD_ORGANICA, SITUACION_LABORAL from v_maestro 
  where codigo in (select CODIGO from ASISTENCIA where AÑO = @lanio and MES = @lmes and IdServDepartUnid =  @lunidad) order by CODIGO asc


select * from ASISTENCIA where AÑO = 2016 and MES = 2 and CODIGO = '084223' order by DIA asc
