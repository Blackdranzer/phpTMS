/*
SQLyog Ultimate v10.00 Beta1
MySQL - 5.5.37 : Database - ibmstms_tms
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ibmstms_tms` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `ibmstms_tms`;

/*Table structure for table `acomp` */

DROP TABLE IF EXISTS `acomp`;

CREATE TABLE `acomp` (
  `acomp_id` int(11) NOT NULL AUTO_INCREMENT,
  `coy_code` int(11) NOT NULL,
  `first_per` date NOT NULL,
  `cur_asslo` char(6) NOT NULL,
  `ly_start` date NOT NULL,
  `cur_lialo` char(6) NOT NULL,
  `fy_start` date NOT NULL,
  `c_and_llo` char(6) NOT NULL,
  `fy_end` date NOT NULL,
  `incomelo` char(6) NOT NULL,
  `expenselo` char(6) NOT NULL,
  `ret_earn` char(6) NOT NULL,
  `curr_earn` char(6) NOT NULL,
  `sink_dep` char(6) NOT NULL,
  `sink_fund` char(6) NOT NULL,
  `bank_acct` char(6) NOT NULL,
  `sink_ar` char(6) NOT NULL,
  `batch_no` float NOT NULL,
  `batch_year` float NOT NULL,
  `cap_lio` char(6) NOT NULL,
  `amalgamate` char(1) NOT NULL,
  `start_pl` char(6) NOT NULL,
  `cost_gsold` char(6) NOT NULL,
  `lastac_bal` char(6) NOT NULL,
  `forex_acct` char(6) NOT NULL,
  PRIMARY KEY (`acomp_id`),
  KEY `coy_code` (`coy_code`),
  CONSTRAINT `acomp_ibfk_1` FOREIGN KEY (`coy_code`) REFERENCES `company` (`coy_code`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

/*Table structure for table `agjtb` */

DROP TABLE IF EXISTS `agjtb`;

CREATE TABLE `agjtb` (
  `agjtb_id` int(11) NOT NULL AUTO_INCREMENT,
  `coy_code` int(11) NOT NULL,
  `build_code` int(11) NOT NULL,
  `tenant_id` int(11) NOT NULL,
  `jv_ref` char(20) NOT NULL,
  `recref` char(10) NOT NULL,
  `amount` float NOT NULL,
  `trnx_date` datetime NOT NULL,
  `acct_no` char(6) NOT NULL,
  `recover` char(1) NOT NULL,
  `own_share` float NOT NULL,
  `descriptin` longtext NOT NULL,
  `entry_no` char(2) NOT NULL,
  `source` char(2) NOT NULL,
  `batch_year` float NOT NULL,
  `batch_no` float NOT NULL,
  `bank` char(4) NOT NULL,
  `cheque_no` char(10) NOT NULL,
  PRIMARY KEY (`agjtb_id`),
  KEY `acct_no` (`acct_no`),
  KEY `build_code` (`build_code`),
  KEY `coy_code` (`coy_code`),
  KEY `jv_ref` (`jv_ref`),
  KEY `trnx_date` (`trnx_date`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

/*Table structure for table `agjtbcn` */

DROP TABLE IF EXISTS `agjtbcn`;

CREATE TABLE `agjtbcn` (
  `agjtbcn_id` int(11) NOT NULL AUTO_INCREMENT,
  `coy_code` int(11) NOT NULL,
  `build_code` int(11) NOT NULL,
  `tenant_id` int(11) NOT NULL,
  `trnx_date` date NOT NULL,
  `description` longtext NOT NULL,
  `recref` char(10) NOT NULL,
  `acct_no` char(6) NOT NULL,
  `amount` float NOT NULL,
  `recover` char(1) NOT NULL,
  `own_share` float NOT NULL,
  `source` char(2) NOT NULL,
  PRIMARY KEY (`agjtbcn_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

/*Table structure for table `aglca` */

DROP TABLE IF EXISTS `aglca`;

CREATE TABLE `aglca` (
  `acct_no` int(6) NOT NULL,
  `descrip` char(25) NOT NULL,
  `acctype` char(1) NOT NULL,
  `alevel` char(1) NOT NULL,
  `scharge` char(1) NOT NULL,
  `bank` char(1) NOT NULL,
  `remarks` longtext NOT NULL,
  PRIMARY KEY (`acct_no`),
  KEY `acct_no` (`acct_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `agldb` */

DROP TABLE IF EXISTS `agldb`;

CREATE TABLE `agldb` (
  `agldb_id` int(11) NOT NULL AUTO_INCREMENT,
  `source` char(2) NOT NULL,
  `grp` int(11) NOT NULL,
  `ref` char(10) NOT NULL,
  `amount` float NOT NULL,
  `date` date NOT NULL,
  `acct_no` char(6) NOT NULL,
  `batch` int(11) NOT NULL,
  `period` float NOT NULL,
  `descrip` char(25) NOT NULL,
  `posted` char(1) NOT NULL,
  `balanced` char(1) NOT NULL,
  PRIMARY KEY (`agldb_id`),
  KEY `agldb` (`acct_no`),
  KEY `ref` (`ref`),
  KEY `source` (`source`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

/*Table structure for table `agldbcn` */

DROP TABLE IF EXISTS `agldbcn`;

CREATE TABLE `agldbcn` (
  `agldbcn_id` int(11) NOT NULL AUTO_INCREMENT,
  `source` char(2) NOT NULL,
  `grp` int(11) NOT NULL,
  `ref` char(10) NOT NULL,
  `amount` float NOT NULL,
  `date` date NOT NULL,
  `acct_no` char(6) NOT NULL,
  `batch` int(11) NOT NULL,
  `period` float NOT NULL,
  PRIMARY KEY (`agldbcn_id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

/*Table structure for table `agltrnx` */

DROP TABLE IF EXISTS `agltrnx`;

CREATE TABLE `agltrnx` (
  `agltrnx_id` int(11) NOT NULL AUTO_INCREMENT,
  `coy_code` int(11) NOT NULL,
  `build_code` int(11) NOT NULL,
  `tenant_id` int(11) NOT NULL,
  `a_id` int(11) NOT NULL,
  `lot_id` int(11) NOT NULL,
  `inv_date` date NOT NULL,
  `man_no` char(10) NOT NULL,
  `inv_type_id` int(11) NOT NULL,
  `recref` char(10) NOT NULL,
  `description` longtext NOT NULL,
  `from_date` date NOT NULL,
  `to_date` date NOT NULL,
  `rate` float NOT NULL,
  `tax_rate` float NOT NULL,
  `area_ft` float NOT NULL,
  `amount` float NOT NULL,
  `tax` float NOT NULL,
  `total` float NOT NULL,
  `type` char(2) NOT NULL,
  `line` int(1) NOT NULL,
  PRIMARY KEY (`agltrnx_id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;

/*Table structure for table `b_type` */

DROP TABLE IF EXISTS `b_type`;

CREATE TABLE `b_type` (
  `b_type` int(11) NOT NULL AUTO_INCREMENT,
  `description` char(40) NOT NULL,
  PRIMARY KEY (`b_type`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

/*Table structure for table `bank` */

DROP TABLE IF EXISTS `bank`;

CREATE TABLE `bank` (
  `bank_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` char(40) NOT NULL,
  PRIMARY KEY (`bank_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Table structure for table `building` */

DROP TABLE IF EXISTS `building`;

CREATE TABLE `building` (
  `build_code` int(11) NOT NULL AUTO_INCREMENT,
  `name` char(40) NOT NULL,
  `b_type` int(11) NOT NULL,
  `no_stry` int(11) NOT NULL,
  `address1` char(40) NOT NULL,
  `address2` char(40) NOT NULL,
  `address3` char(40) NOT NULL,
  `address4` char(40) NOT NULL,
  `gba` float NOT NULL,
  `nla` float NOT NULL,
  `developer` char(40) NOT NULL,
  `client` char(40) NOT NULL,
  `ri_coy` int(11) NOT NULL,
  `ri_acc_mth` char(2) NOT NULL,
  `ri_acc_yr` char(4) NOT NULL,
  `sc_coy` int(11) NOT NULL,
  `sc_acc_mth` char(2) NOT NULL,
  `sc_acc_yr` char(4) NOT NULL,
  `valid` char(1) NOT NULL,
  `remarks` char(100) NOT NULL,
  `inv_notes` char(100) NOT NULL,
  `uti_notes` char(100) NOT NULL,
  `payable` char(60) NOT NULL,
  `inv_note2` char(100) NOT NULL,
  `inv_note3` char(100) NOT NULL,
  `inv_note4` char(100) NOT NULL,
  `inv_note5` char(100) NOT NULL,
  `bank_id` int(11) NOT NULL,
  `inspolno` char(30) NOT NULL,
  PRIMARY KEY (`build_code`),
  KEY `b_type` (`b_type`),
  CONSTRAINT `building_ibfk_1` FOREIGN KEY (`b_type`) REFERENCES `b_type` (`b_type`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

/*Table structure for table `ccl` */

DROP TABLE IF EXISTS `ccl`;

CREATE TABLE `ccl` (
  `ccl_id` int(11) NOT NULL AUTO_INCREMENT,
  `l1_desc` char(40) NOT NULL,
  `l1_days` float NOT NULL,
  `l2_desc` char(40) NOT NULL,
  `l2_days` float NOT NULL,
  `l3_desc` char(40) NOT NULL,
  `l3_days` float NOT NULL,
  `l4_desc` char(40) NOT NULL,
  `l4_days` float NOT NULL,
  `l5_desc` char(40) NOT NULL,
  `l5_days` float NOT NULL,
  `int_amt` float NOT NULL,
  `accum_flag` char(1) NOT NULL,
  `cc_memo1` longtext NOT NULL,
  `cc_memo2` longtext NOT NULL,
  `cc_memo3` longtext NOT NULL,
  `cc_memo4` longtext NOT NULL,
  `cc_memo5` longtext NOT NULL,
  `cc_memo6` longtext NOT NULL,
  PRIMARY KEY (`ccl_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Table structure for table `ccl_his2` */

DROP TABLE IF EXISTS `ccl_his2`;

CREATE TABLE `ccl_his2` (
  `ccl_his2_id` int(11) NOT NULL AUTO_INCREMENT,
  `coy_code` int(11) NOT NULL,
  `build_code` int(11) NOT NULL,
  `tenant_id` int(11) NOT NULL,
  `t_code` char(20) NOT NULL,
  `rdate` date NOT NULL,
  `prev_rdate` date NOT NULL,
  `remind_no` char(1) NOT NULL,
  `l_date` date NOT NULL,
  `l_type` char(2) NOT NULL,
  `ref` char(10) NOT NULL,
  `os_amt` float NOT NULL,
  `description` longtext NOT NULL,
  PRIMARY KEY (`ccl_his2_id`),
  KEY `coy_code` (`coy_code`),
  KEY `build_code` (`build_code`),
  CONSTRAINT `ccl_his2_ibfk_1` FOREIGN KEY (`coy_code`) REFERENCES `company` (`coy_code`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `ccl_his2_ibfk_2` FOREIGN KEY (`build_code`) REFERENCES `building` (`build_code`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

/*Table structure for table `clientno` */

DROP TABLE IF EXISTS `clientno`;

CREATE TABLE `clientno` (
  `acc_code` int(11) NOT NULL AUTO_INCREMENT,
  `build_code` int(11) NOT NULL,
  `acct_no` char(6) NOT NULL,
  `clientno` char(12) NOT NULL,
  `descriptin` char(40) NOT NULL,
  PRIMARY KEY (`acc_code`),
  KEY `build_code` (`build_code`),
  CONSTRAINT `clientno_ibfk_1` FOREIGN KEY (`build_code`) REFERENCES `building` (`build_code`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

/*Table structure for table `company` */

DROP TABLE IF EXISTS `company`;

CREATE TABLE `company` (
  `coy_code` int(11) NOT NULL AUTO_INCREMENT,
  `name` char(40) NOT NULL,
  `address1` char(40) NOT NULL,
  `address2` char(40) NOT NULL,
  `address3` char(40) NOT NULL,
  `address4` char(40) NOT NULL,
  `phone1` char(15) NOT NULL,
  `phone2` char(15) NOT NULL,
  `fax1` char(15) NOT NULL,
  `contact1` char(40) NOT NULL,
  `last_in` float NOT NULL,
  `last_or` float NOT NULL,
  `last_ia` float NOT NULL,
  `last_dn` float NOT NULL,
  `last_cn` float NOT NULL,
  `mth_end` datetime NOT NULL,
  `acc_month` char(2) NOT NULL,
  `acc_year` char(4) NOT NULL,
  `adv_flag` char(1) NOT NULL,
  `date_gen` datetime NOT NULL,
  `cmth_end` datetime NOT NULL,
  `sdir` char(40) NOT NULL,
  `pay_bldg` char(1) NOT NULL,
  PRIMARY KEY (`coy_code`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

/*Table structure for table `dep_type` */

DROP TABLE IF EXISTS `dep_type`;

CREATE TABLE `dep_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dep_type` char(2) NOT NULL,
  `descript` char(15) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `dep_type` (`dep_type`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

/*Table structure for table `floor` */

DROP TABLE IF EXISTS `floor`;

CREATE TABLE `floor` (
  `floor_id` int(11) NOT NULL AUTO_INCREMENT,
  `build_code` int(11) NOT NULL,
  `floor` char(4) NOT NULL,
  `descriptin` char(30) NOT NULL,
  PRIMARY KEY (`floor_id`),
  KEY `build_code` (`build_code`),
  KEY `floor` (`floor`),
  CONSTRAINT `floor_ibfk_1` FOREIGN KEY (`build_code`) REFERENCES `building` (`build_code`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

/*Table structure for table `ia_det` */

DROP TABLE IF EXISTS `ia_det`;

CREATE TABLE `ia_det` (
  `ia_det_id` int(11) NOT NULL AUTO_INCREMENT,
  `coy_code` int(11) NOT NULL,
  `build_code` int(11) NOT NULL,
  `tenant_id` int(11) NOT NULL,
  `l_date` datetime NOT NULL,
  `int_adv` char(10) NOT NULL,
  `invoice` char(10) NOT NULL,
  `inv_type` char(2) NOT NULL,
  `int_rate` float NOT NULL,
  `inv_os_amt` float NOT NULL,
  `from_date` date NOT NULL,
  `to_date` date NOT NULL,
  `amount` float NOT NULL,
  PRIMARY KEY (`ia_det_id`),
  KEY `build_code` (`build_code`),
  KEY `coy_code` (`coy_code`),
  KEY `int_adv` (`int_adv`),
  KEY `invoice` (`invoice`),
  KEY `l_date` (`l_date`),
  KEY `t_code` (`tenant_id`),
  CONSTRAINT `ia_det_ibfk_1` FOREIGN KEY (`coy_code`) REFERENCES `company` (`coy_code`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `ia_det_ibfk_2` FOREIGN KEY (`build_code`) REFERENCES `building` (`build_code`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Table structure for table `int_chrg` */

DROP TABLE IF EXISTS `int_chrg`;

CREATE TABLE `int_chrg` (
  `int_chrg_id` int(11) NOT NULL AUTO_INCREMENT,
  `build_code_f` int(11) NOT NULL,
  `build_code_t` int(11) NOT NULL,
  `tenant_id_f` int(11) NOT NULL,
  `tenant_id_t` int(11) NOT NULL,
  `a_id_f` int(11) NOT NULL,
  `a_id_t` int(11) NOT NULL,
  `chrg_int` date NOT NULL,
  `due_date` date NOT NULL,
  PRIMARY KEY (`int_chrg_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Table structure for table `inv_type` */

DROP TABLE IF EXISTS `inv_type`;

CREATE TABLE `inv_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `inv_type` varchar(50) NOT NULL,
  `descriptinv` varchar(50) NOT NULL,
  `charge_int` varchar(50) NOT NULL,
  `glacct` int(6) NOT NULL,
  `glacct_adv` int(6) NOT NULL,
  `charge_tax` varchar(50) NOT NULL,
  `tax_code` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `inv_type` (`inv_type`),
  KEY `tax_code` (`tax_code`),
  KEY `glacct` (`glacct`),
  KEY `glacct_adv` (`glacct_adv`),
  CONSTRAINT `inv_type_ibfk_1` FOREIGN KEY (`tax_code`) REFERENCES `tax` (`tax_code`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `inv_type_ibfk_2` FOREIGN KEY (`glacct`) REFERENCES `aglca` (`acct_no`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `inv_type_ibfk_3` FOREIGN KEY (`glacct_adv`) REFERENCES `aglca` (`acct_no`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;

/*Table structure for table `ledger` */

DROP TABLE IF EXISTS `ledger`;

CREATE TABLE `ledger` (
  `ledger_id` int(11) NOT NULL AUTO_INCREMENT,
  `coy_code` int(11) NOT NULL,
  `build_code` int(11) NOT NULL,
  `tenant_id` int(11) NOT NULL,
  `l_type` char(2) NOT NULL,
  `temp_or` char(10) NOT NULL,
  `comp_or_no` char(10) NOT NULL,
  `l_date` date NOT NULL,
  `rec_date` date NOT NULL,
  `description` longtext NOT NULL,
  `orig_amt` float NOT NULL,
  `bank_comm` float NOT NULL,
  `os_amt` float NOT NULL,
  `sum_desc` longtext NOT NULL,
  `cheque_no` char(10) NOT NULL,
  `bank` char(50) NOT NULL,
  `due_date` date NOT NULL,
  `acct_no` char(6) NOT NULL,
  `remark` char(100) NOT NULL,
  `dep_flag` char(1) NOT NULL,
  `t_code` char(20) NOT NULL,
  `ref` char(10) NOT NULL,
  `dep_os_amt` float NOT NULL,
  `disp_date` datetime NOT NULL,
  `bank_acct` char(6) NOT NULL,
  `l_int_date` datetime NOT NULL,
  `misc_desc` longtext NOT NULL,
  `tax_amt` float NOT NULL,
  `no` float NOT NULL,
  PRIMARY KEY (`ledger_id`),
  KEY `a_no` (`acct_no`),
  KEY `build_code` (`build_code`),
  KEY `coy_code` (`coy_code`),
  KEY `l_date` (`l_date`),
  KEY `l_type` (`l_type`),
  KEY `ref` (`ref`),
  KEY `t_code` (`t_code`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

/*Table structure for table `lot` */

DROP TABLE IF EXISTS `lot`;

CREATE TABLE `lot` (
  `lot_id` int(11) NOT NULL AUTO_INCREMENT,
  `build_code` int(11) NOT NULL,
  `lot_no` char(15) NOT NULL,
  `No_lots` int(11) NOT NULL,
  `first_no` int(11) NOT NULL,
  `increment` int(11) NOT NULL,
  `t_code` char(20) NOT NULL,
  `tenant_id` int(11) NOT NULL,
  `floor` char(4) NOT NULL,
  `floor_id` int(11) NOT NULL,
  `area_ft` float NOT NULL,
  `share` float NOT NULL,
  `rent_flag` char(1) NOT NULL,
  `vfrom` datetime NOT NULL,
  `vto` datetime NOT NULL,
  `remark` char(40) NOT NULL,
  `picture1` char(20) NOT NULL,
  `picture2` char(20) NOT NULL,
  `pictitle1` char(20) NOT NULL,
  `pictitle2` char(20) NOT NULL,
  `picdesc1` longtext NOT NULL,
  `picdesc2` longtext NOT NULL,
  `avifile` char(20) NOT NULL,
  `avititle` char(20) NOT NULL,
  `avidesc` longtext NOT NULL,
  PRIMARY KEY (`lot_id`),
  KEY `build_code` (`build_code`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

/*Table structure for table `meter` */

DROP TABLE IF EXISTS `meter`;

CREATE TABLE `meter` (
  `id_no` int(11) NOT NULL AUTO_INCREMENT,
  `coy_code` int(11) NOT NULL,
  `build_code` int(11) NOT NULL,
  `mtr_type_id` int(11) NOT NULL,
  `lot_id` int(11) NOT NULL,
  `vfrom` varchar(40) NOT NULL,
  `vto` varchar(40) NOT NULL,
  `no` float NOT NULL,
  `inv_type_id` int(11) NOT NULL,
  `table_code_id` int(11) NOT NULL,
  `ten_own` char(1) NOT NULL,
  PRIMARY KEY (`id_no`),
  KEY `build_code` (`build_code`),
  KEY `coy_code` (`coy_code`),
  KEY `lot_no` (`lot_id`),
  KEY `mtr_type` (`mtr_type_id`),
  CONSTRAINT `meter_ibfk_1` FOREIGN KEY (`coy_code`) REFERENCES `company` (`coy_code`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `meter_ibfk_2` FOREIGN KEY (`build_code`) REFERENCES `building` (`build_code`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Table structure for table `mtr_type` */

DROP TABLE IF EXISTS `mtr_type`;

CREATE TABLE `mtr_type` (
  `mtr_type_id` int(11) NOT NULL AUTO_INCREMENT,
  `mtr_type` char(4) NOT NULL,
  `descriptinv` char(15) NOT NULL,
  PRIMARY KEY (`mtr_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

/*Table structure for table `ofrectmp` */

DROP TABLE IF EXISTS `ofrectmp`;

CREATE TABLE `ofrectmp` (
  `temp_or_id` int(11) NOT NULL AUTO_INCREMENT,
  `coy_code` int(11) NOT NULL,
  `build_code` int(11) NOT NULL,
  `tenant_id` int(11) NOT NULL,
  `temp_or` char(10) NOT NULL,
  `comp_or_no` char(10) NOT NULL,
  `l_date` datetime NOT NULL,
  `rec_date` datetime NOT NULL,
  `description` longtext NOT NULL,
  `orig_amt` float NOT NULL,
  `bank_comm` float NOT NULL,
  `os_amt` float NOT NULL,
  `sum_desc` longtext NOT NULL,
  `cheque_no` char(10) NOT NULL,
  `bank` char(4) NOT NULL,
  `due_date` datetime NOT NULL,
  `acct_no` int(6) NOT NULL,
  `dep_flag` char(1) NOT NULL,
  `remark` char(100) NOT NULL,
  `l_type` char(2) NOT NULL,
  `ref` char(10) NOT NULL,
  `dep_os_amt` float NOT NULL,
  `disp_date` datetime NOT NULL,
  `bank_acct` char(6) NOT NULL,
  `l_int_date` datetime NOT NULL,
  `misc_desc` longtext NOT NULL,
  `tax_amt` float NOT NULL,
  `no` float NOT NULL,
  PRIMARY KEY (`temp_or_id`),
  KEY `coy_code` (`coy_code`),
  KEY `build_code` (`build_code`),
  CONSTRAINT `ofrectmp_ibfk_1` FOREIGN KEY (`coy_code`) REFERENCES `company` (`coy_code`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `ofrectmp_ibfk_2` FOREIGN KEY (`build_code`) REFERENCES `building` (`build_code`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

/*Table structure for table `otvstat` */

DROP TABLE IF EXISTS `otvstat`;

CREATE TABLE `otvstat` (
  `otvstat_id` int(11) NOT NULL AUTO_INCREMENT,
  `otv_code` char(4) NOT NULL,
  `otv_desc` char(40) NOT NULL,
  PRIMARY KEY (`otvstat_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

/*Table structure for table `rate_chng` */

DROP TABLE IF EXISTS `rate_chng`;

CREATE TABLE `rate_chng` (
  `rate_chng_id` int(11) NOT NULL AUTO_INCREMENT,
  `status` char(10) NOT NULL,
  `tenant_id` int(11) NOT NULL,
  `invoice` int(11) NOT NULL,
  `drate` float NOT NULL,
  `dam` float NOT NULL,
  `unit` float NOT NULL,
  `nrate` float NOT NULL,
  `olrate` float NOT NULL,
  `nam` float NOT NULL,
  `olam` float NOT NULL,
  PRIMARY KEY (`rate_chng_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Table structure for table `reading` */

DROP TABLE IF EXISTS `reading`;

CREATE TABLE `reading` (
  `reading_id` int(11) NOT NULL AUTO_INCREMENT,
  `coy_code` int(11) NOT NULL,
  `build_code` int(11) NOT NULL,
  `mtr_type_id` int(11) NOT NULL,
  `lot_id` int(11) NOT NULL,
  `this_date` date NOT NULL,
  `this_read` float NOT NULL,
  `last_date` date NOT NULL,
  `last_read` float NOT NULL,
  `consumed` float NOT NULL,
  `inv_type1` int(11) NOT NULL,
  `amount1` float NOT NULL,
  `invoice1` char(10) NOT NULL,
  `inv_type2` int(11) NOT NULL,
  `amount2` float NOT NULL,
  `invoice2` char(10) NOT NULL,
  `inv_type3` int(11) NOT NULL,
  `amount3` float NOT NULL,
  `invoice3` char(10) NOT NULL,
  PRIMARY KEY (`reading_id`),
  KEY `build_code` (`build_code`),
  KEY `coy_code` (`coy_code`),
  KEY `lot_no` (`lot_id`),
  KEY `mtr_type` (`mtr_type_id`),
  KEY `this_date` (`this_date`),
  CONSTRAINT `reading_ibfk_1` FOREIGN KEY (`coy_code`) REFERENCES `company` (`coy_code`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `reading_ibfk_2` FOREIGN KEY (`build_code`) REFERENCES `building` (`build_code`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Table structure for table `readtmp` */

DROP TABLE IF EXISTS `readtmp`;

CREATE TABLE `readtmp` (
  `readtmp_id` int(11) NOT NULL AUTO_INCREMENT,
  `coy_code` int(11) NOT NULL,
  `build_code` int(11) NOT NULL,
  `lot_id` int(11) NOT NULL,
  `inv_date` date NOT NULL,
  `mtr_type_id` int(11) NOT NULL,
  `this_date` date NOT NULL,
  `this_read` float NOT NULL,
  `last_date` date NOT NULL,
  `last_read` float NOT NULL,
  `consumed` float NOT NULL,
  `rate` float NOT NULL,
  `inv_type1` char(2) NOT NULL,
  `amount1` float NOT NULL,
  `invoice1` int(11) NOT NULL,
  `inv_type2` char(2) NOT NULL,
  `amount2` float NOT NULL,
  `invoice2` char(10) NOT NULL,
  `inv_type3` char(2) NOT NULL,
  `amount3` float NOT NULL,
  `invoice3` char(10) NOT NULL,
  PRIMARY KEY (`readtmp_id`),
  KEY `build_code` (`build_code`),
  KEY `coy_code` (`coy_code`),
  KEY `inv_date` (`inv_date`),
  KEY `lot_no` (`lot_id`),
  KEY `mtr_type` (`mtr_type_id`),
  KEY `this_date` (`this_date`),
  CONSTRAINT `readtmp_ibfk_1` FOREIGN KEY (`coy_code`) REFERENCES `company` (`coy_code`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `readtmp_ibfk_2` FOREIGN KEY (`build_code`) REFERENCES `building` (`build_code`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Table structure for table `ref_det` */

DROP TABLE IF EXISTS `ref_det`;

CREATE TABLE `ref_det` (
  `ref_det_id` int(11) NOT NULL AUTO_INCREMENT,
  `coy_code` int(11) NOT NULL,
  `build_code` int(11) NOT NULL,
  `tenant_id` int(11) NOT NULL,
  `ref_date` date NOT NULL,
  `ledger_id` int(11) NOT NULL,
  `agjtb_id` int(11) NOT NULL,
  `amount` float NOT NULL,
  `acct_no` char(6) NOT NULL,
  `inv_type_id1` int(11) NOT NULL,
  `inv_type_id2` int(11) NOT NULL,
  `inv_type_id3` int(11) NOT NULL,
  `inv_type_id4` int(11) NOT NULL,
  `inv_type_id5` int(11) NOT NULL,
  `description1` longtext NOT NULL,
  `description2` longtext NOT NULL,
  `description3` longtext NOT NULL,
  `description4` longtext NOT NULL,
  `description5` longtext NOT NULL,
  `refundable1` float NOT NULL,
  `refundable2` float NOT NULL,
  `refundable3` float NOT NULL,
  `refundable4` float NOT NULL,
  `refundable5` float NOT NULL,
  `refund1` float NOT NULL,
  `refund2` float NOT NULL,
  `refund3` float NOT NULL,
  `refund4` float NOT NULL,
  `refund5` float NOT NULL,
  `mode` char(3) NOT NULL,
  `refund_date` date NOT NULL,
  `cheque` char(15) NOT NULL,
  `reason` longtext NOT NULL,
  `bank_id` char(20) NOT NULL,
  `t_code` char(20) NOT NULL,
  `no` float NOT NULL,
  PRIMARY KEY (`ref_det_id`),
  KEY `coy_code` (`coy_code`),
  KEY `build_code` (`build_code`),
  CONSTRAINT `ref_det_ibfk_1` FOREIGN KEY (`coy_code`) REFERENCES `company` (`coy_code`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `ref_det_ibfk_2` FOREIGN KEY (`build_code`) REFERENCES `building` (`build_code`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

/*Table structure for table `t_agdet` */

DROP TABLE IF EXISTS `t_agdet`;

CREATE TABLE `t_agdet` (
  `t_agdet_id` int(11) NOT NULL AUTO_INCREMENT,
  `coy_code` int(11) NOT NULL,
  `build_code` int(11) NOT NULL,
  `a_no` char(15) NOT NULL,
  `a_id` int(11) NOT NULL,
  `tenant_id` int(11) NOT NULL,
  `lot_id` int(11) NOT NULL,
  `area_ft` int(11) NOT NULL,
  `lot_no` char(15) NOT NULL,
  `no` float NOT NULL,
  `inv_type` char(2) NOT NULL,
  `descriptinv` char(30) NOT NULL,
  `freq` float NOT NULL,
  `freq_ap` float NOT NULL,
  `rate` float NOT NULL,
  `amount` float NOT NULL,
  `free_fr` datetime NOT NULL,
  `free_to` datetime NOT NULL,
  `remark` char(40) NOT NULL,
  `inv_grp` float NOT NULL,
  `oldamt` float NOT NULL,
  `oldrate` float NOT NULL,
  PRIMARY KEY (`t_agdet_id`),
  KEY `a_no` (`a_no`),
  KEY `build_code` (`build_code`),
  KEY `coy_code` (`coy_code`),
  KEY `inv_type` (`inv_type`),
  KEY `lot_no` (`lot_no`),
  CONSTRAINT `t_agdet_ibfk_1` FOREIGN KEY (`coy_code`) REFERENCES `company` (`coy_code`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `t_agdet_ibfk_2` FOREIGN KEY (`build_code`) REFERENCES `building` (`build_code`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `t_agreem` */

DROP TABLE IF EXISTS `t_agreem`;

CREATE TABLE `t_agreem` (
  `a_id` int(11) NOT NULL AUTO_INCREMENT,
  `coy_code` int(11) NOT NULL,
  `build_code` int(11) NOT NULL,
  `tenant_id` int(11) NOT NULL,
  `t_code` char(20) NOT NULL,
  `a_type` char(1) NOT NULL,
  `a_status` char(1) NOT NULL,
  `descriptin` longtext NOT NULL,
  `a_date` datetime NOT NULL,
  `a_start` datetime NOT NULL,
  `a_expire_a` datetime NOT NULL,
  `a_expiry` datetime NOT NULL,
  `a_cancel` datetime NOT NULL,
  `ri_freq` float NOT NULL,
  `ri_freq_ap` float NOT NULL,
  `sc_freq` float NOT NULL,
  `acc_month` float NOT NULL,
  `sc_freq_ap` float NOT NULL,
  `cre_grace` char(1) NOT NULL,
  `grace` float NOT NULL,
  `int_or` char(1) NOT NULL,
  `no_lots` float NOT NULL,
  `tem_a_no` char(15) NOT NULL,
  `ren_a_no` char(15) NOT NULL,
  `remarks` char(60) DEFAULT NULL,
  PRIMARY KEY (`a_id`),
  KEY `a_start` (`a_start`),
  KEY `build_code` (`build_code`),
  KEY `coy_code` (`coy_code`),
  KEY `t_code` (`t_code`),
  CONSTRAINT `t_agreem_ibfk_1` FOREIGN KEY (`coy_code`) REFERENCES `company` (`coy_code`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `t_agreem_ibfk_2` FOREIGN KEY (`build_code`) REFERENCES `building` (`build_code`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Table structure for table `t_end` */

DROP TABLE IF EXISTS `t_end`;

CREATE TABLE `t_end` (
  `t_end_id` int(11) NOT NULL AUTO_INCREMENT,
  `coy_code` int(11) NOT NULL,
  `build_code` int(11) NOT NULL,
  `end_type` char(1) NOT NULL,
  `oa_no` char(15) NOT NULL,
  `a_cancel` datetime NOT NULL,
  `a_id` int(11) NOT NULL,
  `a_date` datetime NOT NULL,
  `a_start` datetime NOT NULL,
  `a_expire_a` datetime NOT NULL,
  PRIMARY KEY (`t_end_id`),
  KEY `a_no` (`a_id`),
  KEY `build_code` (`build_code`),
  KEY `coy_code` (`coy_code`),
  KEY `oa_no` (`oa_no`),
  CONSTRAINT `t_end_ibfk_1` FOREIGN KEY (`coy_code`) REFERENCES `company` (`coy_code`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `t_end_ibfk_2` FOREIGN KEY (`build_code`) REFERENCES `building` (`build_code`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `t_type` */

DROP TABLE IF EXISTS `t_type`;

CREATE TABLE `t_type` (
  `t_type_id` int(11) NOT NULL AUTO_INCREMENT,
  `t_type` char(4) NOT NULL,
  `ten_own` char(1) NOT NULL,
  `descriptin` char(40) NOT NULL,
  `ccl_rep` char(5) NOT NULL,
  PRIMARY KEY (`t_type_id`),
  KEY `t_type` (`t_type`),
  KEY `ten_own` (`ten_own`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

/*Table structure for table `tax` */

DROP TABLE IF EXISTS `tax`;

CREATE TABLE `tax` (
  `tax_code` int(11) NOT NULL AUTO_INCREMENT,
  `tax_desc` char(25) NOT NULL,
  `tax_type` char(1) NOT NULL,
  `tax_det` float NOT NULL,
  `tax_acct` char(6) NOT NULL,
  PRIMARY KEY (`tax_code`),
  KEY `tax_acct` (`tax_acct`),
  KEY `tax_code` (`tax_code`),
  KEY `tax_type` (`tax_type`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

/*Table structure for table `tenant` */

DROP TABLE IF EXISTS `tenant`;

CREATE TABLE `tenant` (
  `tenant_id` int(11) NOT NULL AUTO_INCREMENT,
  `coy_code` int(11) NOT NULL,
  `build_code` int(11) NOT NULL,
  `t_code` char(10) NOT NULL,
  `t_type` char(4) NOT NULL,
  `name` char(40) NOT NULL,
  `t_type_id` char(40) NOT NULL,
  `address1` char(40) NOT NULL,
  `address2` char(40) NOT NULL,
  `address3` char(40) NOT NULL,
  `address4` char(40) NOT NULL,
  `phone1` char(15) NOT NULL,
  `phone2` char(15) NOT NULL,
  `fax1` char(15) NOT NULL,
  `contact1` char(40) NOT NULL,
  `cont1_posn` char(40) NOT NULL,
  `reference` char(20) NOT NULL,
  `otv_code` char(4) NOT NULL,
  `ar_ctrl` char(6) NOT NULL,
  `oldt_code` char(6) NOT NULL,
  `oldacct_no` char(6) NOT NULL,
  `oldop_bal` float NOT NULL,
  `opbal_asat` date NOT NULL,
  PRIMARY KEY (`tenant_id`),
  KEY `build_code` (`build_code`),
  KEY `coy_code` (`coy_code`),
  KEY `t_code` (`t_code`),
  CONSTRAINT `tenant_ibfk_1` FOREIGN KEY (`coy_code`) REFERENCES `company` (`coy_code`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `tenant_ibfk_2` FOREIGN KEY (`build_code`) REFERENCES `building` (`build_code`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

/*Table structure for table `tmgl_if` */

DROP TABLE IF EXISTS `tmgl_if`;

CREATE TABLE `tmgl_if` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `coy_code` int(11) NOT NULL,
  `build_code` int(11) NOT NULL,
  `ar_ctrl` char(6) NOT NULL,
  `bank` char(6) NOT NULL,
  `deposit` char(6) NOT NULL,
  `unall_or` char(6) NOT NULL,
  `ia_income` char(6) NOT NULL,
  `inc_adj` char(6) NOT NULL,
  `b_comm_inc` char(6) NOT NULL,
  `b_comm_exp` char(6) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `build_code` (`build_code`),
  KEY `coy_code` (`coy_code`),
  CONSTRAINT `tmgl_if_ibfk_1` FOREIGN KEY (`coy_code`) REFERENCES `company` (`coy_code`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `tmgl_if_ibfk_2` FOREIGN KEY (`build_code`) REFERENCES `building` (`build_code`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Table structure for table `utable` */

DROP TABLE IF EXISTS `utable`;

CREATE TABLE `utable` (
  `id_no` int(11) NOT NULL AUTO_INCREMENT,
  `table_code` char(4) NOT NULL,
  `descript` varchar(40) NOT NULL,
  `minimum` float NOT NULL,
  `maximum` float NOT NULL,
  `no` float NOT NULL,
  `threshold` float NOT NULL,
  `rate` float NOT NULL,
  `amount` float NOT NULL,
  PRIMARY KEY (`id_no`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
