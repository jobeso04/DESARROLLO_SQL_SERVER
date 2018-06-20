/* select * from CIEX where CODCAT = 'X60'
select * from CIEX where CODCAT = 'X61'

select * from CIEXHIS where CODIGO like 'X60%'
use sigsalud
select * from CIEX where CODCAT = 'X40' order by CIEX asc
select * from dbo.SEEMCIE10 where CODIGO like 'X40%'
*/
/* X60 */
update CIEX set NOMBRE = (select descrip from SEEMCIE10 where codigo = 'X600') where CIEX = 'X60'
update CIEX set NOMBRE = (select descrip from SEEMCIE10 where codigo = 'X600') where CIEX = 'X60.0'
update CIEX set NOMBRE = (select descrip from SEEMCIE10 where codigo = 'X601') where CIEX = 'X60.1'
update CIEX set NOMBRE = (select descrip from SEEMCIE10 where codigo = 'X602') where CIEX = 'X60.2'
update CIEX set NOMBRE = (select descrip from SEEMCIE10 where codigo = 'X603') where CIEX = 'X60.3'
update CIEX set NOMBRE = (select descrip from SEEMCIE10 where codigo = 'X604') where CIEX = 'X60.4'
update CIEX set NOMBRE = (select descrip from SEEMCIE10 where codigo = 'X605') where CIEX = 'X60.5'
update CIEX set NOMBRE = (select descrip from SEEMCIE10 where codigo = 'X606') where CIEX = 'X60.6'
update CIEX set NOMBRE = (select descrip from SEEMCIE10 where codigo = 'X607') where CIEX = 'X60.7'
update CIEX set NOMBRE = (select descrip from SEEMCIE10 where codigo = 'X608') where CIEX = 'X60.8'
update CIEX set NOMBRE = (select descrip from SEEMCIE10 where codigo = 'X609') where CIEX = 'X60.9'


/* X61 */
update CIEX set NOMBRE = substring((select descrip from SEEMCIE10 where codigo = 'X610'),1,200) where CIEX = 'X61'
update CIEX set NOMBRE = substring((select descrip from SEEMCIE10 where codigo = 'X610'),1,200) where CIEX = 'X61.0'
update CIEX set NOMBRE = substring((select descrip from SEEMCIE10 where codigo = 'X611'),1,200) where CIEX = 'X61.1'
update CIEX set NOMBRE = substring((select descrip from SEEMCIE10 where codigo = 'X612'),1,200) where CIEX = 'X61.2'
update CIEX set NOMBRE = substring((select descrip from SEEMCIE10 where codigo = 'X613'),1,200) where CIEX = 'X61.3'
update CIEX set NOMBRE = substring((select descrip from SEEMCIE10 where codigo = 'X614'),1,200) where CIEX = 'X61.4'
update CIEX set NOMBRE = substring((select descrip from SEEMCIE10 where codigo = 'X615'),1,200) where CIEX = 'X61.5'
update CIEX set NOMBRE = substring((select descrip from SEEMCIE10 where codigo = 'X616'),1,200) where CIEX = 'X61.6'
update CIEX set NOMBRE = substring((select descrip from SEEMCIE10 where codigo = 'X617'),1,200) where CIEX = 'X61.7'
update CIEX set NOMBRE = substring((select descrip from SEEMCIE10 where codigo = 'X618'),1,200) where CIEX = 'X61.8'
update CIEX set NOMBRE = substring((select descrip from SEEMCIE10 where codigo = 'X619'),1,200) where CIEX = 'X61.9'



/* X62 */
update CIEX set NOMBRE = substring((select descrip from SEEMCIE10 where codigo = 'X620'),1,200) where CIEX = 'X62'
update CIEX set NOMBRE = substring((select descrip from SEEMCIE10 where codigo = 'X620'),1,200) where CIEX = 'X62.0'
update CIEX set NOMBRE = substring((select descrip from SEEMCIE10 where codigo = 'X621'),1,200) where CIEX = 'X62.1'
update CIEX set NOMBRE = substring((select descrip from SEEMCIE10 where codigo = 'X622'),1,200) where CIEX = 'X62.2'
update CIEX set NOMBRE = substring((select descrip from SEEMCIE10 where codigo = 'X623'),1,200) where CIEX = 'X62.3'
update CIEX set NOMBRE = substring((select descrip from SEEMCIE10 where codigo = 'X624'),1,200) where CIEX = 'X62.4'
update CIEX set NOMBRE = substring((select descrip from SEEMCIE10 where codigo = 'X625'),1,200) where CIEX = 'X62.5'
update CIEX set NOMBRE = substring((select descrip from SEEMCIE10 where codigo = 'X626'),1,200) where CIEX = 'X62.6'
update CIEX set NOMBRE = substring((select descrip from SEEMCIE10 where codigo = 'X627'),1,200) where CIEX = 'X62.7'
update CIEX set NOMBRE = substring((select descrip from SEEMCIE10 where codigo = 'X628'),1,200) where CIEX = 'X62.8'
update CIEX set NOMBRE = substring((select descrip from SEEMCIE10 where codigo = 'X629'),1,200) where CIEX = 'X62.9'


/* X63 */
update CIEX set NOMBRE = substring((select descrip from SEEMCIE10 where codigo = 'X630'),1,200) where CIEX = 'X63'
update CIEX set NOMBRE = substring((select descrip from SEEMCIE10 where codigo = 'X630'),1,200) where CIEX = 'X63.0'
update CIEX set NOMBRE = substring((select descrip from SEEMCIE10 where codigo = 'X631'),1,200) where CIEX = 'X63.1'
update CIEX set NOMBRE = substring((select descrip from SEEMCIE10 where codigo = 'X632'),1,200) where CIEX = 'X63.2'
update CIEX set NOMBRE = substring((select descrip from SEEMCIE10 where codigo = 'X633'),1,200) where CIEX = 'X63.3'
update CIEX set NOMBRE = substring((select descrip from SEEMCIE10 where codigo = 'X634'),1,200) where CIEX = 'X63.4'
update CIEX set NOMBRE = substring((select descrip from SEEMCIE10 where codigo = 'X635'),1,200) where CIEX = 'X63.5'
update CIEX set NOMBRE = substring((select descrip from SEEMCIE10 where codigo = 'X636'),1,200) where CIEX = 'X63.6'
update CIEX set NOMBRE = substring((select descrip from SEEMCIE10 where codigo = 'X637'),1,200) where CIEX = 'X63.7'
update CIEX set NOMBRE = substring((select descrip from SEEMCIE10 where codigo = 'X638'),1,200) where CIEX = 'X63.8'
update CIEX set NOMBRE = substring((select descrip from SEEMCIE10 where codigo = 'X639'),1,200) where CIEX = 'X63.9'


/* X64 */
update CIEX set NOMBRE = substring((select descrip from SEEMCIE10 where codigo = 'X640'),1,200) where CIEX = 'X64'
update CIEX set NOMBRE = substring((select descrip from SEEMCIE10 where codigo = 'X640'),1,200) where CIEX = 'X64.0'
update CIEX set NOMBRE = substring((select descrip from SEEMCIE10 where codigo = 'X641'),1,200) where CIEX = 'X64.1'
update CIEX set NOMBRE = substring((select descrip from SEEMCIE10 where codigo = 'X642'),1,200) where CIEX = 'X64.2'
update CIEX set NOMBRE = substring((select descrip from SEEMCIE10 where codigo = 'X643'),1,200) where CIEX = 'X64.3'
update CIEX set NOMBRE = substring((select descrip from SEEMCIE10 where codigo = 'X644'),1,200) where CIEX = 'X64.4'
update CIEX set NOMBRE = substring((select descrip from SEEMCIE10 where codigo = 'X645'),1,200) where CIEX = 'X64.5'
update CIEX set NOMBRE = substring((select descrip from SEEMCIE10 where codigo = 'X646'),1,200) where CIEX = 'X64.6'
update CIEX set NOMBRE = substring((select descrip from SEEMCIE10 where codigo = 'X647'),1,200) where CIEX = 'X64.7'
update CIEX set NOMBRE = substring((select descrip from SEEMCIE10 where codigo = 'X648'),1,200) where CIEX = 'X64.8'
update CIEX set NOMBRE = substring((select descrip from SEEMCIE10 where codigo = 'X649'),1,200) where CIEX = 'X64.9'



/* X65 */
update CIEX set NOMBRE = substring((select descrip from SEEMCIE10 where codigo = 'X650'),1,200) where CIEX = 'X65'
update CIEX set NOMBRE = substring((select descrip from SEEMCIE10 where codigo = 'X650'),1,200) where CIEX = 'X65.0'
update CIEX set NOMBRE = substring((select descrip from SEEMCIE10 where codigo = 'X651'),1,200) where CIEX = 'X65.1'
update CIEX set NOMBRE = substring((select descrip from SEEMCIE10 where codigo = 'X652'),1,200) where CIEX = 'X65.2'
update CIEX set NOMBRE = substring((select descrip from SEEMCIE10 where codigo = 'X653'),1,200) where CIEX = 'X65.3'
update CIEX set NOMBRE = substring((select descrip from SEEMCIE10 where codigo = 'X654'),1,200) where CIEX = 'X65.4'
update CIEX set NOMBRE = substring((select descrip from SEEMCIE10 where codigo = 'X655'),1,200) where CIEX = 'X65.5'
update CIEX set NOMBRE = substring((select descrip from SEEMCIE10 where codigo = 'X656'),1,200) where CIEX = 'X65.6'
update CIEX set NOMBRE = substring((select descrip from SEEMCIE10 where codigo = 'X657'),1,200) where CIEX = 'X65.7'
update CIEX set NOMBRE = substring((select descrip from SEEMCIE10 where codigo = 'X658'),1,200) where CIEX = 'X65.8'
update CIEX set NOMBRE = substring((select descrip from SEEMCIE10 where codigo = 'X659'),1,200) where CIEX = 'X65.9'



/* X66 */
update CIEX set NOMBRE = substring((select descrip from SEEMCIE10 where codigo = 'X660'),1,200) where CIEX = 'X66'
update CIEX set NOMBRE = substring((select descrip from SEEMCIE10 where codigo = 'X660'),1,200) where CIEX = 'X66.0'
update CIEX set NOMBRE = substring((select descrip from SEEMCIE10 where codigo = 'X661'),1,200) where CIEX = 'X66.1'
update CIEX set NOMBRE = substring((select descrip from SEEMCIE10 where codigo = 'X662'),1,200) where CIEX = 'X66.2'
update CIEX set NOMBRE = substring((select descrip from SEEMCIE10 where codigo = 'X663'),1,200) where CIEX = 'X66.3'
update CIEX set NOMBRE = substring((select descrip from SEEMCIE10 where codigo = 'X664'),1,200) where CIEX = 'X66.4'
update CIEX set NOMBRE = substring((select descrip from SEEMCIE10 where codigo = 'X665'),1,200) where CIEX = 'X66.5'
update CIEX set NOMBRE = substring((select descrip from SEEMCIE10 where codigo = 'X666'),1,200) where CIEX = 'X66.6'
update CIEX set NOMBRE = substring((select descrip from SEEMCIE10 where codigo = 'X667'),1,200) where CIEX = 'X66.7'
update CIEX set NOMBRE = substring((select descrip from SEEMCIE10 where codigo = 'X668'),1,200) where CIEX = 'X66.8'
update CIEX set NOMBRE = substring((select descrip from SEEMCIE10 where codigo = 'X669'),1,200) where CIEX = 'X66.9'


/* X67 */
update CIEX set NOMBRE = substring((select descrip from SEEMCIE10 where codigo = 'X670'),1,200) where CIEX = 'X67'
update CIEX set NOMBRE = substring((select descrip from SEEMCIE10 where codigo = 'X670'),1,200) where CIEX = 'X67.0'
update CIEX set NOMBRE = substring((select descrip from SEEMCIE10 where codigo = 'X671'),1,200) where CIEX = 'X67.1'
update CIEX set NOMBRE = substring((select descrip from SEEMCIE10 where codigo = 'X672'),1,200) where CIEX = 'X67.2'
update CIEX set NOMBRE = substring((select descrip from SEEMCIE10 where codigo = 'X673'),1,200) where CIEX = 'X67.3'
update CIEX set NOMBRE = substring((select descrip from SEEMCIE10 where codigo = 'X674'),1,200) where CIEX = 'X67.4'
update CIEX set NOMBRE = substring((select descrip from SEEMCIE10 where codigo = 'X675'),1,200) where CIEX = 'X67.5'
update CIEX set NOMBRE = substring((select descrip from SEEMCIE10 where codigo = 'X676'),1,200) where CIEX = 'X67.6'
update CIEX set NOMBRE = substring((select descrip from SEEMCIE10 where codigo = 'X677'),1,200) where CIEX = 'X67.7'
update CIEX set NOMBRE = substring((select descrip from SEEMCIE10 where codigo = 'X678'),1,200) where CIEX = 'X67.8'
update CIEX set NOMBRE = substring((select descrip from SEEMCIE10 where codigo = 'X679'),1,200) where CIEX = 'X67.9'


/* X68 */
update CIEX set NOMBRE = substring((select descrip from SEEMCIE10 where codigo = 'X680'),1,200) where CIEX = 'X68'
update CIEX set NOMBRE = substring((select descrip from SEEMCIE10 where codigo = 'X680'),1,200) where CIEX = 'X68.0'
update CIEX set NOMBRE = substring((select descrip from SEEMCIE10 where codigo = 'X681'),1,200) where CIEX = 'X68.1'
update CIEX set NOMBRE = substring((select descrip from SEEMCIE10 where codigo = 'X682'),1,200) where CIEX = 'X68.2'
update CIEX set NOMBRE = substring((select descrip from SEEMCIE10 where codigo = 'X683'),1,200) where CIEX = 'X68.3'
update CIEX set NOMBRE = substring((select descrip from SEEMCIE10 where codigo = 'X684'),1,200) where CIEX = 'X68.4'
update CIEX set NOMBRE = substring((select descrip from SEEMCIE10 where codigo = 'X685'),1,200) where CIEX = 'X68.5'
update CIEX set NOMBRE = substring((select descrip from SEEMCIE10 where codigo = 'X686'),1,200) where CIEX = 'X68.6'
update CIEX set NOMBRE = substring((select descrip from SEEMCIE10 where codigo = 'X687'),1,200) where CIEX = 'X68.7'
update CIEX set NOMBRE = substring((select descrip from SEEMCIE10 where codigo = 'X688'),1,200) where CIEX = 'X68.8'
update CIEX set NOMBRE = substring((select descrip from SEEMCIE10 where codigo = 'X689'),1,200) where CIEX = 'X68.9'



/* X69 */
update CIEX set NOMBRE = substring((select descrip from SEEMCIE10 where codigo = 'X690'),1,200) where CIEX = 'X69'
update CIEX set NOMBRE = substring((select descrip from SEEMCIE10 where codigo = 'X690'),1,200) where CIEX = 'X69.0'
update CIEX set NOMBRE = substring((select descrip from SEEMCIE10 where codigo = 'X691'),1,200) where CIEX = 'X69.1'
update CIEX set NOMBRE = substring((select descrip from SEEMCIE10 where codigo = 'X692'),1,200) where CIEX = 'X69.2'
update CIEX set NOMBRE = substring((select descrip from SEEMCIE10 where codigo = 'X693'),1,200) where CIEX = 'X69.3'
update CIEX set NOMBRE = substring((select descrip from SEEMCIE10 where codigo = 'X694'),1,200) where CIEX = 'X69.4'
update CIEX set NOMBRE = substring((select descrip from SEEMCIE10 where codigo = 'X695'),1,200) where CIEX = 'X69.5'
update CIEX set NOMBRE = substring((select descrip from SEEMCIE10 where codigo = 'X696'),1,200) where CIEX = 'X69.6'
update CIEX set NOMBRE = substring((select descrip from SEEMCIE10 where codigo = 'X697'),1,200) where CIEX = 'X69.7'
update CIEX set NOMBRE = substring((select descrip from SEEMCIE10 where codigo = 'X698'),1,200) where CIEX = 'X69.8'
update CIEX set NOMBRE = substring((select descrip from SEEMCIE10 where codigo = 'X699'),1,200) where CIEX = 'X69.9'


/* X70 */
update CIEX set NOMBRE = substring((select descrip from SEEMCIE10 where codigo = 'X700'),1,200) where CIEX = 'X70'
update CIEX set NOMBRE = substring((select descrip from SEEMCIE10 where codigo = 'X700'),1,200) where CIEX = 'X70.0'
update CIEX set NOMBRE = substring((select descrip from SEEMCIE10 where codigo = 'X701'),1,200) where CIEX = 'X70.1'
update CIEX set NOMBRE = substring((select descrip from SEEMCIE10 where codigo = 'X702'),1,200) where CIEX = 'X70.2'
update CIEX set NOMBRE = substring((select descrip from SEEMCIE10 where codigo = 'X703'),1,200) where CIEX = 'X70.3'
update CIEX set NOMBRE = substring((select descrip from SEEMCIE10 where codigo = 'X704'),1,200) where CIEX = 'X70.4'
update CIEX set NOMBRE = substring((select descrip from SEEMCIE10 where codigo = 'X705'),1,200) where CIEX = 'X70.5'
update CIEX set NOMBRE = substring((select descrip from SEEMCIE10 where codigo = 'X706'),1,200) where CIEX = 'X70.6'
update CIEX set NOMBRE = substring((select descrip from SEEMCIE10 where codigo = 'X707'),1,200) where CIEX = 'X70.7'
update CIEX set NOMBRE = substring((select descrip from SEEMCIE10 where codigo = 'X708'),1,200) where CIEX = 'X70.8'
update CIEX set NOMBRE = substring((select descrip from SEEMCIE10 where codigo = 'X709'),1,200) where CIEX = 'X70.9'


/* X71 */
update CIEX set NOMBRE = substring((select descrip from SEEMCIE10 where codigo = 'X710'),1,200) where CIEX = 'X71'
update CIEX set NOMBRE = substring((select descrip from SEEMCIE10 where codigo = 'X710'),1,200) where CIEX = 'X71.0'
update CIEX set NOMBRE = substring((select descrip from SEEMCIE10 where codigo = 'X711'),1,200) where CIEX = 'X71.1'
update CIEX set NOMBRE = substring((select descrip from SEEMCIE10 where codigo = 'X712'),1,200) where CIEX = 'X71.2'
update CIEX set NOMBRE = substring((select descrip from SEEMCIE10 where codigo = 'X713'),1,200) where CIEX = 'X71.3'
update CIEX set NOMBRE = substring((select descrip from SEEMCIE10 where codigo = 'X714'),1,200) where CIEX = 'X71.4'
update CIEX set NOMBRE = substring((select descrip from SEEMCIE10 where codigo = 'X715'),1,200) where CIEX = 'X71.5'
update CIEX set NOMBRE = substring((select descrip from SEEMCIE10 where codigo = 'X716'),1,200) where CIEX = 'X71.6'
update CIEX set NOMBRE = substring((select descrip from SEEMCIE10 where codigo = 'X717'),1,200) where CIEX = 'X71.7'
update CIEX set NOMBRE = substring((select descrip from SEEMCIE10 where codigo = 'X718'),1,200) where CIEX = 'X71.8'
update CIEX set NOMBRE = substring((select descrip from SEEMCIE10 where codigo = 'X719'),1,200) where CIEX = 'X71.9'


/* X72 */
update CIEX set NOMBRE = substring((select descrip from SEEMCIE10 where codigo = 'X720'),1,200) where CIEX = 'X72'
update CIEX set NOMBRE = substring((select descrip from SEEMCIE10 where codigo = 'X720'),1,200) where CIEX = 'X72.0'
update CIEX set NOMBRE = substring((select descrip from SEEMCIE10 where codigo = 'X721'),1,200) where CIEX = 'X72.1'
update CIEX set NOMBRE = substring((select descrip from SEEMCIE10 where codigo = 'X722'),1,200) where CIEX = 'X72.2'
update CIEX set NOMBRE = substring((select descrip from SEEMCIE10 where codigo = 'X723'),1,200) where CIEX = 'X72.3'
update CIEX set NOMBRE = substring((select descrip from SEEMCIE10 where codigo = 'X724'),1,200) where CIEX = 'X72.4'
update CIEX set NOMBRE = substring((select descrip from SEEMCIE10 where codigo = 'X725'),1,200) where CIEX = 'X72.5'
update CIEX set NOMBRE = substring((select descrip from SEEMCIE10 where codigo = 'X726'),1,200) where CIEX = 'X72.6'
update CIEX set NOMBRE = substring((select descrip from SEEMCIE10 where codigo = 'X727'),1,200) where CIEX = 'X72.7'
update CIEX set NOMBRE = substring((select descrip from SEEMCIE10 where codigo = 'X728'),1,200) where CIEX = 'X72.8'
update CIEX set NOMBRE = substring((select descrip from SEEMCIE10 where codigo = 'X729'),1,200) where CIEX = 'X72.9'


/* X73 */
update CIEX set NOMBRE = substring((select descrip from SEEMCIE10 where codigo = 'X730'),1,200) where CIEX = 'X73'
update CIEX set NOMBRE = substring((select descrip from SEEMCIE10 where codigo = 'X730'),1,200) where CIEX = 'X73.0'
update CIEX set NOMBRE = substring((select descrip from SEEMCIE10 where codigo = 'X731'),1,200) where CIEX = 'X73.1'
update CIEX set NOMBRE = substring((select descrip from SEEMCIE10 where codigo = 'X732'),1,200) where CIEX = 'X73.2'
update CIEX set NOMBRE = substring((select descrip from SEEMCIE10 where codigo = 'X733'),1,200) where CIEX = 'X73.3'
update CIEX set NOMBRE = substring((select descrip from SEEMCIE10 where codigo = 'X734'),1,200) where CIEX = 'X73.4'
update CIEX set NOMBRE = substring((select descrip from SEEMCIE10 where codigo = 'X735'),1,200) where CIEX = 'X73.5'
update CIEX set NOMBRE = substring((select descrip from SEEMCIE10 where codigo = 'X736'),1,200) where CIEX = 'X73.6'
update CIEX set NOMBRE = substring((select descrip from SEEMCIE10 where codigo = 'X737'),1,200) where CIEX = 'X73.7'
update CIEX set NOMBRE = substring((select descrip from SEEMCIE10 where codigo = 'X738'),1,200) where CIEX = 'X73.8'
update CIEX set NOMBRE = substring((select descrip from SEEMCIE10 where codigo = 'X739'),1,200) where CIEX = 'X73.9'


/* X74 */
update CIEX set NOMBRE = substring((select descrip from SEEMCIE10 where codigo = 'X740'),1,200) where CIEX = 'X74'
update CIEX set NOMBRE = substring((select descrip from SEEMCIE10 where codigo = 'X740'),1,200) where CIEX = 'X74.0'
update CIEX set NOMBRE = substring((select descrip from SEEMCIE10 where codigo = 'X741'),1,200) where CIEX = 'X74.1'
update CIEX set NOMBRE = substring((select descrip from SEEMCIE10 where codigo = 'X742'),1,200) where CIEX = 'X74.2'
update CIEX set NOMBRE = substring((select descrip from SEEMCIE10 where codigo = 'X743'),1,200) where CIEX = 'X74.3'
update CIEX set NOMBRE = substring((select descrip from SEEMCIE10 where codigo = 'X744'),1,200) where CIEX = 'X74.4'
update CIEX set NOMBRE = substring((select descrip from SEEMCIE10 where codigo = 'X745'),1,200) where CIEX = 'X74.5'
update CIEX set NOMBRE = substring((select descrip from SEEMCIE10 where codigo = 'X746'),1,200) where CIEX = 'X74.6'
update CIEX set NOMBRE = substring((select descrip from SEEMCIE10 where codigo = 'X747'),1,200) where CIEX = 'X74.7'
update CIEX set NOMBRE = substring((select descrip from SEEMCIE10 where codigo = 'X748'),1,200) where CIEX = 'X74.8'
update CIEX set NOMBRE = substring((select descrip from SEEMCIE10 where codigo = 'X749'),1,200) where CIEX = 'X74.9'



/* X75 */
update CIEX set NOMBRE = substring((select descrip from SEEMCIE10 where codigo = 'X750'),1,200) where CIEX = 'X75'
update CIEX set NOMBRE = substring((select descrip from SEEMCIE10 where codigo = 'X750'),1,200) where CIEX = 'X75.0'
update CIEX set NOMBRE = substring((select descrip from SEEMCIE10 where codigo = 'X751'),1,200) where CIEX = 'X75.1'
update CIEX set NOMBRE = substring((select descrip from SEEMCIE10 where codigo = 'X752'),1,200) where CIEX = 'X75.2'
update CIEX set NOMBRE = substring((select descrip from SEEMCIE10 where codigo = 'X753'),1,200) where CIEX = 'X75.3'
update CIEX set NOMBRE = substring((select descrip from SEEMCIE10 where codigo = 'X754'),1,200) where CIEX = 'X75.4'
update CIEX set NOMBRE = substring((select descrip from SEEMCIE10 where codigo = 'X755'),1,200) where CIEX = 'X75.5'
update CIEX set NOMBRE = substring((select descrip from SEEMCIE10 where codigo = 'X756'),1,200) where CIEX = 'X75.6'
update CIEX set NOMBRE = substring((select descrip from SEEMCIE10 where codigo = 'X757'),1,200) where CIEX = 'X75.7'
update CIEX set NOMBRE = substring((select descrip from SEEMCIE10 where codigo = 'X758'),1,200) where CIEX = 'X75.8'
update CIEX set NOMBRE = substring((select descrip from SEEMCIE10 where codigo = 'X759'),1,200) where CIEX = 'X75.9'


/* X76 */
update CIEX set NOMBRE = substring((select descrip from SEEMCIE10 where codigo = 'X760'),1,200) where CIEX = 'X76'
update CIEX set NOMBRE = substring((select descrip from SEEMCIE10 where codigo = 'X760'),1,200) where CIEX = 'X76.0'
update CIEX set NOMBRE = substring((select descrip from SEEMCIE10 where codigo = 'X761'),1,200) where CIEX = 'X76.1'
update CIEX set NOMBRE = substring((select descrip from SEEMCIE10 where codigo = 'X762'),1,200) where CIEX = 'X76.2'
update CIEX set NOMBRE = substring((select descrip from SEEMCIE10 where codigo = 'X763'),1,200) where CIEX = 'X76.3'
update CIEX set NOMBRE = substring((select descrip from SEEMCIE10 where codigo = 'X764'),1,200) where CIEX = 'X76.4'
update CIEX set NOMBRE = substring((select descrip from SEEMCIE10 where codigo = 'X765'),1,200) where CIEX = 'X76.5'
update CIEX set NOMBRE = substring((select descrip from SEEMCIE10 where codigo = 'X766'),1,200) where CIEX = 'X76.6'
update CIEX set NOMBRE = substring((select descrip from SEEMCIE10 where codigo = 'X767'),1,200) where CIEX = 'X76.7'
update CIEX set NOMBRE = substring((select descrip from SEEMCIE10 where codigo = 'X768'),1,200) where CIEX = 'X76.8'
update CIEX set NOMBRE = substring((select descrip from SEEMCIE10 where codigo = 'X769'),1,200) where CIEX = 'X76.9'


/* X77 */
update CIEX set NOMBRE = substring((select descrip from SEEMCIE10 where codigo = 'X770'),1,200) where CIEX = 'X77'
update CIEX set NOMBRE = substring((select descrip from SEEMCIE10 where codigo = 'X770'),1,200) where CIEX = 'X77.0'
update CIEX set NOMBRE = substring((select descrip from SEEMCIE10 where codigo = 'X771'),1,200) where CIEX = 'X77.1'
update CIEX set NOMBRE = substring((select descrip from SEEMCIE10 where codigo = 'X772'),1,200) where CIEX = 'X77.2'
update CIEX set NOMBRE = substring((select descrip from SEEMCIE10 where codigo = 'X773'),1,200) where CIEX = 'X77.3'
update CIEX set NOMBRE = substring((select descrip from SEEMCIE10 where codigo = 'X774'),1,200) where CIEX = 'X77.4'
update CIEX set NOMBRE = substring((select descrip from SEEMCIE10 where codigo = 'X775'),1,200) where CIEX = 'X77.5'
update CIEX set NOMBRE = substring((select descrip from SEEMCIE10 where codigo = 'X776'),1,200) where CIEX = 'X77.6'
update CIEX set NOMBRE = substring((select descrip from SEEMCIE10 where codigo = 'X777'),1,200) where CIEX = 'X77.7'
update CIEX set NOMBRE = substring((select descrip from SEEMCIE10 where codigo = 'X778'),1,200) where CIEX = 'X77.8'
update CIEX set NOMBRE = substring((select descrip from SEEMCIE10 where codigo = 'X779'),1,200) where CIEX = 'X77.9'


/* X78 */
update CIEX set NOMBRE = substring((select descrip from SEEMCIE10 where codigo = 'X780'),1,200) where CIEX = 'X78'
update CIEX set NOMBRE = substring((select descrip from SEEMCIE10 where codigo = 'X780'),1,200) where CIEX = 'X78.0'
update CIEX set NOMBRE = substring((select descrip from SEEMCIE10 where codigo = 'X781'),1,200) where CIEX = 'X78.1'
update CIEX set NOMBRE = substring((select descrip from SEEMCIE10 where codigo = 'X782'),1,200) where CIEX = 'X78.2'
update CIEX set NOMBRE = substring((select descrip from SEEMCIE10 where codigo = 'X783'),1,200) where CIEX = 'X78.3'
update CIEX set NOMBRE = substring((select descrip from SEEMCIE10 where codigo = 'X784'),1,200) where CIEX = 'X78.4'
update CIEX set NOMBRE = substring((select descrip from SEEMCIE10 where codigo = 'X785'),1,200) where CIEX = 'X78.5'
update CIEX set NOMBRE = substring((select descrip from SEEMCIE10 where codigo = 'X786'),1,200) where CIEX = 'X78.6'
update CIEX set NOMBRE = substring((select descrip from SEEMCIE10 where codigo = 'X787'),1,200) where CIEX = 'X78.7'
update CIEX set NOMBRE = substring((select descrip from SEEMCIE10 where codigo = 'X788'),1,200) where CIEX = 'X78.8'
update CIEX set NOMBRE = substring((select descrip from SEEMCIE10 where codigo = 'X789'),1,200) where CIEX = 'X78.9'


/* X79 */
update CIEX set NOMBRE = substring((select descrip from SEEMCIE10 where codigo = 'X790'),1,200) where CIEX = 'X79'
update CIEX set NOMBRE = substring((select descrip from SEEMCIE10 where codigo = 'X790'),1,200) where CIEX = 'X79.0'
update CIEX set NOMBRE = substring((select descrip from SEEMCIE10 where codigo = 'X791'),1,200) where CIEX = 'X79.1'
update CIEX set NOMBRE = substring((select descrip from SEEMCIE10 where codigo = 'X792'),1,200) where CIEX = 'X79.2'
update CIEX set NOMBRE = substring((select descrip from SEEMCIE10 where codigo = 'X793'),1,200) where CIEX = 'X79.3'
update CIEX set NOMBRE = substring((select descrip from SEEMCIE10 where codigo = 'X794'),1,200) where CIEX = 'X79.4'
update CIEX set NOMBRE = substring((select descrip from SEEMCIE10 where codigo = 'X795'),1,200) where CIEX = 'X79.5'
update CIEX set NOMBRE = substring((select descrip from SEEMCIE10 where codigo = 'X796'),1,200) where CIEX = 'X79.6'
update CIEX set NOMBRE = substring((select descrip from SEEMCIE10 where codigo = 'X797'),1,200) where CIEX = 'X79.7'
update CIEX set NOMBRE = substring((select descrip from SEEMCIE10 where codigo = 'X798'),1,200) where CIEX = 'X79.8'
update CIEX set NOMBRE = substring((select descrip from SEEMCIE10 where codigo = 'X799'),1,200) where CIEX = 'X79.9'


/* X81 */
update CIEX set NOMBRE = substring((select descrip from SEEMCIE10 where codigo = 'X810'),1,200) where CIEX = 'X81'
update CIEX set NOMBRE = substring((select descrip from SEEMCIE10 where codigo = 'X810'),1,200) where CIEX = 'X81.0'
update CIEX set NOMBRE = substring((select descrip from SEEMCIE10 where codigo = 'X811'),1,200) where CIEX = 'X81.1'
update CIEX set NOMBRE = substring((select descrip from SEEMCIE10 where codigo = 'X812'),1,200) where CIEX = 'X81.2'
update CIEX set NOMBRE = substring((select descrip from SEEMCIE10 where codigo = 'X813'),1,200) where CIEX = 'X81.3'
update CIEX set NOMBRE = substring((select descrip from SEEMCIE10 where codigo = 'X814'),1,200) where CIEX = 'X81.4'
update CIEX set NOMBRE = substring((select descrip from SEEMCIE10 where codigo = 'X815'),1,200) where CIEX = 'X81.5'
update CIEX set NOMBRE = substring((select descrip from SEEMCIE10 where codigo = 'X816'),1,200) where CIEX = 'X81.6'
update CIEX set NOMBRE = substring((select descrip from SEEMCIE10 where codigo = 'X817'),1,200) where CIEX = 'X81.7'
update CIEX set NOMBRE = substring((select descrip from SEEMCIE10 where codigo = 'X818'),1,200) where CIEX = 'X81.8'
update CIEX set NOMBRE = substring((select descrip from SEEMCIE10 where codigo = 'X819'),1,200) where CIEX = 'X81.9'


