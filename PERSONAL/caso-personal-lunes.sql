use BDPERSONAL
select * from maestro where CODIGO = '084535'

/* update maestro set SITUACION = '11' where CODIGO = '084535' */


select * from v_maestro where nombre like 'cordova%'

select * from maestro where codigo = '084204'

select * from relogdigi where codigo = '7680877' order by Fecha desc

select * from dbo.T_TipoSituacion


  select RIGHT('0' + Ltrim(Rtrim(DIA)),2) as DIA, HORAI as INGRESO, HORAMARCO AS MARCO, HORAS AS SALIDA, horamarcos AS MARCO, DIFESALIDA, FALTA, TARDANZA, PERMISO 
    from  TMPASISTENCIA where codigo = '084204' and MES = '1' and Anio = '2016' and HORAI <> '00:00:00'  order by RIGHT('0' + Ltrim(Rtrim(DIA)),2)  asc
    
