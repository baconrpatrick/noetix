WITH t  AS
  (SELECT power( (:l_numerator/:l_denominator), level-1)  num_val
  FROM
    dual
    CONNECT BY LEVEL <= :l_value_of_n
  )
SELECT sum(num_val) FROM t
;