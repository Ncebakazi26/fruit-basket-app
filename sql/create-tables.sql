create table basket(
	id serial not null primary key,
	description text not null unique
);

create table fruit(
	id serial not null primary key,
	name text not null unique,
	price decimal(10,2)
);

create table basket_item (
	id serial not null primary key,
    qty int not null,
	fruit_id int,
	basket_id int,
	foreign key (fruit_id) references fruit(id),
	foreign key (basket_id) references basket(id)
);

-- db name = multi_fruit