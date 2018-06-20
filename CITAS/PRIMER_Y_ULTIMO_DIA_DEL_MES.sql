
DECLARE @mydate DATETIME

SELECT @mydate = GETDATE()

SELECT CONVERT(VARCHAR(25),DATEADD(dd,-(DAY(@mydate)),@mydate),101) , 'Último día del mes anterior'
UNION
SELECT CONVERT(VARCHAR(25),DATEADD(dd,-(DAY(@mydate)-1),@mydate),101) AS Date_Value, 'Primer día del mes corriente' AS Date_Type
UNION
SELECT CONVERT(VARCHAR(25),@mydate,101) AS Date_Value, 'Hoy' AS Date_Type
UNION
SELECT CONVERT(VARCHAR(25),DATEADD(dd,-(DAY(DATEADD(mm,1,@mydate))),DATEADD(mm,1,@mydate)),101) , 'Último día del mes corriente'
UNION
SELECT CONVERT(VARCHAR(25),DATEADD(dd,-(DAY(DATEADD(mm,1,@mydate))-1),DATEADD(mm,1,@mydate)),101) , 'Primer día del mes siguiente'
GO



/* ULTIMO DIA DEL MES CORRIENTE */
/* Declare @fecha1 datetime
 set @fecha1 = getdate()

select dateadd(day,-1,left(convert(varchar(8),dateadd(month,1,@fecha1),112),6)+'01')
*/


/* NUMERO DE DIAS DEL MES CORRIENTE */

declare @fecha1 datetime = CONVERT(DATETIME, '2017-02-10', 101)
declare @fecha2 datetime
declare @ndias varchar(10)

/* set @fecha1 = getdate() */
set @ndias = convert(varchar(8),dateadd(month,1, @fecha1),112)
set @fecha2 = dateadd(day,-1,left(@ndias,6)+'01')

select @fecha1 FECHA_ACTUAL, @fecha2 ULTIMO_DIA_DEL_MES_ACTUAL, day(@fecha2) NUMERO_DE_DIAS
