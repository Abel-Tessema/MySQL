
CREATE TABLE User (
    id VARCHAR(255) PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL,
    college VARCHAR(255),
    department VARCHAR(255),
    year INT,
    semester INT,
    section VARCHAR(50)
);

CREATE TABLE Course (
    code VARCHAR(50) PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    description TEXT,
    image_path VARCHAR(255),
    year INT,
    semester INT
);

CREATE TABLE Assignment (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    description TEXT,
    course_code VARCHAR(50) REFERENCES Course(code),
    marks FLOAT,
    dateTimeGiven TIMESTAMP,
    dueDateTime TIMESTAMP
);

CREATE TABLE Exam (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    description TEXT,
    course_code VARCHAR(50) REFERENCES Course(code),
    dateTime TIMESTAMP
);

CREATE TABLE Question (
    id SERIAL PRIMARY KEY,
    questionType VARCHAR(50),
    marks FLOAT,
    questionText TEXT,
    exam_id INT REFERENCES Exam(id)
);

CREATE TABLE MultipleChoice (
    id SERIAL PRIMARY KEY,
    question_id INT REFERENCES Question(id),
    choice_text VARCHAR(255)
);

CREATE TABLE Grade (
    id SERIAL PRIMARY KEY,
    course_code VARCHAR(50) REFERENCES Course(code),
    user_id VARCHAR(255) REFERENCES User(id),
    gradePoint FLOAT
);

CREATE TABLE Course_User (
    user_id VARCHAR(255) REFERENCES User(id),
    course_code VARCHAR(50) REFERENCES Course(code),
    PRIMARY KEY (user_id, course_code)
);
