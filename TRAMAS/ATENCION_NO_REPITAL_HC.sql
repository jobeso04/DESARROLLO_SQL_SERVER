
USE SIGSALUD 
  declare @lcperiodo varchar(6) = '102015'
  declare @lcperiodo2 varchar(6) = '102015'
  declare @ltipoedadd varchar(1)='D' 
  
  /* ATENCIONES MEDICAS */
/* menores 1 año */
select 'MENORES QUE 1 AÑO' AS  SEXO, 0 AS CUENTA 
UNION ALL
Select sexo, count(sexo) as cuenta from HIS where periodo between @lcperiodo AND @lcperiodo2 and TIPOEDAD = 'D' and EDAD <= '31' 
AND CONS_CITA IN ('50', '5050', '5070','5080','60','6081','6082','6083','6084','6086','2052','5090','4044','9030','9040','9050','9060','9070','9080',
'5060','4045','6085','3080','5040','5061','6088','6089','5030','5020','5071','4047','6087','5081','1094´´,´4092´,´9095') group by SEXO 
union all
Select sexo, count(sexo) as cuenta from HIS where periodo between @lcperiodo AND @lcperiodo2 and TIPOEDAD = 'M' and EDAD <= '12' 
AND CONS_CITA IN ('50', '5050', '5070','5080','60','6081','6082','6083','6084','6086','2052','5090','4044','9030','9040','9050','9060','9070','9080',
'5060','4045','6085','3080','5040','5061','6088','6089','5030','5020','5071','4047','6087','5081','1094´´,´4092´,´9095') group by SEXO 

UNION ALL

/* menores 1 - 4 año */
select 'ENTRE 1 - 4' AS  SEXO, 0 AS CUENTA 
UNION ALL
Select sexo, count(sexo) as cuenta
from HIS where periodo between @lcperiodo AND @lcperiodo2 and TIPOEDAD = 'A' and EDAD between '1' and '4' AND CONS_CITA IN ('50', '5050', '5070','5080','60','6081','6082','6083','6084','6086','2052','5090','4044','9030','9040','9050','9060','9070','9080',
'5060','4045','6085','3080','5040','5061','6088','6089','5030','5020','5071','4047','6087','5081','1094´´,´4092´,´9095') group by SEXO 
UNION ALL


/* menores 5 - 9 año */
select 'ENTRE 5 - 9' AS  SEXO, 0 AS CUENTA 
UNION ALL
Select sexo, count(sexo) as cuenta
from HIS where periodo between @lcperiodo AND @lcperiodo2 and TIPOEDAD = 'A' and EDAD between '5' and '9'
AND CONS_CITA IN ('50', '5050', '5070','5080','60','6081','6082','6083','6084','6086','2052','5090','4044','9030','9040','9050','9060','9070','9080',
'5060','4045','6085','3080','5040','5061','6088','6089','5030','5020','5071','4047','6087','5081','1094´´,´4092´,´9095') group by SEXO 
UNION ALL


/* menores 10 - 14 año */
select 'ENTRE 10 - 14' AS  SEXO, 0 AS CUENTA 
UNION ALL
Select sexo, count(sexo) as cuenta
from HIS where periodo between @lcperiodo AND @lcperiodo2 and TIPOEDAD = 'A' and EDAD between '10' and '14'
AND CONS_CITA IN ('50', '5050', '5070','5080','60','6081','6082','6083','6084','6086','2052','5090','4044','9030','9040','9050','9060','9070','9080',
'5060','4045','6085','3080','5040','5061','6088','6089','5030','5020','5071','4047','6087','5081','1094´´,´4092´,´9095') group by SEXO 

UNION ALL
/* menores 15 - 19 año */
select 'ENTRE 15 - 19' AS  SEXO, 0 AS CUENTA 
UNION ALL
Select sexo, count(sexo) as cuenta
from HIS where periodo between @lcperiodo AND @lcperiodo2 and TIPOEDAD = 'A' and EDAD between '15' and '19' AND CONS_CITA IN ('50', '5050', '5070','5080','60','6081','6082','6083','6084','6086','2052','5090','4044','9030','9040','9050','9060','9070','9080',
'5060','4045','6085','3080','5040','5061','6088','6089','5030','5020','5071','4047','6087','5081','1094´´,´4092´,´9095') group by SEXO 
UNION ALL

/* menores 20 - 24 año */
select 'ENTRE 20 - 24' AS  SEXO, 0 AS CUENTA 
UNION ALL
Select sexo, count(sexo) as cuenta
from HIS where periodo between @lcperiodo AND @lcperiodo2 and TIPOEDAD = 'A' and EDAD between '20' and '24' AND CONS_CITA IN ('50', '5050', '5070','5080','60','6081','6082','6083','6084','6086','2052','5090','4044','9030','9040','9050','9060','9070','9080',
'5060','4045','6085','3080','5040','5061','6088','6089','5030','5020','5071','4047','6087','5081','1094´´,´4092´,´9095') group by SEXO 
UNION ALL
/* menores 25 - 29 año */
select 'ENTRE 25 - 29' AS  SEXO, 0 AS CUENTA 
UNION ALL
Select sexo, count(sexo) as cuenta
from HIS where periodo between @lcperiodo AND @lcperiodo2 and TIPOEDAD = 'A' and EDAD between '25' and '29' AND CONS_CITA IN ('50', '5050', '5070','5080','60','6081','6082','6083','6084','6086','2052','5090','4044','9030','9040','9050','9060','9070','9080',
'5060','4045','6085','3080','5040','5061','6088','6089','5030','5020','5071','4047','6087','5081','1094´´,´4092´,´9095') group by SEXO 
UNION ALL

/* menores 30 - 34 año */
select 'ENTRE 30 - 34' AS  SEXO, 0 AS CUENTA 
UNION ALL
Select sexo, count(sexo) as cuenta
from HIS where periodo between @lcperiodo AND @lcperiodo2 and TIPOEDAD = 'A' and EDAD between '30' and '34' AND CONS_CITA IN ('50', '5050', '5070','5080','60','6081','6082','6083','6084','6086','2052','5090','4044','9030','9040','9050','9060','9070','9080',
'5060','4045','6085','3080','5040','5061','6088','6089','5030','5020','5071','4047','6087','5081','1094´´,´4092´,´9095') group by SEXO 
UNION ALL

/* menores 35 - 39 año */
select 'ENTRE 35 - 39' AS  SEXO, 0 AS CUENTA 
UNION ALL
Select sexo, count(sexo) as cuenta
from HIS where periodo between @lcperiodo AND @lcperiodo2 and TIPOEDAD = 'A' and EDAD between '35' and '39' AND CONS_CITA IN ('50', '5050', '5070','5080','60','6081','6082','6083','6084','6086','2052','5090','4044','9030','9040','9050','9060','9070','9080',
'5060','4045','6085','3080','5040','5061','6088','6089','5030','5020','5071','4047','6087','5081','1094´´,´4092´,´9095') group by SEXO 

UNION ALL
/* menores 40 - 44 año */
select 'ENTRE 40 - 44' AS  SEXO, 0 AS CUENTA 
UNION ALL
Select sexo, count(sexo) as cuenta
from HIS where periodo between @lcperiodo AND @lcperiodo2 and TIPOEDAD = 'A' and EDAD between '40' and '44' AND CONS_CITA IN ('50', '5050', '5070','5080','60','6081','6082','6083','6084','6086','2052','5090','4044','9030','9040','9050','9060','9070','9080',
'5060','4045','6085','3080','5040','5061','6088','6089','5030','5020','5071','4047','6087','5081','1094´´,´4092´,´9095') group by SEXO 

UNION ALL
/* menores 45 - 49 año */
select 'ENTRE 45 - 49' AS  SEXO, 0 AS CUENTA 
UNION ALL
Select sexo, count(sexo) as cuenta
from HIS where periodo between @lcperiodo AND @lcperiodo2 and TIPOEDAD = 'A' and EDAD between '45' and '49' AND CONS_CITA IN ('50', '5050', '5070','5080','60','6081','6082','6083','6084','6086','2052','5090','4044','9030','9040','9050','9060','9070','9080',
'5060','4045','6085','3080','5040','5061','6088','6089','5030','5020','5071','4047','6087','5081','1094´´,´4092´,´9095') group by SEXO 
UNION ALL

/* menores 50 - 54 año */
select 'ENTRE 50 - 54' AS  SEXO, 0 AS CUENTA 
UNION ALL
Select sexo, count(sexo) as cuenta
from HIS where periodo between @lcperiodo AND @lcperiodo2 and TIPOEDAD = 'A' and EDAD between '50' and '54' AND CONS_CITA IN ('50', '5050', '5070','5080','60','6081','6082','6083','6084','6086','2052','5090','4044','9030','9040','9050','9060','9070','9080',
'5060','4045','6085','3080','5040','5061','6088','6089','5030','5020','5071','4047','6087','5081','1094´´,´4092´,´9095') group by SEXO 

UNION ALL
/* menores 55 - 59 año */

select 'ENTRE 55 - 59' AS  SEXO, 0 AS CUENTA 
UNION ALL
Select sexo, count(sexo) as cuenta
from HIS where periodo between @lcperiodo AND @lcperiodo2 and TIPOEDAD = 'A' and EDAD between '55' and '59' AND CONS_CITA IN ('50', '5050', '5070','5080','60','6081','6082','6083','6084','6086','2052','5090','4044','9030','9040','9050','9060','9070','9080',
'5060','4045','6085','3080','5040','5061','6088','6089','5030','5020','5071','4047','6087','5081','1094´´,´4092´,´9095') group by SEXO 
UNION ALL

/* menores 60 - 64 año */
select 'ENTRE 60 - 64' AS  SEXO, 0 AS CUENTA 
UNION ALL
Select sexo, count(sexo) as cuenta
from HIS where periodo between @lcperiodo AND @lcperiodo2 and TIPOEDAD = 'A' and EDAD between '60' and '64' AND CONS_CITA IN ('50', '5050', '5070','5080','60','6081','6082','6083','6084','6086','2052','5090','4044','9030','9040','9050','9060','9070','9080',
'5060','4045','6085','3080','5040','5061','6088','6089','5030','5020','5071','4047','6087','5081','1094´´,´4092´,´9095') group by SEXO 

UNION ALL
/* menores 65 +  */
select 'ENTRE 65 - 200' AS  SEXO, 0 AS CUENTA 
UNION ALL
Select sexo, count(sexo) as cuenta
from HIS where periodo between @lcperiodo AND @lcperiodo2 and TIPOEDAD = 'A' and EDAD between '65' and '200' AND CONS_CITA IN ('50', '5050', '5070','5080','60','6081','6082','6083','6084','6086','2052','5090','4044','9030','9040','9050','9060','9070','9080',
'5060','4045','6085','3080','5040','5061','6088','6089','5030','5020','5071','4047','6087','5081','1094´´,´4092´,´9095') group by SEXO 
