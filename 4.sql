insert into Teachers (id_teacher, surname, name, fname) values (1, 'Захарчук', 'Олег', 'Олексійович');
insert all
    into Teachers (id_teacher, surname, name, fname) values (2, 'Броварчук', 'Владислав', 'Михайлович')
    into Teachers (id_teacher, surname, name, fname) values (3, 'Крамарчук', 'Олена', 'Володимирівна')
    into Teachers (id_teacher, surname, name, fname) values (4, 'Дмитренко', 'Анастасія', 'Валентинівна')
    into Teachers (id_teacher, surname, name, fname) values (5, 'Сергінко', 'Ілля', 'Петрович')
	into Teachers (id_teacher, surname, name, fname) values (6, 'Захарчук', 'Тетяна', 'Василівн')
select * from dual;

create or replace directory dir as 'D:\\';
create table TeachersLoad(
	id int,
    name varchar(40),
	surname varchar(40),
	fname varchar(40)
) organization external(
    type ORACLE_LOADER
    default directory dir
    access parameters(
        records delimited by newline
        fields terminated by ','
        missing field values are null
    )
    location ('load.txt')
); insert into Teachers select * from TeachersLoad;
	
update Teachers set name = 'Дмитрієнко' where id_teacher = 4;
update Teachers set surname = 'Сергієнко' where id_teacher >= 5 and id_teacher <= 6;

delete from Teachers where id_teacher = 4;
delete from Teachers where id_teacher >= 5 and id_teacher <= 6;
truncate table Teachers;
