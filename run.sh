c1="mysql -h cs445sql --user=$1 --password=$2 FLP"
c2="mysqlimport -h cs445sql --user=$1 --password=$2 -L FLP"

$c1 < sql/drop_tables.sql
$c1 < sql/create_tables.sql

$c2 -c name data/people.txt
$c2 -c rating,description data/mpaa_ratings.txt
$c2 -c email,name,password,age,gender,location data/users.txt
$c2 -c name data/tmp_actors.txt
$c2 -c name data/tmp_directors.txt
$c2 -c name data/tmp_producers.txt
$c2 -c title,year,rating data/tmp_movies.txt
$c2 -c email,title,year,rating data/tmp_ratings.txt

$c1 < sql/convert_tables.sql
$c1 < sql/drop_tmp_tables.sql
