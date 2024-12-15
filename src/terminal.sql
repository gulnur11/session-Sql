/*  Task author
 Server [localhost]:
Database [postgres]:
Port [5432]:
Username [postgres]: postgres
Password for user postgres:

psql (17.2)
WARNING: Console code page (866) differs from Windows code page (1251)
         8-bit characters might not work correctly. See psql reference
         page "Notes for Windows users" for details.
Type "help" for help.

postgres=# create table author (id serial primary key, name varchar, date_of_birth date, nationality varchar);
CREATE TABLE
postgres=# insert into author (name, date_of_birth, nationality) values('Charles Dickens', '1985-10-12', 'Englishman'),('Oscar Wilde',
 '1854-11-10', 'Englishman');
INSERT 0 2
postgres=# alter table author add column email varchar;
ALTER TABLE
postgres=# alter table author drop column nationality;
ALTER TABLE
postgres=# drop table author;
DROP TABLE
postgres=#  create table author (id serial primary key, name varchar, date_of_birth date, nationality varchar);
CREATE TABLE
postgres=#  alter table author add column email varchar;
ALTER TABLE
postgres=# alter table author drop column nationality;
ALTER TABLE
postgres=# alter table author add constraint a unique (email);
ALTER TABLE
postgres=# alter table author add constraint b not null (name);
ОШИБКА:  ошибка синтаксиса (примерное положение: "not")
LINE 1: alter table author add constraint b not null (name);
                                            ^
postgres=# alter table author alter column name set not null;
ALTER TABLE
postgres=# alter table author alter column name varchar to text;
ОШИБКА:  ошибка синтаксиса (примерное положение: "varchar")
LINE 1: alter table author alter column name varchar to text;
                                             ^
postgres=# alter table author alter column name type text;
ALTER TABLE
postgres=# alter table author rename to writer;
ALTER TABLE
postgres=# create table book ( id serial primary key, name varchar, published_year date, author varchar);
CREATE TABLE
postgres=# alter table book alter column name set not null;
ALTER TABLE
postgres=# alter table book alter column name set unique;
ОШИБКА:  ошибка синтаксиса (примерное положение: "unique")
LINE 1: alter table book alter column name set unique;
                                               ^
postgres=# alter table book add constraint a unique (name);
ОШИБКА:  отношение "a" уже существует
postgres=#  alter table book add constraint b unique (name);
ALTER TABLE
postgres=# INSERT INTO writer (name, date_of_birth, email) values  ('Leo Tolstoy', '1828-09-09', 'leo.tolstoy@example.com'),('Fyodor Dostoevsky', '1821-11-11', 'fyodor.dostoevsky@example.com');
INSERT 0 2
postgres=# INSERT INTO book (name, published_year, author) values  ('War and Peace', '1869-01-01', 'Leo Tolstoy'),('Crime and Punishment', '1866-01-01', 'Fyodor Dostoevsky'); ('Anna Karenina', '1877-01-01', 'Leo Tolstoy'), ('The Brothers Karamazov', '1880-01-01', 'Fyodor Dostoevsky'),('Resurrection', '1899-01-01', 'Leo Tolstoy'), ('Notes from Underground', '1864-01-01', 'Fyodor Dostoevsky');
INSERT 0 2
ОШИБКА:  ошибка синтаксиса (примерное положение: "'Anna Karenina'")
LINE 1: ('Anna Karenina', '1877-01-01', 'Leo Tolstoy'), ('The Brothe...
         ^
postgres=# INSERT INTO book  (name, published_year, author) values('Anna Karenina', '1877-01-01', 'Leo Tolstoy'), ('The Brothers Karam
azov', '1880-01-01', 'Fyodor Dostoevsky'),('Resurrection', '1899-01-01', 'Leo Tolstoy'), ('Notes from Underground', '1864-01-01', 'Fyo
dor Dostoevsky');
INSERT 0 4
postgres=#
 */