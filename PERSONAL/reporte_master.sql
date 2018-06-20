use BDPERSONAL
select a.IDMASTER, APELLIDOSNOMBRES, FECHANACIMIENTO, ln_departamento, ln_provincia, ln_distrito, dni, CONDICIONLABORAL, REGIMENPENSIONARIO, TELEFONODOMICILIO, CELULAR, 
   upper(DIRECCION) as direccion, ESTADO_CIVIL, paterno_conyuge, materno_conyugue, nombre_conyuge, substring(b.nombre,10,50) as condicion, b.FECHA, b.RESOLUCION  from lgj_master a left join LGJ_REGISTRARFECHAS b on a.IDMASTER = b.IDMASTER
      order by a.APELLIDOSNOMBRES asc
   

select * from  dbo.LGJ_REGISTRARFECHAS
select * from dbo.LGJ_FAMNOTIFICACION