/*Table Scripts*/

/* Main Tables */
CREATE TABLE subjects(
    id INT AUTO_INCREMENT PRIMARY KEY,
    subject_name VARCHAR(45) NOT NULL
) ENGINE = InnoDB;


CREATE TABLE teachers(
    teacher_id INT AUTO_INCREMENT PRIMARY KEY,
    teacher_name VARCHAR(45) NOT NULL,
	subject_id INT,
	CONSTRAINT fk_category FOREIGN KEY (subject_id) REFERENCES subjects(id) 
) ENGINE = InnoDB;


CREATE TABLE students(
	student_id INT AUTO_INCREMENT PRIMARY KEY,
    student_name VARCHAR(45) NOT NULL
) ENGINE = InnoDB;


/* Relations */
CREATE TABLE enrollments(
    record_id INT AUTO_INCREMENT PRIMARY KEY,
	student_id INT,
    subject_id INT,
	FOREIGN KEY (student_id) REFERENCES students(student_id),
    FOREIGN KEY (subject_id) REFERENCES subjects(id)	
) ENGINE = InnoDB;




INSERT INTO `teachers` (`teacher_id`, `teacher_name`, `subject_id`) VALUES
(1, 'Andrew', 1),
(2, 'Peter', 2),
(3, 'Carter ', 3);


INSERT INTO `students` (`student_id`, `student_name`) VALUES
(1, 'John Doe '),
(2, 'Jane Doe'),
(3, 'Jack Doe');


INSERT INTO `subjects` (`id`, `subject_name`) VALUES
(1, 'Information Systems'),
(2, 'Information Technology'),
(3, 'Information Management');


INSERT INTO `enrollments` (`record_id`, `student_id`, `subject_id`) VALUES
(1, 1, 1),
(3, 3, 3),
(4, 2, 2);
