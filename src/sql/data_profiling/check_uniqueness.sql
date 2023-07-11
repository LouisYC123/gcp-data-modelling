--- Checks the uniqueness of id columns

'''If these numbers do not match, their are duplicates'
SELECT 
  COUNT(DISTINCT id)
  , COUNT(*)
FROM
  fair-theater-392320.dl_northwind.customer


''' Show percentage of unique values '''
SELECT 
  CAST(COUNT(DISTINCT id) AS DECIMAL) / COUNT(id)
FROM  
  fair-theater-392320.dl_northwind.customer


''' find the duplicates '''
SELECT
    id
    , count(id)
FROM
    fair-theater-392320.dl_northwind.customer
GROUP by
    id
HAVING
    count(id) > 1