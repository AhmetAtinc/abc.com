use sys;
CREATE TABLE people 
(
    ssn CHAR (9),
    name VARCHAR(50),
    address VARCHAR(80)
);
-- DROP TABLE PEOPLE;
INSERT INTO PEOPLE VALUES (123456789, 'Mark Star', 'Florida');
INSERT INTO PEOPLE VALUES (234567890, 'Angie Way', 'Virginia');
INSERT INTO PEOPLE VALUES (345678901, 'Marry Tien', 'New Jersey');
INSERT INTO PEOPLE (ssn, address) VALUES (456789012, 'Michigan');
INSERT INTO PEOPLE (ssn, address) VALUES (567890123, 'California');
INSERT INTO PEOPLE (ssn, name) VALUES (567890123, 'California');
SELECT * FROM PEOPLE ;

    -- Boş adları "ad daha sonra eklenecek" olarak değiştirin
    
    update people
    set name='Ad daha sonra eklenecek'
    where name is null;
    
-- Boş adresleri 'Adres daha sonra eklenecek' olarak değiştirin

update people
set address = 'Adres daha sonra eklenecek'
where address is null;


-- people tablosunda 'Daha sonra eklenecek' tüm boş değerleri değiştirin

update people
set name = coalesce(name, 'daha sonra eklenecek');

