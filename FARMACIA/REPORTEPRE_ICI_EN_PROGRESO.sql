use SIGSALUD
truncate table  [SIGSALUD].[dbo].[TMP_PRE_ICI]
INSERT INTO [SIGSALUD].[dbo].[TMP_PRE_ICI]([ITEM], [SISMED], [NOMBRE], [PRESENTACION])
select ITEM, interfase2 AS SISMED, UPPER(NOMBRE) as nombre, UPPER(PRESENTACION) AS PRESENTACION from ITEM where  SUBSTRING(item,1,2) = '17' and ITEM not in ('179999', '170797', '170274', '170313', '170121', '170129', '170223', '170785', '170786', '170826', '170855', '170870',
'170871', '170868', '170873', '170874', '170878', '170879', '170883', '170885', '170886', '170887', '170888', '170889', '170931', '170932', '170933', '170934', '170935', '170938', '170940', '170944',
'170959', '170960', '170966', '170967', '170980', '170981', '170982', '170983', '170984', '170988', '170986', '170989', '170992', '171002', '171005', '171006', '171007',
'171009', '171012', '171015', '171016', '171017', '171018', '171020', '171020', '171020', '171022', '171023', '171025', '171026', '171027', '171028', '171029', '171030', 
'171032', '171033', '171033', '171031', '171034', '171035', '171037', '171038', '171039', '171040', '171041', '171043', '171046', '171047', '171048', '171058', '171059',
'171060', '171062', '171069', '171073', '171074', '171075', '171076', '171077', '171078', '171079', '171092', '171093', '171096', '171099', '171100', '171101', '171103',
'171104', '171106', '171111', '171116', '171118', '171121', '171122', '171125', '171126', '171127', '171128', '171130', '171131', '171132', '171133', '171134', '171136',
'171137', '171138', '171140', '171146', '171147', '171148', '171149', '171152', '171153', '171157', '171158', '171159', '171161', '171160', '171162', '171163', '171164',
'171165', '171166', '171167', '171168', '171169', '171170', '171171', '171172', '171173', '171174', '171175', '171176', '171177', '171183', '171184', '171185', '171186',
'171187', '171188', '171190', '171192', '171197', '171231', '171233', '171237') and not substring(NOMBRE,1,3) in ('don', 'coe', 'pel') 
 and clase = 'A' order by nombre asc
 
 SELECT * FROM [SIGSALUD].[dbo].[TMP_PRE_ICI] order by tipo_clase, NOMBRE asc
 
 DELETE FROM [SIGSALUD].[dbo].[TMP_PRE_ICI] WHERE STOCK_TOTAL = 0 AND SALDO_MES_ANTERIOR = 0
 
 

 SELECT * FROM [SIGSALUD].[dbo].[TMP_PRE_ICI] where precio is null

 update [SIGSALUD].[dbo].[TMP_PRE_ICI] set precio = 0 where precio is null



/* OBTENER EL STOCK DEL KARDEX ALMACEN */
declare @lfechainicio datetime = convert(datetime, '2016-09-30',101) +  CAST('00:00:00' AS DATETIME)
declare @lfechafin datetime = convert(datetime, '2016-10-27',101) + CAST('23:59:00' AS DATETIME)
declare @lcitem varchar(13) = '170410'
SELECT top 1 SALDO as STOCK_ALMACEN FROM KARDEX  WHERE ITEM = @lcitem AND ALMACEN = 'A'  and fecha between @lfechainicio and @lfechafin ORDER BY FECHA DESC

/* SI NO EXISTE EN ESE RANGO DE FECHAS - BUSCAR CON LA FECHA ANTERIOR */

SELECT TOP 1 SALDO AS STOCK_ALMACEN FROM KARDEX WHERE ITEM ='170410'AND ALMACEN = 'A' ORDER BY FECHA DESC


declare @lfechainicio datetime = convert(datetime, '2016-09-30',101) +  CAST('00:00:00' AS DATETIME)
SELECT TOP 1 SALDO AS STOCK_ALMACEN  FROM KARDEX WHERE ITEM ='170410'AND ALMACEN = 'A' AND FECHA < @lfechainicio ORDER BY FECHA DESC


/* OBTENER SALDO STOCK EN FARMACIA */
declare @loperacion1 varchar(8) = '16451754'
declare @loperacion2 varchar(8) = '16504404'
declare @lfechainicio datetime = convert(datetime, '2016-09-30',101) +  CAST('00:00:00' AS DATETIME)
declare @lfechafin datetime = convert(datetime, '2016-10-27',101) + CAST('23:59:00' AS DATETIME)

select top 1 SALDO as STOCK_FARMACIA  from KARDEX where ITEM = '170175' and ALMACEN = 'F' AND FECHA < @lfechainicio  order by operacion desc


declare @lcitemfar varchar(13) = '170175'
select top 1 SALDO as STOCK_FARMACIA from KARDEX where ITEM = @lcitemfar and ALMACEN = 'F' and OPERACION between @loperacion1 and @loperacion2 ORDER BY FECHA DESC

/* EN CASO QUE NO EXISTA STOCK VER DE UNA OPERACION ANTERIOR */
select *  from KARDEX where ITEM = '170175' and ALMACEN = 'F' AND FECHA BETWEEN @lfechainicio AND @lfechafin  order by operacion desc

select top 1 SALDO as STOCK_FARMACIA  from KARDEX where ITEM = '170175' and ALMACEN = 'F' order by operacion desc


/* PRECIO DE CADA ITEM */
declare @lcitemprecio varchar(13) = '170120'
SELECT * FROM PRECIO where ITEM = @lcitemprecio ORDER BY FECHA DESC
SELECT TOP 1 PRECIOPUB FROM PRECIO where ITEM = @lcitemprecio ORDER BY FECHA DESC


/* obtener el saldo anterior */


/* OBTENER EL STOCK DEL KARDEX ALMACEN */
declare @lfechastock_anterior datetime = convert(datetime, '2016-09-30',101) 
/* declare @lfechafin datetime = convert(datetime, '2016-10-27',101) + CAST('23:59:00' AS DATETIME) */
declare @lcitemante varchar(13) = '170291'
SELECT top 1 SALDO as STOCK_ALMACEN FROM KARDEX  WHERE ITEM = @lcitemante AND ALMACEN = 'A'  and fecha < @lfechastock_anterior ORDER BY FECHA DESC


/* OBTENER SALDO STOCK EN FARMACIA MES ANTERIOR */
declare @loperacion1a varchar(8) = '16451754'
declare @lcitemfara varchar(13) = '170291'
select top 1 SALDO as STOCK_FARMACIA from KARDEX where ITEM = @lcitemfara and ALMACEN = 'F' and OPERACION < @loperacion1a ORDER BY operacion DESC


select * from KARDEX where ITEM = @lcitemfara and ALMACEN = 'F' and OPERACION < @loperacion1a ORDER BY operacion DESC

select top 1 SALDO as STOCK_FARMACIA from KARDEX where ITEM = @lcitemfara and ALMACEN = 'F' and OPERACION < @loperacion1a ORDER BY operacion DESC

/* EN CASO QUE NO EXISTA STOCK VER DE UNA OPERACION ANTERIOR */
select top 1 SALDO as STOCK_FARMACIA  from KARDEX where ITEM = '170379' and ALMACEN = 'F' order by operacion desc





SELECT * FROM [SIGSALUD].[dbo].[TMP_PRE_ICI]
/* OBTENER EL INGRESO POR MES  */
 USE SIGSALUD
 declare @litem varchar(6) = '170084'
 DECLARE @lfecha1 datetime = convert(datetime, '2016-09-30',101)
 DECLARE @lfecha2 datetime = convert(datetime, '2016-10-27',101)
 SELECT SUM(CANTIDAD) AS CANTI FROM INGRESOD WHERE INGRESOID IN (SELECT INGRESOID FROM INGRESOC WHERE FECHA BETWEEN @lfecha1 AND @lfecha2)
 AND ITEM = @litem  GROUP BY ITEM 



USE SIGSALUD
declare @litem varchar(13) = '170291'
SELECT TOP 1 CONVERT(VARCHAR(10), FECHA_VENCIMIENTO, 103) AS FECHA_VENCI  FROM INGRESOD WHERE ITEM = @litem  ORDER BY FECHA_VENCIMIENTO DESC



SELECT TOP 1 CONVERT(VARCHAR(10), FECHA_VENCIMIENTO, 103) AS FECHA_VENCI  FROM INGRESOD WHERE INGRESOID IN (SELECT INGRESOID FROM INGRESOC WHERE FECHA BETWEEN @lfecha1 AND @lfecha2) AND ITEM = @litem 
   
   


declare @opeinicio varchar(8) = '16451754'
declare @opefin varchar(8) = '16504404'
declare @lalmacen varchar(1) = 'F'
TRUNCATE TABLE TMPPARTEDIARIO
 INSERT INTO TMPPARTEDIARIO (ITEM, SALDO_ANTIGUO, NOMBRE, PRECIO, SALIDAS_CONTADO, SALIDAS_EXONERADO, SALIDAS_CREDITO_PACIENTE, SALIDAS_SIS, SALIDAS_SISALUD, SALIDAS_SOAT, SALIDAS_CONSPERU, SALIDAS_SANITARIA,
           SALIDAS_BTB, SALIDAS_PRG, SALIDAS_DONA, INGRESO_TRANSFIERE, INGRESO_DEVOLUCION, INGRESO_ANULA, SALDO, CLASE, NOMBRE_CLASE, CANJE, SISMED)
       select k.item,SALDO_ANTIGUO = 0, i.nombre,MAX(k.PRECIO) AS Precio, sum((case when k.Tipo_Transaccion='VC' then k.Cantidad else 0 end)) as Salidas_Contado,
         sum((case when k.Tipo_Transaccion='VEX' then k.Cantidad else 0 end)) as Salidas_Exonerado, sum((case when k.Tipo_Transaccion='VRP' then k.Cantidad else 0 end)) as Salidas_Credito_Paciente,
           sum((case when k.Tipo_Transaccion='VRS' then k.Cantidad else 0 end)) as Salidas_SIS, sum((case when k.Tipo_Transaccion='VRI' then k.Cantidad else 0 end)) as Salidas_SISALUD,
            sum((case when k.Tipo_Transaccion='VRO' then k.Cantidad else 0 end)) as Salidas_SOAT,sum((case when k.Tipo_Transaccion='VRD' then k.Cantidad else 0 end)) as Salidas_ConsPeru,
              sum((case when k.Tipo_Transaccion='VOI' then k.Cantidad else 0 end)) as Salidas_Sanitaria, sum((case when k.Tipo_Transaccion='VTB' then k.Cantidad else 0 end)) as Salidas_BTB,
                sum((case when k.Tipo_Transaccion='VOP' then k.Cantidad else 0 end)) as Salidas_Prg,sum((case when k.Tipo_Transaccion='VOD' then k.Cantidad else 0 end)) as Salidas_Dona,
                   sum((case when k.Tipo_Transaccion='ITR' then k.Cantidad else 0 end)) as Ingreso_Transfiere, sum((case when k.Tipo_Transaccion='IDE' then k.Cantidad else 0 end)) as Ingreso_Devolucion,
                      sum((case when k.Tipo_Transaccion='IAN' then k.Cantidad else 0 end)) as Ingreso_Anula, (select k1.Saldo from kardex k1 where k1.operacion=(select max(k2.Operacion) from Kardex k2 Where
                          k2.Operacion Between  @opeinicio and  @opefin and k2.almacen=@lalmacen and k2.Item=k1.item) and k.Item=k1.item) as Saldo,I.Clase,UPPER(C.Nombre) as Nombre_Clase, 
                          sum((case when k.Tipo_Transaccion='VOC' then k.Cantidad else 0 end)) as CANJE, i.interfase2 as sismed  from v_kardex k left outer join tipo_transaccion t on t.tipo_transaccion=k.Tipo_Transaccion   left outer join item i on i.item=k.Item left outer join clase c on c.clase=i.clase 
                                     where k.Operacion between @opeinicio and @opefin and k.almacen=@lalmacen  group by k.item,i.nombre,i.clase,i.interfase2, c.nombre order by Clase, NOMBRE asc
  SELECT IDTMPPARTE, ITEM, SALDO_ANTIGUO, NOMBRE, PRECIO, SALIDAS_CONTADO, SALIDAS_EXONERADO, SALIDAS_CREDITO_PACIENTE, SALIDAS_SIS, SALIDAS_SISALUD, SALIDAS_SOAT, SALIDAS_CONSPERU, SALIDAS_SANITARIA, 
             SALIDAS_BTB, SALIDAS_PRG, SALIDAS_DONA, INGRESO_TRANSFIERE, INGRESO_DEVOLUCION, INGRESO_ANULA, SALDO, CLASE, NOMBRE_CLASE, CANJE, SISMED  FROM TMPPARTEDIARIO WHERE SISMED = '03710'
  
  



declare @opeinicio varchar(8) = '16451754'
declare @opefin varchar(8) = '16504404'
declare @lalmacen varchar(1) = 'F'
       select k.item,SALDO_ANTIGUO = 0, i.nombre,MAX(k.PRECIO) AS Precio, sum((case when k.Tipo_Transaccion='VC' then k.Cantidad else 0 end)) as Salidas_Contado,
         sum((case when k.Tipo_Transaccion='VEX' then k.Cantidad else 0 end)) as Salidas_Exonerado, sum((case when k.Tipo_Transaccion='VRP' then k.Cantidad else 0 end)) as Salidas_Credito_Paciente,
           sum((case when k.Tipo_Transaccion='VRS' then k.Cantidad else 0 end)) as Salidas_SIS, sum((case when k.Tipo_Transaccion='VRI' then k.Cantidad else 0 end)) as Salidas_SISALUD,
            sum((case when k.Tipo_Transaccion='VRO' then k.Cantidad else 0 end)) as Salidas_SOAT,sum((case when k.Tipo_Transaccion='VRD' then k.Cantidad else 0 end)) as Salidas_ConsPeru,
              sum((case when k.Tipo_Transaccion='VOI' then k.Cantidad else 0 end)) as Salidas_Sanitaria, sum((case when k.Tipo_Transaccion='VTB' then k.Cantidad else 0 end)) as Salidas_BTB,
                sum((case when k.Tipo_Transaccion='VOP' then k.Cantidad else 0 end)) as Salidas_Prg,sum((case when k.Tipo_Transaccion='VOD' then k.Cantidad else 0 end)) as Salidas_Dona,
                   sum((case when k.Tipo_Transaccion='ITR' then k.Cantidad else 0 end)) as Ingreso_Transfiere, 
                   sum((case when k.Tipo_Transaccion='IDE' then k.Cantidad else 0 end)) as Ingreso_Devolucion,
                      sum((case when k.Tipo_Transaccion='IAN' then k.Cantidad else 0 end)) as Ingreso_Anula_total,
                                   (select k1.Saldo from kardex k1 where k1.operacion=(select max(k2.Operacion) from Kardex k2 Where
                          k2.Operacion Between  @opeinicio and  @opefin and k2.almacen=@lalmacen and k2.Item=k1.item) and k.Item=k1.item) as Saldo,I.Clase,UPPER(C.Nombre) as Nombre_Clase, 
                          sum((case when k.Tipo_Transaccion='VOC' then k.Cantidad else 0 end)) as CANJE, i.interfase2 as sismed  from v_kardex k left outer join tipo_transaccion t on t.tipo_transaccion=k.Tipo_Transaccion   left outer join item i on i.item=k.Item left outer join clase c on c.clase=i.clase 
                                     where i.interfase2 = '00671' and k.Operacion between @opeinicio and @opefin and k.almacen=@lalmacen  group by k.item,i.nombre,i.clase,i.interfase2, c.nombre order by Clase, NOMBRE asc
                                     

select * from ITEM where ITEM = '170401'
select * from dbo.TIPO_TRANSACCION order by NOMBRE asc

select * from v_kardex where ITEM = '170401' and FECHA between convert(datetime, '2016-09-30', 101) and convert(datetime, '2016-10-27', 101)  order by  fecha desc

lnsc = lnsalida_contado
lncp = salidas_credito_paciente
lnsis = salidas_sis
lndosis_unitaria = salidas_consperu

lnintervencion_sanitaria = salidas_sanitaria
lnsoat = salidas_soat
lnexonerado = salidas_exonerado

SELECT * FROM KARDEX ORDER BY OPERACION DESC

declare @opeinicio varchar(8) = '16451754'
declare @opefin varchar(8) = '16504404'
declare @lcitem varchar(13) = '170291'

       select k.item,SALDO_ANTIGUO = 0, i.nombre,MAX(k.PRECIO) AS Precio, sum((case when k.Tipo_Transaccion='VC' then k.Cantidad else 0 end)) as Salidas_Contado,
         sum((case when k.Tipo_Transaccion='VEX' then k.Cantidad else 0 end)) as Salidas_Exonerado, sum((case when k.Tipo_Transaccion='VRP' then k.Cantidad else 0 end)) as Salidas_Credito_Paciente,
           sum((case when k.Tipo_Transaccion='VRS' then k.Cantidad else 0 end)) as Salidas_SIS, sum((case when k.Tipo_Transaccion='VRI' then k.Cantidad else 0 end)) as Salidas_SISALUD,
            sum((case when k.Tipo_Transaccion='VRO' then k.Cantidad else 0 end)) as Salidas_SOAT,sum((case when k.Tipo_Transaccion='VRD' then k.Cantidad else 0 end)) as Salidas_ConsPeru,
              sum((case when k.Tipo_Transaccion='VOI' then k.Cantidad else 0 end)) as Salidas_Sanitaria, sum((case when k.Tipo_Transaccion='VTB' then k.Cantidad else 0 end)) as Salidas_BTB,
                sum((case when k.Tipo_Transaccion='VOP' then k.Cantidad else 0 end)) as Salidas_Prg,sum((case when k.Tipo_Transaccion='VOD' then k.Cantidad else 0 end)) as Salidas_Dona,
                   sum((case when k.Tipo_Transaccion='ITR' then k.Cantidad else 0 end)) as Ingreso_Transfiere, 
                   sum((case when k.Tipo_Transaccion='IDE' then k.Cantidad else 0 end)) as Ingreso_Devolucion,
                      sum((case when k.Tipo_Transaccion='IAN' then k.Cantidad else 0 end)) as Ingreso_Anula_total,
                                   (select k1.Saldo from kardex k1 where k1.operacion=(select max(k2.Operacion) from Kardex k2 Where
                          k2.Operacion Between  @opeinicio and  @opefin and k2.almacen=@lalmacen and k2.Item=k1.item) and k.Item=k1.item) as Saldo,I.Clase,UPPER(C.Nombre) as Nombre_Clase, 
                          sum((case when k.Tipo_Transaccion='VOC' then k.Cantidad else 0 end)) as CANJE, i.interfase2 as sismed  from v_kardex k left outer join tipo_transaccion t on t.tipo_transaccion=k.Tipo_Transaccion   left outer join item i on i.item=k.Item left outer join clase c on c.clase=i.clase 
                                     where i.interfase2 = '00091' and k.Operacion between @opeinicio and @opefin and k.almacen=@lalmacen  group by k.item,i.nombre,i.clase,i.interfase2, c.nombre order by Clase, NOMBRE asc




sum((case when k.Tipo_Transaccion='IAN' and usuario in (select USUARIO from USUARIO where MODULO = 'farmacia' and ACTIVO = 1) then k.Cantidad else 0 end)) as Ingreso_Anula_Sis,

declare @opeinicio varchar(8) = '16451754'
declare @opefin varchar(8) = '16504404'
declare @lcitem varchar(13) = '170401'
select * from v_KARDEX a 
left join USUARIO b on b.USUARIO = a.USUARIO where OPERACION between @opeinicio and @opefin and ITEM = @lcitem  and ALMACEN = 'F' and TIPO_TRANSACCION = 'IAN'



select USUARIO from USUARIO where MODULO = 'farmacia' and ACTIVO = 1 order by usuario asc


select * from ITEM where INTERFASE2 = '00269'

170161 


select * from KARDEX where ITEM = '170161' and FECHA 

select * from TRANSFERENCIAC where 

use sigsalud
DECLARE @lfecha1 datetime = convert(datetime, '2016-09-30',101)
DECLARE @lfecha2 datetime = convert(datetime, '2016-10-27',101)
Declare @litem varchar(6) = '170399'
select SUM(CANTIDAD) AS TRANSFERENCIA from KARDEX
 where ITEM = @litem AND tipo_transaccion in ('STE', 'SPR', 'SCJ', 'SPD', 'SRO', 'STI', 'STN', 'SVN') AND ALMACEN = 'A' AND FECHA  BETWEEN @lfecha1 AND @lfecha2 GROUP BY ITEM 


select * from KARDEX where ITEM = '170175' and almacen = 'F' order by FECHA desc

select * from KARDEX where ITEM = '170175' and almacen = 'A' order by FECHA desc


SELECT * FROM TIPO_TRANSACCION ORDER BY NOMBRE ASC


 SELECT SUM(CANTIDAD) AS CANTI FROM INGRESOD WHERE INGRESOID IN (SELECT INGRESOID FROM INGRESOC WHERE FECHA BETWEEN @lfecha1 AND @lfecha2)
 AND ITEM = @litem  GROUP BY ITEM 




select * from CITA  


  declare @opeinicio varchar(8) =  '16451754'
  declare @opefin varchar(8) =  '16504404'
  declare @lcitem varchar(13) = '171248'
    select SUM(CANTIDAD) as ANULA_SIS 
  from v_KARDEX a left join USUARIO b on b.USUARIO = a.USUARIO where OPERACION between @opeinicio and @opefin and ITEM = @lcitem 
   and ALMACEN = 'F' and TIPO_TRANSACCION = 'IAN'  AND B.MODULO = 'FARMACIA' group by ITEM 


 
  select *
  from v_KARDEX a left join USUARIO b on b.USUARIO = a.USUARIO where OPERACION between @opeinicio and @opefin and ITEM = @lcitem 
   and ALMACEN = 'F' and TIPO_TRANSACCION = 'IAN'  




  
  select SUM(CANTIDAD) as ANULA_SIS 
  from v_KARDEX a left join USUARIO b on b.USUARIO = a.USUARIO where OPERACION between @opeinicio and @opefin and ITEM = @lcitem 
   and ALMACEN = 'F' and TIPO_TRANSACCION = 'IAN'  group by ITEM 



  




      declare @lcitemfar varchar(13) = '170175'
      declare @lfechainicio datetime = convert(datetime, '2016-09-30',101) +  CAST('00:00:00' AS DATETIME)
      select top 1 SALDO as STOCK_FARMACIA  from KARDEX where ITEM = @lcitemfar and ALMACEN = 'F' AND FECHA < @lfechainicio order by operacion desc


SELECT * FROM ITEM WHERE ITEM = '170175'

    declare @lcitem varchar(13) = '170410'
    declare @lfechainicio datetime = convert(datetime, '2016-09-30', 101) +  CAST('00:00:00' AS DATETIME)
    SELECT TOP 1 SALDO AS STOCK_ALMACEN FROM KARDEX WHERE ITEM = @lcitem AND ALMACEN = 'A' AND FECHA < @lfechainicio  ORDER BY FECHA DESC




/*  CLASE VACUNA */

SELECT * FROM CLASE ORDER BY CLASE ASC

/* NINGUNA - VACUNA */
select ITEM, interfase2 AS SISMED, UPPER(NOMBRE) as nombre, UPPER(PRESENTACION) AS PRESENTACION from ITEM where  SUBSTRING(item,1,2) = '17' and ITEM not in ('179999', '170797', '170274', '170313', '170121', '170129', '170223', '170785', '170786', '170826', '170855', '170870',
'170871', '170868', '170873', '170874', '170878', '170879', '170883', '170885', '170886', '170887', '170888', '170889', '170931', '170932', '170933', '170934', '170935', '170938', '170940', '170944',
'170959', '170960', '170966', '170967', '170980', '170981', '170982', '170983', '170984', '170988', '170986', '170989', '170992', '171002', '171005', '171006', '171007',
'171009', '171012', '171015', '171016', '171017', '171018', '171020', '171020', '171020', '171022', '171023', '171025', '171026', '171027', '171028', '171029', '171030', 
'171032', '171033', '171033', '171031', '171034', '171035', '171037', '171038', '171039', '171040', '171041', '171043', '171046', '171047', '171048', '171058', '171059',
'171060', '171062', '171069', '171073', '171074', '171075', '171076', '171077', '171078', '171079', '171092', '171093', '171096', '171099', '171100', '171101', '171103',
'171104', '171106', '171111', '171116', '171118', '171121', '171122', '171125', '171126', '171127', '171128', '171130', '171131', '171132', '171133', '171134', '171136',
'171137', '171138', '171140', '171146', '171147', '171148', '171149', '171152', '171153', '171157', '171158', '171159', '171161', '171160', '171162', '171163', '171164',
'171165', '171166', '171167', '171168', '171169', '171170', '171171', '171172', '171173', '171174', '171175', '171176', '171177', '171183', '171184', '171185', '171186',
'171187', '171188', '171190', '171192', '171197', '171231', '171233', '171237') and not substring(NOMBRE,1,3) in ('don', 'coe', 'pel') 
 and clase = '0' order by nombre asc


/* INSUMOS MEDICOS QUIRURGICOS  */
select ITEM, interfase2 AS SISMED, UPPER(NOMBRE) as nombre, UPPER(PRESENTACION) AS PRESENTACION from ITEM where  SUBSTRING(item,1,2) = '17' and ITEM not in ('179999', '170797', '170274', '170313', '170121', '170129', '170223', '170785', '170786', '170826', '170855', '170870',
'170871', '170868', '170873', '170874', '170878', '170879', '170883', '170885', '170886', '170887', '170888', '170889', '170931', '170932', '170933', '170934', '170935', '170938', '170940', '170944',
'170959', '170960', '170966', '170967', '170980', '170981', '170982', '170983', '170984', '170988', '170986', '170989', '170992', '171002', '171005', '171006', '171007',
'171009', '171012', '171015', '171016', '171017', '171018', '171020', '171020', '171020', '171022', '171023', '171025', '171026', '171027', '171028', '171029', '171030', 
'171032', '171033', '171033', '171031', '171034', '171035', '171037', '171038', '171039', '171040', '171041', '171043', '171046', '171047', '171048', '171058', '171059',
'171060', '171062', '171069', '171073', '171074', '171075', '171076', '171077', '171078', '171079', '171092', '171093', '171096', '171099', '171100', '171101', '171103',
'171104', '171106', '171111', '171116', '171118', '171121', '171122', '171125', '171126', '171127', '171128', '171130', '171131', '171132', '171133', '171134', '171136',
'171137', '171138', '171140', '171146', '171147', '171148', '171149', '171152', '171153', '171157', '171158', '171159', '171161', '171160', '171162', '171163', '171164',
'171165', '171166', '171167', '171168', '171169', '171170', '171171', '171172', '171173', '171174', '171175', '171176', '171177', '171183', '171184', '171185', '171186',
'171187', '171188', '171190', '171192', '171197', '171231', '171233', '171237') and not substring(NOMBRE,1,3) in ('don', 'coe', 'pel') 
 and clase = 'F' order by nombre asc


/* GALENICOS  */
select ITEM, interfase2 AS SISMED, UPPER(NOMBRE) as nombre, UPPER(PRESENTACION) AS PRESENTACION from ITEM where  SUBSTRING(item,1,2) = '17' and ITEM not in ('179999', '170797', '170274', '170313', '170121', '170129', '170223', '170785', '170786', '170826', '170855', '170870',
'170871', '170868', '170873', '170874', '170878', '170879', '170883', '170885', '170886', '170887', '170888', '170889', '170931', '170932', '170933', '170934', '170935', '170938', '170940', '170944',
'170959', '170960', '170966', '170967', '170980', '170981', '170982', '170983', '170984', '170988', '170986', '170989', '170992', '171002', '171005', '171006', '171007',
'171009', '171012', '171015', '171016', '171017', '171018', '171020', '171020', '171020', '171022', '171023', '171025', '171026', '171027', '171028', '171029', '171030', 
'171032', '171033', '171033', '171031', '171034', '171035', '171037', '171038', '171039', '171040', '171041', '171043', '171046', '171047', '171048', '171058', '171059',
'171060', '171062', '171069', '171073', '171074', '171075', '171076', '171077', '171078', '171079', '171092', '171093', '171096', '171099', '171100', '171101', '171103',
'171104', '171106', '171111', '171116', '171118', '171121', '171122', '171125', '171126', '171127', '171128', '171130', '171131', '171132', '171133', '171134', '171136',
'171137', '171138', '171140', '171146', '171147', '171148', '171149', '171152', '171153', '171157', '171158', '171159', '171161', '171160', '171162', '171163', '171164',
'171165', '171166', '171167', '171168', '171169', '171170', '171171', '171172', '171173', '171174', '171175', '171176', '171177', '171183', '171184', '171185', '171186',
'171187', '171188', '171190', '171192', '171197', '171231', '171233', '171237') and not substring(NOMBRE,1,3) in ('don', 'coe', 'pel') 
 and clase = 'E' order by nombre asc


/* HIGIENE PERSONAL   */
select ITEM, interfase2 AS SISMED, UPPER(NOMBRE) as nombre, UPPER(PRESENTACION) AS PRESENTACION from ITEM where  SUBSTRING(item,1,2) = '17' and ITEM not in ('179999', '170797', '170274', '170313', '170121', '170129', '170223', '170785', '170786', '170826', '170855', '170870',
'170871', '170868', '170873', '170874', '170878', '170879', '170883', '170885', '170886', '170887', '170888', '170889', '170931', '170932', '170933', '170934', '170935', '170938', '170940', '170944',
'170959', '170960', '170966', '170967', '170980', '170981', '170982', '170983', '170984', '170988', '170986', '170989', '170992', '171002', '171005', '171006', '171007',
'171009', '171012', '171015', '171016', '171017', '171018', '171020', '171020', '171020', '171022', '171023', '171025', '171026', '171027', '171028', '171029', '171030', 
'171032', '171033', '171033', '171031', '171034', '171035', '171037', '171038', '171039', '171040', '171041', '171043', '171046', '171047', '171048', '171058', '171059',
'171060', '171062', '171069', '171073', '171074', '171075', '171076', '171077', '171078', '171079', '171092', '171093', '171096', '171099', '171100', '171101', '171103',
'171104', '171106', '171111', '171116', '171118', '171121', '171122', '171125', '171126', '171127', '171128', '171130', '171131', '171132', '171133', '171134', '171136',
'171137', '171138', '171140', '171146', '171147', '171148', '171149', '171152', '171153', '171157', '171158', '171159', '171161', '171160', '171162', '171163', '171164',
'171165', '171166', '171167', '171168', '171169', '171170', '171171', '171172', '171173', '171174', '171175', '171176', '171177', '171183', '171184', '171185', '171186',
'171187', '171188', '171190', '171192', '171197', '171231', '171233', '171237') and not substring(NOMBRE,1,3) in ('don', 'coe', 'pel') 
 and clase = 'I' order by nombre asc



/* TEST DE PRUEBA RAPIDA  */
select ITEM, interfase2 AS SISMED, UPPER(NOMBRE) as nombre, UPPER(PRESENTACION) AS PRESENTACION from ITEM where  SUBSTRING(item,1,2) = '17' and ITEM not in ('179999', '170797', '170274', '170313', '170121', '170129', '170223', '170785', '170786', '170826', '170855', '170870',
'170871', '170868', '170873', '170874', '170878', '170879', '170883', '170885', '170886', '170887', '170888', '170889', '170931', '170932', '170933', '170934', '170935', '170938', '170940', '170944',
'170959', '170960', '170966', '170967', '170980', '170981', '170982', '170983', '170984', '170988', '170986', '170989', '170992', '171002', '171005', '171006', '171007',
'171009', '171012', '171015', '171016', '171017', '171018', '171020', '171020', '171020', '171022', '171023', '171025', '171026', '171027', '171028', '171029', '171030', 
'171032', '171033', '171033', '171031', '171034', '171035', '171037', '171038', '171039', '171040', '171041', '171043', '171046', '171047', '171048', '171058', '171059',
'171060', '171062', '171069', '171073', '171074', '171075', '171076', '171077', '171078', '171079', '171092', '171093', '171096', '171099', '171100', '171101', '171103',
'171104', '171106', '171111', '171116', '171118', '171121', '171122', '171125', '171126', '171127', '171128', '171130', '171131', '171132', '171133', '171134', '171136',
'171137', '171138', '171140', '171146', '171147', '171148', '171149', '171152', '171153', '171157', '171158', '171159', '171161', '171160', '171162', '171163', '171164',
'171165', '171166', '171167', '171168', '171169', '171170', '171171', '171172', '171173', '171174', '171175', '171176', '171177', '171183', '171184', '171185', '171186',
'171187', '171188', '171190', '171192', '171197', '171231', '171233', '171237') and not substring(NOMBRE,1,3) in ('don', 'coe', 'pel') 
 and clase = 'T' order by nombre asc

