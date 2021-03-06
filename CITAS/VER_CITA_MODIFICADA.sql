/****** Script para el comando SelectTopNRows de SSMS  ******/
SELECT *  FROM [SIGSALUD].[dbo].[CONSULTORIO_PARAMETRO]

  ALTER TABLE   [SIGSALUD].[dbo].[CONSULTORIO_PARAMETRO] ADD REVISAR_CONSULTORIO VARCHAR(1)
  UPDATE [SIGSALUD].[dbo].[CONSULTORIO_PARAMETRO] SET NO_MOSTRAR_HORA_NUMERO = NULL  WHERE CONSULTORIO IN ('2021', '1013', '1024', '1016', '1021', '1019')
  UPDATE [SIGSALUD].[dbo].[CONSULTORIO_PARAMETRO] SET NO_MOSTRAR_HORA_NUMERO = 13 WHERE CONSULTORIO IN ('2022', '2029')
  
  USE SIGSALUD
  Select * from consultorio_parametro where consultorio='2022' and  turno_consulta = 'M' and print_hora='1' AND REVISAR_CONSULTORIO = 'R' AND 
  
  Select * from consultorio_parametro where consultorio='2021' and  turno_consulta = 'M' and print_hora='1' AND REVISAR_CONSULTORIO = 'N'
  
  UPDATE  consultorio_parametro SET REVISAR_CONSULTORIO = 'R'  Where CONSULTORIO IN ('2022', '2029') and  turno_consulta = 'M' 
  UPDATE  consultorio_parametro SET REVISAR_CONSULTORIO = 'N'  where CONSULTORIO NOT IN ('2022', '2029') and  turno_consulta = 'T' 
    
    
  declare @lcnumero varchar= 12
  Select Case @lcnumero 
            Case @lcnumero is null 
                select 'ok'
                 
            Case @lcnumero > 12
                 select 'no imprimir'
            
    End Select
    
    
  
  
  SELECT * FROM ITEM  WHERE NOMBRE LIKE '%GUANTE%'

DECLARE @NUMATENCION VARCHAR(2) = '13'  
  Select * from consultorio_parametro where consultorio='2022' and  
  turno_consulta = 'M' and print_hora='1' AND REVISAR_CONSULTORIO = 'R' AND NO_MOSTRAR_HORA_NUMERO > @NUMATENCION
