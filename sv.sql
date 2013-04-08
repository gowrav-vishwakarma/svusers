-- phpMyAdmin SQL Dump
-- version 3.4.10.1deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 02, 2013 at 03:06 PM
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

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
-- Table structure for table `xcustomer`
--

CREATE TABLE IF NOT EXISTS `xcustomer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `Address` varchar(255) NOT NULL,
  `City` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `xcustomer`
--

INSERT INTO `xcustomer` (`id`, `name`, `username`, `password`, `Address`, `City`) VALUES
(1, 'root', 'root', '123', 'Ahmdabaad', 'Ahmdabaad');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `xdistributors`
--

INSERT INTO `xdistributors` (`id`, `customer_id`, `sponsor_id`, `introducer_id`, `legA_id`, `legB_id`, `legC_id`, `legD_id`, `Introduction_Income`, `A_Commission`, `B_Commission`, `C_Commission`, `D_Commission`, `Path`) VALUES
(1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0');

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
