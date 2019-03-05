DROP TABLE IF EXISTS todo;
CREATE TABLE todo
(
	id varchar(36) not null primary key,
	description varchar(255) not null,
	created timestamp,
	modified timestamp,
	completed boolean
);

insert into todo (id, description, created, modified, completed)
values ('8a8800654521df335a55465654a321', 'Read a Book', '2019-02-19 07:42:44.136', '2019-02-19 07:42:44.136' , true);

insert into todo (id, description, created, modified, completed)
values ('155dd54651321dsvg455465654a321', 'Buy movie tickets', '2019-02-19 07:42:44.136', '2019-02-19 07:42:44.136' , false);

insert into todo (id, description, created, modified, completed)
values ('8a8sd116512321d35adzvzv241saf1', 'Clean my room', '2019-02-19 07:42:44.136', '2019-02-19 07:42:44.136' , true);

insert into todo (id, description, created, modified, completed)
values ('fsfsfs54521df335a554asf343a321', 'Call home', '2019-02-19 07:42:44.136', '2019-02-19 07:42:44.136' , true);

insert into todo (id, description, created, modified, completed)
values ('15556b56bdnm57bnjgf5n5657nm421', 'Call sisters', '2019-02-19 07:42:44.136', '2019-02-19 07:42:44.136' , false);

insert into todo (id, description, created, modified, completed)
values ('6456nk45645m54g4g44l457e8658l1', 'Call uncle', '2019-02-19 07:42:44.136', '2019-02-19 07:42:44.136' , true);