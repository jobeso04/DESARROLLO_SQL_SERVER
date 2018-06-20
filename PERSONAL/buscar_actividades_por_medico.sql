/* buscado las actividades por medico */

TRUNCATE TABLE [BDPERSONAL].[dbo].[TMP_CUENTA_CEM_MEDICO]
declare @lc_iddepartamento varchar(3) = '14'
declare @lc_idservicio varchar(3) = '16'
declare @lccodigo varchar(13) = '084096'
DECLARE @lnanio INT = 2017
declare @lnmes int = 10
declare @lcactividad int = 41 /* Para CEM */
INSERT INTO [BDPERSONAL].[dbo].[TMP_CUENTA_CEM_MEDICO]
SELECT	'DIA' + convert(varchar(2), ROW_NUMBER() OVER(order by dia)) AS NUMERO_DIA, 
   ISNULL(([BDPERSONAL].[dbo].[FN_ACTIVIDAD_ASIST_1](DIA, @lnmes, @lnanio,  @lccodigo, @lcactividad) ),0) as CEM
        FROM [BDPERSONAL].[dbo].[ASISTENCIA]  where	AÑO = @lnanio  and	mes = @lnmes  and codigo = @lccodigo  order by dia

SELECT * FROM [BDPERSONAL].[dbo].[TMP_CUENTA_CEM_MEDICO]        



-- INSERT INTO [BDPERSONAL].[dbo].[TMP_CUENTA_CEM]([NUMERO_DIA],[CEM])


/*
SELECT * FROM [BDPERSONAL].[dbo].[ACTIVIDAD_DETALLE] 
WHERE MES = @lnmes AND ANIO = @lnanio and codigo = @lccodigo order by DIA 

----- 
truncate table [BDPERSONAL].[dbo].[TMP_CUENTA_CEM] 
-----
*/
        
        
	      