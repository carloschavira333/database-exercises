USE codeup_test_db;
SHOW TABLES;
CREATE INDEX index_name ON albums (record);
DESCRIBE albums;
ALTER TABLE albums
    ADD UNIQUE (record);