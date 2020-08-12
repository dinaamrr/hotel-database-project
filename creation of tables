CREATE TABLE Employee
(
 Fname CHAR(255) NOT NULL,
 Mname CHAR(255) NOT NULL,
 Lname CHAR(255) NOT NULL,
 emp_address VARCHAR(255) NOT NULL,
 emp_phoneNo INT NOT NULL,
 ssn INT NOT NULL,
 emp_salary FLOAT NOT NULL,
 emp_birthdate DATE NOT NULL,
 dep_name CHAR(255) NOT NULL,
 PRIMARY KEY (ssn),
 FOREIGN KEY (dep_name) REFERENCES Departments(dep_name)
 ON DELETE RESTRICT ON UPDATE CASCADE );
