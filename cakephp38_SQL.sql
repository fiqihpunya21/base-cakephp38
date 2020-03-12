/*
Navicat MySQL Data Transfer

Source Server         : Localhost
Source Server Version : 100125
Source Host           : localhost:3306
Source Database       : datatables

Target Server Type    : MYSQL
Target Server Version : 100125
File Encoding         : 65001

Date: 2020-03-12 14:05:13
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for acc_codes
-- ----------------------------
DROP TABLE IF EXISTS `acc_codes`;
CREATE TABLE `acc_codes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `acc_num` varchar(20) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `lft` int(5) DEFAULT NULL,
  `rght` int(5) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=99 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of acc_codes
-- ----------------------------
INSERT INTO `acc_codes` VALUES ('1', '100', 'Kas & Setara Kas', 'Kas/Bank', null, '1', '2', '2017-02-01 14:08:11', '2017-02-01 14:08:11');
INSERT INTO `acc_codes` VALUES ('2', '110', 'Kas', 'Kas/Bank', null, '3', '6', '2017-02-01 14:08:54', '2017-02-01 14:08:54');
INSERT INTO `acc_codes` VALUES ('3', '110.1', 'Kas Kantin', 'Kas/Bank', '2', '4', '5', '2017-02-01 14:09:27', '2017-02-01 14:09:27');
INSERT INTO `acc_codes` VALUES ('4', '111', ' Bank', 'Kas/Bank', null, '7', '14', '2017-02-01 14:12:59', '2017-02-01 14:12:59');
INSERT INTO `acc_codes` VALUES ('5', '111.1', 'Niaga Kantin', 'Kas/Bank', '4', '8', '9', '2017-02-01 14:13:37', '2017-02-01 14:13:37');
INSERT INTO `acc_codes` VALUES ('6', '111.2', 'Niaga Simpan Pinjam', 'Kas/Bank', '4', '10', '11', '2017-02-01 14:14:09', '2017-02-01 14:14:09');
INSERT INTO `acc_codes` VALUES ('7', '111.3', 'Niaga Foto Copy', 'Kas/Bank', '4', '12', '13', '2017-02-01 14:23:19', '2017-02-01 14:23:19');
INSERT INTO `acc_codes` VALUES ('8', '112', 'Pemindah bukuan', 'Kas/Bank', null, '15', '16', '2017-02-02 13:16:17', '2017-02-02 13:16:17');
INSERT INTO `acc_codes` VALUES ('9', '12', 'Piutang', 'Akun Piutang', null, '17', '30', '2017-02-02 13:16:37', '2017-02-02 13:16:37');
INSERT INTO `acc_codes` VALUES ('10', '120', 'Piutang Usaha', 'Akun Piutang', '9', '18', '19', '2017-02-02 13:17:13', '2017-02-02 13:17:13');
INSERT INTO `acc_codes` VALUES ('11', '121', 'Pinjaman Anggota', 'Akun Piutang', '9', '20', '21', '2017-02-02 13:17:36', '2017-02-02 13:17:36');
INSERT INTO `acc_codes` VALUES ('12', '122', 'Piutang Karyawan', 'Akun Piutang', '9', '22', '23', '2017-02-02 13:17:55', '2017-02-02 13:17:55');
INSERT INTO `acc_codes` VALUES ('13', '127', 'Piutang Jasa Usaha', 'Akun Piutang', '9', '24', '25', '2017-02-02 13:18:13', '2017-02-02 13:18:13');
INSERT INTO `acc_codes` VALUES ('14', '128', 'Kas Bon Karyawan', 'Akun Piutang', '9', '26', '27', '2017-02-02 13:18:29', '2017-02-02 13:18:29');
INSERT INTO `acc_codes` VALUES ('15', '4071', 'Piutang lain', 'Akun Piutang', '9', '28', '29', '2017-02-02 13:18:47', '2017-02-02 13:18:47');
INSERT INTO `acc_codes` VALUES ('16', '1200', 'Persediaan Barang Dagang', 'Persediaan', null, '31', '32', '2017-02-02 13:19:07', '2017-02-02 13:19:07');
INSERT INTO `acc_codes` VALUES ('17', '123', 'Uang muka pembelian', 'Akun Piutang', null, '33', '34', '2017-02-02 13:19:22', '2017-02-02 13:19:22');
INSERT INTO `acc_codes` VALUES ('18', '12300', 'Account Receivable Rupiah', 'Akun Piutang', null, '35', '36', '2017-02-02 13:19:42', '2017-02-02 13:19:42');
INSERT INTO `acc_codes` VALUES ('19', '13', 'Aktiva Tetap', 'Aktiva Tetap', null, '37', '46', '2017-02-02 13:20:00', '2017-02-02 13:20:00');
INSERT INTO `acc_codes` VALUES ('20', '13.01', 'Mesin Fotocopy', 'Aktiva Tetap', '19', '38', '39', '2017-02-02 13:20:26', '2017-02-02 13:20:26');
INSERT INTO `acc_codes` VALUES ('21', '13.02', 'Peralatan', 'Aktiva Tetap', '19', '40', '41', '2017-02-02 13:20:43', '2017-02-02 13:20:43');
INSERT INTO `acc_codes` VALUES ('22', '13.03', 'Perlengkapan Kantin', 'Aktiva Tetap', '19', '42', '43', '2017-02-02 13:20:59', '2017-02-02 13:20:59');
INSERT INTO `acc_codes` VALUES ('23', '13.04', 'Inventaris Kantor', 'Aktiva Tetap', '19', '44', '45', '2017-02-02 13:21:20', '2017-02-02 13:21:20');
INSERT INTO `acc_codes` VALUES ('24', '13.09', 'Akumulasi Depresiasi Fixed Asset', 'Akumulasi Penyusutan', null, '47', '48', '2017-02-02 13:21:36', '2017-02-02 13:21:36');
INSERT INTO `acc_codes` VALUES ('25', '1600', 'PPn Masukan', 'Aktiva Lancar lainnya', null, '49', '50', '2017-02-02 13:21:56', '2017-02-02 13:21:56');
INSERT INTO `acc_codes` VALUES ('26', '19', 'Internal transfer', 'Aktiva Lancar lainnya', null, '51', '52', '2017-02-02 13:22:20', '2017-02-02 13:22:20');
INSERT INTO `acc_codes` VALUES ('27', '20', 'Hutang', 'Akun Hutang', null, '53', '84', '2017-02-02 13:22:39', '2017-02-02 13:22:39');
INSERT INTO `acc_codes` VALUES ('28', '2140', 'Hutang Usaha', 'Akun Hutang', '27', '54', '55', '2017-02-02 13:22:58', '2017-02-02 13:22:58');
INSERT INTO `acc_codes` VALUES ('29', '2141', 'Simpanan Tabungan', 'Akun Hutang', '27', '56', '57', '2017-02-02 13:23:18', '2017-02-02 13:23:18');
INSERT INTO `acc_codes` VALUES ('30', '2143', 'Simpanan Sukarela', 'Akun Hutang', '27', '58', '59', '2017-02-02 13:23:39', '2017-02-02 13:23:39');
INSERT INTO `acc_codes` VALUES ('31', '2144', 'Biaya masih harus dibayar', 'Akun Hutang', '27', '60', '61', '2017-02-02 13:23:57', '2017-02-02 13:23:57');
INSERT INTO `acc_codes` VALUES ('32', '2145', 'Cadangan Anggota', 'Akun Hutang', '27', '62', '63', '2017-02-02 13:24:17', '2017-02-02 13:24:17');
INSERT INTO `acc_codes` VALUES ('33', '2146', 'Cadangan Pengurus', 'Akun Hutang', '27', '64', '65', '2017-02-02 13:24:39', '2017-02-02 13:24:39');
INSERT INTO `acc_codes` VALUES ('34', '2147', 'Cadangan Pegawai', 'Akun Hutang', '27', '66', '67', '2017-02-02 13:24:58', '2017-02-02 13:24:58');
INSERT INTO `acc_codes` VALUES ('35', '2149', 'Uang Muka Penjualan', 'Akun Hutang', '27', '68', '69', '2017-02-02 13:25:16', '2017-02-02 13:25:16');
INSERT INTO `acc_codes` VALUES ('36', '21', 'Hutang Jangka Panjang', 'Hutang Jangka Panjang', '27', '70', '71', '2017-02-02 13:25:44', '2017-02-02 13:25:44');
INSERT INTO `acc_codes` VALUES ('37', '2100', 'PPn Keluaran', 'Hutang lancar lainnya', '27', '72', '73', '2017-02-02 13:26:01', '2017-02-02 13:26:01');
INSERT INTO `acc_codes` VALUES ('38', '210101', 'Account Payable Rupiah', 'Akun Hutang', '27', '74', '75', '2017-02-02 13:26:23', '2017-02-02 13:26:23');
INSERT INTO `acc_codes` VALUES ('39', '211', 'Soft Loan Pihak ke III (simpan Pinjam)', 'Hutang lancar lainnya', '27', '76', '77', '2017-02-02 13:26:44', '2017-02-02 13:26:44');
INSERT INTO `acc_codes` VALUES ('40', '212', 'Soft Loan Pihak ke III (Aneka Usaha)', 'Hutang lancar lainnya', '27', '78', '79', '2017-02-02 13:27:02', '2017-02-02 13:27:02');
INSERT INTO `acc_codes` VALUES ('41', '22', 'Hutang belum ditagih', 'Persediaan', '27', '80', '81', '2017-02-02 13:27:23', '2017-02-02 13:27:23');
INSERT INTO `acc_codes` VALUES ('42', '2200', 'Hutang Pembelian Belum Ditagih', 'Hutang lancar lainnya', '27', '82', '83', '2017-02-02 13:27:44', '2017-02-02 13:27:44');
INSERT INTO `acc_codes` VALUES ('43', '40', 'Pendapatan', 'Pendapatan', null, '85', '108', '2017-02-02 14:55:08', '2017-02-02 14:55:08');
INSERT INTO `acc_codes` VALUES ('44', '4010', 'Jasa Simpan Pinjam', 'Pendapatan', '43', '86', '87', '2017-02-02 14:55:52', '2017-02-02 14:55:52');
INSERT INTO `acc_codes` VALUES ('45', '4020', 'Pendapatan kantin', 'Pendapatan', '43', '88', '89', '2017-02-02 14:56:13', '2017-02-02 14:56:13');
INSERT INTO `acc_codes` VALUES ('46', '4030', 'Pendapatan Foto copy', 'Pendapatan', '43', '90', '91', '2017-02-02 14:56:30', '2017-02-02 14:56:30');
INSERT INTO `acc_codes` VALUES ('47', '4040', 'Pendapatan Catering', 'Pendapatan', '43', '92', '93', '2017-02-02 14:56:47', '2017-02-02 14:56:47');
INSERT INTO `acc_codes` VALUES ('48', '4050', 'Pendapatan Properti', 'Pendapatan', '43', '94', '95', '2017-02-02 14:57:05', '2017-02-02 14:57:05');
INSERT INTO `acc_codes` VALUES ('49', '4060', 'Pendapatan bagi hasil usaha', 'Pendapatan', '43', '96', '97', '2017-02-02 14:57:23', '2017-02-02 14:57:23');
INSERT INTO `acc_codes` VALUES ('50', '4070', 'Pendapatan lain-lain', 'Pendapatan', '43', '98', '99', '2017-02-02 14:57:40', '2017-02-02 14:57:40');
INSERT INTO `acc_codes` VALUES ('51', '4080', 'Pendapatan ATK', 'Pendapatan', '43', '100', '101', '2017-02-02 14:58:02', '2017-02-02 14:58:02');
INSERT INTO `acc_codes` VALUES ('52', '4090', 'Pendapatan Sewa Kendaraan', 'Pendapatan', '43', '102', '103', '2017-02-02 14:58:17', '2017-02-02 14:58:17');
INSERT INTO `acc_codes` VALUES ('53', '4100', 'Retur Penjualan', 'Pendapatan', '43', '104', '105', '2017-02-02 14:58:35', '2017-02-02 14:58:35');
INSERT INTO `acc_codes` VALUES ('54', '4200', 'Potongan Penjualan ', 'Pendapatan', '43', '106', '107', '2017-02-02 14:58:54', '2017-02-02 14:58:54');
INSERT INTO `acc_codes` VALUES ('55', '5000', 'Harga Pokok Penjualan', 'Harga Pokok Penjualan', null, '109', '110', '2017-02-02 14:59:28', '2017-02-02 14:59:28');
INSERT INTO `acc_codes` VALUES ('56', '6000', 'Beban - Beban', 'Beban', null, '111', '112', '2017-02-02 14:59:49', '2017-02-02 14:59:49');
INSERT INTO `acc_codes` VALUES ('57', '6100', 'Biaya Operasional', 'Beban', null, '113', '148', '2017-02-02 15:00:04', '2017-02-02 15:00:04');
INSERT INTO `acc_codes` VALUES ('58', '61300', 'Gaji Pegawai', 'Beban', '57', '114', '115', '2017-02-02 15:00:27', '2017-02-02 15:00:47');
INSERT INTO `acc_codes` VALUES ('59', '61301', 'Gaji Pengurus', 'Beban', '57', '116', '117', '2017-02-02 15:01:12', '2017-02-02 15:01:12');
INSERT INTO `acc_codes` VALUES ('60', '61400', 'Honor Pegawai', 'Beban', '57', '118', '119', '2017-02-02 15:01:37', '2017-02-02 15:01:37');
INSERT INTO `acc_codes` VALUES ('61', '61401', 'Honor Pengurus', 'Beban', '57', '120', '121', '2017-02-02 15:01:52', '2017-02-02 15:01:52');
INSERT INTO `acc_codes` VALUES ('62', '61402', 'Operasional Kantin', 'Beban', '57', '122', '123', '2017-02-02 15:02:29', '2017-02-02 15:02:29');
INSERT INTO `acc_codes` VALUES ('63', '61403', 'Operasional Fotocopy', 'Beban', '57', '124', '125', '2017-02-02 15:02:53', '2017-02-02 15:02:53');
INSERT INTO `acc_codes` VALUES ('64', '61404', 'Operasional Properti', 'Beban', '57', '126', '127', '2017-02-02 15:03:11', '2017-02-02 15:03:11');
INSERT INTO `acc_codes` VALUES ('65', '61405', 'Operasional Catering', 'Beban', '57', '128', '129', '2017-02-02 15:03:31', '2017-02-02 15:03:31');
INSERT INTO `acc_codes` VALUES ('66', '61406', 'Operasional lain-lain (bensin, dll)', 'Beban', '57', '130', '131', '2017-02-02 15:03:49', '2017-02-02 15:03:49');
INSERT INTO `acc_codes` VALUES ('67', '61407', 'Operasional ATK', 'Beban', '57', '132', '133', '2017-02-02 15:04:06', '2017-02-02 15:04:06');
INSERT INTO `acc_codes` VALUES ('68', '61408', 'Operasional Sewa Kendaraan', 'Beban', '57', '134', '135', '2017-02-02 15:04:21', '2017-02-02 15:04:21');
INSERT INTO `acc_codes` VALUES ('69', '61500', 'Peralatan Kantin', 'Beban', '57', '136', '137', '2017-02-02 15:04:37', '2017-02-02 15:04:37');
INSERT INTO `acc_codes` VALUES ('70', '61501', 'Peralatan Foto Copy', 'Beban', '57', '138', '139', '2017-02-02 15:04:55', '2017-02-02 15:04:55');
INSERT INTO `acc_codes` VALUES ('71', '61502', 'Peralatan Lain-lain', 'Beban', '57', '140', '141', '2017-02-02 15:05:14', '2017-02-02 15:05:14');
INSERT INTO `acc_codes` VALUES ('72', '61600', 'Biaya Promosi', 'Beban', '57', '142', '143', '2017-02-02 15:05:30', '2017-02-02 15:05:30');
INSERT INTO `acc_codes` VALUES ('73', '61601', 'Biaya Pajak', 'Beban', '57', '144', '145', '2017-02-02 15:05:48', '2017-02-02 15:05:48');
INSERT INTO `acc_codes` VALUES ('74', '61602', 'Biaya Sewa', 'Beban', '57', '146', '147', '2017-02-02 15:06:04', '2017-02-02 15:06:04');
INSERT INTO `acc_codes` VALUES ('75', '6200', 'Biaya Non Operasional', 'Beban', null, '149', '180', '2017-02-02 15:06:29', '2017-02-02 15:06:29');
INSERT INTO `acc_codes` VALUES ('76', '62451', 'Administrasi Umum', 'Beban', '75', '150', '151', '2017-02-02 15:06:46', '2017-02-02 15:06:46');
INSERT INTO `acc_codes` VALUES ('77', '62452', 'Biaya Benda pos', 'Beban', '75', '152', '153', '2017-02-02 15:07:02', '2017-02-02 15:07:02');
INSERT INTO `acc_codes` VALUES ('78', '62453', 'Biaya Konsumsi', 'Beban', '75', '154', '155', '2017-02-02 15:07:19', '2017-02-02 15:07:19');
INSERT INTO `acc_codes` VALUES ('79', '62454', 'Biaya Rapat', 'Beban', '75', '156', '157', '2017-02-02 15:07:43', '2017-02-02 15:07:43');
INSERT INTO `acc_codes` VALUES ('80', '62455', 'Biaya ATK', 'Beban', '75', '158', '159', '2017-02-02 15:08:01', '2017-02-02 15:08:01');
INSERT INTO `acc_codes` VALUES ('81', '62456', 'Biaya Kesehatan Pegawai', 'Beban', '75', '160', '161', '2017-02-02 15:08:31', '2017-02-02 15:08:31');
INSERT INTO `acc_codes` VALUES ('82', '62457', 'Biaya bagi hasil keuntungan usaha', 'Beban', '75', '162', '163', '2017-02-02 15:08:51', '2017-02-02 15:08:51');
INSERT INTO `acc_codes` VALUES ('83', '62458', 'Biaya Penyusutan & Amortisasi', 'Beban', '75', '164', '165', '2017-02-02 15:09:11', '2017-02-02 15:09:11');
INSERT INTO `acc_codes` VALUES ('84', '62459', 'Biaya Utilities', 'Beban', '75', '166', '167', '2017-02-02 15:09:28', '2017-02-02 15:09:28');
INSERT INTO `acc_codes` VALUES ('85', '62460', 'Biaya Kendaraan', 'Beban', '75', '168', '169', '2017-02-02 15:09:46', '2017-02-02 15:09:46');
INSERT INTO `acc_codes` VALUES ('86', '62461', 'Biaya Transportasi', 'Beban', '75', '170', '171', '2017-02-02 15:10:39', '2017-02-02 15:10:39');
INSERT INTO `acc_codes` VALUES ('87', '62462', 'Biaya Profesional', 'Beban', '75', '172', '173', '2017-02-02 15:11:08', '2017-02-02 15:11:08');
INSERT INTO `acc_codes` VALUES ('88', '62463', 'Biaya SHU', 'Beban', '75', '174', '175', '2017-02-02 15:11:53', '2017-02-02 15:11:53');
INSERT INTO `acc_codes` VALUES ('89', '62481', 'Bunga Pinjaman', 'Beban', '75', '176', '177', '2017-02-02 15:12:24', '2017-02-02 15:12:24');
INSERT INTO `acc_codes` VALUES ('90', '6259', 'Repair & Maintenance Expense', 'Beban', '75', '178', '179', '2017-02-02 15:12:43', '2017-02-02 15:12:43');
INSERT INTO `acc_codes` VALUES ('91', '7100', 'PENDAPATAN DILUAR USAHA', 'Pendapatan lain', null, '181', '188', '2017-02-02 15:13:26', '2017-02-02 15:13:26');
INSERT INTO `acc_codes` VALUES ('92', '7100.01', 'Pendapatan Jasa Giro', 'Pendapatan lain', '91', '182', '183', '2017-02-02 15:13:51', '2017-02-02 15:13:51');
INSERT INTO `acc_codes` VALUES ('93', '7100.03', 'Penjualan Inventory / Perlengkapan', 'Pendapatan lain', '91', '184', '185', '2017-02-02 15:14:07', '2017-02-02 15:14:07');
INSERT INTO `acc_codes` VALUES ('94', '7100.99', 'Pendapatan Lain-Lain', 'Pendapatan lain', '91', '186', '187', '2017-02-02 15:14:25', '2017-02-02 15:14:25');
INSERT INTO `acc_codes` VALUES ('95', '7200', 'BIAYA DILUAR USAHA', 'Beban lain-lain', null, '189', '196', '2017-02-02 15:14:39', '2017-02-02 15:14:39');
INSERT INTO `acc_codes` VALUES ('96', '7200.01', 'Biaya Bunga Pinjaman Lainnya', 'Beban lain-lain', '95', '190', '191', '2017-02-02 15:15:02', '2017-02-02 15:15:02');
INSERT INTO `acc_codes` VALUES ('97', '7200.02', 'Biaya Adm Bank & Buku Cek/Giro', 'Beban lain-lain', '95', '192', '193', '2017-02-02 15:15:32', '2017-02-02 15:15:32');
INSERT INTO `acc_codes` VALUES ('98', '7200.99', 'Beban Lain-Lain', 'Beban Lain-Lain', '95', '194', '195', '2017-02-02 15:15:50', '2017-02-02 15:15:50');

-- ----------------------------
-- Table structure for countries
-- ----------------------------
DROP TABLE IF EXISTS `countries`;
CREATE TABLE `countries` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `code` varchar(10) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=254 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of countries
-- ----------------------------
INSERT INTO `countries` VALUES ('1', 'Afghanistan', 'AF', null, null);
INSERT INTO `countries` VALUES ('2', 'Åland Islands', 'AX', null, null);
INSERT INTO `countries` VALUES ('3', 'Albania', 'AL', null, null);
INSERT INTO `countries` VALUES ('4', 'Algeria', 'DZ', null, null);
INSERT INTO `countries` VALUES ('5', 'American Samoa', 'AS', null, null);
INSERT INTO `countries` VALUES ('6', 'Andorra', 'AD', null, null);
INSERT INTO `countries` VALUES ('7', 'Angola', 'AO', null, null);
INSERT INTO `countries` VALUES ('8', 'Anguilla', 'AI', null, null);
INSERT INTO `countries` VALUES ('9', 'Antarctica', 'AQ', null, null);
INSERT INTO `countries` VALUES ('10', 'Antigua and Barbuda', 'AG', null, null);
INSERT INTO `countries` VALUES ('11', 'Argentina', 'AR', null, null);
INSERT INTO `countries` VALUES ('12', 'Armenia', 'AM', null, null);
INSERT INTO `countries` VALUES ('13', 'Aruba', 'AW', null, null);
INSERT INTO `countries` VALUES ('14', 'Australia', 'AU', null, null);
INSERT INTO `countries` VALUES ('15', 'Austria', 'AT', null, null);
INSERT INTO `countries` VALUES ('16', 'Azerbaijan', 'AZ', null, null);
INSERT INTO `countries` VALUES ('17', 'Bahamas', 'BS', null, null);
INSERT INTO `countries` VALUES ('18', 'Bahrain', 'BH', null, null);
INSERT INTO `countries` VALUES ('19', 'Bangladesh', 'BD', null, null);
INSERT INTO `countries` VALUES ('20', 'Barbados', 'BB', null, null);
INSERT INTO `countries` VALUES ('21', 'Belarus', 'BY', null, null);
INSERT INTO `countries` VALUES ('22', 'Belgium', 'BE', null, null);
INSERT INTO `countries` VALUES ('23', 'Belize', 'BZ', null, null);
INSERT INTO `countries` VALUES ('24', 'Benin', 'BJ', null, null);
INSERT INTO `countries` VALUES ('25', 'Bermuda', 'BM', null, null);
INSERT INTO `countries` VALUES ('26', 'Bhutan', 'BT', null, null);
INSERT INTO `countries` VALUES ('27', 'Bolivia, Plurinational State of', 'BO', null, null);
INSERT INTO `countries` VALUES ('28', 'Bonaire, Sint Eustatius and Saba', 'BQ', null, null);
INSERT INTO `countries` VALUES ('29', 'Bosnia and Herzegovina', 'BA', null, null);
INSERT INTO `countries` VALUES ('30', 'Botswana', 'BW', null, null);
INSERT INTO `countries` VALUES ('31', 'Bouvet Island', 'BV', null, null);
INSERT INTO `countries` VALUES ('32', 'Brazil', 'BR', null, null);
INSERT INTO `countries` VALUES ('33', 'British Indian Ocean Territory', 'IO', null, null);
INSERT INTO `countries` VALUES ('34', 'Brunei Darussalam', 'BN', null, null);
INSERT INTO `countries` VALUES ('35', 'Bulgaria', 'BG', null, null);
INSERT INTO `countries` VALUES ('36', 'Burkina Faso', 'BF', null, null);
INSERT INTO `countries` VALUES ('37', 'Burundi', 'BI', null, null);
INSERT INTO `countries` VALUES ('38', 'Cambodia', 'KH', null, null);
INSERT INTO `countries` VALUES ('39', 'Cameroon', 'CM', null, null);
INSERT INTO `countries` VALUES ('40', 'Canada', 'CA', null, null);
INSERT INTO `countries` VALUES ('41', 'Cape Verde', 'CV', null, null);
INSERT INTO `countries` VALUES ('42', 'Cayman Islands', 'KY', null, null);
INSERT INTO `countries` VALUES ('43', 'Central African Republic', 'CF', null, null);
INSERT INTO `countries` VALUES ('44', 'Chad', 'TD', null, null);
INSERT INTO `countries` VALUES ('45', 'Chile', 'CL', null, null);
INSERT INTO `countries` VALUES ('46', 'China', 'CN', null, null);
INSERT INTO `countries` VALUES ('47', 'Christmas Island', 'CX', null, null);
INSERT INTO `countries` VALUES ('48', 'Cocos (Keeling) Islands', 'CC', null, null);
INSERT INTO `countries` VALUES ('49', 'Colombia', 'CO', null, null);
INSERT INTO `countries` VALUES ('50', 'Comoros', 'KM', null, null);
INSERT INTO `countries` VALUES ('51', 'Congo', 'CG', null, null);
INSERT INTO `countries` VALUES ('52', 'Congo, the Democratic Republic of the', 'CD', null, null);
INSERT INTO `countries` VALUES ('53', 'Cook Islands', 'CK', null, null);
INSERT INTO `countries` VALUES ('54', 'Costa Rica', 'CR', null, null);
INSERT INTO `countries` VALUES ('55', 'Côte d\'Ivoire', 'CI', null, null);
INSERT INTO `countries` VALUES ('56', 'Croatia', 'HR', null, null);
INSERT INTO `countries` VALUES ('57', 'Cuba', 'CU', null, null);
INSERT INTO `countries` VALUES ('58', 'Curaçao', 'CW', null, null);
INSERT INTO `countries` VALUES ('59', 'Cyprus', 'CY', null, null);
INSERT INTO `countries` VALUES ('60', 'Czech Republic', 'CZ', null, null);
INSERT INTO `countries` VALUES ('61', 'Denmark', 'DK', null, null);
INSERT INTO `countries` VALUES ('62', 'Djibouti', 'DJ', null, null);
INSERT INTO `countries` VALUES ('63', 'Dominica', 'DM', null, null);
INSERT INTO `countries` VALUES ('64', 'Dominican Republic', 'DO', null, null);
INSERT INTO `countries` VALUES ('65', 'Ecuador', 'EC', null, null);
INSERT INTO `countries` VALUES ('66', 'Egypt', 'EG', null, null);
INSERT INTO `countries` VALUES ('67', 'El Salvador', 'SV', null, null);
INSERT INTO `countries` VALUES ('68', 'Equatorial Guinea', 'GQ', null, null);
INSERT INTO `countries` VALUES ('69', 'Eritrea', 'ER', null, null);
INSERT INTO `countries` VALUES ('70', 'Estonia', 'EE', null, null);
INSERT INTO `countries` VALUES ('71', 'Ethiopia', 'ET', null, null);
INSERT INTO `countries` VALUES ('72', 'Falkland Islands (Malvinas)', 'FK', null, null);
INSERT INTO `countries` VALUES ('73', 'Faroe Islands', 'FO', null, null);
INSERT INTO `countries` VALUES ('74', 'Fiji', 'FJ', null, null);
INSERT INTO `countries` VALUES ('75', 'Finland', 'FI', null, null);
INSERT INTO `countries` VALUES ('76', 'France', 'FR', null, null);
INSERT INTO `countries` VALUES ('77', 'French Guiana', 'GF', null, null);
INSERT INTO `countries` VALUES ('78', 'French Polynesia', 'PF', null, null);
INSERT INTO `countries` VALUES ('79', 'French Southern Territories', 'TF', null, null);
INSERT INTO `countries` VALUES ('80', 'Gabon', 'GA', null, null);
INSERT INTO `countries` VALUES ('81', 'Gambia', 'GM', null, null);
INSERT INTO `countries` VALUES ('82', 'Georgia', 'GE', null, null);
INSERT INTO `countries` VALUES ('83', 'Germany', 'DE', null, null);
INSERT INTO `countries` VALUES ('84', 'Ghana', 'GH', null, null);
INSERT INTO `countries` VALUES ('85', 'Gibraltar', 'GI', null, null);
INSERT INTO `countries` VALUES ('86', 'Greece', 'GR', null, null);
INSERT INTO `countries` VALUES ('87', 'Greenland', 'GL', null, null);
INSERT INTO `countries` VALUES ('88', 'Grenada', 'GD', null, null);
INSERT INTO `countries` VALUES ('89', 'Guadeloupe', 'GP', null, null);
INSERT INTO `countries` VALUES ('90', 'Guam', 'GU', null, null);
INSERT INTO `countries` VALUES ('91', 'Guatemala', 'GT', null, null);
INSERT INTO `countries` VALUES ('92', 'Guernsey', 'GG', null, null);
INSERT INTO `countries` VALUES ('93', 'Guinea', 'GN', null, null);
INSERT INTO `countries` VALUES ('94', 'Guinea-Bissau', 'GW', null, null);
INSERT INTO `countries` VALUES ('95', 'Guyana', 'GY', null, null);
INSERT INTO `countries` VALUES ('96', 'Haiti', 'HT', null, null);
INSERT INTO `countries` VALUES ('97', 'Heard Island and McDonald Islands', 'HM', null, null);
INSERT INTO `countries` VALUES ('98', 'Holy See (Vatican City State)', 'VA', null, null);
INSERT INTO `countries` VALUES ('99', 'Honduras', 'HN', null, null);
INSERT INTO `countries` VALUES ('100', 'Hong Kong', 'HK', null, null);
INSERT INTO `countries` VALUES ('101', 'Hungary', 'HU', null, null);
INSERT INTO `countries` VALUES ('102', 'Iceland', 'IS', null, null);
INSERT INTO `countries` VALUES ('103', 'India', 'IN', null, null);
INSERT INTO `countries` VALUES ('104', 'Indonesia', 'ID', null, null);
INSERT INTO `countries` VALUES ('105', 'Iran, Islamic Republic of', 'IR', null, null);
INSERT INTO `countries` VALUES ('106', 'Iraq', 'IQ', null, null);
INSERT INTO `countries` VALUES ('107', 'Ireland', 'IE', null, null);
INSERT INTO `countries` VALUES ('108', 'Isle of Man', 'IM', null, null);
INSERT INTO `countries` VALUES ('109', 'Israel', 'IL', null, null);
INSERT INTO `countries` VALUES ('110', 'Italy', 'IT', null, null);
INSERT INTO `countries` VALUES ('111', 'Jamaica', 'JM', null, null);
INSERT INTO `countries` VALUES ('112', 'Japan', 'JP', null, null);
INSERT INTO `countries` VALUES ('113', 'Jersey', 'JE', null, null);
INSERT INTO `countries` VALUES ('114', 'Jordan', 'JO', null, null);
INSERT INTO `countries` VALUES ('115', 'Kazakhstan', 'KZ', null, null);
INSERT INTO `countries` VALUES ('116', 'Kenya', 'KE', null, null);
INSERT INTO `countries` VALUES ('117', 'Kiribati', 'KI', null, null);
INSERT INTO `countries` VALUES ('118', 'Korea, Democratic People\'s Republic of', 'KP', null, null);
INSERT INTO `countries` VALUES ('119', 'Korea, Republic of', 'KR', null, null);
INSERT INTO `countries` VALUES ('120', 'Kuwait', 'KW', null, null);
INSERT INTO `countries` VALUES ('121', 'Kyrgyzstan', 'KG', null, null);
INSERT INTO `countries` VALUES ('122', 'Lao People\'s Democratic Republic', 'LA', null, null);
INSERT INTO `countries` VALUES ('123', 'Latvia', 'LV', null, null);
INSERT INTO `countries` VALUES ('124', 'Lebanon', 'LB', null, null);
INSERT INTO `countries` VALUES ('125', 'Lesotho', 'LS', null, null);
INSERT INTO `countries` VALUES ('126', 'Liberia', 'LR', null, null);
INSERT INTO `countries` VALUES ('127', 'Libya', 'LY', null, null);
INSERT INTO `countries` VALUES ('128', 'Liechtenstein', 'LI', null, null);
INSERT INTO `countries` VALUES ('129', 'Lithuania', 'LT', null, null);
INSERT INTO `countries` VALUES ('130', 'Luxembourg', 'LU', null, null);
INSERT INTO `countries` VALUES ('131', 'Macao', 'MO', null, null);
INSERT INTO `countries` VALUES ('132', 'Macedonia, the Former Yugoslav Republic of', 'MK', null, null);
INSERT INTO `countries` VALUES ('133', 'Madagascar', 'MG', null, null);
INSERT INTO `countries` VALUES ('134', 'Malawi', 'MW', null, null);
INSERT INTO `countries` VALUES ('135', 'Malaysia', 'MY', null, null);
INSERT INTO `countries` VALUES ('136', 'Maldives', 'MV', null, null);
INSERT INTO `countries` VALUES ('137', 'Mali', 'ML', null, null);
INSERT INTO `countries` VALUES ('138', 'Malta', 'MT', null, null);
INSERT INTO `countries` VALUES ('139', 'Marshall Islands', 'MH', null, null);
INSERT INTO `countries` VALUES ('140', 'Martinique', 'MQ', null, null);
INSERT INTO `countries` VALUES ('141', 'Mauritania', 'MR', null, null);
INSERT INTO `countries` VALUES ('142', 'Mauritius', 'MU', null, null);
INSERT INTO `countries` VALUES ('143', 'Mayotte', 'YT', null, null);
INSERT INTO `countries` VALUES ('144', 'Mexico', 'MX', null, null);
INSERT INTO `countries` VALUES ('145', 'Micronesia, Federated States of', 'FM', null, null);
INSERT INTO `countries` VALUES ('146', 'Moldova, Republic of', 'MD', null, null);
INSERT INTO `countries` VALUES ('147', 'Monaco', 'MC', null, null);
INSERT INTO `countries` VALUES ('148', 'Mongolia', 'MN', null, null);
INSERT INTO `countries` VALUES ('149', 'Montenegro', 'ME', null, null);
INSERT INTO `countries` VALUES ('150', 'Montserrat', 'MS', null, null);
INSERT INTO `countries` VALUES ('151', 'Morocco', 'MA', null, null);
INSERT INTO `countries` VALUES ('152', 'Mozambique', 'MZ', null, null);
INSERT INTO `countries` VALUES ('153', 'Myanmar', 'MM', null, null);
INSERT INTO `countries` VALUES ('154', 'Namibia', 'NA', null, null);
INSERT INTO `countries` VALUES ('155', 'Nauru', 'NR', null, null);
INSERT INTO `countries` VALUES ('156', 'Nepal', 'NP', null, null);
INSERT INTO `countries` VALUES ('157', 'Netherlands', 'NL', null, null);
INSERT INTO `countries` VALUES ('158', 'New Caledonia', 'NC', null, null);
INSERT INTO `countries` VALUES ('159', 'New Zealand', 'NZ', null, null);
INSERT INTO `countries` VALUES ('160', 'Nicaragua', 'NI', null, null);
INSERT INTO `countries` VALUES ('161', 'Niger', 'NE', null, null);
INSERT INTO `countries` VALUES ('162', 'Nigeria', 'NG', null, null);
INSERT INTO `countries` VALUES ('163', 'Niue', 'NU', null, null);
INSERT INTO `countries` VALUES ('164', 'Norfolk Island', 'NF', null, null);
INSERT INTO `countries` VALUES ('165', 'Northern Mariana Islands', 'MP', null, null);
INSERT INTO `countries` VALUES ('166', 'Norway', 'NO', null, null);
INSERT INTO `countries` VALUES ('167', 'Oman', 'OM', null, null);
INSERT INTO `countries` VALUES ('168', 'Pakistan', 'PK', null, null);
INSERT INTO `countries` VALUES ('169', 'Palau', 'PW', null, null);
INSERT INTO `countries` VALUES ('170', 'Palestine, State of', 'PS', null, null);
INSERT INTO `countries` VALUES ('171', 'Panama', 'PA', null, null);
INSERT INTO `countries` VALUES ('172', 'Papua New Guinea', 'PG', null, null);
INSERT INTO `countries` VALUES ('173', 'Paraguay', 'PY', null, null);
INSERT INTO `countries` VALUES ('174', 'Peru', 'PE', null, null);
INSERT INTO `countries` VALUES ('175', 'Philippines', 'PH', null, null);
INSERT INTO `countries` VALUES ('176', 'Pitcairn', 'PN', null, null);
INSERT INTO `countries` VALUES ('177', 'Poland', 'PL', null, null);
INSERT INTO `countries` VALUES ('178', 'Portugal', 'PT', null, null);
INSERT INTO `countries` VALUES ('179', 'Puerto Rico', 'PR', null, null);
INSERT INTO `countries` VALUES ('180', 'Qatar', 'QA', null, null);
INSERT INTO `countries` VALUES ('181', 'Réunion', 'RE', null, null);
INSERT INTO `countries` VALUES ('182', 'Romania', 'RO', null, null);
INSERT INTO `countries` VALUES ('183', 'Russian Federation', 'RU', null, null);
INSERT INTO `countries` VALUES ('184', 'Rwanda', 'RW', null, null);
INSERT INTO `countries` VALUES ('185', 'Saint Barthélemy', 'BL', null, null);
INSERT INTO `countries` VALUES ('186', 'Saint Helena, Ascension and Tristan da Cunha', 'SH', null, null);
INSERT INTO `countries` VALUES ('187', 'Saint Kitts and Nevis', 'KN', null, null);
INSERT INTO `countries` VALUES ('188', 'Saint Lucia', 'LC', null, null);
INSERT INTO `countries` VALUES ('189', 'Saint Martin (French part)', 'MF', null, null);
INSERT INTO `countries` VALUES ('190', 'Saint Pierre and Miquelon', 'PM', null, null);
INSERT INTO `countries` VALUES ('191', 'Saint Vincent and the Grenadines', 'VC', null, null);
INSERT INTO `countries` VALUES ('192', 'Samoa', 'WS', null, null);
INSERT INTO `countries` VALUES ('193', 'San Marino', 'SM', null, null);
INSERT INTO `countries` VALUES ('194', 'Sao Tome and Principe', 'ST', null, null);
INSERT INTO `countries` VALUES ('195', 'Saudi Arabia', 'SA', null, null);
INSERT INTO `countries` VALUES ('196', 'Senegal', 'SN', null, null);
INSERT INTO `countries` VALUES ('197', 'Serbia', 'RS', null, null);
INSERT INTO `countries` VALUES ('198', 'Seychelles', 'SC', null, null);
INSERT INTO `countries` VALUES ('199', 'Sierra Leone', 'SL', null, null);
INSERT INTO `countries` VALUES ('200', 'Singapore', 'SG', null, null);
INSERT INTO `countries` VALUES ('201', 'Sint Maarten (Dutch part)', 'SX', null, null);
INSERT INTO `countries` VALUES ('202', 'Slovakia', 'SK', null, null);
INSERT INTO `countries` VALUES ('203', 'Slovenia', 'SI', null, null);
INSERT INTO `countries` VALUES ('204', 'Solomon Islands', 'SB', null, null);
INSERT INTO `countries` VALUES ('205', 'Somalia', 'SO', null, null);
INSERT INTO `countries` VALUES ('206', 'South Africa', 'ZA', null, null);
INSERT INTO `countries` VALUES ('207', 'South Georgia and the South Sandwich Islands', 'GS', null, null);
INSERT INTO `countries` VALUES ('208', 'South Sudan', 'SS', null, null);
INSERT INTO `countries` VALUES ('209', 'Spain', 'ES', null, null);
INSERT INTO `countries` VALUES ('210', 'Sri Lanka', 'LK', null, null);
INSERT INTO `countries` VALUES ('211', 'Sudan', 'SD', null, null);
INSERT INTO `countries` VALUES ('212', 'Suriname', 'SR', null, null);
INSERT INTO `countries` VALUES ('213', 'Svalbard and Jan Mayen', 'SJ', null, null);
INSERT INTO `countries` VALUES ('214', 'Swaziland', 'SZ', null, null);
INSERT INTO `countries` VALUES ('215', 'Sweden', 'SE', null, null);
INSERT INTO `countries` VALUES ('216', 'Switzerland', 'CH', null, null);
INSERT INTO `countries` VALUES ('217', 'Syrian Arab Republic', 'SY', null, null);
INSERT INTO `countries` VALUES ('218', 'Taiwan, Province of China', 'TW', null, null);
INSERT INTO `countries` VALUES ('219', 'Tajikistan', 'TJ', null, null);
INSERT INTO `countries` VALUES ('220', 'Tanzania, United Republic of', 'TZ', null, null);
INSERT INTO `countries` VALUES ('221', 'Thailand', 'TH', null, null);
INSERT INTO `countries` VALUES ('222', 'Timor-Leste', 'TL', null, null);
INSERT INTO `countries` VALUES ('223', 'Togo', 'TG', null, null);
INSERT INTO `countries` VALUES ('224', 'Tokelau', 'TK', null, null);
INSERT INTO `countries` VALUES ('225', 'Tonga', 'TO', null, null);
INSERT INTO `countries` VALUES ('226', 'Trinidad and Tobago', 'TT', null, null);
INSERT INTO `countries` VALUES ('227', 'Tunisia', 'TN', null, null);
INSERT INTO `countries` VALUES ('228', 'Turkey', 'TR', null, null);
INSERT INTO `countries` VALUES ('229', 'Turkmenistan', 'TM', null, null);
INSERT INTO `countries` VALUES ('230', 'Turks and Caicos Islands', 'TC', null, null);
INSERT INTO `countries` VALUES ('231', 'Tuvalu', 'TV', null, null);
INSERT INTO `countries` VALUES ('232', 'Uganda', 'UG', null, null);
INSERT INTO `countries` VALUES ('233', 'Ukraine', 'UA', null, null);
INSERT INTO `countries` VALUES ('234', 'United Arab Emirates', 'AE', null, null);
INSERT INTO `countries` VALUES ('235', 'United Kingdom', 'GB', null, null);
INSERT INTO `countries` VALUES ('236', 'United States', 'US', null, null);
INSERT INTO `countries` VALUES ('237', 'United States Minor Outlying Islands', 'UM', null, null);
INSERT INTO `countries` VALUES ('238', 'Uruguay', 'UY', null, null);
INSERT INTO `countries` VALUES ('239', 'Uzbekistan', 'UZ', null, null);
INSERT INTO `countries` VALUES ('240', 'Vanuatu', 'VU', null, null);
INSERT INTO `countries` VALUES ('241', 'Venezuela, Bolivarian Republic of', 'VE', null, null);
INSERT INTO `countries` VALUES ('242', 'Viet Nam', 'VN', null, null);
INSERT INTO `countries` VALUES ('243', 'Virgin Islands, British', 'VG', null, null);
INSERT INTO `countries` VALUES ('244', 'Virgin Islands, U.S.', 'VI', null, null);
INSERT INTO `countries` VALUES ('245', 'Wallis and Futuna', 'WF', null, null);
INSERT INTO `countries` VALUES ('246', 'Western Sahara', 'EH', null, null);
INSERT INTO `countries` VALUES ('247', 'Yemen', 'YE', null, null);
INSERT INTO `countries` VALUES ('248', 'Zambia', 'ZM', null, null);
INSERT INTO `countries` VALUES ('249', 'Zimbabwe', 'ZW', null, null);
INSERT INTO `countries` VALUES ('253', 'Coba Tambah Country', 'CTC', '2017-03-03 03:47:18', '2017-03-03 03:47:18');

-- ----------------------------
-- Table structure for socials
-- ----------------------------
DROP TABLE IF EXISTS `socials`;
CREATE TABLE `socials` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) DEFAULT NULL,
  `created` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `modified` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of socials
-- ----------------------------

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) DEFAULT NULL,
  `first_name` varchar(60) DEFAULT NULL,
  `last_name` varchar(60) DEFAULT NULL,
  `email` varchar(80) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `mail_password` varchar(255) DEFAULT NULL,
  `social_id` varchar(45) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `avatar` varchar(100) DEFAULT NULL,
  `role` enum('user','admin','superadmin') DEFAULT 'user',
  `active` char(1) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', 'epreex', 'epreex', 'tampan', 'epri@sbm-itb.ac.id', '$2y$10$bGsKI7T/hlNjOKdnSz1gu.Dtk2a58nQYxV7XVdN3iLfUIK5PtHJei', '', null, '', 'user.png', 'superadmin', '1', '2017-03-29 06:02:43', '2020-03-10 08:44:31');
INSERT INTO `users` VALUES ('2', 'admin', 'admin', 'admin', 'its@sbm-itb.ac.id', null, null, null, null, 'admin.jpg', 'admin', '1', '2020-03-11 07:35:50', '2020-03-11 07:38:10');
SET FOREIGN_KEY_CHECKS=1;
