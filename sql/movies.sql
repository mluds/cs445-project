create table movies (
    id int not null auto_increment,
    title varchar(255) not null,
    year smallint not null,
    mpaa_rating varchar(255),
    primary key (id),
    constraint chk_year check (year > 1800)
);
