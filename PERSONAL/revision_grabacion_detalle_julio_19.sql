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


/* CHUAN VENTURO DANIEL FRANCISCO */
use BDPERSONAL
DECLARE @lccodigo_ver VARCHAR(13) = '084229'
DECLARE @ln_mes_ver int = 7
declare @lnanio_ver int = 2017
declare @lndia_ver int = 3
declare @lc_tipo_medico VARCHAR(1) = '1'

SELECT	ID_ACTIVIDAD, NOMBRE, case dbo.FN_SELECTED_ACTIVIDAD (@lccodigo_ver, @lndia_ver, @ln_mes_ver, @lnanio_ver, ID_ACTIVIDAD)  
  	when 'sele' then 'checked' else ' ' end SEL, dbo.FN_ACTIVIDAD_DETALLE2 (@lccodigo_ver, @lndia_ver, @ln_mes_ver, @lnanio_ver, ID_ACTIVIDAD) AS TURNO, 
  	  	dbo.FN_ACTIVIDAD_DETALLE3 (@lccodigo_ver, @lndia_ver, @ln_mes_ver, @lnanio_ver, ID_ACTIVIDAD) AS HORAS, 
 	  	case dbo.FN_SELECTED_ACTIVIDAD (@lccodigo_ver, @lndia_ver, @ln_mes_ver, @lnanio_ver, ID_ACTIVIDAD)   when 'sele' then ' ' else '' end VER, 
 	  	CASE dbo.FN_ACTIVIDAD_DETALLE2 (@lccodigo_ver, @lndia_ver, @ln_mes_ver, @lnanio_ver, ID_ACTIVIDAD)   WHEN 'M' then 1 when 'T' then 2 when 'MT' then 3 when 'N' then 4 when 'TN' then 5 when 'TD' then 6 when 'MN' then 7 when 'DN' then 8 else 0 end TURNO, 
 	  			ABREVIATURA  FROM  ACTIVIDADES	WHERE 	ACTIVO = @lc_tipo_medico order by NOMBRE asc



/* grabacion de actividad */
select * from ACTIVIDAD_DETALLE 
select * from ACTIVIDADes

INSERT INTO ACTIVIDAD_DETALLE 
VALUES (1, '084229', 2, 8, 2017, '1', 'T', 6)


 VALUES
           (<ID_ACTIVIDAD, int,>
           ,<CODIGO, nvarchar(6),>
           ,<DIA, real,>
           ,<MES, real,>
           ,<ANIO, real,>
           ,<ESTADO, char(1),>
           ,<TURNO, varchar(2),>
           ,<HORAS, numeric(8,0),>)
GO


"+
						"("+s_eme+", '"+s_codigo+"',  "+s_dia+" , "+s_mes+" , "+s_anio+" , '1', '"+eme+"',"+h_eme+") ";
						


