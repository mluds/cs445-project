create table friends (
    uid1 int not null,
    uid2 int not null,
    foreign key (uid1) references users(id),
    foreign key (uid2) references users(id),
    unique (uid1, uid2)
);