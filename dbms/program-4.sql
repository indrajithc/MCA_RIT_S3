-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
-- program 4
-- Host: localhost
-- Generation Time: Oct 28, 2017 at 09:22 PM
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
-- Table structure for table `depart`
--

CREATE TABLE `depart` (
  `deptno` int(11) NOT NULL,
  `dname` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hod` int(11) DEFAULT NULL,
  `noemp` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `depart`
--

INSERT INTO `depart` (`deptno`, `dname`, `hod`, `noemp`) VALUES
(32, 'Finance&Account', NULL, 5),
(33, 'Marketing&Sales', NULL, 5),
(34, 'HR&Admin', NULL, 5),
(35, 'Technical', NULL, 6);

-- --------------------------------------------------------

--
-- Table structure for table `emp_info`
--

CREATE TABLE `emp_info` (
  `eid` int(11) NOT NULL,
  `jid` int(11) DEFAULT NULL,
  `deptno` int(11) DEFAULT NULL,
  `fname` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lname` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `salary` int(11) DEFAULT NULL,
  `hdate` datetime DEFAULT NULL,
  `email` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phno` bigint(20) DEFAULT NULL,
  `city` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `emp_info`
--

INSERT INTO `emp_info` (`eid`, `jid`, `deptno`, `fname`, `lname`, `salary`, `hdate`, `email`, `phno`, `city`) VALUES
(1, 22, 32, 'Lakshman', 'Sarma', 60496, '1999-08-09 00:00:00', 'lks@gmail.com', 9847756342, 'TVM'),
(2, 22, 33, 'Mohan', 'Varma', 48404, '2009-01-04 00:00:00', 'mva@gmail.com', 9847756432, 'KLM'),
(3, 22, 34, 'John', 'Cyril', 60496, '2005-09-05 00:00:00', 'jcj@gmail.com', 9874437456, 'CTA'),
(4, 22, 35, 'gayathri', 'MOHAN', 36300, '2011-06-05 00:00:00', 'gm@gmail.com', 9845563728, 'Tci');

-- --------------------------------------------------------

--
-- Table structure for table `job`
--

CREATE TABLE `job` (
  `jid` int(11) NOT NULL,
  `jname` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `job`
--

INSERT INTO `job` (`jid`, `jname`) VALUES
(22, 'Manager'),
(23, 'Purchase Manager'),
(24, 'Information Officer'),
(25, 'Executive Staff');

-- --------------------------------------------------------

--
-- Table structure for table `res_area`
--

CREATE TABLE `res_area` (
  `city` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postcode` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `res_area`
--

INSERT INTO `res_area` (`city`, `state`, `country`, `postcode`) VALUES
('CTA', 'Hyderabad', 'India', 691005),
('KLM', 'Kerala', 'India', 691582),
('Trichi', 'Tamilnadu', 'India', 691223),
('TVM', 'Kerala', 'India', 691583);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `depart`
--
ALTER TABLE `depart`
ADD PRIMARY KEY (`deptno`);

--
-- Indexes for table `emp_info`
--
ALTER TABLE `emp_info`
ADD PRIMARY KEY (`eid`);

--
-- Indexes for table `job`
--
ALTER TABLE `job`
ADD PRIMARY KEY (`jid`);

--
-- Indexes for table `res_area`
--
ALTER TABLE `res_area`
ADD PRIMARY KEY (`city`),
ADD UNIQUE KEY `postcode` (`postcode`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;





-- create user 'indra'@'localhost' identified by 'indra'
--   SET PASSWORD FOR 'indra'@'localhost' = 'student_password'
--   GRANT ALL ON db1.* TO 'indra'@'localhost'
--   SELECT User FROM mysql.user;
--   REVOKE ALL ON db1.* from 'indra'@'localhost';
--   -- 
--   -- 
--   -- grant dba to john with admin option;
--     -- 
--     -- 

--     ALTER TABLE depart AUTO_INCREMENT = 10;

-- rollback;

-- select eid, salary*12 as anual_salary from employee;
-- select user, CURDATE() from mysql.user

-- 13)SELECT * FROM `depart`

-- savepoint here

-- alter table employee rename to emp_info;

-- update emp_info set salary=salary+((salary*10)/100);

--   rollback
--   select eid,fname,lname,length(fname) as length from emp_info where
-- length(fname)=length(lname);

-- select e.eid,e.fname,e.lname,d.hod,d.dname from emp_info e,depart d where
-- e.eid=d.hod and fname like lower(fname) and lname like upper(lname)

-- select eid,FORMAT(salary,'$99,999') as salary from emp_info

