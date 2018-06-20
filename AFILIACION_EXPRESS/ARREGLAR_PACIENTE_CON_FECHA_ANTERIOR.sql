DECLARE @lfecharevisa varchar(10) = '20150928'

select EMERGENCIA_ID, ESTADO, fecha, hora, orden, paciente, historia, nombres, fecha_nacimiento, DISTRITO, DOCUMENTO, PATERNO, MATERNO, NOMBRE, SEXO, EDAD
        from v_emergencia where fecha = @lfecharevisa order by FECHA, HORA desc
        
SELECT PACIENTE, HISTORIA, PATERNO, MATERNO, NOMBRE, NOMBRES, SEXO, FECHA_APERTURA, HORA_APERTURA, EDAD, DOCUMENTO, CONSULTORIO, FECHA_NACIMIENTO
   FROM V_PACIENTE_EXPRESS
   
   
select * from PACIENTE order by FECHA_APERTURA DESC   

select * from PACIENTE where paciente in ('2008113068', '2008019005', '2008076897', '2008128830', '2008139513', '2008065912')

update PACIENTE set FECHA_APERTURA = '19000101' where paciente in ('2008113068', '2008019005', '2008076897', '2008128830', '2008139513', '2008065912')

        
