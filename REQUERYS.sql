INSERT INTO admins VALUES (	NULL,"oscar","juarez","gomez","estudiante","12345");
INSERT INTO admins VALUES (	NULL,"rene","ordones","peralta","profesor","abcde");
INSERT INTO admins VALUES (	NULL,"carlos","riber","prado","docente","54321");
INSERT INTO admins VALUES (	NULL,"ana","coronilla","diaz","estudiante","wvxyz");


SELECT * from admins;
select * from admins WHERE POSITION = "estudiante";
select * from admins WHERE POSITION LIKE "%te";

UPDATE admins SET POSITION = "docente" WHERE id = 6;
SELECT * from admins;
DELETE  from admins where id = 6;
SELECT * from admins;


INSERT INTO buildings VALUES(NULL,"rio tiber","av rio tiber 22",
JSON_OBJECT("coord", JSON_OBJECT("lat", "7890001","lng","6534289")),
"riotiber.jpg","pilares","puntos de inovacion, libertad artes cultura y saberes ",
1,1,NULL
);
SELECT * FROM buildings;

UPDATE buildings SET is_active = false WHERE id = 1;


DESCRIBE buildings
