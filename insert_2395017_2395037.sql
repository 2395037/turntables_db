create schema turntables

create table users
(
    user_id   integer generated always as identity primary key,
    firstname text not null,
    lastname  text not null,
    email     text not null,
    phone     text,
    address   text,
    birthdate date
);

create table employee
(
    employee_id integer generated always as identity primary key,
    firstname   text not null,
    lastname    text not null,
    email       text not null,
    phone       text not null,
    address     text,
    hired_on    date not null,
    birthdate   date not null
);

create table artist
(
    artist_id   integer generated always as identity primary key,
    artist_name text not null

);

create table album
(
    album_id   integer generated always as identity primary key,
    album_name text    not null,
    genre      text    not null,
    format     text    not null,
    price      numeric(10,
                   2)  not null,
    in_stock   boolean not null,
    condition  text    not null,
    artist_id  int references artist
        (
         artist_id
            )
);

create table band
(
    band_id   integer generated always as identity primary key,
    band_name text not null,
    artist_id integer references artist
        (
         artist_id
            )
);

create table device
(
    device_id integer generated always as identity primary key,
    device    text    not null,
    price     numeric(10,
                  2)  not null,
    in_stock  boolean not null,
    condition text    not null
);

create table merchandise
(
    merchandise_id integer generated always as identity primary key,
    item_name      text    not null,
    price          numeric(10,
                       2)  not null,
    in_stock       boolean not null,
    description    text
);

create table live_show_qc
(
    show_id   integer generated always as identity primary key,
    show_date date not null,
    location  text not null,
    artist_id integer references artist
        (
         artist_id
            )
);

create table sale
(
    sale_id        integer generated always as identity primary key,
    sale_date      date   not null,
    price          numeric(10,
                       2) not null,
    payment_method text   not null,
    user_id        integer references users
        (
         user_id
            )             not null,
    employee_id    integer references employee
        (
         employee_id
            )             not null,
    album_id       integer references album
        (
         album_id
            ),
    device_id      integer references device
        (
         device_id
            ),
    merchandise_id integer references merchandise
        (
         merchandise_id
            )

);