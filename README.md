# Employee Management System Database

## Overview

This project contains the SQL files required to set up and manage the database for the Employee Management System. The database manages employee data, including departments, job roles, salaries, and other related information.

## Project Files

- **`schema.sql`**: Defines the database schema, including tables, columns, and relationships.
- **`indexes.sql`**: Creates indexes to optimize query performance.
- **`views.sql`**: Defines views for easier data retrieval.
- **`insert.sql`**: Inserts initial data into the database.
- **`queries.sql`**: Contains queries to retrieve data from the database.
- **`hr_management.db`**: The SQLite database file (or any other type of database file depending on your usage).

## Getting Started

Follow the steps below to set up and use the database:

### 1. Clone the Project

First, clone the project repository to your local machine:

```bash
git clone https://github.com/yourusername/EmployeeManagementSystem.git
cd EmployeeManagementSystem
```

### 2. Set up the database
#### Step 2.1: Run the Schema Script

Execute the `schema.sql` file to create the database schema. This will set up all the necessary tables and relationships:

```bash
mysql -u your_username -p your_database < schema.sql
```

#### Step 2.2: Run the Indexes Script
After creating the schema, run the indexes.sql file to create indexes on the database tables. This will optimize the performance of your queries:

```bash
mysql -u your_username -p your_database < indexes.sql
```

#### Step 2.3: Run the Views Script
Next, execute the views.sql file to create views that simplify data retrieval:

```bash
mysql -u your_username -p your_database < views.sql
```

#### Step 2.4: Run the Insert Script
Finally, insert the initial data into the database by running the insert.sql file:

```bash
mysql -u your_username -p your_database < insert.sql
```
