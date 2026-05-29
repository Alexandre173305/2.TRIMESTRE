select * from countryinfo;

select doc from countryinfo;

select doc from countryinfo where _id = 'BRA';

select json_keys(doc) from countryinfo where _id = 'BRA';

#Para acessar um json dentro deum json
select json_keys(doc, "$.geography") from countryinfo
where _id = 'BRA';

select json_keys(doc, "$.IndepYear") from countryinfo
where _id = 'USA';

select json_keys(doc, "$.goverment.HeadfState") from countryinfo
where _id = 'BRA';

select json_keys(doc, "$.demographics.Popilation") from countryinfo
where _id = 'BRA';

#exiba uma tabela com a população total e média 
#da  expectativa de vida de cada continente para os países
#que são monarquias. agrupe e ordene os dados exibidos

select (doc, '$.geography.Continent') as Continente,
    SUM(JSON_EXTRACT(doc, '$.demographics.Population')) as Populacao,
 