USE SIGSALUD
declare @lfecha varchar(10) = '2016-02-04'
declare @lturno varchar(1) = 'M'
declare @lmedico varchar(3) = 'GRL'

SELECT * FROM V_ATENCIONES WHERE FECHA=CONVERT(DATETIME, @lfecha, 101) and TURNO=@lturno and MEDICO=@lmedico order by CONSULTORIO,NUMERO;

select * from CITA where CITA_ID = '160017979'
select * from ATENCIONC where ID_CITA  = '160017991'

 
select * from atencionc where hora_prog is null ORDER BY FECHA DESC


