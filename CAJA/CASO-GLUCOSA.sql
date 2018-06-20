use SIGSALUD

select * from CONSULTORIO where nombre like 'medi%'


select * from CONSULTORIO_PARAMETRO where CONSULTORIO = '1034'
union all
select * from CONSULTORIO_PARAMETRO where CONSULTORIO = '1027'

63883     

select * from ITEM where ITEM = '63383'

select * from precio where ITEM = '63383'


select * from ITEM where NOMBRE like 'glucosa%' order by ITEM desc

select * from precio where item in (select item from ITEM where  NOMBRE like 'glucosa%' order by ITEM desc)


use personal
select * from maestro where codigo = '084742'




