USE habib;
CREATE TABLE Student (
    StudentID INT PRIMARY KEY,
    Name VARCHAR(50),     1
    Marks DOUBLE
);
CREATE TABLE Library (
    BookID INT PRIMARY KEY,
    Bookname VARCHAR(100),
    StudentID INT,
    FOREIGN KEY (StudentID) REFERENCES Student(StudentID)
);
Drop table fees;
CREATE TABLE Fees (
    FeeID INT PRIMARY KEY,
    Amount DECIMAL(10),
    StudentID INT,
    FOREIGN KEY (StudentID) REFERENCES Student(StudentID)
);
Drop table employee;
CREATE TABLE Employee (
  EmployeeID INT PRIMARY KEY,
  FirstName VARCHAR(20) NOT NULL,
  LastName VARCHAR(20) NOT NULL,
  Age INT,
  Department VARCHAR(20)
);

INSERT INTO Employee (EmployeeID, FirstName, LastName, Age, Department)
VALUES (1, 'John', 'Doe', 28, 'Sales'),
       (2, 'Jane', 'Smith', 32, 'Marketing'),
       (3, 'Michael', 'Johnson', 35, 'Finance'),
       (4, 'Sarah', 'Brown', 30, 'HR'),
       (5, 'William', 'Davis', 25, 'Engineering'),
       (6, 'Emily', 'Wilson', 28, 'Sales'),
       (7, 'Robert', 'Lee', 33, 'Marketing'),
       (8, 'Laura', 'Hall', 29, 'Finance'),
       (9, 'Thomas', 'White', 31, 'HR'),
       (10, 'Olivia', 'Clark', 27, 'Engineering');

SELECT DISTINCT Department FROM Employee;-- 5
SELECT LastName FROM Employee ORDER BY Age DESC;-- 6
SELECT LastName FROM Employee WHERE Age > 30 AND Department = 'Marketing';-- 7 
SELECT * FROM Employee;-- 8
SELECT * FROM Employee WHERE LastName LIKE '%son%';-- 9
SELECT * FROM Employee WHERE Department = 'Engineering';-- 10

