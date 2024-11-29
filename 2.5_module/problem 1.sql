USE habib;

DROP TABLE Employee;

CREATE TABLE Employee (
    ID VARCHAR(5) PRIMARY KEY,
    Name VARCHAR(50),
    Salary INT,
    JoiningDate DATE
);

INSERT INTO Employee (ID, Name, Salary, JoiningDate) 
VALUES 
('E02', 'Karim', 52000, '2023-01-10'),
('E03', 'Salma', 48000, '2023-05-20'),
('E04', 'Jasim', 43000, '2024-07-25');

DELETE FROM Employee 
WHERE ID = 'E02';
