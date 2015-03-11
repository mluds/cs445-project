tables=(
    people
    genres
    mpaa_ratings
    users
    actors
    directors
    producers
    movies
    friends
    activities
    movies_actors
    movies_directors
    movies_producers
    movies_genres
    ratings
)

for (( i = ${#tables[@]}-1; i >= 0; i-- )); do
    mysql -h cs445sql --user=$1 --password=$2 FLP -e "drop table ${tables[i]}"
done

for t in ${tables[@]}; do
    mysql -h cs445sql --user=$1 --password=$2 FLP < sql/create_tables/${t}.sql
done

mysqlimport -h cs445sql --user=$1 --password=$2 -c name -L FLP testdata/people.txt
mysqlimport -h cs445sql --user=$1 --password=$2 -c name -L FLP testdata/actors.txt
mysqlimport -h cs445sql --user=$1 --password=$2 -c name -L FLP testdata/directors.txt
mysqlimport -h cs445sql --user=$1 --password=$2 -c name -L FLP testdata/producers.txt

