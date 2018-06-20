select * from [SIGSALUD].[dbo].[ORDENC] where ORDENID = '1717125287'
select * from [SIGSALUD].[dbo].[ORDEND] where ORDENID = '1717125287'


select * from [SIGSALUD].[dbo].[ORDEND] where ORDENID = '1717125287' AND ITEM = '170679'
select * from [SIGSALUD].[dbo].[ORDEND] where ORDENID = '1717125287' AND ITEM = '171208'



delete from [SIGSALUD].[dbo].[ORDEND] where ORDENID = '1717125287' AND ITEM = '170679'
delete from [SIGSALUD].[dbo].[ORDEND] where ORDENID = '1717125287' AND ITEM = '171208'
DECLARE @lc_proforma varchar(13) = '1717125287'
declare @ln_importe numeric(18,3) = (select SUM(IMPORTE) from [SIGSALUD].[dbo].[ORDEND] where ORDENID = @lc_proforma)
UPDATE [SIGSALUD].[dbo].[ORDENC] set subtotal =  @ln_importe, TOTAL = @ln_importe where ORDENID = @lc_proforma
select * from [SIGSALUD].[dbo].[ORDENC] where ORDENID = @lc_proforma


select SUM(IMPORTE) from [SIGSALUD].[dbo].[ORDEND] where ORDENID = '1717125287' 

