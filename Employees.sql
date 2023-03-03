CREATE TABLE departments (
	dept_no VARCHAR (10) NOT NULL,
	DEPT_NAME VARCHAR (40) NOT NULL,
	PRIMARY KEY (dept_no),
	UNIQUE (dept_name)
);

CREATE TABLE employees (
	emp_no INT NOT NULL,
	title_id INT NOT NULL,
	birth_date DATE,
	first_name VARCHAR NOT NULL,
	sex VARCHAR NOT NULL,
	hire_date DATE NOT NULL,
	PRIMARY KEY (emp_no, title_id)
);

CREATE TABLE dept_manager (
	dept_no VARCHAR(10) NOT NULL,
	emp_no INT NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments (dept_no),
	PRIMARY KEY (dept_no)
);

CREATE TABLE salaries (
	emp_no INT NOT NULL,
	salary INT NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees,
	PRIMARY KEY (emp_no),
	UNIQUE (salary)
);

CREATE TABLE Dept_emp (
	emp_no INT NOT NULL,
	dept_no VARCHAR(10) NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
	FOREIGN KEY (dept_no) REFERENCES dept_manager (dept_no),
	PRIMARY KEY (emp_no, dept_no)
	);
	
CREATE TABLE titles (
	title_id INT NOT NULL,
	title VARCHAR NOT NULL,
	PRIMARY KEY (title_id)
	);