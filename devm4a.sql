create table play (
        id_movie integer not null, 
        id_actor integer not null);
alter table movies add constraint fk_moviesstars foreign key (id_director) references stars(id);
alter table play add constraint fk_playstars foreign key (id_actor) references stars(id);
alter table play add constraint fk_playmovies foreign key (id_movie) references movies(id);
