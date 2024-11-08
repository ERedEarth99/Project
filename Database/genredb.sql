-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Oct 26, 2024 at 07:17 PM
-- Server version: 8.3.0
-- PHP Version: 8.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `genredb`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

DROP TABLE IF EXISTS `books`;
CREATE TABLE IF NOT EXISTS `books` (
  `BookID` int NOT NULL AUTO_INCREMENT,
  `BookName` varchar(30) NOT NULL,
  `ReleaseYear` int NOT NULL,
  `Rating` int NOT NULL,
  `Author` varchar(30) NOT NULL,
  `Publisher` varchar(30) NOT NULL,
  `BookGenre` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`BookID`),
  KEY `book_fk_genre` (`BookGenre`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`BookID`, `BookName`, `ReleaseYear`, `Rating`, `Author`, `Publisher`, `BookGenre`) VALUES
(1, 'Percy Jackson The Lightning Th', 2005, 8, 'Rick Riordan', 'Miramax Books', 'Action');

-- --------------------------------------------------------

--
-- Table structure for table `games`
--

DROP TABLE IF EXISTS `games`;
CREATE TABLE IF NOT EXISTS `games` (
  `GameID` int NOT NULL AUTO_INCREMENT,
  `GameName` varchar(30) NOT NULL,
  `ReleaseYear` int NOT NULL,
  `Rating` int NOT NULL,
  `Developer` varchar(30) NOT NULL,
  `Publisher` varchar(30) NOT NULL,
  `GameGenre` varchar(30) NOT NULL,
  PRIMARY KEY (`GameID`),
  KEY `game_fk_genre` (`GameGenre`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `games`
--

INSERT INTO `games` (`GameID`, `GameName`, `ReleaseYear`, `Rating`, `Developer`, `Publisher`, `GameGenre`) VALUES
(1, 'Call Of Duty Black Ops 6', 2024, 7, 'Treyarch', 'Activision', 'Action');

-- --------------------------------------------------------

--
-- Table structure for table `genre`
--

DROP TABLE IF EXISTS `genre`;
CREATE TABLE IF NOT EXISTS `genre` (
  `GenreID` int NOT NULL AUTO_INCREMENT,
  `GenreName` varchar(30) NOT NULL,
  PRIMARY KEY (`GenreID`),
  KEY `GenreName_FK_Index` (`GenreName`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `genre`
--

INSERT INTO `genre` (`GenreID`, `GenreName`) VALUES
(1, 'Action'),
(2, 'Comedy'),
(3, 'Horror'),
(4, 'Romance');

-- --------------------------------------------------------

--
-- Table structure for table `movies`
--

DROP TABLE IF EXISTS `movies`;
CREATE TABLE IF NOT EXISTS `movies` (
  `MovieID` int NOT NULL AUTO_INCREMENT,
  `MovieName` varchar(30) NOT NULL,
  `ReleaseYear` int NOT NULL,
  `Rating` int NOT NULL,
  `Director` varchar(30) NOT NULL,
  `Publisher` varchar(30) NOT NULL,
  `MovieGenre` varchar(30) NOT NULL,
  PRIMARY KEY (`MovieID`),
  KEY `movie_fk_genre` (`MovieGenre`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `movies`
--

INSERT INTO `movies` (`MovieID`, `MovieName`, `ReleaseYear`, `Rating`, `Director`, `Publisher`, `MovieGenre`) VALUES
(1, 'Star Wars', 1977, 10, 'George Lucas', 'Twentieth Century-Fox', 'Action');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
