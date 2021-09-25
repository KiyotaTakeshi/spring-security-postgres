create table roles
(
    id serial not null
        constraint roles_pkey
            primary key,
    name varchar(20)
);

alter table roles owner to postgres;

create table user_roles
(
    user_id bigint not null
        constraint fkhfh9dx7w3ubf1co1vdev94g3f
            references users,
    role_id integer not null
        constraint fkh8ciramu9cc9q3qcqiv4ue8a6
            references roles,
    constraint user_roles_pkey
        primary key (user_id, role_id)
);
alter table user_roles owner to postgres;

create table users
(
    id bigserial not null
        constraint users_pkey
            primary key,
    email varchar(255)
        constraint uk6dotkott2kjsp8vw4d0m25fb7
            unique,
    password varchar(255),
    username varchar(255)
        constraint ukr43af9ap4edm43mmtq01oddj6
            unique
);
alter table users owner to postgres;

