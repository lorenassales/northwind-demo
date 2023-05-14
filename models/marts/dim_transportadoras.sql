with
    transportadoras as (
        select *
        from {{ ref('stg_erp__transportadoras') }}
    )

    , transformacoes as (
        select
            row_number() over (order by id_transportadora) as sk_transportadora
            , *
        from transportadoras
    )
select *
from transformacoes