CREATE TABLE UniversityDepartments(
	Department INT PRIMARY KEY
);

INSERT INTO UniversityDepartments(Department) VALUES ("CS");
INSERT INTO UniversityDepartments(Department) VALUES ("MA");
INSERT INTO UniversityDepartments(Department) VALUES ("FI");
INSERT INTO UniversityDepartments(Department) VALUES ("AC");

CREATE TABLE Courses(
	CourseName INT PRIMARY KEY,
	UniversityDepartment INT,
	FOREIGN KEY(UniversityDepartment) REFERENCES UniversityDepartments(Department)
);

INSERT INTO Courses(UniversityDepartment,CourseName) VALUES ("CS","CS_306");
INSERT INTO Courses(UniversityDepartment,CourseName) VALUES ("CS","CS_470");
INSERT INTO Courses(UniversityDepartment,CourseName) VALUES ("MA","MA_101");
INSERT INTO Courses(UniversityDepartment,CourseName) VALUES ("FI","FI_360");
INSERT INTO Courses(UniversityDepartment,CourseName) VALUES ("AC","AC_407");

CREATE TABLE ClassRoster(
	RowID TEXT PRIMARY KEY,
	StudentIDNumber INT,
	course INT,
	FOREIGN KEY(course) REFERENCES Courses(CourseName)
);

INSERT INTO ClassRoster(RowID,StudentIDNumber,course) VALUES (1,100100,"CS_470");
INSERT INTO ClassRoster(RowID,StudentIDNumber,course) VALUES (2,100100,"CS_306");
INSERT INTO ClassRoster(RowID,StudentIDNumber,course) VALUES (3,900101,"MA_101");
INSERT INTO ClassRoster(RowID,StudentIDNumber,course) VALUES (4,900101,"FI_360");