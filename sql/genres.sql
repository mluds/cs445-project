create table genres (
    id int not null auto_increment,
    description varchar(255) not null,
    primary key (id),
    unique (description)
);
