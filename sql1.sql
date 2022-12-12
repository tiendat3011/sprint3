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
