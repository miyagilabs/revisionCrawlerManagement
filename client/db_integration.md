Start with the target database

```
sqlite3 db.sqlite3
```

Define the source databases to be merged:

```
sqlite> attach 'db2.sqlite3' as toMerge2; 
sqlite> attach 'db3.sqlite3' as toMerge3; 
```

Merge each table per source database:

```
sqlite> BEGIN;
sqlite> insert into changeIdStatus select * from toMerge2.changeIdStatus;
sqlite> COMMIT;

sqlite> BEGIN;
sqlite> insert into correctedFileUrl select * from toMerge2.correctedFileUrl;
sqlite> COMMIT;
```


```
sqlite> BEGIN;
sqlite> insert into changeIdStatus select * from toMerge3.changeIdStatus;
sqlite> COMMIT;

sqlite> BEGIN;
sqlite> insert into correctedFileUrl select * from toMerge3.correctedFileUrl;
sqlite> COMMIT;
```

Finally detach the databases:

```
sqlite> detach database toMerge2; 
sqlite> detach database toMerge3;
```
