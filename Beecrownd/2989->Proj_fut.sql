select d.nome as departamento, di.nome as divisao, round(avg(salarios.salario), 2) as media, round(max(salarios.salario), 2) as maior
from (
    select v.lotacao, v.lotacao_div, round(sum(total_venc) - coalesce(sum(total_desc), 0), 2) as salario
    from (
        select e.matr, e.lotacao, e.lotacao_div, coalesce(sum(v.valor), 0) as total_venc
        from empregado e
        left join emp_venc ev on e.matr = ev.matr
        left join vencimento v on ev.cod_venc = v.cod_venc
        group by e.matr, e.lotacao, e.lotacao_div
    ) v
    left join (
        select e.matr, e.lotacao, e.lotacao_div, coalesce(sum(d.valor), 0) as total_desc
        from empregado e
        left join emp_desc ed on e.matr = ed.matr
        left join desconto d on ed.cod_desc = d.cod_desc
        group by e.matr, e.lotacao, e.lotacao_div
    ) d on v.matr = d.matr
    group by v.matr, v.lotacao, v.lotacao_div
) salarios
inner join departamento d on salarios.lotacao = d.cod_dep
inner join divisao di on salarios.lotacao_div = di.cod_divisao
group by di.nome, d.nome
order by media desc;
