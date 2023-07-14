WITH date_series AS (
  SELECT generate_series(
           '2014-01-01'::date,
           '2030-12-31'::date,
           '1 day'::interval) AS full_date
)

SELECT
  ROW_NUMBER() OVER () AS date_key,
  full_date,
  EXTRACT(ISODOW FROM full_date) AS day_of_week,
  EXTRACT(DAY FROM full_date) AS day_of_month,
  EXTRACT(MONTH FROM full_date) AS month,
  EXTRACT(QUARTER FROM full_date) AS quarter,
  EXTRACT(YEAR FROM full_date) AS year
FROM
  date_series