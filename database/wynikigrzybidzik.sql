-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 17 Mar 2023, 01:10
-- Wersja serwera: 10.4.22-MariaDB
-- Wersja PHP: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `wynikigrzybidzik`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `wyniki`
--

CREATE TABLE `wyniki` (
  `id` int(11) NOT NULL,
  `zwyciezca` varchar(20) NOT NULL,
  `tryb` varchar(20) NOT NULL,
  `data` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `wyniki`
--

INSERT INTO `wyniki` (`id`, `zwyciezca`, `tryb`, `data`) VALUES
(1, 'grzyb', 'Gracz vs Gracz', '21:57:50, 16-03-2023'),
(2, 'grzyb', 'Gracz vs Gracz', '21:58:13, 16-03-2023'),
(3, 'grzyb', 'Gracz vs Gracz', '21:58:35, 16-03-2023'),
(4, 'grzyb', 'Gracz vs Gracz', '22:02:56, 16-03-2023'),
(5, 'grzyb', 'Gracz vs Gracz', '22:03:21, 16-03-2023'),
(6, 'grzyb', 'Gracz vs Gracz', '22:03:22, 16-03-2023'),
(7, 'grzyb', 'Gracz vs Gracz', '22:03:31, 16-03-2023'),
(8, 'dzik', 'Gracz vs Gracz', '22:03:37, 16-03-2023'),
(9, 'dzik', 'Gracz vs Gracz', '22:03:43, 16-03-2023'),
(10, 'grzyb', 'Gracz vs Gracz', '22:10:12, 16-03-2023'),
(11, 'grzyb', 'Gracz vs Gracz', '22:13:27, 16-03-2023'),
(12, 'dzik', 'Gracz vs Gracz', '22:13:35, 16-03-2023'),
(13, 'grzyb', 'Gracz vs Komputer', '22:14:49, 16-03-2023'),
(14, 'grzyb', 'Gracz vs Komputer', '22:14:51, 16-03-2023'),
(15, 'grzyb', 'Gracz vs Komputer', '22:14:52, 16-03-2023'),
(16, 'grzyb', 'Gracz vs Komputer', '22:14:53, 16-03-2023'),
(17, 'grzyb', 'Gracz vs Komputer', '22:14:53, 16-03-2023'),
(18, 'grzyb', 'Gracz vs Komputer', '22:15:10, 16-03-2023'),
(19, 'grzyb', 'Gracz vs Komputer', '22:15:11, 16-03-2023'),
(20, 'grzyb', 'Gracz vs Komputer', '22:15:11, 16-03-2023'),
(21, 'grzyb', 'Gracz vs Komputer', '22:15:12, 16-03-2023'),
(22, 'grzyb', 'Gracz vs Komputer', '22:15:12, 16-03-2023'),
(23, 'grzyb', 'Gracz vs Komputer', '22:15:15, 16-03-2023'),
(24, 'grzyb', 'Gracz vs Komputer', '22:15:16, 16-03-2023'),
(25, 'grzyb', 'Gracz vs Komputer', '22:15:16, 16-03-2023'),
(26, 'grzyb', 'Gracz vs Komputer', '22:15:17, 16-03-2023'),
(27, 'grzyb', 'Komputer vs Komputer', '22:15:29, 16-03-2023'),
(28, 'grzyb', 'Gracz vs Komputer', '22:16:34, 16-03-2023'),
(29, 'grzyb', 'Gracz vs Komputer', '22:16:34, 16-03-2023'),
(30, 'grzyb', 'Gracz vs Komputer', '22:16:34, 16-03-2023'),
(31, 'grzyb', 'Gracz vs Komputer', '22:16:35, 16-03-2023'),
(32, 'grzyb', 'Gracz vs Komputer', '22:18:55, 16-03-2023'),
(33, 'grzyb', 'Gracz vs Gracz', '22:21:50, 16-03-2023'),
(34, 'dzik', 'Komputer vs Komputer', '22:22:01, 16-03-2023'),
(35, 'grzyb', 'Komputer vs Komputer', '22:24:33, 16-03-2023'),
(36, 'grzyb', 'Gracz vs Gracz', '22:24:41, 16-03-2023'),
(37, 'grzyb', 'Gracz vs Gracz', '22:28:28, 16-03-2023'),
(38, 'grzyb', 'Komputer vs Komputer', '22:48:15, 16-03-2023'),
(39, 'grzyb', 'Gracz vs Gracz', '23:46:20, 16-03-2023'),
(40, 'grzyb', 'Gracz vs Gracz', '23:46:24, 16-03-2023'),
(41, 'grzyb', 'Gracz vs Gracz', '23:50:51, 16-03-2023');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `wyniki`
--
ALTER TABLE `wyniki`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `wyniki`
--
ALTER TABLE `wyniki`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
