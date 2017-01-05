# Random names and addresses

TRUNCATE Customers CASCADE

ALTER SEQUENCE customers_customer_id_seq RESTART WITH 1

INSERT INTO Customers (first_name, last_name, address1, city, state, country, zip, discount,active) VALUES 
('John', 'Smith', '14689 Sherman Way', 'Van Nuys', 'CA', 'USA', '91405',0.1,true),
('Rihanna', 'Fenty', '767 Rocky River Ave', 'Tualatin', 'OR', 'USA', '97062',0.25,true),
('Maddie', 'Scarlett', '9854 N. Cambridge St.', 'Covington', 'GA', 'USA', '30014',0.3,true),
('Casimir', 'Bell', '8483 St. Louis Ave', 'Concord', 'NH', 'USA', '03301',0.3,true),
('Harley', 'Garrett', '74 10th St.', 'Garfield', 'NJ', 'USA', '07026',0.3,true),
('Shannon', 'Williams', '9760 Clark Avenue ', 'Summerville', 'SC', 'USA', '29483',0.3,true),
('Jerrod', 'Ilbert', '104 Richardson St.', 'Union', 'NJ', 'USA', '07083',0.25,true),
('Celia', 'Reynell', '5 George Court ', 'Norman', 'OK', 'USA', '73072',0.3,true),
('Katriona', 'Carter', '9316 North Fairway Lane ', 'Dayton', 'NH', 'USA', '45420',0.3,true),
('Dionne', 'Johnson', '85 Vernon Lane', 'Concord', 'CT', 'USA', '06066',0.3,true),
('Monty', 'Brook', '911 Academy Ave.', 'Ashtabula', 'OH', 'USA', '44004',0.3,true),
('Baxter', 'Low', '7774 Manor Station Lane ', 'Conyers', 'GA', 'USA', '30012',0.,true),
('Roland', 'Johnson', '7933 E. Jones Ave', 'Lenoir', 'NC', 'USA', '28645',0.1,true),
('Ingram', 'Haden', '626 Bellevue Rd.', 'Elgin', 'IL', 'USA', '60120',0.1,true),
('Reenie', 'Cook', '913 South Road', 'Chardon', 'OH', 'USA', '44024',0.3,true),
('Kit', 'Harrison', '7540 W. County Lane ', 'Tiffin', 'OH', 'USA', '44883',0.1,true),
('Linette', 'Johnson', '9652 Ramblewood Ave', 'Ponte Vedra Beach', 'FL', 'USA', '32082',0.3,true),
('Rick', 'Nash', '5 Glenwood Drive', 'Corona', 'NY', 'USA', '11368',0.3,true),
('Cindy', 'Aylmer', '845 Silver Spear Street', 'Harrison Township', 'MI', 'USA', '48045',0.3,true),
('Casimir', 'Bell', '8483 St. Louis Ave', 'Concord', 'NH', 'USA', '07026',0.3,true);