create table actors (
    id int not null auto_increment,
    pid int not null,
    primary key (id),
    foreign key (pid) references people(id)
);
