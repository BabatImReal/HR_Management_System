DROP TABLE IF EXISTS "Jobs";
DROP TABLE IF EXISTS "Countries";
DROP TABLE IF EXISTS "Locations";
DROP TABLE IF EXISTS "Managers";
DROP TABLE IF EXISTS "Salaries";
DROP TABLE IF EXISTS "Employees";
DROP TABLE IF EXISTS "Employees_Relationship";
DROP TABLE IF EXISTS "Departments";
DROP TABLE IF EXISTS "Dependents";
DROP TABLE IF EXISTS "Regions";

CREATE TABLE IF NOT EXISTS Regions(
    "id" INT PRIMARY KEY NOT NULL,
    "region_name" VARCHAR(255) NOT NULL
);

CREATE TABLE IF NOT EXISTS Countries(
    "id" VARCHAR(255) NOT NULL PRIMARY KEY,
    "country_name" VARCHAR(255) NOT NULL,
    "region_id" INT NOT NULL,
    FOREIGN KEY("region_id") REFERENCES Regions("id")
);

CREATE TABLE IF NOT EXISTS Locations(
    "id" INT NOT NULL PRIMARY KEY,
    "location_address" VARCHAR(255) NOT NULL,
    "postal_code" VARCHAR(255) NOT NULL,
    "city" VARCHAR(255) NOT NULL,
    "country_id" VARCHAR(255) NOT NULL,
    FOREIGN KEY("country_id") REFERENCES Countries("id")
);

CREATE TABLE IF NOT EXISTS Departments(
    "id" INT NOT NULL PRIMARY KEY,
    "department_name" VARCHAR(255) NOT NULL,
    "location_id" INT NOT NULL,
    FOREIGN KEY("location_id") REFERENCES Locations("id")
);

CREATE TABLE IF NOT EXISTS Jobs(
    "id" INT PRIMARY KEY,
    "job_title" VARCHAR(255) NOT NULL,
    "min_salary" REAL NOT NULL,
    "max_salary" REAL NOT NULL
);

CREATE TABLE IF NOT EXISTS Managers(
    "id" INT NOT NULL PRIMARY KEY,
    "manager_name" VARCHAR(255) NOT NULL
);

CREATE TABLE IF NOT EXISTS Salaries(
    "id" INT NOT NULL PRIMARY KEY,
    "base_salary" REAL NOT NULL,
    "bonus" REAL NOT NULL,
    "payroll_date" DATETIME NOT NULL,
    "total_compensation" REAL NOT NULL
);

CREATE TABLE IF NOT EXISTS Employees(
    "id" INT NOT NULL PRIMARY KEY,
    "manager_id" INT NOT NULL,
    "first_name" VARCHAR(255) NOT NULL,
    "last_name" VARCHAR(255) NOT NULL,
    "email" VARCHAR(255) NOT NULL,
    "phone_number" VARCHAR(255) NOT NULL,
    "password" VARCHAR(128) UNIQUE NOT NULL,
    "salary_id" INT NOT NULL,
    "performance" VARCHAR(7) NOT NULL,
    "department_id" INT NOT NULL,
    "job_id" INT NOT NULL,
    FOREIGN KEY("department_id") REFERENCES Departments("id"),
    FOREIGN KEY("job_id") REFERENCES Jobs("id"),
    FOREIGN KEY("manager_id") REFERENCES Managers("id"),
    FOREIGN KEY("salary_id") REFERENCES Salaries("id")
);

CREATE TABLE IF NOT EXISTS Employees_Relationship(
    "employee1_id" INT NOT NULL,
    "employee2_id" INT NOT NULL,
    PRIMARY KEY("employee1_id", "employee2_id"),
    FOREIGN KEY("employee1_id") REFERENCES Employees("id"),
    FOREIGN KEY("employee2_id") REFERENCES Employees("id")
);

CREATE TABLE IF NOT EXISTS Dependents(
    "dependent_id" INT NOT NULL PRIMARY KEY,
    "employee_id" INT NOT NULL,
    "first_name" VARCHAR(255) NOT NULL,
    "last_name" VARCHAR(255) NOT NULL,
    "relationship" VARCHAR(255) NOT NULL,
    FOREIGN KEY("employee_id") REFERENCES Employees("id")
);
