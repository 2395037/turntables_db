set search_path to turntables;

insert into users (firstname, lastname, email, phone, address, birthdate)
values ('John', 'Doe', 'john@example.com', '5141231234', '21st street Mont-Royal', '1990-01-21');

insert into users (firstname, lastname, email, phone, address, birthdate)
values ('Mary', 'Doe', 'mary@doe.com', '4381231234', '32 avenue Montreal', '1985-11-01');

insert into users (firstname, lastname, email, phone, address, birthdate)
values ('Sam', 'Johnson', 'sam@johnson.com', '5140001111', '2011 st.Laval', '1993-12-12');

insert into users (firstname, lastname, email, phone, address, birthdate)
values ('Alexa', 'Harrison', 'harrison@alexa.com', '4382340987', 'Rue de Chambly ', '1989-09-21');

insert into users (firstname, lastname, email)
values ('Elizabeth', 'Queen', 'elizabeth@yahoo.com');

insert into users (firstname, lastname, email, phone)
values ('Raul', 'Pedro', 'pedro@hotmail.com', '5141231234');

insert into users (firstname, lastname, email, phone, address, birthdate)
values ('Charles', 'De-Gaulles', 'charles@hotmail.fr', '4382340987', 'Quebec City Avenue', '1995-10-26');

insert into users (firstname, lastname, email, birthdate)
values ('Jennifer', 'Ramirez', 'jennifer@gmail.com', '1995-10-26');

insert into employee (firstname, lastname, email, phone, address, hired_on, birthdate)
values ('Smith', 'Brown', 'smith@example.com', '5141233231', '21st Rene-Leveque','2012-01-21', '1975-01-21');

insert into employee (firstname, lastname, email, phone, address, hired_on, birthdate)
values ('Martin', 'Tremblay', 'martin@example.com', '5141244431', 'St-Laurent Street','2016-11-21', '1979-11-01');

insert into employee (firstname, lastname, email, phone, address, hired_on, birthdate)
values ('Roy', 'Gagnon', 'roy@example.com', '4388438430', 'Maisonneuve Street','2014-05-15','1972-03-11');

insert into employee (firstname, lastname, email, phone, address, hired_on, birthdate)
values ('Martin', 'Tremblay', 'martin@example.com', '5141244431', 'St-Laurent Street','2002-01-21', '1979-11-01');

insert into employee (firstname, lastname, email, phone, address, hired_on, birthdate)
values ('Wilson', 'MacDonald', 'macdonald@example.com', '4389090099', 'St-Catherine West','2015-03-22', '1983-07-12');

insert into employee (firstname, lastname, email, phone, address, hired_on, birthdate)
values ('Alex', 'Campbell', 'campbell@example.com', '4389111199', 'Charles East','2020-09-12', '1990-08-19');

insert into employee (firstname, lastname, email, phone, hired_on, birthdate)
values ('Justin', 'Robinson', 'robinson@example.com', '5144494242','2021-06-01', '1995-03-14');

insert into employee (firstname, lastname, email, phone, hired_on, birthdate)
values ('Emily', 'Clark', 'clark@example.com', '5149321199','2018-12-26', '1992-11-21');

insert into band (band_name) values('Mes Aïeux');
insert into band (band_name) values('The Beatles');

insert into artist (artist_name) values ('Celine Dion');
insert into artist (artist_name) values ('Eric Lapointe');
insert into artist (artist_name) values ('Isabelle Boulay');
insert into artist (artist_name) values ('Garou');
insert into artist (artist_name) values ('Marie-Mai');
insert into artist (artist_name) values ('Ginette Reno');

insert into artist (artist_name) values ('Marie-Hélène Fortin');
insert into artist (artist_name) values ('Stéphane Archambault');
insert into artist (artist_name) values ('Frédéric Giroux');
insert into artist (artist_name) values ('Marc-André Paquet ');
insert into artist (artist_name) values ('Benoît Archambault');
insert into artist (artist_name) values ('Luc Lemire');
insert into artist (artist_name, band_id) VALUES ('George Harrison', 2);
insert into artist (artist_name, band_id) VALUES ('John Lennon', 2);
insert into artist (artist_name, band_id) VALUES ('Paul McCartney', 2);
insert into artist (artist_name, band_id) VALUES ('Ringo Starr', 2);
--
insert into album (album_name, genre, format, price, in_stock, condition, artist_id, band_id) values ('A new day has come', 'R&B', 'CD', 16.76, true, 'new', 1, null);
insert into album (album_name, genre, format, price, in_stock, condition, artist_id, band_id) values ('Heart Go On', 'Romantic', 'Cassette', 19.56, true, 'new', 2, null);
insert into album (album_name, genre, format, price, in_stock, condition, artist_id, band_id) values ('The Stars', 'Rock', 'Disk', 22.99, true, 'used', 3, null);
insert into album (album_name, genre, format, price, in_stock, condition, artist_id, band_id) VALUES ('White Album', 'pop', 'vinyl', 35.99, true, 'used', null, 2);
insert into album (album_name, genre, format, price, in_stock, condition, artist_id, band_id) VALUES ('All things must pass', 'pop', 'vinyl', 30.99, true, 'used', 13, 2);
insert into album (album_name, genre, format, price, in_stock, condition, artist_id, band_id) VALUES ('Imagine', 'pop', 'vinyl', 33.99, true, 'used', 14, 2);

insert into device (device, price, in_stock, condition) values ('Sony USB Turntable with Bluetooth Connectivity', 312.21, true, 'new');
insert into device (device, price, in_stock, condition) values ('Denon DP-300F Fully Automatic Turntable with Built-in Phono Equalizer', 639.99, true, 'new');
insert into device (device, price, in_stock, condition) values ('Sylvania Nostalgia 5-in-1 CD/ Radio/ Cassette/ AUX Turntable', 114.51, true, 'used');
insert into device (device, price, in_stock, condition) values ('Portable Suitcase Turntable', 442.91, false, 'used');
insert into device (device, price, in_stock, condition) values ('Audio Technica Fully Automatic Bluetooth Wireless Belt-Drive Turntable', 232.99, true, 'new');
insert into device (device, price, in_stock, condition) values ('Bethoveen Inspired Limited Edition Turntable', 1312.61, true, 'used');
insert into device (device, price, in_stock, condition) values ('1800s Turntable', 2311.21, true, 'used');

insert into live_show_qc (show_date, location) VALUES ('2024-07-22', 'Old city');

insert into artist_show (artist_id, show_id) VALUES ('2', '1');
insert into artist_show (artist_id, show_id) VALUES ('15', '1');

insert into band_show (band_id, show_id) VALUES ('1', '1');