-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Oct 22, 2021 at 07:45 PM
-- Server version: 5.7.31
-- PHP Version: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `moviestore`
--

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

DROP TABLE IF EXISTS `members`;
CREATE TABLE IF NOT EXISTS `members` (
  `memberID` int(11) NOT NULL AUTO_INCREMENT,
  `firstName` varchar(15) NOT NULL,
  `lastName` varchar(15) NOT NULL,
  `phone` varchar(30) NOT NULL,
  `memberType` varchar(15) NOT NULL,
  PRIMARY KEY (`memberID`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`memberID`, `firstName`, `lastName`, `phone`, `memberType`) VALUES
(1, 'Christian', 'Schmidt', '(262) 555-8353', 'Preferred'),
(2, 'Jill', 'Finelli', '(262) 555-1122', 'Preferred'),
(3, 'Jackie', 'Hollander', '(262) 555-7352', 'Preferred'),
(4, 'Jean', 'Montgolfier', '(262) 555-9264', 'Regular'),
(5, 'Juan', 'Santiago', '(262) 555-9865', 'Student'),
(6, 'Julie', 'Smith', '(262) 555-9785', 'Preferred'),
(7, 'Louis', 'Pascal', '(262) 555-6439', 'Regular'),
(8, 'Nadia', 'Likorsky', '(262) 555-8352', 'Student'),
(9, 'Rudolph', 'Geiger', '(262) 555-6286', 'Preferred'),
(10, 'Ryan', 'Greene', '(262) 555-8370', 'Preferred'),
(11, 'Sony', 'Nathan', '(262) 555-1234', 'Preferred'),
(12, 'Chris', ' Schultz', ' 262 555-8999', ' Preferred\r'),
(13, ' James', ' Fox', ' 262 555-1155', 'Preferred'),
(14, ' Jake', ' Holdon', ' 262 555-7777', ' Preferred\r'),
(15, ' Jean', ' Montegomery', ' 262 555-9666', ' Regular\r'),
(16, ' Jual', ' Santana', ' 262 555-9888', ' Student\r'),
(17, ' Julie', ' Brown', ' 262 555-9777', ' Preferred\r'),
(18, ' Louis', ' Armstrong', ' 262 555-6444', ' Regular\r'),
(19, ' Nate', ' Lancaster', ' 262 555-8333', ' Student\r'),
(20, ' Derek', ' Randall', ' 262 555-6226', 'Preferred'),
(21, ' Ryan', ' Bush', ' 262 555-8377', ' Preferred\r'),
(22, ' Sony', ' Panasonic', ' 262 555-1444', ' Preferred'),
(23, 'Sam', 'Samarans', '262-555-1216', 'Regular'),
(24, 'Sam', 'Walton', '262 555-9999', 'Preferred'),
(25, 'Donald', 'Clark', '262 555-8999', 'Student');

-- --------------------------------------------------------

--
-- Table structure for table `movies`
--

DROP TABLE IF EXISTS `movies`;
CREATE TABLE IF NOT EXISTS `movies` (
  `movieID` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `year` year(4) NOT NULL,
  `type` varchar(15) NOT NULL,
  PRIMARY KEY (`movieID`)
) ENGINE=InnoDB AUTO_INCREMENT=121 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `movies`
--

INSERT INTO `movies` (`movieID`, `title`, `year`, `type`) VALUES
(1, 'All Quiet on the Western Front', 1930, 'Adventure'),
(2, 'Gone with the Wind', 1939, 'Romance'),
(3, 'Casablanca', 1940, 'Romance'),
(4, 'The Lost Weekend', 1945, 'Drama'),
(5, 'Hamlet', 1948, 'Drama'),
(6, 'All About Eve', 1950, 'Suspense'),
(7, 'From Here to Eternity', 1953, 'Comedy'),
(8, 'On the Waterfront', 1954, 'Drama'),
(9, 'Around the World in 80 Days', 1955, 'Adventure'),
(10, 'Gigi', 1958, 'Musical'),
(11, 'Ben Hur', 1959, 'Drama'),
(12, 'West Side Story', 1961, 'Romance'),
(13, 'Lawrence of Arabia', 1962, 'Drama'),
(14, 'My Fair Lady', 1964, 'Musical'),
(15, 'The Sound of Music', 1965, 'Drama'),
(16, 'A Man for All Seasons', 1966, 'Adventure'),
(17, 'Oliver!', 1968, 'Musical'),
(18, 'Airport', 1970, 'Drama'),
(19, 'The French Connection', 1971, 'Drama'),
(20, 'The Godfather', 1972, 'Drama'),
(21, 'The Sting', 1973, 'Drama'),
(22, 'The Godfather, Part 2', 1974, 'Drama'),
(23, 'One Flew Over the Cuckoo\'s Nest', 1975, 'Drama'),
(24, 'Rocky', 1976, 'Action'),
(25, 'Annie Hall', 1977, 'Musical'),
(26, 'Star Wars', 1977, 'Sci-Fi'),
(27, 'The Deer Hunter', 1978, 'Drama'),
(28, 'Kramer vs. Kramer', 1979, 'Drama'),
(29, 'Ordinary People', 1980, 'Comedy'),
(30, 'Chariots of Fire', 1981, 'Drama'),
(31, 'Raiders of the Lost Ark', 1981, 'Adventure'),
(32, 'ET', 1982, 'Sci-Fi'),
(33, 'Tootsie', 1982, 'Comedy'),
(34, 'Gandhi', 1982, 'Drama'),
(35, 'Terms of Endearment', 1983, 'Drama'),
(36, 'Amadeus', 1984, 'Drama'),
(37, 'Out of Africa', 1985, 'Drama'),
(38, 'Howard the Duck', 1986, 'Comedy'),
(39, 'Platoon', 1986, 'Drama'),
(40, 'Overboard', 1987, 'Comedy'),
(41, 'The Last Emperor', 1987, 'Drama'),
(42, 'The Princess Bride', 1987, 'Drama'),
(43, 'Big', 1988, 'Comedy'),
(44, 'Rain Man', 1988, 'Drama'),
(45, 'Who Framed Roger Rabbit', 1998, 'Animation'),
(46, 'Driving Miss Daisy', 1989, 'Comedy'),
(47, 'Dances With Wolves', 1990, 'Drama'),
(48, 'Rescuers Down Under', 1990, 'Animation'),
(49, 'Beauty and the Beast', 1991, 'Animation'),
(50, 'Silence of the Lambs', 1991, 'Mystery'),
(51, 'Unforgiven', 1992, 'Western'),
(52, 'Schindler\'s List', 1993, 'Drama'),
(53, 'Forrest Gump', 1994, 'Comedy'),
(55, 'Maverick', 1994, 'Western'),
(56, 'The Lion King', 1994, 'Animation'),
(57, 'Braveheart', 1995, 'Drama'),
(58, 'Seven', 1995, 'Drama'),
(59, 'Fargo', 1996, 'Drama'),
(60, 'The English Patient', 1996, 'Drama'),
(61, 'Titanic', 1997, 'Drama'),
(62, 'Shakespeare in Love', 1998, 'Drama'),
(63, 'Matrix', 1999, 'Adventure'),
(64, 'Tarzan', 1999, 'Animation'),
(65, 'Star Wars: Episode I', 1999, 'Sci-Fi'),
(66, 'The Lord of the Rings: the Fellowship of the Ring', 2002, 'Action'),
(67, 'The Pianist', 2002, 'Drama'),
(68, 'Finding Nemo', 2003, 'Animation'),
(69, 'Million Dollar Baby', 2004, 'Drama'),
(70, 'Sin City', 2005, 'Action'),
(71, 'Batman Begins', 2005, 'Action'),
(72, 'V for Vandetta', 2005, 'Action'),
(73, 'The Departed', 2006, 'Mystery'),
(74, 'The Prestige', 2006, 'Drama'),
(75, 'No Country for Old Men', 2007, 'Mystery'),
(76, 'The Bourne Ultimatum', 2007, 'Action'),
(77, 'Into the Wild', 2007, 'Adventure'),
(78, 'Ratatouille', 2008, 'Animation'),
(79, 'The Dark Knight', 2008, 'Action'),
(80, 'Slumdog Millionaire', 2008, 'Drama'),
(81, 'Crash', 2005, 'Drama'),
(82, 'A Beautiful Mind', 2001, 'Drama'),
(83, 'The Artist', 2011, 'Drama'),
(84, 'The King\'s Speech', 2010, 'Drama'),
(85, 'Chicago', 2002, 'Musical'),
(86, 'Birdman', 2014, 'Adventure'),
(87, 'Argo', 2012, 'Action'),
(88, 'Gladiator', 2000, 'Sci-Fi'),
(89, 'American Beauty', 1999, 'Drama'),
(90, 'The Hurt Locker', 2009, 'Action'),
(91, '12 Years a Slave', 2013, 'Adventure'),
(92, 'The Lord of the Rings: The Return of the King', 2003, 'Action'),
(93, 'The Jungle Book', 2016, 'Adventure'),
(94, 'Bridge of Spies', 2015, 'Drama'),
(95, 'Inside Out', 2015, 'Animation'),
(96, 'The Imitation Game', 2014, 'Drama'),
(97, 'Gravity', 2013, 'Sci-Fi'),
(98, 'Interstellar', 2014, 'Sci-Fi'),
(99, 'Avatar', 2009, 'Sci-Fi'),
(100, 'Star Wars: The Force Awakens', 2015, 'Sci-Fi'),
(101, 'Star Wars: The Last Jedi', 2017, 'Sci-Fi'),
(102, 'Worth', 2020, 'Drama'),
(103, '365 Days', 2020, 'Romance'),
(104, 'The Courier', 2020, 'Drama'),
(105, 'Tenet', 2020, 'Sci-Fi'),
(106, 'News of the World', 2020, 'Adventure'),
(107, 'The Father', 2020, 'Drama'),
(108, 'The Night House', 2020, 'Mystry'),
(109, 'Hamilton', 2020, 'Drama'),
(110, 'Soul', 2020, 'Animation'),
(111, 'Mulan', 2020, 'Action'),
(112, 'Avengers: Endgame', 2019, 'Action'),
(113, 'Knives Out', 2019, 'Comedy'),
(114, '1917', 2019, 'Action'),
(115, 'Jorker', 2019, 'Drama'),
(116, 'Spider-Man: Far Home', 2019, 'Action'),
(117, 'The Lighthouse', 2019, 'Drama'),
(118, 'After', 2019, 'Romance'),
(119, 'The Gentlemen', 2019, 'Action'),
(120, 'Abominable', 2019, 'Animation');

-- --------------------------------------------------------

--
-- Table structure for table `rentals`
--

DROP TABLE IF EXISTS `rentals`;
CREATE TABLE IF NOT EXISTS `rentals` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dateOut` date NOT NULL,
  `returned` date NOT NULL,
  `movieID` int(11) NOT NULL,
  `memberID` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rentals`
--

INSERT INTO `rentals` (`id`, `dateOut`, `returned`, `movieID`, `memberID`) VALUES
(1, '2015-02-15', '2015-02-25', 92, 1),
(2, '2015-02-10', '2015-02-21', 79, 2),
(3, '2015-02-12', '2015-02-15', 57, 3),
(4, '2015-10-25', '2015-10-27', 85, 3),
(5, '2015-10-22', '2015-10-26', 3, 4),
(6, '2015-02-14', '2015-02-18', 65, 5),
(7, '2015-02-27', '2015-02-28', 31, 6),
(8, '2015-12-01', '2015-12-03', 17, 7),
(9, '2015-04-12', '2015-04-14', 63, 7),
(10, '2015-12-13', '2015-12-17', 65, 8),
(11, '2015-12-15', '2015-12-25', 32, 9),
(12, '2016-02-10', '2016-02-21', 26, 10),
(13, '2016-12-12', '2016-12-15', 57, 11),
(14, '2017-10-25', '2017-10-27', 48, 10),
(15, '2017-10-22', '2017-10-23', 60, 9),
(16, '2017-12-14', '2017-12-18', 65, 11),
(17, '2017-12-27', '2017-12-28', 75, 7),
(18, '2018-02-01', '2018-02-03', 73, 5),
(19, '2018-11-12', '2018-11-14', 63, 2),
(20, '2019-02-13', '2019-02-16', 65, 1),
(21, '2019-10-31', '2019-11-02', 59, 9),
(22, '2019-10-22', '2019-10-25', 63, 4),
(23, '2019-12-14', '2019-12-18', 58, 7),
(24, '2019-12-27', '2019-12-28', 18, 1),
(25, '2019-12-01', '2019-12-03', 45, 8),
(26, '2020-05-09', '2020-05-23', 81, 5),
(27, '2020-03-07', '2020-04-04', 26, 10),
(28, '2020-09-12', '2020-09-19', 77, 9),
(29, '2020-10-15', '2020-10-18', 87, 3),
(30, '2020-10-01', '2020-10-08', 96, 5),
(31, '2020-11-01', '2020-11-08', 95, 1),
(32, '2021-04-10', '2021-04-17', 99, 5),
(33, '2021-05-08', '2021-05-15', 102, 5),
(34, '2021-07-01', '2021-07-15', 117, 6),
(35, '2020-12-01', '2020-12-08', 107, 5),
(36, '2020-11-15', '2020-11-29', 109, 5),
(37, '2020-12-11', '2020-12-18', 115, 21),
(38, '2020-11-25', '2020-11-29', 117, 20);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
