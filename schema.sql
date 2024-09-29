alter session set nls_date_format = 'dd/mm/yyyy';

create table clientes (
	codcli int generated always as identity (start with 1000 increment by 1),
	andar int,
	nome varchar(60),
	fone varchar(20),
	dtaniv date,
	qtdemoradores numeric(2),
	numapto number(3) primary key,
	tipopropriedade char(1) check (tipopropriedade in ('P','A')),
	multa float
);

create table vagas (
	numvaga number(3) primary key,
	numapto number(3),
		constraint fk_numapto foreign key (numapto) references clientes(numapto),
	observacao char(4)
);

insert into clientes (andar,nome,fone,dtaniv,qtdemoradores,numapto,tipopropriedade,multa)
	values (1, 'jose silva', '9-9123-1111','09/01/1999',5,10,'p', null);

insert into clientes (andar,nome,fone,dtaniv,qtdemoradores,numapto,tipopropriedade,multa)
	values (1, 'ana lima', '9-9123-1112','09/06/2000',1,11,'p', null);

insert into clientes (andar,nome,fone,dtaniv,qtdemoradores,numapto,tipopropriedade,multa)
	values (2, 'carla terra', '9-9123-1113','18/05/2001',3,20,'a', null);

insert into clientes (andar,nome,fone,dtaniv,qtdemoradores,numapto,tipopropriedade,multa)
	values (2, 'amauri campos', '9-9123-1114','17/12/1994',6,21,'p', null);

insert into clientes (andar,nome,fone,dtaniv,qtdemoradores,numapto,tipopropriedade,multa)
	values (3, 'fabio mendes', '9-9123-1115','03/03/2000',5,31,'a', null);

insert into clientes (andar,nome,fone,dtaniv,qtdemoradores,numapto,tipopropriedade,multa)
	values (3, 'fabiana santos', '9-9123-1116','02/07/2000',4,32,'a', null);

insert into clientes (andar,nome,fone,dtaniv,qtdemoradores,numapto,tipopropriedade,multa)
	values (4, 'guilia gam', '9-9123-1117','04/03/2003',2,41,'p', null);

insert into clientes (andar,nome,fone,dtaniv,qtdemoradores,numapto,tipopropriedade,multa)
	values (4, 'pedro gam', '9-9123-1118','03/09/2003',1,42,'p', null);

insert into clientes (andar,nome,fone,dtaniv,qtdemoradores,numapto,tipopropriedade,multa)
	values (5, 'guilia gam', '9-9123-1119','05/08/2004',4,51,'p', 300);

insert into clientes (andar,nome,fone,dtaniv,qtdemoradores,numapto,tipopropriedade,multa)
	values (5, 'pedro gam', '9-9123-1120','01/10/2005',5,52,'a', null);

insert into clientes (andar,nome,fone,dtaniv,qtdemoradores,numapto,tipopropriedade,multa)
    values (6, 'teresa ruiz', '9-9123-1121','13/08/2002',3,61,'p', null);

insert into clientes (andar,nome,fone,dtaniv,qtdemoradores,numapto,tipopropriedade,multa)
	values (6, 'silvia lemos', '9-9123-1122','15/11/2001',3,62,'a', null);

insert into clientes (andar,nome,fone,dtaniv,qtdemoradores,numapto,tipopropriedade,multa)
	values (7, 'leila santana', '9-9123-1123','25/10/2002',2,71,'a', null);

insert into clientes (andar,nome,fone,dtaniv,qtdemoradores,numapto,tipopropriedade,multa)
	values (7, 'selma lopes', '9-9123-1124','18/09/2008',1,72,'a', null);

insert into clientes (andar,nome,fone,dtaniv,qtdemoradores,numapto,tipopropriedade,multa)
	values (8, 'gildo gomes', '9-9123-1125','19/05/2003',4,81,'p', 500);

insert into clientes (andar,nome,fone,dtaniv,qtdemoradores,numapto,tipopropriedade,multa)
	values (8, 'sandra sá', '9-9123-1126','12/12/2000',5,82,'a', null);

insert into clientes (andar,nome,fone,dtaniv,qtdemoradores,numapto,tipopropriedade,multa)
	values (9, 'wilson pereira', '9-9123-1127','09/10/2000',6,91,'p', null);

insert into clientes (andar,nome,fone,dtaniv,qtdemoradores,numapto,tipopropriedade,multa)
	values (9, 'gerson santos', '9-9123-1128','16/07/2004',4,92,'a', null);

insert into clientes (andar,nome,fone,dtaniv,qtdemoradores,numapto,tipopropriedade,multa)
	values (10, 'wilson pereira', '9-9123-1129','20/06/2002',2,101,'p', null);

insert into clientes (andar,nome,fone,dtaniv,qtdemoradores,numapto,tipopropriedade,multa)
	values (10, 'gerson santos', '9-9123-1130','18/09/2008',3,102,'p', null);

select * from clientes;

insert into vagas (numapto, numvaga,observacao)
	values (10,5,null);

insert into vagas (numapto, numvaga,observacao)
	values (11,1,null);

insert into vagas (numapto, numvaga,observacao)
	values (20,4,null);

insert into vagas (numapto, numvaga,observacao)
	values (21,9,'vago');

insert into vagas (numapto, numvaga,observacao)
	values (10,2,'vago');

insert into vagas (numapto, numvaga,observacao)
	values (32,13,null);

insert into vagas (numapto, numvaga,observacao)
	values (41,7,null);

insert into vagas (numapto, numvaga,observacao)
	values (42,6,null);

insert into vagas (numapto, numvaga,observacao)
	values (51,8,null);

insert into vagas (numapto, numvaga,observacao)
	values (52,17,null);

insert into vagas (numapto, numvaga,observacao)
	values (61,3,null);

insert into vagas (numapto, numvaga,observacao)
	values (62,10,'vago');

insert into vagas (numapto, numvaga,observacao)
	values (71,12,null);

insert into vagas (numapto, numvaga,observacao)
	values (71,14,null);

insert into vagas (numapto, numvaga,observacao)
	values (81,16,null);

insert into vagas (numapto, numvaga,observacao)
	values (82,18,null);

insert into vagas (numapto, numvaga,observacao)
	values (91,20,null);

insert into vagas (numapto, numvaga,observacao)
	values (92,19,'vago');

insert into vagas (numapto, numvaga,observacao)
	values (101,15,null);

insert into vagas (numapto, numvaga,observacao)
	values (102,11,null);

-- 1) explique o que é uma chave primária
-- r: uma chave primária é um atributo que identifica de maneira única cada 
-- registro em uma tabela de um banco de dados relacional. ela deve ser única, 
-- não pode ser nula e não deve ser alterada.

-- 2) indique a chave primária das tabelas
-- r: numapto, numvaga

-- 3) explique o que é uma chave estrangeira
-- r: uma chave estrangeira é um campo em uma tabela que estabelece uma relação 
-- com a chave primária de outra tabela. sua função é garantir a integridade referencial, 
-- conectando dados entre tabelas relacionadas. ela permite que um registro em uma tabela 
-- "referencie" outro registro em uma tabela diferente, ajudando a organizar e manter a 
-- consistência dos dados em um banco de dados relacional.

-- 4) indique a chave estrangeira da tabela
-- r: numapto

-- 5) mostre o comando que pegue os aniversariantes do mês de setempro:
-- r: 
	select nome, dtaniv
		from clientes
			where extract(month from dtaniv) = 9; 

-- 6) refaça a questão 5 usando no where to char(dtnasc,mm) =’05’:
	select nome, dtaniv 
		from clientes 
			where to_char(dtaniv, 'mm') = '05';

-- 7) mostre o comando que pegue que nasceu no ano 2000:
	select nome, dtaniv
		from clientes
			where extract(year from dtaniv) = 2000;

-- 8) mostre a idade dos donos do apartamentos:
	select nome, floor(months_between(sysdate, dtaniv) / 12) as idade
		from clientes;

-- 9) mostre a quantidade de moradores por apartamento quando for superior
-- a 4 moradores e que habitem os andares acima do 8º
	select numapto, qtdemoradores 
		from clientes 
			where qtdemoradores > 4 and andar > 8;

-- 10) qual é o morador que faz aniversário no dia 18/09?
	select nome, dtaniv 
		from clientes 
			where to_char(dtaniv, 'dd/mm') = '18/09';

-- 11) suponha que na tabela vagas o campo observação só vai ser
-- preenchido com “vago” quando houver essa situação, caso contrário o
-- campo no insert não vai ser preenchido ficando com nulo, como é essa
-- instrução insert?
	insert into vagas (numvaga, obs) values (101, 'vago');
-- ou sem preencher o campo obs:
	insert into vagas (numvaga) values (102);

-- 12)suponha que na tabela vagas o campo observação só vai ser
-- preenchido com “vago” quando houver essa situação, caso contrário o
-- campo no insert não vai ser preenchido ficando com nulo, o select que
-- traga todos os dados da tabela vagas onde o campo obs esta
-- preenchido com nulo ?
select numapto, numvaga, observacao
	from vagas where observacao is null;

-- 13)desejo criar o campo tipo de vaga em vagas para informar se a vaga é
-- dupla ou simples. mostre como adicionar um novo campo em vagas
-- chamado tipovaga varchar (7)
	alter table vagas add tipovaga varchar(7);

-- 14)complementado a questão 13, mostre como preencher o campotipovagas com simples para todos as vagas
	update vagas set tipovaga = 'simples'
	select * from vagas

-- 15) complementado a questão 13, altere as vagas numero 13 , 17 e 10
-- para dupla, usando um único update e não três updates:
	update vagas set tipovaga = 'dupla' where numvaga in(13,17,10);

-- 17)mostre nome morador (no select altere o titulo deste campo), apto e
-- quantidade de moradores para o intervalo entre 3 e 7 moradores.
select nome as "morador", numapto, qtdemoradores from clientes where qtdemoradores between 3 and 7;

-- 18)alguns moradores dos apartamentos terão que pagar uma multa por
-- atraso nos pagamentos dos condomínios, porém esse valor tem que ser
-- atualizado para um aumento de 5% com um desconto de r$50. atualize
-- esses valores e mostre o comando select nome, apto, multa. altere os
-- títulos das colunas no select usando as. formate o campo de multa a
-- ser exibida mostrando a mesma em r$. não esqueça de fazer as
-- alterações no alter section:
	update clientes 
	set multa = (multa * 1.05) - 50;

	select nome as "nome", numapto as "apto", 
       	to_char(multa, 'l999g999d99') as "multa em r$"
	from clientes;

-- 19) mostre a quantidade de moradores do edifício:
	select sum(qtdemoradores) as "total moradores"
	from clientes;

-- 20) conte quantos moradores são proprietários de apartamentos e quantos são alugados
	select tipopropriedade, count(*) as quantidade 
		from clientes 
			group by tipopropriedade;


-- 21) liste, quantidade moradores, numero apto, num vaga.
	select qtdemoradores, numapto, numvaga 
		from clientes 
			join vagas on clientes.numapto = vagas.numapto;

-- 22)liste, quantidade moradores, numero apto, num vaga, obs para as vagas obs vago:
	select qtdemoradores, numapto, numvaga, obs 
		from clientes 
		join vagas on clientes.numapto = vagas.numapto 
	where obs = 'vago';

-- 23)liste, quantidade moradores, numero apto, num vaga obs para as vagas obs vago e vagas tipo simples:
	select qtdemoradores, numapto, numvaga, obs 
		from clientes 
		join vagas on clientes.numapto = vagas.numapto 
	where obs = 'vago' and tipovaga = 'simples';

-- 24)liste, quantidade moradores, numero apto, num vaga obs para as
-- vagas obs ocupada (as que estão com null) e vagas tipo simples:
	select qtdemoradores, numapto, numvaga, obs 
		from clientes 
		join vagas on clientes.numapto = vagas.numapto 
	where obs is null and tipovaga = 'simples';


