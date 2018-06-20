
declare @csexo varchar(1) = 'M'


select case when @csexo = 'M'  then '55555555.jpg' else '44444444.jpg' end as foto


select * from USUARIO_WEB  order by fecha_registro desc

select * from USUARIO_WEB  where DNI = '12345678'

SELECT * FROM USUARIO_WEB 
alter table usuario_web add FECHA_REGISTRO DATETIME
UPDATE usuario_web SET FECHA_REGISTRO = GETDATE()

