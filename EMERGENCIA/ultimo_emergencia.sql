DECLARE @lfechaactual datetime = CONVERT(char(10), getdate(), 112) 
DECLARE @lfechaactual2 datetime = CONVERT(char(10), getdate()-2, 112) 


select EMERGENCIA_ID, ESTADO, fecha, hora, orden, paciente, nombres, fecha_nacimiento, DISTRITO, DOCUMENTO, PATERNO, MATERNO, NOMBRE
   from v_emergencia where fecha between @lfechaactual2 and @lfechaactual order by FECHA, HORA desc