create table movies_actors (
    mid int not null,
    aid int not null,
    role varchar(255),
    foreign key (mid) references movies(id),
    foreign key (aid) references actors(id)
);