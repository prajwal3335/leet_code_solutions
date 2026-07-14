-- Write a solution to find all books that are currently borrowed (not returned) and have zero copies available in the library.

-- A book is considered currently borrowed if there exists a borrowing record with a NULL return_date

with borrowed_books as (select * , count(book_id)  as borrowed_count from borrowing_records where return_date is null group by book_id)

select l.book_id, l.title, l.author,l.genre,l.publication_year , ( b.borrowed_count) as current_borrowers 
from library_books l
join borrowed_books b on b.book_id=l.book_id
where (l.total_copies - b.borrowed_count) = 0
order by current_borrowers DESC, title ASC