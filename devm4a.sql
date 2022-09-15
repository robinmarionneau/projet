create table play (
        id_movie integer not null, 
        id_actor integer not null);

create table stars (id integer auto_increment, 
        birthdate date, 
        name varchar(100) not null, 
        primary key (id));

alter table movies add constraint FK5sptslekmtqse3ukuv4s9iyp6 foreign key (id_director) references stars;
alter table play add constraint FK9lf0huabanmd36i9ffruceti9 foreign key (id_actor) references stars;
alter table play add constraint FKn74w97h2tnfs8kq7ockm5kvu3 foreign key (id_movie) references movies;
