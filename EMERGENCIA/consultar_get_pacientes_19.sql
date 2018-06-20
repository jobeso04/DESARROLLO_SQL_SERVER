
DECLARE @fecha VARCHAR(10) = '25/04/2017'
DECLARE @date_from VARCHAR(10) = CONVERT(VARCHAR(10), DATEADD(DAY, -90, @fecha), 103)
declare @consultorio VARCHAR(10) = 'todos'
declare @paciente VARCHAR(80) = 'garcia'
declare @dni VARCHAR(8) = '07688476'

DECLARE @abreviatura VARCHAR(5)
DECLARE @estado CHAR(1)
DECLARE @medico CHAR(3)
DECLARE @flat_mispacientes INT = 1

/*

select @fecha, @date_from
*/

SELECT T1.emergencia_id, T1.estado, T1.nombres, CONVERT(VARCHAR(10), T1.FECHA, 103) fecha, T1.hora, T1.orden, T2.historia, T1.sexo, T3.nombre seguro,
  SUBSTRING(T4.nombre, 1, CHARINDEX(' ', T4.nombre))  consultorio  FROM EMERGENCIA T1
    LEFT JOIN PACIENTE T2 ON T2.PACIENTE = T1.PACIENTE  LEFT JOIN SEGURO T3 ON T3.SEGURO = T1.SEGURO LEFT JOIN CONSULTORIO T4 ON T4.CONSULTORIO = T1.CONSULTORIO
     WHERE T1.FECHA BETWEEN @date_from AND @fecha  AND T1.CONSULTORIO in ('4050', '4060') and ESTADO = '3' ORDER BY T1.fecha desc
                       

