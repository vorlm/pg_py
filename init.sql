CREATE TABLE test_table (
    name VARCHAR(10) CHECK (char_length(name) >= 4 AND char_length(name) <= 10),
    surname VARCHAR,
    city VARCHAR,
    age INT CHECK (age > 0 AND age <= 150)
);

INSERT INTO test_table (name, surname, city, age) VALUES
('Silvester', 'Stalone', 'Los Angeles', 25),
('John', 'Doe', 'New York', 30),
('Jane', 'Doe', 'Los Angeles', 25),
('Alice', 'Johnson', 'Chicago', 45),
('Michael', 'Smith', 'Houston', 35),
('Emily', 'Davis', 'Phoenix', 29),
('Chris', 'Brown', 'Philadelphia', 40),
('Jessica', 'Wilson', 'San Antonio', 32),
('Matthew', 'Taylor', 'San Diego', 28),
('Laura', 'Moore', 'Dallas', 33),
('Daniel', 'Anderson', 'San Jose', 27),
('Sarah', 'Thomas', 'Austin', 38),
('David', 'Jackson', 'San Francisco', 42),
('Karen', 'White', 'Fort Worth', 31),
('Paul', 'Harris', 'Columbus', 36),
('Nancy', 'Martin', 'Charlotte', 26),
('James', 'Thompson', 'Detroit', 39),
('Linda', 'Garcia', 'El Paso', 34),
('Robert', 'Martinez', 'Memphis', 41),
('Susan', 'Lopez', 'Baltimore', 43),
('Mark', 'Gonzalez', 'Boston', 37),
('Alice', 'Johnson', 'Chicago', 45);
