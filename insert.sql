-- Insert Region Details
INSERT INTO "Regions" ("id", "region_name")
VALUES
    (1, "Europe"),
    (2, "America"),
    (3, "Asia"),
    (4,"Middle East & Africa"),
    (5, "Australia");

-- Insert Locations Details
INSERT INTO "Locations" ("id", "location_address", "postal_code", "city", "country_id")
VALUES
    (1400, "300 Madison Avenue", "NY 10017", "New York", "US"),
    (1401, "PwC Tower, 18 York Street", "ON M5J 0B2", "Toronto", "CA"),
    (1402, "1 Embankment Place", "WC2N 6RH", "London", "UK"),
    (1403, "Friedrich-Ebert-Anlage 35-37", "60327", "Frankfurt am Main", "DE"),
    (1404, "63 Rue de Villiers", "92200", "Neuilly-sur-Seine", "FR"),
    (1405, "PwC Center, 10/F, 2 Corporate Avenue", "200021", "Shanghai", "CN"),
    (1406, "252 Veer Savarkar Marg", "400028", "Mumbai", "IN"),
    (1407, "7 Straits View", "018936", "Singapore", "SG"),
    (1408, "One International Towers, Watermans Quay", "2000", "Sydney", "AU"),
    (1409, "4 Lisbon Lane, Waterfall City", "2090", "Midrand", "ZA"),
    (1410, "Emaar Square, Building 4", "N/A", "Dubai", "AE");


-- Insert Countries Details of company in business
INSERT INTO "Countries" ("id", "country_name", "region_id")
VALUES
    ("AR", "Argentina", 2),
    ("AU", "Australia", 5),
    ("AE", "United Arab Emirates", 4),
    ("BE", "Belgium", 1),
    ("BR", "Brazil", 2),
    ("CA", "Canada", 2),
    ("CH", "Switzerland", 1),
    ("CN", "China", 3),
    ("DE", "Germany", 1),
    ("DK", "Denmark", 1),
    ("EG", "Egypt", 4),
    ("FR", "France", 1),
    ("HK", "Hong Kong", 1),
    ("IL", "Israel", 4),
    ("IN", "India", 3),
    ("IT", "Italy", 1),
    ("JP", "Japan", 3),
    ("KW", "Kuwait", 4),
    ("MX", "Mexico", 2),
    ("NG", "Nigeria", 4),
    ("NL", "Netherlands", 1),
    ("SG", "Singapore", 3),
    ("UK", "United Kingdom", 1),
    ("US", "United States of America", 2),
    ("VN", "Vietnam", 3),
    ("ZA", "South Africa", 4),
    ("ZM", "Zambia", 4),
    ("ZW", "Zimbabwe", 4);

--Data for the jobs table
INSERT INTO "Jobs" ("id", "job_title", "min_salary", "max_salary")
VALUES
    (1, 'Audit Associate', 50000.00, 70000.00),
    (2, 'Tax Associate', 52000.00, 72000.00),
    (3, 'Consulting Associate', 54000.00, 74000.00),
    (4, 'Advisory Manager', 80000.00, 100000.00),
    (5, 'Senior Auditor', 70000.00, 90000.00),
    (6, 'Tax Manager', 85000.00, 105000.00),
    (7, 'Consulting Manager', 90000.00, 110000.00),
    (8, 'Risk Assurance Associate', 55000.00, 75000.00),
    (9, 'Forensic Services Associate', 58000.00, 78000.00),
    (10, 'Technology Consultant', 60000.00, 80000.00),
    (11, 'Data Analyst', 62000.00, 82000.00),
    (12, 'HR Associate', 50000.00, 70000.00),
    (13, 'Financial Analyst', 65000.00, 85000.00),
    (14, 'Business Development Manager', 90000.00, 115000.00),
    (15, 'Marketing Specialist', 55000.00, 75000.00);

--Insert Infos of Department Details
INSERT INTO "Departments" ("id", "department_name", "location_id")
VALUES
    (10000, 'Audit', 1400),
    (10001, 'Tax', 1401),
    (10002, 'Consulting', 1402),
    (10003, 'Advisory', 1403),
    (10004, 'Risk Assurance', 1404),
    (10005, 'Forensic Services', 1405),
    (10006, 'Technology', 1406),
    (10007, 'Human Resources', 1407),
    (10008, 'Finance', 1408),
    (10009, 'Business Development', 1409),
    (10010, 'Marketing', 1410);

-- Insert Employee Details
INSERT INTO Employees (id, department_id, job_id, manager_id, salary_id, first_name, last_name, email, phone_number, password, performance)
VALUES
    (1, 10000, 1, 1, 1, 'John', 'Doe', 'john.doe@gmail.com', '1234567890', 'J0hnD03!', 'Excellent'),
    (2, 10001, 2, 1, 2, 'Jane', 'Smith', 'jane.smith@gmail.com', '2345678901', 'J4n3Sm1th@', 'Good'),
    (3, 10002, 3, 2, 3, 'Michael', 'Johnson', 'michael.johnson@gmail.com', '3456789012', 'M1ch4e1J0hn$', 'Average'),
    (4, 10003, 4, 2, 4, 'Emily', 'Davis', 'emily.davis@gmail.com', '4567890123', 'Em1lyD@v1s!', 'Bad'),
    (5, 10004, 5, 3, 5, 'Matthew', 'Wilson', 'matthew.wilson@gmail.com', '5678901234', 'M@ttW1ls0n$', 'Excellent'),
    (6, 10005, 6, 3, 6, 'Olivia', 'Miller', 'olivia.miller@gmail.com', '6789012345', 'Ol1v1@M1ll3r', 'Average'),
    (7, 10006, 7, 4, 7, 'James', 'Brown', 'james.brown@gmail.com', '7890123456', 'J@m3sB#own', 'Bad'),
    (8, 10007, 8, 4, 8, 'Sophia', 'Jones', 'sophia.jones@gmail.com', '8901234567', 'S0ph!@J0n3s', 'Excellent'),
    (9, 10008, 9, 5, 9, 'David', 'Garcia', 'david.garcia@gmail.com', '9012345678', 'D@v!dG4rc1@', 'Good'),
    (10, 10009, 10, 5, 10, 'Isabella', 'Martinez', 'isabella.martinez@gmail.com', '1023456789', '1s@b3ll@M@rt1n3z', 'Average'),
    (11, 10010, 11, 6, 11, 'Ethan', 'Hernandez', 'ethan.hernandez@gmail.com', '2134567890', '3th@nH3rn@nd3z', 'Excellent'),
    (12, 10000, 12, 6, 12, 'Mia', 'Lopez', 'mia.lopez@gmail.com', '3245678901', 'M1@L0p3z!', 'Good'),
    (13, 10001, 13, 7, 13, 'Alexander', 'Walker', 'alexander.walker@gmail.com', '4356789012', '4lex@nd3rW@lk3r', 'Average'),
    (14, 10002, 14, 7, 14, 'Ava', 'Hall', 'ava.hall@gmail.com', '5467890123', '4v@H@ll$', 'Bad'),
    (15, 10003, 15, 8, 15, 'Daniel', 'Allen', 'daniel.allen@gmail.com', '6578901234', 'D@ni3l@ll3n', 'Excellent'),
    (16, 10004, 1, 8, 1, 'Charlotte', 'Young', 'charlotte.young@gmail.com', '7689012345', 'Ch@rL0tt3Y@ung', 'Good'),
    (17, 10005, 2, 9, 2, 'Henry', 'King', 'henry.king@gmail.com', '8790123456', 'H3nryK1ng$', 'Average'),
    (18, 10006, 3, 9, 3, 'Amelia', 'Wright', 'amelia.wright@gmail.com', '9801234567', 'Am3l!@Wr1ght', 'Bad'),
    (19, 10007, 4, 10, 4, 'Sebastian', 'Scott', 'sebastian.scott@gmail.com', '1098765432', 'S3b@st!@nS0tt', 'Excellent'),
    (20, 10008, 5, 10, 5, 'Harper', 'Green', 'harper.green@gmail.com', '2109876543', 'H@rp3rGrr3n!', 'Good'),
    (21, 10009, 6, 11, 6, 'Lucas', 'Adams', 'lucas.adams@gmail.com', '3210987654', 'Luc@s4dm$', 'Average'),
    (22, 10010, 7, 11, 7, 'Evelyn', 'Baker', 'evelyn.baker@gmail.com', '4321098765', '3v3lynB@k3r', 'Bad'),
    (23, 10000, 8, 12, 8, 'Owen', 'Nelson', 'owen.nelson@gmail.com', '5432109876', '0w3nN3ls0n!', 'Excellent'),
    (24, 10001, 9, 12, 9, 'Aria', 'Carter', 'aria.carter@gmail.com', '6543210987', 'Ar!@C@rt3r', 'Good'),
    (25, 10002, 10, 13, 10, 'Liam', 'Mitchell', 'liam.mitchell@gmail.com', '7654321098', 'L!@M_M1tch3ll', 'Average'),
    (26, 10003, 11, 13, 11, 'Zoe', 'Perez', 'zoe.perez@gmail.com', '8765432109', 'Z0eP3r3z$', 'Bad'),
    (27, 10004, 12, 14, 12, 'Noah', 'Roberts', 'noah.roberts@gmail.com', '9876543210', 'N0@hR0b3rts', 'Excellent'),
    (28, 10005, 13, 14, 13, 'Lily', 'Turner', 'lily.turner@gmail.com', '1987654321', 'L!1y_Turn3r', 'Good'),
    (29, 10006, 14, 15, 14, 'Aiden', 'Phillips', 'aiden.phillips@gmail.com', '2098765432', 'A!d3nP1ll1ps', 'Average'),
    (30, 10007, 15, 15, 15, 'Mila', 'Campbell', 'mila.campbell@gmail.com', '3209876543', 'M!l@C@mpb3ll', 'Bad'),
    (31, 10008, 1, 1, 1, 'Jackson', 'Parker', 'jackson.parker@gmail.com', '4310987654', 'J@ck5onP@rk3r', 'Excellent'),
    (32, 10009, 2, 1, 2, 'Sofia', 'Evans', 'sofia.evans@gmail.com', '5421098765', 'S0f!@Ev@ns', 'Good'),
    (33, 10010, 3, 2, 3, 'Logan', 'Warren', 'logan.warren@gmail.com', '6532109876', 'L0g@nW@rr3n', 'Average'),
    (34, 10000, 4, 2, 4, 'Ella', 'Wood', 'ella.wood@gmail.com', '7643210987', '3ll@W00d$', 'Bad'),
    (35, 10001, 5, 3, 5, 'James', 'Morris', 'james.morris@gmail.com', '8754321098', 'J@m3sM0rr!s', 'Excellent'),
    (36, 10002, 6, 3, 6, 'Grace', 'Murphy', 'grace.murphy@gmail.com', '9865432109', 'Gr@c3_Murphy', 'Good'),
    (37, 10003, 7, 4, 7, 'Benjamin', 'Rogers', 'benjamin.rogers@gmail.com', '1098765432', 'B3nj@minR0g3rs', 'Average'),
    (38, 10004, 8, 4, 8, 'Harper', 'James', 'harper.james@gmail.com', '2109876543', 'H@rp3rJ@m3s', 'Bad'),
    (39, 10005, 9, 5, 9, 'William', 'Bennett', 'william.bennett@gmail.com', '3210987654', 'W!ll!@mB3nn3tt', 'Excellent'),
    (40, 10006, 10, 5, 10, 'Chloe', 'Cox', 'chloe.cox@gmail.com', '4321098765', 'Chl03_C0x!', 'Good'),
    (41, 10007, 11, 6, 11, 'Daniel', 'Jenkins', 'daniel.jenkins@gmail.com', '5432109876', 'D@n13lJ3nk1ns', 'Average'),
    (42, 10008, 12, 6, 12, 'Mia', 'Perry', 'mia.perry@gmail.com', '6543210987', 'M!@P3rry$', 'Bad'),
    (43, 10009, 13, 7, 13, 'Henry', 'Foster', 'henry.foster@gmail.com', '7654321098', 'H3nry_F0st3r', 'Excellent'),
    (44, 10010, 14, 7, 14, 'Zoe', 'Morgan', 'zoe.morgan@gmail.com', '8765432109', 'Z0e_M0rg@n', 'Good'),
    (45, 10000, 15, 8, 15, 'Jacob', 'Brooks', 'jacob.brooks@gmail.com', '9876543210', 'J@c0b_Br00ks', 'Average'),
    (46, 10001, 1, 8, 1, 'Avery', 'Fisher', 'avery.fisher@gmail.com', '1987654321', 'Av3rY_F!sh3r', 'Bad'),
    (47, 10002, 2, 9, 2, 'Ethan', 'Barnes', 'ethan.barnes@gmail.com', '2098765432', '3th@Barn3s', 'Excellent'),
    (48, 10003, 3, 9, 3, 'Charlotte', 'Butler', 'charlotte.butler@gmail.com', '3209876543', 'Ch@rl0tt3B@t1er', 'Good'),
    (49, 10004, 4, 10, 4, 'Lucas', 'Hughes', 'lucas.hughes@gmail.com', '4310987654', 'Luc@sHughes', 'Average'),
    (50, 10005, 5, 10, 5, 'Ella', 'Kelly', 'ella.kelly@gmail.com', '5421098765', '3ll@K3llY', 'Bad');


-- Insert Salary Details
INSERT INTO Salaries ("id", "base_salary", "bonus", "payroll_date", "total_compensation")
VALUES
    (1, 50000.00, 5000.00, '2024-08-01', 55000.00),
    (2, 52000.00, 5200.00, '2024-08-01', 57200.00),
    (3, 54000.00, 5400.00, '2024-08-01', 59400.00),
    (4, 80000.00, 8000.00, '2024-08-01', 88000.00),
    (5, 70000.00, 7000.00, '2024-08-01', 77000.00),
    (6, 85000.00, 8500.00, '2024-08-01', 93500.00),
    (7, 90000.00, 9000.00, '2024-08-01', 99000.00),
    (8, 55000.00, 5500.00, '2024-08-01', 60500.00),
    (9, 58000.00, 5800.00, '2024-08-01', 63800.00),
    (10, 60000.00, 6000.00, '2024-08-01', 66000.00),
    (11, 62000.00, 6200.00, '2024-08-01', 68200.00),
    (12, 50000.00, 5000.00, '2024-08-01', 55000.00),
    (13, 65000.00, 6500.00, '2024-08-01', 71500.00),
    (14, 90000.00, 9000.00, '2024-08-01', 99000.00),
    (15, 55000.00, 5500.00, '2024-08-01', 60500.00);

-- Insert Manager Details
INSERT INTO Managers("id", "manager_name")
VALUES
    (1, 'John Smith'),
    (2, 'Emily Johnson'),
    (3, 'Michael Williams'),
    (4, 'Jessica Brown'),
    (5, 'Robert Davis'),
    (6, 'Laura Garcia'),
    (7, 'William Martinez'),
    (8, 'Linda Rodriguez'),
    (9, 'James Wilson'),
    (10, 'Patricia Anderson'),
    (11, 'Charles Thomas'),
    (12, 'Jennifer Taylor'),
    (13, 'David Lee'),
    (14, 'Mary Harris'),
    (15, 'Richard Clark');


-- Insert Dependent Details
INSERT INTO "Dependents" ("dependent_id", "employee_id", "first_name", "last_name", "relationship")
VALUES
    (1, 5, 'Michael', 'Adams', 'Son'),
    (2, 12, 'Emily', 'Adams', 'Daughter'),
    (3, 7, 'James', 'Lee', 'Son'),
    (4, 19, 'Olivia', 'Lee', 'Daughter'),
    (5, 3, 'Lucas', 'Johnson', 'Son'),
    (6, 22, 'Isabella', 'Johnson', 'Daughter'),
    (7, 10, 'Sophia', 'Brown', 'Daughter'),
    (8, 15, 'Ethan', 'Brown', 'Son'),
    (9, 24, 'Aiden', 'Harris', 'Son'),
    (10, 30, 'Emma', 'Harris', 'Daughter'),
    (11, 25, 'Harper', 'Garcia', 'Daughter'),
    (12, 8, 'Logan', 'Garcia', 'Son'),
    (13, 32, 'Mia', 'Martinez', 'Daughter'),
    (14, 40, 'Jacob', 'Martinez', 'Son'),
    (15, 17, 'Liam', 'White', 'Son'),
    (16, 9, 'Emily', 'White', 'Daughter'),
    (17, 44, 'Olivia', 'Taylor', 'Daughter'),
    (18, 48, 'Ethan', 'Taylor', 'Son'),
    (19, 20, 'Charlotte', 'Anderson', 'Daughter'),
    (20, 3, 'James', 'Anderson', 'Son'),
    (21, 11, 'Mia', 'Clark', 'Daughter'),
    (22, 6, 'Jacob', 'Clark', 'Son'),
    (23, 47, 'Evelyn', 'Robinson', 'Daughter'),
    (24, 35, 'Alexander', 'Robinson', 'Son'),
    (25, 13, 'Harper', 'Lewis', 'Daughter'),
    (26, 50, 'Aiden', 'Lewis', 'Son'),
    (27, 28, 'Liam', 'Walker', 'Son'),
    (28, 29, 'Ella', 'Walker', 'Daughter'),
    (29, 2, 'Sophia', 'Young', 'Daughter'),
    (30, 16, 'Logan', 'Young', 'Son');

