select * from ATENCION_SEGURO order by NUMATENCION desc

2101625201462
0058169           



USE SIGSALUD
declare @lcnombre varchar(200) = 'flores pajue'
SELECT ATENCION_SEGURO_ID, NUMATENCION, HISTORIA, NOMBRES, convert(varchar(10), FECHA_ATENCION,103) as FECHA_ATENCION,  HORA_ATENCION, estado, usuario, USER_ELIMINACION, FECHA_HORA_ELIMINACION
 FROM ATENCION_SEGURO where nombres like '%' + @lcnombre + '%' ORDER BY fecha_atencion + cast(rtrim(HORA_ATENCION) + ':00' as datetime) desc


                                                                        

select fecha_atencion + cast(HORA_ATENCION + '00'  as datetime) as fecha_total FROM ATENCION_SEGURO

select  cast(HORA_ATENCION + '00' as datetime) as hora_final FROM ATENCION_SEGURO

select  fecha_atencion + cast(rtrim(HORA_ATENCION) + ':00' as datetime) FROM ATENCION_SEGURO



select ATENCION_SEGURO_ID, fecha_atencion, convert(varchar(10), FECHA_ATENCION,103), NUMATENCION, HISTORIA, NOMBRES, HORA_ATENCION, estado FROM ATENCION_SEGURO order by fecha_atencion desc

select * FROM ATENCION_SEGURO order by fecha_atencion desc

select * FROM ATENCION_SEGURO where historia = '0062951' order by fecha_atencion desc


                                                                        
sele                                                                        