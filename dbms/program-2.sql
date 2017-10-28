-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--program 2
-- Host: localhost
-- Generation Time: Oct 28, 2017 at 01:21 PM
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
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `CID` int(11) NOT NULL,
  `CNAME` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `MINCDTS` int(11) DEFAULT NULL,
  `DEPTNO` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`CID`, `CNAME`, `MINCDTS`, `DEPTNO`) VALUES
(401, 'BTech', 60, 301),
(402, 'MTech', 50, 302),
(403, 'MCA', 45, 303);

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `DEPTNO` int(11) NOT NULL,
  `DNAME` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `HOD` int(11) DEFAULT NULL,
  `PHNO` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`DEPTNO`, `DNAME`, `HOD`, `PHNO`) VALUES
(301, 'Mechanical', 2764533, '201'),
(302, 'CSE', 2768990, '202'),
(303, 'MCA', 2674563, '203');

-- --------------------------------------------------------

--
-- Table structure for table `enrolled`
--

CREATE TABLE `enrolled` (
  `SID` int(11) NOT NULL,
  `CID` int(11) NOT NULL,
  `SEM` int(11) NOT NULL,
  `YEAR` int(11) NOT NULL,
  `GRADE` char(2) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `enrolled`
--

INSERT INTO `enrolled` (`SID`, `CID`, `SEM`, `YEAR`, `GRADE`) VALUES
(101, 401, 2, 2012, 'A'),
(102, 403, 4, 2012, 'B'),
(103, 403, 4, 2012, 'A'),
(104, 401, 2, 2012, 'A'),
(105, 403, 4, 2010, 'A'),
(106, 402, 5, 2012, 'A'),
(107, 402, 5, 2012, 'B');

-- --------------------------------------------------------

--
-- Table structure for table `professor`
--

CREATE TABLE `professor` (
  `PID` int(11) NOT NULL,
  `PNAME` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `SEX` char(2) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `SYEAR` int(11) DEFAULT NULL,
  `DEPTNO` int(11) DEFAULT NULL,
  `PHNO` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `professor`
--

INSERT INTO `professor` (`PID`, `PNAME`, `SEX`, `SYEAR`, `DEPTNO`, `PHNO`) VALUES
(201, 'Santhosh', 'M', 1985, 301, '9846367456'),
(202, 'Lalitha', 'F', 1990, 302, '9645372234'),
(203, 'Sunil', 'M', 1990, 303, '0476- 4567878'),
(204, 'Manoj', 'M', 1995, 303, '0476- 4567878'),
(205, 'Devi', 'F', 2000, 302, '98632675232'),
(206, 'Anjana', 'F', 2005, 301, '9567529657'),
(207, 'Sajan', 'M', 1992, 303, '0476- 4567878'),
(208, 'John', 'M', 2010, 303, '0476- 45678788'),
(209, 'Mohanan', 'M', 2005, 302, '98477654322');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `SID` int(11) NOT NULL,
  `SNAME` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `DEGREE` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `YEAR` int(11) DEFAULT NULL,
  `SEX` char(2) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `DEPTNO` int(11) DEFAULT NULL,
  `ADVISOR` int(11) DEFAULT NULL,
  `PHNO` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`SID`, `SNAME`, `DEGREE`, `YEAR`, `SEX`, `DEPTNO`, `ADVISOR`, `PHNO`) VALUES
(101, 'Manoj', 'BTech', 2010, 'M', 301, 206, '964537232'),
(102, 'Sanu', 'MCA', 2012, 'M', 303, 204, '987656764'),
(103, 'Mohan', 'MCA', 2012, 'M', 303, 204, '984556372'),
(104, 'Sonia', 'MCA', 2012, 'F', 303, 204, '983425617'),
(105, 'Akhil', 'BTech', 2010, 'M', 301, 206, '964537889'),
(106, 'Jayan', 'BTech', 2012, 'M', 302, 205, '987667876'),
(107, 'Nikhila', 'BTech', 2012, 'F', 302, 205, '987789737'),
(107, 'Nikhila', 'BTech', 2012, 'F', 302, 205, '96453324'),
(108, 'Sreela', 'BTech', 2012, 'F', 302, 205, '96453324'),
(109, 'Gayathri Mohan', 'MCA', 2012, 'F', 303, 204, '9847756433'),
(111, 'Aromal', 'MTech', 2012, 'M', 301, 204, null);

-- --------------------------------------------------------

--
-- Table structure for table `teach`
--

CREATE TABLE `teach` (
  `PID` int(11) DEFAULT NULL,
  `CID` int(11) DEFAULT NULL,
  `SEM` int(11) DEFAULT NULL,
  `YEAR` int(11) DEFAULT NULL,
  `CLASSROOM` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `teach`
--

INSERT INTO `teach` (`PID`, `CID`, `SEM`, `YEAR`, `CLASSROOM`) VALUES
(204, 401, 2, NULL, 501),
(205, 402, 4, NULL, 502),
(206, 403, 5, NULL, 503),
(204, 402, 4, NULL, 502),
(204, 403, 5, NULL, 503),
(205, 401, 2, NULL, 501);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;



/*




delete from professor where syear=1992;
  update professor set phno='0476-4567878' where deptno=(select deptno from
department where dname='MCA');
  select pname from professor where syear>1990 order by pname;
  select sid from student where phno is null;

  select pname from professor where syear between 1990 and 2000;
select sname,sid from student where sex='F' and (deptno=(select deptno from
department where dname='MCA'));
select pid,pname,phno from professor where syear>2000 and (deptno=(select deptno
from department where dname='MCA'));
select s.sid,s.sname,p.pname,p.phno from student s,professor p,department d where
s.deptno=d.deptno and s.deptno=d.deptno and s.advisor=p.pid and s.deptno=(select deptno
from department where dname='CSE');

select sid,sname from student where advisor in(select pid from professor where
sex='F');

select pid,pname from professor where syear<=all(select min(syear) from professor);

select s.sid,s.sname from student s,professor p where s.advisor=p.pid and s.sex=p.sex;

select pid,pname from professor where pid in(select pid from student where
sex='F'group by advisor);
select c.deptno,d.dname from course c,department d where d.deptno=c.deptno and
c.mincdts<>50;
select c.deptno,d.dname from course c,department d where d.deptno=c.deptno and
c.mincdts=50;

select sid from enrolled where cid in(select cid from course where cname='MCA')
union select sid from enrolled where cid in(select cid from course where cname='BTech');

select sid,sname from student where degree='MTech' and sid not in (select sid from
enrolled);

create view v1(did,total) as (select DEPTNO,count(CID) from course group by DEPTNO);

select v.*, d.DNAME from department d,v1 v where d.DEPTNO=v.DID

select count(sid) from enrolled where sem=2 and year=2012 group by cid having cid
in( select cid from course where mincdts=60);

select sid,sname from student where sname like '%Mohan';

create view professorOnCse(pid,pname,phno) as select PID,PNAME,PHNO from
professor where SYEAR>=2000 and deptno in(select DEPTNO from department where
DNAME='CSE');

select pname from professorOnCse where pname like 'M%n';









*/