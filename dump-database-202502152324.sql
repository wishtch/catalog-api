-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: database
-- ------------------------------------------------------
-- Server version	8.0.41

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `TB_PRODUCT`
--

DROP TABLE IF EXISTS `TB_PRODUCT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `TB_PRODUCT` (
  `PRODUCT_ID` int NOT NULL AUTO_INCREMENT,
  `PRODUCT_TITLE` varchar(100) NOT NULL,
  `PRODUCT_DESCRIPTION` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `PRODUCT_PRICE` int NOT NULL,
  `PRODUCT_CATEGORY` int NOT NULL,
  `CREATION_AT` varchar(50) DEFAULT NULL,
  `UPDATED_AT` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`PRODUCT_ID`),
  UNIQUE KEY `PRODUCT_ID` (`PRODUCT_ID`),
  KEY `PRODUCT_CATEGORY` (`PRODUCT_CATEGORY`),
  CONSTRAINT `TB_PRODUCT_ibfk_1` FOREIGN KEY (`PRODUCT_CATEGORY`) REFERENCES `TB_PRODUCT_CATEGORY` (`CATEGORY_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TB_PRODUCT`
--

and practicality for everyday wear.',86,202,'2025-02-15T19:00:50.000Z','2025-02-15T19:00:50.000Z'),(11,'Classic Red Baseball Cap','Elevate your casual wardrobe with this timeless red baseball cap. Crafted from durable fabric, it features a comfortable fit with an adjustable strap at the back, ensuring one size fits all. Perfect for sunny days or adding a sporty touch to your outfit.',35,202,'2025-02-15T19:00:50.000Z','2025-02-15T19:00:50.000Z'),(12,'Classic Black Baseball Cap','Elevate your casual wear with this timeless black baseball cap. Made with high-quality, breathable fabric, it features an adjustable strap for the perfect fit. Whether you’re out for a jog or just running errands, this cap adds a touch of style to any outfit.',58,202,'2025-02-15T19:00:50.000Z','2025-02-15T19:00:50.000Z'),(13,'Classic Olive Chino Shorts','Elevate your casual wardrobe with these classic olive chino shorts. Designed for comfort and versatility, they feature a smooth waistband, practical pockets, and a tailored fit that makes them perfect for both relaxed weekends and smart-casual occasions. The durable fabric ensures they hold up throughout your daily activities while maintaining a stylish look.',84,202,'2025-02-15T19:00:50.000Z','2025-02-15T19:00:50.000Z'),(14,'Classic High-Waisted Athletic Shorts','Stay comfortable and stylish with our Classic High-Waisted Athletic Shorts. Designed for optimal movement and versatility, these shorts are a must-have for your workout wardrobe. Featuring a figure-flattering high waist, breathable fabric, and a secure fit that ensures they stay in place during any activity, these shorts are perfect for the gym, running, or even just casual wear.',43,202,'2025-02-15T19:00:50.000Z','2025-02-15T19:00:50.000Z'),(15,'Classic White Crew Neck T-Shirt','Elevate your basics with this versatile white crew neck tee. Made from a soft, breathable cotton blend, it offers both comfort and durability. Its sleek, timeless design ensures it pairs well with virtually any outfit. Ideal for layering or wearing on its own, this t-shirt is a must-have staple for every wardrobe.',39,202,'2025-02-15T19:00:50.000Z','2025-02-15T19:00:50.000Z'),(16,'Classic White Tee - Timeless Style and Comfort','Elevate your everyday wardrobe with our Classic White Tee. Crafted from premium soft cotton material, this versatile t-shirt combines comfort with durability, perfect for daily wear. Featuring a relaxed, unisex fit that flatters every body type, it\'s a staple piece for any casual ensemble. Easy to care for and machine washable, this white tee retains its shape and softness wash after wash. Pair it with your favorite jeans or layer it under a jacket for a smart look.',73,202,'2025-02-15T19:00:50.000Z','2025-02-15T19:00:50.000Z'),(17,'Classic Black T-Shirt','Elevate your everyday style with our Classic Black T-Shirt. This staple piece is crafted from soft, breathable cotton for all-day comfort. Its versatile design features a classic crew neck and short sleeves, making it perfect for layering or wearing on its own. Durable and easy to care for, it\'s sure to become a favorite in your wardrobe.',35,202,'2025-02-15T19:00:50.000Z','2025-02-15T19:00:50.000Z'),(18,'Sleek White & Orange Wireless Gaming Controller','Elevate your gaming experience with this state-of-the-art wireless controller, featuring a crisp white base with vibrant orange accents. Designed for precision play, the ergonomic shape and responsive buttons provide maximum comfort and control for endless hours of gameplay. Compatible with multiple gaming platforms, this controller is a must-have for any serious gamer looking to enhance their setup.',69,203,'2025-02-15T19:00:50.000Z','2025-02-15T19:00:50.000Z'),(19,'Sleek Wireless Headphone & Inked Earbud Set','Experience the fusion of style and sound with this sophisticated audio set featuring a pair of sleek, white wireless headphones offering crystal-clear sound quality and over-ear comfort. The set also includes a set of durable earbuds, perfect for an on-the-go lifestyle. Elevate your music enjoyment with this versatile duo, designed to cater to all your listening needs.',44,203,'2025-02-15T19:00:50.000Z','2025-02-15T19:00:50.000Z'),(20,'Sleek Comfort-Fit Over-Ear Headphones','Experience superior sound quality with our Sleek Comfort-Fit Over-Ear Headphones, designed for prolonged use with cushioned ear cups and an adjustable, padded headband. Ideal for immersive listening, whether you\'re at home, in the office, or on the move. Their durable construction and timeless design provide both aesthetically pleasing looks and long-lasting performance.',28,203,'2025-02-15T19:00:50.000Z','2025-02-15T19:00:50.000Z'),(21,'Efficient 2-Slice Toaster','Enhance your morning routine with our sleek 2-slice toaster, featuring adjustable browning controls and a removable crumb tray for easy cleaning. This compact and stylish appliance is perfect for any kitchen, ensuring your toast is always golden brown and delicious.',48,203,'2025-02-15T19:00:50.000Z','2025-02-15T19:00:50.000Z'),(22,'Sleek Wireless Computer Mouse','Experience smooth and precise navigation with this modern wireless mouse, featuring a glossy finish and a comfortable ergonomic design. Its responsive tracking and easy-to-use interface make it the perfect accessory for any desktop or laptop setup. The stylish blue hue adds a splash of color to your workspace, while its compact size ensures it fits neatly in your bag for on-the-go productivity.',10,203,'2025-02-15T19:00:50.000Z','2025-02-15T19:00:50.000Z'),(23,'Sleek Modern Laptop with Ambient Lighting','Experience next-level computing with our ultra-slim laptop, featuring a stunning display illuminated by ambient lighting. This high-performance machine is perfect for both work and play, delivering powerful processing in a sleek, portable design. The vibrant colors add a touch of personality to your tech collection, making it as stylish as it is functional.',43,203,'2025-02-15T19:00:50.000Z','2025-02-15T19:00:50.000Z'),(24,'Sleek Modern Laptop for Professionals','Experience cutting-edge technology and elegant design with our latest laptop model. Perfect for professionals on-the-go, this high-performance laptop boasts a powerful processor, ample storage, and a long-lasting battery life, all encased in a lightweight, slim frame for ultimate portability. Shop now to elevate your work and play.',97,203,'2025-02-15T19:00:50.000Z','2025-02-15T19:00:50.000Z'),(25,'Stylish Red & Silver Over-Ear Headphones','Immerse yourself in superior sound quality with these sleek red and silver over-ear headphones. Designed for comfort and style, the headphones feature cushioned ear cups, an adjustable padded headband, and a detachable red cable for easy storage and portability. Perfect for music lovers and audiophiles who value both appearance and audio fidelity.',39,203,'2025-02-15T19:00:50.000Z','2025-02-15T19:00:50.000Z'),(26,'Sleek Mirror Finish Phone Case','Enhance your smartphone\'s look with this ultra-sleek mirror finish phone case. Designed to offer style with protection, the case features a reflective surface that adds a touch of elegance while keeping your device safe from scratches and impacts. Perfect for those who love a minimalist and modern aesthetic.',27,203,'2025-02-15T19:00:50.000Z','2025-02-15T19:00:50.000Z'),(27,'Sleek Smartwatch with Vibrant Display','Experience modern timekeeping with our high-tech smartwatch, featuring a vivid touch screen display, customizable watch faces, and a comfortable blue silicone strap. This smartwatch keeps you connected with notifications and fitness tracking while showcasing exceptional style and versatility.',16,203,'2025-02-15T19:00:50.000Z','2025-02-15T19:00:50.000Z'),(28,'Sleek Modern Leather Sofa','Enhance the elegance of your living space with our Sleek Modern Leather Sofa. Designed with a minimalist aesthetic, it features clean lines and a luxurious leather finish. The robust metal legs provide stability and support, while the plush cushions ensure comfort. Perfect for contemporary homes or office waiting areas, this sofa is a statement piece that combines style with practicality.',53,204,'2025-02-15T19:00:50.000Z','2025-02-15T19:00:50.000Z'),(29,'Mid-Century Modern Wooden Dining Table','Elevate your dining room with this sleek Mid-Century Modern dining table, featuring an elegant walnut finish and tapered legs for a timeless aesthetic. Its sturdy wood construction and minimalist design make it a versatile piece that fits with a variety of decor styles. Perfect for intimate dinners or as a stylish spot for your morning coffee.',24,204,'2025-02-15T19:00:50.000Z','2025-02-15T19:00:50.000Z'),(30,'Elegant Golden-Base Stone Top Dining Table','Elevate your dining space with this luxurious table, featuring a sturdy golden metal base with an intricate rod design that provides both stability and chic elegance. The smooth stone top in a sleek round shape offers a robust surface for your dining pleasure. Perfect for both everyday meals and special occasions, this table easily complements any modern or glam decor.',66,204,'2025-02-15T19:00:50.000Z','2025-02-15T19:00:50.000Z'),(31,'Modern Elegance Teal Armchair','Elevate your living space with this beautifully crafted armchair, featuring a sleek wooden frame that complements its vibrant teal upholstery. Ideal for adding a pop of color and contemporary style to any room, this chair provides both superb comfort and sophisticated design. Perfect for reading, relaxing, or creating a cozy conversation nook.',25,204,'2025-02-15T19:00:50.000Z','2025-02-15T19:00:50.000Z'),(32,'Elegant Solid Wood Dining Table','Enhance your dining space with this sleek, contemporary dining table, crafted from high-quality solid wood with a warm finish. Its sturdy construction and minimalist design make it a perfect addition for any home looking for a touch of elegance. Accommodates up to six guests comfortably and includes a striking fruit bowl centerpiece. The overhead lighting is not included.',67,204,'2025-02-15T19:00:50.000Z','2025-02-15T19:00:50.000Z'),(33,'Modern Minimalist Workstation Setup','Elevate your home office with our Modern Minimalist Workstation Setup, featuring a sleek wooden desk topped with an elegant computer, stylish adjustable wooden desk lamp, and complimentary accessories for a clean, productive workspace. This setup is perfect for professionals seeking a contemporary look that combines functionality with design.',49,204,'2025-02-15T19:00:50.000Z','2025-02-15T19:00:50.000Z'),(34,'Modern Ergonomic Office Chair','Elevate your office space with this sleek and comfortable Modern Ergonomic Office Chair. Designed to provide optimal support throughout the workday, it features an adjustable height mechanism, smooth-rolling casters for easy mobility, and a cushioned seat for extended comfort. The clean lines and minimalist white design make it a versatile addition to any contemporary workspace.',71,204,'2025-02-15T19:00:50.000Z','2025-02-15T19:00:50.000Z'),(35,'Futuristic Holographic Soccer Cleats','Step onto the field and stand out from the crowd with these eye-catching holographic soccer cleats. Designed for the modern player, these cleats feature a sleek silhouette, lightweight construction for maximum agility, and durable studs for optimal traction. The shimmering holographic finish reflects a rainbow of colors as you move, ensuring that you\'ll be noticed for both your skills and style. Perfect for the fashion-forward athlete who wants to make a statement.',39,205,'2025-02-15T19:00:50.000Z','2025-02-15T19:00:50.000Z'),(36,'Rainbow Glitter High Heels','Step into the spotlight with these eye-catching rainbow glitter high heels. Designed to dazzle, each shoe boasts a kaleidoscope of shimmering colors that catch and reflect light with every step. Perfect for special occasions or a night out, these stunners are sure to turn heads and elevate any ensemble.',39,205,'2025-02-15T19:00:50.000Z','2025-02-15T19:00:50.000Z'),(37,'Chic Summer Denim Espadrille Sandals','Step into summer with style in our denim espadrille sandals. Featuring a braided jute sole for a classic touch and adjustable denim straps for a snug fit, these sandals offer both comfort and a fashionable edge. The easy slip-on design ensures convenience for beach days or casual outings.',33,205,'2025-02-15T19:00:50.000Z','2025-02-15T19:00:50.000Z'),(38,'Vibrant Runners: Bold Orange & Blue Sneakers','Step into style with these eye-catching sneakers featuring a striking combination of orange and blue hues. Designed for both comfort and fashion, these shoes come with flexible soles and cushioned insoles, perfect for active individuals who don\'t compromise on style. The reflective silver accents add a touch of modernity, making them a standout accessory for your workout or casual wear.',27,205,'2025-02-15T19:00:50.000Z','2025-02-15T19:00:50.000Z'),(39,'Vibrant Pink Classic Sneakers','Step into style with our Vibrant Pink Classic Sneakers! These eye-catching shoes feature a bold pink hue with iconic white detailing, offering a sleek, timeless design. Constructed with durable materials and a comfortable fit, they are perfect for those seeking a pop of color in their everyday footwear. Grab a pair today and add some vibrancy to your step!',84,205,'2025-02-15T19:00:50.000Z','2025-02-15T19:00:50.000Z'),(40,'Futuristic Silver and Gold High-Top Sneaker','Step into the future with this eye-catching high-top sneaker, designed for those who dare to stand out. The sneaker features a sleek silver body with striking gold accents, offering a modern twist on classic footwear. Its high-top design provides support and style, making it the perfect addition to any avant-garde fashion collection. Grab a pair today and elevate your shoe game!',68,205,'2025-02-15T19:00:50.000Z','2025-02-15T19:00:50.000Z'),(41,'Futuristic Chic High-Heel Boots','Elevate your style with our cutting-edge high-heel boots that blend bold design with avant-garde aesthetics. These boots feature a unique color-block heel, a sleek silhouette, and a versatile light grey finish that pairs easily with any cutting-edge outfit. Crafted for the fashion-forward individual, these boots are sure to make a statement.',36,205,'2025-02-15T19:00:50.000Z','2025-02-15T19:00:50.000Z'),(42,'Elegant Patent Leather Peep-Toe Pumps with Gold-Tone Heel','Step into sophistication with these chic peep-toe pumps, showcasing a lustrous patent leather finish and an eye-catching gold-tone block heel. The ornate buckle detail adds a touch of glamour, perfect for elevating your evening attire or complementing a polished daytime look.',53,205,'2025-02-15T19:00:50.000Z','2025-02-15T19:00:50.000Z'),(43,'Elegant Purple Leather Loafers','Step into sophistication with our Elegant Purple Leather Loafers, perfect for making a bold statement. Crafted from high-quality leather with a vibrant purple finish, these shoes feature a classic loafer silhouette that\'s been updated with a contemporary twist. The comfortable slip-on design and durable soles ensure both style and functionality for the modern man.',17,205,'2025-02-15T19:00:50.000Z','2025-02-15T19:00:50.000Z'),(44,'Classic Blue Suede Casual Shoes','Step into comfort with our Classic Blue Suede Casual Shoes, perfect for everyday wear. These shoes feature a stylish blue suede upper, durable rubber soles for superior traction, and classic lace-up fronts for a snug fit. The sleek design pairs well with both jeans and chinos, making them a versatile addition to any wardrobe.',39,205,'2025-02-15T19:00:50.000Z','2025-02-15T19:00:50.000Z'),(45,'Sleek Futuristic Electric Bicycle','This modern electric bicycle combines style and efficiency with its unique design and top-notch performance features. Equipped with a durable frame, enhanced battery life, and integrated tech capabilities, it\'s perfect for the eco-conscious commuter looking to navigate the city with ease.',22,206,'2025-02-15T19:00:50.000Z','2025-02-15T19:00:50.000Z'),(46,'Sleek All-Terrain Go-Kart','Experience the thrill of outdoor adventures with our Sleek All-Terrain Go-Kart, featuring a durable frame, comfortable racing seat, and robust, large-tread tires perfect for handling a variety of terrains. Designed for fun-seekers of all ages, this go-kart is an ideal choice for backyard racing or exploring local trails.',37,206,'2025-02-15T19:00:50.000Z','2025-02-15T19:00:50.000Z'),(47,'Radiant Citrus Eau de Parfum','Indulge in the essence of summer with this vibrant citrus-scented Eau de Parfum. Encased in a sleek glass bottle with a bold orange cap, this fragrance embodies freshness and elegance. Perfect for daily wear, it\'s an olfactory delight that leaves a lasting, zesty impression.',73,206,'2025-02-15T19:00:50.000Z','2025-02-15T19:00:50.000Z'),(48,'Sleek Olive Green Hardshell Carry-On Luggage','Travel in style with our durable hardshell carry-on, perfect for weekend getaways and business trips. This sleek olive green suitcase features smooth gliding wheels for easy airport navigation, a sturdy telescopic handle, and a secure zippered compartment to keep your belongings safe. Its compact size meets most airline overhead bin requirements, ensuring a hassle-free flying experience.',48,206,'2025-02-15T19:00:50.000Z','2025-02-15T19:00:50.000Z'),(49,'Chic Transparent Fashion Handbag','Elevate your style with our Chic Transparent Fashion Handbag, perfect for showcasing your essentials with a clear, modern edge. This trendy accessory features durable acrylic construction, luxe gold-tone hardware, and an elegant chain strap. Its compact size ensures you can carry your day-to-day items with ease and sophistication.',61,206,'2025-02-15T19:00:50.000Z','2025-02-15T19:00:50.000Z');
/*!40000 ALTER TABLE `TB_PRODUCT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TB_PRODUCT_CATEGORY`
--

DROP TABLE IF EXISTS `TB_PRODUCT_CATEGORY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `TB_PRODUCT_CATEGORY` (
  `CATEGORY_ID` int NOT NULL AUTO_INCREMENT,
  `CATEGORY_NAME` varchar(100) NOT NULL,
  `CATEGORY_IMAGE` varchar(100) NOT NULL,
  `CREATION_AT` varchar(50) DEFAULT NULL,
  `UPDATED_AT` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`CATEGORY_ID`),
  UNIQUE KEY `CATEGORY_ID` (`CATEGORY_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=208 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TB_PRODUCT_CATEGORY`
--

/*!40000 ALTER TABLE `TB_PRODUCT_CATEGORY` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TB_PRODUCT_IMAGES`
--

DROP TABLE IF EXISTS `TB_PRODUCT_IMAGES`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `TB_PRODUCT_IMAGES` (
  `RELATION_ID` int NOT NULL AUTO_INCREMENT,
  `PRODUCT_ID` int NOT NULL,
  `PRODUCT_IMAGE_URL` varchar(100) NOT NULL,
  PRIMARY KEY (`RELATION_ID`),
  UNIQUE KEY `RELATION_ID` (`RELATION_ID`),
  KEY `PRODUCT_ID` (`PRODUCT_ID`),
  CONSTRAINT `TB_PRODUCT_IMAGES_ibfk_1` FOREIGN KEY (`PRODUCT_ID`) REFERENCES `TB_PRODUCT` (`PRODUCT_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=146 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TB_PRODUCT_IMAGES`
--

/*!40000 ALTER TABLE `TB_PRODUCT_IMAGES` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'database'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-02-15 23:24:43
