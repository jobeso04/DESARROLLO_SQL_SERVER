use sigsalud

declare @lchistoria_destino varchar(13) = '0093071'
declare @lid_emergencia varchar(15) = '17003115'
update [SIGSALUD].[dbo].[EMERGENCIA] set
 PACIENTE = (select PACIENTE from paciente where HISTORIA = @lchistoria_destino),
 HISTORIA = (select HISTORIA from paciente where HISTORIA = @lchistoria_destino), 
 PATERNO = (select PATERNO from paciente where HISTORIA = @lchistoria_destino),
 MATERNO = (select MATERNO from paciente where HISTORIA = @lchistoria_destino),
 NOMBRE = (select nombre from paciente where HISTORIA = @lchistoria_destino),
 NOMBRES = (select nombres from paciente where HISTORIA = @lchistoria_destino)  where EMERGENCIA_ID = @lid_emergencia


select * from [SIGSALUD].[dbo].[PACIENTE] WHERE PACIENTE = '2010187705'
select * from [SIGSALUD].[dbo].[EMERGENCIA] WHERE PACIENTE = '2010187705'

DECLARE @lid_paciente varchar(13) = '2010187705'
select historia, paterno, materno, nombre, nombres, fecha_nacimiento, EDAD, SEXO, ESTADO_CIVIL, DIRECCION, DISTRITO  from [SIGSALUD].[dbo].[paciente] WHERE PACIENTE = @lid_paciente

update EMERGENCIA set PATERNO, MATERNO, NOMBRE, NOMBRES, FECHA_NACIMIENTO, EDAD,  

select FECHA, historia, paterno, materno, nombre, nombres, fecha_nacimiento, EDAD, SEXO, ESTADO_CIVIL, DIRECCION, DISTRITO 
from [SIGSALUD].[dbo].[EMERGENCIA] WHERE PACIENTE = @lid_paciente




select [dbo].[FN_CALCULAR_EDAD]('04/01/1970')

?Diferencia_AMD(DATE(1950,3,1), CTOD('15/02/2018'))

FUNCTION Diferencia_AMD(tdIni, tdFin)
  LOCAL ldAux, lnAnio, lnMes, lnDia, lcRet
  *--- Fecha inicial siempre menor
  IF tdIni > tdFin
    ldAux = tdIni
    tdIni = tdFin
    tdFin = ldAux
  ENDIF
  lnAnio = YEAR(tdFin) - YEAR(tdIni)
  ldAux = GOMONTH(tdIni, 12 * lnAnio)
  *--- No cumplio el año aun
  IF ldAux > tdFin
    lnAnio = lnAnio - 1
  ENDIF
  lnMes = MONTH(tdFin) - MONTH(tdIni)
  IF lnMes < 0
    lnMes = lnMes + 12
  ENDIF
  lnDia = DAY(tdFin) - DAY(tdIni)
  IF lnDia < 0
    lnDia = lnDia + DiasDelMes(tdIni)
  ENDIF
  *--- Si el dia es mayor, no cumplio el mes
  IF (DAY(tdFin) < DAY(tdIni))
    IF lnMes = 0
      lnMes = 11
    ELSE
      lnMes = lnMes - 1
    ENDIF
  ENDIF
  lcRet = ALLTRIM(STR(lnAnio))+ "a" + PADL(ALLTRIM(STR(lnMes)), 2,'0')+ "m" +PADL(ALLTRIM(STR(lnDia)),2,'0')+ "d"
  RETURN lcRet
ENDFUNC 


FUNCTION DiasDelMes(tdFecha)
  LOCAL ld
  ld = GOMONTH(tdFecha,1)
  RETURN DAY(ld - DAY(ld))
ENDFUNC 