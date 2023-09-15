CREATE TABLE employee (
    fname     VARCHAR2(10),
    minit     VARCHAR2(1),
    lname     VARCHAR2(10),
    ssn       NUMBER,
    bdate     DATE,
    address   VARCHAR2(100),
    sex       VARCHAR2(1),
    salary    NUMBER(19, 4),
    super_ssn VARCHAR2(10),
    dno       NUMBER,
    CONSTRAINT pk_employee PRIMARY KEY ( ssn )
);

CREATE TABLE department (
    dname          VARCHAR2(20),
    dnumber        NUMBER,
    mgr_ssn        VARCHAR2(20),
    mgr_start_date DATE,
    CONSTRAINT pk_department PRIMARY KEY ( dnumber )
);

CREATE TABLE dept_locations (
    dnumber   NUMBER,
    dlocation VARCHAR2(20),
    CONSTRAINT pk_dept_locations PRIMARY KEY ( dnumber,
                                               dlocation )
);

CREATE TABLE works_on (
    essn  VARCHAR2(20),
    pno   NUMBER,
    hours FLOAT,
    CONSTRAINT pk_works_on PRIMARY KEY ( essn,
                                         pno )
);

CREATE TABLE project (
    pname     VARCHAR2(30),
    pnumber   NUMBER,
    plocation VARCHAR2(20),
    dnum      NUMBER,
    CONSTRAINT pk_project PRIMARY KEY ( pnumber )
);

CREATE TABLE dependent (
    essn           VARCHAR2(20),
    dependent_name VARCHAR2(20),
    sex            VARCHAR2(1),
    bdate          DATE,
    relationship   VARCHAR2(20),
    CONSTRAINT pk_dependent PRIMARY KEY ( essn,
                                          dependent_name )
);

INSERT INTO employee VALUES (
    'John',
    'B',
    'Smith',
    '123456789',
    TO_DATE('1965-01-09', 'YYYY-MM-DD'),
    '731 Fondren, Houston, TX',
    'M',
    30000,
    '333445555',
    5
);

INSERT INTO employee VALUES (
    'Franklin',
    'T',
    'Wong',
    '333445555',
    TO_DATE('1995-12-08', 'YYYY-MM-DD'),
    '638 Voss, Houston, TX',
    'M',
    40000,
    '888665555',
    5
);

INSERT INTO employee VALUES (
    'Alica',
    'J',
    'Zelaya',
    '999887777',
    TO_DATE('1968-01-19', 'YYYY-MM-DD'),
    '3321 Castle, Spring, TX',
    'F',
    25000,
    '987654321',
    4
);

INSERT INTO employee VALUES (
    'Jennifer',
    'S',
    'Wallace',
    '987654321',
    TO_DATE('1941-06-20', 'YYYY-MM-DD'),
    '291 Berry,Bellaire,TX',
    'F',
    43000,
    '888665555',
    4
);

INSERT INTO employee VALUES (
    'Ramesh',
    'K',
    'Narayan',
    '666884444',
    TO_DATE('1962-09-15', 'YYYY-MM-DD'),
    '975 Fire Oak,Humble,TX',
    'M',
    38000,
    '333445555',
    5
);

INSERT INTO employee VALUES (
    'Joyce',
    'A',
    'English',
    '453453453',
    TO_DATE('1972-07-31', 'YYYY-MM-DD'),
    '5631 Rice, Houston,TX',
    'F',
    25000,
    '333445555',
    4
);

INSERT INTO employee VALUES (
    'Ahmad',
    'V',
    'Jabbar',
    '987987987',
    TO_DATE('1969-03-29', 'YYYY-MM-DD'),
    '980 Dallas, Houston,TX',
    'M',
    25000,
    '987654321',
    4
);

INSERT INTO employee VALUES (
    'James',
    'E',
    'Borg',
    '888665555',
    TO_DATE('1937-11-10', 'YYYY-MM-DD'),
    '450 Stone, Houston,TX',
    'M',
    55000,
    NULL,
    1
);

INSERT INTO department VALUES (
    'Research',
    5,
    '333445555',
    TO_DATE('1988-05-22', 'YYYY-MM-DD')
);

INSERT INTO department VALUES (
    'Administration',
    4,
    '987654321',
    TO_DATE('1995-01-01', 'YYYY-MM-DD')
);

INSERT INTO department VALUES (
    'Headquarters',
    1,
    '888665555',
    TO_DATE('1981-06-19', 'YYYY-MM-DD')
);

INSERT INTO dept_locations VALUES (
    1,
    'Houston'
);

INSERT INTO dept_locations VALUES (
    4,
    'Stafford'
);

INSERT INTO dept_locations VALUES (
    5,
    'Bellaire'
);

INSERT INTO dept_locations VALUES (
    5,
    'Sugarland'
);

INSERT INTO dept_locations VALUES (
    5,
    'Houston'
);

--INSERT INTO works_on VALUES (
--    '123456789',
--    1,
--    32.5
--);
--
--INSERT INTO works_on VALUES (
--    '123456789',
--    2,
--    7.5
--);

INSERT INTO works_on VALUES (
    '666884444',
    3,
    40.0
);

INSERT INTO works_on VALUES (
    '453453453',
    1,
    20.0
);

INSERT INTO works_on VALUES (
    '453453453',
    2,
    20.0
);

INSERT INTO works_on VALUES (
    '333445555',
    2,
    10.0
);

INSERT INTO works_on VALUES (
    '333445555',
    3,
    10.0
);

INSERT INTO works_on VALUES (
    '333445555',
    10,
    10.0
);

INSERT INTO works_on VALUES (
    '333445555',
    20,
    10.0
);

INSERT INTO works_on VALUES (
    '999887777',
    30,
    30.0
);

INSERT INTO works_on VALUES (
    '999887777',
    10,
    10.0
);

INSERT INTO works_on VALUES (
    '987987987',
    '10',
    '35.0'
);

INSERT INTO works_on VALUES (
    '987987987',
    '30',
    '5.0'
);

INSERT INTO works_on VALUES (
    '987654321',
    '30',
    '20.0'
);

INSERT INTO works_on VALUES (
    '987654321',
    '20',
    '15.0'
);
-----------------------------------
--INSERT INTO works_on VALUES (
--    '123456789',
--    3,
--    7.5
--);
--INSERT INTO works_on VALUES (
--    '123456789',
--    10,
--    7.5
--);
--INSERT INTO works_on VALUES (
--    '123456789',
--    20,
--    7.5
--);
--INSERT INTO works_on VALUES (
--    '123456789',
--    30,
--    7.5
--);
-----------------------------------
INSERT INTO works_on VALUES (
    '888665555',
    '20',
    NULL
);

INSERT INTO project VALUES (
    'ProductX',
    '1',
    'Bellaire',
    '5'
);

INSERT INTO project VALUES (
    'ProductY',
    '2',
    'Sugarland',
    '5'
);

INSERT INTO project VALUES (
    'ProductZ',
    '3',
    'Houston',
    '5'
);

INSERT INTO project VALUES (
    'Computerrization',
    '10',
    'Stafford',
    '4'
);

INSERT INTO project VALUES (
    'Reorganization',
    '20',
    'Houston',
    '1'
);

INSERT INTO project VALUES (
    'Newbenefits',
    '30',
    'Stafford',
    '4'
);

INSERT INTO dependent VALUES (
    '333445555',
    'Alice',
    'F',
    TO_DATE('1986-04-05', 'YYYY-MM-DD'),
    'Daughter'
);

INSERT INTO dependent VALUES (
    '333445555',
    'Theodore',
    'M',
    TO_DATE('1983-10-25', 'YYYY-MM-DD'),
    'Son'
);

INSERT INTO dependent VALUES (
    '333445555',
    'Joy',
    'F',
    TO_DATE('1958-05-03', 'YYYY-MM-DD'),
    'Spouse'
);

INSERT INTO dependent VALUES (
    '987654321',
    'Abner',
    'M',
    TO_DATE('1942-02-28', 'YYYY-MM-DD'),
    'Spouse'
);

INSERT INTO dependent VALUES (
    '123456789',
    'Michael',
    'M',
    TO_DATE('1988-01-04', 'YYYY-MM-DD'),
    'Son'
);

INSERT INTO dependent VALUES (
    '123456789',
    'Alice',
    'F',
    TO_DATE('1988-12-30', 'YYYY-MM-DD'),
    'Daughter'
);

INSERT INTO dependent VALUES (
    '123456789',
    'Elizabeth',
    'F',
    TO_DATE('1967-05-05', 'YYYY-MM-DD'),
    'Spouse'
);
--1. Retrieve the names of employees in department 4 who work more than 15 hours per week on the 'ProductX' project.
--
SELECT
    e.fname,
    e.lname
FROM
    employee e
    JOIN works_on w ON e.ssn = w.essn
    JOIN project  p ON w.pno = p.pnumber
WHERE
    e.dno = 4
    AND w.hours > 15 
    AND p.pname = 'ProductX';
--2. List the names of employees who have a dependent with the same first name as themselves.
--
SELECT
    e.fname,
    e.lname
FROM
    employee  e,
    dependent d
WHERE
    e.ssn = d.essn
    AND e.fname = d.dependent_name;
--3. Find the names of employees that are directly supervised by 'Franklin Wong'.
--
SELECT E.Fname, E.Lname 
    FROM EMPLOYEE E
    WHERE E.Super_ssn = ( SELECT Ssn
                          FROM EMPLOYEE sup
                          WHERE sup.Fname = 'Franklin' AND sup.Lname = 'Wong'
    )
--4. For each project, list the project name and the total hours per week (by all employees) spent on that project.
--
SELECT p.Pname, SUM(w.Hours) AS "Total Hours Per Week"
    FROM PROJECT p
    JOIN WORKS_ON w ON p.Pnumber = w.Pno
    GROUP BY p.Pname;
--5. Retrieve the names of employees who work on every project.
--
SELECT e.Fname, e.Lname
    FROM EMPLOYEE e
    JOIN WORKS_ON w ON e.Ssn = w.Essn
    GROUP BY e.Fname, e.Lname
    HAVING COUNT(DISTINCT w.Pno) = (
      SELECT COUNT(DISTINCT Pno)
      FROM WORKS_ON
)
--6. Retrieve the names of employees who do not work on any project.
--
SELECT e.Fname, e.Lname , w.Pno
    FROM EMPLOYEE e
    LEFT OUTER JOIN WORKS_ON w ON e.Ssn = w.Essn
    WHERE w.Pno IS NULL;
--7. For each department, retrieve the department name, and the average salary of employees working in that department.
-- 
SELECT d.Dname, AVG(e.Salary) AS "The average salary of employees working in that department"
    FROM DEPARTMENT d
    JOIN EMPLOYEE e ON d.Dnumber  = e.Dno
    GROUP BY d.Dname
--8. Retrieve the average salary of all female employees.
--
SELECT AVG(e.Salary) AS "The average salary of all female employees"
    FROM EMPLOYEE e
    WHERE e.Sex = 'F'
--9. Find the names and addresses of employees who work on at least one project located in Houston but whose department has no location in Houston.
--
SELECT e.Lname,e.Fname, e.Address
    FROM EMPLOYEE e 
    JOIN WORKS_ON w ON e.Ssn = w.Essn JOIN PROJECT p ON w.Pno = p.Pnumber
    JOIN DEPARTMENT d ON e.Dno = d.Dnumber 
    WHERE p.Plocation IN 'Houston' AND d.Dnumber NOT IN (
          SELECT Dnumber
          FROM DEPT_LOCATIONS
          WHERE Dlocation = 'Houston'      
);
--10. List the last names of department managers who have no dependents.
SELECT e.lname, e.fname
FROM employee e
JOIN department d ON e.ssn = d.mgr_ssn
WHERE e.ssn NOT IN (
    SELECT essn
    FROM dependent
);

drop table EMPLOYEE;
drop table DEPARTMENT;
drop table DEPT_LOCATIONS;
drop table WORKS_ON;
drop table PROJECT;
drop table DEPENDENT;