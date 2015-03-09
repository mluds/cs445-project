create table movies_directors (
    mid int not null,
    did int not null,
    foreign key (mid) references movies(id),
    foreign key (did) references directors(id)
);