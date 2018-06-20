
exec dbo.SP_GUARDAR_ATENCIONC '170171530', '21/09/2017', '2008008047', '0008056', 'CELESTINO ESCOBEDO MARIA LUCIA', '1030', 'MHT', '150118', 'D', '07677386',
'T', 'LURIGANCHO', 'INFECTOLOGIA 2', 'F', 'N', 'N', 'A', 63, '2', 'Tarde', '', '5.36', '', '', '', '' 


DELETE ATENCIOND WHERE ID_CITA='170171530'
select * from ATENCIOND where ID_CITA='170171530'

select * from dbo.V_ATENCIOND where id_cita = '170171530'
SELECT * FROM V_ATENCIONES 
 WHERE FECHA='21/09/2017' and TURNO= 'T' and MEDICO='MHJ' and NOMBRES like @paciente order by CONSULTORIO,NUMERO;
 
use sigsalud 
SELECT * FROM V_ATENCIONES  
 WHERE FECHA='21/09/2017' and TURNO= 'T' and MEDICO='MHT'  order by CONSULTORIO,NUMERO;
 
DELETE FROM ATENCIONC WHERE ID_CITA IN ('170171529')
DELETE FROM ATENCIOND WHERE ID_CITA IN ('170171529')

DELETE FROM ATENCIONC WHERE ID_CITA IN ('170171529')
DELETE FROM ATENCIOND WHERE ID_CITA IN ('170171529')




SELECT * FROM V_ATENCIOND WHERE PACIENTE='2008008047' ORDER BY FECHA desc,CONSULTORIO desc,ORD asc 


use sigsalud
select * from ATENCIONC where id_cita = '170171529'
select * from V_ATENCIOND where id_cita = '170171529'

select * from ATENCIONC where id_cita = '170171530'
select * from V_ATENCIOND where id_cita = '170171530'


 SELECT * FROM V_ATENCIOND WHERE PACIENTE=@paciente ORDER BY FECHA desc,CONSULTORIO desc,ORD asc ;

select * from V_ATENCIOND where id_cita = '170171529'

DELETE ATENCIONC WHERE ID_CITA IN ('170171530', '170171529')



select * from ATENCIONc where PACIENTE = '2008008047' and medico = 'MHT' order by FECHA  desc

DELETE FROM ATENCIONC WHERE ID_CITA IN ('170171529', '170171530')

id_cita=170171529&paciente=2008008047&distrito=150118&estado=3&estpac=3&historia=0008056&consultorioa=1030&fechaa=21%2F09%2F2017&
medico=MHT&nombrepac=CELESTINO+ESCOBEDO+MARIA+LUCIA&tipo=D&turnon=T&dnia=07677386&distriton=LURIGANCHO&consultorion=INFECTOLOGIA+2&
sexoa=F&establec=N&servicio=N&edadact=63&tipoedad=A&seguro=2&turnonombre=Tarde&ntxt_pa=&ntxt_pc=&ntxt_peso=&ntxt_talla=&ntxt_hemo=&dfecha_hb=
&tipodx1=D&lab1=&cie1=J321&dx1=Sinusitis+Frontal+Cronica&tipodx2=&lab2=&cie2=&dx2=&tipodx3=&lab3=&cie3=&dx3=&tipodx4=&lab4=&cie4=&dx4=&tipodx5=&lab5=
&cie5=&dx5=&tipodx6=&lab6=&cie6=&dx6=



@id_cita char(10),
@fecha varchar(12),
@paciente char(10),
@historia char(20),
@nombres char(90),
@consultorio char(6),
@medico char(3),
@distrito char(7),
@tipo char(2),
@dni varchar(20),
@turnon varchar(1),
@distriton varchar(50),
@nomconsultorio varchar(50),
@sexo varchar(1),
@establec varchar(1),
@servicio varchar(1),
@tipoedad nchar(1),
@edadact int,
@seguro varchar(2),
@turnonombre varchar(10),
@ntxt_pa float,
@ntxt_pc float,
@ntxt_peso float,
@ntxt_talla float,
@ntxt_hemo float,
@dfecha_hb varchar(10)



  $sentencia = "EXEC SP_GUARDAR_ATENCIONC ?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?";
            $resultado = $this->_db->prepare($sentencia);
            $resultado->execute(array($e->getId_cita(),$e->getFecha(),$e->getPaciente(),$e->getHistoria(),$e->getNombres(),$e->getConsultorio(),$e->getMedico(),$e->getDistrito(),$e->getTipo(),$e->getDni(),$e->getTurnon(),$e->getDistriton(),$e->getConsultorion(),$e->getSexo(),$e->getEstablec(),$e->getServicio(),$e->getTipoedad(),$e->getEdadact(),$e->getSeguros(),utf8_encode(utf8_decode($e->getTurnonombre())),
			$e->getNtxt_pa(),$e->getNtxt_pc(),$e->getNtxt_peso(),$e->getNtxt_talla(),$e->getNtxt_hemo(),$e->getDfecha_hb()));
            $array = array('estado' => 1, 'mensaje' => 'EL REGISTRO DE GRABO CORRECTAMENTE');
		    return json_encode($array); 