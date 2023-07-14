with source as (
    SELECT
        id AS employee_id
        , company
        , last_name
        , first_name
        , email_address
        , job_title
        , business_phone
        , home_phone
        , mobile_phone
        , fax_number
        , address
        , city
        , state_province
        , zip_postal_code
        , country_region
        , web_page
        , notes
        , attachments
        , current_timestamp AS insertion_timestamp
    FROM
        {{ ref('stg_employees') }}
),
unique_source as (
    SELECT
        *
        , row_number() OVER(PARTITION BY employee_id) AS row_number
    FROM 
        source
)
SELECT
    *
FROM 
    unique_source
WHERE
    row_number = 1