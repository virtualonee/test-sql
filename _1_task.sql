SELECT date_trunc('day', dd):: date
FROM generate_series
( CURRENT_TIMESTAMP::timestamp
, '2030-01-01'::timestamp
, random() * (interval '7 day' - interval '2 day') + interval '2 day') dd LIMIT 100
;
