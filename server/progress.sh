x=`sqlite3 revisionCrawler3/db/db.sqlite3 "select max(change_id) from changeIdStatus"`
echo "scale=4; $x; 200001; 100 * ($x - 200001) / 50000" | bc

x=`sqlite3 revisionCrawler2/db/db.sqlite3 "select max(change_id) from changeIdStatus"`
echo "scale=4; $x; 250001; 100 * ($x - 250001) / 50000" | bc

x=`sqlite3 revisionCrawler/db/db.sqlite3 "select max(change_id) from changeIdStatus"`
echo "scale=4; $x; 300001; 100 * ($x - 300001) / 50000" | bc
