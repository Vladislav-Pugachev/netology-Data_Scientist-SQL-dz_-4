create database language_nationality

create schema lecture_4_Pugachev

set search_path to lecture_4_Pugachev

-- �������� ������
create table language (
	language_id serial primary key,
	name varchar(50) not null unique,
	create_date timestamp default now(),
	deleted int2 default 0 check(deleted in (0, 1))
)

create table nationality (
	nationality_id serial primary key,
	name varchar(50) not null unique,
	create_date timestamp default now(),
	deleted int2 default 0 check(deleted in (0, 1))
)

create table country (
	country_id serial primary key,
	name varchar(50) not null unique,
	create_date timestamp default now(),
	deleted int2 default 0 check(deleted in (0, 1))
)

create table language_nationality (
	language_id int2 references language(language_id),
	nationality_id int2 references nationality(nationality_id),
	create_date timestamp default now(),
	deleted int2 default 0 check(deleted in (0, 1)))
	
create table country_nationality (
	country_id int2 references country(country_id),
	nationality_id int2 references nationality(nationality_id),
	create_date timestamp default now(),
	deleted int2 default 0 check(deleted in (0, 1)))

select * from 	language_nationality
-- ���������� �������



insert into country (name)
values ('������'),	('��������'), ('��������������'), ('���'), ('�������') 

insert into language (name)
values ('�������'),	('�����������'), ('����������'), ('��������'), ('���������')

insert into nationality (name)
values ('�������'),	('�������'), ('�����'), ('��������'), ('�������')

insert into language_nationality (language_id,nationality_id)
values (1,1), (1,3), (2,2), (4,4), (5,5), (3,2)

insert into country_nationality (country_id,nationality_id)
values (1,1), (1,3), (2,4), (4,5), (4,2), (5,5)