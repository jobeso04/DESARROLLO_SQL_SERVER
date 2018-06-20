use BDPERSONAL

select * from v_ASISTENCIA where situacion is null


SELECT DNI, dni_relog from V_ASISTENCIA where DNI_relog is null 


SELECT DNI, dni_relog, NOMBRE  from V_ASISTENCIA where CODACT<>'D' AND CODACT<>'V' AND CODACT<>'DM' AND CODACT<>'L' AND mes = '11' and año = '2017' and dia = '14'
and DNI_relog is null 


SELECT * from V_ASISTENCIA where CODACT<>'D' AND CODACT<>'V' AND CODACT<>'DM' AND CODACT<>'L' AND mes = '11' and año = '2017'
and dia = '14' AND COD_SITUA IN ('01') AND HORAI<= '" & Format(Time, "hh:mm") & "'" & " AND SITUACION NOT IN ('D','I')  ORDER BY CODIGO,DIA



SELECT * from V_ASISTENCIA where CODACT<>'D' AND CODACT<>'V' AND CODACT<>'DM' AND CODACT<>'L' AND mes = '11' and año = '2017'
and dia = '14' AND COD_SITUA IN ('01') AND  SITUACION NOT IN ('D','I')  ORDER BY CODIGO,DIA




SELECT * from V_ASISTENCIA where CODACT<>'D' AND CODACT<>'V' AND CODACT<>'DM' AND CODACT<>'L' AND mes = " & xmes1 & " and año = " & xaño1 & " and dia = " & Day(getFecha1.Value) & " AND COD_SITUA IN (" & xsitua & ") AND HORAI<= '" & Format(Time, "hh:mm") & "'" & " AND SITUACION NOT IN ('D','I')  ORDER BY CODIGO,DIA"