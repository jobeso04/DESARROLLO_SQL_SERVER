declare @lcconsultorio varchar(6) = '1013' 
declare @lcmedico varchar(3) = 'MTA'
declare @lnmes int = 12
declare @lnanio int = 2017
declare @lcperiodo varchar(6) = convert(varchar(4), @lnanio) + convert(varchar(2), @lnmes) 
SELECT * FROM  [SIGSALUD].[dbo].[CITA] WHERE CONSULTORIO = @lcconsultorio AND MEDICO = @lcmedico AND YEAR(FECHA) = @lnanio AND MONTH(FECHA) = @lnmes
SELECT * FROM  [SIGSALUD].[dbo].[ROLACTIVIDAD] WHERE PERIODO = @lcperiodo AND  CONSULTORIO = @lcconsultorio AND 
    D01 IN (@lcmedico, '') AND D02 IN (@lcmedico, '')  AND D03 IN (@lcmedico, '') AND D04 IN (@lcmedico, '') AND 
    D05 IN (@lcmedico, '') AND D06 IN (@lcmedico, '')  AND D07 IN (@lcmedico, '') AND D08 IN (@lcmedico, '') AND
    D09 IN (@lcmedico, '') AND D10 IN (@lcmedico, '')  AND D11 IN (@lcmedico, '') AND D12 IN (@lcmedico, '') AND 
    D13 IN (@lcmedico, '') AND D14 IN (@lcmedico, '')  AND D15 IN (@lcmedico, '') AND D16 IN (@lcmedico, '') AND
    D17 IN (@lcmedico, '') AND D18 IN (@lcmedico, '')  AND D19 IN (@lcmedico, '') AND D20 IN (@lcmedico, '') AND 
    D21 IN (@lcmedico, '') AND D22 IN (@lcmedico, '')  AND D23 IN (@lcmedico, '') AND D24 IN (@lcmedico, '') AND
    D25 IN (@lcmedico, '') AND D26 IN (@lcmedico, '')  AND D27 IN (@lcmedico, '') AND D28 IN (@lcmedico, '') AND 
    D29 IN (@lcmedico, '') AND D30 IN (@lcmedico, '')  AND D31 IN (@lcmedico, '') AND TURNO_CONSULTA NOT IN ('I', 'N')
    

/*



SELECT CASE WHEN TURNO_CONSULTA = 'M' THEN 'MAÑANA' WHEN TURNO_CONSULTA = 'T' THEN 'TARDE' WHEN TURNO_CONSULTA = 'N' THEN 'NOCHE'
           WHEN TURNO_CONSULTA = 'I' THEN 'INTERMEDIO' END AS TURNO_CONSULTA           

  FROM [SIGSALUD].[dbo].[ROLACTIVIDAD]
group by [TURNO_CONSULTA]
  

SELECT [PERIODO],[SERVICIO],[CONSULTORIO],CASE WHEN TURNO_CONSULTA = 'M' THEN 'MAÑANA' WHEN TURNO_CONSULTA = 'T' THEN 'TARDE' WHEN TURNO_CONSULTA = 'N' THEN 'NOCHE'
           WHEN TURNO_CONSULTA = 'I' THEN 'INTERMEDIO' END AS TURNO_CONSULTA,[D01],[D02],[D03],[D04],[D05],[D06],[D07],[D08],[D09],[D10],[D11],
   [D12],[D13],[D14],[D15],[D16],[D17],[D18],[D19],[D20],[D21],[D22],[D23],[D24],[D25],[D26],[D27],[D28],[D29],[D30],[D31]
  FROM [SIGSALUD].[dbo].[ROLACTIVIDAD] WHERE PERIODO = @lcperiodo AND  CONSULTORIO = @lcconsultorio AND 
    D01 IN (@lcmedico, '') AND D02 IN (@lcmedico, '')  AND D03 IN (@lcmedico, '') AND D04 IN (@lcmedico, '') AND 
    D05 IN (@lcmedico, '') AND D06 IN (@lcmedico, '')  AND D07 IN (@lcmedico, '') AND D08 IN (@lcmedico, '') AND
    D09 IN (@lcmedico, '') AND D10 IN (@lcmedico, '')  AND D11 IN (@lcmedico, '') AND D12 IN (@lcmedico, '') AND 
    D13 IN (@lcmedico, '') AND D14 IN (@lcmedico, '')  AND D15 IN (@lcmedico, '') AND D16 IN (@lcmedico, '') AND
    D17 IN (@lcmedico, '') AND D18 IN (@lcmedico, '')  AND D19 IN (@lcmedico, '') AND D20 IN (@lcmedico, '') AND 
    D21 IN (@lcmedico, '') AND D22 IN (@lcmedico, '')  AND D23 IN (@lcmedico, '') AND D24 IN (@lcmedico, '') AND
    D25 IN (@lcmedico, '') AND D26 IN (@lcmedico, '')  AND D27 IN (@lcmedico, '') AND D28 IN (@lcmedico, '') AND 
    D29 IN (@lcmedico, '') AND D30 IN (@lcmedico, '')  AND D31 IN (@lcmedico, '') AND TURNO_CONSULTA NOT IN ('I', 'N')
    */

/*




SELECT ESTADO, CITA_ID, FECHA, TURNO_CONSULTA, NOMBRE AS PACIENTE, NOMBRE_MEDICO FROM [SIGSALUD].[dbo].[V_CITA] WHERE CONSULTORIO = @lcconsultorio AND MEDICO = @lcmedico AND
YEAR(FECHA) = @lnanio AND MONTH(FECHA) = @lnmes ORDER BY TURNO_CONSULTA, FECHA


*/




/*
SELECT FECHA, TURNO_CONSULTA, COUNT(TURNO_CONSULTA) AS PACIENTES FROM [SIGSALUD].[dbo].[CITA] WHERE CONSULTORIO = @lcconsultorio AND MEDICO = @lcmedico AND
YEAR(FECHA) = @lnanio AND MONTH(FECHA) = @lnmes GROUP BY FECHA, TURNO_CONSULTA ORDER BY TURNO_CONSULTA, FECHA
*/

/*
SELECT * FROM [SIGSALUD].[dbo].[CITA] WHERE CONSULTORIO = @lcconsultorio AND MEDICO = @lcmedico AND
YEAR(FECHA) = @lnanio AND MONTH(FECHA) = @lnmes ORDER BY TURNO_CONSULTA, FECHA

SELECT [PERIODO],[SERVICIO],[CONSULTORIO],[TURNO_CONSULTA],[D01],[D02],[D03],[D04],[D05],[D06],[D07],[D08],[D09],[D10],[D11],
   [D12],[D13],[D14],[D15],[D16],[D17],[D18],[D19],[D20],[D21],[D22],[D23],[D24],[D25],[D26],[D27],[D28],[D29],[D30],[D31]
  FROM [SIGSALUD].[dbo].[ROLACTIVIDAD]
  WHERE PERIODO = @lcperiodo AND SERVICIO = @lc_servicio AND CONSULTORIO = '1011' AND 
    D01 IN (@lcmedico, '') AND D02 IN (@lcmedico, '')  AND D03 IN (@lcmedico, '') AND D04 IN (@lcmedico, '') AND 
    D05 IN (@lcmedico, '') AND D06 IN (@lcmedico, '')  AND D07 IN (@lcmedico, '') AND D08 IN (@lcmedico, '') AND
    D09 IN (@lcmedico, '') AND D10 IN (@lcmedico, '')  AND D11 IN (@lcmedico, '') AND D12 IN (@lcmedico, '') AND 
    D13 IN (@lcmedico, '') AND D14 IN (@lcmedico, '')  AND D15 IN (@lcmedico, '') AND D16 IN (@lcmedico, '') AND
    D17 IN (@lcmedico, '') AND D18 IN (@lcmedico, '')  AND D19 IN (@lcmedico, '') AND D20 IN (@lcmedico, '') AND 
    D21 IN (@lcmedico, '') AND D22 IN (@lcmedico, '')  AND D23 IN (@lcmedico, '') AND D24 IN (@lcmedico, '') AND
    D25 IN (@lcmedico, '') AND D26 IN (@lcmedico, '')  AND D27 IN (@lcmedico, '') AND D28 IN (@lcmedico, '') AND 
    D29 IN (@lcmedico, '') AND D30 IN (@lcmedico, '')  AND D31 IN (@lcmedico, '') AND TURNO_CONSULTA NOT IN ('I', 'N')
*/    
