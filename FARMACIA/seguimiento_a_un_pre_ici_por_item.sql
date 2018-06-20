/* Seguimiento a un Item en Pre ICI */
use  sigsalud

declare @lfechainicio datetime = convert(datetime, '2018-02-28',101) +  CAST('00:00:00' AS DATETIME)
declare @lfechafin datetime = convert(datetime, '2018-03-28',101) + CAST('23:59:59' AS DATETIME)
declare @lcitem varchar(13) = '170648'
SELECT top 1 SALDO as STOCK_ALMACEN FROM [SIGSALUD].[dbo].[KARDEX] WHERE ITEM = @lcitem AND ALMACEN = 'A'  and fecha between @lfechainicio and @lfechafin ORDER BY FECHA DESC

                                        
declare @lcitem varchar(13) = '170648'
declare @lfechainicio datetime = convert(datetime, '2018-02-28',101) +  CAST('00:00:00' AS DATETIME)
SELECT TOP 1 SALDO AS STOCK_ALMACEN FROM [SIGSALUD].[dbo].[KARDEX] WHERE ITEM = @lcitem AND ALMACEN = 'A' AND FECHA < @lfechainicio  ORDER BY FECHA DESC                                        


   declare @loperacion1 varchar(8) = '18079845'
   declare @loperacion2 varchar(8) = '18135030'
   declare @lcitemfar varchar(13) = '170648'
   select top 1 SALDO as STOCK_FARMACIA from [SIGSALUD].[dbo].[KARDEX] where ITEM = @lcitemfar and ALMACEN = 'C' and OPERACION between @loperacion1 and @loperacion2 order by operacion desc



   declare @litem varchar(13) = '170648'
   DECLARE @lfecha1 datetime = convert(datetime, '2018-02-28',101)  +  CAST('00:00:00' AS DATETIME)
   DECLARE @lfecha2 datetime = convert(datetime, '2018-03-28',101) + CAST('23:59:59' AS DATETIME)
   SELECT SUM(CANTIDAD) AS CANTI FROM [SIGSALUD].[dbo].[INGRESOD] WHERE INGRESOID IN (SELECT INGRESOID FROM [SIGSALUD].[dbo].[INGRESOC] WHERE FECHA BETWEEN @lfecha1 AND @lfecha2) AND ITEM = @litem  GROUP BY ITEM 
   
   
   declare @opeinicio varchar(8) = '18079845'
   declare @opefin varchar(8) =  '18135030'
   declare @lalmacen varchar(1) = 'F'
   select k.item,SALDO_ANTIGUO = 0, i.nombre,MAX(k.PRECIO) AS Precio, sum((case when k.Tipo_Transaccion='VC' then k.Cantidad else 0 end)) as Salidas_Contado,
         sum((case when k.Tipo_Transaccion='VEX' then k.Cantidad else 0 end)) as Salidas_Exonerado, sum((case when k.Tipo_Transaccion='VRP' then k.Cantidad else 0 end)) as Salidas_Credito_Paciente,
           sum((case when k.Tipo_Transaccion='VRS' then k.Cantidad else 0 end)) as Salidas_SIS, sum((case when k.Tipo_Transaccion='VRI' then k.Cantidad else 0 end)) as Salidas_SISALUD,
            sum((case when k.Tipo_Transaccion='VRO' then k.Cantidad else 0 end)) as Salidas_SOAT,sum((case when k.Tipo_Transaccion='VRD' then k.Cantidad else 0 end)) as Salidas_ConsPeru,
              sum((case when k.Tipo_Transaccion='VOI' then k.Cantidad else 0 end)) as Salidas_Sanitaria, sum((case when k.Tipo_Transaccion='VTB' then k.Cantidad else 0 end)) as Salidas_BTB,
                sum((case when k.Tipo_Transaccion='VOP' then k.Cantidad else 0 end)) as Salidas_Prg,sum((case when k.Tipo_Transaccion='VOD' then k.Cantidad else 0 end)) as Salidas_Dona,
                   sum((case when k.Tipo_Transaccion='ITR' then k.Cantidad else 0 end)) as Ingreso_Transfiere, sum((case when k.Tipo_Transaccion='IDE' then k.Cantidad else 0 end)) as Ingreso_Devolucion,
                      sum((case when k.Tipo_Transaccion='IAN' then k.Cantidad else 0 end)) as Ingreso_Anula, (select k1.Saldo from kardex k1 where k1.operacion=(select max(k2.Operacion) from Kardex k2 Where
                          k2.Operacion Between  @opeinicio and  @opefin and k2.almacen=@lalmacen and k2.Item=k1.item) and k.Item=k1.item) as Saldo,I.Clase,UPPER(C.Nombre) as Nombre_Clase, 
                          sum((case when k.Tipo_Transaccion='VOC' then k.Cantidad else 0 end)) as CANJE, i.interfase2 as sismed  from [SIGSALUD].[dbo].[V_KARDEX] k left outer join [SIGSALUD].[dbo].[TIPO_TRANSACCION] t on t.tipo_transaccion=k.Tipo_Transaccion   left outer join item i on i.item=k.Item left outer join clase c on c.clase=i.clase 
                                     where k.item = '170648' and k.Operacion between @opeinicio and @opefin and k.almacen=@lalmacen  group by k.item,i.nombre,i.clase,i.interfase2, c.nombre order by Clase, NOMBRE asc
                                     


   declare @opeinicio varchar(8) = '18079845'
   declare @opefin varchar(8) =  '18135030'
   declare @lalmacen varchar(1) = 'F'
   select k.item,SALDO_ANTIGUO = 0, i.nombre,MAX(k.PRECIO) AS Precio, sum((case when k.Tipo_Transaccion='VC' then k.Cantidad else 0 end)) as Salidas_Contado,
         sum((case when k.Tipo_Transaccion='VEX' then k.Cantidad else 0 end)) as Salidas_Exonerado, sum((case when k.Tipo_Transaccion='VRP' then k.Cantidad else 0 end)) as Salidas_Credito_Paciente,
           sum((case when k.Tipo_Transaccion='VRS' then k.Cantidad else 0 end)) as Salidas_SIS, sum((case when k.Tipo_Transaccion='VRI' then k.Cantidad else 0 end)) as Salidas_SISALUD,
            sum((case when k.Tipo_Transaccion='VRO' then k.Cantidad else 0 end)) as Salidas_SOAT,sum((case when k.Tipo_Transaccion='VRD' then k.Cantidad else 0 end)) as Salidas_ConsPeru,
              sum((case when k.Tipo_Transaccion='VOI' then k.Cantidad else 0 end)) as Salidas_Sanitaria, sum((case when k.Tipo_Transaccion='VTB' then k.Cantidad else 0 end)) as Salidas_BTB,
                sum((case when k.Tipo_Transaccion='VOP' then k.Cantidad else 0 end)) as Salidas_Prg,sum((case when k.Tipo_Transaccion='VOD' then k.Cantidad else 0 end)) as Salidas_Dona,
                   sum((case when k.Tipo_Transaccion='ITR' then k.Cantidad else 0 end)) as Ingreso_Transfiere, sum((case when k.Tipo_Transaccion='IDE' then k.Cantidad else 0 end)) as Ingreso_Devolucion,
                      sum((case when k.Tipo_Transaccion='IAN' then k.Cantidad else 0 end)) as Ingreso_Anula, (select k1.Saldo from kardex k1 where k1.operacion=(select max(k2.Operacion) from Kardex k2 Where
                          k2.Operacion Between  @opeinicio and  @opefin and k2.almacen=@lalmacen and k2.Item=k1.item) and k.Item=k1.item) as Saldo,I.Clase,UPPER(C.Nombre) as Nombre_Clase, 
                          sum((case when k.Tipo_Transaccion='VOC' then k.Cantidad else 0 end)) as CANJE, i.interfase2 as sismed  from [SIGSALUD].[dbo].[V_KARDEX] k left outer join [SIGSALUD].[dbo].[TIPO_TRANSACCION] t on t.tipo_transaccion=k.Tipo_Transaccion   left outer join item i on i.item=k.Item left outer join clase c on c.clase=i.clase 
                                     where k.item = '171338'  and k.Operacion between @opeinicio and @opefin and k.almacen=@lalmacen  group by k.item,i.nombre,i.clase,i.interfase2, c.nombre order by Clase, NOMBRE asc
                                     
                                     
                                     

   DECLARE @lfecha1 datetime = convert(datetime, '2018-02-28',101)  +  CAST('00:00:00' AS DATETIME)
   DECLARE @lfecha2 datetime = convert(datetime, '2018-03-28',101) + CAST('23:59:59' AS DATETIME)
   Declare @litem varchar(6) = '170648'
   select SUM(CANTIDAD) AS TRANSFERENCIA from [SIGSALUD].[dbo].[KARDEX]
     where ITEM = @litem AND tipo_transaccion in ('STE', 'SPR', 'SCJ', 'SPD', 'SRO', 'STI', 'STN', 'SVN') AND ALMACEN = 'A' AND FECHA  BETWEEN @lfecha1 AND @lfecha2 GROUP BY ITEM 
     
  
  /* VER DATELLE */
  
  declare @opeinicio varchar(8) = '18079845'
  declare @opefin varchar(8) = '18135030'
  declare @lcitem varchar(13) = '170326'
  select SUM(CANTIDAD) as ANULA_CONTADO  from [SIGSALUD].[dbo].[V_KARDEX] a left join USUARIO b on b.USUARIO = a.USUARIO where OPERACION between @opeinicio and @opefin and ITEM = @lcitem  and ALMACEN = 'F' /* and  TIPO_TRANSACCION = 'IAN'   */
  AND B.MODULO = 'FARMACIA' AND TIPO_TRANSACCION IN ('VC')  AND TIPO_TRANSACCION <> ('VRS') AND A.ESTADO  = 0 group by ITEM 
  
  
  
  -- AND B.MODULO = 'FARMACIA' AND TIPO_TRANSACCION IN ('VRS', 'SIS')
    

  SELECT * FROM PAGOC WHERE ORDENID = '1718031199'
  SELECT * FROM ORDENC WHERE ORDENID = '1718031199'
  
  SELECT * FROM PAGOC WHERE ORDENID = '1718031199'
  
  
  /* anulado contado */
    declare @opeinicio varchar(8) = '18079845'
   declare @opefin varchar(8) = '18135030'
   declare @lcitem varchar(13) = '170326'
   select SUM(CANTIDAD) as ANULA_CONTADO  from [SIGSALUD].[dbo].[V_KARDEX] a left join USUARIO b on b.USUARIO = a.USUARIO where OPERACION between @opeinicio and @opefin and ITEM = @lcitem  and ALMACEN = 'F' 
       AND B.MODULO = 'FARMACIA' AND TIPO_TRANSACCION IN ('IAN')  AND A.ESTADO  = 0 group by ITEM 
       
     
        
   
   /*
     select SUM(CANTIDAD) as ANULA_CONTADO  from [SIGSALUD].[dbo].[V_KARDEX] a left join USUARIO b on b.USUARIO = a.USUARIO where OPERACION between @opeinicio and @opefin and ITEM = @lcitem  and ALMACEN = 'F' 
       AND B.MODULO = 'FARMACIA' AND TIPO_TRANSACCION IN ('VC')  AND TIPO_TRANSACCION <> ('VRS') AND A.ESTADO  = 0 group by ITEM 
     */  
  
  /* fin anulado contado */
  
  
  /*  FIN DE VER DETALLE */
     
     
  declare @opeinicio varchar(8) = '18079845'
  declare @opefin varchar(8) = '18135030'
  declare @lcitem varchar(13) = '170326'
  select SUM(CANTIDAD) as ANULA_SIS   from [SIGSALUD].[dbo].[V_KARDEX] a left join USUARIO b on b.USUARIO = a.USUARIO where OPERACION between @opeinicio and @opefin and ITEM = @lcitem  and ALMACEN = 'F' and TIPO_TRANSACCION IN ('IAN')
  AND A.ESTADO = '3' AND B.MODULO = 'FARMACIA' group by ITEM 



/* ver datelle sis anulado */
declare @opeinicio varchar(8) = '18079845'
declare @opefin varchar(8) = '18135030'
declare @lcitem varchar(13) =  '170451'
select SUM(CANTIDAD) as ANULA_SIS from [SIGSALUD].[dbo].[V_KARDEX] a left join USUARIO b on b.USUARIO = a.USUARIO  where OPERACION between @opeinicio and @opefin and ITEM = @lcitem  and ALMACEN = 'C' AND
   B.MODULO = 'FARMACIA'  AND TIPO_TRANSACCION IN ('IAN')  AND IDTRANSACCION = (select IDTRANSACCION  from [SIGSALUD].[dbo].[V_KARDEX] a left join USUARIO b on b.USUARIO = a.USUARIO  where OPERACION between @opeinicio and @opefin and ITEM = @lcitem  and ALMACEN = 'F' AND
   B.MODULO = 'FARMACIA'  AND TIPO_TRANSACCION IN ('VRS'))  group by ITEM  
   
  
  
  
    
    



/* fin de anulados sis */

  
  declare @opeinicio varchar(8) = '18079845'
  declare @opefin varchar(8) = '18135030'
  declare @lcitem varchar(13) = '170648'
  select SUM(CANTIDAD) as ANULA_SIS from [SIGSALUD].[dbo].[V_KARDEX] a left join USUARIO b on b.USUARIO = a.USUARIO where OPERACION between @opeinicio and @opefin and ITEM = @lcitem  and ALMACEN = 'C' and TIPO_TRANSACCION IN ('VRS', 'SIS')
  AND B.MODULO = 'FARMACIA'  group by ITEM 
   


select * from KARDEX where ITEM = '170648' and  ALMACEN = 'F' and FECHA >= convert(datetime, '2018-02-28',101)  +  CAST('00:00:00' AS DATETIME)  order by OPERACION desc

select * from V_KARDEX where ITEM = '170648' and  ALMACEN = 'F' and FECHA >= convert(datetime, '2018-02-28',101)  +  CAST('00:00:00' AS DATETIME) and TIPO_TRANSACCION = 'IAN'
 order by OPERACION desc

                                     

select * from V_KARDEX where ITEM = '170326' and  FECHA >= convert(datetime, '2018-02-28',101)  +  CAST('00:00:00' AS DATETIME) AND TIPO_TRANSACCION = 'IDE'
 order by OPERACION desc


select * from V_KARDEX where ITEM = '171338'  and  FECHA >= convert(datetime, '2018-02-28',101)  +  CAST('00:00:00' AS DATETIME) 
 order by IDTRANSACCION  desc


SELECT * FROM ORDENC WHERE ORDENID = '1718015191'

/* DEVLUCION POR INTERVENCION SANITARIA */
 declare @opeinicio varchar(8) = '18079845'
  declare @opefin varchar(8) = '18135030'
  declare @lcitem varchar(13) = '170326'
  select SUM(CANTIDAD) as DEVOLUCION from [SIGSALUD].[dbo].[V_KARDEX]  where OPERACION between @opeinicio and @opefin and ITEM = @lcitem  and ALMACEN = 'F' and TIPO_TRANSACCION = 'IDE'
  group by ITEM 
  
 
 declare @opeinicio varchar(8) = '18079845'
  declare @opefin varchar(8) = '18135030'
  declare @lcitem varchar(13) = '170326'
  select SUM(CANTIDAD) as DEVOLUCION from [SIGSALUD].[dbo].[V_KARDEX]  where OPERACION between @opeinicio and @opefin and ITEM = @lcitem  and ALMACEN = 'C' and TIPO_TRANSACCION = 'IDE'
  group by ITEM 
 
 
  

/* FIN DE DEVOLUCION SANITARIA */


                                     

   


/* INICIO DE ANULADOS EN CREDITO PACIENTE */
  declare @opeinicio varchar(8) = '18079845'
  declare @opefin varchar(8) = '18135030'
  declare @lcitem varchar(13) = '170451'
  select SUM(CANTIDAD) as DEVO_CREDITO_PACIENTE    from [SIGSALUD].[dbo].[V_KARDEX] a left join USUARIO b on b.USUARIO = a.USUARIO  where OPERACION between @opeinicio and @opefin and ITEM = @lcitem  and ALMACEN = 'F' AND
   B.MODULO = 'FARMACIA'  AND TIPO_TRANSACCION IN ('IAN')  AND IDTRANSACCION = (select IDTRANSACCION  from [SIGSALUD].[dbo].[V_KARDEX] a left join USUARIO b on b.USUARIO = a.USUARIO  where OPERACION between @opeinicio and @opefin and ITEM = @lcitem  and ALMACEN = 'C' AND
   B.MODULO = 'FARMACIA'  AND TIPO_TRANSACCION IN ('VRP'))  group by ITEM  
   
  
  declare @opeinicio varchar(8) = '18079845'
  declare @opefin varchar(8) = '18135030'
  declare @lcitem varchar(13) = '170451'
  select SUM(CANTIDAD) as DEVO_CREDITO_PACIENTE    from [SIGSALUD].[dbo].[V_KARDEX] a left join USUARIO b on b.USUARIO = a.USUARIO  where OPERACION between @opeinicio and @opefin and ITEM = @lcitem  and ALMACEN = 'C' AND
   B.MODULO = 'FARMACIA'  AND TIPO_TRANSACCION IN ('IAN')  AND IDTRANSACCION = (select IDTRANSACCION  from [SIGSALUD].[dbo].[V_KARDEX] a left join USUARIO b on b.USUARIO = a.USUARIO  where OPERACION between @opeinicio and @opefin and ITEM = @lcitem  and ALMACEN = 'C' AND
   B.MODULO = 'FARMACIA'  AND TIPO_TRANSACCION IN ('VRP'))  group by ITEM  
  
  
   
   
   
   
  
  and TIPO_TRANSACCION IN ('VRS', 'SIS')
  AND B.MODULO = 'FARMACIA'  group by ITEM 
  
  
  

/* FIN DE ANULADOS EN CREDITO APCIENTE */



