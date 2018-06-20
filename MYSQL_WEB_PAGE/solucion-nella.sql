UPDATE hospital.prensa_mov a
INNER JOIN hospital_backup.prensa_mov b ON b.prensa_mov = a.prensa_mov
SET a.galeria = b.galeria
WHERE b.prensa_mov <= 223

