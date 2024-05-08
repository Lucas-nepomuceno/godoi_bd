create table workers (
id SERIAL primary key,
CPF INTEGER not null,
names VARCHAR(150) not null,
emails VARCHAR(300) not null,
lines VARCHAR(10) not null
);

create table engineers (
id SERIAL primary key,
CPF INTEGER not null,
names VARCHAR(150) not null,
emails VARCHAR(300) not null
);

create table manuals (
id SERIAL primary key,
names VARCHAR(150) not null,
categories VARCHAR(150)
);

create table files (
id SERIAL primary key,
manuals_id INTEGER,
foreign key (manuals_id) references manuals(id),
names VARCHAR(150),
URL VARCHAR(1000)
);

create table delegations (
id SERIAL primary key,
workers_id INTEGER,
foreign key (workers_id) references workers(id),
engineers_id INTEGER,
foreign key (engineers_id) references engineers (id),
manuals_id INTEGER,
foreign key (manuals_id) references manuals(id),
done BOOL
);