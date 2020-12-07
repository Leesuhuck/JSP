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

insert into product value('p1', '16형 스페이스 그레이', 3690000, 'MacBook Pro Mac OS 자신의 음악으로 세계와 만나다', 'Apple','애플',10,'new','Note1.jpg',0);
insert into product value('p2', 'Apple 2020 맥북 에어 13', 2490000, 'MacBook Pro Mac OS 프로를 위해 프로가 만든 프로 노트북', 'Apple','쿠팡',20,'new','Note2.jpg',0);
insert into product value('p3', '13형 스페이스 그레이', 1690000, 'MacBook Pro Mac OS M1 칩 사용 맥북 프로의 최고 램은 16GB!', 'Apple','위메프',30,'new','Note3.jpg',0);
insert into product value('p4', '13형 M1칩 256GB 스페이스 그레이', 2809260, 'MacBook Pro Mac OS 맥과 인텔 맥의 썬더볼트 구성이 다르다!', 'Apple','쿠팡',40,'new','Note4.jpg',0);
insert into product value('p5', '15형 맥북프로 2018', 3190000, 'MacBook Pro Mac OS 프로를 위해 프로가 만든 프로 노트북', 'Apple','애플',50,'new','Note5.jpg',0);
insert into product value('p6', '16형 Touch bar 2.6GHz 실버', 1690000, 'MacBook Pro Mac OS 맥북 에어와 맥북 프로의 밝기가 다르다!', 'Apple','애플',58,'new','Note5.jpg',0);
insert into product value('p7', '13형 Apple 256GB 실버', 1829000, 'MacBook Pro Mac OS 확실한 외장 디스플레이 지원 차이!', 'Apple','11번가',20,'new','Note5.jpg',0);
insert into product value('p8', 'Apple 2.3GHz/128GB MPXR2KH/A 실버', 2490000, 'MacBook Pro Mac OS 자신의 음악으로 세계와 만나다', 'Apple','애플',10,'new','Note5.jpg',0);
insert into product value('p9', '13형 Retina, 2.3GHz Dual-core Intel Core I5', 2053338, 'MacBook Pro Mac OS 프로를 위해 프로가 만든 프로 노트북', 'Apple','11번가',42,'new','Note5.jpg',0);

select * from product;

delete from product;




