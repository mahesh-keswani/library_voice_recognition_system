-- phpMyAdmin SQL Dump
-- version 4.5.0.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Sep 25, 2019 at 05:01 AM
-- Server version: 10.0.17-MariaDB
-- PHP Version: 5.6.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `library_iot`
--

-- --------------------------------------------------------

--
-- Table structure for table `biblio`
--

CREATE TABLE `biblio` (
  `biblio_id` int(11) NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `edition` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isbn_issn` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `publisher_id` int(11) DEFAULT NULL,
  `publish_year` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `series_title` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `call_number` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `language_id` char(5) COLLATE utf8_unicode_ci DEFAULT 'en',
  `publish_place_id` int(11) DEFAULT NULL,
  `classification` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `notes` text COLLATE utf8_unicode_ci,
  `input_date` datetime DEFAULT NULL,
  `last_update` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `biblio`
--

INSERT INTO `biblio` (`biblio_id`, `title`, `edition`, `isbn_issn`, `publisher_id`, `publish_year`, `series_title`, `call_number`, `language_id`, `publish_place_id`, `classification`, `notes`, `input_date`, `last_update`) VALUES
(1, 'PHP 5 for dummies', NULL, '0764541668', 1, '2004', 'For dummies', '005.13/3-22 Jan p', 'en', 1, '005.13/3 22', NULL, '2007-11-29 15:36:50', '2007-11-29 16:26:59'),
(2, 'Linux In a Nutshell', 'Fifth Edition', '9780596009304', 2, '2005', 'In a Nutshell', '005.4/32-22 Ell l', 'en', 2, '005.4/32 22', NULL, '2007-11-29 15:53:35', '2007-11-29 16:26:10'),
(3, 'The Definitive Guide to MySQL 5', NULL, '9781590595350', 3, '2005', 'Definitive Guide Series', '005.75/85-22 Kof d', 'en', NULL, '005.75/85 22', NULL, '2007-11-29 16:01:08', '2007-11-29 16:26:33'),
(4, 'Cathedral and the Bazaar: Musings on Linux and Open Source by an Accidental Revolutionary', NULL, '0-596-00108-8', 2, '2001', NULL, '005.4/3222 Ray c', 'en', 2, '005.4/32 22', 'The Cathedral & the Bazaar is a must for anyone who cares about the future of the computer industry or the dynamics of the information economy. This revised and expanded paperback edition includes new material on open source developments in 1999 and 2000. Raymond''s clear and effective writing style accurately describing the benefits of open source software has been key to its success. (Source: http://safari.oreilly.com/0596001088)', '2007-11-29 16:14:44', '2007-11-29 16:25:43'),
(5, 'Producing open source software : how to run a successful free software project', '1st ed.', '9780596007591', 2, '2005', NULL, '005.1-22 Fog p', 'en', 2, '005.1 22', 'Includes index.', '2007-11-29 16:20:45', '2007-11-29 16:31:21'),
(6, 'PostgreSQL : a comprehensive guide to building, programming, and administering PostgreSQL databases', '1st ed.', '0735712573', 4, '2003', 'DeveloperÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢s library', '005.75/85-22 Kor p', 'en', 3, '005.75/85 22', 'PostgreSQL is the world''s most advanced open-source database. PostgreSQL is the most comprehensive, in-depth, and easy-to-read guide to this award-winning database. This book starts with a thorough overview of SQL, a description of all PostgreSQL data types, and a complete explanation of PostgreSQL commands.', '2007-11-29 16:29:33', '2019-08-31 09:46:01'),
(7, 'Web application architecture : principles, protocols, and practices', NULL, '0471486566', 5, '2003', NULL, '005.7/2-21 Leo w', 'en', 1, '005.7/2 21', 'An in-depth examination of the core concepts and general principles of Web application development.\r\nThis book uses examples from specific technologies (e.g., servlet API or XSL), without promoting or endorsing particular platforms or APIs. Such knowledge is critical when designing and debugging complex systems. This conceptual understanding makes it easier to learn new APIs that arise in the rapidly changing Internet environment.', '2007-11-29 16:41:57', '2007-11-29 16:32:46'),
(8, 'Ajax : creating Web pages with asynchronous JavaScript and XML', NULL, '9780132272674', 6, '2007', 'Bruce PerensÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢ Open Source series', '006.7/86-22 Woy a', 'en', 4, '006.7/86 22', 'Using Ajax, you can build Web applications with the sophistication and usability of traditional desktop applications and you can do it using standards and open source software. Now, for the first time, there''s an easy, example-driven guide to Ajax for every Web and open source developer, regardless of experience.', '2007-11-29 16:47:20', '2019-08-31 09:46:01'),
(9, 'The organization of information', '2nd ed.', '1563089769', 7, '2004', 'Library and information science text series', '025-22 Tay o', 'en', 5, '025 22', 'A basic textbook for students of library and information studies, and a guide for practicing school library media specialists. Describes the impact of global forces and the school district on the development and operation of a media center, the technical and human side of management, programmatic activities, supportive services to students, and the quality and quantity of resources available to support programs.', '2007-11-29 16:54:12', '2007-11-29 16:27:20'),
(10, 'Library and Information Center Management', '7th ed.', '9781591584063', 7, '2007', 'Library and information science text series', '025.1-22 Stu l', 'en', 5, '025.1 22', NULL, '2007-11-29 16:58:51', '2007-11-29 16:27:40'),
(11, 'Information Architecture for the World Wide Web: Designing Large-Scale Web Sites', '2nd ed.', '9780596000356', 2, '2002', NULL, '006.7-22 Mor i', 'en', 6, '006.7 22', 'Information Architecture for the World Wide Web is about applying the principles of architecture and library science to web site design. Each website is like a public building, available for tourists and regulars alike to breeze through at their leisure. The job of the architect is to set up the framework for the site to make it comfortable and inviting for people to visit, relax in, and perhaps even return to someday.', '2007-11-29 17:26:14', '2007-11-29 16:32:25'),
(12, 'Corruption and development', NULL, '9780714649023', 8, '1998', NULL, '364.1 Rob c', 'en', 7, '364.1/322/091724 21', 'The articles assembled in this volume offer a fresh approach to analysing the problem of corruption in developing countries and the k means to tackle the phenomenon.', '2007-11-29 17:45:30', '2007-11-29 16:20:53'),
(13, 'Corruption and development : the anti-corruption campaigns', NULL, '0230525504', 9, '2007', NULL, '364.1 Bra c', 'en', 8, '364.1/323091724 22', 'This book provides a multidisciplinary interrogation of the global anti-corruption campaigns of the last ten years, arguing that while some positive change is observable, the period is also replete with perverse consequences and unintended outcomes', '2007-11-29 17:49:49', '2007-11-29 16:19:48'),
(14, 'Pigs at the trough : how corporate greed and political corruption are undermining America', NULL, '1400047714', 10, '2003', NULL, '364.1323 Huf p', 'en', 8, '364.1323', NULL, '2007-11-29 17:56:00', '2007-11-29 16:18:33'),
(15, 'Lords of poverty : the power, prestige, and corruption of the international aid business', NULL, '9780871134691', 11, '1994', NULL, '338.9 Han l', 'en', 8, '338.9/1/091724 20', 'Lords of Poverty is a case study in betrayals of a public trust. The shortcomings of aid are numerous, and serious enough to raise questions about the viability of the practice at its most fundamental levels. Hancocks report is thorough, deeply shocking, and certain to cause critical reevaluation of the governments motives in giving foreign aid, and of the true needs of our intended beneficiaries.', '2007-11-29 18:08:13', '2007-11-29 16:13:11');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `biblio`
--
ALTER TABLE `biblio`
  ADD PRIMARY KEY (`biblio_id`),
  ADD KEY `references_idx` (`publisher_id`,`language_id`,`publish_place_id`),
  ADD KEY `classification` (`classification`);
ALTER TABLE `biblio` ADD FULLTEXT KEY `title_ft_idx` (`title`,`series_title`);
ALTER TABLE `biblio` ADD FULLTEXT KEY `notes_ft_idx` (`notes`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `biblio`
--
ALTER TABLE `biblio`
  MODIFY `biblio_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
