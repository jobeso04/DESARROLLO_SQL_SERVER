USE SIGSALUD
/* select * from ITEM where GRUPO_RECAUDACION = '17' and item  not in ('179999', '99201') order by item desc */

/* DECLARE @litem varchar(13) = '171256'
declare @ldescripcion varchar(100) = 'PLACA 1/3 DE TUBO DE 6 AGUJEROS x 3.5 mm'
declare @presentacion varchar(20) = 'UND'  */


 /* DECLARE @litem varchar(13) = '171257'
declare @ldescripcion varchar(100) = 'TORNILLO CORTICAL 3.5mm X 36mm'
declare @presentacion varchar(20) = 'UND'   */



/* DECLARE @litem varchar(13) = '171258'
declare @ldescripcion varchar(100) = 'TORNILLO ESPONJOSO ROSCA TOTAL 4.0MM X 20mm'
declare @presentacion varchar(20) = 'UND'   */




/* DECLARE @litem varchar(13) = '171259'
declare @ldescripcion varchar(100) = 'TORNILLO MALEOLAR 4.5mm X 34mm'
declare @presentacion varchar(20) = 'UND'  */

/* DECLARE @litem varchar(13) = '171260'
declare @ldescripcion varchar(100) = 'PLACA DCP IPF DE 07AGUJEROS X 3.5 mm'
declare @presentacion varchar(20) = 'UND'  */



DECLARE @litem varchar(13) = '171262'
declare @ldescripcion varchar(100) = 'DILUYENTE PARA VACUNA ANTITUBERCULOSA (BCG) INY. 10 DOSIS'
declare @presentacion varchar(20) = 'UND'


 /* INGRESAR EN ITEM */
 INSERT INTO [SIGSALUD].[dbo].[ITEM]([ITEM],[NOMBRE],[ABREVIATURA],[GRUPO_RECAUDACION],[CLASIFICADOR],[GRUPO_LIQUIDACION],[GRUPO_TARIFARIO],[PRESENTACION],[FAMILIA],[CLASE],[GENERICO],
  [LABORATORIO],[FRACCION],[INTERFASE1],[VARIABLE],[MODULO],[ACTIVO],[SYSINSERT],[SYSUPDATE],[SYSDELETE],[INTERFASE2],[PETITORIO],[STOCK],[STOCK_MINIMO],[ITEM_EXCLUSION],
   [ESTADO_A_CUENTA],[STOCK_CRITICO],[DISPONIBILIDAD],[APLICA_DSCTO],[PRESENTA],[CONCENTRA],[NOMBRECORTO],[CODCPT]) 
      VALUES  (@litem, @ldescripcion, '', '17', '1.3.1.6.12', '17', '0', @presentacion, '0', 'A', '0', '0', 1, '', 'N', 'FARMACIA', 1, CONVERT(VARCHAR(20), GETDATE(), 103), '', '', '', 0, 0, 0, '', '4', 0, '', 'S', '', '',  '', '')  


/* INGRESAR EN STCOK */
INSERT INTO [SIGSALUD].[dbo].[STOCK]([ALMACEN],[ITEM],[STOCK],[PROMEDIO],[UBICACION],[MINIMO])
 VALUES ('A', @litem, 0, 0, '0',0)
INSERT INTO [SIGSALUD].[dbo].[STOCK]([ALMACEN],[ITEM],[STOCK],[PROMEDIO],[UBICACION],[MINIMO])
 VALUES ('F', @litem, 0, 0, '0',0)

select * from ITEM where item = @litem
select * from STOCK where item = @litem

 



use SIGSALUD
select top 1 '17' + convert(varchar(4), convert(int, SUBSTRING(item,3,4)) + 1)  as nro   from ITEM where GRUPO_RECAUDACION = '17' and item  not in ('179999', '99201') order by item desc 

