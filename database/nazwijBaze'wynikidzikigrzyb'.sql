-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 16 Mar 2023, 22:31
-- Wersja serwera: 10.4.27-MariaDB
-- Wersja PHP: 8.2.0

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Zrzut danych tabeli `wyniki`
--

INSERT INTO `wyniki` (`id`, `zwyciezca`, `tryb`, `data`) VALUES
(1, 'wygrana grzyba', 'Gracz vs Gracz', '21:57:50, 16-03-2023'),
(2, 'wygrana grzyba', 'Gracz vs Gracz', '21:58:13, 16-03-2023'),
(3, 'wygrana grzyba', 'Gracz vs Gracz', '21:58:35, 16-03-2023'),
(4, 'wygrana grzyba', 'Gracz vs Gracz', '22:02:56, 16-03-2023'),
(5, 'wygrana grzyba', 'Gracz vs Gracz', '22:03:21, 16-03-2023'),
(6, 'wygrana grzyba', 'Gracz vs Gracz', '22:03:22, 16-03-2023'),
(7, 'wygrana grzyba', 'Gracz vs Gracz', '22:03:31, 16-03-2023'),
(8, 'wygrana dzika', 'Gracz vs Gracz', '22:03:37, 16-03-2023'),
(9, 'wygrana dzika', 'Gracz vs Gracz', '22:03:43, 16-03-2023'),
(10, 'wygrana grzyba', 'Gracz vs Gracz', '22:10:12, 16-03-2023'),
(11, 'wygrana grzyba', 'Gracz vs Gracz', '22:13:27, 16-03-2023'),
(12, 'wygrana dzika', 'Gracz vs Gracz', '22:13:35, 16-03-2023'),
(13, 'wygrana grzyba', 'Gracz vs Komputer', '22:14:49, 16-03-2023'),
(14, 'wygrana grzyba', 'Gracz vs Komputer', '22:14:51, 16-03-2023'),
(15, 'wygrana grzyba', 'Gracz vs Komputer', '22:14:52, 16-03-2023'),
(16, 'wygrana grzyba', 'Gracz vs Komputer', '22:14:53, 16-03-2023'),
(17, 'wygrana grzyba', 'Gracz vs Komputer', '22:14:53, 16-03-2023'),
(18, 'wygrana grzyba', 'Gracz vs Komputer', '22:15:10, 16-03-2023'),
(19, 'wygrana grzyba', 'Gracz vs Komputer', '22:15:11, 16-03-2023'),
(20, 'wygrana grzyba', 'Gracz vs Komputer', '22:15:11, 16-03-2023'),
(21, 'wygrana grzyba', 'Gracz vs Komputer', '22:15:12, 16-03-2023'),
(22, 'wygrana grzyba', 'Gracz vs Komputer', '22:15:12, 16-03-2023'),
(23, 'wygrana grzyba', 'Gracz vs Komputer', '22:15:15, 16-03-2023'),
(24, 'wygrana grzyba', 'Gracz vs Komputer', '22:15:16, 16-03-2023'),
(25, 'wygrana grzyba', 'Gracz vs Komputer', '22:15:16, 16-03-2023'),
(26, 'wygrana grzyba', 'Gracz vs Komputer', '22:15:17, 16-03-2023'),
(27, 'wygrana grzyba', 'Komputer vs Komputer', '22:15:29, 16-03-2023'),
(28, 'wygrana grzyba', 'Gracz vs Komputer', '22:16:34, 16-03-2023'),
(29, 'wygrana grzyba', 'Gracz vs Komputer', '22:16:34, 16-03-2023'),
(30, 'wygrana grzyba', 'Gracz vs Komputer', '22:16:34, 16-03-2023'),
(31, 'wygrana grzyba', 'Gracz vs Komputer', '22:16:35, 16-03-2023'),
(32, 'wygrana grzyba', 'Gracz vs Komputer', '22:18:55, 16-03-2023'),
(33, 'wygrana grzyba', 'Gracz vs Gracz', '22:21:50, 16-03-2023'),
(34, 'wygrana dzika', 'Komputer vs Komputer', '22:22:01, 16-03-2023'),
(35, 'wygrana grzyba', 'Komputer vs Komputer', '22:24:33, 16-03-2023'),
(36, 'wygrana grzyba', 'Gracz vs Gracz', '22:24:41, 16-03-2023'),
(37, 'wygrana grzyba', 'Gracz vs Gracz', '22:28:28, 16-03-2023');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
