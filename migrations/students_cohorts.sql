CREATE TABLE cohorts (
  -- The PRIMARY KEY constraint uniquely identifies each record in a table. 
  -- Primary keys must contain UNIQUE values, and cannot contain NULL values.
  -- https://www.geeksforgeeks.org/postgresql-serial/#:~:text=PostgreSQL%20has%20a%20special%20kind,Primary%20key%20of%20a%20table.&text=When%20creating%20a%20table%2C%20this,TABLE%20table_name(%20id%20SERIAL%20)%3B
  id SERIAL PRIMARY KEY NOT NULL, 
  -- type VARCHAR with a length of up to 255 characters 
  -- cannot be NULL (defaults to an empty string)
  name VARCHAR(255) NOT NULL,
  start_date DATE,
  end_date DATE
);

CREATE TABLE students (
  id SERIAL PRIMARY KEY NOT NULL,
  name VARCHAR(255) NOT NULL,
  email VARCHAR(255),
  phone VARCHAR(32),
  github VARCHAR(255),
  start_date DATE,
  end_date DATE,
  cohort_id INTEGER REFERENCES cohorts(id) ON DELETE CASCADE
);

-- VARCHAR(NUMBER) sets a length of up to NUMBER