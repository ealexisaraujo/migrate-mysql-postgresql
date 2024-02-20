-- Create a simple table
CREATE TABLE employees (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    join_date DATE NOT NULL,
    email VARCHAR(255)
);

-- Insert fake data into the table
INSERT INTO employees (name, join_date, email) VALUES ('John Doe', '2020-01-01', 'john.doe@example.com');
INSERT INTO employees (name, join_date, email) VALUES ('Jane Doe', '2020-02-01', 'jane.doe@example.com');
