create schema if not exists turntables;

set search_path to turntables;

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

create table band
(
    band_id   integer generated always as identity primary key,
    band_name text not null
);

create table artist
(
    artist_id   integer generated always as identity primary key,
    artist_name text not null,
    band_id integer,
    CONSTRAINT fk_band
        foreign key (band_id)
        references band(band_id)
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
    artist_id integer,
    band_id integer,
    CONSTRAINT fk_customer
      FOREIGN KEY(artist_id)
	  REFERENCES artist(artist_id),
    CONSTRAINT fk_band
        FOREIGN KEY (band_id)
        REFERENCES band(band_id)
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
    location  text not null
);

create table sale
(
    sale_id        integer generated always as identity primary key,
    sale_date      date   not null,
    price          numeric(10,
                       2) not null,
    payment_method text   not null,
    user_id integer not null,
    employee_id integer not null,
    album_id integer,
    device_id integer,
    merchandise_id integer
    constraint fk_user
        references users(user_id),
    constraint fk_employee
        foreign key (employee_id)
        references employee(employee_id),
    constraint fk_album
        foreign key (album_id)
        references album(album_id),
    constraint fk_device
        foreign key (device_id)
        references device(device_id),
    constraint fk_merchandise
        foreign key (merchandise_id)
        references merchandise(merchandise_id)
);

create table band_show
(
    band_id integer,
    show_id integer,
    constraint  band_show_pk
        primary key (band_id, show_id),
    CONSTRAINT fk_band
        FOREIGN KEY (band_id)
        REFERENCES band(band_id),
    constraint fk_show
        foreign key (show_id)
        references live_show_qc(show_id)
);

create table album_sale
(
    album_id integer,
    sale_id integer,
    constraint  album_sale_pk
        primary key (album_id, sale_id),
    CONSTRAINT fk_album
        FOREIGN KEY (album_id)
        REFERENCES album(album_id),
    constraint fk_sale
        foreign key (sale_id)
        references sale(sale_id)
);

create table device_sale
(
    device_id integer,
    sale_id integer,
    constraint  device_sale_pk
        primary key (device_id, sale_id),
    CONSTRAINT fk_album
        FOREIGN KEY (device_id)
        REFERENCES device(device_id),
    constraint fk_sale
        foreign key (sale_id)
        references sale(sale_id)
);

create table merch_sale
(
    merchandise_id integer,
    sale_id integer,
    constraint  merch_sale_pk
        primary key (merchandise_id, sale_id),
    CONSTRAINT fk_album
        FOREIGN KEY (merchandise_id)
        REFERENCES merchandise(merchandise_id),
    constraint fk_sale
        foreign key (sale_id)
        references sale(sale_id)
);

create table artist_show
(
    artist_id integer,
    show_id integer,
    constraint  artist_show_pk
        primary key (artist_id, show_id),
    CONSTRAINT fk_band
        FOREIGN KEY (artist_id)
        REFERENCES artist(artist_id),
    constraint fk_show
        foreign key (show_id)
        references live_show_qc(show_id)
)