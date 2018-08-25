-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 26, 2018 at 12:28 AM
-- Server version: 10.1.29-MariaDB
-- PHP Version: 7.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `movie_db`
--
CREATE DATABASE IF NOT EXISTS `movie_db` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `movie_db`;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_08_24_212943_create_movies_table', 1),
(4, '2018_08_24_213007_create_movie_assets_table', 1),
(5, '2018_08_24_213035_create_movie_ratings_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `movies`
--

CREATE TABLE `movies` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `about` longtext COLLATE utf8_unicode_ci NOT NULL,
  `year` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `movies`
--

INSERT INTO `movies` (`id`, `title`, `about`, `year`, `created_at`, `updated_at`) VALUES
(2, 'Deadpool', 'Deadpool is a 2016 American superhero film based on the Marvel Comics character of the same name, distributed by 20th Century Fox. It is the eighth installment of the X-Men film series, and the first standalone Deadpool film. Directed by Tim Miller from a screenplay by Rhett Reese and Paul Wernick, the film stars Ryan Reynolds in the title role alongside Morena Baccarin, Ed Skrein, T.J. Miller, Gina Carano, and Brianna Hildebrand. In the film, Wade Wilson hunts down the man who gave him mutant abilities, but also a scarred physical appearance, as the antihero Deadpool.\r\n\r\nDevelopment of a Deadpool film starring Reynolds began in February 2004, before he went on to play the character in X-Men Origins: Wolverine in 2009. Reese and Wernick were hired in 2010, and worked with Reynolds to more faithfully adapt the character (including his fourth wall breaking) after the portrayal in Wolverine was criticized for not doing so. Miller was hired in 2011 for his directorial debut, and an enthusiastic response to leaked test footage he created with Reynolds led to a green light from Fox in 2014. Additional casting began in early 2015, and filming took place in Vancouver from March to May. Visual effects were provided by multiple vendors and ranged from the addition of blood and gore to the creation of the CG character Colossus.\r\n\r\nDeadpool was released in the United States on February 12, 2016, after an unconventional viral marketing campaign. The film became both a financial and critical success. It earned over $783 million against a $58 million budget, broke numerous records, and became the overall highest-grossing R-rated film, the highest-grossing X-Men film, and the ninth-highest-grossing film of 2016. Deadpool received critical praise for Reynolds\'s performance, the film\'s style and faithfulness to the comics, and its action, though some criticized the plot as formulaic as well as the sheer number of jokes in the film. It also received numerous awards and nominations, including two Critics\' Choice Award wins and two Golden Globe nominations. A sequel, Deadpool 2, was released in May 2018.', '2018', '2018-08-25 17:24:49', '2018-08-25 17:24:49');

-- --------------------------------------------------------

--
-- Table structure for table `movie_assets`
--

CREATE TABLE `movie_assets` (
  `id` int(10) UNSIGNED NOT NULL,
  `movie_id` int(11) NOT NULL,
  `asset_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `movie_assets`
--

INSERT INTO `movie_assets` (`id`, `movie_id`, `asset_type`, `link`, `created_at`, `updated_at`) VALUES
(1, 2, 'image', 'uploads/1535222027Deadpool.jpg', '2018-08-25 17:33:47', '2018-08-25 17:33:47'),
(2, 2, 'image', 'uploads/1535222116Deadpool.jpg', '2018-08-25 17:35:17', '2018-08-25 17:35:17'),
(3, 2, 'video', 'uploads/1535223475Deadpool.mp4', '2018-08-25 17:57:55', '2018-08-25 17:57:55'),
(4, 2, 'image', 'uploads/1535225305Deadpool.jpg', '2018-08-25 18:28:25', '2018-08-25 18:28:25');

-- --------------------------------------------------------

--
-- Table structure for table `movie_ratings`
--

CREATE TABLE `movie_ratings` (
  `id` int(10) UNSIGNED NOT NULL,
  `movie_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `comment` text COLLATE utf8_unicode_ci NOT NULL,
  `rating` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `movie_ratings`
--

INSERT INTO `movie_ratings` (`id`, `movie_id`, `name`, `email`, `comment`, `rating`, `created_at`, `updated_at`) VALUES
(1, 2, 'micheal', 'michealakinwonmi@gmail.com', 'This is a wonderful movie', 5, '2018-08-25 19:20:41', '2018-08-25 19:20:41'),
(2, 2, 'micheal', 'michealakinwonmi@gmail.com', 'This is a wonderful movie', 5, '2018-08-25 19:21:47', '2018-08-25 19:21:47'),
(3, 2, 'Dr. Lorna Rohan PhD', 'calista65@example.net', 'Quis repellendus distinctio minima voluptas. Molestiae iusto ut et natus ad. Autem qui soluta et saepe fugit. Facilis id odio dolorem alias.', 4, '2018-08-25 19:33:29', '2018-08-25 19:33:29'),
(4, 2, 'Malinda Bednar', 'scartwright@example.net', 'Eligendi natus earum dignissimos temporibus quasi. Molestiae quae dicta culpa non ut. Dolorem reprehenderit quis labore unde impedit.', 2, '2018-08-25 19:33:29', '2018-08-25 19:33:29'),
(5, 2, 'Kirk Schmitt', 'bmaggio@example.com', 'Odit quia saepe sit explicabo ut facilis enim. Facilis nam quaerat est. Voluptatem error suscipit explicabo cumque sed autem amet. Autem et tenetur voluptatem non. Omnis dolore sed id quis et odio.', 3, '2018-08-25 19:33:29', '2018-08-25 19:33:29'),
(6, 2, 'Noelia Emard', 'ogoyette@example.org', 'Quod quia laudantium voluptas et. Sit saepe eius dolores totam. Quis consequatur blanditiis omnis at ut. Libero est excepturi et officia blanditiis.', 2, '2018-08-25 19:33:29', '2018-08-25 19:33:29'),
(7, 2, 'Opal Crooks III', 'flabadie@example.org', 'Optio doloremque suscipit quibusdam in eius. Sequi est praesentium qui dicta totam est. Placeat eligendi possimus dolorum voluptas saepe.', 5, '2018-08-25 19:33:29', '2018-08-25 19:33:29'),
(8, 2, 'Mr. Duncan Keeling IV', 'tromp.roger@example.org', 'Voluptates ipsa ut quia. Sed deleniti facere voluptates magnam ad voluptas. Repellendus aliquam expedita impedit. Odit et ipsam voluptatum ea.', 4, '2018-08-25 19:33:29', '2018-08-25 19:33:29'),
(9, 2, 'Aliyah Williamson', 'emmanuel71@example.com', 'Ut officiis rem amet modi. Voluptatem iure aperiam veritatis quis nemo adipisci. Est facere dicta expedita fugit provident omnis.', 4, '2018-08-25 19:33:29', '2018-08-25 19:33:29'),
(10, 2, 'Elnora Tillman', 'kuhn.blanca@example.org', 'Et porro fuga aut temporibus sint sint et totam. Tempore maxime itaque assumenda recusandae. Ea ducimus in vitae accusamus praesentium nulla.', 5, '2018-08-25 19:33:29', '2018-08-25 19:33:29'),
(11, 2, 'Earlene Barrows', 'schinner.agnes@example.net', 'Tempora minus animi qui reprehenderit. Optio cumque qui temporibus aut consectetur sed ea.', 2, '2018-08-25 19:33:29', '2018-08-25 19:33:29'),
(12, 2, 'Dr. Eusebio Hayes MD', 'ova.friesen@example.org', 'Ducimus quos unde eos velit commodi eveniet. A beatae voluptates facilis reiciendis. Aut sint id exercitationem voluptatem pariatur.', 3, '2018-08-25 19:33:29', '2018-08-25 19:33:29'),
(13, 2, 'Dr. Dedrick Kovacek', 'sdubuque@example.com', 'Dolor non praesentium et voluptatem. Dicta blanditiis facere ut doloribus eum. Sequi et eos sed aut. Sit doloribus quam recusandae sit omnis quisquam natus. Deleniti aut ut inventore accusamus modi.', 4, '2018-08-25 19:33:29', '2018-08-25 19:33:29'),
(14, 2, 'Heidi Hartmann I', 'maiya05@example.net', 'Qui dicta et tempore molestiae explicabo. Excepturi assumenda ea deserunt quisquam eos. Dolore aspernatur officiis id dignissimos ut.', 4, '2018-08-25 19:33:29', '2018-08-25 19:33:29'),
(15, 2, 'Felix Sporer III', 'rpadberg@example.net', 'Consectetur doloribus autem tenetur corporis. Repellendus rem temporibus deserunt dicta enim ut.', 1, '2018-08-25 19:33:29', '2018-08-25 19:33:29'),
(16, 2, 'Raegan Maggio III', 'quitzon.phyllis@example.net', 'Beatae laborum nemo autem placeat sint. Commodi ipsa nesciunt sint aut eum sunt. Aliquid nihil rerum delectus distinctio omnis ut quaerat.', 4, '2018-08-25 19:33:29', '2018-08-25 19:33:29'),
(17, 2, 'Miss Vergie Bogisich PhD', 'lavada.witting@example.com', 'Odit molestiae dolor qui harum perspiciatis nisi voluptatem. Provident sequi adipisci amet et. Qui recusandae et eligendi sint rerum nobis sed provident. Ipsum et voluptas in aut.', 5, '2018-08-25 19:33:29', '2018-08-25 19:33:29'),
(18, 2, 'Percy Koch', 'wheaney@example.com', 'Eveniet aut officiis harum quis. Modi quidem ut corrupti animi. Quam sapiente eos necessitatibus impedit deserunt.', 1, '2018-08-25 19:33:29', '2018-08-25 19:33:29'),
(19, 2, 'Adolph Gutkowski', 'areynolds@example.net', 'Vel totam neque aspernatur. Dignissimos harum quam quo vel. Temporibus ipsam vero fugit ex omnis. Voluptatem ratione non omnis reiciendis sint.', 4, '2018-08-25 19:33:29', '2018-08-25 19:33:29'),
(20, 2, 'Mrs. Elda Purdy', 'dereck.schumm@example.net', 'Est dignissimos et voluptatum ut. Cupiditate impedit eos et dolore. Asperiores minus rem omnis dolorem consequuntur voluptate et unde. Occaecati ducimus fugiat aut rerum hic odio illum voluptatum.', 4, '2018-08-25 19:33:29', '2018-08-25 19:33:29'),
(21, 2, 'Prof. Ian Berge', 'schuster.kelly@example.com', 'Nihil eos sit et reprehenderit quam et. Ut impedit omnis amet magni vero ut nobis veritatis. Nostrum eos impedit possimus quidem doloremque velit. Unde ratione tenetur odio quasi.', 3, '2018-08-25 19:33:29', '2018-08-25 19:33:29'),
(22, 2, 'Prof. Cary Howe', 'tlangworth@example.net', 'Et facere ipsam odit qui repellendus. Molestiae tenetur commodi aut. Ut delectus sit qui libero ut.', 5, '2018-08-25 19:33:29', '2018-08-25 19:33:29'),
(23, 2, 'Nico Murazik', 'broderick.witting@example.net', 'Tempore amet et similique necessitatibus. Aut quisquam aspernatur explicabo tenetur. Possimus facilis commodi ipsa eum ipsam modi et.', 5, '2018-08-25 19:33:30', '2018-08-25 19:33:30'),
(24, 2, 'Mr. Russell Corkery V', 'nikita30@example.com', 'Nihil qui consequatur quia sit. Quo molestiae ipsam dolorem et modi. Mollitia omnis ullam consectetur.', 4, '2018-08-25 19:33:30', '2018-08-25 19:33:30'),
(25, 2, 'Prof. Wilma Pfannerstill Sr.', 'griffin78@example.org', 'Veritatis est temporibus magnam id. Non tenetur dicta eum natus. Sed eligendi ut et quos facilis ut. Magni enim harum vero iste.', 3, '2018-08-25 19:33:30', '2018-08-25 19:33:30'),
(26, 2, 'Stefan Schaefer', 'alison.ward@example.org', 'Id veritatis quisquam nostrum. Iste ut qui aut id quam. Et iusto enim tenetur ipsam minus vitae et repudiandae. Ut illo ea consequatur cum voluptate. Eius vitae pariatur quas ut perferendis commodi.', 5, '2018-08-25 19:33:30', '2018-08-25 19:33:30'),
(27, 2, 'Augustus Schulist', 'iryan@example.org', 'Sint recusandae harum blanditiis quia. Sed tenetur sed architecto sint. Voluptatem porro voluptatem voluptates veritatis eveniet numquam.', 4, '2018-08-25 19:33:30', '2018-08-25 19:33:30'),
(28, 2, 'Roberto Jaskolski', 'treva04@example.net', 'Temporibus sunt est officia eum sed soluta. Maiores aut dicta possimus nulla quam tempora. Placeat doloribus sit et autem dolores aut ipsa. Velit ut natus assumenda.', 1, '2018-08-25 19:33:30', '2018-08-25 19:33:30'),
(29, 2, 'Dominique Muller', 'okeefe.viviane@example.net', 'Dignissimos voluptas aut qui. Nisi reprehenderit non sit non quo. Iste eveniet nihil qui dolorem ducimus.', 5, '2018-08-25 19:33:30', '2018-08-25 19:33:30'),
(30, 2, 'Lloyd Wilkinson', 'gianni66@example.com', 'Rerum modi fugiat fugit ipsa repellat itaque. Esse cupiditate sit voluptatem nam in qui at. Aperiam omnis voluptas ut aliquam cumque voluptatem.', 4, '2018-08-25 19:33:30', '2018-08-25 19:33:30'),
(31, 2, 'Theron Schiller', 'gia.adams@example.net', 'Nam nulla repellendus possimus. Consequuntur aut ducimus corporis maiores labore quos vitae aperiam. Dolor quas asperiores voluptas dicta doloribus eius et deserunt.', 2, '2018-08-25 19:33:30', '2018-08-25 19:33:30'),
(32, 2, 'Eunice Huels', 'adell.luettgen@example.net', 'Architecto eligendi maiores laboriosam et. Sit voluptatum tempore veritatis ea ipsum est. Ut iure nihil eum laborum.', 3, '2018-08-25 19:33:30', '2018-08-25 19:33:30'),
(33, 2, 'Gerda Reilly Jr.', 'rodriguez.lexi@example.org', 'Ea corrupti porro eum rerum voluptate nobis. Impedit reprehenderit voluptatem earum esse et qui.', 4, '2018-08-25 19:33:30', '2018-08-25 19:33:30'),
(34, 2, 'Lennie Reinger', 'rafaela.bergnaum@example.net', 'Tenetur asperiores eum quam dolorum optio totam. Quia asperiores voluptatem quaerat. Pariatur doloribus illo exercitationem ducimus voluptas magnam.', 5, '2018-08-25 19:33:30', '2018-08-25 19:33:30'),
(35, 2, 'Missouri Mohr', 'lang.alaina@example.net', 'Omnis est a quis mollitia ab esse fugiat. Quas quod in laborum culpa. Voluptatem autem non aut omnis enim. Corporis voluptas explicabo unde dolorum sunt. Dolorum inventore quod similique est.', 4, '2018-08-25 19:33:30', '2018-08-25 19:33:30'),
(36, 2, 'Emmitt Langworth', 'glover.emory@example.net', 'Natus quidem ut ut aut. Et minima architecto officiis veniam accusamus hic ad. Iste qui corporis libero culpa. Quibusdam consequatur quia et labore aut sunt.', 2, '2018-08-25 19:33:30', '2018-08-25 19:33:30'),
(37, 2, 'Prof. Skyla Schiller', 'efriesen@example.com', 'Et fugiat nihil nemo. Dolorem autem autem optio molestiae. Occaecati repudiandae corrupti ipsa. Odio molestias itaque earum ab autem animi.', 4, '2018-08-25 19:33:30', '2018-08-25 19:33:30'),
(38, 2, 'Fleta Will MD', 'ghermiston@example.net', 'Rem ea non reiciendis nemo necessitatibus. Voluptatum eos necessitatibus harum quos aut eligendi. Cupiditate praesentium illo quas perspiciatis nobis aperiam est. Vel ab illo enim voluptas iusto quo.', 3, '2018-08-25 19:33:30', '2018-08-25 19:33:30'),
(39, 2, 'Cristobal Rau', 'kristian.schroeder@example.org', 'Commodi vel adipisci veritatis eaque eum. Corrupti quasi facere consequatur minima asperiores iste minus. Sit repudiandae maxime non.', 4, '2018-08-25 19:33:30', '2018-08-25 19:33:30'),
(40, 2, 'Karlie Nienow', 'erdman.ronaldo@example.net', 'Perferendis sed in et tenetur dolor cumque. Excepturi nesciunt ab laborum reprehenderit totam totam doloribus. Ea molestiae blanditiis dolores.', 4, '2018-08-25 19:33:30', '2018-08-25 19:33:30'),
(41, 2, 'Makenna Aufderhar', 'fshields@example.net', 'Amet occaecati error at dolorum. Suscipit sapiente soluta eos ut et debitis veniam impedit. Ut esse incidunt laudantium aut impedit expedita quia.', 4, '2018-08-25 19:33:30', '2018-08-25 19:33:30'),
(42, 2, 'Christiana Russel', 'pfeffer.lorenza@example.com', 'Sapiente dolores quasi est dolorem omnis. Doloribus voluptatum iure quidem ut facere molestiae sed impedit. Harum qui architecto facilis. Illo ut incidunt est est architecto dolor.', 4, '2018-08-25 19:33:30', '2018-08-25 19:33:30'),
(43, 2, 'Claire Roberts', 'dubuque.delpha@example.org', 'Eaque rerum dolorem quo qui. Officia ipsa autem vel et dolorem assumenda ut. Quia cupiditate aperiam temporibus vitae consectetur accusantium. Aut voluptatum autem dolorem ab quia cupiditate.', 5, '2018-08-25 19:33:30', '2018-08-25 19:33:30'),
(44, 2, 'Dr. Cassandre Mitchell', 'esta73@example.net', 'Sunt quo ut ducimus facilis ad inventore saepe. Enim excepturi ab aut et laborum tempore et. Ut magni distinctio quo sint iusto facere.', 5, '2018-08-25 19:33:30', '2018-08-25 19:33:30'),
(45, 2, 'Irwin Quigley', 'hill.orrin@example.net', 'Quia culpa error officia amet tenetur. Est molestiae pariatur nihil consequatur expedita. Voluptatem eligendi officiis ducimus rerum amet qui eos.', 1, '2018-08-25 19:33:30', '2018-08-25 19:33:30'),
(46, 2, 'Jasper Davis', 'amelia27@example.org', 'Deleniti culpa quia est odio adipisci est id sit. Ea eum expedita ipsum adipisci. Voluptatum commodi consectetur aut ullam blanditiis reprehenderit. Quod perspiciatis unde recusandae omnis aut.', 4, '2018-08-25 19:33:30', '2018-08-25 19:33:30'),
(47, 2, 'Evie Littel MD', 'jaylen.marvin@example.net', 'Dolorem porro qui distinctio et voluptas. Aut voluptatem quasi voluptas et aut facilis. Quia totam ducimus ut aut reiciendis qui quia cumque.', 3, '2018-08-25 19:33:30', '2018-08-25 19:33:30'),
(48, 2, 'Mr. Edward Morissette', 'efrain04@example.com', 'Laudantium quos dolorem inventore nam. Quia qui iusto recusandae cum et similique. Sapiente eaque cumque magnam expedita omnis ipsa deserunt. Aliquam et commodi commodi quis.', 1, '2018-08-25 19:33:30', '2018-08-25 19:33:30'),
(49, 2, 'Christophe Runte II', 'bortiz@example.org', 'Iure modi ipsa beatae id dolore. Et dolores autem at et et voluptas. Sint quaerat repudiandae labore dolor nesciunt accusantium eum.', 5, '2018-08-25 19:33:31', '2018-08-25 19:33:31'),
(50, 2, 'Prof. Maximus Flatley', 'lupe23@example.com', 'Doloremque nemo consectetur sit enim ea laborum aut. Aspernatur voluptates ut iste aperiam qui cum occaecati.', 1, '2018-08-25 19:33:31', '2018-08-25 19:33:31'),
(51, 2, 'Lorenzo VonRueden', 'hodkiewicz.tina@example.net', 'Quam quia consectetur voluptatibus voluptas debitis. Ex quia recusandae fugit magnam repudiandae eligendi. Saepe qui natus ipsum et deleniti repellendus fuga. Facilis aperiam culpa nihil repellendus.', 3, '2018-08-25 19:33:31', '2018-08-25 19:33:31'),
(52, 2, 'Josianne Larson', 'rylee39@example.net', 'Nihil facilis iure dolore quis necessitatibus. Omnis optio est qui sint consequatur. Rem aut maxime quas ut eum repellat consequuntur.', 2, '2018-08-25 19:33:31', '2018-08-25 19:33:31'),
(53, 2, 'Luther Moen', 'willms.lenore@example.com', 'Rerum architecto eligendi officia nisi nam dolore omnis. Nisi dignissimos est dicta porro asperiores culpa qui. Et officia iusto ut consequuntur quia cumque.', 4, '2018-08-25 20:52:42', '2018-08-25 20:52:42'),
(54, 2, 'Prof. Elwin Reynolds', 'johnson.shany@example.net', 'Nobis asperiores occaecati porro. Et beatae labore maxime amet. Qui modi deserunt inventore voluptate.', 5, '2018-08-25 20:52:42', '2018-08-25 20:52:42'),
(55, 2, 'Megane Legros', 'qwelch@example.org', 'Quia ducimus blanditiis iusto id reiciendis suscipit. Possimus omnis minus provident modi quis facere. Dolores possimus voluptate dicta modi minus. Vel eum officiis quasi corporis.', 4, '2018-08-25 20:52:42', '2018-08-25 20:52:42'),
(56, 2, 'Gabriel Oberbrunner', 'champlin.dean@example.org', 'Laboriosam aut dolorum possimus tenetur optio. Accusamus nulla enim expedita et quos ducimus illum. Fugit laudantium distinctio eum. Esse doloremque voluptas itaque.', 2, '2018-08-25 20:52:43', '2018-08-25 20:52:43'),
(57, 2, 'Braeden Monahan', 'nayeli76@example.org', 'Iusto animi illo qui. Repellat dolores excepturi aliquam sed eaque enim explicabo est.', 5, '2018-08-25 20:52:43', '2018-08-25 20:52:43'),
(58, 2, 'Ms. Betsy Flatley III', 'gottlieb.royce@example.com', 'Eligendi sed pariatur sed animi velit iste voluptas. Vero et et dolorem. Labore consectetur dignissimos aperiam velit et.', 1, '2018-08-25 20:52:43', '2018-08-25 20:52:43'),
(59, 2, 'Zetta Dibbert', 'cummerata.nichole@example.com', 'Sit distinctio doloremque ratione id. Et iste sit sed rerum consectetur ea iure autem. Quis sit quia ullam ut.', 1, '2018-08-25 20:52:43', '2018-08-25 20:52:43'),
(60, 2, 'Isadore Bode', 'rosalee.hagenes@example.net', 'Nisi deserunt est ratione necessitatibus aliquid eligendi. Et ut excepturi eum quo laudantium.', 3, '2018-08-25 20:52:43', '2018-08-25 20:52:43'),
(61, 2, 'Rico Schamberger', 'myrtice24@example.com', 'Alias blanditiis et vitae ut molestiae aut praesentium. Omnis occaecati nisi numquam unde unde deserunt. Et et ex voluptate qui maxime vel. Aspernatur commodi ut et.', 4, '2018-08-25 20:52:43', '2018-08-25 20:52:43'),
(62, 2, 'Lilliana Skiles', 'schuster.estelle@example.net', 'Quasi mollitia animi tempora et est qui quod. Temporibus blanditiis dolorem ut assumenda est. Sed magnam quis tempora beatae.', 4, '2018-08-25 20:52:43', '2018-08-25 20:52:43'),
(63, 2, 'Miss Angela McGlynn IV', 'myron66@example.org', 'Dicta qui quia sequi culpa quo sed. Fugit doloremque qui harum et autem. Ut iste omnis accusamus ducimus deleniti harum. Nostrum similique expedita ab quasi quas.', 2, '2018-08-25 20:52:43', '2018-08-25 20:52:43'),
(64, 2, 'Dr. Emmitt Bednar', 'crona.mario@example.net', 'Omnis minus minus nisi sit sed repellat pariatur. Numquam explicabo soluta sint nihil optio minus asperiores.', 5, '2018-08-25 20:52:43', '2018-08-25 20:52:43'),
(65, 2, 'Carmelo Wunsch', 'bennett43@example.org', 'Assumenda labore velit eos natus et. Error architecto quam delectus dolorum fugit eos expedita. Molestiae ut minima consequatur aliquam maxime. Maiores quaerat voluptas quia architecto consequuntur.', 3, '2018-08-25 20:52:43', '2018-08-25 20:52:43'),
(66, 2, 'Aisha Feil', 'hoppe.neal@example.com', 'Nam excepturi est similique eius aut et rerum. Necessitatibus temporibus vel asperiores aut doloribus. Ut sunt harum atque sit. Enim inventore eum rerum magni est.', 5, '2018-08-25 20:52:43', '2018-08-25 20:52:43'),
(67, 2, 'Chester Predovic', 'viola67@example.com', 'Rem rerum natus et voluptatibus ea. Voluptas non suscipit officia. Eum ducimus tempore earum vel sed in. Error error voluptas vitae sed labore.', 4, '2018-08-25 20:52:43', '2018-08-25 20:52:43'),
(68, 2, 'Jaylan Hermann', 'ohartmann@example.com', 'Quo quia tempore repellat omnis quisquam quo. Velit eius et voluptatem illo blanditiis rerum molestiae. Doloribus magnam nihil enim consequatur.', 2, '2018-08-25 20:52:43', '2018-08-25 20:52:43'),
(69, 2, 'Miss Sydnee Runte DDS', 'reilly32@example.net', 'Minus nobis numquam mollitia nihil qui eos et. Quia amet consequatur quo consequatur. Perferendis blanditiis labore ea quia. Ducimus qui quibusdam libero maiores id.', 3, '2018-08-25 20:52:43', '2018-08-25 20:52:43'),
(70, 2, 'Buck Marks IV', 'alexandria.daugherty@example.net', 'Eum minus est molestias. Non odit a in laudantium. Accusamus cumque aut ab ullam. Illum praesentium porro magnam dolores.', 1, '2018-08-25 20:52:43', '2018-08-25 20:52:43'),
(71, 2, 'Prof. Charley Oberbrunner I', 'vlarson@example.net', 'Recusandae deleniti porro excepturi aut nulla. Pariatur nesciunt quas eaque natus dolores autem quia. Molestiae et sint in quo quia et. Voluptatem blanditiis odit enim eum optio ut.', 2, '2018-08-25 20:52:43', '2018-08-25 20:52:43'),
(72, 2, 'Jodie Franecki', 'franco.davis@example.com', 'Aut non sed eligendi possimus nihil. Ut nesciunt et corrupti amet nemo qui.', 3, '2018-08-25 20:52:43', '2018-08-25 20:52:43'),
(73, 2, 'Kay Skiles Sr.', 'jaylon71@example.com', 'Voluptas ut dolores provident mollitia pariatur corrupti architecto. Adipisci incidunt minima ad facere magni hic. Aut sint praesentium amet sequi eum nobis quia. Et deserunt consequatur ut eos.', 2, '2018-08-25 20:52:43', '2018-08-25 20:52:43'),
(74, 2, 'Jayne Braun', 'ariel90@example.org', 'Consequuntur labore animi et beatae. Amet itaque voluptatum iure officiis sunt.', 4, '2018-08-25 20:52:44', '2018-08-25 20:52:44'),
(75, 2, 'Dr. Eino Lowe PhD', 'twest@example.net', 'Fuga voluptatem dignissimos error fuga expedita eaque ex voluptatem. Dicta nulla id quas vel perferendis. Consequatur maiores rerum libero.', 3, '2018-08-25 20:52:44', '2018-08-25 20:52:44'),
(76, 2, 'Marisa Gerhold', 'kabbott@example.com', 'Aut sit sed consequatur veritatis totam voluptas et natus. Sed tempore repellendus dolor repellendus odit. Et sunt molestias autem odio id. Omnis autem ut rerum reprehenderit ut sint.', 2, '2018-08-25 20:52:44', '2018-08-25 20:52:44'),
(77, 2, 'Freda Feil', 'kaelyn96@example.com', 'Est et quam unde inventore sequi culpa est. Aut possimus quidem iure nihil. Voluptas quia et sit et harum ea dolorem. Et incidunt sed est nam rerum.', 3, '2018-08-25 20:52:44', '2018-08-25 20:52:44'),
(78, 2, 'Therese Haag', 'jannie74@example.org', 'Voluptates doloribus itaque nisi. Quam sit error autem atque enim. Est consequatur repellendus occaecati in dolores. Voluptatem aliquid tenetur ea tempore eveniet nesciunt et.', 1, '2018-08-25 20:52:44', '2018-08-25 20:52:44'),
(79, 2, 'Casandra Wuckert Sr.', 'bmraz@example.org', 'Laborum veritatis impedit molestiae. Et ad dolorem inventore distinctio. Rerum deleniti accusantium et corporis omnis sed voluptatum. Sint eius odit aut incidunt enim culpa omnis.', 3, '2018-08-25 20:52:44', '2018-08-25 20:52:44'),
(80, 2, 'Miss Reanna Hansen', 'eabshire@example.org', 'Aperiam recusandae et sed dolor sunt rem. Ullam fuga qui alias vel aperiam officiis. Velit modi sed odio voluptatem. Assumenda repellendus molestiae sint totam quam.', 2, '2018-08-25 20:52:44', '2018-08-25 20:52:44'),
(81, 2, 'Luella Gaylord', 'ikoch@example.com', 'Ab cum eum impedit impedit ipsum consequuntur neque. Qui soluta voluptatibus autem quia.', 2, '2018-08-25 20:52:44', '2018-08-25 20:52:44'),
(82, 2, 'George Lemke', 'minnie25@example.org', 'Aut neque sequi ducimus nemo fugiat praesentium. Reiciendis voluptas autem quaerat eos est. Repellendus nisi voluptatem cum reiciendis autem. Et cum assumenda ipsum officiis culpa ipsum est illum.', 3, '2018-08-25 20:52:44', '2018-08-25 20:52:44'),
(83, 2, 'Prof. Joesph Stehr', 'bmante@example.com', 'Id sunt odit aspernatur ut earum. Quam fugit et asperiores quibusdam error est non.', 1, '2018-08-25 20:52:44', '2018-08-25 20:52:44'),
(84, 2, 'Prof. Nathanial Champlin DDS', 'kira.schiller@example.org', 'Et non fugit tempora eum et aut. Eius quae earum ea ea praesentium architecto. Consequuntur praesentium sit id vel id qui. Et aut doloribus qui numquam dolorem et error.', 5, '2018-08-25 20:52:44', '2018-08-25 20:52:44'),
(85, 2, 'Verner D\'Amore', 'pmarks@example.net', 'Fugiat at reiciendis nulla. Minima sint aut commodi et voluptatem nisi quas dolorem.', 1, '2018-08-25 20:52:44', '2018-08-25 20:52:44'),
(86, 2, 'Margaretta Hartmann', 'vschaefer@example.net', 'Deserunt odit et nostrum. Ullam sunt occaecati totam earum voluptas accusantium dolorum in. Aut nemo quas ipsum veniam a quia iste necessitatibus.', 1, '2018-08-25 20:52:44', '2018-08-25 20:52:44'),
(87, 2, 'Donnell Altenwerth', 'fredrick.mills@example.org', 'Et dolorem assumenda accusantium non. Voluptatem hic minus quas adipisci. Id eos officia nemo sint nesciunt.', 3, '2018-08-25 20:52:44', '2018-08-25 20:52:44'),
(88, 2, 'Celine Wilderman', 'german.hegmann@example.org', 'Exercitationem deserunt laudantium accusamus et enim eum. Veritatis quibusdam expedita tempora et. Non voluptas ipsam doloribus ea id architecto impedit ipsum.', 2, '2018-08-25 20:52:44', '2018-08-25 20:52:44'),
(89, 2, 'Berneice Muller II', 'clifton98@example.net', 'Dicta officia sit eum dolorum ut iste. Dolores et laudantium molestiae esse. Sit et ullam corporis.', 4, '2018-08-25 20:52:44', '2018-08-25 20:52:44'),
(90, 2, 'Muriel Lang IV', 'kenny84@example.org', 'Dolore dolorem magnam quia non recusandae magni est. Eveniet quaerat aspernatur deserunt. Corrupti mollitia voluptatibus sit nobis.', 1, '2018-08-25 20:52:44', '2018-08-25 20:52:44'),
(91, 2, 'Cleora Mante', 'kreiger.rolando@example.net', 'Voluptatem et quis nam quo odio quia et. Enim dolore consectetur ex occaecati debitis.', 1, '2018-08-25 20:52:44', '2018-08-25 20:52:44'),
(92, 2, 'Luz Lynch IV', 'ortiz.lenore@example.org', 'Qui ad quod sequi quod eligendi sapiente. Praesentium et ut ut labore non quia et. Tenetur est aut porro alias. Qui itaque soluta voluptates quo animi qui.', 2, '2018-08-25 20:52:44', '2018-08-25 20:52:44'),
(93, 2, 'Salvador Greenfelder', 'pcummings@example.com', 'Nesciunt ipsam dolore nam. Doloremque non expedita quam mollitia sed. Praesentium non deleniti illo maiores itaque. Doloremque molestias quia alias qui quod.', 1, '2018-08-25 20:52:44', '2018-08-25 20:52:44'),
(94, 2, 'Floy Effertz', 'hweimann@example.org', 'Ut repudiandae dolores ut tempore. Aspernatur officia et aspernatur repellendus perferendis qui non natus. Et consequuntur aspernatur qui facilis.', 1, '2018-08-25 20:52:44', '2018-08-25 20:52:44'),
(95, 2, 'Mrs. Mariah Russel', 'rowland71@example.net', 'Voluptas dolorum quas deleniti repellendus similique aut. Ea veniam et in minus. Sapiente molestias et architecto et eveniet.', 5, '2018-08-25 20:52:44', '2018-08-25 20:52:44'),
(96, 2, 'Prof. Haylie Jast', 'mabelle69@example.com', 'Quis et et qui sed molestiae. Ipsum voluptatem tempore veritatis totam. Vel asperiores quia quia hic sunt.', 5, '2018-08-25 20:52:44', '2018-08-25 20:52:44'),
(97, 2, 'Ariel Balistreri', 'jillian49@example.net', 'Assumenda vel et doloremque voluptas ratione dolorem. Aliquam quia rerum quia. Rerum eaque praesentium ipsa ut rerum enim nihil. Sit repellendus id quod ut.', 5, '2018-08-25 20:52:44', '2018-08-25 20:52:44'),
(98, 2, 'Ivory Donnelly', 'anabel02@example.org', 'Vitae alias doloribus sed ab earum tempore. Facilis cupiditate voluptates quasi repellat. Eos ut quo aut et repellendus facere modi eveniet.', 2, '2018-08-25 20:52:44', '2018-08-25 20:52:44'),
(99, 2, 'Dr. Rosendo Cartwright PhD', 'kohler.cameron@example.org', 'Veniam reprehenderit ab aliquid minima. Eum sed perspiciatis cum voluptatibus. Nihil qui sit distinctio molestiae fuga minima et.', 2, '2018-08-25 20:52:44', '2018-08-25 20:52:44'),
(100, 2, 'Halle Jaskolski IV', 'don.crist@example.net', 'At modi amet dolores vel dolores placeat. Officiis inventore rerum et et. Velit repellat eligendi sit repudiandae.', 4, '2018-08-25 20:52:45', '2018-08-25 20:52:45'),
(101, 2, 'Jameson Champlin', 'heidenreich.elisa@example.net', 'Est tempore provident aut. Omnis excepturi vitae excepturi provident. Asperiores facilis officiis omnis. Qui ut tempora excepturi harum illo quo.', 4, '2018-08-25 20:52:45', '2018-08-25 20:52:45'),
(102, 2, 'Lina Hyatt', 'matt.gerhold@example.org', 'Unde mollitia dolores iusto qui aut. Id accusantium inventore nobis reprehenderit id illum natus. Omnis omnis non aut ipsa.', 5, '2018-08-25 20:52:45', '2018-08-25 20:52:45'),
(103, 2, 'micheal', 'michealakinwonmi@gmail.com', 'jhgjfxcgvhbj;ohlvgkfjxdhfdxjcgkvhlbjkj;hlvgkfcjxdhzgxhcjbk', 5, '2018-08-25 21:20:30', '2018-08-25 21:20:30');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'prime prime', 'prime@prime.com', '$2y$10$H9.bf0HqwUbSQpOARwQzQu4WAHtsnxdxjtwbuGYxsgeNg7u9vWfDu', 'jjaH9yWZk3w8SKHy76sH3Wx1upU7Mz8LkrJa3AxyaGNYewgzyk3aPhdaWhue', '2018-08-24 21:19:05', '2018-08-24 21:19:05'),
(3, 'NEw New', 'new@new.com', '$2y$10$D2QLwgEGVHAo/PBuCJnNieFg/lbWnVPnI/hScTcCwdPLTVpXqt11W', NULL, '2018-08-24 21:58:41', '2018-08-24 21:58:41');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `movie_assets`
--
ALTER TABLE `movie_assets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `movie_ratings`
--
ALTER TABLE `movie_ratings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `movies`
--
ALTER TABLE `movies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `movie_assets`
--
ALTER TABLE `movie_assets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `movie_ratings`
--
ALTER TABLE `movie_ratings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
