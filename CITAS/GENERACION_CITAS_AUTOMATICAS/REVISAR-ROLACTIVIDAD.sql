/* REVISAR REGISTRO EN TABLAS ROLACTRIVIDAD YROLACTIVIDAD C */ 

declare @lcconsultorio varchar(6) = '4092'
declare @lnmes int = 1
declare @lnanio int = 2018
declare @lcperiodo varchar(6) = convert(varchar(4), @lnanio) + RIGHT('00' + Ltrim(Rtrim(convert(varchar(2), @lnmes))),2)
declare @lc_servicio varchar(2) = (SELECT TOP 1 SERVICIO FROM [SIGSALUD].[dbo].[ROLACTIVIDAD]  WHERE CONSULTORIO = @lcconsultorio)

SELECT PERIODO, SERVICIO, OBSERVACION, FECHA_INICIALIZACION, FECHA_CIERRE, ESTADO 
FROM [SIGSALUD].[dbo].[ROLACTIVIDADC] WHERE PERIODO = @lcperiodo AND  SERVICIO  = @lc_servicio
SELECT [PERIODO],[SERVICIO],[CONSULTORIO],CASE WHEN TURNO_CONSULTA = 'M' THEN 'MAÑANA' WHEN TURNO_CONSULTA = 'T' THEN 'TARDE' WHEN TURNO_CONSULTA = 'N' THEN 'NOCHE'
 WHEN TURNO_CONSULTA = 'I' THEN 'INTERMEDIO' END AS TURNO_CONSULTA,[D01],[D02],[D03],[D04],[D05],[D06],[D07],[D08],[D09],[D10],[D11],
    [D12],[D13],[D14],[D15],[D16],[D17],[D18],[D19],[D20],[D21],[D22],[D23],[D24],[D25],[D26],[D27],[D28],[D29],[D30],[D31]
            FROM [SIGSALUD].[dbo].[ROLACTIVIDAD] WHERE PERIODO = @lcperiodo AND  CONSULTORIO = @lcconsultorio ORDER BY TURNO_CONSULTA
  
  
  