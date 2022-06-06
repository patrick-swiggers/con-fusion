CREATE DATABASE  IF NOT EXISTS `dish_directory`;
USE `dish_directory`;

DROP TABLE IF EXISTS `dishes`;
CREATE TABLE `dishes` (
  `id` bigint NOT NULL,
  `category` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ;

DROP TABLE IF EXISTS `dish_generator`;
CREATE TABLE `dish_generator` (
  `next_val` bigint DEFAULT NULL
) ;

DROP TABLE IF EXISTS `comments`;
CREATE TABLE `comments` (
  `id` bigint NOT NULL,
  `author` varchar(255) DEFAULT NULL,
  `comment` longtext,
  `date` varchar(255) DEFAULT NULL,
  `rating` varchar(255) DEFAULT NULL,
  `dish_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKclxsok424igpn9go9y5w5c88m` (`dish_id`),
  CONSTRAINT `FKclxsok424igpn9go9y5w5c88m` FOREIGN KEY (`dish_id`) REFERENCES `dishes` (`id`) ON DELETE CASCADE
) ;

DROP TABLE IF EXISTS `comment_generator`;
CREATE TABLE `comment_generator` (
  `next_val` bigint DEFAULT NULL
) ;


INSERT INTO `dishes` VALUES
	(1,'mains','A unique combination of Indian Uthappam (pancake) and Italian pizza, topped with Cerignola olives, ripe vine cherry tomatoes, Vidalia onion, Guntur chillies and Buffalo Paneer.','uthappizza.png','Hot','Uthappizza','4.99'),
	(2,'appetizer','Deep fried Zucchini coated with mildly spiced Chickpea flour batter accompanied with a sweet-tangy tamarind sauce','zucchipakoda.png','','Zucchipakoda','1.99'),
	(3,'appetizer','A quintessential ConFusion experience, is it a vada or is it a donut?','vadonut.png','New','Vadonut','1.99'),
	(4,'dessert','A delectable, semi-sweet New York Style Cheese Cake, with Graham cracker crust and spiced with Indian cardamoms','ElaiCheeseCake.png','','ElaiCheeseCake','2.99');



INSERT INTO `comments` VALUES
    (1,'John Lemon','Imagine all the eatables, living in conFusion!','2012-10-16T17:57:28.556094Z',5,1),
    (2,'Paul McVites','Sends anyone to heaven, I wish I could get my mother-in-law to eat it!','2014-09-05T17:57:28.556094Z',4,1),
    (3,'Michael Jaikishan','Eat it, just eat it!','2015-02-13T17:57:28.556094Z',3,1),
    (4,'Ringo Starry','Ultimate, Reaching for the stars!','2013-12-02T17:57:28.556094Z',4,1),
    (5,'25 Cent','Its your birthday, were gonna party!','2011-12-02T17:57:28.556094Z',2,1);
