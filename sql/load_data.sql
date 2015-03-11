load data local infile './testdata/people.txt'
into table people
fields terminated by '\t'
(name);

