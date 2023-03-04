-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 04, 2023 at 03:36 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `crud_with_query_builder`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_02_08_180328_create_students_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `post` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `student_id`, `post`) VALUES
(1, 1, 'Tea is the most popular beverage in the world after water. It\'s a simple preparation of pouring hot water over cured leaves of the Camellia sinensis plant. The first recording of tea described it as a medicinal beverage in China in the 3 rd century AD. Me'),
(2, 2, 'Coffee is a drink prepared from roasted coffee beans. Darkly colored, bitter, and slightly acidic, coffee has a stimulating effect on humans, primarily due to its caffeine content. It has the highest sales in the world market for hot drinks. Seeds of the '),
(3, 1, 'Tea is the most popular beverage in the world after water. It\'s a simple preparation of pouring hot water over cured leaves of the Camellia sinensis plant. The first recording of tea described it as a medicinal beverage in China in the 3 rd century AD. Me'),
(4, 2, 'Coffee is a drink prepared from roasted coffee beans. Darkly colored, bitter, and slightly acidic, coffee has a stimulating effect on humans, primarily due to its caffeine content. It has the highest sales in the world market for hot drinks. Seeds of the ');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `testify` tinyint(1) NOT NULL DEFAULT 0,
  `sex` enum('male','female') COLLATE utf8mb4_unicode_ci NOT NULL,
  `age` smallint(6) DEFAULT NULL,
  `weight` smallint(6) DEFAULT NULL,
  `minimum_allowed_weight` smallint(6) DEFAULT NULL,
  `maximum_allowed_weight` smallint(6) DEFAULT NULL,
  `country` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`address`)),
  `comment` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `email_verified_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `name`, `email`, `phone_number`, `testify`, `sex`, `age`, `weight`, `minimum_allowed_weight`, `maximum_allowed_weight`, `country`, `address`, `comment`, `created_at`, `updated_at`, `email_verified_at`) VALUES
(1, 'Terence McKenzie', 'conor18@yahoo.com', '619-574-1893', 0, 'female', 24, 71, 70, 85, 'Eritrea', '{\"present\": \"Khulna\", \"permanent\": \"Noakhali\"}', 'Veritatis rem et repellat alias. Quis cum molestias error ut sed voluptas. Id qui occaecati tenetur facilis.', '2023-02-19 10:18:17', '2023-02-19 10:18:17', '2023-03-02 16:54:13'),
(2, 'Jordy Halvorson', 'violet23@gmail.com', '+1-586-208-3702', 1, 'male', 28, 85, 72, 85, 'United Arab Emirates', '{\"present\":\"Dhaka, Bangladesh\",\"permanent\":\"Chittagong, Bangladesh\"}', 'Eligendi placeat nihil aperiam consequatur inventore et. Error voluptates quas ullam autem nobis nihil.', '2023-02-19 10:18:17', '2023-02-19 10:18:17', '2023-03-02 16:54:14'),
(3, 'Tony Witting', 'mekhi19@gmail.com', '(949) 789-5655', 1, 'female', 22, 80, 72, 81, 'Maldives', '{\"present\":\"Dhaka, Bangladesh\",\"permanent\":\"Chittagong, Bangladesh\"}', 'Consequatur dolorum non ipsa sint. Natus provident maiores voluptatem mollitia beatae.', '2023-02-19 10:18:17', '2023-02-19 10:18:17', '2023-03-02 16:54:16'),
(4, 'Lessie Dicki', 'oda39@marquardt.biz', '(847) 509-3774', 0, 'female', 30, 84, 72, 83, 'Hungary', '{\"present\":\"Dhaka, Bangladesh\",\"permanent\":\"Chittagong, Bangladesh\"}', 'Repellat odit voluptatem ipsum similique. Ex autem eveniet voluptate labore. Vero eos ipsam ut nemo consequatur.', '2023-02-19 10:18:17', '2023-02-19 10:18:17', '2023-03-02 16:54:17'),
(5, 'Mr. Buster Stanton I', 'elenora46@gmail.com', '+15168655122', 1, 'male', 27, 71, 72, 84, 'Hong Kong', '{\"present\":\"Dhaka, Bangladesh\",\"permanent\":\"Chittagong, Bangladesh\"}', 'Dignissimos ullam distinctio ut cum. Iste error commodi perferendis sed qui. Molestias ad aut veniam.', '2023-02-19 10:18:17', '2023-02-19 10:18:17', '2023-03-02 16:54:18'),
(6, 'Jany Bogan', 'jabari49@gmail.com', '971-815-3111', 1, 'female', 29, 84, 70, 83, 'Slovenia', '{\"present\":\"Dhaka, Bangladesh\",\"permanent\":\"Chittagong, Bangladesh\"}', 'Ex placeat molestiae dicta et incidunt aut sed. Commodi omnis sit eum. Quos aut rerum atque quis consequatur soluta et.', '2023-02-19 10:18:17', '2023-02-19 10:18:17', '2023-03-02 16:54:19'),
(7, 'Kasandra Schowalter', 'valentine21@barrows.com', '+1.346.665.9197', 0, 'female', 21, 86, 73, 82, 'Zimbabwe', '{\"present\":\"Dhaka, Bangladesh\",\"permanent\":\"Chittagong, Bangladesh\"}', 'Blanditiis dignissimos et accusantium praesentium libero qui. Sint expedita et ipsam. Minus assumenda qui ex eos.', '2023-02-19 10:18:17', '2023-02-19 10:18:17', '2023-03-02 16:54:20'),
(8, 'Ms. Yoshiko O\'Hara', 'heller.therese@mosciski.com', '501-891-0607', 1, 'male', 27, 68, 71, 80, 'Cambodia', '{\"present\":\"Dhaka, Bangladesh\",\"permanent\":\"Chittagong, Bangladesh\"}', 'Est vel esse totam sapiente qui neque sed. Et aut assumenda est culpa ut excepturi et.', '2023-02-19 10:18:17', '2023-02-19 10:18:17', '2023-03-02 16:54:21'),
(9, 'Brown Altenwerth', 'imedhurst@gmail.com', '+1-302-820-1922', 0, 'female', 22, 69, 71, 84, 'Macedonia', '{\"present\":\"Dhaka, Bangladesh\",\"permanent\":\"Chittagong, Bangladesh\"}', 'Nisi est placeat similique laborum asperiores reiciendis sit vitae. Quidem explicabo aut sit asperiores.', '2023-02-19 10:18:17', '2023-02-19 10:18:17', '2023-03-02 16:54:22'),
(10, 'Wayne Krajcik I', 'bailey.nannie@gmail.com', '1-440-308-3940', 1, 'male', 26, 89, 75, 80, 'Panama', '{\"present\":\"Dhaka, Bangladesh\",\"permanent\":\"Chittagong, Bangladesh\"}', 'Voluptas sint sequi nostrum omnis doloremque. Animi sed voluptas tenetur porro. Sed dicta non vel ea.', '2023-02-19 10:18:18', '2023-02-19 10:18:18', '2023-03-02 16:54:23'),
(11, 'Adonis Conroy II', 'braun.ayana@mccullough.com', '781.560.0098', 0, 'male', 29, 84, 71, 83, 'Barbados', '{\"present\":\"Dhaka, Bangladesh\",\"permanent\":\"Chittagong, Bangladesh\"}', 'Et ut ut qui culpa sapiente a sit. Sint ipsam a quibusdam. Atque dignissimos eligendi consequatur blanditiis.', '2023-02-19 10:18:18', '2023-02-19 10:18:18', '2023-03-02 16:54:24'),
(12, 'Beth McGlynn', 'konopelski.emile@cummerata.com', '+1 (925) 489-5325', 0, 'female', 21, 65, 72, 84, 'Saint Helena', '{\"present\":\"Dhaka, Bangladesh\",\"permanent\":\"Chittagong, Bangladesh\"}', 'Hic et molestias qui. Et necessitatibus autem non dolorum. Esse sit et in esse debitis aut.', '2023-02-19 10:18:18', '2023-02-19 10:18:18', '2023-03-02 16:54:25'),
(13, 'Lisette Leuschke', 'niko.denesik@kirlin.net', '+1 (657) 285-4730', 1, 'male', 30, 74, 73, 80, 'Bermuda', '{\"present\":\"Dhaka, Bangladesh\",\"permanent\":\"Chittagong, Bangladesh\"}', 'Enim vel fuga soluta est dolorem. Laudantium omnis est quia. Sint voluptatem est officiis modi ut et.', '2023-02-19 10:18:18', '2023-02-19 10:18:18', '2023-03-02 16:54:26'),
(14, 'Sebastian Raynor I', 'gorczany.claud@gmail.com', '743-847-2233', 0, 'male', 20, 82, 71, 82, 'Thailand', '{\"present\":\"Dhaka, Bangladesh\",\"permanent\":\"Chittagong, Bangladesh\"}', 'Hic rerum vero et accusantium. Nulla eos ratione voluptate doloremque odio eveniet repellat.', '2023-02-19 10:18:18', '2023-02-19 10:18:18', '2023-03-02 16:54:27'),
(15, 'Amira D\'Amore', 'francisco91@hotmail.com', '1-351-865-4274', 1, 'male', 25, 81, 75, 82, 'Vietnam', '{\"present\":\"Dhaka, Bangladesh\",\"permanent\":\"Chittagong, Bangladesh\"}', 'Omnis doloremque sunt qui libero aliquam culpa. Ratione eos omnis impedit. Aperiam ea velit nam animi id sint.', '2023-02-19 10:18:18', '2023-02-19 10:18:18', '2023-03-02 16:54:28'),
(16, 'Jordyn Crona', 'mayra15@mertz.info', '1-940-940-5444', 1, 'male', 23, 76, 75, 85, 'United States Minor Outlying Islands', '{\"present\":\"Dhaka, Bangladesh\",\"permanent\":\"Chittagong, Bangladesh\"}', 'Ullam odio quos nostrum eius natus. Rerum maxime reprehenderit incidunt dolorem.', '2023-02-19 10:18:18', '2023-02-19 10:18:18', '2023-03-02 16:54:29'),
(17, 'Bart Hansen', 'luettgen.genevieve@kuphal.com', '563.850.0357', 1, 'female', 24, 69, 74, 83, 'Armenia', '{\"present\":\"Dhaka, Bangladesh\",\"permanent\":\"Chittagong, Bangladesh\"}', 'Aperiam animi iste possimus animi harum corrupti. Voluptate et iusto nihil modi quia praesentium explicabo.', '2023-02-19 10:18:18', '2023-02-19 10:18:18', '2023-03-02 16:54:30'),
(18, 'Sallie Keebler', 'djacobs@gmail.com', '+1 (430) 970-7638', 0, 'female', 23, 77, 74, 82, 'Antarctica (the territory South of 60 deg S)', '{\"present\":\"Dhaka, Bangladesh\",\"permanent\":\"Chittagong, Bangladesh\"}', 'Repellat non qui unde cupiditate sint rem suscipit. Aut eveniet expedita sit ut rerum sed.', '2023-02-19 10:18:18', '2023-02-19 10:18:18', '2023-03-02 16:54:31'),
(19, 'Jaeden Howe DVM', 'dswaniawski@kuhic.biz', '+1-931-263-3820', 0, 'female', 27, 81, 72, 82, 'Kenya', '{\"present\":\"Dhaka, Bangladesh\",\"permanent\":\"Chittagong, Bangladesh\"}', 'Quia quis repellat aut sed ipsa eaque dignissimos. Eius ut saepe libero.', '2023-02-19 10:18:18', '2023-02-19 10:18:18', '2023-03-02 16:54:33'),
(20, 'Allie Hodkiewicz', 'elton27@yahoo.com', '1-586-539-5345', 0, 'female', 26, 79, 75, 82, 'Philippines', '{\"present\":\"Dhaka, Bangladesh\",\"permanent\":\"Chittagong, Bangladesh\"}', 'Omnis in aut assumenda illo. Aut velit ut quo. Vitae velit facere ullam consequatur.', '2023-02-19 10:18:18', '2023-02-19 10:18:18', '2023-03-02 16:54:34'),
(21, 'Miss Vada Goodwin I', 'aryanna.bauch@hotmail.com', '1-574-274-5509', 1, 'female', 25, 81, 75, 83, 'Jamaica', '{\"present\":\"Dhaka, Bangladesh\",\"permanent\":\"Chittagong, Bangladesh\"}', 'Dolorum beatae deleniti nihil. Aut sit et voluptatem nihil aut omnis. Optio recusandae perferendis quo.', '2023-02-19 10:18:18', '2023-02-19 10:18:18', '2023-03-02 16:54:35'),
(22, 'Dr. Jayson Bartell I', 'swaniawski.daron@armstrong.info', '+1-918-379-3840', 0, 'female', 28, 85, 73, 83, 'Turkey', '{\"present\":\"Dhaka, Bangladesh\",\"permanent\":\"Chittagong, Bangladesh\"}', 'Numquam necessitatibus enim omnis enim suscipit possimus aspernatur. Omnis ad et ut.', '2023-02-19 10:18:18', '2023-02-19 10:18:18', '2023-03-02 16:54:36'),
(23, 'Brant Wiza V', 'leonor93@yahoo.com', '(843) 380-8254', 1, 'male', 25, 78, 73, 83, 'Benin', '{\"present\":\"Dhaka, Bangladesh\",\"permanent\":\"Chittagong, Bangladesh\"}', 'Repudiandae rem et beatae saepe. Quisquam amet eos voluptatem aut. Minima similique nobis deserunt numquam cumque.', '2023-02-19 10:18:18', '2023-02-19 10:18:18', '2023-03-02 16:54:37'),
(24, 'Sonia Schamberger', 'rempel.gladyce@gmail.com', '(831) 740-0010', 0, 'female', 22, 78, 73, 84, 'Dominica', '{\"present\":\"Dhaka, Bangladesh\",\"permanent\":\"Chittagong, Bangladesh\"}', 'Et quasi molestias exercitationem. Aut in quos facilis odit molestiae.', '2023-02-19 10:18:18', '2023-02-19 10:18:18', '2023-03-02 16:54:38'),
(25, 'Miss Anastasia Moen Jr.', 'lucius02@emmerich.info', '+1.321.364.5379', 0, 'female', 26, 84, 73, 84, 'Indonesia', '{\"present\":\"Dhaka, Bangladesh\",\"permanent\":\"Chittagong, Bangladesh\"}', 'Ut aliquam cupiditate inventore nihil qui. Vitae eos id explicabo dolor. Eum praesentium voluptatem omnis modi quia.', '2023-02-19 10:18:18', '2023-02-19 10:18:18', '2023-03-02 16:54:39'),
(26, 'Andreane Fritsch', 'rorn@ledner.com', '318.844.7547', 0, 'female', 20, 81, 71, 82, 'Kenya', '{\"present\":\"Dhaka, Bangladesh\",\"permanent\":\"Chittagong, Bangladesh\"}', 'At aliquam impedit non labore tenetur nemo. Hic doloremque possimus quia earum minus cupiditate.', '2023-02-19 10:18:18', '2023-02-19 10:18:18', '2023-03-02 16:54:40'),
(27, 'Corene Hills', 'chelsea.goldner@wisozk.com', '925.206.2066', 1, 'female', 23, 88, 70, 82, 'Cocos (Keeling) Islands', '{\"present\":\"Dhaka, Bangladesh\",\"permanent\":\"Chittagong, Bangladesh\"}', 'Minima quam veritatis dolores enim. Et optio placeat voluptatibus corrupti quo quos. Sed quia corrupti veritatis.', '2023-02-19 10:18:18', '2023-02-19 10:18:18', '2023-03-02 16:54:41'),
(28, 'Dr. Maximillian Rowe Sr.', 'lonnie50@hotmail.com', '(228) 972-5307', 1, 'female', 27, 89, 75, 81, 'Cocos (Keeling) Islands', '{\"present\":\"Dhaka, Bangladesh\",\"permanent\":\"Chittagong, Bangladesh\"}', 'Ea et unde ut qui iusto. Qui eius consequatur eius eveniet quae qui. Quasi quae qui voluptates quibusdam in.', '2023-02-19 10:18:18', '2023-02-19 10:18:18', '2023-03-02 16:54:42'),
(29, 'Lavonne Beahan PhD', 'jamir.herzog@yahoo.com', '910-622-4046', 0, 'female', 21, 70, 71, 83, 'Falkland Islands (Malvinas)', '{\"present\":\"Dhaka, Bangladesh\",\"permanent\":\"Chittagong, Bangladesh\"}', 'Molestiae quis incidunt eveniet. A et quis voluptas ducimus ab aut.', '2023-02-19 10:18:18', '2023-02-19 10:18:18', '2023-03-02 16:54:43'),
(30, 'Kira Miller I', 'schmeler.leslie@yahoo.com', '(781) 394-2223', 0, 'female', 28, 73, 72, 84, 'Montenegro', '{\"present\":\"Dhaka, Bangladesh\",\"permanent\":\"Chittagong, Bangladesh\"}', 'Deserunt quia iusto quae in sit. Quos aut quibusdam architecto eius modi aut. Sapiente adipisci vel qui quaerat aut.', '2023-02-19 10:18:19', '2023-02-19 10:18:19', '2023-03-02 16:54:44'),
(31, 'Josephine Pouros', 'destiney66@jacobson.com', '1-985-971-8907', 1, 'male', 22, 69, 71, 84, 'Bolivia', '{\"present\":\"Dhaka, Bangladesh\",\"permanent\":\"Chittagong, Bangladesh\"}', 'Tempora asperiores ea sed laborum tenetur ut. Magnam animi nesciunt esse. Consequatur enim aut nam veniam.', '2023-02-19 10:18:19', '2023-02-19 10:18:19', '2023-03-02 16:54:45'),
(32, 'Kallie Kassulke', 'herbert.hettinger@yahoo.com', '901.644.0982', 0, 'female', 30, 79, 71, 85, 'Dominican Republic', '{\"present\":\"Dhaka, Bangladesh\",\"permanent\":\"Chittagong, Bangladesh\"}', 'Sit aliquam nulla rem quod ad velit amet. Et voluptas voluptatibus laudantium ipsa ducimus.', '2023-02-19 10:18:19', '2023-02-19 10:18:19', '2023-03-02 16:54:47'),
(33, 'Linnea Feil', 'camilla.murazik@gmail.com', '1-667-233-5022', 1, 'female', 24, 87, 75, 85, 'Bahrain', '{\"present\":\"Dhaka, Bangladesh\",\"permanent\":\"Chittagong, Bangladesh\"}', 'Atque debitis vero molestiae vel nulla enim odio. Recusandae amet sit natus ut. Enim natus reiciendis maxime voluptas.', '2023-02-19 10:18:19', '2023-02-19 10:18:19', '2023-03-02 16:54:48'),
(34, 'Jonathon Gorczany', 'psporer@hotmail.com', '(603) 569-0109', 0, 'female', 26, 75, 73, 83, 'Cook Islands', '{\"present\":\"Dhaka, Bangladesh\",\"permanent\":\"Chittagong, Bangladesh\"}', 'Nihil occaecati quia qui. Tenetur rerum et cupiditate cum excepturi quos atque tenetur.', '2023-02-19 10:18:19', '2023-02-19 10:18:19', '2023-03-02 16:54:49'),
(35, 'Benton Ziemann I', 'jbechtelar@hotmail.com', '678-855-5451', 1, 'female', 21, 79, 74, 85, 'Saint Barthelemy', '{\"present\":\"Dhaka, Bangladesh\",\"permanent\":\"Chittagong, Bangladesh\"}', 'Quia nesciunt quibusdam qui. Sunt laudantium mollitia quasi quos quis. Ullam et dolores illo minima non eveniet.', '2023-02-19 10:18:19', '2023-02-19 10:18:19', '2023-03-02 16:54:50'),
(36, 'Dr. Rosa Kemmer Jr.', 'phoebe12@osinski.com', '+1 (724) 379-5642', 1, 'female', 25, 74, 71, 81, 'Djibouti', '{\"present\":\"Dhaka, Bangladesh\",\"permanent\":\"Chittagong, Bangladesh\"}', 'Nihil consequatur in sequi illo debitis. Doloribus veniam aut itaque nihil. Quis ut rem distinctio rerum enim soluta.', '2023-02-19 10:18:19', '2023-02-19 10:18:19', '2023-03-02 16:54:51'),
(37, 'Prof. Stella Hill', 'stephan03@gutmann.com', '+1 (754) 482-5202', 1, 'male', 24, 67, 72, 82, 'Senegal', '{\"present\":\"Dhaka, Bangladesh\",\"permanent\":\"Chittagong, Bangladesh\"}', 'Qui voluptatem repellat qui. Harum commodi esse nemo aut. Aut autem autem culpa omnis quae natus.', '2023-02-19 10:18:19', '2023-02-19 10:18:19', '2023-03-02 16:54:52'),
(38, 'Ross Nienow', 'malvina.funk@hotmail.com', '(815) 435-0791', 1, 'female', 26, 84, 74, 84, 'Paraguay', '{\"present\":\"Dhaka, Bangladesh\",\"permanent\":\"Chittagong, Bangladesh\"}', 'Impedit harum pariatur quod quasi dolorem. Possimus excepturi aut corporis.', '2023-02-19 10:18:19', '2023-02-19 10:18:19', '2023-03-02 16:54:53'),
(39, 'Dennis Ebert', 'retta38@torphy.com', '318.509.4978', 1, 'male', 21, 78, 73, 80, 'Burundi', '{\"present\":\"Dhaka, Bangladesh\",\"permanent\":\"Chittagong, Bangladesh\"}', 'Sint eos aliquid qui. Quae debitis quaerat iste qui hic vero. Ut ea nam sed magni ad consectetur est quidem.', '2023-02-19 10:18:19', '2023-02-19 10:18:19', '2023-03-02 16:54:54'),
(40, 'Ashley Ortiz PhD', 'hertha.ryan@lynch.com', '743-391-0524', 1, 'female', 23, 76, 75, 82, 'Turks and Caicos Islands', '{\"present\":\"Dhaka, Bangladesh\",\"permanent\":\"Chittagong, Bangladesh\"}', 'Nemo nihil sunt et ipsa rerum. Optio iure assumenda minima. Voluptatem nihil aut ut reiciendis.', '2023-02-19 10:18:19', '2023-02-19 10:18:19', '2023-03-02 16:54:55'),
(41, 'Freddie Bashirian', 'eorn@hotmail.com', '+15595226249', 1, 'male', 26, 79, 75, 82, 'San Marino', '{\"present\":\"Dhaka, Bangladesh\",\"permanent\":\"Chittagong, Bangladesh\"}', 'Eos velit alias quibusdam. Alias repellat quas eos ut non delectus et. Maxime hic quia officia.', '2023-02-19 10:18:19', '2023-02-19 10:18:19', '2023-03-02 16:54:56'),
(42, 'Aurelia Dach', 'bogan.pink@vandervort.com', '1-616-986-7225', 1, 'female', 26, 90, 72, 80, 'British Virgin Islands', '{\"present\":\"Dhaka, Bangladesh\",\"permanent\":\"Chittagong, Bangladesh\"}', 'Rerum qui debitis et quisquam ut. Impedit officiis ea harum ex ut ut et. Fugit eum porro earum rerum.', '2023-02-19 10:18:19', '2023-02-19 10:18:19', '2023-03-02 16:54:57'),
(43, 'Turner Douglas', 'dbins@gmail.com', '+1-616-516-8723', 0, 'female', 21, 75, 73, 80, 'Sierra Leone', '{\"present\":\"Dhaka, Bangladesh\",\"permanent\":\"Chittagong, Bangladesh\"}', 'Sit voluptates asperiores esse est. Modi ut est earum corporis. Maxime vel eos ratione consequatur vero.', '2023-02-19 10:18:19', '2023-02-19 10:18:19', '2023-03-02 16:54:58'),
(44, 'Cortney Bailey', 'hlarson@blanda.com', '+1.480.543.2170', 1, 'male', 28, 75, 74, 84, 'Monaco', '{\"present\":\"Dhaka, Bangladesh\",\"permanent\":\"Chittagong, Bangladesh\"}', 'Qui voluptatem quas odit et. Consequuntur aut animi eos deleniti.', '2023-02-19 10:18:19', '2023-02-19 10:18:19', '2023-03-02 16:54:59'),
(45, 'Jesse Barton DDS', 'jedediah.osinski@dicki.com', '1-270-433-6240', 1, 'female', 28, 75, 71, 82, 'Guinea-Bissau', '{\"present\":\"Dhaka, Bangladesh\",\"permanent\":\"Chittagong, Bangladesh\"}', 'Voluptas repellat animi qui accusamus magni. Tenetur et repellat veniam unde. Illo dolor nesciunt nesciunt officiis.', '2023-02-19 10:18:19', '2023-02-19 10:18:19', '2023-03-02 16:55:00'),
(46, 'Milan Watsica', 'jamaal24@hotmail.com', '+13465660312', 0, 'male', 25, 83, 72, 84, 'Azerbaijan', '{\"present\":\"Dhaka, Bangladesh\",\"permanent\":\"Chittagong, Bangladesh\"}', 'Libero et aut et et. Officiis accusantium ea et ut est similique quidem. Soluta sed dicta atque.', '2023-02-19 10:18:19', '2023-02-19 10:18:19', '2023-03-02 16:55:01'),
(47, 'Miss Mariana O\'Kon', 'vdooley@morissette.biz', '732-527-9201', 0, 'male', 22, 69, 75, 81, 'Saudi Arabia', '{\"present\":\"Dhaka, Bangladesh\",\"permanent\":\"Chittagong, Bangladesh\"}', 'Id alias dolor aut distinctio. Voluptates ducimus cupiditate quis odit aperiam tempore.', '2023-02-19 10:18:19', '2023-02-19 10:18:19', '2023-03-02 16:55:03'),
(48, 'Melisa Nader', 'kschulist@yahoo.com', '1-228-338-9128', 0, 'male', 26, 78, 70, 80, 'Bahamas', '{\"present\":\"Dhaka, Bangladesh\",\"permanent\":\"Chittagong, Bangladesh\"}', 'Porro nam sed accusantium quia quia. Fugit velit molestiae velit qui dolorem. Rerum doloribus doloremque et animi.', '2023-02-19 10:18:19', '2023-02-19 10:18:19', '2023-03-02 16:55:04'),
(49, 'Mohammed Shanahan DVM', 'hartmann.abby@hotmail.com', '920-840-1676', 0, 'female', 20, 73, 72, 81, 'Algeria', '{\"present\":\"Dhaka, Bangladesh\",\"permanent\":\"Chittagong, Bangladesh\"}', 'Soluta et cumque voluptatum error omnis rerum eos. Quae accusamus laborum suscipit quidem.', '2023-02-19 10:18:19', '2023-02-19 10:18:19', '2023-03-02 16:55:05'),
(50, 'Kailyn Ritchie', 'hagenes.cecile@hotmail.com', '1-270-488-7053', 1, 'female', 26, 79, 70, 81, 'Hungary', '{\"present\":\"Dhaka, Bangladesh\",\"permanent\":\"Chittagong, Bangladesh\"}', 'Inventore eos cumque quibusdam iure autem. Minima nulla nostrum sed cumque. Sint aut ut reiciendis nam fuga aliquam.', '2023-02-19 10:18:20', '2023-02-19 10:18:20', '2023-03-02 16:55:06'),
(51, 'Carly Hayden nn', 'tyzymesixu@mailinator.com', '+1 (983) 125-6598', 1, 'female', 25, 77, 73, 80, 'Bangladesh', '{\"present\":\"Dhaka, Bangladesh\",\"permanent\":\"Chittagong, Bangladesh\"}', 'Hic consequat Quas and what?', '2023-02-19 10:20:08', '2023-02-19 10:20:08', '2023-03-02 16:55:07');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);
ALTER TABLE `posts` ADD FULLTEXT KEY `post` (`post`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `students_email_unique` (`email`);

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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
