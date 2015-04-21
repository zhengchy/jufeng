CREATE TABLE `if_brand` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `brandName` varchar(255) DEFAULT NULL,
  `desc` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8



CREATE TABLE `jf_product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `productName` varchar(255) DEFAULT NULL,
  `brandId` int(11) DEFAULT NULL,
  `productDesc` varchar(255) DEFAULT NULL,
  `updateDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `createDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8