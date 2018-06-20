use SIGSALUD
select * from EMERGENCIA order by EMERGENCIA_ID desc

select * from atencionc  order by ID_CITA  desc

declare @lid_cita varchar(13) = '2018035906'
delete from ATENCIOND where ID_CITA = @lid_cita
delete from ATENCIONc where ID_CITA = @lid_cita

select CONVERT(datetime, '2018-01-05', 103)
select CONVERT(datetime, '2018-01-05', 101)

update ATENCIONC set FECHA = CONVERT(datetime, '2018-01-06', 101) where ID_CITA = '2018035905'
update ATENCIONC set FECHA = CONVERT(datetime, '2018-01-05', 101) where ID_CITA = '2018035907'


delete from EMERGENCIA where EMERGENCIA_ID IN ('18001130', '18001131')

