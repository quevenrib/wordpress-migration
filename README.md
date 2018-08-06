# SQL commands for database migration
Repository with basic commands for WordPress migration. Fell free to improve.

To use it you must replace the table prefix and your old and new URLs.

[Here](https://github.com/quevenrib/wordpress-migration/all-database-commands.sql) is the file with the commands below

## Change "siteurl" or "homeurl"
```sql
UPDATE wp_options SET option_value = replace(option_value, 'http://www.oldurl.com', 'http://www.newurl.com')
WHERE option_name = 'home' OR option_name = 'siteurl';
```
## Change GUID
```sql
UPDATE wp_posts SET guid = REPLACE (guid, 'http://www.oldurl.com', 'http://www.newurl.com');
```

## Change content URL
```sql
UPDATE wp_posts SET post_content = REPLACE (post_content, 'http://www.oldurl.com', 'http://www.newurl.com');
```

## Change post meta
```sql
UPDATE wp_postmeta SET meta_value = REPLACE (meta_value, 'http://www.oldurl.com','http://www.newurl.com');
```
