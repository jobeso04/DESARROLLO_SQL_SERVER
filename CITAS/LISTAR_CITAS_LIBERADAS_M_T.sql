       declare @lfecha1 datetime = convert(datetime, '2015-10-26', 101)
       declare @lfecha2 datetime = convert(datetime, '2015-10-26', 101)
       
         /* select T1.CITA_ID, T1.FECHA, T1.PACIENTE, T1.NOMBRE, T2.SEGURO,  T2.NOMBRE as NOMSEGURO, T1.HORA_OTORGA, T1.TURNO_CONSULTA, T1.NOMBRE_CONSULTORIO
        FROM [SIGSALUD].[dbo].[TMP_CITASLIBERADAS] AS T1 INNER JOIN [SIGSALUD].[dbo].[SEGURO] AS T2 ON RTRIM(T1.SEGURO) = RTRIM(T2.SEGURO)
          WHERE T1.FECHA between  @lfecha1 and @lfecha2 ORDER BY T1.TURNO_CONSULTA, T1.FECHA, T1.HORA_OTORGA ASC */
          
       
         select * FROM [SIGSALUD].[dbo].[TMP_CITASLIBERADAS]  WHERE FECHA between  @lfecha1 and @lfecha2 ORDER BY FECHA,TURNO_CONSULTA, HORA_OTORGA ASC
       
       /* select nombre_consultorio, count(nombre_consultorio) as cuenta FROM [SIGSALUD].[dbo].[TMP_CITASLIBERADAS] where FECHA between  @lfecha1 and @lfecha2 AND turno_consulta = 'M' group by nombre_consultorio
       union all
       select ' ------------------------------------ ' AS nombre_consultorio, '-' as cuenta 
       union all
       select ' TURNO TARDE ' AS nombre_consultorio, '-' as cuenta 
       union all    
       select ' ------------------------------------ ' AS nombre_consultorio, '-' as cuenta 
       union all
       select nombre_consultorio, count(nombre_consultorio) as cuenta FROM [SIGSALUD].[dbo].[TMP_CITASLIBERADAS] where FECHA between  @lfecha1 and @lfecha2 AND turno_consulta = 'T' group by nombre_consultorio
*/