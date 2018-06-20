

use SIGSALUD
select CODCPT, ITEM, NOMBRE, ACTIVO from ITEM where CODCPT in ('55250', '58300', '58301', '58600', '86592', '86703') and ACTIVO = '1' 
order by CODCPT asc


SELECT * FROM PRECIO WHERE ITEM IN (select ITEM from ITEM where CODCPT in ('55250', '58300', '58301', '58600', '86592', '86703') and ACTIVO = '1' 
AND SUBSTRING(ITEM,1,1)= '6')


SELECT * FROM PRECIO WHERE ITEM IN (select ITEM from ITEM where CODCPT in ('55250', '58300', '58301', '58600', '86592', '86703') and ACTIVO = '7' 
AND SUBSTRING(ITEM,1,1)= '6')




use SIGSALUD
select CODCPT, ITEM, NOMBRE, ACTIVO from ITEM where CODCPT in ('55250', '58300', '58301', '58600', '86592', '86703') and ACTIVO = '7' 
order by CODCPT asc



/*** EJECUTAR DESDE AQUI ***/
UPDATE PRECIO SET PRECIOA = 0, PRECIOB = 0, PRECIOC = 0, PRECIOF =  0, PRECIOG = 0, PRECIOH = 0, PRECIOI = 0, PRECIOJ = 0, PRECIOK = 0  WHERE ITEM IN (select ITEM from ITEM where CODCPT in ('55250', '58300', '58301', '58600', '86592', '86703') and ACTIVO = '1' 
AND SUBSTRING(ITEM,1,1)= '6')


/*** INGRESAR NUEVO ITEM --**/

 DECLARE @lcnuevo_item varchar(8) = (SELECT top 1 CONVERT(int, item) + 1 as nuevo_item FROM ITEM WHERE SUBSTRING(ITEM,1,1) = '6' AND ACTIVO =  '1' ORDER BY ITEM  DESC)
 declare @lcnombre_item varchar(250) = 'INSERCION DE IMPLANTE'
 declare @lccodcpt varchar(13) = '11981'
 declare @lnprecioa  numeric(18,2) =  0
 INSERT INTO [SIGSALUD].[dbo].[ITEM] ([ITEM],[NOMBRE],[ABREVIATURA],[GRUPO_RECAUDACION],[CLASIFICADOR],[GRUPO_LIQUIDACION],[GRUPO_TARIFARIO],[PRESENTACION], [FAMILIA],[CLASE],[GENERICO],[LABORATORIO],
            [FRACCION],[INTERFASE1], [VARIABLE],[MODULO],[ACTIVO],[SYSINSERT],[SYSUPDATE],[SYSDELETE],[INTERFASE2],[PETITORIO],[STOCK],[STOCK_MINIMO],[ITEM_EXCLUSION],
                [ESTADO_A_CUENTA],[STOCK_CRITICO],[DISPONIBILIDAD],[APLICA_DSCTO],[PRESENTA],[CONCENTRA], [NOMBRECORTO],[CODCPT],[SECCION],[SUBSECCION],[REVISION],[agregar_cpt])
 VALUES (@lcnuevo_item, @lcnombre_item, @lcnombre_item, '26', '1.3.3.4.1.99', '26', '0', '0', '0', '0', '0', '0', 1, '', 'N', 'CAJA', '1',  convert(varchar(10), getdate(), 103), '', '', '', 0, 0, 0, '', '4', 0, '', '', '0', '0', '', @lccodcpt, '', '', '', 'A')
 
 INSERT INTO [SIGSALUD].[dbo].[PRECIO]([ITEM],[FECHA],[PRECIOA],[PRECIOB],[PRECIOC],[PRECIOD],[PRECIOE],[PRECIOF],[PRECIOG],[PRECIOH],[PRECIOI],[PRECIOJ],[PRECIOK],[COSTO], [UTILIDAD], [PRECIOPUB],[DESCUENTO],[PRECIO],[HORA],[PRECIOX],[PROMEDIO],[SYSINSERT],[SYSUPDATE],[INGRESOID])
     VALUES (@lcnuevo_item, getdate(), @lnprecioa, 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, '', 0,0, CONVERT(varchar(10), getdate(), 103), '', '')
             


           DECLARE @lcnuevo_item_sis varchar(8) = (SELECT top 1 CONVERT(int, item) + 1 as nuevo_item FROM ITEM WHERE SUBSTRING(ITEM,1,1) = '6' AND ACTIVO =  '7' ORDER BY ITEM  DESC)
           declare @lcnombre_item_sis varchar(250) = 'INSERCION DE IMPLANTE'
           declare @lccodcpt_sis varchar(13) = '11981'
           declare @lnpreciosis  numeric(18,2) =  0
           declare @lnpreciosoat  numeric(18,2) =  0
           
           INSERT INTO [SIGSALUD].[dbo].[ITEM] ([ITEM],[NOMBRE],[ABREVIATURA],[GRUPO_RECAUDACION],[CLASIFICADOR],[GRUPO_LIQUIDACION],[GRUPO_TARIFARIO],[PRESENTACION], [FAMILIA],[CLASE],[GENERICO],[LABORATORIO],
             [FRACCION],[INTERFASE1], [VARIABLE],[MODULO],[ACTIVO],[SYSINSERT],[SYSUPDATE],[SYSDELETE],[INTERFASE2],[PETITORIO],[STOCK],[STOCK_MINIMO],[ITEM_EXCLUSION],
                 [ESTADO_A_CUENTA],[STOCK_CRITICO],[DISPONIBILIDAD],[APLICA_DSCTO],[PRESENTA],[CONCENTRA], [NOMBRECORTO],[CODCPT],[SECCION],[SUBSECCION],[REVISION],[agregar_cpt])
                      VALUES (@lcnuevo_item_sis, @lcnombre_item_sis, @lcnombre_item_sis, '26', '1.3.3.4.1.99', '26', '0', '0', '0', '0', '0', '0', 1, '', 'N', 'CAJA', '7',  convert(varchar(10), getdate(), 103), '', '', '', 0, 0, 0, '', '4', 0, '', '', '0', '0', '', @lccodcpt_sis, '', '', '', 'A')
                      
           INSERT INTO [SIGSALUD].[dbo].[PRECIO]([ITEM],[FECHA],[PRECIOA],[PRECIOB],[PRECIOC],[PRECIOD],[PRECIOE],[PRECIOF],[PRECIOG],[PRECIOH],[PRECIOI],[PRECIOJ],[PRECIOK],[COSTO], [UTILIDAD],
               [PRECIOPUB],[DESCUENTO],[PRECIO],[HORA],[PRECIOX],[PROMEDIO],[SYSINSERT],[SYSUPDATE],[INGRESOID])
                 VALUES (@lcnuevo_item_sis, getdate(), 0, 0,0,0,@lnpreciosis,0,0,@lnpreciosoat,0,0,0,0,0,0,0,0, '', 0,0, CONVERT(varchar(10), getdate(), 103), '', '')
                 



/** FIN DE NUEVO ITEM ***/

