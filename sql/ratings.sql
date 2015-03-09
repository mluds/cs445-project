create table ratings (
    uid int not null,
    mid int not null,
    foreign key (uid) references users(id),
    foreign key (mid) references movies(id)
);