create table movies_producers (
    mid int not null,
    pid int not null,
    foreign key (mid) references movies(id),
    foreign key (pid) references producers(id),
    unique (mid, pid)
);