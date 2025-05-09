CREATE TABLE students (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    age INT NOT NULL,
    grade VARCHAR(10) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE courses (
    id SERIAL PRIMARY KEY,
    title VARCHAR(100) NOT NULL,
    description TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE enrollments (
    id SERIAL PRIMARY KEY,
    student_id INT REFERENCES students(id),
    course_id INT REFERENCES courses(id),
    enrollment_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);