create schema biblioteca;
use biblioteca;

create table livro (
	pk_livro_id int not null,
    titulo varchar(200) not null,
    autor varchar(100) not null,
    primary key (pk_livro_id)
);
alter table livro add constraint fk_editora_id foreign key (fk_editora_id) references editora (pk_editora_id);

create table usuario (
	pk_usuario_id int not null,
    nome varchar (150) not null,
    email varchar (150) not null unique,
    fk_curso_id int not null,
    primary key (pk_usuario_id)
);
alter table usuario add constraint fk_curso_id foreign key (fk_curso_id) references curso (pk_curso_id);
create table curso(
	pk_curso_id int not null auto_increment,
    nome varchar(200) not null,
    turno varchar(15) not null,
    primary key (pk_curso_id)
);


create table editora(
	pk_editora_id int not null auto_increment,
    nome varchar(200) not null,
    cidade varchar(120) not null,
    primary key(pk_editora_id)
);

create table livro_has_usuario(
	fk_livro_id int not null,
    fk_usuario_id int not null,
    data_retirada date not null,
    data_prevista_devolucao date not null,
    primary key (fk_livro_id, fk_usuario_id)
);

alter table livro_has_usuario add constraint fk_livro_id foreign key(fk_livro_id) references livro(pk_livro_id);
alter table livro_has_usuario add constraint fk_usuario_id foreign key(fk_usuario_id) references usuario (pk_usuario_id);