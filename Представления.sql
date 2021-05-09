USE rt;

---Представление №1
CREATE VIEW Video_surve AS
SELECT a.name_tariff, a.price, b.speed, b.video_surve
FROM
home_internet  a 
RIGHT JOIN control_techn_pon b ON a.name_tariff = b.name_tariff;

SELECT * FROM Video_surve

--табличка, которая вышла
name_tariff	price	speed	video_surve
inventore	         605	600	YES
suscipit	         690	700	YES
voluptatem	         580	400	YES
cum	                 510	500	YES
est	                 330	200	YES

---Представление №2
CREATE VIEW mobile_sms_new AS
SELECT a.name_tariff, b.sms, b.price 
FROM
mobile a 
RIGHT JOIN new_history b ON (a.name_tariff = b.name_tariff);

SELECT * FROM mobile_sms_new

--табличка, которая вышла
name_tariff	sms	price
illo	    150	400
expedita	150	450
voluptatem	250	600
