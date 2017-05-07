/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 * Author:  vicky
 * Created: 6 May, 2017
 */

-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 06, 2017 at 05:51 PM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbbsdemo`
--
CREATE DATABASE IF NOT EXISTS `dbbsdemo` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `dbbsdemo`;

-- --------------------------------------------------------

--
-- Table structure for table `tblbill`
--

DROP TABLE IF EXISTS `tblbill`;
CREATE TABLE `tblbill` (
  `fldbillid` int(11) NOT NULL,
  `fldbillno` int(11) NOT NULL,
  `fldcustomerid` int(11) NOT NULL,
  `fldtotaldiscount` int(11) NOT NULL,
  `fldtotalcost` int(11) NOT NULL,
  `fldbillstatusid` smallint(6) NOT NULL,
  `fldcomments` varchar(200) NOT NULL,
  `fldcreateddate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `fldmodifieddate` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblbillitemlist`
--

DROP TABLE IF EXISTS `tblbillitemlist`;
CREATE TABLE `tblbillitemlist` (
  `fldbillitemid` int(11) NOT NULL,
  `fldbillid` int(11) NOT NULL,
  `fldindividualitemid` int(11) NOT NULL,
  `fldsellingprice` float NOT NULL,
  `fldsoldprice` float NOT NULL,
  `flddiscount` float NOT NULL,
  `fldcreateddate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `fldmodifieddate` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblbillstatus`
--

DROP TABLE IF EXISTS `tblbillstatus`;
CREATE TABLE `tblbillstatus` (
  `fldbillstatusid` int(11) NOT NULL,
  `fldbillstatusname` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblbrand`
--

DROP TABLE IF EXISTS `tblbrand`;
CREATE TABLE `tblbrand` (
  `fldbrandid` int(11) NOT NULL,
  `fldbrandname` varchar(20) NOT NULL,
  `fldcreateddate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `fldmodifieddate` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblcategory`
--

DROP TABLE IF EXISTS `tblcategory`;
CREATE TABLE `tblcategory` (
  `fldcategoryid` int(11) NOT NULL,
  `fldcategoryname` varchar(30) NOT NULL,
  `fldgenreid` int(11) NOT NULL,
  `fldcreateddate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `fldmodifieddate` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblcolour`
--

DROP TABLE IF EXISTS `tblcolour`;
CREATE TABLE `tblcolour` (
  `fldcolourid` int(11) NOT NULL,
  `fldcolourname` varchar(30) NOT NULL,
  `fldcolourcode` varchar(10) NOT NULL,
  `fldcreateddate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `fldmodifieddate` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblcustomer`
--

DROP TABLE IF EXISTS `tblcustomer`;
CREATE TABLE `tblcustomer` (
  `fldcustomerid` int(11) NOT NULL,
  `fldcustomername` varchar(20) NOT NULL,
  `fldphoneno` varchar(80) NOT NULL,
  `fldaddress` varchar(200) DEFAULT NULL,
  `fldemail` varchar(300) DEFAULT NULL,
  `fldaddeddate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `fldmodifieddate` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblgenre`
--

DROP TABLE IF EXISTS `tblgenre`;
CREATE TABLE `tblgenre` (
  `fldgenreid` int(11) NOT NULL,
  `fldgenrename` varchar(30) NOT NULL,
  `fldcreateddate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `fldmodifieddate` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblhash`
--

DROP TABLE IF EXISTS `tblhash`;
CREATE TABLE `tblhash` (
  `fldhashid` int(11) NOT NULL,
  `fldkey` varchar(20) NOT NULL,
  `fldvalue` varchar(200) NOT NULL,
  `fldcreateddate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `fldmodifieddate` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblindividualitem`
--

DROP TABLE IF EXISTS `tblindividualitem`;
CREATE TABLE `tblindividualitem` (
  `flditemid` int(11) NOT NULL,
  `flditemlistid` int(11) NOT NULL,
  `fldbarcode` int(11) NOT NULL,
  `flditemstatusid` int(11) NOT NULL,
  `fldsoldprice` float NOT NULL,
  `fldcreateddate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `fldmodifieddate` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblitemstatus`
--

DROP TABLE IF EXISTS `tblitemstatus`;
CREATE TABLE `tblitemstatus` (
  `flditemstatusid` int(11) NOT NULL,
  `flditemstatusname` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblproduct`
--

DROP TABLE IF EXISTS `tblproduct`;
CREATE TABLE `tblproduct` (
  `fldproductid` int(11) NOT NULL,
  `fldproductname` varchar(50) NOT NULL,
  `fldbrandid` int(11) NOT NULL,
  `fldstyleid` int(11) NOT NULL,
  `fldcolourid` int(11) NOT NULL,
  `fldsizeid` int(11) NOT NULL,
  `fldcreateddate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `fldmodifiieddate` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblseller`
--

DROP TABLE IF EXISTS `tblseller`;
CREATE TABLE `tblseller` (
  `fldsellerid` int(11) NOT NULL,
  `fldsellername` varchar(20) NOT NULL,
  `fldphoneno` varchar(80) NOT NULL,
  `fldaddress` varchar(200) DEFAULT NULL,
  `fldemail` varchar(300) DEFAULT NULL,
  `fldaddeddate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `fldmodifieddate` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblsize`
--

DROP TABLE IF EXISTS `tblsize`;
CREATE TABLE `tblsize` (
  `fldsizeid` int(11) NOT NULL,
  `fldsizename` varchar(10) NOT NULL,
  `fldcreateddate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `fldmodifieddate` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblstock`
--

DROP TABLE IF EXISTS `tblstock`;
CREATE TABLE `tblstock` (
  `fldstockid` int(11) NOT NULL,
  `fldstockno` int(11) NOT NULL,
  `fldsellerid` int(11) NOT NULL,
  `fldimageavailable` tinyint(1) NOT NULL,
  `fldimage` blob,
  `fldtotalcost` int(11) NOT NULL,
  `fldstockstatusid` smallint(6) NOT NULL,
  `fldcomments` varchar(200) NOT NULL,
  `fldcreateddate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `fldmodifieddate` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblstockitemlist`
--

DROP TABLE IF EXISTS `tblstockitemlist`;
CREATE TABLE `tblstockitemlist` (
  `fldstockitemid` int(11) NOT NULL,
  `fldstockid` int(11) NOT NULL,
  `fldquantity` int(11) NOT NULL,
  `fldproductid` int(11) NOT NULL,
  `fldsellingprice` float NOT NULL,
  `fldcostprice` float NOT NULL,
  `fldminimumdiscount` float NOT NULL,
  `fldmaximumdiscount` float NOT NULL,
  `fldcreateddate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `fldmodifieddate` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblstockstatus`
--

DROP TABLE IF EXISTS `tblstockstatus`;
CREATE TABLE `tblstockstatus` (
  `fldstockstatusid` int(11) NOT NULL,
  `fldstockstatusname` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblstyle`
--

DROP TABLE IF EXISTS `tblstyle`;
CREATE TABLE `tblstyle` (
  `fldstyleid` int(11) NOT NULL,
  `fldstylename` varchar(30) NOT NULL,
  `fldsubcategoryid` int(11) NOT NULL,
  `fldcreateddate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `fldmodifieddate` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblsubcategory`
--

DROP TABLE IF EXISTS `tblsubcategory`;
CREATE TABLE `tblsubcategory` (
  `fldsubcategoryid` int(11) NOT NULL,
  `fldsubcategoryname` varchar(30) NOT NULL,
  `fldcategoryid` int(11) NOT NULL,
  `fldcreateddate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `fldmodifieddate` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tblbill`
--
ALTER TABLE `tblbill`
  ADD PRIMARY KEY (`fldbillid`),
  ADD KEY `fldcustomerid` (`fldcustomerid`),
  ADD KEY `fldbillstatusid` (`fldbillstatusid`);

--
-- Indexes for table `tblbillitemlist`
--
ALTER TABLE `tblbillitemlist`
  ADD PRIMARY KEY (`fldbillitemid`),
  ADD KEY `fldbillid` (`fldbillid`),
  ADD KEY `fldindividualitemid` (`fldindividualitemid`);

--
-- Indexes for table `tblbillstatus`
--
ALTER TABLE `tblbillstatus`
  ADD PRIMARY KEY (`fldbillstatusid`);

--
-- Indexes for table `tblbrand`
--
ALTER TABLE `tblbrand`
  ADD PRIMARY KEY (`fldbrandid`);

--
-- Indexes for table `tblcategory`
--
ALTER TABLE `tblcategory`
  ADD PRIMARY KEY (`fldcategoryid`),
  ADD KEY `fldgenreid` (`fldgenreid`);

--
-- Indexes for table `tblcolour`
--
ALTER TABLE `tblcolour`
  ADD PRIMARY KEY (`fldcolourid`);

--
-- Indexes for table `tblcustomer`
--
ALTER TABLE `tblcustomer`
  ADD PRIMARY KEY (`fldcustomerid`);

--
-- Indexes for table `tblgenre`
--
ALTER TABLE `tblgenre`
  ADD PRIMARY KEY (`fldgenreid`);

--
-- Indexes for table `tblhash`
--
ALTER TABLE `tblhash`
  ADD PRIMARY KEY (`fldhashid`);

--
-- Indexes for table `tblindividualitem`
--
ALTER TABLE `tblindividualitem`
  ADD PRIMARY KEY (`flditemid`),
  ADD KEY `flditemlistid` (`flditemlistid`),
  ADD KEY `flditemstatusid` (`flditemstatusid`);

--
-- Indexes for table `tblitemstatus`
--
ALTER TABLE `tblitemstatus`
  ADD PRIMARY KEY (`flditemstatusid`);

--
-- Indexes for table `tblproduct`
--
ALTER TABLE `tblproduct`
  ADD PRIMARY KEY (`fldproductid`),
  ADD KEY `fldbrandid` (`fldbrandid`),
  ADD KEY `fldstyleid` (`fldstyleid`),
  ADD KEY `fldcolourid` (`fldcolourid`),
  ADD KEY `fldsizeid` (`fldsizeid`);

--
-- Indexes for table `tblseller`
--
ALTER TABLE `tblseller`
  ADD PRIMARY KEY (`fldsellerid`);

--
-- Indexes for table `tblsize`
--
ALTER TABLE `tblsize`
  ADD PRIMARY KEY (`fldsizeid`);

--
-- Indexes for table `tblstock`
--
ALTER TABLE `tblstock`
  ADD PRIMARY KEY (`fldstockid`),
  ADD KEY `fldsellerid` (`fldsellerid`),
  ADD KEY `fldstockstatusid` (`fldstockstatusid`);

--
-- Indexes for table `tblstockitemlist`
--
ALTER TABLE `tblstockitemlist`
  ADD PRIMARY KEY (`fldstockitemid`),
  ADD UNIQUE KEY `fldstockid` (`fldstockid`),
  ADD KEY `fldproductid` (`fldproductid`);

--
-- Indexes for table `tblstockstatus`
--
ALTER TABLE `tblstockstatus`
  ADD PRIMARY KEY (`fldstockstatusid`);

--
-- Indexes for table `tblstyle`
--
ALTER TABLE `tblstyle`
  ADD PRIMARY KEY (`fldstyleid`);

--
-- Indexes for table `tblsubcategory`
--
ALTER TABLE `tblsubcategory`
  ADD PRIMARY KEY (`fldsubcategoryid`),
  ADD KEY `fldcategoryid` (`fldcategoryid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tblbill`
--
ALTER TABLE `tblbill`
  MODIFY `fldbillid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tblbillitemlist`
--
ALTER TABLE `tblbillitemlist`
  MODIFY `fldbillitemid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tblbillstatus`
--
ALTER TABLE `tblbillstatus`
  MODIFY `fldbillstatusid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tblbrand`
--
ALTER TABLE `tblbrand`
  MODIFY `fldbrandid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tblcategory`
--
ALTER TABLE `tblcategory`
  MODIFY `fldcategoryid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tblcolour`
--
ALTER TABLE `tblcolour`
  MODIFY `fldcolourid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tblcustomer`
--
ALTER TABLE `tblcustomer`
  MODIFY `fldcustomerid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tblgenre`
--
ALTER TABLE `tblgenre`
  MODIFY `fldgenreid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tblhash`
--
ALTER TABLE `tblhash`
  MODIFY `fldhashid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tblindividualitem`
--
ALTER TABLE `tblindividualitem`
  MODIFY `flditemid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tblitemstatus`
--
ALTER TABLE `tblitemstatus`
  MODIFY `flditemstatusid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tblproduct`
--
ALTER TABLE `tblproduct`
  MODIFY `fldproductid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tblseller`
--
ALTER TABLE `tblseller`
  MODIFY `fldsellerid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tblsize`
--
ALTER TABLE `tblsize`
  MODIFY `fldsizeid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tblstock`
--
ALTER TABLE `tblstock`
  MODIFY `fldstockid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tblstockitemlist`
--
ALTER TABLE `tblstockitemlist`
  MODIFY `fldstockitemid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tblstockstatus`
--
ALTER TABLE `tblstockstatus`
  MODIFY `fldstockstatusid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tblstyle`
--
ALTER TABLE `tblstyle`
  MODIFY `fldstyleid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tblsubcategory`
--
ALTER TABLE `tblsubcategory`
  MODIFY `fldsubcategoryid` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
