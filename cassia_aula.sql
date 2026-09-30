select sum(quantidade) as total_quantidade_retirado from oferta
where status = 'retirado'
order by quantidade asc;

select count(*) as estabelecimento_SP from estabelecimento
where cidade = 'São Paulo' or 'Rio de Janeiro' 
;

select 











