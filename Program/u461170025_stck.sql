-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 03, 2021 at 06:55 AM
-- Server version: 10.5.12-MariaDB-cll-lve
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u461170025_stck`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `category_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`) VALUES
(1, 'Web Development'),
(2, 'Game Development'),
(3, 'Business Development'),
(6, 'Art'),
(7, 'Desktop Development'),
(8, 'Computer and Network Security'),
(9, 'Hardware Development'),
(10, 'Data Analysis'),
(11, 'Database Architecture');

-- --------------------------------------------------------

--
-- Table structure for table `chat_hash`
--

CREATE TABLE `chat_hash` (
  `id` int(11) NOT NULL,
  `hash` varchar(255) DEFAULT NULL,
  `user_from` int(11) DEFAULT NULL,
  `user_to` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `chat_hash`
--

INSERT INTO `chat_hash` (`id`, `hash`, `user_from`, `user_to`) VALUES
(2, '1784bea26c8f8b4601e4b01cf131d259', 14, 15),
(11, 'd7e25493f9d873f5e7634aa00e6ac2bd', 22, 23),
(12, '612c173c2d515a612ab208a65f72d589', 24, 13),
(13, '8992bdb1f8966d44e833732b3f61ab9e', 13, 21),
(14, '18067727c22c19b021900efb635650ee', 23, 13);

-- --------------------------------------------------------

--
-- Table structure for table `cv`
--

CREATE TABLE `cv` (
  `id` int(11) NOT NULL,
  `hash` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang` int(1) NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `surname` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `patronymic` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ava` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `birth__year` int(5) NOT NULL,
  `birth__month` int(5) NOT NULL,
  `birth__day` int(5) NOT NULL,
  `proffecion` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `adress` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `linkedin__link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fb__link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `postal__code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `instagram__link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `githab__link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `skills` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `skills_level` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `education` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `experience` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cv`
--

INSERT INTO `cv` (`id`, `hash`, `lang`, `name`, `surname`, `patronymic`, `ava`, `phone`, `birth__year`, `birth__month`, `birth__day`, `proffecion`, `email`, `country`, `adress`, `linkedin__link`, `fb__link`, `city`, `postal__code`, `instagram__link`, `githab__link`, `gender`, `skills`, `skills_level`, `description`, `education`, `experience`) VALUES
(2, 'ab98e9ee60cb0df9faddcef74a4309f9', 2, 'Mike', 'Bilenko', 'Andryevich', 'http://stockexchange.host/app/custmfolders/ab98e9ee60cb0df9faddcef74a4309f9/images/avatars/avatar.jpg', '+380687216215', 2004, 10, 1, 'Web Developer', 'bilenkom.0@gmail.com', 'Ukraune', 'Novaya, 6', 'https://linkedin.ua/', 'https://facebook.com/', 'Dnipro', '', 'https://instagram.com/', 'https://githab.com/', 'Male', '{\"1\":\"Web Development\",\"2\":\"Python\",\"3\":\"Interview\"}', '{\"Web Development\":\"4\",\"Python\":\"4\",\"Interview\":\"2\"}', 'I am good at programming', '{\"e1\":{\"name\":\"Lit\",\"location\":\"Ukraine, Dnipro, Shevchenko 8\",\"start__date\":[\"9\",\"2017\"],\"end__date\":[\"\",\"\"],\"description\":\"This is the best school\"}}', '{\"exp1\":{\"nameCompany\":\"                             Logika Team\",\"positionCompany\":\"Project Manager\",\"locationCompany\":\"Dnipro\",\"start__dateCompany\":[\"9\",\"2019\"],\"end__dateCompany\":[\"\",\"\"],\"descriptionCompany\":\"I was godd at that position                             \"}}'),
(3, 'e964003f1f95d75d8dee76ea73cd6455', 1, 'Sergey', 'Fomkin', '', 'http://stockexchange.host/app/custmfolders/e964003f1f95d75d8dee76ea73cd6455/images/avatars/avatar.jpg', '1234567890', 1985, 2, 16, 'Designer', 'fomkin@sfg.ua', 'Ukraine', 'Dnipro', '', '', 'Dnipro', '49000', '', '', 'Male', '{\"1\":\"Interview\"}', '{\"Interview\":\"4\"}', 'Hello', '{\"e1\":{\"name\":\"DNU\",\"location\":\"Dnipro\",\"start__date\":[\"February\",\"2020\"],\"end__date\":[\"\",\"\"],\"description\":\"I love DNU\"}}', '{\"exp1\":{\"nameCompany\":\" SFG\",\"positionCompany\":\"CEO\",\"locationCompany\":\"DniproC\",\"start__dateCompany\":[\"March\",\"2017\"],\"end__dateCompany\":[\"\",\"\"],\"descriptionCompany\":\"I love CEO\"}}'),
(4, '401989c53d2953670074a116b42721e8', 1, 'Alex', 'B', 'V', 'http://stockexchange.host/app/custmfolders/401989c53d2953670074a116b42721e8/images/avatars/avatar.jpg', '+380674589945', 1988, 9, 14, 'Full stack developer', 'alexrazer7@gmail.com', 'USA', '699 Heather Lane New York, NY 10034', '', '', 'New York', '832393', '', '', 'Male', '{\"1\":\"Python\"}', '{\"Python\":\"3\"}', 'Constantly advancing my usefull skills.', '{\"e1\":{\"name\":\"Bit school\",\"location\":\"315 Center St. New York, NY 10025\",\"start__date\":[\"September\",\"2019\"],\"end__date\":[\"March\",\"2021\"],\"description\":\"Highly recommend considering this particular university, when searching for the needed education possibilities.\"}}', '{\"exp1\":{\"nameCompany\":\"Logitech\",\"positionCompany\":\"Game dev\",\"locationCompany\":\"895 Virginia Street Brooklyn, NY 11215\",\"start__dateCompany\":[\"December\",\"2020\"],\"end__dateCompany\":[\"June\",\"2021\"],\"descriptionCompany\":\"The company is developing and going forward towards the new goals everyday.\"}}');

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `permissions` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id`, `name`, `permissions`) VALUES
(1, 'Standard user', ''),
(2, 'Administrator', '{\"admin\": 1}');

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` int(11) NOT NULL,
  `lang` varchar(255) DEFAULT NULL,
  `lang_name` varchar(255) DEFAULT NULL,
  `lang_image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `lang`, `lang_name`, `lang_image`) VALUES
(1, 'en', 'English', 'enf.jpg'),
(2, 'ru', 'Russian', 'ruf.svg'),
(3, 'ua', 'Ukrainian', 'uaf.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `hash` varchar(255) DEFAULT NULL,
  `viewed` int(1) NOT NULL DEFAULT 0,
  `type` int(11) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  `user_from` int(11) NOT NULL,
  `user_to` int(11) NOT NULL,
  `gruop` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `hash`, `viewed`, `type`, `message`, `image`, `time`, `user_from`, `user_to`, `gruop`) VALUES
(104, '9139934c89b3d0e01cb2e3f5e7999e65', 0, 0, 'hi', NULL, '2021-10-25 12:05:18', 13, 15, 0),
(111, '1784bea26c8f8b4601e4b01cf131d259', 1, 0, 'h1', NULL, '2021-10-25 15:27:20', 15, 15, 0),
(784, '612c173c2d515a612ab208a65f72d589', 1, 0, 'qq мой мальчик', '', '2021-11-29 15:23:31', 24, 13, 0),
(785, '612c173c2d515a612ab208a65f72d589', 1, 0, 'q', '', '2021-11-29 15:23:34', 13, 13, 0),
(786, '612c173c2d515a612ab208a65f72d589', 1, 0, '', '', '2021-11-29 15:24:47', 24, 13, 0),
(787, '612c173c2d515a612ab208a65f72d589', 1, 1, '', 'http://stockexchange.host/app/custmfolders/f13b54d51025032662b8b0043e3a777d/images/contents/2021/11/29/6913679df188ab6db4989ebd925a2e61.jpg', '2021-11-29 15:25:04', 24, 13, 0),
(788, '612c173c2d515a612ab208a65f72d589', 0, 0, 'Q', '', '2021-11-29 18:16:33', 13, 13, 0),
(789, '8992bdb1f8966d44e833732b3f61ab9e', 1, 0, 'Hi', '', '2021-11-30 14:03:39', 21, 21, 0),
(790, '8992bdb1f8966d44e833732b3f61ab9e', 1, 0, 'Hi', '', '2021-11-30 14:03:54', 13, 21, 0),
(791, '8992bdb1f8966d44e833732b3f61ab9e', 1, 0, 'I am glad to hear you', '', '2021-11-30 14:04:04', 13, 21, 0),
(873, '18067727c22c19b021900efb635650ee', 0, 0, 'test', '', '2021-12-02 14:50:31', 13, 13, 0),
(874, '18067727c22c19b021900efb635650ee', 0, 1, '', 'http://stockexchange.host/app/custmfolders/ab98e9ee60cb0df9faddcef74a4309f9/images/contents/2021/11/27/macbook.jpg', '2021-12-02 14:50:44', 13, 13, 0),
(875, '18067727c22c19b021900efb635650ee', 0, 0, 'test', '', '2021-12-02 14:51:16', 13, 13, 0);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `author` int(11) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `image_path` varchar(255) DEFAULT NULL,
  `comments` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `tags` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `views` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `author`, `date`, `title`, `content`, `image_path`, `comments`, `tags`, `views`) VALUES
(21, 21, '2021-11-10 14:25:32', 'Как я ездил в Вену', '', '21/2021/11/10/14/142530.jpeg', '{}', '{\"1\":\"7\"}', 4),
(25, 21, '2021-11-28 10:20:58', 'Как я ездил в Стамбул', 'В мае в Стамбуле очень тепло и комфортно.', '21/2021/11/28/10/102058.jpg', '{\"1\":{\"comment_date\":\"2021-11-28 11:27:18\",\"user_id\":\"13\",\"comment_text\":\"Cool!\",\"reanswers\":[]}}', '{\"1\":\"2\"}', 24),
(27, 22, '2021-11-29 12:47:33', 'New project anouncement', 'The Scandinavians are waiting for you.', '22/2021/11/29/12/124733.jpg', '{\"1\":{\"comment_date\":\"2021-11-29 18:15:31\",\"user_id\":\"13\",\"comment_text\":\"Cool!\",\"reanswers\":[]}}', '{\"1\":\"5\"}', 39),
(28, 23, '2021-11-29 12:58:07', '10th General Mahoraga disclosed', '<img src=\"http://stockexchange.host/app/custmfolders/4456a1c3f0d3af5b0d4496f416914248/images/contents/2021/12/02/download.jpg\" style=\"max-width: 500px;\" alt=\"\"><div><br></div><div>behold and rejoice!</div>', '23/2021/11/29/12/125807.png', '{}', '{\"1\":\"8\"}', 30),
(30, 13, '2021-11-30 14:00:06', 'walking', '<h2 style=\"text-align: center;\"><b>Walking in the London city center!!</b></h2><div><i style=\"\">It is beautiful!!&nbsp;</i></div><div style=\"text-align: center;\"><b><br></b></div>', '13/2021/11/30/14/140006.png', '{}', '{\"1\":\"9\"}', 43),
(31, 24, '2021-11-30 16:20:28', 'Гра God of War', '<b>God of War</b>&nbsp;(з англ. — «Бог війни») — комп\'ютерна гра в жанрі action-adventure, розроблена компанією SIE Santa Monica Studio, та видана Sony Interactive Entertainment для ігрової консолі PlayStation 4. Вийшла 20 квітня 2018 року. Є восьмою грою серії God of War, а також сіквелом до гри 2010 God of War III. Гра продовжує події попередніх ігор і переносить серію у світ скандинавської міфології — усі попередні ігри серії були засновані на грецькій міфології. 16 вересня 2020 року було анонсовано продовження гри.&nbsp;', '24/2021/11/30/16/162028.webp', '{\"1\":{\"comment_date\":\"2021-12-01 21:40:20\",\"user_id\":\"13\",\"comment_text\":\"test\",\"reanswers\":[]}}', '{\"1\":\"7\"}', 14);

-- --------------------------------------------------------

--
-- Table structure for table `proffesions`
--

CREATE TABLE `proffesions` (
  `id` int(11) NOT NULL,
  `url` varchar(255) DEFAULT NULL,
  `prof_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `proffesions`
--

INSERT INTO `proffesions` (`id`, `url`, `prof_name`) VALUES
(1, 'programmer', 'Programmer'),
(2, 'designer', 'Designer');

-- --------------------------------------------------------

--
-- Table structure for table `requests`
--

CREATE TABLE `requests` (
  `id` int(11) NOT NULL,
  `type` int(11) DEFAULT NULL,
  `from_user` int(11) DEFAULT NULL,
  `to_user` int(11) DEFAULT NULL,
  `messages` text DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `requests`
--

INSERT INTO `requests` (`id`, `type`, `from_user`, `to_user`, `messages`, `status`) VALUES
(8, 1, 13, 17, NULL, '0'),
(9, 1, 13, 19, NULL, '0'),
(152, 1, 23, 21, NULL, '0'),
(171, 2, 0, 0, 'alex', '6b4418ca02bceaa0380ce57e36c9ef69');

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` int(11) NOT NULL,
  `tag` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `tag`) VALUES
(1, 'Python'),
(2, 'Web Development'),
(3, 'Windows'),
(4, 'Desktop Development'),
(5, 'Android Dev'),
(6, 'IOS Dev'),
(7, 'Interview'),
(8, 'Art'),
(9, 'Walking');

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

CREATE TABLE `translations` (
  `id` int(11) NOT NULL,
  `slug` varchar(20) DEFAULT NULL,
  `translation` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `translations`
--

INSERT INTO `translations` (`id`, `slug`, `translation`) VALUES
(1, 'home', '{\"1\":\"Home\",\"2\":\"Главная\",\"3\":\"Головна\"}'),
(2, 'about', '{\"1\":\"About\",\"2\":\"О сайте\",\"3\":\"Про сайт\"}'),
(3, 'posts', '{\"1\":\"Posts\",\"2\":\"Посты\",\"3\":\"Пости\"}'),
(5, 'messanger', '{\"1\":\"Messanger\",\"2\":\"Мессенджер\",\"3\":\"Месенджер\"}'),
(6, 'works', '{\"1\":\"Works\",\"2\":\"Работы\",\"3\":\"Роботи\"}'),
(7, 'profile', '{\"1\":\"Profile\",\"2\":\"Профиль\",\"3\":\"Профіль\"}'),
(8, 'admin', '{\"1\":\"Admin\",\"2\":\"Админка\",\"3\":\"Адмінка\"}'),
(9, 'categories', '{\"1\":\"Categories\",\"2\":\"Категории\",\"3\":\"Категорії\"}'),
(10, 'login', '{\"1\":\"Login\",\"2\":\"Войти\",\"3\":\"Увійти\"}'),
(11, 'logout', '{\"1\":\"Logout\",\"2\":\"Выйти\",\"3\":\"Вийти\"}'),
(12, 'language', '{\"1\":\"Language\",\"2\":\"Язык\",\"3\":\"Мова\"}'),
(13, 'filter', '{\"1\":\"Filter\",\"2\":\"Фильтр\",\"3\":\"Фільтр\"}'),
(14, 'search', '{\"1\":\"Search...\",\"2\":\"Поиск...\",\"3\":\"Пошук...\"}'),
(16, 'users', '{\"1\":\"Users\",\"2\":\"Пользователи\",\"3\":\"Користувачі\"}'),
(18, 'friends', '{\"1\":\"Friends\",\"2\":\"Друзья\",\"3\":\"Друзі\"}'),
(19, 'cv', '{\"1\":\"CV\",\"2\":\"Резюме\",\"3\":\"Резюме\"}'),
(20, 'settings', '{\"1\":\"Settings\",\"2\":\"Настройки\",\"3\":\"Налаштування\"}'),
(21, 'interesting', '{\"1\":\"Interesting to read\",\"2\":\"Интересно почитать\",\"3\":\"Цікаво почитати\"}'),
(22, 'return', '{\"1\":\"Return back\",\"2\":\"Вернуться\",\"3\":\"Повернутися\"}'),
(23, 'leavecom', '{\"1\":\"Leave Comment\",\"2\":\"Оставить комментарий\",\"3\":\"Залишити коментар\"}'),
(24, 'сomments', '{\"1\":\"Comments\",\"2\":\"Комментарии\",\"3\":\"Коментарі\"}'),
(25, 'submit', '{\"1\":\"Submit\",\"2\":\"Отправить\",\"3\":\"Надіслати\"}'),
(26, 'leavecomf', '{\"1\":\"Leave comment...\",\"2\":\"Оставить комментарий...\",\"3\":\"Залишити коментар...\"}'),
(27, 'go_over', '{\"1\":\"go over\",\"2\":\"перейти\",\"3\":\"перейти\"}'),
(28, 'results_for', '{\"1\":\"Кesults for\",\"2\":\"Результаты по запросу\",\"3\":\"Результати стосовно запиту\"}'),
(29, 'category', '{\"1\":\"Category\",\"2\":\"Категория\",\"3\":\"Категорія\"}'),
(30, 'look_work', '{\"1\":\"Look work\",\"2\":\"Просмотреть работу\",\"3\":\"Переглянути роботу\"}'),
(31, 'rate_work', '{\"1\":\"Rate the work, please\",\"2\":\"Оцените работу, пожалуйста\",\"3\":\"Оцініть роботу, будь ласка\"}'),
(32, 'see_work', '{\"1\":\"To see work click here\",\"2\":\"Для прасмотра работы нажми сюда\",\"3\":\"Для перегляду роботи натисни сюди\"}'),
(33, 'answer', '{\"1\":\"Answer\",\"2\":\"Oтветить\",\"3\":\"Bідповісти\"}'),
(34, 'professions', '{\"1\":\"Professions\",\"2\":\"Профессии\",\"3\":\"Професії\"}'),
(35, 'search_by_name_surn', '{\"1\":\"Search by name and surname ...\",\"2\":\"Искать по имени и фамилии ...\",\"3\":\"Шукати за ім\'ям та прізвищем...\"}'),
(36, 'enter_the_mess', '{\"1\":\"Enter the message...\",\"2\":\"Введите сообщение ...\",\"3\":\"Введіть повідомлення...\"}'),
(37, 'message', '{\"1\":\"Message\",\"2\":\"Сообщение\",\"3\":\"Повідомлення\"}'),
(38, 'add_work', '{\"1\":\"Add Work\",\"2\":\"Добавить работу\",\"3\":\"Додати роботу\"}'),
(39, 'in_progress', '{\"1\":\"In proggress\",\"2\":\"В ожидании\",\"3\":\"В очікуванні\"}'),
(40, 'friend', '{\"1\":\"Friend\",\"2\":\"Друг\",\"3\":\"Друг\"}'),
(41, 'follow', '{\"1\":\"Follow\",\"2\":\"Отслеживать\",\"3\":\"Відстежувати\"}');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `activity` int(1) NOT NULL,
  `lastOnline` datetime DEFAULT NULL,
  `username` varchar(20) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `confirm__email` varchar(255) DEFAULT NULL,
  `ava` varchar(255) DEFAULT NULL,
  `preview__image` tinyint(1) NOT NULL,
  `preview_image_url` varchar(255) DEFAULT NULL,
  `about_user` text DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `salt` varchar(32) NOT NULL,
  `fullname` varchar(50) DEFAULT NULL,
  `joined` datetime DEFAULT NULL,
  `group` int(11) NOT NULL DEFAULT 1,
  `prof` varchar(255) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `dir_url` varchar(255) DEFAULT NULL,
  `friends` text DEFAULT NULL,
  `facebook` varchar(255) DEFAULT NULL,
  `instagram` varchar(255) DEFAULT NULL,
  `gitHub` varchar(255) DEFAULT NULL,
  `linkedin` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `activity`, `lastOnline`, `username`, `email`, `confirm__email`, `ava`, `preview__image`, `preview_image_url`, `about_user`, `password`, `salt`, `fullname`, `joined`, `group`, `prof`, `category`, `dir_url`, `friends`, `facebook`, `instagram`, `gitHub`, `linkedin`) VALUES
(13, 1, '2021-09-14 21:18:49', 'Mike', 'mike@stck.loc', 'bilenkom.0@gmail.com', 'images/avatars/avatar.jpg', 1, '1.jpg', 'I am a full-stack web developer with more than 1 year experience. I am the creator, owner of this web-app.', 'c4c94302829bfd74dfc50bb9914b0dc96180b4ca625b7662c65e5de3f16c391b', '74a7e3b2b6e8ea9320fd221f3809a6aa', 'Mike Bilenko', '2021-06-26 14:55:37', 2, '1', '1', 'ab98e9ee60cb0df9faddcef74a4309f9', '{\"1\":\"24\",\"2\":\"21\",\"3\":\"23\"}', 'https://www.facebook.com/', 'https://www.instagram.com/foulklex.insta', 'https://github.com/bilenkomike', 'https://www.linkedin.com/in/mike-bilenko-86782521a/'),
(21, 1, '2021-11-02 10:33:54', 'sergeyfomkin', 'fomkin@sfg.ua', 'fomkin@sfg.ua', 'images/avatars/avatar.jpg', 1, '1.jpg', ' ', 'b1e996d19fffc2e245c7281aa0229fe6b1c8b3b265bd6e148b7893df2c001fdb', '09f85caa24e31561d1791be8981c1bc6', 'Sergey Fomkin', '2021-11-02 10:33:54', 1, '2', '1', 'e964003f1f95d75d8dee76ea73cd6455', '{\"1\":\"13\"}', '', 'https://instagram.com/sergeyfomkin', '', ''),
(22, 1, '2021-11-29 11:35:43', 'Alex B', 'alexrazer7@gmail.com', 'alexrazer7@gmail.com', 'images/avatars/avatar.jpg', 1, '1.jpg', ' Hello there. You might call me Alex. I started my IT career back in 2020.', 'db1f50157707af1f55af5693690d9f63a86b800d06579141e57060b9e8d5bbeb', '2a6c6b040808f846ded56ce18b4c2b3b', 'Alex B', '2021-11-29 11:35:43', 1, '1', '2', '401989c53d2953670074a116b42721e8', '{\"1\":\"23\"}', '', '', '', ''),
(23, 1, '2021-11-29 12:21:57', 'N_Gulag', 'gulegani@gmail.com', 'gulegani@gmail.com', 'images/avatars/avatar.jpg', 1, '1.jpg', ' ', '529045a4e9e33f30c3a5d69c0db3940ac47e14dddfc3e6a6a836a73b0839ca6e', 'a00b80bde1a3ba5eb1e8cf2c1d9fd470', 'Nikita Gulega', '2021-11-29 12:21:57', 1, '1', '2', '4456a1c3f0d3af5b0d4496f416914248', '{\"1\":\"22\",\"2\":\"13\"}', '', '', '', ''),
(24, 0, '2021-11-29 15:19:59', 'KowalskiT_T', 'alexkov4444@gmail.com', 'alexkov4444@gmail.com', 'images/avatars/avatar.jpg', 1, '1.jpg', ' ', '1a0202f9ede47c3dac015df5dd9d05f9d3f9f2fca45863838cf86267efa3b131', 'cb5cd32f065332f24bb487a5b7d1f59f', 'Коваленко Олександр', '2021-11-29 15:19:59', 1, '1', '2', 'f13b54d51025032662b8b0043e3a777d', '{\"1\":\"13\"}', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `users_sessions`
--

CREATE TABLE `users_sessions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `hash` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users_sessions`
--

INSERT INTO `users_sessions` (`id`, `user_id`, `hash`) VALUES
(11, 21, 'e389231a73933ad18ac00bb4df9a066e71a3a0811a8fca39128a940846df84a1');

-- --------------------------------------------------------

--
-- Table structure for table `works`
--

CREATE TABLE `works` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `prev_text` text DEFAULT NULL,
  `category` int(11) DEFAULT NULL,
  `tags` text DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `site` int(1) DEFAULT 0,
  `full_content` text DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `views` int(11) NOT NULL,
  `downloads_linked` int(11) NOT NULL,
  `likes` int(11) NOT NULL DEFAULT 0,
  `dislikes` int(11) NOT NULL DEFAULT 0,
  `liked` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `works`
--

INSERT INTO `works` (`id`, `user_id`, `title`, `image`, `prev_text`, `category`, `tags`, `link`, `site`, `full_content`, `date`, `views`, `downloads_linked`, `likes`, `dislikes`, `liked`) VALUES
(17, 21, 'Leroy Merlin', 'works/images/20211110150217.jpg', 'Приложение сети магазинов.', 1, '{\"1\":\"6\"}', 'https://vdsfavsvsdvdsavasdva', 1, 'sdavsvsvasdavsavsdavsavsa<div>vasddvsavsadvdsav</div><div>sdv</div><div>asdv</div><div>dsa</div><div>vasd</div><div>vasdv</div><div><br></div>', '2021-11-10 15:02:17', 154, 0, 4, 0, '{\"21\":\"1\",\"13\":\"1\",\"22\":\"1\",\"23\":\"1\"}'),
(19, 13, 'permutationss', 'works/images/20211129123114.png', 'Permutations', 7, '{\"1\":\"1\",\"2\":\"7\"}', 'http://cudhcuduhcudh', 1, '<h4 style=\"color: rgb(255, 255, 255); text-align: left; margin: 0px 0px 10px; padding: 0px; line-height: 24px;\"><u style=\"font-weight: normal;\">Permutations differ from combinations, which are selections of some members of a set regardless of order. For example, written as tuples, there are six permutations of the set {1, 2, 3}, namely (1, 2, 3), (1, 3, 2), (2, 1, 3), (2, 3, 1), (3, 1, 2), and (3, 2, 1). These are all the possible orderings of this three-element set. Anagrams of words whose letters are different are also permutations: the letters are already ordered in the original word, and the anagram is a reordering of the letters. The study of permutations of finite sets is an important topic in the fields of combinatorics and group theory.</u></h4><div style=\"\"><ol style=\"color: rgb(255, 255, 255);\"><li><i><strike>test the list</strike></i></li><li><h4 style=\"margin: 0px 0px 10px; padding: 0px; line-height: 24px;\"><img src=\"http://stockexchange.host/app/custmfolders/ab98e9ee60cb0df9faddcef74a4309f9/images/contents/2021/11/27/macbook.jpg\" alt=\"\" style=\"max-width: 500px;\"></h4></li></ol><div style=\"\"><font color=\"#ffffff\"><b>In mathematics, a permutation of a set is, loosely speaking, an arrangement of its members into a sequence or linear order, or if the set is already ordered, a rearrangement of its elements. The word \"permutation\" also refers to the act or process of changing the linear order of an ordered set.</b></font></div><div style=\"\"><ul><li><font color=\"#ffffff\">test the ul lisy</font></li><li><font color=\"#ffffff\">for styles</font></li></ul><h2>Heading 1&nbsp;</h2><h3>heading 2</h3><h4>heading 3</h4><div><a href=\"https://www.google.com/\">https://www.google.com/</a><br></div><div style=\"text-align: center;\"><img src=\"http://stockexchange.host/app/custmfolders/ab98e9ee60cb0df9faddcef74a4309f9/images/contents/2021/11/27/story.png\" style=\"max-width: 500px;\" alt=\"\"></div></div></div>', '2021-11-11 14:56:09', 211, 0, 4, 0, '{\"13\":\"1\",\"21\":\"1\",\"22\":\"1\",\"23\":\"1\"}'),
(22, 22, 'Horizon Zero Dawn', 'works/images/20211129122131.jpg', 'Already done', 2, '{\"1\":\"3\",\"2\":\"5\"}', 'https://www.guerrilla-games.com/play/horizon', 1, '<font color=\"#ffffff\">Experience Aloy\'s full adventure as you fight to uncover her past, discover her destiny… and stop a catastrophic threat to the future.</font>', '2021-11-29 12:21:31', 25, 0, 4, 0, '{\"13\":\"1\",\"22\":\"1\",\"23\":\"1\",\"24\":\"1\"}'),
(23, 23, 'Windows 11', 'works/images/20211129125235.jpg', 'Basic design of the operating system', 7, '{\"1\":\"1\",\"2\":\"3\",\"3\":\"4\"}', 'https://www.microsoft.com/ru-ru/windowsforbusiness/windows-11', 1, 'The head of the Windows team has greeted you with this \'divine\' gift. Please enjoy your stay to the fullest extent.', '2021-11-29 12:52:35', 42, 0, 1, 4, '{\"23\":\"0\",\"13\":\"0\",\"22\":\"0\",\"24\":\"0\",\"21\":\"1\"}'),
(24, 24, 'Аналіз гри God of War', 'works/images/20211130162459.webp', 'Talking about game issues', 2, '{\"1\":\"7\"}', 'https://www.youtube.com/watch?v=iik25wqIuFo', 1, '<font color=\"#ffffff\"><b>Ігровий процесc</b> був перероблений <i>з нуля</i> і значною мірою відрізняється від попередніх ігор серії. Незважаючи на те, що God of War: Ascension ввів у серію розраховану на багато користувачів гру, описувана гра є однокористувацької. Трейлер, показаний на E3 2016, продемонстрував елементи, схожі на рольові ігри (RPG), такі як окуляри знання за стрілянину з лука та можливість використання «Спартанського гніву» під час битв. Ця здатність представляється як новий погляд на можливості «Гніву» у попередніх іграх. Гравцеві також слід шукати ресурси для крафта. На відміну від попередніх ігор, в яких було задіяно фіксовану камеру від третьої особи, у новій грі буде вільна камера з-за плеча. Замість Клинків Вигнанця, загублених у фінальній битві із Зевсом у God of War III, Кратос використовує магічну бойову сокиру Левіафан, яка може бути заряджена здібностями стихій та кинуто у ворогів. Пізніше за сюжетом, Кратос повертає свою зброю — Клінки Хаосу (втрачені під час битви з колишнім богом війни Аресом у God of War), які аналогічно попереднім частинам використовуються для завдання ударів на дистанції за рахунок ланцюгів, також підпалюючи ворогів. Кратос також зможе використовувати рукопашний бій - здатність, вперше представлена ​​Ascension.&nbsp;</font>', '2021-11-30 16:24:59', 16, 0, 2, 0, '{\"13\":\"1\",\"23\":\"1\"}');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chat_hash`
--
ALTER TABLE `chat_hash`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cv`
--
ALTER TABLE `cv`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `proffesions`
--
ALTER TABLE `proffesions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `requests`
--
ALTER TABLE `requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_sessions`
--
ALTER TABLE `users_sessions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `works`
--
ALTER TABLE `works`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `chat_hash`
--
ALTER TABLE `chat_hash`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `cv`
--
ALTER TABLE `cv`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=877;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `proffesions`
--
ALTER TABLE `proffesions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `requests`
--
ALTER TABLE `requests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=178;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `users_sessions`
--
ALTER TABLE `users_sessions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `works`
--
ALTER TABLE `works`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
