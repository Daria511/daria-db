drop table Table1;
drop table Table2;

create table Table1
    as select id_teacher, surname from Teachers
        where id_teacher <= 3;
        
create table Table2
    as select id_teacher, surname from Teachers
        where id_teacher >= 2 and id_teacher < 4;

select * from Table1
    union select * from Table2;
select * from Table1
    union all select * from Table2;

select * from Table1
    intersect select * from Table2;
	
select * from Table1
    minus select * from Table2; 
    
select * from Table1, Table2;