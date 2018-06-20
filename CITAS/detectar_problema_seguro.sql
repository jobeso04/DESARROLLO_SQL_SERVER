use SIGSALUD
select * from ATENCION_SEGURO where NUMATENCION = '2101625225134'

select * from v_ATENCION_SEGURO where atencion_seguro_id = '17039181'

SELECT     TOP (100) PERCENT dbo.ATENCION_SEGURO.ESTADO, dbo.ATENCION_SEGURO.ATENCION_SEGURO_ID, dbo.PACIENTE.HISTORIA, 
                      dbo.ATENCION_SEGURO.NOMBRES, dbo.PACIENTE.DOCUMENTO, dbo.SEGURO.NOMBRE AS SEGURO, dbo.ATENCION_SEGURO.FECHA_ATENCION, 
                      dbo.ATENCION_SEGURO.HORA_ATENCION AS HORA_ATEN, dbo.ENTIDADSIS.NOMBRE AS ENTIDAD, dbo.ATENCION_SEGURO.CODIGO_AFILIACION AS AFILIACION, 
                      dbo.ATENCION_SEGURO.TIPO_ATENCION_SEG AS TIPO_ATEN, dbo.PACIENTE.FECHA_NACIMIENTO AS FECHA_NAC, dbo.PACIENTE.SEXO, 
                      dbo.ATENCION_SEGURO.PACIENTE, dbo.ATENCION_SEGURO.TIPO_AFILIACION_SEG AS TIPO_AFIL, dbo.CONSULTORIO.NOMBRE AS CONSULTORIO, 
                      dbo.ATENCION_SEGURO.NUMATENCION AS NRO_ATENCION, dbo.SEGURO.SEGURO AS CODSEGURO, dbo.PACIENTE.PATERNO, dbo.PACIENTE.MATERNO, 
                      dbo.PACIENTE.NOMBRE, dbo.ATENCION_SEGURO.TIPO_GESTANTE, dbo.ATENCION_SEGURO.FECHA_PARTO, dbo.ATENCION_SEGURO.TIPO_PRESTACION, 
                      dbo.ATENCION_SEGURO.NUMREFERENCIA, dbo.ATENCION_SEGURO.PRESTA, dbo.ATENCION_SEGURO.NUMAUTORIZA, dbo.ATENCION_SEGURO.MONTO, 
                      dbo.ATENCION_SEGURO.MEDICO AS CodMedico, dbo.MEDICO.NOMBRE AS MEDICO, dbo.MEDICO.ESPECIALIDAD AS CodEspecialidad, 
                      dbo.ESPECIALIDAD.NOMBRE AS Especialidad_Medico, dbo.ATENCION_SEGURO.DESTINO AS Cod_Destino, dbo.DESTINOSIS.Nombre AS DESTINO, 
                      dbo.ATENCION_SEGURO.DX1 AS Cie_1, dbo.CIEX.NOMBRE AS Dx_1, dbo.ATENCION_SEGURO.TDX1, dbo.ATENCION_SEGURO.DX2 AS Cie_2, 
                      CIEX_1.NOMBRE AS Dx_2, dbo.ATENCION_SEGURO.TDX2, dbo.ATENCION_SEGURO.DX3 AS Cie_3, CIEX_2.NOMBRE AS Dx_3, dbo.ATENCION_SEGURO.TDX3, 
                      dbo.ATENCION_SEGURO.DX4 AS Cie_4, CIEX_3.NOMBRE AS Dx_4, dbo.ATENCION_SEGURO.TDX4, dbo.ATENCION_SEGURO.DX5 AS Cie_5, 
                      CIEX_4.NOMBRE AS Dx_5, dbo.ATENCION_SEGURO.TDX5, dbo.ATENCION_SEGURO.OBSERVA, dbo.ATENCION_SEGURO.FECHA_FINAL, 
                      dbo.ATENCION_SEGURO.Edad, dbo.ATENCION_SEGURO.ORIGEN, dbo.ATENCION_SEGURO.ENTIDADSIS AS CODIGO, dbo.ATENCION_SEGURO.USUARIO, 
                      dbo.ATENCION_SEGURO.CITA_ID
FROM         dbo.ATENCION_SEGURO LEFT OUTER JOIN
                      dbo.PACIENTE ON dbo.ATENCION_SEGURO.PACIENTE = dbo.PACIENTE.PACIENTE INNER JOIN
                      dbo.SEGURO ON dbo.ATENCION_SEGURO.SEGURO = dbo.SEGURO.SEGURO INNER JOIN
                      dbo.CONSULTORIO ON dbo.ATENCION_SEGURO.CONSULTORIO = dbo.CONSULTORIO.CONSULTORIO INNER JOIN
                      dbo.TIPO_GESTANTE ON dbo.ATENCION_SEGURO.TIPO_GESTANTE = dbo.TIPO_GESTANTE.TIPO_GESTANTE INNER JOIN
                      dbo.MEDICO ON dbo.ATENCION_SEGURO.MEDICO = dbo.MEDICO.MEDICO INNER JOIN
                      dbo.DESTINOSIS ON dbo.ATENCION_SEGURO.DESTINO = dbo.DESTINOSIS.Destino INNER JOIN
                      dbo.CIEX ON dbo.ATENCION_SEGURO.DX1 = dbo.CIEX.CIEX INNER JOIN
                      dbo.CIEX AS CIEX_1 ON dbo.ATENCION_SEGURO.DX2 = CIEX_1.CIEX INNER JOIN
                      dbo.CIEX AS CIEX_2 ON dbo.ATENCION_SEGURO.DX3 = CIEX_2.CIEX INNER JOIN
                      dbo.CIEX AS CIEX_3 ON dbo.ATENCION_SEGURO.DX4 = CIEX_3.CIEX INNER JOIN
                      dbo.CIEX AS CIEX_4 ON dbo.ATENCION_SEGURO.DX5 = CIEX_4.CIEX INNER JOIN
                      dbo.ESPECIALIDAD ON dbo.MEDICO.ESPECIALIDAD = dbo.ESPECIALIDAD.ESPECIALIDAD INNER JOIN
                      dbo.ENTIDADSIS ON dbo.ATENCION_SEGURO.ENTIDADSIS = dbo.ENTIDADSIS.ENTIDADSIS
ORDER BY dbo.ATENCION_SEGURO.ATENCION_SEGURO_ID

select * from PACIENTE where PACIENTE = '2016266893'

select * from CONSULTORIO where CONSULTORIO = '3050'

select * from TIPO_GESTANTE

select * from ESPECIALIDAD 

select * from ENTIDADSIS where ENTIDADSIS = '10157'


use SIGSALUD
select * from ATENCION_SEGURO where NUMATENCION = '2101625225134'

update ATENCION_SEGURO set entidadsis = '10157' where NUMATENCION = '2101625225134'

