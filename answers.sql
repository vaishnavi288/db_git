use education_db;
create table if not exists course  (course_id int primary key ,course_name varchar(30) not null,duration int,fee int);
create table if not exists student(student_id int primary key,student_name varchar(30) not null,email varchar(30),age int,gender varchar(30),mark int,course_id int, foreign  key (course_id) references course(course_id));
insert into course(course_id,course_name,duration,fee) values(1,"django",120,35000),(2,"flask",120,30000),(3,"aiml",120,40000);
insert into student (student_id,student_name,email,age,gender,mark,course_id)values(101,"anu","anu@gmail.com",23,"female",45,1),(102,"amal","amal@gmail.com",20,"male",48,2),(103,"devu","devi@gmail.com",24,"female",49,3);
insert into course(course_id,course_name,duration,fee) values(4,"java",120,40000),(5,"testing",120,40000);
 insert into student (student_id,student_name,email,age,gender,mark,course_id)values(104,"ram","ram@gmail.com",24,"male",89,4),(105,"sam","sam@gmail.com",19,"male",99,5);
select student_name from student 
where mark > 80
order by mark DESC;

select max(mark) as highest_mark,min(mark) as lowest_mark,avg(mark) as average_mark
from student;

select student_name,mark
from student
where age between 18 and 25
order by age;

select student_name,mark from student
 order by mark desc
 limit 5 ;


select course_id ,count(course_id) from student
group by course_id


select course_id ,count(course_id) from student
group by course_id
having count(course_id)>2;


select student. student_name,student.mark,course.course_name from course
inner join student
on course.course_id=student.course_id;

select course.course_name,student.student_name from course
left join student
on  course.course_id=student.course_id;-- 





