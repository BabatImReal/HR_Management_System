-- Indexes for Jobs table
CREATE INDEX idx_jobs_job_title ON Jobs(job_title);

-- Indexes for Countries table
-- No additional indexes are required as 'id' is the primary key

-- Indexes for Locations table
CREATE INDEX idx_locations_country_id ON Locations(country_id);
CREATE INDEX idx_locations_postal_code ON Locations(postal_code);
-- Removed index on region_id since Countries table has been updated
-- CREATE INDEX idx_locations_region_id ON Countries(region_id);

-- Indexes for Salaries table
-- No additional indexes are required as 'id' is the primary key

-- Indexes for Employees table
CREATE INDEX idx_employees_manager_id ON Employees(manager_id);
CREATE INDEX idx_employees_salary_id ON Employees(salary_id);
CREATE INDEX idx_employees_email ON Employees(email);

-- Indexes for Employees_Relationship table
CREATE INDEX idx_employee_relationship_employee1 ON Employees_Relationship(employee1_id);
CREATE INDEX idx_employee_relationship_employee2 ON Employees_Relationship(employee2_id);

-- Indexes for Departments table
-- No additional indexes are required as 'id' is the primary key

-- Indexes for Dependents table
CREATE INDEX idx_dependents_employee_id ON Dependents(employee_id);
