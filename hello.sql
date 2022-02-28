/*Задание 1. Создание таблицы Book со столбцами book_id, title, author, price, amount.
*/
CREATE TABLE book(  
    book_id int PRIMARY KEY AUTO_INCREMENT,
    title varchar(50),
    author varchar(30),
    price DECIMAL(8, 2),
    amount int
);


/*Пример -- Пример запроса на добавление 3 новых строк в таблицу.
    Заполняются они поочерёдно. INSERT INTO __ (a, b, c)
                                VALUES ('a1', 'b2', 'c3');
                                etc...
                                
*/
INSERT INTO book (title, author, price, amount) 
Values ('Белая гвардия', 'Булгаков М.А.', 540.50, 5);
INSERT INTO book (title, author, price, amount)
Values ('Идиот', 'Достоевский Ф.М.', 460.00, 10);
INSERT INTO book (title, author, price, amount)
Values ('Братья Карамазовы', 'Достоевский Ф.М.', 799.01, 2);
SELECT * FROM book;



/*Пример как добавить новый столбец (цена книги = стоймость страницы 1.65 * на количество)
 round(x, k) x - что округляем, k - число до знаков.
*/
SELECT title, amount,   -- добавил новый столбец как стоимость книги (1 стр -1.65 коп)
    1.65 * amount as pack
from book


/*Пример как добавить новый столбец (цена со скидкой 30%) 
 round(x, k) x - что округляем, k - число до знаков.
*/
SELECT title, author, amount,
    round((price*70/100), 2) AS new_price
FROM book;