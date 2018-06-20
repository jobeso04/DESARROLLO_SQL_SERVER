/* INFECCION RESPIRATORIA AGUDA  (IRA) NO COMPLICADA*/
 USE SIGSALUD
 declare @lcfecha1 datetime = convert(datetime, '2017-05-01', 101)
 declare @lcfecha2 datetime = convert(datetime, '2017-05-31', 101)
 declare @lc_lista_consul  table (dx varchar(50), cantidad int)
 declare @lc_listado_citas table (id_cita varchar(20));  insert @lc_listado_citas (id_cita)
 (select ID_CITA from ATENCIONC A LEFT JOIN PACIENTE B  ON B.PACIENTE = A.PACIENTE  WHERE substring(B.EDAD,1,3) < '005' AND substring(B.EDAD,1,3) <> '' AND FECHA BETWEEN @lcfecha1 AND @lcfecha2)
 declare @lc_lista_de_ciex  table (id_ciex varchar(20)); insert @lc_lista_de_ciex(id_ciex)  values('J00X'), ('J029'), ('J209'), ('J040'), ('J041'), ('J042'), ('J028')
 INSERT INTO @lc_lista_consul
 select DX, COUNT(dx) CANTIDAD from ATENCIOND where ID_CITA IN (select id_cita from @lc_listado_citas) and DX in (select id_ciex from @lc_lista_de_ciex)
   group by dx
 select dx, cantidad from @lc_lista_consul  


  /* 104
 declare @lc_lista_consul_reporte  table (servicio varchar(50), fecha datetime, historia varchar(20), nombres varchar(200), ciex varchar(20))      
 declare @lc_lista_de_ciex  table (id_ciex varchar(20)); insert @lc_lista_de_ciex(id_ciex)  values('J00X'), ('J029'), ('J209'), ('J040'), ('J041'), ('J042'), ('J028')
 INSERT INTO @lc_lista_consul_reporte
 select NOMCONSULTORIO AS SERVICIO, FECHA, A.HISTORIA, A.NOMBRES, C.DX AS CIEX from V_ATENCIONC A  LEFT JOIN 
   PACIENTE B  ON B.PACIENTE = A.PACIENTE  LEFT JOIN ATENCIOND C ON C.ID_CITA = A.ID_CITA
    WHERE substring(B.EDAD,1,3) < '005' AND substring(B.EDAD,1,3) <> '' AND FECHA BETWEEN @lcfecha1 AND @lcfecha2
    AND C.TIPODX = 'D' AND C.DX IN (SELECT id_ciex FROM @lc_lista_de_ciex)
 select servicio, CONVERT(varchar(10), fecha, 103) as fecha, historia, nombres, ciex from @lc_lista_consul_reporte order by servicio, nombres
 */