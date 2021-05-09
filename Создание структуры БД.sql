CREATE DATABASE rt;
USE rt;

---Таблица "Услуги Домашний интернет"
CREATE TABLE home_internet (
id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT "Идентификатор строки", 
name_tariff VARCHAR(100) NOT NULL UNIQUE COMMENT "Имя Тарифа",
technology VARCHAR(100) NOT NULL COMMENT "Технология используемого интернета",
price VARCHAR(100) NOT NULL,
con_cost VARCHAR(100) NOT NULL COMMENT "Стоимость подключения к тарифу"
);

--Таблица Тарифа "Базовый"
CREATE TABLE base_ADSL (
id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT "Идентификатор строки", 
name_tariff VARCHAR(100) NOT NULL COMMENT "Имя Тарифа",
technology VARCHAR(100) NOT NULL COMMENT "Технология используемого интернета",
speed VARCHAR(100) NOT NULL COMMENT "Скорость используемого интернета мбит/c",
price VARCHAR(100) NOT NULL COMMENT "Абонентская плата",
con_cost VARCHAR(100) NOT NULL COMMENT "Стоимость подключения к тарифу"
);

--Таблица Тарифа "Игровой ADSL"
CREATE TABLE game_ADSL (
id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT "Идентификатор строки", 
name_tariff VARCHAR(100) NOT NULL COMMENT "Имя Тарифа",
technology VARCHAR(100) NOT NULL COMMENT "Технология используемого интернета",
speed VARCHAR(100) NOT NULL COMMENT "Скорость используемого интернета мбит/c",
bonus VARCHAR(100) NOT NULL COMMENT "Игровые Бонусы",
wink VARCHAR(100) NOT NULL COMMENT "Онлайн кинотеатр"
);

ALTER TABLE game_ADSL ADD COLUMN price VARCHAR(100) NOT NULL;
ALTER TABLE game_ADSL ADD COLUMN con_cost VARCHAR(100) NOT NULL COMMENT "Стоимость подключения к тарифу";

--Таблица Тарифа "Игровой PON"
CREATE TABLE game_PON (
id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT "Идентификатор строки", 
name_tariff VARCHAR(100) NOT NULL COMMENT "Имя Тарифа",
technology VARCHAR(100) NOT NULL COMMENT "Технология используемого интернета",
speed VARCHAR(100) NOT NULL COMMENT "Скорость используемого интернета мбит/c",
bonus VARCHAR(100) NOT NULL COMMENT "Игровые Бонусы",
wink VARCHAR(100) NOT NULL COMMENT "Онлайн кинотеатр",
price VARCHAR(100) NOT NULL COMMENT "Цена ежемес. Абонентской платы тарифа"
);

ALTER TABLE game_PON ADD COLUMN con_cost VARCHAR(100) NOT NULL COMMENT "Стоимость подключения к тарифу";

--Таблица Тарифа "Технология доступа (PON)"
CREATE TABLE access_techn_PON (
id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT "Идентификатор строки", 
name_tariff VARCHAR(100) NOT NULL COMMENT "Имя Тарифа",
technology VARCHAR(100) NOT NULL COMMENT "Технология используемого интернета",
speed VARCHAR(100) NOT NULL COMMENT "Скорость используемого интернета мбит/c",
wink VARCHAR(100) NOT NULL COMMENT "Онлайн кинотеатр",
yandex_disk VARCHAR(100) NOT NULL COMMENT "Расширенный объём облачного хранилища",
price VARCHAR(100) NOT NULL COMMENT "Цена ежемес. Абонентской платы тарифа"
);

ALTER TABLE access_techn_PON ADD COLUMN con_cost VARCHAR(100) NOT NULL COMMENT "Стоимость подключения к тарифу";

--Таблица Тарифа "Технология контроля (PON)"
CREATE TABLE control_techn_PON (
id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT "Идентификатор строки", 
name_tariff VARCHAR(100) NOT NULL COMMENT "Имя Тарифа",
technology VARCHAR(100) NOT NULL COMMENT "Технология используемого интернета",
speed VARCHAR(100) NOT NULL COMMENT "Скорость используемого интернета мбит/c",
video_surve VARCHAR(100) NOT NULL COMMENT "Доп. услуга видеонаблюедние",
price VARCHAR(100) NOT NULL COMMENT "Цена ежемес. Абонентской платы тарифа"
);

ALTER TABLE control_techn_PON ADD COLUMN con_cost VARCHAR(100) NOT NULL COMMENT "Стоимость подключения к тарифу";

--Таблица Тарифа "Технология доступа PRO (PON)"
CREATE TABLE access_techn_PRO_PON (
id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT "Идентификатор строки", 
name_tariff VARCHAR(100) NOT NULL COMMENT "Имя Тарифа",
technology VARCHAR(100) NOT NULL COMMENT "Технология используемого интернета",
speed VARCHAR(100) NOT NULL COMMENT "Скорость используемого интернета мбит/c",
wink VARCHAR(100) NOT NULL COMMENT "Онлайн кинотеатр",
yandex_disk VARCHAR(100) NOT NULL COMMENT "Расширенный объём облачного хранилища",
antivirus VARCHAR(100) NOT NULL COMMENT "Антивирус Касперский",
price VARCHAR(100) NOT NULL COMMENT "Цена ежемес. Абонентской платы тарифа"
);

ALTER TABLE access_techn_PRO_PON ADD COLUMN con_cost VARCHAR(100) NOT NULL COMMENT "Стоимость подключения к тарифу";

--Таблица "Дополнительные опции к тарифам"
CREATE TABLE addition_options (
id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT "Идентификатор строки", 
name_option VARCHAR(100) NOT NULL COMMENT "Имя Тарифа",
price VARCHAR(100) NOT NULL COMMENT "Цена данной опции",
name_tariff VARCHAR(100) NOT NULL UNIQUE COMMENT "Имя Тарифа, к которому можно подключить опцию"
);

---Таблица "Услуга Мобильная Связь"
CREATE TABLE mobile (
id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT "Идентификатор строки", 
name_tariff VARCHAR(100) NOT NULL UNIQUE COMMENT "Имя Тарифа",
price VARCHAR(100) NOT NULL COMMENT "Абонентская плата"
);


--Таблица Тарифа "Онлайн История"
CREATE TABLE online_history (
id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT "Идентификатор строки", 
name_tariff VARCHAR(100) NOT NULL COMMENT "Имя Тарифа",
int_mobile VARCHAR(100) NOT NULL COMMENT "Мобильный инетрент Скорость",
call_to VARCHAR(100) NOT NULL COMMENT "Исходящик звонки(кол-во минут)",
sms VARCHAR(100) NOT NULL COMMENT "Кол-во сообщений",
wink VARCHAR(100) NOT NULL COMMENT "Онлайн кинотеатр"
);

ALTER TABLE online_history ADD COLUMN price VARCHAR(100) NOT NULL COMMENT "Ежемес. абон. плата";
ALTER TABLE online_history ADD COLUMN con_cost VARCHAR(100) NOT NULL COMMENT "Стоимость подключения к тарифу";

--Таблица Тарифа "Интернет для устройств"
CREATE TABLE int_devices (
id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT "Идентификатор строки", 
name_tariff VARCHAR(100) NOT NULL COMMENT "Имя Тарифа",
int_mobile VARCHAR(100) NOT NULL COMMENT "Мобильный инетрент Скорость",
call_to VARCHAR(100) NOT NULL COMMENT "Исходящик звонки(рубл. за мин.)",
sms VARCHAR(100) NOT NULL COMMENT "СМС - руб. за мин",
wink VARCHAR(100) NOT NULL COMMENT "Онлайн кинотеатр",
price VARCHAR(100) NOT NULL COMMENT "Ежемес. абон. плата",
con_cost VARCHAR(100) NOT NULL COMMENT "Стоимость подключения к тарифу"
);

--Таблица Тарифа "Новая История"
CREATE TABLE new_history (
id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT "Идентификатор строки", 
name_tariff VARCHAR(100) NOT NULL COMMENT "Имя Тарифа",
int_mobile VARCHAR(100) NOT NULL COMMENT "Мобильный инетрент Скорость",
call_to VARCHAR(100) NOT NULL COMMENT "Исходящик звонки(кол-во мин)",
sms VARCHAR(100) NOT NULL COMMENT "СМС - руб. за мин",
wink VARCHAR(100) NOT NULL COMMENT "Онлайн кинотеатр",
price VARCHAR(100) NOT NULL COMMENT "Ежемес. абон. плата",
con_cost VARCHAR(100) NOT NULL COMMENT "Стоимость подключения к тарифу"
);


ALTER TABLE addition_options ADD CONSTRAINT fk_h_int_name_tariff_adop FOREIGN KEY (name_tariff) REFERENCES home_internet (name_tariff);

ALTER TABLE base_ADSL ADD CONSTRAINT fk_base_ADSL_id FOREIGN KEY (id) REFERENCES home_internet (id);
ALTER TABLE game_ADSL ADD CONSTRAINT fk_game_ADSL_id FOREIGN KEY (id) REFERENCES home_internet (id);

ALTER TABLE game_PON ADD CONSTRAINT fk_game_PON_id FOREIGN KEY (id) REFERENCES home_internet (id);
ALTER TABLE access_techn_PON ADD CONSTRAINT fk_access_techn_PON_id FOREIGN KEY (id) REFERENCES home_internet (id);
ALTER TABLE control_techn_PON ADD CONSTRAINT fk_control_techn_PON_id FOREIGN KEY (id) REFERENCES home_internet (id);
ALTER TABLE access_techn_PRO_PON ADD CONSTRAINT fk_access_techn_PRO_PON_id FOREIGN KEY (id) REFERENCES home_internet (id);

ALTER TABLE new_history ADD CONSTRAINT fk_new_history_id FOREIGN KEY (id) REFERENCES mobile (id);
ALTER TABLE int_devices ADD CONSTRAINT fk_int_devices_id FOREIGN KEY (id) REFERENCES mobile (id);
ALTER TABLE online_history ADD CONSTRAINT fk_online_history_id FOREIGN KEY (id) REFERENCES mobile (id);

ALTER TABLE addition_options ADD CONSTRAINT fk_mobile_name_tariff_adop FOREIGN KEY (name_tariff) REFERENCES mobile (name_tariff);


ALTER TABLE home_internet ADD INDEX price_tariff (price, name_tariff);
SHOW INDEX FROM home_internet;

ALTER TABLE mobile ADD INDEX price_tariff (price, name_tariff);
SHOW INDEX FROM mobile;