/*
--1.Определите, сколько уникальных стран представлено среди клиентов
SELECT COUNT(DISTINCT Country) AS country_list FROM "Копия Customers (1)" 
--Ответ: 21

--2.Определите количество клиентов, которые проживают в Бразилии.
SELECT COUNT(*) AS Br_countries FROM "Копия Customers (1)" 
WHERE Country = 'Brazil'
--Ответ: 9

--3.Средняя цена и количество товаров в категории 5
SELECT 	AVG(Price) AS avg_price, COUNT(*) AS product_number FROM "Копия Products (3)" 
WHERE CategoryID = '5'
--Ответ: средняя цена = 20.25 | кол-во товаров = 7

--5. Найти Заказы в период 30 дней до 2024-02-15
SELECT *
FROM "Копия Orders (2)" 
WHERE OrderDate BETWEEN '2024-01-16' AND '2024-02-15'
ORDER BY OrderDate


--4.Средний возраст сотрудников на 2024-01-01 (использовать JULIANDAY)
--SELECT AVG(AGE) AS AverageAge
--FROM (SELECT TIMESTAMPDIFF(YEAR, BirthDate, '2024-01-01') AS AGE FROM "Employees (2)" ) AS AgeTable;
--SELECT BirthDate FROM "Employees (2)"
--ORDER BY BirthDate 
-- !!!JULIANDAY не работает или отсутсвует в моей версии DBeaver!!!


--6.Количество заказов за ноябрь 2023 года (используяначальную и конечную дату)
SELECT COUNT(*) AS november_orders FROM "Копия Orders (2)" WHERE OrderDate >= '2023-11-01' AND OrderDate <= '2023-11-30';
--Ответ: 25


--7.Количество заказов за январь 2024 года (используя LIKE)
SELECT COUNT(*) AS january_orders FROM "Копия Orders (2)" WHERE OrderDate LIKE '2024-01%';
--Ответ:33

--8. Количество заказов за 2024 год
*/
SELECT COUNT(*) AS orders_2024 FROM "Копия Orders (2)" WHERE YEAR(OrderDate) = 2024;
--Ответ:44

;
