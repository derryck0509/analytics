select *
from moviedata
where genre = "comedy"
and revenue > 3000000
order by `release date` desc;

update moviedata
set revenue = replace(revenue, '$', '');

UPDATE moviedata
SET revenue = REPLACE(revenue, ',', '');

UPDATE moviedata
SET revenue = TRIM(revenue);

SELECT revenue
FROM moviedata
WHERE revenue REGEXP '[^0-9]';

alter table moviedata 
modify column revenue int;