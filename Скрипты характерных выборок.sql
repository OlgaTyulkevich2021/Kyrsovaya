USE rt;

---1.Перчень тарифов с абон. платой до 500 рублей
SELECT name_tariff, price
FROM home_internet
WHERE price < 500; 

---таблица,которая вышла:
name_tariff	price
dicta	450
eius	200
fugiat	310
necessitatibus	250
officia	200
autem	210
est	330

---2.Перчень тарифов, к которым можно подключить доп. опцию Роутер
SELECT home_internet.name_tariff
FROM home_internet 
JOIN addition_options ON home_internet.name_tariff = addition_options.name_tariff
WHERE name_option = 'router';

---таблица,которая вышла:
name_tariff
enim
commodi
fugiat

---3.Перчень тарифов и технологии со скоростью больше 100 мбит/с
SELECT access_techn_pon.name_tariff, access_techn_pon.technology
FROM access_techn_pon
WHERE speed > 100;


---таблица,которая вышла:
name_tariff,technology
corporis,PON
debitis,PON
modi,PON
beatae,PON
delectus,PON


---4.Перчень тарифов, в состав которых входит онлайн-кинотеатр WINK
SELECT access_techn_pon.name_tariff
FROM access_techn_pon
WHERE WINK = 'YES';

---таблица,которая вышла:
name_tariff
debitis
modi
beatae

---5.еречень 10 тарифов c максимальной скоростью
SELECT name_tariff, MAX(speed) AS max_speed
FROM access_techn_pro_pon
GROUP BY name_tariff
ORDER BY max_speed
LIMIT 10;

---таблица,которая вышла:
name_tariff,max_speed
necessitatibus,200
officia,200
autem,200
commodi,600

---6.Перечень 10 тарифов с минимальной стоимостью
SELECT name_tariff, MIN(price) AS min_price
FROM home_internet
GROUP BY name_tariff
ORDER BY min_price
LIMIT 10;

---таблица,которая вышла:
name_tariff,min_price
officia,200
eius,200
autem,210
necessitatibus,250
fugiat,310
est,330
dicta,450
cum,510
corporis,525
aut,530






















