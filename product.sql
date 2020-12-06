create table product(
	p_id varchar(10) not null,
	p_name varchar(10),
	p_unitPrice int,
	p_descript text,
	p_category varchar(20),
	p_manufact varchar(20),
	p_unitsStock int,
	p_condition varchar(20),
	p_fileName varchar(20),
	p_readCount int default 0,
	primary key(p_id)
);

desc product;

insert into product value('p1', 'ipad_ver1', 100000, '512GB 내장스토리지', 'Apple','애플',10,'new','Note1.jpg',0);
insert into product value('p2', 'ipad_ver2', 110000, '256GB 내장스토리지', 'Apple','애플',20,'new','Note2.jpg',0);
insert into product value('p3', 'ipad_ver3', 120000, '512GB 내장스토리지', 'Apple','애플',30,'new','Note3.jpg',0);
insert into product value('p4', 'ipad_ver4', 130000, '256GB 내장스토리지', 'Apple','애플',40,'new','Note4.jpg',0);
insert into product value('p5', 'ipad_ver5', 140000, '512GB 내장스토리지', 'Apple','애플',50,'new','Note5.jpg',0);

select * from product;

delete from product;




