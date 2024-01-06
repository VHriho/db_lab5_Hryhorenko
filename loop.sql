-- Додає ще 10 розробників з генерованими ID та відповідними іменами

-- (для очищення таблиці до початкового стану розкоментувати нижче наведений код)
-- delete from developer where developer_id >= 11;


select * from developer;

DO $$
 DECLARE
     developer_id   developer.developer_id%TYPE;
     name           developer.name%TYPE;
 BEGIN
     developer_id := 11;
     name := 'dev_';
     FOR counter IN 0..10
         LOOP
            INSERT INTO developer (developer_id, name)
             VALUES (counter + developer_id, name || counter);
         END LOOP;
 END;
 $$