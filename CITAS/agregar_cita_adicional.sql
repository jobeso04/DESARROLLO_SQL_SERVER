INSERT INTO [SIGSALUD].[dbo].[ROLACTIVIDAD]
           ([PERIODO]
           ,[SERVICIO]
           ,[CONSULTORIO]
           ,[TURNO_CONSULTA]
           ,[D01]
           ,[D02]
           ,[D03]
           ,[D04]
           ,[D05]
           ,[D06]
           ,[D07]
           ,[D08]
           ,[D09]
           ,[D10]
           ,[D11]
           ,[D12]
           ,[D13]
           ,[D14]
           ,[D15]
           ,[D16]
           ,[D17]
           ,[D18]
           ,[D19]
           ,[D20]
           ,[D21]
           ,[D22]
           ,[D23]
           ,[D24]
           ,[D25]
           ,[D26]
           ,[D27]
           ,[D28]
           ,[D29]
           ,[D30]
           ,[D31])
SELECT [PERIODO]
      ,[SERVICIO]
      , '4045' as[CONSULTORIO]
      ,[TURNO_CONSULTA]
      ,'' as [D01]
      ,'' as [D02]
      ,'' as [D03]
      ,'' as [D04]
      ,'' as [D05]
      ,'' as [D06]
      ,'' as [D07]
      ,'' as [D08]
      ,'' as [D09]
      ,'' as [D10]
      ,'' as [D11]
      ,'' as [D12]
      ,'' as [D13]
      ,'' as [D14]
      ,'' as [D15]
      ,'' as [D16]
      ,'RPE' as [D17]
      ,'' as [D18]
      ,'RPE' as [D19]
      ,'RPE' as [D20]
      ,'RPE' as [D21]
      ,'RPE' as [D22]
      ,'RPE' as [D23]
      ,'RPE' as [D24]
      ,'' as [D25]
      ,'RPE' as [D26]
      ,'RPE' as [D27]
      ,'RPE' as [D28]
      ,'' as [D29]
      ,'' as [D30]
      ,'' as [D31]
  FROM [SIGSALUD].[dbo].[ROLACTIVIDAD] where CONSULTORIO = '4042' and PERIODO = '201706'
