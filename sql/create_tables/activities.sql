create table activities (
    id int not null auto_increment,
    content text,
    time timestamp,
    uid int not null,
    primary key (id),
    foreign key (uid) references users(id)
);