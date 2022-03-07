
/*Создание и заполнение таблицы*/

CREATE TABLE author(
    author_id INT PRIMARY KEY AUTO_INCREMENT,
    name_author varchar(50)
);

INSERT INTO author(name_author)
VALUES ("Булгаков М.А.");
INSERT INTO author(name_author)
VALUES ("Достоевский Ф.М.");
INSERT INTO author(name_author)
VALUES ("Есенин С.А.");
INSERT INTO author(name_author)
VALUES ("Пастернак Б.Л.");
SELECT * FROM author

/*Результат*/
Query result:
+-----------+------------------+
| author_id | name_author      |
+-----------+------------------+
| 1         | Булгаков М.А.    |
| 2         | Достоевский Ф.М. |
| 3         | Есенин С.А.      |
| 4         | Пастернак Б.Л.   |
+-----------+------------------+
