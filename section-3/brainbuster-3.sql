#film name, category, and language

select
  film.title as film_title,
  category.name as category_name,
  language.name as language_name
from
  film,
  film_category,
  category,
  language
where
  film.film_id = film_category.film_id
  and
  category.category_id = film_category.category_id
  and
  language.language_id = film.language_id;