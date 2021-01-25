-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1:3308
-- Létrehozás ideje: 2021. Jan 25. 19:19
-- Kiszolgáló verziója: 8.0.18
-- PHP verzió: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `kdpeq8_wp3`
--
CREATE DATABASE IF NOT EXISTS `kdpeq8_wp3` DEFAULT CHARACTER SET utf8 COLLATE utf8_hungarian_ci;
USE `kdpeq8_wp3`;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_hungarian_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `categories`
--

INSERT INTO `categories` (`id`, `user_id`, `name`, `created_at`) VALUES
(1, 2, 'Gazdaság', '2021-01-22 16:57:16'),
(2, 4, 'Technológia', '2021-01-22 16:57:16'),
(3, 5, 'Fotográfia', '2021-01-22 18:27:24'),
(4, 4, 'Design', '2021-01-22 18:27:24'),
(5, 1, 'Oktatás', '2021-01-22 18:27:24'),
(6, 4, 'Gaming', '2021-01-22 18:27:24'),
(7, 4, 'Filmek & Sorozatok', '2021-01-22 18:55:53'),
(8, 3, 'Turizmus', '2021-01-23 11:58:09'),
(9, 7, 'Művészet', '2021-01-25 04:31:22');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `comments`
--

DROP TABLE IF EXISTS `comments`;
CREATE TABLE IF NOT EXISTS `comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `post_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_hungarian_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_hungarian_ci NOT NULL,
  `body` text COLLATE utf8_hungarian_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `comments`
--

INSERT INTO `comments` (`id`, `post_id`, `name`, `email`, `body`, `created_at`) VALUES
(5, 7, 'Legit User', 'legituser@freemail.hu', 'henlo ther fren', '2021-01-23 17:26:54'),
(7, 28, 'Én', 'krigovszki.balint@gmail.com', 'nagyon jó design nem is tudom ki csinálta', '2021-01-23 17:49:25'),
(8, 28, 'Parkash', 'ihavenoclue@asd.com', 'definetly not me', '2021-01-23 17:51:05'),
(9, 27, 'Teszt', 'tesztelek@gmail.com', 'Ez egy teszt', '2021-01-23 19:28:34'),
(10, 30, 'Me', 'krigovszki.balint@gmail.com', 'it workz :D', '2021-01-24 18:54:17'),
(11, 27, 'Krigovszki Bálint', 'krigovszki.balint@gmail.com', 'Ez egy hozzászólás', '2021-01-24 20:20:11'),
(12, 26, 'Nem Bálint', 'krigovszki.balint@gmail.com', 'püf', '2021-01-24 20:21:18'),
(13, 33, 'Teszt Elek', 'tesztelek@gmail.com', 'looks great', '2021-01-25 04:41:00'),
(14, 31, 'A Sith', 'iamasith@gmail.com', 'Honor is a fool’s prize. Glory is of no use to the dead.', '2021-01-25 04:42:05'),
(15, 31, 'another sith', 'anothersith@gmail.com', 'agreed', '2021-01-25 04:42:29'),
(16, 26, 'Ez sem', 'krigovszki.balint@gmail.com', 'dirrdurr', '2021-01-25 04:43:41'),
(17, 22, 'mr crab from the beach', 'mrkrab@gmail.com', 'eloo', '2021-01-25 04:45:13'),
(18, 47, 'user', 'user@gmail.com', 'yes', '2021-01-25 18:55:43'),
(19, 47, 'another user', 'user2@gmail.com', 'totally', '2021-01-25 18:55:57');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `posts`
--

DROP TABLE IF EXISTS `posts`;
CREATE TABLE IF NOT EXISTS `posts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_hungarian_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_hungarian_ci NOT NULL,
  `body` text COLLATE utf8_hungarian_ci NOT NULL,
  `post_image` varchar(255) COLLATE utf8_hungarian_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `posts`
--

INSERT INTO `posts` (`id`, `category_id`, `user_id`, `title`, `slug`, `body`, `post_image`, `created_at`) VALUES
(1, 1, 1, 'First Post', 'first-post', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'noimage.jpg', '2021-01-21 18:46:01'),
(2, 2, 1, 'Post Two', 'Post-Two', '- EDIT - Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.', 'noimage.jpg', '2021-01-21 18:46:01'),
(7, 2, 2, 'Test', 'Test', 'This post is supposed to be in technology thank you bye', 'noimage.jpg', '2021-01-22 17:04:23'),
(22, 3, 3, 'Landscape', 'Landscape', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'beach_palm_ocean_127914_2560x1440.jpg', '2021-01-22 18:26:12'),
(23, 3, 2, 'Post No Image', 'Post-No-Image', 'Ez egy poszt kép nélkül plz work', 'noimage.jpg', '2021-01-22 18:28:38'),
(25, 6, 4, 'mmm', 'mmm', 'nem ezeket a droidokat keresik', 'chrome.png', '2021-01-22 19:05:39'),
(26, 6, 4, 'Counter Strike: Global Offensive', 'Counter-Strike-Global-Offensive', 'pufpuf bumbum', 'cfS8C2.jpg', '2021-01-22 19:07:03'),
(27, 2, 3, 'AMD Ryzen 7 5800X', 'AMD-Ryzen-7-5800X', 'Míg az XT esetében igazából nem történt más, mint hogy a jobban sikerült processzorokat egy minimális tuningot követően magasabb órajellel dobták piacra, addig az új Ryzen sorozat valódi előrelépés az előző generációhoz képest, és felhasználástól függően nyugodtan számolhatunk 15-20 százalékos gyorsulással a Ryzen 3000-ekhez viszonyítva, ez a játékok alatt pedig már arra is elég, hogy az Intel korábbi csúcsmodelljét, az AMD termékeket eddig verő Core i9-9900K-t is megelőzze.', '5800x.jpg', '2021-01-22 19:10:05'),
(28, 4, 4, 'AFP1 UI Design', 'AFP1-UI-Design', 'AFP1 Weather App Project using API', 'afp1.png', '2021-01-22 19:14:58'),
(30, 2, 6, 'Teszt', 'Teszt', 'Ez egy teszt', 'noimage.jpg', '2021-01-24 18:51:43'),
(31, 7, 4, 'Korriban', 'Korriban', 'A Korriban bolygó a Star Wars-ból', 'a3EMlv.jpg', '2021-01-24 20:24:17'),
(32, 9, 7, 'Abstract', 'Abstract', 'Abstract art for wallpaper', 'paintart.jpg', '2021-01-25 04:38:45'),
(33, 9, 7, 'More abstract art', 'More-abstract-art', 'Abstract art by Paweł Czerwiński', 'abstractart.jpg', '2021-01-25 04:40:34'),
(47, 7, 4, 'Darth Vader', 'Darth-Vader', 'This will be a day long remembered. It has seen the end of Kenobi. It will soon see the end of the Rebellion.', 'darthvader.jpg', '2021-01-25 18:55:13');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_hungarian_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_hungarian_ci NOT NULL,
  `username` varchar(255) COLLATE utf8_hungarian_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_hungarian_ci NOT NULL,
  `register_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `username`, `password`, `register_date`) VALUES
(1, 'Teszt Elek', 'tesztelek@gmail.com', 'tesztelek', '202cb962ac59075b964b07152d234b70', '2021-01-23 23:41:53'),
(2, 'Teszt Elek2', 'tesztelek2@gmail.com', 'tesztelek2', '202cb962ac59075b964b07152d234b70', '2021-01-23 23:43:22'),
(3, 'Teszt Elek3', 'tesztelek3@gmail.com', 'tesztelek3', '202cb962ac59075b964b07152d234b70', '2021-01-23 23:44:39'),
(4, 'Krigovszki Bálint', 'krigovszki.balint@gmail.com', 'krigovszki.balint', 'de79df32269b0876bc23181c4f082365', '2021-01-23 23:45:12'),
(5, 'Gép Elek', 'gepelek@gmail.com', 'gepelek', '202cb962ac59075b964b07152d234b70', '2021-01-24 18:47:54'),
(6, 'Teszt2', 'teszt2@gmail.com', 'teszt2', '202cb962ac59075b964b07152d234b70', '2021-01-24 18:48:47'),
(7, 'Kis Béla', 'kis.bela02@gmail.com', 'kisbela', '827ccb0eea8a706c4c34a16891f84e7b', '2021-01-25 04:33:51'),
(8, 'Final Test', 'finaltest@gmail.com', 'finaltest', '81dc9bdb52d04dc20036dbd8313ed055', '2021-01-25 19:07:11');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
