-- MySQL dump 10.13  Distrib 8.0.13, for Win64 (x86_64)
--
-- Host: localhost    Database: online_bookstore
-- ------------------------------------------------------
-- Server version	8.0.13

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `author`
--

DROP TABLE IF EXISTS `author`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `author` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `nationality` varchar(50) DEFAULT NULL,
  `created_by` varchar(100) DEFAULT NULL,
  `date_created` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=910174 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `author`
--

LOCK TABLES `author` WRITE;
/*!40000 ALTER TABLE `author` DISABLE KEYS */;
INSERT INTO `author` VALUES (130264,'Phùng Thanh Ngọc','Vietnam','PT','2024-06-14 16:07:38'),(146998,'Chà','Vietnam','PT','2024-06-14 16:07:38'),(155478,'Tony Crilly','Russia','PT','2024-06-14 16:07:38'),(186437,'Edward Tse','China','PT','2024-06-14 16:07:38'),(276074,'Frank Herbert','US','PT','2024-06-14 16:07:38'),(336258,'James Rickards','US','PT','2024-06-14 16:07:38'),(404167,'Lam','Vietnam','PT','2024-06-14 16:07:38'),(429478,'ASIA CAS','Vietnam','PT','2024-06-14 16:07:38'),(444752,'Sunil Gupta','India','PT','2024-06-14 16:07:38'),(480329,'Mike\'s','US','PT','2024-06-14 16:07:38'),(482914,'One Pacific Holdings','Vietnam','PT','2024-06-14 16:07:38'),(525742,'Paul Deitel','US','PT','2024-06-14 16:07:38'),(559005,'James Clear','US','PT','2024-06-14 16:07:38'),(660732,'Nguyễn Nhật Ánh','Vietnam','PT','2024-06-14 16:07:38'),(710960,'Hạ Mer','Vietnam','PT','2024-06-14 16:07:38'),(752094,'Scott Patterson','US','PT','2024-06-14 16:07:38'),(842560,'Little Rainbow','Vietnam','PT','2024-06-14 16:07:38'),(908377,'Jo Hemmings','UK','PT','2024-06-14 16:07:38'),(910172,'Bao Sở Đình','Vietnam','PT','2024-06-14 16:07:38'),(910173,'Dan Brown','England','phuccuc','2024-06-16 22:15:14.309');
/*!40000 ALTER TABLE `author` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `book`
--

DROP TABLE IF EXISTS `book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `book` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL,
  `thumbnail` varchar(500) DEFAULT NULL,
  `author_id` bigint(20) DEFAULT NULL,
  `price` decimal(8,2) NOT NULL,
  `type_id` bigint(20) DEFAULT NULL,
  `publication_date` date DEFAULT NULL,
  `publisher_id` bigint(20) DEFAULT NULL,
  `description` text,
  `stocks` bigint(20) DEFAULT NULL,
  `created_by` varchar(100) DEFAULT NULL,
  `date_created` timestamp NULL DEFAULT NULL,
  `genre_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_book_type` (`type_id`),
  KEY `fk_book_genre` (`genre_id`),
  KEY `fk_book_author` (`author_id`),
  KEY `fk_book_publisher` (`publisher_id`),
  CONSTRAINT `fk_book_author` FOREIGN KEY (`author_id`) REFERENCES `author` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_book_genre` FOREIGN KEY (`genre_id`) REFERENCES `genre` (`id`),
  CONSTRAINT `fk_book_publisher` FOREIGN KEY (`publisher_id`) REFERENCES `publisher` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_book_type` FOREIGN KEY (`type_id`) REFERENCES `type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8452174925 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book`
--

LOCK TABLES `book` WRITE;
/*!40000 ALTER TABLE `book` DISABLE KEYS */;
INSERT INTO `book` VALUES (3024356144,'Dune - Xứ Cát','https://cdn0.fahasa.com/media/catalog/product/x/u/xu_cat_-_bia_mem_b_a.jpg?_gl=1*12jef2p*_gcl_au*NDQzMDc1MTAzLjE3MTgzMTk5NzA.*_ga*NjY4MDY5MzA0LjE3MTgzMTk5NzA.*_ga_460L9JMC2G*MTcxODMxOTk2OS4xLjEuMTcxODMyNTAwMC41OS4wLjEyMzIzMTM5OTU.',276074,198600.00,1,NULL,9197,'<p>Là một trong những cuốn tiểu thuyết khoa học giả tưởng bán chạy nhất mọi thời đại, Xứ Cát không chỉ là lựa chọn đối với những tín đồ của Chúa nhẫn, Chiến tranh giữa các vì sao… mà còn chinh phục độc giả đủ mọi lứa tuổi, mọi tầng lớp và sở thích bởi sự đa dạng và phức tạp của con người và không gian trong truyện, bởi sự tinh tế trong xây dựng tâm lý, bởi sự hấp dẫn, căng thẳng và bất ngờ của cốt truyện, bởi sự độc đáo và thú vị của khối lượng kiến thức khổng lồ cũng như bởi sự hấp dẫn trong những tư tưởng về tôn giáo, về tự do, về tình yêu, về sự sống và cái chết.</p>\n',104,'PT','2024-06-14 09:07:38',774),(3032675993,'Góc Nhỏ Có Nắng','https://cdn0.fahasa.com/media/catalog/product/b/_/b_a-in-g_c-nh_-c_-n_ng_1.jpg?_gl=1*u1fgcz*_gcl_au*MTYyMTcwMzM0OC4xNzE4MzMzMzMx*_ga*MTc3NzAwOTE3My4xNzE4MzMzMzMx*_ga_460L9JMC2G*MTcxODMzMzMzMS4xLjEuMTcxODMzMzMzOC41My4wLjEzNzI3NjQzNzE.',842560,52000.00,1,'2024-06-14',7384,'<p>Với 30 chủ đề tô màu phong phú đa dạng, mỗi bức tranh như là một lời thủ thỉ tâm tình gửi đến bạn; Thư giãn và chữa lành: Với những hình ảnh đẹp mắt và đơn giản, tô màu sẽ là một phương pháp hiệu quả giúp bạn chữa lành và nuôi dưỡng tâm hồn; Khám phá sự sáng tạo: Bạn đừng ngại vẽ thêm, tô thêm màu sắc để thể hiện cảm xúc của riêng mình; Chất liệu giấy dày, mịn, đẹp sẽ đem đến cho bạn trải nghiệm tô màu thú vị</p>\n',99,'PT','2024-06-14 09:07:38',429),(3176930502,'Có Hai Con Mèo Ngồi Bên Cửa Sổ (2023 Edition)','https://cdn0.fahasa.com/media/catalog/product/c/o/copy_25_nxbtre_full_16462018_114633.jpg',660732,80000.00,1,'2024-06-14',5970,'CÓ HAI CON MÈO NGỒI BÊN CỬA SỔ là tác phẩm đầu tiên của nhà văn Nguyễn Nhật Ánh viết theo thể loại đồng thoại. Đặc biệt hơn nữa là viết về tình bạn của hai loài vốn là thù địch của nhau mèo và chuột. Đó là tình bạn giữa mèo Gấu và chuột Tí Hon.',72,'PT','2024-06-14 09:07:38',643),(3265419780,'Kinh Doanh Trong Thời Đại 4.0 - Driving Digital Strategy (2022)','https://cdn0.fahasa.com/media/flashmagazine/images/page_images/kinh_doanh_trong_thoi_dai_40___driving_digital_strategy_2022/2022_11_03_15_25_28_1-390x510.jpg?_gl=1*13huz7x*_gcl_au*MTYyMTcwMzM0OC4xNzE4MzMzMzMx*_ga*MTc3NzAwOTE3My4xNzE4MzMzMzMx*_ga_460L9JMC2G*MTcxODMzMzMzMS4xLjEuMTcxODMzNTAyMy41OS4wLjEzNzI3NjQzNzE.',444752,143500.00,1,'2024-06-14',2584,'Cuốn sách cập nhật nhất - “Kinh doanh trong thời đại 4.0”, một tác phẩm của Sunil Gupta - giáo sư Quản trị Kinh doanh tại trường Kinh doanh Harvard, chuyên gia về chiến lược chuyển đổi kỹ thuật số sẽ dẫn đường cho bạn. Để thành công, bạn không thể chỉ tạo một đơn vị kỹ thuật số riêng, hoặc chỉ tiến hành các thử nghiệm, hoặc chỉ dự định dùng công nghệ để tăng năng suất. Thay vào đó, bạn phải biến kỹ thuật số thành chiến lược cốt lõi, để nó bao trùm lên mọi hoạt động, mọi bước đi trong doanh nghiệp của mình. Thông qua hàng loạt câu chuyện thực tiễn, với ví dụ tiêu biểu từ những doanh nghiệp đã hoàn toàn lột xác trong kỷ nguyên số, bạn sẽ nắm trong tay các phương pháp và nguyên tắc để vạch ra chiến lược số bao trùm. Hay nói cách khác, “Kinh doanh trong thời đại 4.0” sẽ dẫn lối giúp bạn điều khiển doanh nghiệp vượt qua quá trình chuyển đổi đầy thách thức, không thể không thực hiện.',33,'PT','2024-06-14 09:07:38',672),(3287820104,'Giao Dịch Thiên Nga Đen','https://cdn0.fahasa.com/media/catalog/product/g/i/giao-dich-thien-nga-den-bia-1.jpg?_gl=1*1cog6fr*_gcl_au*MTYyMTcwMzM0OC4xNzE4MzMzMzMx*_ga*MTc3NzAwOTE3My4xNzE4MzMzMzMx*_ga_460L9JMC2G*MTcxODMzMzMzMS4xLjEuMTcxODMzNDA5MS4zMC4wLjEzNzI3NjQzNzE.',752094,167200.00,1,'2024-06-14',3553,'Giao dịch Thiên nga Đen, cuốn sách best seller của Wall Street Journal, tiết lộ cho chúng ta chiến lược đầu tư tài chính của những phù thủy Phố Wall trong một thời đại hỗn loạn, đầy rẫy những yếu tố biến động, không chắc chắn, phức tạp và mơ hồ.\n\nCuốn sách thuật lại các sự kiện mang tính bước ngoặt như: Ngày thứ Hai Đen tối năm 1987, cuộc đại khủng hoảng tài chính năm 2008, vụ sụp đổ thị trường chớp nhoáng trong năm 2010, hay cuộc đổ bộ của Covid-19 vào năm 2020. Đây là những thời điểm cực đoan, những sự kiện Thiên nga Đen rất ít có khả năng xảy ra, nhưng một khi xuất hiện, chúng có thể khiến những gã khổng lồ sụp đổ, khiến hàng tỷ đô la bốc hơi, hủy diệt vô số nhà đầu tư, cũng như những con cá nhỏ lẻ - và cùng lúc đó, giúp những vị vua của thời hỗn loạn kiếm về cả một gia tài.\n\nThế giới mà tác giả Patterson miêu tả chủ yếu được chia thành hai phe: một phe là những nhà đầu tư tán thành triết lý Thiên nga Đen của Nassim Taleb, rằng thị trường tài chính dễ dàng bị tổn hại trước những vụ sụp đổ không thể lường trước được. Phe còn lại là những nhà giao dịch bị thuyết phục bởi khái niệm Long Vương của nhà nghiên cứu người Pháp Didier Sornette, người tin rằng chúng ta vẫn có thể dự đoán những sự kiện bất thường ở một mức độ nhất định.\n\nTác giả Patterson phân tích các lập luận của họ để người đọc thấy được góc nhìn của những chuyên gia giao dịch đang quản lý hàng tỷ đô la tài sản. Từ đó, thấu hiểu cách những cá nhân này đối mặt với các sự kiện thảm khốc có nguy cơ khiến những tổ chức lớn nhất phá sản và thậm chí, họ còn có thể chuyển hóa rủi ro thành lợi nhuận, kiếm được cả gia tài trong khi phần còn lại của thị trường sụp đổ.\n\nVề tác giả:\n\nScott Patterson là một phóng viên có hơn 20 năm kinh nghiệm, làm việc tại Wall Street Journal ở thành phố New York, Washington DC và London. Ông chuyên viết về các quỹ phòng hộ, giao dịch tốc độ cao, Warren Buffett, ngành công nghiệp khai thác mỏ và biến đổi khí hậu. Patterson thường xuyên xuất hiện trên các phương tiện truyền thông, bao gồm CNBC, The Daily Show và Fresh Air.\n\nCuốn sách bán chạy nhất năm 2010 của ông, The Quants, nói về sự trỗi dậy của các nhà giao dịch toán học và tác động hủy diệt của họ đối với hệ thống tài chính. Cuốn sách thứ hai của Patterson, Dark Pools, tiết lộ hoạt động giao dịch tần suất cao đã thao túng thị trường chứng khoán như thế nào, cũng đã nhận về rất nhiều lời khen ngợi của các cây viết tài chính.\n\nNhững lời khen cho cuốn sách:\n\n“Cuốn sách là một ký sự về các ông trùm tài chính chuyên theo đuổi giông bão. Ngay cả những người không biết nhiều hoặc không quan tâm đến những dao động của thị trường cổ phiếu cũng có thể bị cuốn theo những câu chuyện của Patterson.”\n\n- New York Times\n\n“Patterson của Wall Street Journal tiếp tục hành trình khám phá của mình trong thế giới tài chính cao cấp, tìm hiểu về một nhóm những cá nhân liều lĩnh đi ngược với đám đông… Một cuốn sách tinh tế, phân tích dễ hiểu và đầy tính dẫn dắt.”\n\n- Kirkus Reviews\n\n“Chúng ta đang sống trong một thế giới của đại dịch, biến đổi khí hậu, chiến tranh và các thể chế bất ổn. Cuốn sách Giao dịch Thiên nga Đen của Scott Patterson kể về những người đặt cược lớn, những cá nhân tin rằng họ có thể thuần hóa được những rủi ro tài chính phát sinh từ những yếu tố hỗn loạn. Tác phẩm chứa đựng những hiểu biết sâu sắc dành cho bất kỳ ai đang sống - hoặc đang đầu tư - trong thế giới hiện đại, đầy mơ hồ của chúng ta.”\n\n- Russell Gold, tác giả của Superpower và The Boom\n\nMã hàng	8936066698399\nTên Nhà Cung Cấp	1980 Books\nTác giả	Scott Patterson\nNgười Dịch	1980Books\nNXB	Công Thương\nNăm XB	2024\nNgôn Ngữ	Tiếng Việt\nTrọng lượng (gr)	420\nKích Thước Bao Bì	20.5 x 13 x 2 cm\nSố trang	408\nHình thức	Bìa Mềm\nSản phẩm bán chạy nhất	Top 100 sản phẩm Phân Tích Kinh Tế bán chạy của tháng\nGiá sản phẩm trên Fahasa.com đã bao gồm thuế theo luật hiện hành. Bên cạnh đó, tuỳ vào loại sản phẩm, hình thức và địa chỉ giao hàng mà có thể phát sinh thêm chi phí khác như Phụ phí đóng gói, phí vận chuyển, phụ phí hàng cồng kềnh,...\nChính sách khuyến mãi trên Fahasa.com không áp dụng cho Hệ thống Nhà sách Fahasa trên toàn quốc\nGiao Dịch Thiên Nga Đen\n\nGiao dịch Thiên nga Đen, cuốn sách best seller của Wall Street Journal, tiết lộ cho chúng ta chiến lược đầu tư tài chính của những phù thủy Phố Wall trong một thời đại hỗn loạn, đầy rẫy những yếu tố biến động, không chắc chắn, phức tạp và mơ hồ.\n\nCuốn sách thuật lại các sự kiện mang tính bước ngoặt như: Ngày thứ Hai Đen tối năm 1987, cuộc đại khủng hoảng tài chính năm 2008, vụ sụp đổ thị trường chớp nhoáng trong năm 2010, hay cuộc đổ bộ của Covid-19 vào năm 2020. Đây là những thời điểm cực đoan, những sự kiện Thiên nga Đen rất ít có khả năng xảy ra, nhưng một khi xuất hiện, chúng có thể khiến những gã khổng lồ sụp đổ, khiến hàng tỷ đô la bốc hơi, hủy diệt vô số nhà đầu tư, cũng như những con cá nhỏ lẻ - và cùng lúc đó, giúp những vị vua của thời hỗn loạn kiếm về cả một gia tài.',43,'PT','2024-06-14 09:07:38',672),(3309564171,'Atomic Habits: An Easy & Proven Way To Build Good Habits & Break Bad Ones','https://cdn0.fahasa.com/media/flashmagazine/images/page_images/atomic_habits_an_easy_proven_way_to_build_good_habits_break_bad_ones/2023_03_23_16_01_58_1-390x510.jpg?_gl=1*5h1pnp*_gcl_au*NDQzMDc1MTAzLjE3MTgzMTk5NzA.*_ga*NjY4MDY5MzA0LjE3MTgzMTk5NzA.*_ga_460L9JMC2G*MTcxODMxOTk2OS4xLjEuMTcxODMyMjIxNy41OC4wLjEyMzIzMTM5OTU.',559005,349500.00,1,'2024-06-14',4766,'In this ground-breaking book, Clears reveals exactly how these minuscule changes can grow into such life-altering outcomes. He uncovers a handful of simple life hacks (the forgotten art of Habit Stacking, the unexpected power of the Two Minute Rule, or the trick to entering the Goldilocks Zone), and delves into cutting-edge psychology and neuroscience to explain why they matter. Along the way, he tells inspiring stories of Olympic gold medalists, leading CEOs, and distinguished scientists who have used the science of tiny habits to stay productive, motivated, and happy.',402,'PT','2024-06-14 09:07:38',464),(3395048803,'Mắt Biếc (2022 Edition)','https://cdn0.fahasa.com/media/catalog/product/n/x/nxbtre_full_06402022_014041_1.jpg?_gl=1*1bgv6h1*_gcl_au*NDQzMDc1MTAzLjE3MTgzMTk5NzA.*_ga*NjY4MDY5MzA0LjE3MTgzMTk5NzA.*_ga_460L9JMC2G*MTcxODMxOTk2OS4xLjEuMTcxODMyNDI5MS41LjAuMTIzMjMxMzk5NQ..',660732,88000.00,1,'2024-06-14',5970,'Một tác phẩm được nhiều người bình chọn là hay nhất của nhà văn này. Một tác phẩm đang được dịch và giới thiệu tại Nhật Bản (theo thông tin từ các báo)… Bởi sự trong sáng của một tình cảm, bởi cái kết thúc rất, rất buồn khi suốt câu chuyện vẫn là những điều vui, buồn lẫn lộn (cái kết thúc không như mong đợi của mọi người). Cũng bởi, mắt biếc… năm xưa nay đâu (theo lời một bài hát)',24,'PT','2024-06-14 09:07:38',643),(3556806330,'Mẹ Làm Gì Có Ước Mơ','https://cdn0.fahasa.com/media/catalog/product/9/8/98bde27a91ea4bb412fb_1.jpg?_gl=1*wt6xji*_gcl_au*NDQzMDc1MTAzLjE3MTgzMTk5NzA.*_ga*NjY4MDY5MzA0LjE3MTgzMTk5NzA.*_ga_460L9JMC2G*MTcxODMxOTk2OS4xLjEuMTcxODMyMzU5OC41OS4wLjEyMzIzMTM5OTU.',710960,70000.00,1,'2024-06-14',9573,'Bạn có bao giờ hỏi ước mơ của bố mẹ là gì? Hoặc dù có hỏi bố mẹ cũng chỉ trả lời qua loa như “Làm gì có…”. Nhưng bạn biết không, làm gì có ai trên thế giới này không có ước mơ cơ chứ, chỉ là ước mơ của bố mẹ chúng ta được cất giấu rất sâu trong tim và đánh đổi bằng nụ cười của những đứa con mà thôi. Tại sao mẹ lại chẳng có nổi một ước mơ cho riêng mình? Phải chăng gánh vai mẹ đã quá mỏi mệt với cơm áo gạo tiền, với những bữa ăn và học phí của con. À không, mẹ có ước mơ đấy chứ. Mẹ ước mơ có một người bố, rồi mẹ cho nó cả một gia đình. Mẹ ước mơ được tới trường, nên mẹ cho nó học con chữ. Mẹ ước mơ được một bữa no, nên dẫu có phải đi làm vất vả khổ cực đến đâu mẹ cũng cho nó được bữa cơm ngon. Chỉ khác một điều, ước mơ của mẹ là các con mất rồi. Đó là hình ảnh của MẸ mà bạn sẽ bắt gặp trong “Mẹ làm gì có ước mơ”. Tựa một thước phim quay chậm đưa bạn trở lại những ngày bé thơ, dưới vòng tay chai sạn nhưng đầy ấm áp của mẹ. Khi tạm cất ước mơ của mình sang một bên, ước mơ của mẹ “hóa ra con từ bao giờ” và “thế giới của mẹ chính là con”. Bố mẹ đã dồn hết khả năng của mình, dành cho con những gì tốt nhất để con được thực hiện ước mơ. Chúng ta đừng chỉ mải chạy theo ước mơ của mình mà quên mất những người đã hy sinh cả cuộc đời để mình có cơ hội thực hiện ước mơ ấy. Có thể gọi điện về nhà thường xuyên hơn, hoặc nếu có thể, hãy trở về nhà nếu đã đi đủ lâu. Đó là những điều mà Hạ Mer muốn gửi gắm đến bạn qua “Mẹ làm gì có ước mơ”.',55,'PT','2024-06-14 09:07:38',643),(3620289137,'Nhân Chuỗi Cửa Hàng','https://cdn0.fahasa.com/media/catalog/product/n/h/nhan-chuoi-cua-hang-img-1a-290323.png?_gl=1*1epqdur*_gcl_au*NDQzMDc1MTAzLjE3MTgzMTk5NzA.*_ga*NjY4MDY5MzA0LjE3MTgzMTk5NzA.*_ga_460L9JMC2G*MTcxODMxOTk2OS4xLjEuMTcxODMyNDcwNy41NS4wLjEyMzIzMTM5OTU.',130264,180000.00,1,'2024-06-14',4556,'Cuốn sách phân tích các bài học nhân chuỗi cửa hàng từ các thương hiệu Việt, vì vậy vô cùng phù hợp với thị trường Việt Nam. \n\nĐặc biệt, cuốn sách giúp bạn hiểu rõ công thức tạo doanh thu với 7 thành phần cơ bản. Nhờ đó, bạn nhanh chóng biết được phải làm gì để gia tăng lợi nhuận cho chuỗi cửa hàng bán lẻ của mình.',98,'PT','2024-06-14 09:07:38',672),(3628140041,'C: How To Program (8th Edition)','https://m.media-amazon.com/images/I/51mnHmurOgL._SY466_.jpg',525742,351100.00,1,'2024-06-14',8988,'C How to Program is a comprehensive introduction to programming in C. Like other texts of the Deitels’ How to Program series, the book serves as a detailed beginner source of information for college students looking to embark on a career in coding, or instructors and software-development professionals seeking to learn how to program with C.',54,'PT','2024-06-14 09:07:38',304),(3636965170,'Trốn Lên Mái Nhà Để Khóc','https://cdn0.fahasa.com/media/catalog/product/b/_/b_a_1_tr_n-l_n-m_i-nh_-_-kh_c.jpg?_gl=1*1l1kxpc*_gcl_au*NDQzMDc1MTAzLjE3MTgzMTk5NzA.*_ga*NjY4MDY5MzA0LjE3MTgzMTk5NzA.*_ga_460L9JMC2G*MTcxODMxOTk2OS4xLjEuMTcxODMxOTk3Ni41My4wLjEyMzIzMTM5OTU.',404167,75800.00,1,'2024-06-14',7527,'Những cơn gió heo may len lỏi vào từng góc phố nhỏ, mùa thu về gợi nhớ bao yêu thương đong đầy, bao xúc cảm dịu dàng của ký ức. Đó là nỗi nhớ đau đáu những hương vị quen thuộc của đồng nội, là hoài niệm bất chợt khi đi trên con đường cũ in dấu bao kỷ niệm... để rồi ta ước có một chuyến tàu kỳ diệu trở về những năm tháng ấy, trở về nơi nương náu bình yên sau những tháng ngày loay hoay để học cách trở thành một người lớn. Bạn sẽ được đắm mình trong những cảm xúc đẹp đẽ xen lẫn những tiếc nuối đầy lắng đọng trong “Trốn lên mái nhà đẻ khóc” của Lam.',250,'PT','2024-06-14 09:07:38',464),(3720269585,'IELTS For Beginners','https://cdn0.fahasa.com/media/catalog/product/8/9/8935246938911_1.jpg?_gl=1*wlgytg*_gcl_au*NDQzMDc1MTAzLjE3MTgzMTk5NzA.*_ga*NjY4MDY5MzA0LjE3MTgzMTk5NzA.*_ga_460L9JMC2G*MTcxODMxOTk2OS4xLjEuMTcxODMyNTExNS41OS4wLjEyMzIzMTM5OTU.',525742,119200.00,1,'2024-06-14',1586,'Như chúng ta đã biết trước kia, quan niệm luyện thi IELTS chỉ dành cho những bạn muốn du học nước ngoài là phổ biến. Tuy vậy, hiện nay, xu thế đã thay đổi khi giá trị bằng IELTS còn có thể được sử dụng để xét tuyển Đại học, học bổng, thăng tiến trong công việc. \n\nKhi bắt đầu học IELTS, hẳn không ít bạn hoang mang và có nhiều lo lắng. Bạn đang muốn học IELTS nhưng không biết bắt đầu từ đâu. Bạn muốn phát triển bốn kỹ năng nghe, nói, đọc, viết nhưng lại chưa biết cách làm và thực hành nhiều dạng bài. Bạn chưa có nhiều kiến thức về ngữ pháp, vốn từ vựng còn ít và phát âm vẫn chưa đúng chưa hay. \n\nVậy thì cuốn sách IELTS for beginners IELTS cho người mới bắt đầu chính là cuốn sách dành cho bạn.',994,'PT','2024-06-14 09:07:38',304),(3806869299,'Định Luật Peter','https://cdn0.fahasa.com/media/catalog/product/c/o/cover---dinh-luat-petter---chot---convert_1.jpg?_gl=1*h8ycsg*_gcl_au*NDQzMDc1MTAzLjE3MTgzMTk5NzA.*_ga*NjY4MDY5MzA0LjE3MTgzMTk5NzA.*_ga_460L9JMC2G*MTcxODMxOTk2OS4xLjEuMTcxODMyNTk3Mi41OS4wLjEyMzIzMTM5OTU.',910172,134400.00,1,'2024-06-14',1586,'Bạn đọc sẽ bắt gặp rất nhiều hiện tượng tâm lý quen thuộc hằng ngày như: Tại sao ăn uống thả ga thì rất dễ nhưng quyết tâm giảm cân lại khó? Tại sao những đứa trẻ được khen ngợi thường xuyên có xu hướng phát triển hơn? Tại sao khi nghĩ đến chuyện gì đó không tốt thì nó sẽ xảy ra? Tại sao ta luôn muốn người khác đối xử với mình như cách mình đối xử với họ? … Và nhiều các hiện tượng tâm lý khác được giải đáp một cách khoa học và dễ hiểu trong cuốn sách bạn đang cầm trên tay.',66,'PT','2024-06-14 09:07:38',733),(3823099876,'Người Tập Lớn','_gl=1*ew0hzd*_gcl_au*NDQzMDc1MTAzLjE3MTgzMTk5NzA.*_ga*NjY4MDY5MzA0LjE3MTgzMTk5NzA.*_ga_460L9JMC2G*MTcxODMxOTk2OS4xLjEuMTcxODMyMTgyNi41OS4wLjEyMzIzMTM5OTU.',146998,70000.00,1,'2024-06-14',7527,'Cuộc đời rộng lớn còn chúng ta thì nhỏ bé nhưng những gì to tát đều được xây nên từ mấy điều bé xíu. Chúng ta mỗi ngày đều cố tìm kiếm niềm vui lớn lao ở tít xa xôi mà quên mất những điều gần gũi xung quanh. Những lắng lo, sợ hãi trước những xù xì, gai góc của hành trình “tập làm người lớn” khiến chúng ta đôi khi lỡ mất điều xinh đẹp ở ngay cạnh mình. Cuốn sách “Người tập lớn” với những mẩu chuyện ngắn nhưng lại vẽ dài thêm sự dễ thương cho cuộc đời này. Chà - tác giả của “Người tập lớn” mang đến một góc nhìn mới về cuộc sống quanh ta. Chà kể về tụi nhân viên gen Z đôi lúc ngáo ngơ nhưng cực kỳ chân thành và nhiệt huyết; kể chuyện anh “síp bơ” cục mịch nhưng hiền lành, tốt tính,... Những con người trong thế giới của “Người tập lớn” có thể khác nhau về giới tính, độ tuổi, nghề nghiệp nhưng đều rất dễ mến và tử tế. Thế giới ấy chân thực, gần gũi tới mức bạn sẽ phải thốt lên rằng, hóa ra lâu nay mình mải vội vã mà không biết cuộc đời này đáng yêu như vậy.',359,'PT','2024-06-14 09:07:38',643),(3935054535,'Sự Lụi Tàn Của Đồng Tiền','https://cdn0.fahasa.com/media/catalog/product/b/_/b_a_tr_c_s_l_i_t_n_c_a_ng_ti_n_file_in-1.png?_gl=1*1eybyeu*_gcl_au*MTYyMTcwMzM0OC4xNzE4MzMzMzMx*_ga*MTc3NzAwOTE3My4xNzE4MzMzMzMx*_ga_460L9JMC2G*MTcxODMzMzMzMS4xLjEuMTcxODMzNDI3NS41OS4wLjEzNzI3NjQzNzE.',336258,168000.00,1,'2024-06-14',7527,'James Rickards, với kinh nghiệm 35 lăn lộn tại Wall Street, làm cố vấn kinh tế quốc tế và các mối đe dọa về tài chính của Bộ Quốc phòng Hoa Kỳ, Cộng đồng Tình báo Hoa Kỳ và rất nhiều các tổ chức khác đã cung cấp một kho thông tin về các ngân hàng trung ương, ngân hàng quốc tế, tiền thực sự là gì, IMF, lịch sử tài chính, các kịch bản có thể xảy ra trong tương lai của đồng tiền,...\n\nNhững mảng tối và sự thay đổi trong các nền kinh tế lần lượt xuất hiện trong các dẫn chứng và lối phân tích vô cùng sâu sắc và lôi cuốn của ông. Nhưng không chỉ có thế, cuốn sách của James Rickards còn mang đến cho chúng ta những cái nhìn chân thực, những tri thức bất đầy bất ngờ về nền kinh tế toàn cầu và tác động của chúng lên mỗi cá nhân ra sao.',58,'PT','2024-06-14 09:07:38',672),(3938426531,'Những Gã Khổng Lồ Trung Quốc','https://cdn0.fahasa.com/media/catalog/product/8/9/8935280907751.jpg?_gl=1*sor8jo*_gcl_au*MTYyMTcwMzM0OC4xNzE4MzMzMzMx*_ga*MTc3NzAwOTE3My4xNzE4MzMzMzMx*_ga_460L9JMC2G*MTcxODMzMzMzMS4xLjEuMTcxODMzNDc2OS42MC4wLjEzNzI3NjQzNzE.',186437,80500.00,1,'2024-06-14',3553,'Trong khoảng hai thập kỷ, sự bùng nổ khởi nghiệp đã chuyển hóa Trung Quốc từ nền kinh tế đóng cửa, nghèo nàn, bị chính phủ kiểm soát thành một nền kinh tế mạnh trên toàn cầu. Các sản phẩm của Trung Quốc ngày càng trở nên tinh xảo, và các công ty nội địa phát triển mạnh về công nghệ, chúng ta sẽ chứng kiến hàng hóa Trung Quốc trở thành tiêu chuẩn trên toàn cầu. Trong khi đó, các công ty còn lại trên thế giới đang tìm cách để xâm nhập vào thị trường tăng trưởng cao của Trung Quốc với 1.3 tỉ người tiêu dùng.\n\nEdward Tse, một chuyên gia về chiến lược dẫn đầu toàn cầu, vén mở cách thức Trung Quốc đã làm để thực hiện những điều ấy, và sự tăng trưởng của quốc gia này có ý nghĩa thế nào đối với Mỹ và cả thế giới. Tse đã dành hơn 20 năm làm việc với những nhà lãnh đạo đứng đầu Trung Quốc, học hỏi cách các công ty hàng đầu Trung Quốc vận hành. Ông là một chuyên gia về cách các công ty tư nhân phát triển trong một quốc gia xã hội chủ nghĩa. Như Tse kết luận: “Tôi tin rằng nhờ kết quả của việc mở cửa cho các doanh nhân Trung Quốc, chính sách thúc đẩy đầu tư vào khoa học, nghiên cứu, và phát triển, và sự tự do mà nhiều người đang tận hưởng xuyên suốt quốc gia, Trung Quốc đã phục hồi và chạm tới thời kỳ có thể so sánh với thời kỳ mạnh mẽ nhất trong lịch sử - thời nhà Đường. Những doanh nghiệp này đang chất chứa khát khao thành công mãnh liệt. Họ sẽ có những ảnh hưởng rõ rệt hơn với nền kinh tế toàn cầu trong tương lai, trong suốt thập kỉ này và cả thời gian sau đó nữa.”',66,'PT','2024-06-14 09:07:38',672),(8452174923,'Tạp chí NỮ DOANH NHÂN số 141 (09/2022)','https://salt.tikicdn.com/cache/750x750/ts/product/6a/7b/9b/17ac229e726ec3c18595a32e608b8351.jpg.webp',482914,115000.00,2,'2024-06-14',1189,'Tạp chí in hàng đầu về phong cách sống, chia sẻ kinh nghiệm, bí quyết thành công, dành cho phụ nữ đương đại. Est. 2008.',84,'PT','2024-06-14 09:07:38',256),(8452174924,'Davinci Code','https://i.ebayimg.com/images/g/PhUAAOSweNNgiphk/s-l600.jpg',910173,250000.00,1,'2023-07-10',9878,'<ul>\n	<li>Twist</li>\n	<li>Horror</li>\n	<li>Religion</li>\n</ul>\n',43,'phuccuc','2024-06-16 15:18:03',774);
/*!40000 ALTER TABLE `book` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `cart` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL,
  `book_id` bigint(20) NOT NULL,
  `quantity` bigint(20) NOT NULL,
  `order_id` bigint(20) DEFAULT NULL,
  `ordered` tinyint(1) NOT NULL,
  `created_by` varchar(100) DEFAULT NULL,
  `date_created` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_cart_book` (`book_id`),
  KEY `fk_cart_orders` (`order_id`),
  KEY `fk_cart_user` (`user_id`),
  CONSTRAINT `fk_cart_book` FOREIGN KEY (`book_id`) REFERENCES `book` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_cart_orders` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_cart_user` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
INSERT INTO `cart` VALUES (33,1,3176930502,2,NULL,0,'phucbuidoi','2024-06-15 23:44:53.957'),(34,3,3287820104,1,6,1,'sunphan','2024-06-16 09:51:26.753');
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comment`
--

DROP TABLE IF EXISTS `comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `comment` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `content` varchar(500) NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `book_id` bigint(20) DEFAULT NULL,
  `likes` bigint(20) DEFAULT NULL,
  `created_by` varchar(100) DEFAULT NULL,
  `date_created` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_comment_book` (`book_id`),
  KEY `fk_comment_user` (`user_id`),
  CONSTRAINT `fk_comment_book` FOREIGN KEY (`book_id`) REFERENCES `book` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_comment_user` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment`
--

LOCK TABLES `comment` WRITE;
/*!40000 ALTER TABLE `comment` DISABLE KEYS */;
INSERT INTO `comment` VALUES (39,'Good book!',1,3806869299,0,'phucbuidoi','2024-06-14 09:25:24');
/*!40000 ALTER TABLE `comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `genre`
--

DROP TABLE IF EXISTS `genre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `genre` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `genre_name` varchar(50) NOT NULL,
  `created_by` varchar(100) DEFAULT NULL,
  `date_created` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=775 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genre`
--

LOCK TABLES `genre` WRITE;
/*!40000 ALTER TABLE `genre` DISABLE KEYS */;
INSERT INTO `genre` VALUES (256,'Entertainment','PT','2024-06-14 16:07:38'),(304,'Education','PT','2024-06-14 16:07:38'),(418,'Comedy','PT','2024-06-14 16:07:38'),(429,'Color Book','PT','2024-06-14 16:07:38'),(464,'Personal Development','PT','2024-06-14 16:07:38'),(643,'Short Story','PT','2024-06-14 16:07:38'),(672,'Economy','PT','2024-06-14 16:07:38'),(733,'Psychology','PT','2024-06-14 16:07:38'),(774,'Novel','PT','2024-06-14 16:07:38');
/*!40000 ALTER TABLE `genre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `like_book`
--

DROP TABLE IF EXISTS `like_book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `like_book` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL,
  `book_id` bigint(20) NOT NULL,
  `created_by` varchar(100) NOT NULL,
  `date_created` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_like_book_user` (`user_id`),
  KEY `fk_like_book_book` (`book_id`),
  CONSTRAINT `fk_like_book_book` FOREIGN KEY (`book_id`) REFERENCES `book` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_like_book_user` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `like_book`
--

LOCK TABLES `like_book` WRITE;
/*!40000 ALTER TABLE `like_book` DISABLE KEYS */;
INSERT INTO `like_book` VALUES (13,1,3806869299,'phucbuidoi','2024-06-14 16:23:28.252'),(14,3,3287820104,'sunphan','2024-06-16 09:51:32.404');
/*!40000 ALTER TABLE `like_book` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `like_comment`
--

DROP TABLE IF EXISTS `like_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `like_comment` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL,
  `comment_id` bigint(20) NOT NULL,
  `created_by` varchar(100) NOT NULL,
  `date_created` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_like_comment_user` (`user_id`),
  KEY `fk_like_comment_comment` (`comment_id`),
  CONSTRAINT `fk_like_comment_comment` FOREIGN KEY (`comment_id`) REFERENCES `comment` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_like_comment_user` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=93 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `like_comment`
--

LOCK TABLES `like_comment` WRITE;
/*!40000 ALTER TABLE `like_comment` DISABLE KEYS */;
INSERT INTO `like_comment` VALUES (92,1,39,'phucbuidoi','2024-06-14 16:25:30.641');
/*!40000 ALTER TABLE `like_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `orders` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL,
  `total_price` decimal(8,2) NOT NULL,
  `created_by` varchar(100) DEFAULT NULL,
  `date_created` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_orders_user` (`user_id`),
  CONSTRAINT `fk_orders_user` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (5,1,260000.00,'phucbuidoi','2024-06-13 12:54:08'),(6,3,167200.00,'sunphan','2024-06-16 02:51:46'),(7,3,0.00,'sunphan','2024-06-16 02:56:46');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `publisher`
--

DROP TABLE IF EXISTS `publisher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `publisher` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `headquarters_location` varchar(200) DEFAULT NULL,
  `created_by` varchar(100) DEFAULT NULL,
  `date_created` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9879 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `publisher`
--

LOCK TABLES `publisher` WRITE;
/*!40000 ALTER TABLE `publisher` DISABLE KEYS */;
INSERT INTO `publisher` VALUES (1189,'One Pacific Holdings','Vietnam','PT','2024-06-14 16:07:38'),(1586,'Hồng Đức','Vietnam','PT','2024-06-14 16:07:38'),(2584,'ĐH Kinh Tế Quốc Dân','Vietnam','PT','2024-06-14 16:07:38'),(3553,'Công Thương','Vietnam','PT','2024-06-14 16:07:38'),(4556,'Thế Giới','Vietnam','PT','2024-06-14 16:07:38'),(4766,'Penguin Young Readers','UK','PT','2024-06-14 16:07:38'),(5970,'NXB Trẻ','Vietnam','PT','2024-06-14 16:07:38'),(7384,'NXB Thanh Niên','Vietnam','PT','2024-06-14 16:07:38'),(7527,'Dân Trí','Vietnam','PT','2024-06-14 16:07:38'),(8988,'Pearson','England','PT','2024-06-14 16:07:38'),(9197,'Hội Nhà Văn','Vietnam','PT','2024-06-14 16:07:38'),(9573,'Văn Học','Vietnam','PT','2024-06-14 16:07:38'),(9875,'Dorling Kindersley Ltd','US','PT','2024-06-14 16:07:38'),(9876,'Do Dinh Phuc','USA','phuccuc','2024-06-15 20:54:34.707'),(9877,'Data Mining','US','phuccuc','2024-06-15 20:56:22.933'),(9878,'Do Phuc','USA','phuccuc','2024-06-16 22:13:34.815');
/*!40000 ALTER TABLE `publisher` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(10) NOT NULL,
  `created_by` varchar(100) DEFAULT NULL,
  `date_created` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` VALUES (1,'User',NULL,NULL),(2,'Admin',NULL,NULL);
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `type`
--

DROP TABLE IF EXISTS `type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `type` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `type_name` varchar(50) NOT NULL,
  `created_by` varchar(100) DEFAULT NULL,
  `date_created` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `type`
--

LOCK TABLES `type` WRITE;
/*!40000 ALTER TABLE `type` DISABLE KEYS */;
INSERT INTO `type` VALUES (1,'Book','PT','2024-06-14 16:02:13'),(2,'Magazine','PT','2024-06-14 16:02:13');
/*!40000 ALTER TABLE `type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `role_id` bigint(20) NOT NULL,
  `first_name` varchar(30) DEFAULT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(75) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `tel` varchar(20) DEFAULT NULL,
  `created_by` varchar(100) DEFAULT NULL,
  `date_created` varchar(100) DEFAULT NULL,
  `username` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_user_role` (`role_id`),
  CONSTRAINT `fk_user_role` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,1,NULL,'Phuc',NULL,NULL,NULL,NULL,NULL,'phucbuidoi','123456'),(2,2,NULL,'DoPhuc',NULL,NULL,NULL,NULL,NULL,'phuccuc','123456'),(3,1,NULL,'Thang',NULL,NULL,NULL,NULL,NULL,'sunphan','654321'),(4,1,'Phuc','Do','phucdo2912@gmail.com','Ho Chi Minh City, Viet Nam','0335136265','phuc','2024-06-15 20:28:00.66','phuc','phuc#1234'),(5,1,'Phuc','Do','ddphuc.ius@gmail.com','Ho Chi Minh City, Viet Nam','0335136265','phucne','2024-06-15 22:04:39.346','phucne','phuc#1234'),(6,1,'Phuc','Do','ITCSIU21219@student.hcmiu.edu.vn','Ho Chi Minh City, Viet Nam','0335136265','ITCSIU21219','2024-06-16 08:47:47.61','ITCSIU21219','phuc#1234');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-06-16 23:58:14
