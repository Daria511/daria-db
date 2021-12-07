insert into Teachers (id_teacher, surname, name, fname) values (1, 'Захарчук', 'Олег', 'Олексійович');
insert all
    into Teachers (id_teacher, surname, name, fname) values (2, 'Броварчук', 'Владислав', 'Михайлович')
    into Teachers (id_teacher, surname, name, fname) values (3, 'Крамарчук', 'Олена', 'Володимирівна')
    into Teachers (id_teacher, surname, name, fname) values (4, 'Дмитренко', 'Анастасія', 'Валентинівна')
    into Teachers (id_teacher, surname, name, fname) values (5, 'Сергінко', 'Ілля', 'Петрович')
	into Teachers (id_teacher, surname, name, fname) values (6, 'Захарчук', 'Тетяна', 'Василівн')
select * from dual;
	
update Teachers set name = 'Дмитрієнко' where id_teacher = 4;
update Teachers set surname = 'Сергієнко' where id_teacher >= 4 and id_teacher < 6;

delete from Teachers where id_teacher = 4;
delete from Teachers where id_teacher >= 4 and id_teacher < 6;
truncate table Teachers;