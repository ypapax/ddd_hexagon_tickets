CREATE DATABASE ticket;
\connect ticket;
CREATE TABLE "tickets" (
    id bigserial primary key,
    creator varchar(20) NOT NULL,
    assigned varchar(20) NOT NULL,
    title varchar(20) NOT NULL,
    description varchar(20) NOT NULL,
    status varchar(20) NOT NULL,
    points int NOT NULL,
    created timestamp default NULL,
    updated timestamp default NULL
);