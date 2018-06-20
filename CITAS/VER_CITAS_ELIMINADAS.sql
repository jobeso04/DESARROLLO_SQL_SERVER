USE SIGSALUD
declare @lcitaid varchar(13) = '160110104'

select * from CITA where CITA_ID = @lcitaid
select * from V_CITA where CITA_ID = @lcitaid

select * from PAGOC where ORDENID  = @lcitaid
select * from V_PAGOC where ORDENID  = @lcitaid

SELECT * FROM ARCHIVO_MOV WHERE ID_CITA  = @lcitaid
SELECT * FROM V_ARCHIVO_MOV1 WHERE ID_CITA  = @lcitaid
