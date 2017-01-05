# Random products

TRUNCATE Products CASCADE

ALTER SEQUENCE products_product_id_seq RESTART WITH 1

INSERT INTO Products (product_name,description,manufacturer,quantity,sku_number,unit_price,vendor) VALUES
('Cherish 14K White Gold Engagement Ring','This ring comes complete with a meticulously selected.','China',20,'0408283',1095,'Robbins Brothers'),
('Mens T-Shirt Spell Collar short-sleeved','Item was great, but a bit small.','China',200,'T123412',50,'Ordinary Clothing'),
('3.5mm Bluetooth Wireless Stereo','Regular stereo audio devices with Bluetooth-enabled.','Germany',50,'E350512',60,'Samsung'),
('Costume Homme Blazer Male Clothing','Make a very correct choice you should choose by the size chart.','Italy',20,'T234502',100,'Calvin Klein'),
('New Luxury Geneva Watch Round Quartz','Luxury style, noble style.','USA',20,'0408283',120,'Ferregamo'),
('Mens Fashion Slim Fit T-Shirt','Fashion T-Shirt.','Italy',50,'T408283',30,'Aeropostale'),
('2016 Mens Summer Fashion Printed T-Shirt','Asian size is about 2-size-smaller than US size.','China',75,'0408283',40,'Robbins Brothers');
