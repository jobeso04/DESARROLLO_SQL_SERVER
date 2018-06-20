
declare @lcconsultorio varchar(6) = '2021'
declare @lnmes int = 1
declare @lnanio int = 2018
declare @lcperiodo varchar(6) = convert(varchar(4), @lnanio) + RIGHT('00' + Ltrim(Rtrim(convert(varchar(2), @lnmes))),2)
declare @lc_servicio varchar(2) = (SELECT TOP 1 SERVICIO FROM [SIGSALUD].[dbo].[ROLACTIVIDAD]  WHERE CONSULTORIO = @lcconsultorio)
SELECT  PERIODO, SERVICIO FROM [SIGSALUD].[dbo].[ROLACTIVIDADC] WHERE PERIODO = @lcperiodo AND  SERVICIO  = @lc_servicio
UNION ALL
SELECT  PERIODO, CONSULTORIO AS SERVICIO FROM [SIGSALUD].[dbo].[ROLACTIVIDAD] WHERE PERIODO = @lcperiodo AND  CONSULTORIO = @lcconsultorio 

