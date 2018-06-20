use SIGSALUD
declare @lidemergencia varchar(13) = '16032977'

/* ver diagnostico de entrada */
select tipo_ciex4, ciex4, tipo_ciex5, ciex5, tipo_ciex6, ciex6 from emergencia where emergencia_id = @lidemergencia
/* ver diagnostico de salida */
select tipo_ciex1, ciex1, tipo_ciex2, ciex2, tipo_ciex6, ciex3 from emergencia where emergencia_id = @lidemergencia
/* solucion */
update emergencia set ciex1 = '0', tipo_ciex1 = '0' where emergencia_id = @lidemergencia