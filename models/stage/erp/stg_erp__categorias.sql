with
    fonte_categoria as (
        select *
        from {{ source('erp', 'categories') }}
    )
    , renomear as (
        select
            cast (category_id as int) as id_categoria
            , cast (category_name as string) as nome_categoria
            , cast (description as string) as descricao_categoria
            -- picture (coluna não usada)
        from fonte_categoria
    )

    select *
    from renomear