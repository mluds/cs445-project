create table movies (
    id int not null auto_increment,
    title varchar(255) not null,
    year smallint not null,
    rid int not null,
    primary key (id),
    foreign key (rid) references mpaa_ratings(id),
    constraint chk_year check (year > 1800)
);
