DECLARE @lccodigo_medico varchar(13) = '084030'
declare @lnmes int = 8
declare @lnanio int = 2017
/*
INSERT INTO ACTIVIDAD_DETALLE 
VALUES (1, @lccodigo_medico, 2, @lnmes, @lnanio, '1', 'T', 6)
*/

DECLARE @lccodigo_revisar_medico varchar(13) = '084030'
declare @lnmes_revisar int = 8
declare @lnanio_revisar int = 2017
select * from ACTIVIDAD_DETALLE where MES = @lnmes_revisar and ANIO = @lnanio_revisar and CODIGO = @lccodigo_revisar_medico ORDER BY DIA ASC

select * from dbo.ACTIVIDADES  where ACTIVO = '1'

ECOGRAFIA = 49
telegestion = 51
investigacion = 55



/* delete from ACTIVIDAD_DETALLE where MES = 8 and DIA = 2 and ANIO = 2017 and CODIGO = '084229' */


use BDPERSONAL
DECLARE @lccodigo_ver VARCHAR(13) =  '084030'
DECLARE @ln_mes_ver int = 8
declare @lnanio_ver int = 2017
declare @lndia_ver int = 2
declare @lc_tipo_medico VARCHAR(1) = '1'

SELECT	ID_ACTIVIDAD, NOMBRE, case dbo.FN_SELECTED_ACTIVIDAD (@lccodigo_ver, @lndia_ver, @ln_mes_ver, @lnanio_ver, ID_ACTIVIDAD)  
  	when 'sele' then 'checked' else ' ' end SEL, dbo.FN_ACTIVIDAD_DETALLE2 (@lccodigo_ver, @lndia_ver, @ln_mes_ver, @lnanio_ver, ID_ACTIVIDAD) AS TURNO, 
  	  	dbo.FN_ACTIVIDAD_DETALLE3 (@lccodigo_ver, @lndia_ver, @ln_mes_ver, @lnanio_ver, ID_ACTIVIDAD) AS HORAS, 
 	  	case dbo.FN_SELECTED_ACTIVIDAD (@lccodigo_ver, @lndia_ver, @ln_mes_ver, @lnanio_ver, ID_ACTIVIDAD)   when 'sele' then ' ' else '' end VER, 
 	  	CASE dbo.FN_ACTIVIDAD_DETALLE2 (@lccodigo_ver, @lndia_ver, @ln_mes_ver, @lnanio_ver, ID_ACTIVIDAD)   WHEN 'M' then 1 when 'T' then 2 when 'MT' then 3 when 'N' then 4 when 'TN' then 5 when 'TD' then 6 when 'MN' then 7 when 'DN' then 8 else 0 end TURNO, 
 	  			ABREVIATURA  FROM  ACTIVIDADES	WHERE 	ACTIVO = @lc_tipo_medico order by NOMBRE asc


