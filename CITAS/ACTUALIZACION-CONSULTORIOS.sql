

select * from [SIGSALUD].[dbo].[ATENCIONC]
where MONTH(fecha) = 12 and year(fecha) = 2017 and MEDICO = 'ROS' AND CONSULTORIO IN ('5030')


UPDATE [SIGSALUD].[dbo].[ATENCIONC] SET CONSULTORIO = '4092'
where MONTH(fecha) = 12 and year(fecha) = 2017 and MEDICO = 'MLR' AND CONSULTORIO IN ('5030')

UPDATE [SIGSALUD].[dbo].[ATENCIONC] SET CONSULTORIO = '4092'
where MONTH(fecha) = 12 and year(fecha) = 2017 and MEDICO = 'IDP' AND CONSULTORIO IN ('5030')

UPDATE [SIGSALUD].[dbo].[ATENCIONC] SET CONSULTORIO = '4092'
where MONTH(fecha) = 12 and year(fecha) = 2017 and MEDICO = 'ROS' AND CONSULTORIO IN ('5030')


 