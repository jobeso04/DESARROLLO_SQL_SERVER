USE [SIGSALUD]
GO

/****** Object:  StoredProcedure [dbo].[SP_GUARDAR_ATENCIONC]    Script Date: 10/03/2017 17:59:29 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE [dbo].[SP_GUARDAR_ATENCIONC]
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
@ntxt_pa varchar(10),
@ntxt_pc varchar(10),
@ntxt_peso varchar(10),
@ntxt_talla varchar(10),
@ntxt_hemo varchar(10),
@dfecha_hb varchar(10)



AS BEGIN
	SET NOCOUNT ON
	SET LANGUAGE Spanish
	declare @tipo_cita varchar(1)
	declare @hora_prog time(7) 
    set @tipo_cita = (select TIPO_CITA  from CITA where CITA_ID = @id_cita) 
    set @hora_prog = convert(time(7), (select HORA  from CITA where CITA_ID = @id_cita))
	IF (SELECT COUNT(ID_CITA) FROM ATENCIONC WHERE ID_CITA = @id_cita) = 0
		BEGIN
			INSERT INTO ATENCIONC (ID_CITA,
			FECHA,
			PACIENTE,
			HISTORIA,
			NOMBRES,
			TIPO,
			DNI,
			CONSULTORIO,
			MEDICO,
			DISTRITO,
			TURNO_CONSULTA,
			NOMDIST,
			NOMCONSULTORIO,
			TIPOATENC,
			SEXO,
			ESTABLEC,
			SERVICIO,
			TIPOEDAD,
			EDAD,
			FINANCIA,
			ETNIA,
			TURNO, TIPO_CITA, HORA_ATEN, HORAI_ATEN, HORA_PROG, PERIMETRO_ABDOMINAL, PERIMETRO_CEFALICO, PESO_PACIENTE, TALLA_PACIENTE, HEMOGLOBINA, FECHA_RESULTADO_HEMOGLOBINA)
			 VALUES(
			@id_cita,
			@fecha,
			@paciente,
			@historia,
			@nombres,
			@tipo,
			@dni,
			@consultorio,
			@medico,
			@distrito,
			@turnon,
			@distriton,
			@nomconsultorio,
			'0',
			@sexo,
			@establec,
			@servicio,
			@tipoedad,
			@edadact,
			@seguro,
			'80',
			@turnonombre, @tipo_cita,  CONVERT(TIME(7), GETDATE()), CONVERT(TIME(7), GETDATE()), @hora_prog,@ntxt_pa,@ntxt_pc,@ntxt_peso,@ntxt_talla,@ntxt_hemo,@dfecha_hb);
			UPDATE ARCHIVO_MOV SET EST_PAC='3' WHERE  ID_CITA = @id_cita;
			UPDATE CITA SET ESTADO='4' WHERE CITA_ID = @id_cita;
		END
	ELSE
		BEGIN
			UPDATE ATENCIONC SET 
			PACIENTE = @paciente,
			HISTORIA = @historia,
			NOMBRES = @nombres,
			CONSULTORIO = @consultorio,
			MEDICO = @medico,
			DISTRITO = @distrito,
			TIPO = @tipo,
			DNI = @dni,
			TURNO_CONSULTA = @turnon,
			NOMDIST = @distriton,
			NOMCONSULTORIO = @nomconsultorio,
			SEXO = @sexo,
			ESTABLEC = @establec,
			SERVICIO = @servicio,
			TIPOEDAD = @tipoedad,
			EDAD = @edadact,
			FINANCIA = @seguro,
			ETNIA = '80',
			TURNO = @turnonombre, TIPO_CITA = @tipo_cita, HORA_ATEN = CONVERT(TIME(7), GETDATE()), HORAI_ATEN = CONVERT(TIME(7), GETDATE()), HORA_PROG = @hora_prog,
			PERIMETRO_ABDOMINAL = @ntxt_pa, PERIMETRO_CEFALICO = @ntxt_pc, PESO_PACIENTE = @ntxt_peso, TALLA_PACIENTE = @ntxt_talla, HEMOGLOBINA = @ntxt_hemo,
			FECHA_RESULTADO_HEMOGLOBINA = @dfecha_hb
			WHERE ID_CITA = @id_cita;
			UPDATE ARCHIVO_MOV SET EST_PAC='3' WHERE  ID_CITA = @id_cita;
			UPDATE CITA SET ESTADO='4' WHERE CITA_ID = @id_cita;
		END
END


GO


