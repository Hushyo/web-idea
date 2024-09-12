create table if not exists `user`(
    id int  not null,
    name varchar(30) not null,
    insert_time datetime not null default current_timestamp,
    update_time datetime not null default current_timestamp on update current_timestamp
)