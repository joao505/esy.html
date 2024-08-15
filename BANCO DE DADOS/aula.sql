alter table pessoas
add column profissao varchar(10);

alter table pessoas
drop column profissao;

desc pessoas;

select * from pessoas;

alter table pessoas
add column profissao varchar(10) after nome;

alter table pessoas
add column profissao varchar(10) first;

alter table pessoas
modify column profissao varchar(20) NOT NULL default'';

alter table pessoas
rename to gafanhotos;