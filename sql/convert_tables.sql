insert into actors (pid)
    select p.id
    from people as p join
    	 tmp_actors as t on p.name = t.name;