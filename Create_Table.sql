create table users(
	uid serial primary key,
	name varchar(100) not null,
	email varchar(100) not null,
	mobile varchar(20) not null,
	sex char not null,
	dob date not null,
	username varchar(50) not null,
	pass varchar(40) not null,
	plink varchar(200),
	pic bytea,
	uploadvid integer[],
	likedvid integer[],
	subby integer[],
	subto integer[]
);

create table videos(
	vid serial primary key,
	title varchar(200) not null,
	summary text,
	uid integer not null,
	pic bytea,
	seen integer default 0,
	likes integer[],
	vlink varchar(200),
	cid integer[],
	uploaddate timestamp not null,
	tags varchar[] not null
);

create table comments(
	cid serial primary key,
	info text not null,
	vid int not null,
	uid int not null,
	comdate timestamp not null,
	replies integer[]
);