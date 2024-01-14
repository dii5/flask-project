-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: May 01, 2023 at 02:30 PM
-- Server version: 8.0.31
-- PHP Version: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `flask2`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

DROP TABLE IF EXISTS `admins`;
CREATE TABLE IF NOT EXISTS `admins` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `communicate`
--

DROP TABLE IF EXISTS `communicate`;
CREATE TABLE IF NOT EXISTS `communicate` (
  `id` int NOT NULL,
  `name` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `topic` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `text` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `communicate`
--

INSERT INTO `communicate` (`id`, `name`, `email`, `topic`, `text`) VALUES
(0, 'aFADSFAS', '1mohammedjassim1@gmail.com', 'ADfasdfasdfadsf', 'waeegfadvfdsssssssssssssssssssssssssssssssssssssssssssssssssssssssssssss');

-- --------------------------------------------------------

--
-- Table structure for table `graduat`
--

DROP TABLE IF EXISTS `graduat`;
CREATE TABLE IF NOT EXISTS `graduat` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `section` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `date graduat` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `graduat`
--

INSERT INTO `graduat` (`id`, `name`, `section`, `date graduat`) VALUES
(1, 'علي احمد حسين', 'كلية الصيدلة', '2001-12-01'),
(2, 'يونس حسن عبد العزيز', 'طب اسنان', '2000-01-19'),
(3, 'باسم علي محمد', 'كلية تربية الصرفه', '1990-12-02'),
(4, 'محمد باسل عبد', 'تربية رياضه', '2002-01-06'),
(5, 'تبارك حيدر ساري', 'كلية الحاسوب وتكنلوجيا المعلومات', '2002-02-02'),
(6, 'فاطمه  يونس مصطفئ', 'كلية الحاسوب وتكنلوجيا المعلومات', '2002-02-02'),
(7, 'زهراء علي احمد ', 'كلية القانون', '2001-12-01'),
(8, 'منار فاضل عبيد', 'كليه الصيدله', '2002-01-06'),
(9, 'هنادي خشان طعمه', 'كليه الصيدله', '2003-11-27'),
(10, 'فاطمه رحيم عباس ', 'طب الاسنان', '2004-03-19'),
(11, 'غدير عادل عدي', 'كلية الحاسوب وتكنلوجيا المعلومات', '2004-05-05'),
(12, 'تبارك فراس عبد الكريم', 'طب الاسنان', '2002-02-19'),
(13, 'زينب علي محسن ', 'كلية الزراعة', '2002-11-18'),
(14, 'يقين محسن حمد', 'كلية الصيدله', '2001-08-03'),
(15, 'زهراء عبد هاشم ', '', '2000-11-06'),
(16, 'منار مجيد حبيب ', 'كليه الصيدله', '2000-10-25'),
(17, 'روان فالح عبدلله', 'كليه الزراعه', '2003-01-26'),
(18, 'مرام فالح عبدلله', 'كلية الحاسوب وتكنلوجيا المعلومات', '2002-03-03'),
(19, 'زينب حسين عويد ', 'طب الاسنان', '2003-05-13'),
(20, 'زينب مهدي حسين ', 'كلية الزراعة', '2002-10-05'),
(21, 'منتهئ عبد عيد', 'كليه الصيدله', '2001-07-22'),
(22, 'محمد حسن علي', 'كلية الاداره والاقتصاد ', '2001-12-01'),
(23, 'سيف فاضل محمد', 'يونس علي عبد العزيز', '2003-05-13'),
(24, 'mohammed', 'computer', '2023-04-28'),
(25, 'ali ahmed', 'computer', '2000-02-28');

-- --------------------------------------------------------

--
-- Table structure for table `last_news`
--

DROP TABLE IF EXISTS `last_news`;
CREATE TABLE IF NOT EXISTS `last_news` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `description` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `image` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `date` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `last_news`
--

INSERT INTO `last_news` (`id`, `title`, `description`, `image`, `date`) VALUES
(5, 'lraq is one', 'fasddfmnasdfasdfgasdfa', 'large_1.png', NULL),
(6, 'asdaf', 'fassssssssss', 'large__1_-removebg-preview.png', '2023-04-28'),
(7, 'asdaf', 'fassssssssss', 'large__1_-removebg-preview.png', '2023-04-28'),
(8, 'sfadsfdafsasdf', 'adsfasdfasd', 'large__1_-removebg.png', '2023-04-28'),
(9, 'sfadsfdafsasdf', 'adsfasdfasd', 'large__1_-removebg.png', '2023-04-28'),
(10, 'ergwqqqqqqqqqqqqqq', 'qwefqwfqwfqwf', 'large.png', '2023-04-28'),
(11, 'صرفة واسط تناقش الآثار الناجمة عن تطور التكنولوجيا والذكاء الاصطناعي', 'أقام قسم علوم الحاسوب في كلية التربية للعلوم الصرفة بجامعة واسط ورشة علمية بعنوان( اثر التكنولوجيا على الأيدي العاملة ) بحضور عدد من تدريسي وطلبة الكلية .\r\n\r\nهدفت الورشة التي حاضر فيها المدرس المساعد مهدي خلف منشد والمدرس المساعد مروه محمد عبود إلى ا', '320480592_884162362717653_6125168826704460566_n-1024x576.jpg', '2023-04-30'),
(12, 'وفد من صرفة واسط ينظم زيارة إلى دار الوفاء للمسنين', 'نظم قسم الرياضيات في كلية التربية للعلوم الصرفة جامعة واسط زيارة إلى دار الوفاء للمسنين برفقة الدكتور علي خلف معاون العميد للشؤون العلمية و رئيس و أساتذة وطلبة القسم\r\n\r\nوقال الدكتور علي خلف إن هدف الزيارة هو زرع البسمة على وجوه أهلنا من المسنين في ال', '320157463_1189988635249174_4189088806658320664_n-1024x768.jpg', '2023-04-30'),
(13, 'صرفة واسط تقيم ورشة عمل عن فصائل الدم وتأثيرها على جسم الانسان', '\r\nصرفة واسط تقيم ورشة عمل عن فصائل الدم وتأثيرها على جسم الانسان\r\nأقام قسم علوم الحياة بالتعاون مع شعبة الإعلام في كلية التربية للعلوم الصرفة جامعة واسط ورشة عمل بعنوان فصائل الدم وتاثيرها على جسم الانسان حاضر فيها مجموعة من طلبة المرحلة الرابعة في ا', '319920473_697786855277825_8616131191781113889_n-768x1024.jpg', '2023-04-30'),
(14, 'صرفة واسط تنظم زيارة علمية إلى المعهد الفني في الكوت', 'عقد مجلس كلية التربية للعلوم الصرفة بجامعة واسط جلسته الثامنة الاعتيادية للعام الدراسي ٢٠٢٢/٢٠٢٣ برئاسة الأستاذ الدكتور علي حسين شعاع الطائي عميد الكلية وبحضور جميع أعضاء المجلس\r\nوناقش المجلس عددا من الملفات والموضوعات العلمية والإدارية والخدمية والت', 'photo_2023-01-08_08-53-50-1024x768.jpg', '2023-04-30'),
(15, 'تعاون مشترك بين كلية التربية للعلوم الصرفة وثانوية اوروك', 'تعاون علمي مشترك بين كلية التربية للعلوم الصرفة وجامعة اوروك..ضمن اطار التعاون بين جامعة واسط والجامعات العراقية وضمن الانشطة العلمية لكلية التربية للعلوم الصرفة شارك الدكتور نصير علي حسين معاون العميد للشؤون العلمية والتدريسي في قسم علوم الحاسبات في', '246142423_1376284256100291_7750423312229463092_n-1_1.jpg', '2023-04-30'),
(16, 'كلية التربية للعلوم الصرفة جامعة واسط تقيم ورشة عمل حول تطبيق نظام المقررات الدراسية في الجامعات العراقية', '\r\nكلية التربية للعلوم الصرفة جامعة واسط تقيم ورشة عمل حول تطبيق نظام المقررات الدراسية في الجامعات العراقية\r\nاقامت كلية التربية للعلوم الصرفة جامعة واسط ورشة عمل بعنوان تطبيق نظام المقررات الدراسية في الجامعات العراقية في مختبر قسم الحاسبات والتي ألق', '58461522_689300344843962_5614643457084620800_n.jpg', '2023-04-30');

-- --------------------------------------------------------

--
-- Table structure for table `last_search`
--

DROP TABLE IF EXISTS `last_search`;
CREATE TABLE IF NOT EXISTS `last_search` (
  `id` int NOT NULL,
  `title` varchar(222) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `description` varchar(222) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `image` varchar(222) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `last_search`
--

INSERT INTO `last_search` (`id`, `title`, `description`, `image`) VALUES
(0, 'asssssssssssssssssss', 'aaaaaaaaaaaaaaaaaaaaaa', 'stock-photo-dragon-plushie-doll-isolated-on-white-background-with-shadow-reflection-dragon-plush-stuffed-625614149.jpg'),
(0, 'asssssssssssssssssss', 'aaaaaaaaaaaaaaaaaaaaaa', 'stock-photo-dragon-plushie-doll-isolated-on-white-background-with-shadow-reflection-dragon-plush-stuffed-625614149.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

DROP TABLE IF EXISTS `members`;
CREATE TABLE IF NOT EXISTS `members` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `section` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `date graduat` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`id`, `name`, `section`, `date graduat`) VALUES
(1, 'علي احمد حسين', 'كلية الصيدلة', '2001-12-01'),
(2, 'يونس حسن عبد العزيز', 'طب اسنان', '2000-01-19'),
(3, 'باسم علي محمد', 'كلية تربية الصرفه', '1990-12-02'),
(4, 'محمد باسل عبد', 'تربية رياضه', '2002-01-06'),
(5, 'تبارك حيدر ساري', 'كلية الحاسوب وتكنلوجيا المعلومات', '2002-02-02'),
(6, 'فاطمه  يونس مصطفئ', 'كلية الحاسوب وتكنلوجيا المعلومات', '2002-02-02'),
(7, 'زهراء علي احمد ', 'كلية القانون', '2001-12-01'),
(8, 'منار فاضل عبيد', 'كليه الصيدله', '2002-01-06'),
(9, 'هنادي خشان طعمه', 'كليه الصيدله', '2003-11-27'),
(10, 'فاطمه رحيم عباس ', 'طب الاسنان', '2004-03-19'),
(11, 'غدير عادل عدي', 'كلية الحاسوب وتكنلوجيا المعلومات', '2004-05-05'),
(12, 'تبارك فراس عبد الكريم', 'طب الاسنان', '2002-02-19'),
(13, 'زينب علي محسن ', 'كلية الزراعة', '2002-11-18'),
(14, 'يقين محسن حمد', 'كلية الصيدله', '2001-08-03'),
(15, 'زهراء عبد هاشم ', '', '2000-11-06'),
(16, 'منار مجيد حبيب ', 'كليه الصيدله', '2000-10-25'),
(17, 'روان فالح عبدلله', 'كليه الزراعه', '2003-01-26'),
(18, 'مرام فالح عبدلله', 'كلية الحاسوب وتكنلوجيا المعلومات', '2002-03-03'),
(19, 'زينب حسين عويد ', 'طب الاسنان', '2003-05-13'),
(20, 'زينب مهدي حسين ', 'كلية الزراعة', '2002-10-05'),
(21, 'منتهئ عبد عيد', 'كليه الصيدله', '2001-07-22'),
(22, 'محمد حسن علي', 'كلية الاداره والاقتصاد ', '2001-12-01'),
(23, 'سيف فاضل محمد', 'يونس علي عبد العزيز', '2003-05-13'),
(25, 'ali ahmed', 'computer', '2000-02-28'),
(26, 'ali ahmed majwd', 'computer', '2003-05-28');

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

DROP TABLE IF EXISTS `projects`;
CREATE TABLE IF NOT EXISTS `projects` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name_project` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `students` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `date` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `name_project`, `students`, `date`) VALUES
(1, 'Text Steganography in Videos Using ASCII Code Values	', '/أحمد محمود حسن\n/محمد جاسم عبد الساده/محمد المنتظر /رشدي حميد\nحسن عبدالهادي فاضل', NULL),
(2, 'Student Information System for Primary School', 'فاطمه باسم جاسم\n/ساره علي فارس\n/احمد اياد جليل', NULL),
(3, 'Vehicle Detection & Tracking in Video', 'استبرق عبا س\nزهراء ريسان فضل/\nفاطمة عدنان كاظم/', NULL),
(4, 'Developing A Suitable Framework for The Online Pharmacy in Iraq', 'ية احمد هاشم\n/نور الهدى خالد شاكر\n/بنين سعيد محسن\n/زهراء معتصم عبد الرزاق', NULL),
(5, 'Automatic Fruit Image Classification System	', 'زهراء حيدر عزيز\n/ميامين عبد الكريم\n/اديان احمد\n/زينب حبيب عبدالوهاب', NULL),
(6, 'Website Builder Project using ASP.Net Core.', 'حسين نعيم محمود\n/امير فخري ابراهيم\n/كرار حيدر هادي\n/ضحى مكي منشد', NULL),
(7, 'Design and Implementation of E-Commerce Site for Online Shopping', 'زهراء باسم صالح\n/ازل ميثم عبد الكريم\n/سنا محمد هادي', NULL),
(8, 'Study Noise Effect on Transmission Speed of Developed Mobile Networks', '	زين العابدين ماهر عبد الأمير\n/سيف عباس محسن حميدي\n/نرجس فارس هادي حمزه', NULL),
(9, 'News Multiclass Categorization', 'أرواد حسين علي\n/ايات سعد حمزه\n/علياء صلاح مهدي', NULL),
(10, 'Design And Build A Program for Managing Health Care Services for The Expectant Mother and Child.', 'زينب سالم خليف\n/صباح رزاق\n/غدير حيدر', NULL),
(11, 'Smart Pharmacy An Application of The Internet of Things', '	زينب هويد\n/نور احمد\n/فاطمة طالب', NULL),
(12, 'GLP Good Laboratory Practice', 'سجاد بهجت عطية\n/علي عدنان داخل\n/دانية ساجد عبد الخضر', NULL),
(13, 'Image Enhancement with Deep Learning', '	مصطفى فاضل علي\n/زينب شاكر نوري\n/شكريه سعيد مندي\n/حيدر عبدالحميد', NULL),
(14, 'Installment System Management Software', 'علي مازن صباح\n/رقيه علاء حسين\n/رنا حسن علي درباش', NULL),
(15, 'Design and Implement Selling Management System', 'عمار شاكر عكروك\n/زهراء ناصر حميد\n/استبرق رسول عبيد', NULL),
(16, 'Automated Background Color Remover using Artificial Intelligence', 'فاطمة جواد كاظم\n/امنة محسن\n/رشا حمود', NULL),
(17, 'Design And Implement An Educational Game for Kindergarten and Primary School', 'احمد موسى حسين\n/دلال صالح جرس\n/فاطمة شاكر حسن', NULL),
(18, 'Clustering Candidates Based on Multiple Election Circles', 'راضي احمد راضي\n/محمد حسن كاظم\n/امير سعد حمزة', NULL),
(19, 'Anonymous Chat System To Improve Student’s Interaction for Online Classes', 'مريم عبد الامير عوده/ مريم حسين اسماعيل\nاسمهان صالح عبد الرضا/', NULL),
(20, 'Link Prediction In Social Network Platform', '	نور الهدى هادي حميد\n/خديجه كاظم محمد\n/زينب علي عبد سلمان', NULL),
(21, 'asdfasdf', 'adfasdfasdfasdfas', NULL),
(22, 'asdfasdf', 'adfasdfasdfasdfas', NULL),
(23, 'wrqrqqqqqqqqqqqq', 'wwwwwwwwwwwwwwww', '2023-04-28'),
(24, 'mohammed', 'computer', '2023-04-28');

-- --------------------------------------------------------

--
-- Table structure for table `statistics`
--

DROP TABLE IF EXISTS `statistics`;
CREATE TABLE IF NOT EXISTS `statistics` (
  `id` int NOT NULL AUTO_INCREMENT,
  `masters` int NOT NULL,
  `research` int NOT NULL,
  `students` int NOT NULL,
  `colleges` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `statistics`
--

INSERT INTO `statistics` (`id`, `masters`, `research`, `students`, `colleges`) VALUES
(1, 0, 432, 5, 345),
(2, 33, 44, 55, 66),
(3, 333, 444, 555, 666),
(4, 432, 43, 33222, 21);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
