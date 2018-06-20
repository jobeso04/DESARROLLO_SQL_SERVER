declare @xxmari as time = '12:00:34';
  declare @xxfalta as char(1) = '1';
  declare @xxobs as varchar(100) = 'MARCO a media caña';
  declare @xxcodigo as varchar(20) =  '05418';
  declare @xanio as char(10) = '2015';
  declare @xmes as char(3) = '6'
  declare @xdia as char(3) = '1'
    
  -- dia = tasis.dia  
  
  UPDATE ASISTENCIA SET HORAI_REG=@xxmari, Productiva = @xxfalta, OBSERVACION =@xxobs where CODIGO= @xxcodigo and año = @xanio 
      and mes = @xmes  and dia = @xdia
 select HORAI_REG, Productiva, OBSERVACION from asistencia where CODIGO= @xxcodigo and año = @xanio 
      and mes = @xmes  and dia = @xdia