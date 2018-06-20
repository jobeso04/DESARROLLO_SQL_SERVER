/* UPDATE ASISTENCIA  SET FALTA=0,OBSERVACION='.' where año = '2015' and mes = '6' */

/* select * from ASISTENCIA where año = '2015' and mes = '6' */

SELECT * from V_ASISTENCIA where año = '2015' and mes = '6' AND COD_SITUA IN ('03','04','05') AND SITUACION NOT IN ('D','I','V') AND CODACT NOT IN ('D','V','L','DM')
   AND SUBSTRING (CODACT,1,1)<>'G' order by nombre,dia
   
   
   
     ' xfecha = rsAsiste.Fields(8) & "/" & Val(DataCombo2.BoundText) & "/" & DataCombo1.BoundText'
       ' xfecha = dia + '/' + '06' + '2015'
       ' xcodact = codact
       ' HI = horai (hora de ingreso)
       ' xdni = DNI_relog
       
       
       Select  MIN(HORA) as horamin from RELOGDIGI where Codigo=xdni and Fecha='01/06/2015' and Hora < 'hi'
       
       if horamin es nulo
           Select  MIN(HORA) nhoramin from RELOGDIGI where Codigo=xdni and Fecha='01/06/2015' and Hora > 'hi'
            If nhoramin es null 
               XMARCAI = Null
               XFALTA = 1
               XOBS = "Falta: No Marco Ing,"
            Else
                If DateDiff("n", Format(HI, "hh:mm"), Format(rsRelog.Fields(0), "hh:mm")) <= 30  Then
                   XMARCAI = nhoramin
                   XFALTA = 0
                Else
                   XMARCAI = Null
                   XFALTA = 1
                   XOBS = "Falta: Marco a: " & Format(nhoramin, "hh:mm")
                End If
            End If
        else
           XMARCAI = horamin
       End If

  If IsNull(XMARCAI) = True Then
        UPDATE ASISTENCIA SET HORAI_REG='xmarcai',FALTA ='xfalta',OBSERVACION ='XOBS' where CODIGO= 'codigo' and año = "2015" and mes = "06"  and dia = dia
    End If     
    
    
    
     Select  * from RELOGDIGI      
     
     
     DateDiff("n", Format(HI, "hh:mm"), Format(rsRelog.Fields(0), "hh:mm")) <= 30
     
      Fecha=convert(datetime, ?xfecha, 120)  and convert(time, Hora) > ?HI
      
select DateDiff(minute, ?HI, convert(time, ?Hora)) 


SELECT DATEDIFF(minute, getdate(), getdate()+0.1)

select GETDATE(), GETDATE() + 0.09, DATEDIFF(minute, getdate(), getdate()+0.09)


 SELECT * from V_ASISTENCIA where año = '2015' and mes = '6' AND COD_SITUA IN ('03','04','05') AND SITUACION NOT IN ('D','I','V') AND CODACT NOT IN ('D','V','L','DM')
   AND SUBSTRING (CODACT,1,1)<>'G' order by nombre,dia


 Select  MIN(HORA) as horamin2 from RELOGDIGI where Codigo=?xdni and Fecha=convert(datetime, ?xfecha, 120)  and convert(time, Hora) > ?HI