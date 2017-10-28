-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
-- program 1 
-- Host: localhost
-- Generation Time: Oct 28, 2017 at 12:17 PM
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
-- Table structure for table `account`
--

CREATE TABLE `account` (
  `AC_NO` int(11) NOT NULL,
  `CID` int(11) NOT NULL,
  `BID` int(11) NOT NULL,
  `AMOUNT` int(11) NOT NULL,
  `ADATE` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`AC_NO`, `CID`, `BID`, `AMOUNT`, `ADATE`) VALUES
(112, 101, 144, 50000, '17/05/1999'),
(213, 102, 111, 100000, '18-05-2000'),
(314, 201, 121, 50000, '17-08-2001'),
(777, 222, 165, 500000, '02-02-2010'),
(615, 301, 145, 90000, '09-12-2010'),
(767, 302, 145, 10000000, '03-04-2011'),
(934, 401, 122, 4000, '09-08-2012'),
(943, 402, 144, 9000, '11-11-2012'),
(888, 401, 111, 9000, '02-02-2010'),
(912, 222, 144, 900000, '06-02-2010'),
(122, 102, 112, 8000, '09-09-2000'),
(989, 202, 112, 98989, '09-08-2011'),
(333, 222, 111, 5000, '09/08/2012'),
(444, 222, 165, 20000, '08/04/2009'),
(555, 223, 112, 20000, '02/02/2012');

-- --------------------------------------------------------

--
-- Table structure for table `borrower`
--

CREATE TABLE `borrower` (
  `LOAN_NO` int(11) NOT NULL,
  `CID` int(11) DEFAULT NULL,
  `BID` int(11) DEFAULT NULL,
  `AMOUNT` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `borrower`
--

INSERT INTO `borrower` (`LOAN_NO`, `CID`, `BID`, `AMOUNT`) VALUES
(1515, 201, 111, 200000),
(1111, 202, 121, 100000),
(1121, 102, 112, 200000),
(1113, 402, 111, 500000),
(1414, 302, 145, 50000);

-- --------------------------------------------------------

--
-- Table structure for table `branch`
--

CREATE TABLE `branch` (
  `BID` int(11) NOT NULL,
  `BNAME` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `CITY` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `branch`
--

INSERT INTO `branch` (`BID`, `BNAME`, `CITY`) VALUES
(165, 'Pattam', 'Trivandrum'),
(111, 'Manamchira', 'Calicut'),
(121, 'Eroad', 'Kochi'),
(112, 'Mg_road', 'Pta'),
(145, 'Kaloor', 'Kochi'),
(122, 'Koilandi', 'Calicut'),
(132, 'Kattappana', 'Edukki'),
(144, 'Kottayam', 'Kottayam');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `CID` int(11) NOT NULL,
  `CNAME` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `CITY` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`CID`, `CNAME`, `CITY`) VALUES
(101, 'Ajil', 'Kannur'),
(102, 'Amal', 'Kochi'),
(201, 'Mohan', 'Calicut'),
(202, 'Anish', 'Pta'),
(222, 'Manoj', 'Trivandrum'),
(223, 'Arun', 'Pta'),
(301, 'Nirmal', 'Kochi'),
(302, 'Swathy', 'Kochi'),
(401, 'Anu', 'Palakkad'),
(402, 'Amal', 'Kollam');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
ADD PRIMARY KEY (`CID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;


/*!

select cname from customer where city='kochi';
select bname from branch where city='kochi';
select c.cname from customer c,account a,branch b where c.cid=a.cid and
b.bid=a.bid and b.bname='mg_road';

select c.cname from customer c,borrower b where c.cid=b.cid and c.city='calicut';
select cname from customer where cid in(select cid from account where bid
  in(select bid from account group by bid having avg(amount)>32000));
select b.bname,sum(a.amount) from account a,branch b where a.bid=b.bid group by b.bname having sum(a.amount)>5000;
select b.bname,sum(a.amount) from account a,branch b where a.bid=b.bid and
b.city='trivandrum' group by b.bname having sum(a.amount)>32000;
select c.cname from customer c,account a,branch b where a.cid=c.cid and
a.bid=b.bid and a.amount=(select max(a1.amount) from account a1);
select bname from branch where bid in(select bid from account group by bid
  having count(bid)>=all(select count(cid) from account group by bid));
select cname from customer where cid in(select cid from account group by cid
  having count(cid)>=all(select count(cid) from account group by cid));
select city from branch group by city having count(bid)>=all(select count(bid)
  from branch group by city);

select b.bname,count(a.cid) from account a,branch b where a.bid=b.bid group by
b.bname having count(a.cid)>2;

select cname from customer where cid in(select cid from account where cid not
  in(select cid from borrower));

select cname from customer where city='kochi' and cid in(select cid from account
  where cid in(select cid from borrower));

select sum(amount) as loan_amount from borrower;
select cname from customer where cid in(select cid from account where
  amount=(select max(amount) from account where bid in(select bid from account where
    cid in(select cid from customer where cname='arun'))));

    */



