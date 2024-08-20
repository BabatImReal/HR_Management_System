--Query 1: Find and display all information of employees
SELECT
    e."id",
    e."first_name",
    e."last_name",
    e."email",
    e."phone_number",
    e."performance",
    m."manager_name",
    j."job_title",
    s."total_compensation" AS "salary",
    d."department_name",
    l."city",
    c."country_name"
FROM "Employees" e
JOIN
    "Jobs" j ON j."id" = e."job_id"
JOIN
    "Managers" m ON m."id" = e."manager_id"
JOIN
    "Salaries" s ON s."id" = e."salary_id"
JOIN
    "Departments" d ON d."id" = e."department_id"
JOIN
    "Locations" l ON l."id" = d."location_id"
JOIN
    "Countries" c ON c."id" = l."country_id";

--Query 2: Display the job and the average salary
SELECT
    j."job_title",
    AVG(s."total_compensation") AS "average_salary"
FROM
    "Employees" e
JOIN
    "Jobs" j ON j."id" = e."job_id"
JOIN
    "Salaries" s ON s."id" = e."salary_id"  -- Join Salaries table to get salary data
GROUP BY
    j."job_title";

--Query 3: Retrieve the total number of each department
SELECT
    d."id",
    d."department_name",
    COUNT(e."id") AS "total_employees"
FROM "Departments" d
JOIN
    "Employees" e ON d."id" = e."department_id"
GROUP BY
    d."id", d."department_name";

--Query 4: Find the employees who have dependents and display their name along the relationship with employees
SELECT
    e."id",
    e."first_name" AS "employee_first_name",
    e."last_name" AS "employee_last_name",
    dp."dependent_id",
    dp."first_name" AS "dependent_first_name",
    dp."last_name" AS "dependent_last_name",
    dp."relationship" AS "dependent_relationship"
FROM "Employees" e
LEFT JOIN
    "Dependents" dp ON dp."employee_id" = e."id"
WHERE dp."dependent_id" IS NOT NULL
GROUP BY
    e."id",
    e."first_name",
    e."last_name";
