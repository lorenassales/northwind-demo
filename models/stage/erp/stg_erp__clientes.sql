with
    fonte_clientes as (
        select
            cast(customer_id as string) as id_cliente
            , cast(contact_name as string) as nome_cliente
            , cast(company_name as string) as empresa_cliente
            , cast(address as string) as endereco_cliente
            , cast(city as string) as cidade_cliente
            , cast(region as string) as regiao_cliente
            , cast(postal_code as string) as cep_cliente
            , cast(country as string) as pais_cliente
            --contact_title
            --phone
            --fax
        from {{ source('erp', 'customers') }}
    )

    select *
    from fonte_clientes