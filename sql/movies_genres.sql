create table movies_genres (
    mid int not null,
    gid int not null,
    foreign key (mid) references movies(id),
    foreign key (gid) references genres(id)
);