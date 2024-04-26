-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Мар 19 2023 г., 22:16
-- Версия сервера: 8.0.30
-- Версия PHP: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `curs`
--

-- --------------------------------------------------------

--
-- Структура таблицы `basket`
--

CREATE TABLE `basket` (
  `name_user` varchar(50) NOT NULL,
  `phone_user` varchar(50) NOT NULL,
  `email_user` varchar(50) NOT NULL,
  `name_of_parts` varchar(100) NOT NULL,
  `vin_code` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `basket`
--

INSERT INTO `basket` (`name_user`, `phone_user`, `email_user`, `name_of_parts`, `vin_code`) VALUES
('Михаил', '89004325678', 'mishka@mail.ru', '1, 9, 16', 'JTEBU3FJ50K135361');

-- --------------------------------------------------------

--
-- Структура таблицы `logout`
--

CREATE TABLE `logout` (
  `id_user` int NOT NULL,
  `login` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `logout`
--

INSERT INTO `logout` (`id_user`, `login`, `password`) VALUES
(1, 'miha', 'miha1234'),
(2, 'dima', 'dima1234'),
(3, 'leha', 'leha1234'),
(4, 'den', 'den1234');

-- --------------------------------------------------------

--
-- Структура таблицы `name_of_part`
--

CREATE TABLE `name_of_part` (
  `part_number` int NOT NULL,
  `part_name` varchar(100) NOT NULL,
  `part_price` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `name_of_part`
--

INSERT INTO `name_of_part` (`part_number`, `part_name`, `part_price`) VALUES
(1, 'Клапан впускной', '1 100 рублей'),
(2, 'Головка блока цилиндров', '24 000 рублей'),
(3, 'Кольца поршневые', '5 000 рублей'),
(4, 'Коромысло клапана', '2 700 рублей'),
(5, 'Передние тормозные колодки', '4 800 рублей'),
(6, 'Сайлентблок заднего рычага', '1 600 рублей'),
(7, 'Комплект сцепления', '8 900 рублей'),
(8, 'Приводной вал правый', '12 800 рублей'),
(9, 'Решетка радиатора', '2 700 рублей'),
(10, 'Капот', '36 000 рублей'),
(11, 'Стеклоподъемник', '3 800 рублей'),
(12, 'Комлпект внутренней отделки дверей', '36 000 рублей'),
(13, 'Фара правая в сборе', '15 000 рублей'),
(14, 'Фара левая в сборе', '15 000 рублей'),
(15, 'Кислородный датчик', '13 000 рублей'),
(16, 'Генератор', '25 000 рублей'),
(17, 'Маслянный поддон', '4 200 рублей'),
(18, 'Опора двигателя задняя', '7 800 рублей'),
(19, 'Бак топливный', '34 000 рублей'),
(20, 'Расширительный бачок', '1 100 рублей'),
(21, 'Тормозной диск передний', '3 100 рублей'),
(22, 'Тормозной диск задний', '2 700 рублей'),
(23, 'Стойка стабилизатора задняя', '3 200 рублей'),
(24, 'Стойка стабилизатора передняя', '3 400 рублей'),
(25, 'Крыло переднее правое', '4 800 рублей'),
(26, 'Крыло переднее левое', '4 800 рублей'),
(27, 'Бампер задний', '4 500 рублей'),
(28, 'Лобовое стекло', '15 000 рублей'),
(29, 'Фонарь заднего стоп сигнала', '800 рублей'),
(30, 'Моторчик стеклоомывателя', '2 100 рублей'),
(31, 'Комплект реле под капот', '3 500 рублей'),
(32, 'Антена', '1 100 рублей'),
(33, 'Поршень', ' 3 900 рублей'),
(34, 'Крышка ГБЦ', '2 100 рублей'),
(35, 'Гидрокомпенсатор', '1 600 рублей'),
(36, 'Прокладка ГБЦ', '2 700 рублей'),
(37, 'Ступица передняя в сборе', '3 800 рублей'),
(38, 'Амортизатор передний в сборе', '6 700 рублей'),
(39, 'Рычаг задней подвески', '2 600 рублей'),
(40, 'Рулевая рейка', '31 000 рублей'),
(41, 'Фара передняя левая', '7 000 рублей'),
(42, 'Фара передняя правая', '7 000 рублей'),
(43, 'Фара задняя левая', '5 000 рублей'),
(44, 'Фара задняя правая', '5 000 рублей'),
(45, 'Модуль ABS', '18 000 рублей'),
(46, 'Датчик холостого хода', '16 000 рублей'),
(47, 'Датчик положения дроссельной заслонки', '7 000 рублей'),
(48, 'Датчик коленвала', '7 000 рублей'),
(49, 'Коленвал', '14 000 рублей'),
(50, 'Прокладка крышки ГБЦ', '1 600 рублей'),
(51, 'Комлпект вкладышей шатуна', '2 700 рублей'),
(52, 'Маховик', '16 000 рублей'),
(53, 'Тормозной суппорт передний в сборе', '3 100 рублей'),
(54, 'Тормозной суппорт задний в сборе', '2 700 рублей'),
(55, 'Пружина переднего амортизатора', '2 400 рублей'),
(56, 'Пружина заднего амортизатора', '2 100 рублей'),
(57, 'Крышка багажника', '18 000 рублей'),
(58, 'Ремкомплект порогов', '6 000 рублей'),
(59, 'Заднее стекло', '14 000 рублей'),
(60, 'Передние двери', '16 рублей'),
(61, 'Приборная панель в сборе', '16 000 рублей'),
(62, 'Электрорегулировка печки', '14 000 рублей'),
(63, 'Освещение салона', '4 100 рублей'),
(64, 'Компрессор кондиционера', '11 000 рублей');

-- --------------------------------------------------------

--
-- Структура таблицы `pduser`
--

CREATE TABLE `pduser` (
  `id_user` int NOT NULL,
  `name_user` varchar(50) NOT NULL,
  `surname_user` varchar(50) NOT NULL,
  `middlename_user` varchar(50) NOT NULL,
  `datebirth_user` date NOT NULL,
  `phone_user` varchar(20) NOT NULL,
  `email_user` varchar(50) NOT NULL,
  `login` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `pduser`
--

INSERT INTO `pduser` (`id_user`, `name_user`, `surname_user`, `middlename_user`, `datebirth_user`, `phone_user`, `email_user`, `login`, `password`) VALUES
(1, 'Михаил', 'Мамонтов', 'Иванович', '2004-12-03', '89004325678', 'mishka@mail.ru', 'miha', 'miha1234'),
(2, 'Дмитрий', 'Ковтун', 'Станиславович', '2006-07-17', '89527009812', 'dimka@mail.ru', 'dima', 'dima1234'),
(3, 'Алексей', 'Андрющенко', 'Дмитриевич', '2001-01-01', '89881235690', 'leshka@mail.ru', 'leha', 'leha1234'),
(4, 'Даниил', 'Галузов', 'Юрьевич', '2008-05-05', '89991231234', 'den4ik@mail.ru', 'den', 'den1234'),
(10, '', '', '', '2003-06-01', '', '', 'admin', '1234');

-- --------------------------------------------------------

--
-- Структура таблицы `vin`
--

CREATE TABLE `vin` (
  `vin_code` varchar(50) NOT NULL,
  `id_user` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `vin`
--

INSERT INTO `vin` (`vin_code`, `id_user`) VALUES
('JTEBU3FJ50K135361', 1),
('JN1TANT31U0123456', 2),
('JMBSNCS3A7U007773', 3),
('JMZKE197600124374', 4);

-- --------------------------------------------------------

--
-- Структура таблицы `vin_part`
--

CREATE TABLE `vin_part` (
  `part_number` int NOT NULL,
  `part_node` int NOT NULL,
  `vin_code` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `vin_part`
--

INSERT INTO `vin_part` (`part_number`, `part_node`, `vin_code`) VALUES
(1, 1, 'JTEBU3FJ50K135361'),
(2, 1, 'JTEBU3FJ50K135361'),
(3, 1, 'JTEBU3FJ50K135361'),
(4, 1, 'JTEBU3FJ50K135361'),
(5, 2, 'JTEBU3FJ50K135361'),
(6, 2, 'JTEBU3FJ50K135361'),
(7, 2, 'JTEBU3FJ50K135361'),
(8, 2, 'JTEBU3FJ50K135361'),
(9, 3, 'JTEBU3FJ50K135361'),
(10, 3, 'JTEBU3FJ50K135361'),
(11, 3, 'JTEBU3FJ50K135361'),
(12, 3, 'JTEBU3FJ50K135361'),
(13, 4, 'JTEBU3FJ50K135361'),
(14, 4, 'JTEBU3FJ50K135361'),
(15, 4, 'JTEBU3FJ50K135361'),
(16, 4, 'JTEBU3FJ50K135361'),
(17, 1, 'JN1TANT31U0123456'),
(18, 1, 'JN1TANT31U0123456'),
(19, 1, 'JN1TANT31U0123456'),
(20, 1, 'JN1TANT31U0123456'),
(21, 2, 'JN1TANT31U0123456'),
(22, 2, 'JN1TANT31U0123456'),
(23, 2, 'JN1TANT31U0123456'),
(24, 2, 'JN1TANT31U0123456'),
(25, 3, 'JN1TANT31U0123456'),
(26, 3, 'JN1TANT31U0123456'),
(27, 3, 'JN1TANT31U0123456'),
(28, 3, 'JN1TANT31U0123456'),
(29, 4, 'JN1TANT31U0123456'),
(30, 4, 'JN1TANT31U0123456'),
(31, 4, 'JN1TANT31U0123456'),
(32, 4, 'JN1TANT31U0123456'),
(33, 1, 'JMBSNCS3A7U007773'),
(34, 1, 'JMBSNCS3A7U007773'),
(35, 1, 'JMBSNCS3A7U007773'),
(36, 1, 'JMBSNCS3A7U007773'),
(37, 2, 'JMBSNCS3A7U007773'),
(38, 2, 'JMBSNCS3A7U007773'),
(39, 2, 'JMBSNCS3A7U007773'),
(40, 2, 'JMBSNCS3A7U007773'),
(41, 3, 'JMBSNCS3A7U007773'),
(42, 3, 'JMBSNCS3A7U007773'),
(43, 3, 'JMBSNCS3A7U007773'),
(44, 3, 'JMBSNCS3A7U007773'),
(45, 4, 'JMBSNCS3A7U007773'),
(46, 4, 'JMBSNCS3A7U007773'),
(47, 4, 'JMBSNCS3A7U007773'),
(48, 4, 'JMBSNCS3A7U007773'),
(49, 1, 'JMZKE197600124374'),
(50, 1, 'JMZKE197600124374'),
(51, 1, 'JMZKE197600124374'),
(52, 1, 'JMZKE197600124374'),
(53, 2, 'JMZKE197600124374'),
(54, 2, 'JMZKE197600124374'),
(55, 2, 'JMZKE197600124374'),
(56, 2, 'JMZKE197600124374'),
(57, 3, 'JMZKE197600124374'),
(58, 3, 'JMZKE197600124374'),
(59, 3, 'JMZKE197600124374'),
(60, 3, 'JMZKE197600124374'),
(61, 4, 'JMZKE197600124374'),
(62, 4, 'JMZKE197600124374'),
(63, 4, 'JMZKE197600124374'),
(64, 4, 'JMZKE197600124374');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `logout`
--
ALTER TABLE `logout`
  ADD PRIMARY KEY (`id_user`);

--
-- Индексы таблицы `name_of_part`
--
ALTER TABLE `name_of_part`
  ADD KEY `part_number` (`part_number`);

--
-- Индексы таблицы `pduser`
--
ALTER TABLE `pduser`
  ADD PRIMARY KEY (`id_user`);

--
-- Индексы таблицы `vin`
--
ALTER TABLE `vin`
  ADD PRIMARY KEY (`vin_code`),
  ADD KEY `id_user` (`id_user`);

--
-- Индексы таблицы `vin_part`
--
ALTER TABLE `vin_part`
  ADD PRIMARY KEY (`part_number`),
  ADD KEY `vin_code` (`vin_code`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `logout`
--
ALTER TABLE `logout`
  MODIFY `id_user` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `pduser`
--
ALTER TABLE `pduser`
  MODIFY `id_user` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `logout`
--
ALTER TABLE `logout`
  ADD CONSTRAINT `logout_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `pduser` (`id_user`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Ограничения внешнего ключа таблицы `name_of_part`
--
ALTER TABLE `name_of_part`
  ADD CONSTRAINT `name_of_part_ibfk_1` FOREIGN KEY (`part_number`) REFERENCES `vin_part` (`part_number`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Ограничения внешнего ключа таблицы `vin`
--
ALTER TABLE `vin`
  ADD CONSTRAINT `vin_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `pduser` (`id_user`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Ограничения внешнего ключа таблицы `vin_part`
--
ALTER TABLE `vin_part`
  ADD CONSTRAINT `vin_part_ibfk_1` FOREIGN KEY (`vin_code`) REFERENCES `vin` (`vin_code`) ON DELETE RESTRICT ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
