CREATE TABLE title (
  title_id VARCHAR(30) PRIMARY KEY,
  title VARCHAR(30) NOT NULL
);

CREATE TABLE employees (
  emp_no INT PRIMARY KEY,
  emp_title_id VARCHAR(30) NOT NULL,
  FOREIGN KEY (emp_title_id) REFERENCES title(title_id),
  birth_date DATE NOT NULL,
  first_name VARCHAR(30) NOT NULL,
  last_name VARCHAR(30) NOT NULL, 
  sex VARCHAR(30), 
  hire_date DATE NOT NULL
);

CREATE TABLE salaries (
  emp_no INT PRIMARY KEY,
  FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
  salaries INT
);

CREATE TABLE departments (
  dept_no VARCHAR(30) PRIMARY KEY,
  dept_name VARCHAR(30) NOT NULL
);

CREATE TABLE deptmanager (
  dept_no VARCHAR(30) NOT NULL,
  FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
  emp_no INT NOT NULL,
  FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
  PRIMARY KEY(dept_no, emp_no)
);

CREATE TABLE deptemployees (
  emp_no INT NOT NULL,
  FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
  dept_no VARCHAR(30) NOT NULL,
  FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
  PRIMARY KEY(emp_no, dept_no)

);