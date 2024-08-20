-- Updated EmployeeDetails View
CREATE VIEW EmployeeDetails AS
SELECT
    e.id AS employee_id,
    e.first_name,
    e.last_name,
    e.email,
    e.phone_number,
    e.salary_id,
    e.performance,
    m.manager_name,
    j.job_title
FROM Employees e
JOIN Managers m ON e.manager_id = m.id
JOIN Jobs j ON e.job_id = j.id;

-- Updated EmployeeSalaries View
CREATE VIEW EmployeeSalaries AS
SELECT
    e.id AS employee_id,
    e.first_name,
    e.last_name,
    s.base_salary,
    s.bonus,
    s.total_compensation
FROM Employees e
JOIN Salaries s ON e.salary_id = s.id;

-- Updated DepartmentEmployees View
CREATE VIEW DepartmentEmployees AS
SELECT
    d.id AS department_id,
    d.department_name,
    e.id AS employee_id,
    e.first_name,
    e.last_name
FROM Departments d
JOIN Employees e ON d.id = e.department_id;

-- CompanyDetails View
CREATE VIEW CompanyDetails AS
SELECT
    c.id AS company_id,
    c.company_name,
    c.company_industry,
    l.location_address,
    l.postal_code,
    l.city,
    l.province,
    r.region_name,
    co.country_name
FROM Companies c
JOIN Locations l ON c.location_id = l.id
JOIN Countries co ON l.country_id = co.id
JOIN Regions r ON r.id = co.region_id;

-- DependentDetails View
CREATE VIEW DependentDetails AS
SELECT
    d.dependent_id,
    d.first_name AS dependent_first_name,
    d.last_name AS dependent_last_name,
    d.relationship,
    e.first_name AS employee_first_name,
    e.last_name AS employee_last_name,
    e.email AS employee_email
FROM Dependents d
JOIN Employees e ON d.employee_id = e.id;
