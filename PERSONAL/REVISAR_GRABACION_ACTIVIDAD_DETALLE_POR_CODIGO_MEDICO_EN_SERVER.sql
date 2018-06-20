/* CONSULTAR LA ACTIVIDAD Y DETALLE, PARA VER SI GRABO */
DECLARE @lccodigo VARCHAR(13) = '084310'
DECLARE @ln_mes int = 6
declare @lnanio int = 2017

/* AÑADIR SERVIDOR VINCULADO */

select ID_ACTIVIDAD_DET, A.ID_ACTIVIDAD, B.NOMBRE, B.ABREVIATURA, CODIGO, DIA, MES, ANIO, ESTADO, TURNO, HORAS  
from [SQLPRODUCCION].BDPERSONAL.DBO.ACTIVIDAD_DETALLE A LEFT JOIN [SQLPRODUCCION].BDPERSONAL.DBO.ACTIVIDADES B ON A.ID_ACTIVIDAD = B.ID_ACTIVIDAD
WHERE A.codigo = @lccodigo and MES = @ln_mes and anio = @lnanio ORDER BY DIA ASC


/*
DELETE FROM [SQLPRODUCCION].BDPERSONAL.DBO.ACTIVIDAD_DETALLE WHERE ID_ACTIVIDAD_DET = 44091
*/


/* CALDERON ARELLANO */
use BDPERSONAL
DECLARE @lccodigo_ver VARCHAR(13) = '084310'
DECLARE @ln_mes_ver int = 6
declare @lnanio_ver int = 2017
declare @lndia_ver int = 1
declare @lc_tipo_medico VARCHAR(1) = '2'

SELECT	ID_ACTIVIDAD, NOMBRE, case dbo.FN_SELECTED_ACTIVIDAD (@lccodigo_ver, @lndia_ver, @ln_mes_ver, @lnanio_ver, ID_ACTIVIDAD)  
  	when 'sele' then 'checked' else ' ' end SEL, dbo.FN_ACTIVIDAD_DETALLE2 (@lccodigo_ver, @lndia_ver, @ln_mes_ver, @lnanio_ver, ID_ACTIVIDAD) AS TURNO, 
  	  	dbo.FN_ACTIVIDAD_DETALLE3 (@lccodigo_ver, @lndia_ver, @ln_mes_ver, @lnanio_ver, ID_ACTIVIDAD) AS HORAS, 
 	  	case dbo.FN_SELECTED_ACTIVIDAD (@lccodigo_ver, @lndia_ver, @ln_mes_ver, @lnanio_ver, ID_ACTIVIDAD)   when 'sele' then ' ' else '' end VER, 
 	  	CASE dbo.FN_ACTIVIDAD_DETALLE2 (@lccodigo_ver, @lndia_ver, @ln_mes_ver, @lnanio_ver, ID_ACTIVIDAD)   WHEN 'M' then 1 when 'T' then 2 when 'MT' then 3 when 'N' then 4 when 'TN' then 5 when 'TD' then 6 when 'MN' then 7 when 'DN' then 8 else 0 end TURNO, 
 	  			ABREVIATURA  FROM  ACTIVIDADES	WHERE 	ACTIVO = @lc_tipo_medico order by NOMBRE asc
