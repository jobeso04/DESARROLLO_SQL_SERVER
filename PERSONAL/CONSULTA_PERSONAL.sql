

SELECT TOP 5000 [CODHOR]
      ,[CODIGO]
      ,[NOMBRE]
      ,[HORING]
      ,[HORSAL]
      ,[Tipo]
      ,[DesTT]
      ,[CODTUR1]
      ,[HORING1]
      ,[HORSAL1]
      ,[TURNO]
      ,[Lunes]
      ,[Martes]
      ,[Mi�rcoles]
      ,[Jueves]
      ,[Viernes]
      ,[S�bado]
      ,[Domingo]
  FROM [BDPERSONAL].[dbo].[C_HORARIO]

  Select  * from c_horario  
  
  Select  HORING1 from c_horario where codhor = 'N3'
  
  
  UPDATE ASISTENCIA  SET PRODUCTIVA=0,OBSERVACION='.' where a�o = '2015' and mes = '6'  

select *   from ASISTENCIA where a�o = '2015' and mes = '6'  
SELECT * from V_ASISTENCIA where CODACT like '%G%' AND a�o = '2015' and mes = '6' order by nombre,dia
  
 
  /**/
  select codact from V_ASISTENCIA where Left(codact, 1) = 'T' Or Left(codact, 1) = 'M'
  
  /**/
  
  Select  HORING1 from c_horario where codhor IN (select codact from V_ASISTENCIA where Left(codact, 1) = 'T' Or Left(codact, 1) = 'M' AND a�o = '2015' and mes = '4')
  
  
  Select * from c_horario