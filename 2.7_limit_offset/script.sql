create schema if not exists aula2_7;
use aula2_7;

create table cargos(
id int primary key,
descricao varchar(45),
nivel int
);

create table departamentos(
id int primary key,
nome varchar(45)
);

create table funcionarios(
id int primary key,
nome varchar(45),
salario decimal(10,2),
cargo_id int,
departamento_id int,
foreign key (cargo_id) references cargos(id),
foreign key (departamento_id) references departamentos(id)
);

insert into cargos values (1, 'Analista Junior', 1);
insert into cargos values (2, 'Analista Junior', 2);
insert into cargos values (3, 'Analista Junior', 3);
insert into cargos values (4, 'Analista Pleno', 1);
insert into cargos values (5, 'Analista Pleno', 2);
insert into cargos values (6, 'Analista Pleno', 3);
insert into cargos values (7, 'Analista Senior', 1);
insert into cargos values (8, 'Analista Senior', 2);
insert into cargos values (9, 'Analista Senior', 3);
insert into cargos values (10, 'DBA', 1);
insert into cargos values (11, 'DBA', 2);
insert into cargos values (12, 'DBA', 3);
insert into cargos values (13, 'secretaria', 1);

insert into departamentos values (1, 'administrativo');
insert into departamentos values (2, 'ti');

insert into funcionarios values (1, 'Maria Silva', 800.00, 13, 1);
insert into funcionarios values (2, 'Mario Carvalho', 3000.00, 2, 2);
insert into funcionarios values (3, 'Felipe Fernandes', 12000.00, 11, 2);
insert into funcionarios values (4, 'Vitor Cunha', 8000.00, 9, 2);
