DROP TABLE IF EXISTS transfers CASCADE;

CREATE TABLE transfers (
    "from" int,
	"to" int,
	amount int,
	tdate date
);


do $$
begin
for r in 1..10 loop
insert into transfers("from", "to", amount, tdate) values(random()*(10-2)+2, random()*10, random()*(1000-100)+100, CURRENT_TIMESTAMP);
end loop;
end;
$$;

SELECT "from" as acc, tdate as dt_from, tdate as dt_to, amount as balance FROM transfers;
-- UNION ALL
-- SELECT "from" as acc, tdate as dt_from, tdate as dt_to, -amount as balance FROM transfers;

