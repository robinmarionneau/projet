create table stars (
          id integer generated by default as identity, 
          birthdate date, 
          name varchar(100) not null, 
          primary key (id))
