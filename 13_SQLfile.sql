/*============================
TABLO OLUSTURMA (CRUD-- create)
===============================*/
use sys;
CREATE TABLE student
(id varchar(4),
name varchar(25),
age int 
);
INSERT INTO student VALUES('1001', 'MEHMET ALİ', 25);
INSERT INTO student VALUES('1002', 'AYSE YILMAZ', 34);
INSERT INTO student VALUES('1003', 'JOHN STAR', 56);
INSERT INTO student VALUES('1004', 'MARY BROWN', 17);

select * from student;
use sys;
select * from urunler;