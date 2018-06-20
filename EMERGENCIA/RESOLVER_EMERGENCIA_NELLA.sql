
declare @lcfecha datetime = convert(date, getdate(), 101)
select EMERGENCIA_ID, NOMBRES, ESTADO, hora_aten, fecha_atencion, fecha_ing, hora_ing, CONDICION_EGRESO, DESTINO
   from [SIGSALUD].[dbo].[EMERGENCIA] where fecha = @lcfecha
   
   

select hora_aten, fecha_atencion, fecha_ing, hora_ing, EMERGENCIA_ID, CONDICION_EGRESO, DESTINO from emergencia where EMERGENCIA_ID = '18007512'


