Exporting the database into csv files:

```
sqlite> .headers on
sqlite> .mode csv
sqlite> .output correctedFileUrl.csv
sqlite> select * from correctedFileUrl;
sqlite> .output changeIdStatus.csv
sqlite> select * from changeIdStatus;
sqlite> .quit
```
