/* Funciones de Fecha Utiles en SQL Server */



SELECT DATEADD(yy,DATEDIFF(yy,0,GETDATE()),0) 'Primer día de este año'

/* Último día de este año. */

SELECT DATEADD(ms,-3,DATEADD(yy,0,DATEADD(yy,DATEDIFF(yy,0,GETDATE())+1,0))) 'Último día de este año'

/* Primer día del año pasado */
SELECT DATEADD(yy,-1,DATEADD(yy,DATEDIFF(yy,0,GETDATE()),0)) 'Primer día del año pasado' 

/* Último día del año pasado */
SELECT DATEADD(ms,-3,DATEADD(yy,0,DATEADD(yy,DATEDIFF(yy,0,GETDATE()),0))) 'Último día del año pasado'

/* Primer día del próximo mes */
SELECT DATEADD(mm,1,DATEADD(mm,DATEDIFF(mm,0,GETDATE()),0)) 'Primer día del próximo mes'

/* Último día del próximo mes */
SELECT DATEADD(ms,-3,DATEADD(mm,DATEADD(mm,(DATEDIFF(mm,0,GETDATE()),0))) 'Último día del próximo mes'