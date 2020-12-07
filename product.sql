create table product(
	p_id varchar(10) not null,
	p_name varchar(10)
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

alter table product modify p_name varchar(50);

desc product;

insert into product value('p1', '16�� �����̽� �׷���', 3690000, 'MacBook Pro Mac OS �ڽ��� �������� ����� ������', 'Apple','����',10,'new','Note1.jpg',0);
insert into product value('p2', 'Apple 2020 �ƺ� ���� 13', 2490000, 'MacBook Pro Mac OS ���θ� ���� ���ΰ� ���� ���� ��Ʈ��', 'Apple','����',20,'new','Note2.jpg',0);
insert into product value('p3', '13�� �����̽� �׷���', 1690000, 'MacBook Pro Mac OS M1 Ĩ ��� �ƺ� ������ �ְ� ���� 16GB!', 'Apple','������',30,'new','Note3.jpg',0);
insert into product value('p4', '13�� M1Ĩ 256GB �����̽� �׷���', 2809260, 'MacBook Pro Mac OS �ư� ���� ���� �����Ʈ ������ �ٸ���!', 'Apple','����',40,'new','Note4.jpg',0);
insert into product value('p5', '15�� �ƺ����� 2018', 3190000, 'MacBook Pro Mac OS ���θ� ���� ���ΰ� ���� ���� ��Ʈ��', 'Apple','����',50,'new','Note5.jpg',0);
insert into product value('p6', '16�� Touch bar 2.6GHz �ǹ�', 1690000, 'MacBook Pro Mac OS �ƺ� ����� �ƺ� ������ ��Ⱑ �ٸ���!', 'Apple','����',58,'new','Note5.jpg',0);
insert into product value('p7', '13�� Apple 256GB �ǹ�', 1829000, 'MacBook Pro Mac OS Ȯ���� ���� ���÷��� ���� ����!', 'Apple','11����',20,'new','Note5.jpg',0);
insert into product value('p8', 'Apple 2.3GHz/128GB MPXR2KH/A �ǹ�', 2490000, 'MacBook Pro Mac OS �ڽ��� �������� ����� ������', 'Apple','����',10,'new','Note5.jpg',0);
insert into product value('p9', '13�� Retina, 2.3GHz Dual-core Intel Core I5', 2053338, 'MacBook Pro Mac OS ���θ� ���� ���ΰ� ���� ���� ��Ʈ��', 'Apple','11����',42,'new','Note5.jpg',0);

select * from product;

delete from product;




