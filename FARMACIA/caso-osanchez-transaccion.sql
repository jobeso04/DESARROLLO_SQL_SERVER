
/* REVISAR  TRANSACCION */
DECLARE @lc_transaccion varchar(13) = '18000031'
select * from [SIGSALUD].[dbo].[INGRESOC] where INGRESOID = @lc_transaccion
select * from [SIGSALUD].[dbo].[INGRESOD] where INGRESOID = @lc_transaccion



/* ELIMINAR TRANSACCION  */
DECLARE @lc_transaccion varchar(13) = '18000031'
DELETE FROM [SIGSALUD].[dbo].[INGRESOD] where INGRESOID = @lc_transaccion
DELETE FROM [SIGSALUD].[dbo].[INGRESOC] where INGRESOID = @lc_transaccion





delete from INGRESOd where INGRESOID = '17000235'
delete from INGRESOc where INGRESOID = '17000235'


170598    
170769    




select * from TRANSFERENCIAC where TRANSFERENCIAID = '17000365'
select * from TRANSFERENCIAd where TRANSFERENCIAID = '17000365'



delete from TRANSFERENCIAd where TRANSFERENCIAID = '17000365'
delete from TRANSFERENCIAc where TRANSFERENCIAID = '17000365'
