use TRAMITE

select * from dbo.EXPEDIENTE where expediente like '15TD077%' order by EXPEDIENTE asc
select * from dbo.EXPEDIENTE where expediente like '15TD081%' order by EXPEDIENTE asc
select * from dbo.EXPEDIENTE where expediente like '15TD081%' order by EXPEDIENTE asc

select * from dbo.EXPEDIENTE where expediente like '15TD07%' order by EXPEDIENTE asc
select * from dbo.EXPEDIENTE where expediente like '15TD081%' order by EXPEDIENTE asc


/* VER EXPEDIENTE CON DETALLE */
DECLARE @lcexpediente varchar(11) = '17TD0822500'
select * from dbo.EXPEDIENTE where expediente = @lcexpediente
SELECT * FROM dbo.EXPEDIENTE_DETALLE WHERE EXPEDIENTE = @lcexpediente
SELECT * FROM ACTOR  WHERE ACTOR = (select ACTOR from dbo.EXPEDIENTE where expediente = @lcexpediente)



select * from dbo.EXPEDIENTE where expediente = '17TD0822500'
SELECT * FROM dbo.EXPEDIENTE_DETALLE WHERE EXPEDIENTE = '17TD0822500'

SELECT * FROM ACTOR  WHERE ACTOR = (select ACTOR from dbo.EXPEDIENTE where expediente = @lcexpediente)

