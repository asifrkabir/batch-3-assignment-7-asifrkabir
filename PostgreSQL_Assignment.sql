----------------- Setup -----------------

-- Create "students" table

CREATE TABLE students (
    student_id SERIAL PRIMARY KEY,
    student_name VARCHAR(200) NOT NULL,
    age INTEGER,
    email VARCHAR(200),
    frontend_mark INTEGER,
    backend_mark INTEGER,
    status VARCHAR(50)
);

-- Create "courses" table

CREATE TABLE courses (
	course_id SERIAL PRIMARY KEY,
    course_name VARCHAR(200) NOT NULL,
    credits INTEGER NOT NULL
);

-- Create "enrollment" table

CREATE TABLE enrollment (
    enrollment_id SERIAL PRIMARY KEY,
    student_id INTEGER REFERENCES students(student_id),
    course_id INTEGER REFERENCES courses(course_id)
);

----------------- Setup -----------------