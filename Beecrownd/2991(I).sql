--mostrar o nome dele, a quantidade de empregados lotados, a média salarial, 
--o maior salário e o menor salário. O resultado deve estar em ordem 
--decrescente por média salarial.

select departamento.nome as "Nome Departamento", 
    count(salarios.lotacao) as "Numero de Empregados",
    round(avg(salarios.salario),2) as "Media Salarial",
    round(max(salarios.salario),2) as "Maior Salario",
    case when min(salarios.salario) = 0.00 then 0
        else round(min(salarios.salario),2)
    end as "Menor Salario"
from (
    select venc_agrupados.lotacao,
        --calculo do salarioda rpzd: vencimento - desconto = salario
        round(sum(total_vencimentos) - coalesce sum((total_descontos),0),2) as salario

        --vencimentos agrupados
        from(
            --calculo da soma dos vencimentos, se null = 0
            select empregado.matr,empregado.lotacao,coalesce(sum(vencimento.valor),0) as total_vencimentos
            from empregado
            --juntando as tabelas
            left join emp_venc
                on empregado.matr = emp_venc.mtr
            left join vencimento
                on emp_venc.cod_venc = vencimento.cod_venc
            --ordenando
            group by empregado.matr, empregado.lotacao
        ) as venc_agrupados


        left join (
            -- o mesmo somatorio, so que descontos
            select empregado.matr,empregado.lotacao,coalesce(sum(desconto.valor),0) as total_descontos
            from empregado
            -- juntando
            left join emp_desc
                on empregado.matr = emp_desc.matr
            left join desconto
                on emp_desc.cod_desc = desconto.cod_desc
            -- ordenando
            group by empregado.matr, empregado.lotacao
        ) as desc_agrupados
        
        -- faz parte la de cima e junta vencimentos com descontos
            on venc_agrupados.matr = desc_agrupados.matr
            --ordenando
        group by venc_agrupados.matr,venc_agrupados.lotacao) as salarios
        inner join departamento
            on salarios.lotacao = departamento.cod_dep
        group by departamento.nome order by "Media Salarial" desc;
 

    