create table genres (
    id int not null auto_increment,
    name varchar(255) not null,
    description text,
    primary key (id),
    unique (name)
);
