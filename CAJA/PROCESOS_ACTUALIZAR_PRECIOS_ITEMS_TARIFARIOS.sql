
SELECT CODCPT, NOMBRE, PRECIOA, PRECIOSIS, PRECIOSOAT, COMENTARIO  FROM dbo.TARIFARIO_ABRIL_2017 WHERE NOMBRE LIKE 'RIESGO%'

SELECT *  FROM dbo.TARIFARIO_MARZO_2017 WHERE NOMBRE LIKE 'RIESGO%'


/*  M MODIFICADO */
/* A - AGREGADO */
/* N NO TIENE PRECIO */
/* F - FALLO EN AGREGAR EL PRECIO */


/* PAGANTE */

/* UBICAR ITEM  */
SELECT * FROM ITEM WHERE CODCPT = 'AD001' and SUBSTRING(item, 1,1) = '6'
    
    /* UBICAR ITEM  - PAGANTE */
    SELECT * FROM ITEM WHERE CODCPT = 'AD001' AND SUBSTRING(ITEM,1,1) = '6' AND ACTIVO = '1'
   /* SI EXISTE ITEM - BUSCAR EL PRECIO*/
     SELECT * FROM PRECIO WHERE ITEM = '60001'
        /* UNA VEZ LOCALIZADO - CAMBIAR EL PRECIO */
            UPDATE PRECIO SET PRECIOA = PRECIO(TARIFARIO_ABIRL_2017), SYSUPDATE = CONVERT(VARCHAR(10), GETDATE(), 103) WHERE ITEM = '60001'
            /* SI SE HA GRABADO EL PRECIO CON EXITO */
             UPDATE ITEM SET  agregar_cpt = 'M' 
       /* SI NO XISTE PRECIO  */
            UPDATE ITEM SET  agregar_cpt = 'N' 
      
/* UBICAR ITEM  - SIS */
    SELECT * FROM ITEM WHERE CODCPT = 'AD001' AND SUBSTRING(ITEM,1,1) = '6' AND ACTIVO = '7'
     603592    
     SELECT * FROM PRECIO WHERE ITEM = '603592'
         UPDATE PRECIO SET PRECIOE = '', PRECIOH = '' WHERE ITEM = '603592'
         
                        
                   
/* SI NOMBRE EXISTE ITEM  */

/* PAGANTES Y SIS */


            
/* QUE NO EXISTE EL ITEM */            

/* agregar nuevo item */
DECLARE @lcnuevo_item varchar(8) = (SELECT top 1 CONVERT(int, item) + 1 as nuevo_item FROM ITEM WHERE SUBSTRING(ITEM,1,1) = '6' AND ACTIVO =  '1' ORDER BY ITEM  DESC)
declare @lcnombre_item varchar(250) = 'NUEVA_DESCRIPCION'
declare @lccodcpt varchar(13) = 'AA001'
declare @lnprecioa  numeric(18,2) =  15

/* Para Pagantes */
/* AGREGAR NUEVO ITEM */
INSERT INTO [SIGSALUD].[dbo].[ITEM] ([ITEM],[NOMBRE],[ABREVIATURA],[GRUPO_RECAUDACION],[CLASIFICADOR],[GRUPO_LIQUIDACION],[GRUPO_TARIFARIO],[PRESENTACION], [FAMILIA],[CLASE],[GENERICO],[LABORATORIO],
  [FRACCION],[INTERFASE1], [VARIABLE],[MODULO],[ACTIVO],[SYSINSERT],[SYSUPDATE],[SYSDELETE],[INTERFASE2],[PETITORIO],[STOCK],[STOCK_MINIMO],[ITEM_EXCLUSION],
    [ESTADO_A_CUENTA],[STOCK_CRITICO],[DISPONIBILIDAD],[APLICA_DSCTO],[PRESENTA],[CONCENTRA], [NOMBRECORTO],[CODCPT],[SECCION],[SUBSECCION],[REVISION],[agregar_cpt])
     VALUES (@lcnuevo_item, @lcnombre_item, @lcnombre_item, '26', '1.3.3.4.1.99', '26', '0', '0', '0', '0', '0', '0',
      1, '', 'N', 'CAJA', '1',  convert(varchar(10), getdate(), 103), '', '', '', 0, 0, 0, '', '4', 0, '', '', '0', '0', '', @lccodcpt, '', '', '', 'A')
      
/* AGREGAR PRECIO PAGANTE */

INSERT INTO [SIGSALUD].[dbo].[PRECIO]([ITEM],[FECHA],[PRECIOA],[PRECIOB],[PRECIOC],[PRECIOD],[PRECIOE],[PRECIOF],[PRECIOG],[PRECIOH],[PRECIOI],[PRECIOJ],[PRECIOK],[COSTO], [UTILIDAD],
    [PRECIOPUB],[DESCUENTO],[PRECIO],[HORA],[PRECIOX],[PROMEDIO],[SYSINSERT],[SYSUPDATE],[INGRESOID])
   VALUES (@lcnuevo_item, getdate(), @lnprecioa, 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, '', 0,0, CONVERT(varchar(10), getdate(), 103), '', '')


/* AGREGAR ITEM PARA SIS */

DECLARE @lcnuevo_item_sis varchar(8) = (SELECT top 1 CONVERT(int, item) + 1 as nuevo_item FROM ITEM WHERE SUBSTRING(ITEM,1,1) = '6' AND ACTIVO =  '7' ORDER BY ITEM  DESC)
declare @lcnombre_item_sis varchar(250) = 'NUEVA_DESCRIPCION'
declare @lccodcpt_sis varchar(13) = 'AA001'
declare @lnpreciosis  numeric(18,2) =  20
declare @lnpreciosoat  numeric(18,2) =  10

/* Para REGISTRAR item SIS */
INSERT INTO [SIGSALUD].[dbo].[ITEM] ([ITEM],[NOMBRE],[ABREVIATURA],[GRUPO_RECAUDACION],[CLASIFICADOR],[GRUPO_LIQUIDACION],[GRUPO_TARIFARIO],[PRESENTACION], [FAMILIA],[CLASE],[GENERICO],[LABORATORIO],
  [FRACCION],[INTERFASE1], [VARIABLE],[MODULO],[ACTIVO],[SYSINSERT],[SYSUPDATE],[SYSDELETE],[INTERFASE2],[PETITORIO],[STOCK],[STOCK_MINIMO],[ITEM_EXCLUSION],
    [ESTADO_A_CUENTA],[STOCK_CRITICO],[DISPONIBILIDAD],[APLICA_DSCTO],[PRESENTA],[CONCENTRA], [NOMBRECORTO],[CODCPT],[SECCION],[SUBSECCION],[REVISION],[agregar_cpt])
     VALUES (@lcnuevo_item_sis, @lcnombre_item_sis, @lcnombre_item_sis, '26', '1.3.3.4.1.99', '26', '0', '0', '0', '0', '0', '0',
      1, '', 'N', 'CAJA', '7',  convert(varchar(10), getdate(), 103), '', '', '', 0, 0, 0, '', '4', 0, '', '', '0', '0', '', @lccodcpt_sis, '', '', '', 'A')
      
/* Para REGISTRAR precio SIS */

INSERT INTO [SIGSALUD].[dbo].[PRECIO]([ITEM],[FECHA],[PRECIOA],[PRECIOB],[PRECIOC],[PRECIOD],[PRECIOE],[PRECIOF],[PRECIOG],[PRECIOH],[PRECIOI],[PRECIOJ],[PRECIOK],[COSTO], [UTILIDAD],
    [PRECIOPUB],[DESCUENTO],[PRECIO],[HORA],[PRECIOX],[PROMEDIO],[SYSINSERT],[SYSUPDATE],[INGRESOID])
   VALUES (@lcnuevo_item_sis, getdate(), 0, 0,0,0,@lnpreciosis,0,0,@lnpreciosoat,0,0,0,0,0,0,0,0, '', 0,0, CONVERT(varchar(10), getdate(), 103), '', '')
   




 declare @lccodcpt varchar(13) = 'AD001' 
       SELECT * FROM ITEM WHERE CODCPT = @lccodcpt AND SUBSTRING(ITEM,1,1) = '6' AND ACTIVO = '1'