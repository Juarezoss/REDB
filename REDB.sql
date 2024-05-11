show databases;


create DATABASE realstate1;


use realstate1;


create TABLE admins(

	id INT(11) unsigned auto_increment not NULL primary KEY,
	name Varchar (200) not null,
	middlename VARCHAR(200) not null,
	lastname  VARCHAR(200) not null,
	position VARCHAR(200) not null,
	PASSWORD VARCHAR(500) NOT NULL
);

describe admins;



create TABLE buildings(
	id INT (11) unsigned auto_increment not NULL primary KEY,
	NAME VARCHAR(200) not NULL,
	adress VARCHAR(200) not NULL,
	LOCATION JSON not NULL,
	picture VARCHAR(200) not NULL DEFAULT "generic.jpg",
	PIC_CAPTION VARCHAR(200) NOT NULL,
	DESCRIPTION VARCHAR (200),
	is_active tinyint (1) NOT NULL DEFAULT 1,
	admin_id  INT(11) unsigned not NULL,
	CREATE_AT TIMESTAMP,
	
	FOREIGN key (admin_id) REFERENCES admins(id)
);

DESCRIBE admins;
DESCRIBE buildings;

DROP TABLE admins;

drop TABLE buildings;
DROP TABLE admins;

