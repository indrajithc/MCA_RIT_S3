-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
-- PROGRAM 3
-- Host: localhost
-- Generation Time: Oct 28, 2017 at 06:42 PM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 7.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mca1661`
--

-- --------------------------------------------------------

--
-- Table structure for table `match`
--

CREATE TABLE `match` (
  `OPCNAME` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `MATCHDATE` date NOT NULL,
  `WCNAME` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `CENTURIES` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `match`
--

INSERT INTO `match` (`OPCNAME`, `MATCHDATE`, `WCNAME`, `CENTURIES`) VALUES
('Australia', '2012-02-22', 'Pakistan', 0),
('Australia', '2012-03-22', 'India', 0),
('Pakistan', '2012-01-22', 'India', 2),
('Pakistan', '2012-04-22', 'Australia', 0);

-- --------------------------------------------------------

--
-- Table structure for table `performance`
--

CREATE TABLE `performance` (
  `OPCNAME` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `MATCHDATE` date NOT NULL,
  `PNAME` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `CNAME` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `WICKET` int(11) DEFAULT NULL,
  `NORUNS` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `performance`
--

INSERT INTO `performance` (`OPCNAME`, `MATCHDATE`, `PNAME`, `CNAME`, `WICKET`, `NORUNS`) VALUES
('Australia', '2012-02-22', 'Afridi', 'India', 2, 22),
('Australia', '2012-02-22', 'Imran Hazern', 'Pakistan', 1, 100),
('Australia', '2012-02-22', 'Imran Nazir', 'Pakistan', 2, 70),
('Australia', '2012-02-22', 'Shezad', 'Pakistan', 2, 61),
('Australia', '2012-03-22', 'Gambhir', 'India', 1, 66),
('Australia', '2012-03-22', 'Sevag', 'India', 2, 42),
('Pakistan', '2012-01-22', 'Kohli', 'India', 2, 49),
('Pakistan', '2012-01-22', 'Sachin', 'India', 1, 200),
('Pakistan', '2012-04-22', 'Christ', 'Australia', 2, 33),
('Pakistan', '2012-04-22', 'Clarke', 'Australia', 1, 54),
('Pakistan', '2012-04-22', 'Ponding', 'Australia', 1, 82),
('Pakistan', '2012-04-22', 'Warnor', 'Australia', 1, 48);

-- --------------------------------------------------------

--
-- Table structure for table `player`
--

CREATE TABLE `player` (
  `PNAME` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `CNAME` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `DOB` date DEFAULT NULL,
  `CATEGORY` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `player`
--

INSERT INTO `player` (`PNAME`, `CNAME`, `DOB`, `CATEGORY`) VALUES
('Afridi', 'India', '1979-03-12', 'A'),
('Christ', 'Australia', '1968-01-12', 'BO'),
('Clarke', 'Australia', '1977-03-12', 'BO'),
('Gambhir', 'India', '1988-03-09', 'B'),
('Imran Hazern', 'Pakistan', '1973-12-10', 'BO'),
('Imran Nazir', 'Pakistan', '1983-02-10', 'b'),
('Kohli', 'India', '1980-09-12', 'B'),
('Michael Hazzi', 'Australia', '1975-03-12', 'A'),
('Ponding', 'Australia', '1975-01-12', 'B'),
('Sachin', 'India', '1978-09-12', 'A'),
('Sevag', 'India', '1972-06-09', 'BO'),
('Shezad', 'Pakistan', '1982-01-10', 'A'),
('Warnor', 'Australia', '1967-12-03', 'A');

-- --------------------------------------------------------

--
-- Table structure for table `team`
--

CREATE TABLE `team` (
  `CNAME` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `CONTINENT` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `NOP` int(11) DEFAULT NULL,
  `JCOLOR` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `team`
--

INSERT INTO `team` (`CNAME`, `CONTINENT`, `NOP`, `JCOLOR`) VALUES
('Australia', 'Australia', 4, 'Gree&gold'),
('India', 'Asia', 4, 'Blue'),
('Pakistan', 'Asia', 4, 'Green');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `match`
--
ALTER TABLE `match`
ADD PRIMARY KEY (`OPCNAME`,`MATCHDATE`),
ADD KEY `WCNAME` (`WCNAME`);

--
-- Indexes for table `performance`
--
ALTER TABLE `performance`
ADD PRIMARY KEY (`OPCNAME`,`MATCHDATE`,`PNAME`,`CNAME`),
ADD KEY `OPCNAME` (`OPCNAME`,`MATCHDATE`),
ADD KEY `PNAME` (`PNAME`,`CNAME`);

--
-- Indexes for table `player`
--
ALTER TABLE `player`
ADD PRIMARY KEY (`PNAME`,`CNAME`),
ADD KEY `CNAME` (`CNAME`);

--
-- Indexes for table `team`
--
ALTER TABLE `team`
ADD PRIMARY KEY (`CNAME`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `match`
--
ALTER TABLE `match`
ADD CONSTRAINT `match_ibfk_1` FOREIGN KEY (`WCNAME`) REFERENCES `team` (`CNAME`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `performance`
--
ALTER TABLE `performance`
ADD CONSTRAINT `performance_ibfk_1` FOREIGN KEY (`OPCNAME`,`MATCHDATE`) REFERENCES `match` (`OPCNAME`, `MATCHDATE`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `performance_ibfk_2` FOREIGN KEY (`PNAME`,`CNAME`) REFERENCES `player` (`PNAME`, `CNAME`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `player`
--
ALTER TABLE `player`
ADD CONSTRAINT `player_ibfk_1` FOREIGN KEY (`CNAME`) REFERENCES `team` (`CNAME`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;



-- select pname from player where cname in(select cname from team where
-- jcolor='Blue');
-- select continent,count(continent) as no_of_teams from team group by continent having
-- count(continent)>=all(select count(continent) from team group by continent);
-- select count(pname) as Indian_Bowlers from player where CATEGORY='BO' and
-- cname='India';
-- select t.cname from team t,player p where t.CNAME=p.CNAME and
-- p.CATEGORY='BO'group by t.CNAME having count(p.PNAME)>=all(select count(PNAME) from
-- player where CATEGORY='BO'group by CNAME);

-- select pname from player where dob<'1970-10-16';

-- select pname, floor(datediff(CURDATE(),DOB) / 365)  AS AGE from player where  TIMESTAMPDIFF(MONTH,CURRENT_DATE(),dob)*-1  >=364
-- select pname,round(sum(noruns)/100) as centuries from performance where
-- noruns>=100 group by PNAME


-- select pname from performance where noruns>=all(select noruns from performance);

-- SELECT OPCNAME, COUNT(OPCNAME) AS no_of_failure FROM `match` GROUP BY OPCNAME HAVING COUNT(OPCNAME)>=all(SELECT COUNT(OPCNAME) FROM `match` GROUP by OPCNAME)

-- select cname,sum(noruns) as score from performance group by cname having
-- sum(noruns)>200;

-- select p.pname from player p,performance p1,team t where t.cname=p.cname and
-- t.cname=p1.cname and p.pname=p1.pname and t.continent='Asia' and p1.wicket<=all(select
-- wicket from performance);

-- select cname from team where continent like 'A%a';

-- select matchdate,sum(noruns) as total_runs from performance group by matchdate
-- having sum(noruns)<=all(select sum(noruns) from performance group by matchdate);

-- SELECT  TIMESTAMPDIFF(MONTH,'2018-04-22', '2018-01-22')*-1 AS duration
--  