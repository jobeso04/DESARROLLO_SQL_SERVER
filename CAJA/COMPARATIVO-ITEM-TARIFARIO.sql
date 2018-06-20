SELECT CUENTAID, PACIENTE, SEGURO, EMPRESASEGURO, OBSERVACION, convert(varchar(10), FECHA_APERTURA, 103) as FECHA, CARGO, DESCUENTO, ABONO, IMPORTE, ESTADO, HORA_APERTURA, NOMBRE, ORIGEN,
 USUARIO_APERTURA  FROM CUENTA WHERE SEGURO = '02' AND ESTADO = '2' AND FECHA_APERTURA BETWEEN CONVERT(DATETIME, '2016-06-20', 101) AND CONVERT(DATETIME, '2017-03-07', 101)
   ORDER BY FECHA_APERTURA DESC
   
SELECT ITEM, precio FROM CUENTADET WHERE CUENTAID = '1715414' and SUBSTRING(item,1,1) in ('5','6') order by ITEM asc

  select ITEM, precioh from PRECIO where item = '603777'
  
   precio = precioh
   
   




SELECT ITEM, precio FROM CUENTADET WHERE  SUBSTRING(item,1,1) in ('5','6') order by ITEM asc


select item, precioh from PRECIO where ITEM in (SELECT ITEM FROM CUENTADET WHERE CUENTAID = '1715414' and SUBSTRING(item,1,1) = '6') order by ITEM asc


select codcpt from ITEM where ITEM = '603777'
select * from precio where ITEM = '603777'



select * from ITEM where NOMBRE like '%limpieza%'

select * from precio where ITEM = '50599'
select * from precio where ITEM = '51283     '

        SELECT codcpt FROM item WHERE item = '603777'


select codcpt, * from ITEM where NOMBRE like 'pulpec%' and codcPT = 'D3220' order by ITEM desc

/* CAMBIADO DE PULPECTOMIA A PULPOMIA */

update ITEM set NOMBRE = 'PULPOTOMIA' where ITEM IN ('63529', '607120')

/* FIN DE CAMBIO PULPOTOMIA */





