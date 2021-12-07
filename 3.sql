alter table Students drop constraint const_group;
   
alter table Students drop column datebd;
alter table Students modify id_student int not null;

alter table Students rename column email to mail;

alter table Students add constraint const_unq unique (phone, mail);
    
alter table Students
    add constraint const_group foreign key (id_group) references Groups(id_group);