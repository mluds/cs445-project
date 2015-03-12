insert into actors (pid)
    select p.id
    from people as p join
    tmp_actors as t on p.name = t.name;

insert into directors (pid)
    select p.id
    from people as p join
    tmp_directors as t on p.name = t.name;

insert into producers (pid)
    select p.id
    from people as p join
    tmp_producers as t on p.name = t.name;