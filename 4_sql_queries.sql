+---------+-----------------------+------------------+--------+--------+
| book_id | title                 | author           | price  | amount |
+---------+-----------------------+------------------+--------+--------+
| 1       | Мастер и Маргарита    | Булгаков М.А.    | 670.99 | 3      |
| 2       | Белая гвардия         | Булгаков М.А.    | 540.50 | 5      |
| 3       | Идиот                 | Достоевский Ф.М. | 460.00 | 10     |
| 4       | Братья Карамазовы     | Достоевский Ф.М. | 799.01 | 3      |
| 5       | Игрок                 | Достоевский Ф.М. | 480.50 | 10     |
| 6       | Стихотворения и поэмы | Есенин С.А.      | 650.00 | 15     |
+---------+-----------------------+------------------+--------+--------+

/*, Групповые функции SUM и COUNT*/
SELECT author as "Автор", COUNT(amount) as Различных_книг, SUM(amount) as Количество_экземпляров
FROM book
GROUP BY author;


/*Выборка данных, групповые функции MIN, MAX и AVG*/
SELECT author, min(price) as Минимальная_цена, max(price) as Максимальная_цена,
avg(price) as Средняя_цена
FROM book
GROUP BY author;

/*, Групповые функции SUM и COUNT*/