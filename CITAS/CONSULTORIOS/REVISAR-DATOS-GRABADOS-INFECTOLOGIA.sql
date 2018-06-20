/* REVISAR DATOS DE GRABACION DE CONSULTORIO */
DECLARE @lchistoria VARCHAR(13) = '0177036'
DECLARE @lcfecha datetime = convert(datetime, '2017-09-21', 101)
declare @lcmedico varchar(3) = 'MHT'
declare @lcpaciente varchar(20) = (select  top 1 PACIENTE FROM [SIGSALUD].[dbo].[PACIENTE] WHERE HISTORIA = @lchistoria)

select top 1 * from [SIGSALUD].[dbo].[CITA] where PACIENTE = @lcpaciente order by CITA_ID desc
SELECT * FROM  [SIGSALUD].[dbo].[ATENCIONC] WHERE PACIENTE = @lcpaciente  and medico = @lcmedico and fecha = @lcfecha order by ID_CITA desc
SELECT * FROM [SIGSALUD].[dbo].[V_ATENCIOND]  WHERE ID_CITA in (SELECT id_cita FROM [SIGSALUD].[dbo].[ATENCIONC]  WHERE PACIENTE = @lcpaciente  and medico = @lcmedico and fecha = @lcfecha) 
