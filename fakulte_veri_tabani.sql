create database fakulte;
use fakulte;
create table bolum (
	id int not null auto_increment primary key,
    bolum_adi varchar(40));
create table anabilim (
	id int not null auto_increment primary key,
    bolum_id char(6));
create table ogrenci (
	id int not null auto_increment primary key,
    isim varchar(40),
    no varchar(20),
    abd_id varchar(10));
create table ders (
	id int not null auto_increment primary key,
    ders_adi varchar(70),
    kredi int not null );
create table ogrenci_ders (
	id int not null auto_increment primary key,
    ogrenci_id int not null,
    ders_id int not null,
    vize int,
    final int);
show databases;
select * from ogrenci;

insert into `bolum`  (id, bolum_adi) values (null, 'Bilgisayar Muhendisligi'),(null, 'Endustri Muhendisligi'),
(null, 'Orman Muhendisligi'), (null, 'Yazilim Muhendisligi'),(null, 'Gida Muhendisligi');

select * from bolum; 

insert into `anabilim` (id, bolum_id) values (null, 'BT001'),(null, 'BT002'),(null, 'BT003'),
(null, 'BT004'),(null, 'BT005');

insert into `ogrenci` (id, isim, no, abd_id) values (null, 'Berkin', '201910210003', '1'),
(null, 'Canberk', '201910310001', '2'), (null, 'Murat', '201911110004', '3'),
(null, 'Diya', '201911010005', '4'), (null, 'Yaren', '201911010004', '5');

insert into `ders` (id, ders_adi, kredi) values (null, 'Programlama', '5'),(null, 'Kimya', '4'),
(null, 'Bitki', '3'), (null, 'Matematik', '5'),(null, 'Algoritma', '2');
select * from ders;

insert into `ogrenci_ders` (id, ogrenci_id, ders_id, vize, final) values (null, '1', '5', '75','60'),
(null, '2', '2', '100','90'),(null, '3', '3', '60','50'),(null, '4', '1', '60','80'),(null, '5', '4', '60','60');
select * from ogrenci_ders;