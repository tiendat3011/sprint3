-- cau1 Đưa ra thông tin gồm mã số, họ tên và tên khoa của tất cả các giảng viên
select instructor.instructor_id, instructor.instructor_name, faculty.faculty_name
from instructor
join faculty on instructor.faculty_id = faculty.faculty_id;

-- cau2 Đưa ra thông tin gồm mã số, họ tên và tên khoa của các giảng viên
-- của khoa ‘DIA LY va QLTN’
select instructor.instructor_id, instructor.instructor_name, faculty.faculty_name
from instructor
join faculty on instructor.faculty_id = faculty.faculty_id
where faculty.faculty_name ="DIA LY va QLTN" ;

-- cau3 Cho biết số sinh viên của khoa ‘CONG NGHE SINH HOC’
select count(student.student_name) from student
join faculty on faculty.faculty_id = student.faculty_id
group by faculty.faculty_name
having faculty.faculty_name ="CONG NGHE SINH HOC";

-- cau4 Đưa ra danh sách gồm mã số, họ tên và tuổi của các sinh viên khoa ‘TOAN’
select student.student_id, student.student_name,
year(curdate()) - student.date_of_birth age
from student
join faculty on faculty.faculty_id = student.faculty_id
where faculty.faculty_name ='TOAN';

-- câu 5 Cho biết số giảng viên của khoa ‘CONG NGHE SINH HOC’
select count(faculty.faculty_name) SGV from instructor
join faculty  on instructor.faculty_id = faculty.faculty_id
group by faculty.faculty_name
having faculty.faculty_name = 'Cong nghe Sinh hoc';

-- câu 6 Cho biết thông tin về sinh viên không tham gia thực tập
select * from student
where not exists(SELECT instructor_student.student_id FROM instructor_student where student.student_id = instructor_student.student_id);

-- câu 7 Đưa ra mã khoa, tên khoa và số giảng viên của mỗi khoa	
SELECT faculty.faculty_id,faculty.faculty_name, COUNT(faculty.faculty_id) So_GV
FROM instructor JOIN faculty
ON instructor.faculty_id = faculty.faculty_id
GROUP BY faculty.faculty_id;

-- câu 8 Cho biết số điện thoại của khoa mà sinh viên có tên ‘Le van son’ đang theo học
SELECT faculty.faculty_name, faculty.phone
FROM faculty join student
ON faculty.faculty_id = student.faculty_id
WHERE student.student_name = 'Le Van Son'