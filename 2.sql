drop table Students;
drop table Groups;
drop table Courses;
drop table Languages;
drop table Teachers;


create table Teachers(
    id_teacher int primary key,
    name varchar(40),
	surname varchar(40),
	fname varchar(40),
	datebd date,
	sertificats varchar(255),
	phone varchar(13),
	startdate date
);

create table Languages(
    id_language int primary key,
    name varchar(50)
);

create table Courses(
    id_course int primary key,
    name varchar(50),
	year int,
	timetake timestamp,
	
	id_language int,
	constraint const_language foreign key (id_language) references Languages(id_language),

	id_teacher int,
	constraint const_teacher foreign key (id_teacher) references Teachers(id_teacher)
);

create table Groups(
    id_group int primary key,
    name varchar(50),
	id_course int,
	constraint const_course foreign key (id_course) references Courses(id_course)
);

create table Students(
    id_student int primary key,
    name varchar(40),
	surname varchar(40),
	fname varchar(40),
	datebd date,
	email varchar(100),
	phone varchar(13),
	id_group int,
	constraint const_group foreign key (id_group) references Groups(id_group)
);