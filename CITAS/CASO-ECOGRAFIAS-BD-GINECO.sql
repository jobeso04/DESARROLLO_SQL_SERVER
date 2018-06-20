/* EXAMINAR LOS DATOS DE ECOGRAFIAS  */
USE SIGSALUD
declare @lcfecha1 varchar(10) = convert(date, '01/06/2017')
declare @lcfecha2 varchar(10) = convert(date, '30/06/2017')
declare @lc_lista_de_consultorio  table (idconsultorio varchar(6)); insert @lc_lista_de_consultorio(idconsultorio) values('4041'),('4042')

select	a.ID_ATENCION, a.HIS_CODSERVICIO,  a.PACIENTE AS ID_PACIENTE, UPPER(a.NOMBRES) AS NOMBRE_PACIENTE, dbo.histpac(a.Paciente) AS HISTORIA_PACIENTE, 
 	a.ID_ATENCION AS ID_CITA, b.id_exc as ID_EXAMEN, dbo.login(a.user_crea) as USUARIO, b.estado as ESTADO, dbo.ECO_NOMEXAM(b.id_exc) as EXAMEN, 
 	b.id_examen as ID_EXAMEN, CASE a.orden when '100' then '-' else a.orden end ORDEN, CASE a.orden when '0' then '100' else a.orden end ORDENX, 
 		CASE a.orden when '0' then 'cross' 	else 'tick' end NOMB, CASE a.orden when '0' then '#FFFFFF' 	else '#6FFFFF' 	end COLOR, 	CASE a.origen  
 			when 'CE' then 'Cons. Ext.' when 'EM' then 'Emerg.' when 'HO' then 'Hospit.' when 'PE' then 'Perif.' when 'PA' then 'Part.' else '-' end ORIGEN, 
 				isnull(a.rango_edad,0) as RANGO, a.ID_HORA_CITA as ID_HORA, FECHA_CITA, substring(substring(c.edad,1,3),2,2) as edad 
 				 from eco_atencion a left join   paciente c on c.paciente = a.paciente  left join examen_citas b on a.ID_ATENCION = b.ID_CITA
 				 where a.FECHA_CITA BETWEEN  @lcfecha1 AND @lcfecha2 and a.estado = '1' and a.HIS_CODSERVICIO in (select idconsultorio from @lc_lista_de_consultorio)
 				       order by substring(substring(c.edad,1,3),2,2) asc
 	
 	/*
 	
 	update ECO_ATENCION set PACIENTE = '2017273782'  where ID_ATENCION = '16530267200276143797'
 	update ECO_ATENCION set PACIENTE = '2008117687'  where ID_ATENCION = '98232351701321155475'
 	update ECO_ATENCION set PACIENTE = '2017273295'  where ID_ATENCION = '40142109316615387649'
    update ECO_ATENCION set PACIENTE = '2017273295'  where ID_ATENCION = '43304400279971426885' 	
    update ECO_ATENCION set PACIENTE = '2008113935', NOMBRES = 'DUEÑAS ENRIQUEZ MARITZA'   where ID_ATENCION = '42914863486019180019'
 	update ECO_ATENCION set PACIENTE = '2017273545'  where ID_ATENCION = '36564720450823800958' 	
 	update ECO_ATENCION set PACIENTE = '2013223163'  where ID_ATENCION = '58502930759010514864' 	
 	update ECO_ATENCION set PACIENTE = '2017273359'  where ID_ATENCION = '24214252997882511762' 	 	 	
 	update PACIENTE set edad = '019a11m11d' where PACIENTE = '2008063431' 				       
 	 
 	 
 	 	
 	declare @lcnombre varchar(200) = 'VILLARINO VILLANA MARIA'
 	select * from eco_atencion where nombres like @lcnombre + '%'
 	select * from PACIENTE where nombres like @lcnombre + '%'
 	
 	
 	select * from PACIENTE where PACIENTE = '2015248133'
 	
select edad from PACIENTE where PACIENTE = '2008063431' 				       
 update PACIENTE set edad = '019a11m11d' where PACIENTE = '2008063431' 				       
 	*/			       
/* select * from HORA_CITA 				        */
/* select * from PACIENTE where PACIENTE = '2008012515' */
/* select * from consultorio where tipo = 'C' order by nombre asc */
 				  
 				  

 				  