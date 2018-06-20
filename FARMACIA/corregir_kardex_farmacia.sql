use SIGSALUD
  declare @lfecha datetime = convert(datetime, '2016-03-18',101)
  select * from KARDEX where  ITEM = '170927' and fecha > @lfecha AND ALMACEN = 'F' order by FECHA asc
  
  select FECHA, UPPER(NOMBRE_TRANSACCION) as NTRA, USUARIO, NOMBRE_PACIENTE, NOMBRE_MEDICO, COLEGIO, CANTIDAD, SALDO
  from V_KARDEX where item = '170927' AND FECHA BETWEEN convert(datetime, '2016-03-18',101) and convert(datetime, '2016-03-21',101) order by FECHA desc
  
  select *
  from V_KARDEX where item = '170927' AND FECHA BETWEEN convert(datetime, '2016-03-18',101) and convert(datetime, '2016-03-21',101) 
   order by FECHA desc
   
   select *
  from V_KARDEX where item = '170927' AND FECHA BETWEEN convert(datetime, '2016-03-18',101) and convert(datetime, '2016-03-21',101) 
   and almacen = 'F' order by FECHA desc