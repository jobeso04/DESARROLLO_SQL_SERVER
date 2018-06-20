
select * from ORDENC where ORDENID = '1718005560'
select * from ORDENd where ORDENID = '1718005560'

 sSql = "INSERT INTO Kardex ("
        sSql = sSql + "Almacen,"
        sSql = sSql + "Item,"
        sSql = sSql + "Operacion,"
        sSql = sSql + "Tipo_Transaccion,"
        sSql = sSql + "IdTransaccion,"
        sSql = sSql + "Stock,"
        sSql = sSql + "Cantidad,"
        sSql = sSql + "Saldo,"
        sSql = sSql + "Precio, "
        sSql = sSql + "Promedio) "
        sSql = sSql + "VALUES ('"
        sSql = sSql + sAlmacen + "','"
        sSql = sSql + rsLeer!Item + "','"
        sSql = sSql + GeneraOperacionId + "','"
        sSql = sSql + sTipo_Transaccion + "','"
        sSql = sSql + rsLeer!ORDENID + "',"
        sSql = sSql + Format(dStock, "######0.00") + ","
        sSql = sSql + Format(rsLeer!Cantidad, "######0.00") + ","
        sSql = sSql + Format(dSaldo, "######0.00") + ","
        sSql = sSql + Format(rsLeer!precio, "######0.000") + ","
        sSql = sSql + Format(dPromedio, "######0.000000") + ")"
        EjecutaSql rsGrabar, sSql
        
        sSql = "UPDATE Stock SET Stock=" + Format(dSaldo, "######0.000") + " WHERE Item='" + rsLeer!Item + "' And Almacen='" + sAlmacen + "'"
        EjecutaSql rsGrabar, sSql
        
        rsStock.Close
        
        rsLeer.MoveNext
    Loop

    rsLeer.Close
    
    If TipoConexion = "SQLSERVER" Then
        sSql = "UPDATE OrdenC SET Estado='3',Fecha_Proceso='" + Format(Date, "yyyymmdd") + "',Hora_Proceso=' " + Format(Time, "hh:mm") + "' WHERE OrdenId='" + Orden + "'"
    Else
        sSql = "UPDATE OrdenC SET Estado='3',Fecha_Proceso=TO_DATE('" + Format(Date, "short date") + "','dd/mm/yyyy'),Hora_Proceso=LEFT(' " + CStr(Time) + "',8) WHERE OrdenId='" + Orden + "'"
    End If
    EjecutaSql rsLeer, sSql
    '------------------------
    sSql = "Update OrdenD set Estado='3' WHERE OrdenId='" + Orden + "'"
    EjecutaSql rsLeer, sSql