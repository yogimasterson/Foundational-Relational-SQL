-- Student Records

-- CREATE Student
CREATE TABLE student(
  matric_no CHAR(8) PRIMARY KEY,
  first_name VARCHAR(50) NOT NULL,
  last_name VARCHAR(50) NOT NULL,
  date_of_birth DATE
);

-- Add some students to the database
INSERT INTO student
     VALUES ('40001010', 'Daniel', 'Radcliffe', '1989-07-23'),
	          ('40001011', 'Emma', 'Watson', '1990-04-15'),
	          ('40001012', 'Rupert', 'Grint', '1988-10-24');

-- CREATE module
CREATE TABLE module (
	module_code CHAR(8) PRIMARY KEY,
	module_title VARCHAR(50) NOT NULL,
	level INT NOT NULL,
	credits INT NOT NULL DEFAULT 20
);

-- Add some modules
INSERT INTO module
     VALUES ('HUF07101', 'Herbology', '07'),
     	      ('SLY07102', 'Defense Against the Dark Arts', '07'),
    	      ('HUF08102', 'History of Magic', '08');

-- CREATE registration
CREATE TABLE registration (
  matric_no CHAR(8),
  module_code CHAR(8),
  result DECIMAL(4, 1),
  PRIMARY KEY (matric_no, module_code),
  FOREIGN KEY (matric_no) REFERENCES student (matric_no),
  FOREIGN KEY (module_code) REFERENCES module (module_code)
);

-- Add some data
INSERT INTO registration
     VALUES ('40001010', 'SLY07102', 90),
    	      ('40001010', 'HUF07101', 40),
    	      ('40001010', 'HUF08102', null),
    	      ('40001011', 'SLY07102', 99),
    	      ('40001011', 'HUF08102', null),
    	      ('40001012', 'SLY07102', 20),
    	      ('40001012', 'HUF07101', 20);

-- Run some queries
   SELECT last_name, first_name, result,
CASE WHEN result <= 39
     THEN 'f'
     WHEN result >= 40
      AND result <= 69
     THEN 'P'
     WHEN result >= 70
     THEN 'M'
     ELSE NULL
      END
     FROM registration
          JOIN module
          ON module.module_code = registration.module_code
          JOIN student
          ON student.matric_no = registration.matric_no
    WHERE registration.module_code = 'SLY07102';
