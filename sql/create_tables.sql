create table people (
    id int not null auto_increment,
    name varchar(255) not null,
    primary key (id)
);

create table genres (
    id int not null auto_increment,
    name varchar(255) not null,
    primary key (id),
    unique (name)
);

create table mpaa_ratings (
    id int not null auto_increment,
    rating varchar(255),
    description text,
    primary key (id)
);

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

create table actors (
    id int not null auto_increment,
    pid int not null,
    primary key (id),
    foreign key (pid) references people(id)
);

create table directors (
    id int not null auto_increment,
    pid int not null,
    primary key (id),
    foreign key (pid) references people(id)
);

create table producers (
    id int not null auto_increment,
    pid int not null,
    primary key (id),
    foreign key (pid) references people(id)
);

create table movies (
    id int not null auto_increment,
    title varchar(255) not null,
    year smallint not null,
    rid int not null,
    primary key (id),
    foreign key (rid) references mpaa_ratings(id),
    constraint chk_year check (year > 1800)
);

create table friends (
    uid1 int not null,
    uid2 int not null,
    foreign key (uid1) references users(id),
    foreign key (uid2) references users(id),
    unique (uid1, uid2)
);

create table activities (
    id int not null auto_increment,
    content text,
    time timestamp,
    uid int not null,
    primary key (id),
    foreign key (uid) references users(id)
);

create table movies_actors (
    mid int not null,
    aid int not null,
    role varchar(255),
    foreign key (mid) references movies(id),
    foreign key (aid) references actors(id)
);

create table movies_directors (
    mid int not null,
    did int not null,
    foreign key (mid) references movies(id),
    foreign key (did) references directors(id),
    unique (mid, did)
);

create table movies_producers (
    mid int not null,
    pid int not null,
    foreign key (mid) references movies(id),
    foreign key (pid) references producers(id),
    unique (mid, pid)
);

create table movies_genres (
    mid int not null,
    gid int not null,
    foreign key (mid) references movies(id),
    foreign key (gid) references genres(id),
    unique (mid, gid)
);

create table ratings (
    uid int not null,
    mid int not null,
    foreign key (uid) references users(id),
    foreign key (mid) references movies(id),
    unique (uid, mid)
);