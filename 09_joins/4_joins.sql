-- what professors are teaching what courses and when?
SELECT
    p.first_name,
    p.last_name,
    s.term,
    s.academic_year,
    c.title,
    c.credits
FROM professors p
JOIN sections s on s.professor_id = p.professor_id
JOIN courses c on c.course_id = s.course_id




-- what courses students are enrolled in?
-- what departments are those in?

SELECT
    s.first_name,
    s.last_name,
    c.title,
    d.department_name
FROM students s
JOIN enrollments e on e.student_id = s.student_id
JOIN sections sec on sec.section_id = e.section_id
JOIN courses c on c.course_id = sec.course_id
JOIN departments d on d.department_id = c.department_id;





EXIT
