c1="mysql -h cs445sql --user=$1 --password=$2 FLP"
c2="mysqlimport -h cs445sql --user=$1 --password=$2 -L FLP"

$c1 < sql/drop_tables.sql
$c1 < sql/create_tables.sql

$c2 -c name data/people.txt
$c2 data/tmp_actors.txt
$c2 data/tmp_directors.txt
$c2 data/tmp_producers.txt
$c2 -c email, data/users.txt

$c1 < sql/convert_tables.sql
$c1 < sql/drop_tmp_tables.sql
