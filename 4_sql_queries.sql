 Запросы, групповые операции.
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

/*Для каждого автора вычислить суммарную стоимость книг, не включая НДС*/
SELECT author, 
    SUM(price*amount) AS Стоимость, 
    ROUND(SUM(price*amount)*0.18 / 1.18, 2) AS НДС,
    ROUND(SUM(price*amount) / 1.18,2) AS Стоимость_без_НДС
FROM book
GROUP BY author;

/*Вычисления по таблице целиком*/

SELECT min(price) as Минимальная_цена, max(price) as Максимальная_цена,
ROUND(avg(price), 2) as Средняя_цена
FROM book

/*Выборка данных по условию, групповые функции*/
SELECT ROUND(AVG(price), 2) AS Средняя_цена,
    ROUND(SUM(price*amount), 2) AS Стоимость
FROM book
WHERE amount BETWEEN 5 AND 14;

/*
1) FROM
2) WHERE
3) GROUP BY
4) HAVING
5) SELECT
6) ORDER BY  */

/*Выборка данных по условию, групповые функции, WHERE и HAVING*/
SELECT author, 
    SUM(price * amount) AS Стоимость 
FROM book 
WHERE title <> 'Идиот' AND title <> 'Белая гвардия' 
GROUP BY author 
HAVING SUM(price*amount) > 5000 
ORDER BY Стоимость dESC


SELECT author as Автор,
    ROUND(AVG(price),2) as "Средняя цена"
FROM book
WHERE amount > 3
GROUP BY author