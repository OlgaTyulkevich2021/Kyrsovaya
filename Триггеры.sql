USE rt;

CREATE TRIGGER new_tariff BEFORE INSERT ON home_internet
FOR EACH ROW BEGIN
  END;
END//

-- Проверяем работу триггера
INSERT INTO home_internet (name_tariff, technology, price, con_cost) VALUES (1, 1, 4, 3);
INSERT INTO home_internet (name_tariff, technology, price, con_cost) VALUES ('jhkk', 'PON', '250', '200');

SHOW TRIGGERS;