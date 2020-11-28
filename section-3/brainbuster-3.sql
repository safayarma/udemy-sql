#film name, category, and language

select
  f.title as film_title,
  c.name as category_name,
  l.name as language_name
from
  film f,
  film_category fc,
  category c,
  language l
where
  f.film_id = fc.film_id
  and
  c.category_id = fc.category_id
  and
  l.language_id = f.language_id;