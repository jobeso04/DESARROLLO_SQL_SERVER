/* Para Desbloquear Paciente en Citas
   Por lo general esto ocurre cuando el paicente falto a una cita programada
   

Pasos :

1. Identificar el ID del Paciente con nombre e historia
2. Se encontrara fecha anterior
3. Admision realiza la "Fuga"
4. Poner el estado a 5

Instrucciones:

1. Identificar al paciente, ejemplo : 'PIPA MAGIPO' 
   select * from [SIGSALUD].[dbo].[cita] where PACIENTE = '2014242139'
   
2. Cambiar el estado a 5:
   UPDATE [SIGSALUD].[dbo].[cita] SET ESTADO = '5' WHERE CITA_ID = '140134529' 
   
3. En algunos casos se tiene que actualizar la fecha a fecha actual

   UPDATE [SIGSALUD].[dbo].[cita] SET FECHA_PAGO = convert(datetime, '2015-07-03', 102) WHERE  CITA_ID = '140134529' */
 