/* buscar diagnostico en hospitalizacion */

declare @lcpaciente varchar(50) = '2008077208'  
declare @lcmedico varchar(3) = 'RCB'
select dx_des from V_ATENCIOND where PACIENTE = @lcpaciente and medico = @lcmedico  and   FECHA between convert(datetime, '2016-06-21', 101) 


select * from [SIGSALUD].[dbo].[TMP_ATM_PACIENTES]







select  RESPONSABLE1, expr4, expr5, Expr9, RESPONSABLE3, Expr15 from V_HOSPITALIZACION where PACIENTE = @lcpaciente  and FECHA3 between convert(datetime, '2016-01-01', 101) and convert(datetime, '2016-11-30', 101) 

select * from [SIGSALUD].[dbo].[TMP_ATM_PACIENTES] where TIPO_CONSULTORIO = 'H' and PACIENTE = @lcpaciente order by fecha desc
select * from V_HOSPITALIZACION where PACIENTE = @lcpaciente  and FECHA3 between convert(datetime, '2016-01-01', 101) and convert(datetime, '2016-11-30', 101) 

select  RESPONSABLE1, expr4, expr5, Expr9, RESPONSABLE3, Expr15 from V_HOSPITALIZACION where PACIENTE = @lcpaciente  and FECHA3 between convert(datetime, '2016-01-01', 101) and convert(datetime, '2016-11-30', 101) 


select * from v_ATENCIOND


