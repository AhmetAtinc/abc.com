use sys;
-- Create işçi tablosu alanları worker_id,work_name,work_salary şeklindedir.
-- worker_id, worker_id_pk adında primary key sahip olacak
-- İşçiler tablosuna 4 kayıt ekleyin
-- Konsoldaki tabloya bakın
CREATE TABLE worker 
(
    worker_id char(3),
    worker_name VARCHAR(50),
    worker_salary int not null,
     CONSTRAINT worker_id_pk PRIMARY KEY (worker_id)
);
--  DROP TABLE worker;
INSERT INTO WORKER VALUES ('100','oli can', 1200);
INSERT INTO WORKER VALUES ('102','Veli Han', 2000);
INSERT INTO WORKER VALUES ('103','Ayse Kan', 7000);
INSERT INTO WORKER VALUES ('104', 'Angie Ocean', 8500);
SELECT * FROM WORKER ;

/* Veli Han'ın maaşını en yüksek maaştan yüzde 20 daha azına artırin
 (en yuksek maasin yuzde 20 oraninda azaltarak veli han beyin maasi olarak update edin) */

update worker 
set worker_salary=(select max(worker_salary) from (select * from worker) as w) - ((select max(worker_salary) from (select * from worker) as v)*0.20)
where worker_name='veli han';

-- Ali Can'ın maaşını en düşük maaştan yüzde 30 daha fazla düşürun
-- En dusuk maasi yuzde 30 arttirim ve ali can beyin öevcud yasi ile update edin
update worker 
set worker_salary=(select min(worker_salary)*1.30 from (select * from worker ) as m)
where worker_name = 'oli can';

-- Maaş ortalama maaştan düşükse maaşları 1000 artırın
update worker
set worker_salary = worker_salary+ 1000
where worker_salary= (select avg(worker_salary) from(select worker_salary from worker) as b);


-- Maaşın ortalama maaştan az olması durumunda maaşları ortalama maaşa eşitleyin

update worker 
set worker_salary = (select avg(worker_salary)from (select * from worker)as s)
where worker_salary < (select avg(worker_salary)from (select * from worker)as t);

