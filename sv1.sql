-- phpMyAdmin SQL Dump
-- version 3.4.10.1deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 05, 2013 at 12:21 PM
-- Server version: 5.5.28
-- PHP Version: 5.3.10-1ubuntu3.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `sv`
--

-- --------------------------------------------------------

--
-- Table structure for table `acl_pages`
--

CREATE TABLE IF NOT EXISTS `acl_pages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `acl_users`
--

CREATE TABLE IF NOT EXISTS `acl_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `acl_user_id` int(11) DEFAULT NULL,
  `page_id` int(60) DEFAULT NULL,
  `allowed` tinyint(4) DEFAULT '0',
  `permissions` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `rate_change`
--

CREATE TABLE IF NOT EXISTS `rate_change` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `plot_id` int(11) NOT NULL,
  `previouse_sqAreaCost` float NOT NULL,
  `change_SqAreaCost` float NOT NULL,
  `date` datetime NOT NULL,
  `staff_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_on` datetime NOT NULL,
  `is_system_admin` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `password`, `created_on`, `is_system_admin`) VALUES
(1, 'root', 'root', 'root', '0000-00-00 00:00:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `xagent`
--

CREATE TABLE IF NOT EXISTS `xagent` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `mo_number` varchar(255) NOT NULL,
  `address` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `xagent`
--

INSERT INTO `xagent` (`id`, `name`, `mo_number`, `address`) VALUES
(1, 'Agent1', 'jhvc', ';lkghf');

-- --------------------------------------------------------

--
-- Table structure for table `xagent_commission`
--

CREATE TABLE IF NOT EXISTS `xagent_commission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `agent_id` int(11) NOT NULL,
  `amount_deposite_id` int(11) NOT NULL,
  `commission` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `xamount_deposited`
--

CREATE TABLE IF NOT EXISTS `xamount_deposited` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sales_id` int(11) NOT NULL,
  `Amount` int(11) NOT NULL,
  `paid_date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `xcheque_details`
--

CREATE TABLE IF NOT EXISTS `xcheque_details` (
  `id` int(11) NOT NULL,
  `For_Master_Emi` tinyint(4) NOT NULL DEFAULT '0',
  `sales_id` int(11) NOT NULL,
  `Cheque_No` varchar(255) NOT NULL,
  `Amount` int(11) NOT NULL,
  `Cleared_On` int(11) NOT NULL,
  `Bounced_On` int(11) NOT NULL,
  `Bank` varchar(255) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `xcustomer`
--

CREATE TABLE IF NOT EXISTS `xcustomer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `Address` varchar(255) NOT NULL,
  `Occupation` varchar(255) NOT NULL,
  `Company_Name` varchar(255) NOT NULL,
  `Company_Address` varchar(255) NOT NULL,
  `PAN_No` varchar(255) NOT NULL,
  `Contact_No` varchar(255) NOT NULL,
  `Email_Id` varchar(255) NOT NULL,
  `CoApplicant_Name` varchar(255) NOT NULL,
  `CoApplicant_Occupation` varchar(255) NOT NULL,
  `CoApplicant_Address` text NOT NULL,
  `CoApplicant_CompanyName` varchar(255) NOT NULL,
  `CoApplicant_Designation` varchar(255) NOT NULL,
  `CoApplicantCompanyAddress` text NOT NULL,
  `CoApplicant_PAN_No` varchar(255) NOT NULL,
  `CoApplicant_Contact_No` varchar(255) NOT NULL,
  `CoApplicant_Email_Id` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `xcustomer`
--

INSERT INTO `xcustomer` (`id`, `name`, `username`, `password`, `Address`, `Occupation`, `Company_Name`, `Company_Address`, `PAN_No`, `Contact_No`, `Email_Id`, `CoApplicant_Name`, `CoApplicant_Occupation`, `CoApplicant_Address`, `CoApplicant_CompanyName`, `CoApplicant_Designation`, `CoApplicantCompanyAddress`, `CoApplicant_PAN_No`, `CoApplicant_Contact_No`, `CoApplicant_Email_Id`) VALUES
(1, 'root', 'root', '123', 'Ahmdabaad', 'Ocupation', 'Company', 'ahd', '5556565', 'Ahmdabaad', 'emai', 'coname', 'coaddress', 'add', 'cocompny', 'codes', 'coappcomadd', 'copanno', 'coappcontactno', 'coappemailid'),
(8, 'k', 'k', 'k', 'k', 'k', 'k', 'k', 'k', '', 'k', 'k', 'k', 'k', '', 'k', '', 'k', 'k', 'k'),
(9, 'm', 'm', 'm', 'm', 'm', 'm', 'm', 'm', '', 'm', 'm', 'm', 'm', '', 'm', '', 'm', 'm', 'm');

-- --------------------------------------------------------

--
-- Table structure for table `xdistributors`
--

CREATE TABLE IF NOT EXISTS `xdistributors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `sponsor_id` int(11) NOT NULL,
  `introducer_id` int(11) NOT NULL,
  `legA_id` int(11) NOT NULL,
  `legB_id` int(11) NOT NULL,
  `legC_id` int(11) NOT NULL,
  `legD_id` int(11) NOT NULL,
  `Introduction_Income` int(11) NOT NULL DEFAULT '0',
  `A_Commission` int(11) NOT NULL,
  `B_Commission` int(11) NOT NULL,
  `C_Commission` int(11) NOT NULL,
  `D_Commission` int(11) NOT NULL,
  `Path` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `xdistributors`
--

INSERT INTO `xdistributors` (`id`, `customer_id`, `sponsor_id`, `introducer_id`, `legA_id`, `legB_id`, `legC_id`, `legD_id`, `Introduction_Income`, `A_Commission`, `B_Commission`, `C_Commission`, `D_Commission`, `Path`) VALUES
(1, 1, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, '0\r\n'),
(3, 9, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0\r\nA');

-- --------------------------------------------------------

--
-- Table structure for table `xemis`
--

CREATE TABLE IF NOT EXISTS `xemis` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sales_id` int(11) NOT NULL,
  `due_date` datetime NOT NULL,
  `paid_date` datetime NOT NULL,
  `EMIAmount` float NOT NULL,
  `AmountPaid` float NOT NULL,
  `is_master_emi` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=78 ;

--
-- Dumping data for table `xemis`
--

INSERT INTO `xemis` (`id`, `sales_id`, `due_date`, `paid_date`, `EMIAmount`, `AmountPaid`, `is_master_emi`) VALUES
(34, 5, '2013-06-05 00:00:00', '0000-00-00 00:00:00', 6000, 0, 0),
(35, 5, '2013-07-05 00:00:00', '0000-00-00 00:00:00', 6000, 0, 0),
(36, 5, '2013-08-05 00:00:00', '0000-00-00 00:00:00', 6000, 0, 0),
(37, 5, '2013-09-05 00:00:00', '0000-00-00 00:00:00', 6000, 0, 0),
(38, 5, '2013-10-05 00:00:00', '0000-00-00 00:00:00', 6000, 0, 0),
(39, 5, '2013-11-05 00:00:00', '0000-00-00 00:00:00', 6000, 0, 0),
(40, 5, '2013-11-05 00:00:00', '0000-00-00 00:00:00', 18000, 0, 1),
(41, 5, '2013-12-05 00:00:00', '0000-00-00 00:00:00', 6000, 0, 0),
(42, 5, '2014-01-05 00:00:00', '0000-00-00 00:00:00', 6000, 0, 0),
(43, 5, '2014-02-05 00:00:00', '0000-00-00 00:00:00', 6000, 0, 0),
(44, 5, '2014-03-05 00:00:00', '0000-00-00 00:00:00', 6000, 0, 0),
(45, 6, '2013-06-05 00:00:00', '0000-00-00 00:00:00', 6000, 0, 0),
(46, 6, '2013-07-05 00:00:00', '0000-00-00 00:00:00', 6000, 0, 0),
(47, 6, '2013-08-05 00:00:00', '0000-00-00 00:00:00', 6000, 0, 0),
(48, 6, '2013-09-05 00:00:00', '0000-00-00 00:00:00', 6000, 0, 0),
(49, 6, '2013-10-05 00:00:00', '0000-00-00 00:00:00', 6000, 0, 0),
(50, 6, '2013-11-05 00:00:00', '0000-00-00 00:00:00', 6000, 0, 0),
(51, 6, '2013-11-05 00:00:00', '0000-00-00 00:00:00', 18000, 0, 1),
(52, 6, '2013-12-05 00:00:00', '0000-00-00 00:00:00', 6000, 0, 0),
(53, 6, '2014-01-05 00:00:00', '0000-00-00 00:00:00', 6000, 0, 0),
(54, 6, '2014-02-05 00:00:00', '0000-00-00 00:00:00', 6000, 0, 0),
(55, 6, '2014-03-05 00:00:00', '0000-00-00 00:00:00', 6000, 0, 0),
(56, 7, '2013-06-05 00:00:00', '0000-00-00 00:00:00', 6000, 0, 0),
(57, 7, '2013-07-05 00:00:00', '0000-00-00 00:00:00', 6000, 0, 0),
(58, 7, '2013-08-05 00:00:00', '0000-00-00 00:00:00', 6000, 0, 0),
(59, 7, '2013-09-05 00:00:00', '0000-00-00 00:00:00', 6000, 0, 0),
(60, 7, '2013-10-05 00:00:00', '0000-00-00 00:00:00', 6000, 0, 0),
(61, 7, '2013-11-05 00:00:00', '0000-00-00 00:00:00', 6000, 0, 0),
(62, 7, '2013-11-05 00:00:00', '0000-00-00 00:00:00', 18000, 0, 1),
(63, 7, '2013-12-05 00:00:00', '0000-00-00 00:00:00', 6000, 0, 0),
(64, 7, '2014-01-05 00:00:00', '0000-00-00 00:00:00', 6000, 0, 0),
(65, 7, '2014-02-05 00:00:00', '0000-00-00 00:00:00', 6000, 0, 0),
(66, 7, '2014-03-05 00:00:00', '0000-00-00 00:00:00', 6000, 0, 0),
(67, 8, '2013-06-05 00:00:00', '0000-00-00 00:00:00', 6000, 0, 0),
(68, 8, '2013-07-05 00:00:00', '0000-00-00 00:00:00', 6000, 0, 0),
(69, 8, '2013-08-05 00:00:00', '0000-00-00 00:00:00', 6000, 0, 0),
(70, 8, '2013-09-05 00:00:00', '0000-00-00 00:00:00', 6000, 0, 0),
(71, 8, '2013-10-05 00:00:00', '0000-00-00 00:00:00', 6000, 0, 0),
(72, 8, '2013-11-05 00:00:00', '0000-00-00 00:00:00', 6000, 0, 0),
(73, 8, '2013-11-05 00:00:00', '0000-00-00 00:00:00', 18000, 0, 1),
(74, 8, '2013-12-05 00:00:00', '0000-00-00 00:00:00', 6000, 0, 0),
(75, 8, '2014-01-05 00:00:00', '0000-00-00 00:00:00', 6000, 0, 0),
(76, 8, '2014-02-05 00:00:00', '0000-00-00 00:00:00', 6000, 0, 0),
(77, 8, '2014-03-05 00:00:00', '0000-00-00 00:00:00', 6000, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `xplannings`
--

CREATE TABLE IF NOT EXISTS `xplannings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  `Phase` varchar(100) NOT NULL,
  `is_private` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `xplannings`
--

INSERT INTO `xplannings` (`id`, `name`, `Phase`, `is_private`) VALUES
(1, 'Planning 1', '-', 0);

-- --------------------------------------------------------

--
-- Table structure for table `xplots`
--

CREATE TABLE IF NOT EXISTS `xplots` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `planning_id` int(11) NOT NULL,
  `width` float NOT NULL,
  `height` float NOT NULL,
  `Area` float NOT NULL,
  `status` varchar(20) NOT NULL,
  `block_number` varchar(255) NOT NULL,
  `SqAreaCost` float NOT NULL,
  `is_corner` tinyint(4) NOT NULL,
  `Unit` varchar(255) NOT NULL,
  `date` datetime NOT NULL,
  `salespolicy_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `xplots`
--

INSERT INTO `xplots` (`id`, `name`, `planning_id`, `width`, `height`, `Area`, `status`, `block_number`, `SqAreaCost`, `is_corner`, `Unit`, `date`, `salespolicy_id`) VALUES
(1, 'plot1', 1, 45, 45, 1000, 'DirectSold', 'A', 300, 0, 'sqft', '2013-04-05 00:00:00', 1),
(2, 'plot2', 1, 45, 45, 300, 'EMISold', '45', 100, 0, 'sqft', '2013-04-05 00:00:00', 1),
(3, 'Planning 1 PLot A', 1, 45, 45, 1000, 'Available', 'lk', 45, 0, 'yard', '2013-04-05 00:00:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `xsales`
--

CREATE TABLE IF NOT EXISTS `xsales` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `plot_id` int(11) NOT NULL,
  `agent_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `RatePerSqUnit` int(11) NOT NULL,
  `salespolicy_name` varchar(255) NOT NULL,
  `down_payment` int(11) NOT NULL,
  `total_cost` int(11) NOT NULL,
  `emi_pattern` text NOT NULL,
  `emi_mode` varchar(10) NOT NULL,
  `master_emi` int(11) NOT NULL,
  `master_emi_mode` varchar(255) NOT NULL,
  `direct_commission_to_agent` varchar(255) NOT NULL,
  `emi_commission_to_agent` varchar(255) NOT NULL,
  `down_payment_submitted` int(11) NOT NULL DEFAULT '0',
  `sales_date` datetime NOT NULL,
  `no_of_master_emi` int(11) NOT NULL,
  `is_current` tinyint(4) NOT NULL DEFAULT '1',
  `Name_Of_Nominee` varchar(255) NOT NULL,
  `Relation_With_Applicant` varchar(255) NOT NULL,
  `Nominee_PAN_NO` varchar(255) NOT NULL,
  `Nominee_Age` int(11) NOT NULL,
  `Nominee_Address` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `xsales`
--

INSERT INTO `xsales` (`id`, `plot_id`, `agent_id`, `customer_id`, `RatePerSqUnit`, `salespolicy_name`, `down_payment`, `total_cost`, `emi_pattern`, `emi_mode`, `master_emi`, `master_emi_mode`, `direct_commission_to_agent`, `emi_commission_to_agent`, `down_payment_submitted`, `sales_date`, `no_of_master_emi`, `is_current`, `Name_Of_Nominee`, `Relation_With_Applicant`, `Nominee_PAN_NO`, `Nominee_Age`, `Nominee_Address`) VALUES
(7, 1, 1, 8, 300, 'sales', 50000, 110000, '6000x10;', 'Monthly', 18000, 'Half-Yearly', '1000', '20%', 0, '2013-04-05 00:00:00', 2, 1, 'k', 'k', 'k', 0, 'k'),
(8, 2, 0, 9, 100, 'sales', 50000, 110000, '6000x10;', 'Monthly', 18000, 'Half-Yearly', '1000', '20%', 0, '2013-04-05 00:00:00', 2, 1, 'm', 'm', 'm', 0, 'm');

-- --------------------------------------------------------

--
-- Table structure for table `xsales_policies`
--

CREATE TABLE IF NOT EXISTS `xsales_policies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `down_payment` int(11) NOT NULL,
  `emi_pattern` text NOT NULL,
  `master_emi` int(11) NOT NULL,
  `no_of_master_emi` int(11) NOT NULL,
  `emi_mode` varchar(10) NOT NULL,
  `master_emi_mode` varchar(10) NOT NULL,
  `direct_commission_to_agent` varchar(255) NOT NULL,
  `emi_commission_to_agent` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `xsales_policies`
--

INSERT INTO `xsales_policies` (`id`, `name`, `down_payment`, `emi_pattern`, `master_emi`, `no_of_master_emi`, `emi_mode`, `master_emi_mode`, `direct_commission_to_agent`, `emi_commission_to_agent`) VALUES
(1, 'sales', 50000, '6000x10;', 18000, 2, 'Monthly', 'Half-Yearl', '1000', '20%');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
