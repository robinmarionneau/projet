create table movies (
        id integer auto_increment,
        duration integer,
        poster_uri varchar(255),
        synopsis varchar(255),
        title varchar(300) not null,
        year integer not null,
        id_director integer,
        CONSTRAINT pk_movie primary key(id)
);
