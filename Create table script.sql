CREATE TABLE Employee (
    Emp_No INTEGER   NOT NULL,
    Birth_Date Date   NOT NULL,
    First_Name VARCHAR   NOT NULL,
    Last_Name VARCHAR   NOT NULL,
    Gender VARCHAR   NOT NULL,
    Hire_Date Date   NOT NULL,
    CONSTRAINT pk_Employee PRIMARY KEY (
        Emp_No
     )
);

CREATE TABLE Departments (
    Dept_No INTEGER   NOT NULL,
    Dept_Name VARCHAR   NOT NULL,
    CONSTRAINT pk_Departments PRIMARY KEY (
        Dept_No
     )
);

CREATE TABLE Dept_Emp (
    Emp_No INTEGER   NOT NULL,
    Dept_No INTEGER   NOT NULL,
    From_Date DATE   NOT NULL,
    To_Date DATE   NOT NULL
);

CREATE TABLE Dept_Manager (
    Dept_No INTEGER   NOT NULL,
    Emp_No INTEGER   NOT NULL,
    From_Date DATE   NOT NULL,
    To_Date DATE   NOT NULL
);

CREATE TABLE Titles (
    Emp_No INTEGER   NOT NULL,
    Title VARCHAR   NOT NULL,
    From_Date DATE   NOT NULL,
    To_Date DATE   NOT NULL
);

CREATE TABLE Salaries (
    Emp_No INTEGER   NOT NULL,
    Salary INTEGER   NOT NULL,
    From_Date DATE   NOT NULL,
    To_Date DATE   NOT NULL
);

ALTER TABLE Dept_Emp ADD CONSTRAINT fk_Dept_Emp_Emp_No FOREIGN KEY(Emp_No)
REFERENCES Employee (Emp_No);

ALTER TABLE Dept_Emp ADD CONSTRAINT fk_Dept_Emp_Dept_No FOREIGN KEY(Dept_No)
REFERENCES Departments (Dept_No);

ALTER TABLE Dept_Manager ADD CONSTRAINT fk_Dept_Manager_Dept_No FOREIGN KEY(Dept_No)
REFERENCES Departments (Dept_No);

ALTER TABLE Dept_Manager ADD CONSTRAINT fk_Dept_Manager_Emp_No FOREIGN KEY(Emp_No)
REFERENCES Employee (Emp_No);

ALTER TABLE Titles ADD CONSTRAINT fk_Titles_Emp_No FOREIGN KEY(Emp_No)
REFERENCES Employee (Emp_No);

ALTER TABLE Salaries ADD CONSTRAINT fk_Salaries_Emp_No FOREIGN KEY(Emp_No)
REFERENCES Employee (Emp_No);

select * from Employee;

Select * from Department;

Select * from Dept_Emp;

Select * from Titles;

Select * from Salaries;