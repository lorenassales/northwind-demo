with
    transportadoras as (
        select 
            cast (shipper_id as int) as id_transportadora
            , cast (company_name as string) as nome_transportadora
            --phone
        from {{ source('erp', 'shippers') }}
    )
select *
from transportadoras