-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 13, 2022 at 12:52 AM
-- Server version: 8.0.26
-- PHP Version: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `portfolio`
--
CREATE DATABASE IF NOT EXISTS `portfolio` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `portfolio`;

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

DROP TABLE IF EXISTS `courses`;
CREATE TABLE IF NOT EXISTS `courses` (
  `id_courses` int NOT NULL AUTO_INCREMENT,
  `course_name` varchar(45) DEFAULT NULL,
  `place` varchar(45) DEFAULT NULL,
  `description` varchar(45) DEFAULT NULL,
  `start_data` varchar(45) DEFAULT NULL,
  `end_data` varchar(45) DEFAULT NULL,
  `userIdCourses` int DEFAULT NULL,
  PRIMARY KEY (`id_courses`),
  KEY `user_id_idx` (`userIdCourses`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id_courses`, `course_name`, `place`, `description`, `start_data`, `end_data`, `userIdCourses`) VALUES
(1, 'Full-Stack Development Training', 'MakerSpace Innovation Center Prizren', 'Front-end(Angular) and back-end(Express JS)', '04/2022', '08/2022', 1),
(2, 'Understanding TypeScript', 'Maximilian Schwarzmüller Online Course Udemy', NULL, '05/2022', '06/2022', 1),
(3, 'Front-End Development', 'Shkolla Digjitale in Prizren', 'Html, Css, Bootstrap, and Javascript ', '10/2018', '10/2019', 1),
(4, 'Back-End Development Course Laravel', 'MakerSpace in Prizren', 'Laravel framework, MySQL and CRUD functions.', '11/2019', '01/2020', 1),
(5, 'Angular-The complete Guide (2022 Edition)', 'Maximilian Schwarzmüller Online Course Udemy', '', '08/2022', '10/2022', 1),
(6, 'React Course', 'Online', NULL, '10/2022', 'Continuining', 1);

-- --------------------------------------------------------

--
-- Table structure for table `educations`
--

DROP TABLE IF EXISTS `educations`;
CREATE TABLE IF NOT EXISTS `educations` (
  `education_id` int NOT NULL AUTO_INCREMENT,
  `school_name` varchar(100) DEFAULT NULL,
  `start_year` int DEFAULT NULL,
  `end_year` int DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  `country` varchar(45) DEFAULT NULL,
  `major` varchar(45) DEFAULT NULL,
  `userId` int NOT NULL,
  PRIMARY KEY (`education_id`),
  KEY `user_id_idx` (`userId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `educations`
--

INSERT INTO `educations` (`education_id`, `school_name`, `start_year`, `end_year`, `city`, `country`, `major`, `userId`) VALUES
(1, 'BSc in Computer Science, University of Prizren  \"Ukshin Hoti\"', 2018, 2021, 'Prizren', 'Kosovo', 'Software Design', 1);

-- --------------------------------------------------------

--
-- Table structure for table `experience`
--

DROP TABLE IF EXISTS `experience`;
CREATE TABLE IF NOT EXISTS `experience` (
  `id_experience` int NOT NULL AUTO_INCREMENT,
  `job_name` varchar(45) DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  `start_date` varchar(45) DEFAULT NULL,
  `end_date` varchar(45) DEFAULT NULL,
  `place` varchar(45) DEFAULT NULL,
  `user_id_job` int DEFAULT NULL,
  PRIMARY KEY (`id_experience`),
  KEY `user_id_job_idx` (`user_id_job`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `experience`
--

INSERT INTO `experience` (`id_experience`, `job_name`, `description`, `start_date`, `end_date`, `place`, `user_id_job`) VALUES
(1, 'AStech, ITP, Intern QA', 'For 3 months I learned automated testing with the Mocha framework. Then I tested the front end, which is Sospeso an Italian restaurant/bar search app. This project has been tested carefully and in detail on every page and element in it. Test cases are written in the typescript programming language, I used webdriverIO and mocha framework.', '01/2022', '04/2022', 'Prizren', 1),
(2, 'Doku Fest', 'Volunteer', '08/2017', '09/2017', 'Prizren', 1);

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

DROP TABLE IF EXISTS `languages`;
CREATE TABLE IF NOT EXISTS `languages` (
  `id_languages` int NOT NULL AUTO_INCREMENT,
  `language_name` varchar(45) DEFAULT NULL,
  `language-level` varchar(45) DEFAULT NULL,
  `user_id_language` int NOT NULL,
  PRIMARY KEY (`id_languages`),
  KEY `user_id_idx` (`user_id_language`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id_languages`, `language_name`, `language-level`, `user_id_language`) VALUES
(1, 'Albanian', 'Native', 1),
(2, 'English', 'Intermediate ', 1),
(3, 'Turkish', 'Advanced', 1);

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

DROP TABLE IF EXISTS `projects`;
CREATE TABLE IF NOT EXISTS `projects` (
  `id_project` int NOT NULL AUTO_INCREMENT,
  `project_name` varchar(45) NOT NULL,
  `programming_language` varchar(45) DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  `github_link` varchar(100) NOT NULL,
  `user_id_project` int NOT NULL,
  PRIMARY KEY (`id_project`),
  KEY `user_id_project_idx` (`user_id_project`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id_project`, `project_name`, `programming_language`, `description`, `github_link`, `user_id_project`) VALUES
(4, 'Audio Book', 'Laravel Framework', 'Audio book Application', 'https://github.com/sarabajraktari/AudioBook', 1),
(5, 'Tourist Places', 'Angular Framework', 'Places in Kosovo Application', 'https://github.com/sarabajraktari/tourist-places', 1),
(6, 'Posters', 'React Library', 'I started a project with react typescript but it is not finished yet.', 'https://github.com/sarabajraktari/poster-app', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `surname` varchar(45) NOT NULL,
  `description` varchar(400) DEFAULT NULL,
  `number` varchar(45) DEFAULT NULL,
  `address` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `data_birth` varchar(45) DEFAULT NULL,
  `nation` varchar(45) DEFAULT NULL,
  `sex` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `Email_UNIQUE` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `name`, `surname`, `description`, `number`, `address`, `email`, `data_birth`, `nation`, `sex`) VALUES
(1, 'Sara ', 'Bajraktari', 'I come from Prizren, Kosovo. My first time in code was in high school, I never even heard of this world of codes, but now I am very blessed to know this world because it changed my thoughts and life, and as a profession, I love it a lot.', '+38349757211', 'William Walker, 2000 Prizren, Kosovo', 'sarabajraktari90@gmail.com', '14.03.2000', 'Kosovo', 'Female');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `courses`
--
ALTER TABLE `courses`
  ADD CONSTRAINT `course_id` FOREIGN KEY (`userIdCourses`) REFERENCES `user` (`user_id`);

--
-- Constraints for table `educations`
--
ALTER TABLE `educations`
  ADD CONSTRAINT `user_id` FOREIGN KEY (`userId`) REFERENCES `user` (`user_id`);

--
-- Constraints for table `experience`
--
ALTER TABLE `experience`
  ADD CONSTRAINT `user_id_job` FOREIGN KEY (`user_id_job`) REFERENCES `user` (`user_id`);

--
-- Constraints for table `languages`
--
ALTER TABLE `languages`
  ADD CONSTRAINT `user_id_language` FOREIGN KEY (`user_id_language`) REFERENCES `user` (`user_id`);

--
-- Constraints for table `projects`
--
ALTER TABLE `projects`
  ADD CONSTRAINT `user_id_project` FOREIGN KEY (`user_id_project`) REFERENCES `user` (`user_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
