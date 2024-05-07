show databases;


create DATABASE realstate1;


use realstate1;


create TABLE admins(

	id INT(11) unsigned auto_increment not NULL primary KEY,
	name Varchar (200) not null,
	middlename VARCHAR(200) not null,
	lastname  VARCHAR(200) not null,
	position VARCHAR(200) not null
	
);

describe admins;



create TABLE buildings(
	id INT (11) unsigned auto_increment not NULL primary KEY,
	NAME VARCHAR(200) not NULL,
	adress VARCHAR(200) not NULL,
	LOCATION VARCHAR(200) not NULL,
	picture VARCHAR(200) not NULL DEFAULT "generic.jpg",
	admin_id  INT(11) unsigned not NULL,
	
	FOREIGN key (admin_id) REFERENCES admins(id)
);

DESCRIBE buildings
