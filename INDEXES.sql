CREATE   INDEX idx1 on EMPLOYEES(EMPID)


ALTER INDEX idx1 ON EMPLOYEES DISABLE


ALTER INDEX idx1 ON EMPLOYEES REBUILD

DROP INDEX idx1 on EMPLOYEES

SELECT COUNT(*) FROM EMPLOYEES

SELECT * FROM EMPLOYEES;

CREATE NONCLUSTERED  INDEX idx2 on EMPLOYEES(EMPID)

CREATE NONCLUSTERED  INDEX idx4 on DEPARTMENTS(DEPTID)


CREATE UNIQUE  INDEX idx5 on DEPARTMENTS(DEPTID)

CREATE UNIQUE INDEX idx6 on EMPLOYEES(EMPNAME);