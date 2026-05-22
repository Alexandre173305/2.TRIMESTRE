create database Json_database;
use Json_database;

create table dados_json(
json char(250)
);

insert into dados_json values(
'{
"Nome":"Jose".
"sobreome":"Cardoso".
"idade":"25".
"Id": "001"
}');
select * from dados_json;