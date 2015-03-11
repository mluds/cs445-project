create table users (
    id int not null auto_increment,
    email varchar(255) not null,
    username varchar(255) not null,
    pw_hash binary(60) not null,
    dob date,
    gender char(1),
    location varchar(255),
    primary key (id),
    unique (email)
);
