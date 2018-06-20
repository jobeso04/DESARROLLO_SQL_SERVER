use BDPERSONAL
go

select ID_ACTIVIDAD, CODIGO, RIGHT('00' + ltrim(dia), 2) as dia, MES, ANIO, ESTADO, TURNO
from actividad_detalle  where ANIO = ?lanio and MES = ?lmes order by CODIGO, RIGHT('00' + ltrim(dia), 2)  asc
