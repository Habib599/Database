use habib;
drop table employee

CREATE TABLE Employee (
    EmpId INT PRIMARY KEY,               
    EmpName VARCHAR(50) NOT NULL,        
    JoiningYear YEAR NOT NULL,           
    Birthday DATE NOT NULL,              
    Designation VARCHAR(50),             
    Salary DECIMAL(10, 2),               
    CONSTRAINT chk_Birthday CHECK (YEAR(Birthday) <= 2000)  
);


INSERT INTO Employee (EmpId, EmpName, JoiningYear, Birthday, Designation, Salary) VALUES
(1, 'Rahim', 2015, '1995-05-10', 'Manager', 55000.00),
(2, 'Karim', 2018, '1990-04-22', 'Developer', 45000.00),
(3, 'Salma', 2017, '1992-08-15', 'Designer', 48000.00),
(4, 'Jasim', 2020, '1999-01-12', 'HR', 40000.00),
(5, 'Amina', 2019, '1998-06-20', 'Analyst', 42000.00),
(6, 'Nayeem', 2021, '1995-09-10', 'Developer', 47000.00),
(7, 'Lamia', 2016, '1996-03-25', 'Manager', 60000.00),
(8, 'Tareq', 2022, '1997-12-14', 'Intern', 30000.00),
(9, 'Faruk', 2015, '1990-02-19', 'Accountant', 44000.00),
(10, 'Shirin', 2014, '1991-11-23', 'Developer', 49000.00),
(11, 'Arafat', 2018, '1993-10-05', 'HR', 41000.00),
(12, 'Sumaiya', 2017, '1995-08-22', 'Designer', 45000.00),
(13, 'Hasan', 2016, '1994-04-18', 'Manager', 52000.00),
(14, 'Fahim', 2020, '1999-05-09', 'Analyst', 46000.00),
(15, 'Mona', 2019, '1992-07-11', 'HR', 43000.00),
(16, 'Shahid', 2021, '1998-02-05', 'Intern', 32000.00),
(17, 'Sadia', 2015, '1993-01-27', 'Developer', 47000.00),
(18, 'Rafiq', 2018, '1990-12-30', 'Accountant', 40000.00),
(19, 'Rubel', 2017, '1995-09-19', 'Analyst', 48000.00),
(20, 'Nusrat', 2016, '1997-03-17', 'Manager', 61000.00);

SELECT * FROM Employee
ORDER BY EmpId desc
LIMIT 5 OFFSET 10;

CREATE TABLE ProjectAssignment (
    EmpId INT,
    ProjectId INT,
    AssignmentDate DATE,
    PRIMARY KEY (EmpId, ProjectId)  -- Composite Primary Key
);
