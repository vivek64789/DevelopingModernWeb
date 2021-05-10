-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 20, 2021 at 07:44 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `entrancepreparation`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins_admin`
--

CREATE TABLE `admins_admin` (
  `id` int(11) NOT NULL,
  `first_name` varchar(200) DEFAULT NULL,
  `last_name` varchar(200) DEFAULT NULL,
  `profile_image` varchar(100) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add course', 7, 'add_course'),
(26, 'Can change course', 7, 'change_course'),
(27, 'Can delete course', 7, 'delete_course'),
(28, 'Can view course', 7, 'view_course'),
(29, 'Can add course title', 8, 'add_coursetitle'),
(30, 'Can change course title', 8, 'change_coursetitle'),
(31, 'Can delete course title', 8, 'delete_coursetitle'),
(32, 'Can view course title', 8, 'view_coursetitle'),
(33, 'Can add course topic', 9, 'add_coursetopic'),
(34, 'Can change course topic', 9, 'change_coursetopic'),
(35, 'Can delete course topic', 9, 'delete_coursetopic'),
(36, 'Can view course topic', 9, 'view_coursetopic'),
(37, 'Can add cart', 10, 'add_cart'),
(38, 'Can change cart', 10, 'change_cart'),
(39, 'Can delete cart', 10, 'delete_cart'),
(40, 'Can view cart', 10, 'view_cart'),
(41, 'Can add cart item', 11, 'add_cartitem'),
(42, 'Can change cart item', 11, 'change_cartitem'),
(43, 'Can delete cart item', 11, 'delete_cartitem'),
(44, 'Can view cart item', 11, 'view_cartitem'),
(45, 'Can add admin', 12, 'add_admin'),
(46, 'Can change admin', 12, 'change_admin'),
(47, 'Can delete admin', 12, 'delete_admin'),
(48, 'Can view admin', 12, 'view_admin'),
(49, 'Can add instructor', 13, 'add_instructor'),
(50, 'Can change instructor', 13, 'change_instructor'),
(51, 'Can delete instructor', 13, 'delete_instructor'),
(52, 'Can view instructor', 13, 'view_instructor'),
(53, 'Can add student', 14, 'add_student'),
(54, 'Can change student', 14, 'change_student'),
(55, 'Can delete student', 14, 'delete_student'),
(56, 'Can view student', 14, 'view_student'),
(57, 'Can add order status', 15, 'add_orderstatus'),
(58, 'Can change order status', 15, 'change_orderstatus'),
(59, 'Can delete order status', 15, 'delete_orderstatus'),
(60, 'Can view order status', 15, 'view_orderstatus'),
(61, 'Can add course search', 16, 'add_coursesearch'),
(62, 'Can change course search', 16, 'change_coursesearch'),
(63, 'Can delete course search', 16, 'delete_coursesearch'),
(64, 'Can view course search', 16, 'view_coursesearch'),
(65, 'Can add instructor payment', 17, 'add_instructorpayment'),
(66, 'Can change instructor payment', 17, 'change_instructorpayment'),
(67, 'Can delete instructor payment', 17, 'delete_instructorpayment'),
(68, 'Can view instructor payment', 17, 'view_instructorpayment');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(2, 'pbkdf2_sha256$216000$pl71gktR8mOM$xpXndyjcp9fKftTDhKrs6FleyzoV4vk39jtGfx9KgIA=', '2021-04-20 04:30:21.896061', 0, 'vivek64789', 'Vivek', 'Kushwaha', 'tech.vivek64789@gmail.com', 1, 1, '2021-04-05 17:32:17.752514'),
(34, 'pbkdf2_sha256$216000$xp5XrJfhXcWG$EVHRpYUtcJKvmbYxoJEGoecU4X8TwZZ/bVseeqA3wDU=', '2021-04-20 11:16:18.235305', 1, 'admin', '', '', '', 1, 1, '2021-04-13 18:17:42.202214'),
(53, 'pbkdf2_sha256$216000$eH7tQN5fhOUy$iXOq8TDAMaW3y10AxRknfLmzT29/da1zTqxs7/Tp0UA=', '2021-04-17 16:10:46.251990', 0, 'ajay', '', '', 'ajay@gmail.com', 0, 1, '2021-04-17 14:37:02.513900'),
(62, 'pbkdf2_sha256$216000$T54DMZmKsqlm$TdAkEbtsNR4uruQ8km1U83mBn/zpyKNyxKErJadLOq0=', NULL, 0, 'adminsdsfgh', '', '', 'sadfghzdf@gmail.co', 0, 0, '2021-04-20 17:29:24.573462'),
(63, 'pbkdf2_sha256$216000$htXxpT7ZLbDw$VJQ88crxd+oe+0QrI8gVlL/8YDFXlis61NiqdUcOoVw=', NULL, 0, 'asdfghsdfgh', '', '', 'asdfghf@ergh', 0, 0, '2021-04-20 17:30:14.036853'),
(64, 'pbkdf2_sha256$216000$Uyq6RSKhiU5h$D+x+4Gubz5keWtzmqGZ3WEOUeXj7aqgV2TxSeJhK6iU=', NULL, 0, 'adrfg345t', '', '', 'sdfgasdf@erghj', 0, 0, '2021-04-20 17:30:49.694294'),
(65, 'pbkdf2_sha256$216000$QQyWxlzZx9J8$cwHMlmTXE5nDLFwQPTOMG8fNCVu3yNkJstycJMNA/eI=', NULL, 0, 'student', '', '', 'student@entrancepreparation.com', 0, 1, '2021-04-20 17:42:25.147342'),
(66, 'pbkdf2_sha256$216000$YfC3l1hlTPV7$6XzisjYdAjBYWFgEFFLZxCmdrH0CoAXhNEz0IyFuAWY=', NULL, 0, 'instructor', '', '', 'instructor@entrancepreparation.com', 0, 1, '2021-04-20 17:43:00.550454');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `cart_cart`
--

CREATE TABLE `cart_cart` (
  `id` int(11) NOT NULL,
  `order_status` tinyint(1) NOT NULL,
  `total_price` double NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cart_cart`
--

INSERT INTO `cart_cart` (`id`, `order_status`, `total_price`, `user_id`) VALUES
(18, 0, 2000, 53),
(24, 0, 0, 62),
(25, 0, 0, 63),
(26, 0, 0, 64),
(27, 0, 0, 65),
(28, 0, 0, 66);

-- --------------------------------------------------------

--
-- Table structure for table `cart_cartitem`
--

CREATE TABLE `cart_cartitem` (
  `id` int(11) NOT NULL,
  `price` double NOT NULL,
  `quantity` int(10) UNSIGNED NOT NULL,
  `cart_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ;

-- --------------------------------------------------------

--
-- Table structure for table `cart_orderstatus`
--

CREATE TABLE `cart_orderstatus` (
  `id` int(11) NOT NULL,
  `quantity` int(10) UNSIGNED NOT NULL CHECK (`quantity` >= 0),
  `order_date` datetime(6) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `course_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `courses_course`
--

CREATE TABLE `courses_course` (
  `id` int(11) NOT NULL,
  `course_name` varchar(200) DEFAULT NULL,
  `course_description` longtext DEFAULT NULL,
  `difficulty_level` varchar(200) DEFAULT NULL,
  `course_categories` varchar(300) DEFAULT NULL,
  `course_price` bigint(20) DEFAULT NULL,
  `video_url` varchar(2000) DEFAULT NULL,
  `course_duration` int(11) DEFAULT NULL,
  `course_attachments` varchar(100) DEFAULT NULL,
  `thumbnail` varchar(100),
  `video_source` varchar(200),
  `course_language` varchar(200),
  `course_requirements` longtext DEFAULT NULL,
  `course_caption` varchar(200),
  `course_modified_date` datetime(6) NOT NULL,
  `course_audience` longtext DEFAULT NULL,
  `course_outcome` longtext DEFAULT NULL,
  `course_instructor_id` int(11) DEFAULT NULL,
  `is_approved` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `courses_course`
--

INSERT INTO `courses_course` (`id`, `course_name`, `course_description`, `difficulty_level`, `course_categories`, `course_price`, `video_url`, `course_duration`, `course_attachments`, `thumbnail`, `video_source`, `course_language`, `course_requirements`, `course_caption`, `course_modified_date`, `course_audience`, `course_outcome`, `course_instructor_id`, `is_approved`) VALUES
(57, 'Adobe Photoshop CC – Essentials Training Course', '<p>this is course description</p>', 'intermediate_level', 'MBBS', 1000, 'IyR_uYsRdPs', 200, 'static/uploads/effective_communication_skills_declaration_form.pdf', 'static/uploads/Happy_holi_eduvibe_GK2LTnh.png', 'youtube', 'Nepali', '<p>this is requirements</p>', 'English', '2021-04-10 00:53:03.725685', '<p>This is who is this course for</p>', '<p>this is what student will learn</p>', 2, 'Approved'),
(58, 'Developing a modern web', '<p>Web application is rapid growing market and this is its description</p>', 'intermediate_level', 'MBBS', 2000, 'VfGW0Qiy2I0', 30, '', 'static/uploads/SL-012221-39870-100.jpg', 'youtube', 'Nepali', '<p><strong>these are all requirements of this course</strong></p>', 'Nepali', '2021-04-10 05:48:08.130953', '<p>This course is for begineer</p>', '<p>They will learn developing a modern web</p>', 2, 'Approved'),
(67, 'testing', '', 'beginner_level', 'choose', NULL, NULL, NULL, '', 'static/uploads/banner_image.png', 'youtube', 'English', '', 'English', '2021-04-18 16:53:50.997744', '', '', 2, 'Pending'),
(68, 'MBBS Entrance Model Set  1', '<p>There will be multiple question that can be asked in mbbs entrance examination</p>', 'intermediate_level', 'MBBS', 100, NULL, 200, '', 'static/uploads/banner_image.png', 'youtube', 'English', '', 'English', '2021-04-20 04:31:39.714146', '', '', 2, 'Pending');

-- --------------------------------------------------------

--
-- Table structure for table `courses_coursetopic`
--

CREATE TABLE `courses_coursetopic` (
  `id` int(11) NOT NULL,
  `topic_title` varchar(200) NOT NULL,
  `topic_description` longtext NOT NULL,
  `topic_content` longtext DEFAULT NULL,
  `course_id` int(11) NOT NULL,
  `topic_duration` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `courses_coursetopic`
--

INSERT INTO `courses_coursetopic` (`id`, `topic_title`, `topic_description`, `topic_content`, `course_id`, `topic_duration`) VALUES
(17, 'Getting started', 'Hi there, my name is Dan Scott. I\'m an Adobe Certified Instructor for Photoshop. Now together in this course, me, you, are going to learn everything we need to know about using Photoshop', '<p>Photoshop was developed in 1987 by two brothers&nbsp;<a href=\"https://en.wikipedia.org/wiki/Thomas_Knoll\" title=\"Thomas Knoll\">Thomas</a>&nbsp;and&nbsp;<a href=\"https://en.wikipedia.org/wiki/John_Knoll\" title=\"John Knoll\">John Knoll</a>, who sold the distribution license to Adobe Systems Incorporated in 1988. Thomas Knoll, a Ph.D. student at the&nbsp;<a href=\"https://en.wikipedia.org/wiki/University_of_Michigan\" title=\"University of Michigan\">University of Michigan</a>, began writing a program on his&nbsp;<a href=\"https://en.wikipedia.org/wiki/Macintosh_Plus\" title=\"Macintosh Plus\">Macintosh Plus</a>&nbsp;to display&nbsp;<a href=\"https://en.wikipedia.org/wiki/Grayscale\" title=\"Grayscale\">grayscale</a>&nbsp;images on a monochrome display. This program (at that time called&nbsp;<strong>Display</strong>) caught the attention of his brother John, an&nbsp;<a href=\"https://en.wikipedia.org/wiki/Industrial_Light_%26_Magic\" title=\"Industrial Light &amp; Magic\">Industrial Light &amp; Magic</a>&nbsp;employee, who recommended that Thomas turn it into a full-fledged image editing program. Thomas took a six-month break from his studies in 1988 to collaborate with his brother on the program. Thomas renamed the program ImagePro, but the name was already taken.<a href=\"https://en.wikipedia.org/wiki/Adobe_Photoshop#cite_note-history-7\">[7]</a>&nbsp;Later that year, Thomas renamed his program&nbsp;<strong>Photoshop</strong>&nbsp;and worked out a short-term deal with scanner manufacturer Barneyscan to distribute copies of the program with a&nbsp;<a href=\"https://en.wikipedia.org/wiki/Image_scanner\" title=\"Image scanner\">slide scanner</a>; a &quot;total of about 200 copies of Photoshop were shipped&quot; this way.<a href=\"https://en.wikipedia.org/wiki/Adobe_Photoshop#cite_note-8\">[8]</a><a href=\"https://en.wikipedia.org/wiki/Adobe_Photoshop#cite_note-9\">[9]</a></p>\n\n<p>During this time, John traveled to&nbsp;<a href=\"https://en.wikipedia.org/wiki/Silicon_Valley\" title=\"Silicon Valley\">Silicon Valley</a>&nbsp;and gave a demonstration of the program to engineers at&nbsp;<a href=\"https://en.wikipedia.org/wiki/Apple_Inc.\" title=\"Apple Inc.\">Apple</a>&nbsp;and Russell Brown, art director at&nbsp;<a href=\"https://en.wikipedia.org/wiki/Adobe_Inc.\" title=\"Adobe Inc.\">Adobe</a>. Both showings were successful, and Adobe decided to purchase the license to distribute in September 1988.<a href=\"https://en.wikipedia.org/wiki/Adobe_Photoshop#cite_note-history-7\">[7]</a>&nbsp;While John worked on&nbsp;<a href=\"https://en.wikipedia.org/wiki/Plug-in_(computing)\" title=\"Plug-in (computing)\">plug-ins</a>&nbsp;in California, Thomas remained in&nbsp;<a href=\"https://en.wikipedia.org/wiki/Ann_Arbor,_Michigan\" title=\"Ann Arbor, Michigan\">Ann Arbor</a>&nbsp;writing code.&nbsp;<em>Photoshop</em>&nbsp;1.0 was released on February 19, 1990, for&nbsp;<a href=\"https://en.wikipedia.org/wiki/Macintosh\" title=\"Macintosh\">Macintosh</a>&nbsp;exclusively.<a href=\"https://en.wikipedia.org/wiki/Adobe_Photoshop#cite_note-10\">[10]</a><a href=\"https://en.wikipedia.org/wiki/Adobe_Photoshop#cite_note-About-11\">[11]</a>&nbsp;The Barneyscan version included advanced color editing features that were stripped from the first Adobe shipped version. The handling of color slowly improved with each release from Adobe and Photoshop quickly became the industry standard in digital color editing. At the time Photoshop 1.0 was released, digital retouching on dedicated high-end systems (such as the&nbsp;<a href=\"https://en.wikipedia.org/wiki/Scailex_Corporation\" title=\"Scailex Corporation\">Scitex</a>) cost around $300 an hour for basic photo retouching. The list price of Photoshop 1.0 for Macintosh in 1990 was $895.<a href=\"https://en.wikipedia.org/wiki/Adobe_Photoshop#cite_note-12\">[12]</a><a href=\"https://en.wikipedia.org/wiki/Adobe_Photoshop#cite_note-13\">[13]</a></p>\n\n<p>Photoshop was initially only available on Macintosh. In 1993, Adobe chief architect Seetharaman Narayanan&nbsp;<a href=\"https://en.wikipedia.org/wiki/Ported\" title=\"Ported\">ported</a>&nbsp;Photoshop to&nbsp;<a href=\"https://en.wikipedia.org/wiki/Microsoft_Windows\" title=\"Microsoft Windows\">Microsoft Windows</a>. The Windows port led to Photoshop reaching a wider&nbsp;<a href=\"https://en.wikipedia.org/wiki/Mass_market\" title=\"Mass market\">mass market</a>&nbsp;audience as&nbsp;<a href=\"https://en.wikipedia.org/wiki/Microsoft\" title=\"Microsoft\">Microsoft</a>&#39;s global reach expanded within the next few years.<a href=\"https://en.wikipedia.org/wiki/Adobe_Photoshop#cite_note-14\">[14]</a>&nbsp;On March 31, 1995, Adobe purchased the rights for Photoshop from Thomas and John Knoll for $34.5 million so Adobe would no longer need to pay a royalty for each copy sold.<a href=\"https://en.wikipedia.org/wiki/Adobe_Photoshop#cite_note-15\">[15]</a><a href=\"https://en.wikipedia.org/wiki/Adobe_Photoshop#cite_note-16\">[16]</a></p>\n\n<h2>File format</h2>\n\n<table>\n	<caption>Photoshop document</caption>\n	<tbody>\n		<tr>\n			<th scope=\"row\"><a href=\"https://en.wikipedia.org/wiki/Filename_extension\" title=\"Filename extension\">Filename extension</a></th>\n			<td>\n			<p>.psd</p>\n			</td>\n		</tr>\n		<tr>\n			<th scope=\"row\"><a href=\"https://en.wikipedia.org/wiki/Media_type\" title=\"Media type\">Internet media&nbsp;type</a></th>\n			<td>\n			<p>image/vnd.adobe.photoshop</p>\n			</td>\n		</tr>\n		<tr>\n			<th scope=\"row\"><a href=\"https://en.wikipedia.org/wiki/Type_code\" title=\"Type code\">Type code</a></th>\n			<td>8BPS</td>\n		</tr>\n		<tr>\n			<th scope=\"row\"><a href=\"https://en.wikipedia.org/wiki/Open_format\" title=\"Open format\">Open format</a>?</th>\n			<td>no</td>\n		</tr>\n		<tr>\n			<th scope=\"row\">Website</th>\n			<td><a href=\"https://www.adobe.com/devnet-apps/photoshop/fileformatashtml/\" rel=\"nofollow\">www.adobe.com/devnet-apps/photoshop/fileformatashtml/</a></td>\n		</tr>\n	</tbody>\n</table>\n\n<p>Photoshop files have default file extension as .PSD, which stands for &quot;PhotoShop Document&quot;.<a href=\"https://en.wikipedia.org/wiki/Adobe_Photoshop#cite_note-17\">[17]</a>&nbsp;A PSD file stores an image with support for most imaging options available in Photoshop. These include layers with&nbsp;<a href=\"https://en.wikipedia.org/wiki/Mask_(computing)\" title=\"Mask (computing)\">masks</a>,&nbsp;<a href=\"https://en.wikipedia.org/wiki/Transparency_(graphic)\" title=\"Transparency (graphic)\">transparency</a>, text,&nbsp;<a href=\"https://en.wikipedia.org/wiki/Alpha_compositing\" title=\"Alpha compositing\">alpha channels</a>&nbsp;and&nbsp;<a href=\"https://en.wikipedia.org/wiki/Spot_color\" title=\"Spot color\">spot colors</a>,&nbsp;<a href=\"https://en.wikipedia.org/wiki/Clipping_path\" title=\"Clipping path\">clipping paths</a>, and&nbsp;<a href=\"https://en.wikipedia.org/wiki/Duotone\" title=\"Duotone\">duotone</a>&nbsp;settings. This is in contrast to many other file formats (e.g., .JPG or .GIF) that restrict content to provide streamlined, predictable functionality. A PSD file has a maximum height and width of 30,000 pixels, and a length limit of two gigabytes.</p>\n\n<p>Photoshop files sometimes have the file extension .PSB, which stands for &quot;PhotoShop Big&quot; (also known as &quot;large document format&quot;).<a href=\"https://en.wikipedia.org/wiki/Adobe_Photoshop#cite_note-18\">[18]</a>&nbsp;A PSB file extends the PSD file format, increasing the maximum height and width to 300,000 pixels and the length limit to around 4&nbsp;<a href=\"https://en.wikipedia.org/wiki/Exabyte\" title=\"Exabyte\">Exabytes</a>. The dimension limit was apparently chosen arbitrarily by Adobe, not based on computer arithmetic constraints (it is not close to a power of two, as is 30,000) but for ease of&nbsp;<a href=\"https://en.wikipedia.org/wiki/Software_testing\" title=\"Software testing\">software testing</a>. PSD and PSB formats are documented.<a href=\"https://en.wikipedia.org/wiki/Adobe_Photoshop#cite_note-19\">[19]</a></p>\n\n<p>Because of Photoshop&#39;s popularity, PSD files are widely used and supported to some extent by most competing software, including Open-source / Free software such as&nbsp;<a href=\"https://en.wikipedia.org/wiki/GIMP\" title=\"GIMP\">GIMP</a>. The .PSD file format can be exported to and from Adobe&#39;s other apps like&nbsp;<a href=\"https://en.wikipedia.org/wiki/Adobe_Illustrator\" title=\"Adobe Illustrator\">Adobe Illustrator</a>,&nbsp;<a href=\"https://en.wikipedia.org/wiki/Adobe_Premiere_Pro\" title=\"Adobe Premiere Pro\">Adobe Premiere Pro</a>, and&nbsp;<a href=\"https://en.wikipedia.org/wiki/Adobe_After_Effects\" title=\"Adobe After Effects\">After Effects</a>.</p>\n\n<h2>Plugins</h2>\n\n<p>Main article:&nbsp;<a href=\"https://en.wikipedia.org/wiki/Photoshop_plugin\" title=\"Photoshop plugin\">Photoshop plugin</a></p>\n\n<p>Photoshop functionality can be extended by add-on programs called&nbsp;<a href=\"https://en.wikipedia.org/wiki/Photoshop_plugin\" title=\"Photoshop plugin\">Photoshop plugins</a>&nbsp;(or plug-ins). Adobe creates some plugins, such as Adobe Camera Raw, but third-party companies develop most plugins, according to Adobe&#39;s specifications. Some are free and some are commercial software. Most plugins work with only Photoshop or Photoshop-compatible hosts, but a few can also be run as standalone applications.</p>\n\n<p>There are various types of plugins, such as filter, export, import, selection, color correction, and automation. The most popular plugins are the filter plugins (also known as a&nbsp;<a href=\"https://en.wikipedia.org/wiki/8bf\" title=\"8bf\">8bf</a>&nbsp;plugins), available under the Filter menu in Photoshop. Filter plugins can either modify the current image or create content. Below are some popular types of plugins, and some well-known companies associated with them:</p>\n\n<ul>\n	<li>Color correction plugins (Alien Skin Software,<a href=\"https://en.wikipedia.org/wiki/Adobe_Photoshop#cite_note-20\">[20]</a>&nbsp;Nik Software,<a href=\"https://en.wikipedia.org/wiki/Adobe_Photoshop#cite_note-21\">[21]</a>&nbsp;OnOne Software,<a href=\"https://en.wikipedia.org/wiki/Adobe_Photoshop#cite_note-22\">[22]</a>&nbsp;Topaz Labs Software,<a href=\"https://en.wikipedia.org/wiki/Adobe_Photoshop#cite_note-23\">[23]</a>&nbsp;The Plugin Site,<a href=\"https://en.wikipedia.org/wiki/Adobe_Photoshop#cite_note-24\">[24]</a>&nbsp;etc.)</li>\n	<li>Special effects plugins (Alien Skin Software, Auto FX Software,<a href=\"https://en.wikipedia.org/wiki/Adobe_Photoshop#cite_note-25\">[25]</a>&nbsp;AV Bros.,<a href=\"https://en.wikipedia.org/wiki/Adobe_Photoshop#cite_note-26\">[26]</a>&nbsp;Flaming Pear Software,<a href=\"https://en.wikipedia.org/wiki/Adobe_Photoshop#cite_note-27\">[27]</a>&nbsp;etc.)</li>\n	<li>3D effects plugins (Andromeda Software,<a href=\"https://en.wikipedia.org/wiki/Adobe_Photoshop#cite_note-28\">[28]</a>&nbsp;Strata,<a href=\"https://en.wikipedia.org/wiki/Adobe_Photoshop#cite_note-29\">[29]</a>&nbsp;etc.)</li>\n</ul>\n\n<p>Adobe Camera Raw (also known as ACR and Camera Raw) is a special plugin, supplied free by Adobe, used primarily to read and process&nbsp;<a href=\"https://en.wikipedia.org/wiki/Raw_image_format\" title=\"Raw image format\">raw image files</a>&nbsp;so that the resulting images can be processed by Photoshop.<a href=\"https://en.wikipedia.org/wiki/Adobe_Photoshop#cite_note-30\">[30]</a>&nbsp;It can also be used from within&nbsp;<a href=\"https://en.wikipedia.org/wiki/Adobe_Bridge\" title=\"Adobe Bridge\">Adobe Bridge</a>.</p>\n', 57, NULL),
(18, 'Introduction', 'Hi there, my name is Dan Scott. I\'m an Adobe Certified Instructor for Photoshop. Now together in this course, me, you, are going to learn everything we need to know about using Photoshop', '<p><strong>Adobe Photoshop</strong>&nbsp;is a&nbsp;<a href=\"https://en.wikipedia.org/wiki/Raster_graphics_editor\" title=\"Raster graphics editor\">raster graphics editor</a>&nbsp;developed and published by&nbsp;<a href=\"https://en.wikipedia.org/wiki/Adobe_Inc.\" title=\"Adobe Inc.\">Adobe Inc.</a>&nbsp;for&nbsp;<a href=\"https://en.wikipedia.org/wiki/Microsoft_Windows\" title=\"Microsoft Windows\">Windows</a>&nbsp;and&nbsp;<a href=\"https://en.wikipedia.org/wiki/MacOS\" title=\"MacOS\">macOS</a>. It was originally created in 1988 by&nbsp;<a href=\"https://en.wikipedia.org/wiki/Thomas_Knoll\" title=\"Thomas Knoll\">Thomas</a>&nbsp;and&nbsp;<a href=\"https://en.wikipedia.org/wiki/John_Knoll\" title=\"John Knoll\">John Knoll</a>. Since then, the software has become the industry standard not only in&nbsp;<a href=\"https://en.wikipedia.org/wiki/Raster_graphics\" title=\"Raster graphics\">raster graphics</a>&nbsp;editing, but in&nbsp;<a href=\"https://en.wikipedia.org/wiki/Digital_art\" title=\"Digital art\">digital art</a>&nbsp;as a whole. The software&#39;s name has thus become a&nbsp;<a href=\"https://en.wikipedia.org/wiki/Generic_trademark\" title=\"Generic trademark\">generic trademark</a>, leading to its usage as a verb (e.g. &quot;to photoshop an image&quot;, &quot;<a href=\"https://en.wikipedia.org/wiki/Photoshopping\" title=\"Photoshopping\">photoshopping</a>&quot;, and &quot;<a href=\"https://en.wikipedia.org/wiki/Photoshop_contest\" title=\"Photoshop contest\">photoshop contest</a>&quot;) although Adobe discourages such use.<a href=\"https://en.wikipedia.org/wiki/Adobe_Photoshop#cite_note-TRADEMARK-5\">[5]</a>&nbsp;Photoshop can edit and compose raster images in multiple layers and supports&nbsp;<a href=\"https://en.wikipedia.org/wiki/Mask_(computing)\" title=\"Mask (computing)\">masks</a>,&nbsp;<a href=\"https://en.wikipedia.org/wiki/Alpha_compositing\" title=\"Alpha compositing\">alpha compositing</a>&nbsp;and several&nbsp;<a href=\"https://en.wikipedia.org/wiki/Color_model\" title=\"Color model\">color models</a>&nbsp;including&nbsp;<a href=\"https://en.wikipedia.org/wiki/RGB_color_model\" title=\"RGB color model\">RGB</a>,&nbsp;<a href=\"https://en.wikipedia.org/wiki/CMYK_color_model\" title=\"CMYK color model\">CMYK</a>,&nbsp;<a href=\"https://en.wikipedia.org/wiki/CIELAB\" title=\"CIELAB\">CIELAB</a>,&nbsp;<a href=\"https://en.wikipedia.org/wiki/Spot_color\" title=\"Spot color\">spot color</a>, and&nbsp;<a href=\"https://en.wikipedia.org/wiki/Duotone\" title=\"Duotone\">duotone</a>. Photoshop uses its own PSD and PSB file formats to support these features. In addition to raster graphics, Photoshop has limited abilities to edit or render text and&nbsp;<a href=\"https://en.wikipedia.org/wiki/Vector_graphics\" title=\"Vector graphics\">vector graphics</a>&nbsp;(especially through&nbsp;<a href=\"https://en.wikipedia.org/wiki/Clipping_path\" title=\"Clipping path\">clipping path</a>&nbsp;for the latter), as well as&nbsp;<a href=\"https://en.wikipedia.org/wiki/3D_graphics\" title=\"3D graphics\">3D graphics</a>&nbsp;and&nbsp;<a href=\"https://en.wikipedia.org/wiki/Video\" title=\"Video\">video</a>. Its feature set can be expanded by&nbsp;<a href=\"https://en.wikipedia.org/wiki/Photoshop_plug-in\" title=\"Photoshop plug-in\">plug-ins</a>; programs developed and distributed independently of Photoshop that run inside it and offer new or enhanced features.</p>\n', 57, NULL),
(19, 'Layers', 'Hi there, my name is Dan Scott. I\'m an Adobe Certified Instructor for Photoshop. Now together in this course, me, you, are going to learn everything we need to know about using Photoshop', '<p>Photoshop was developed in 1987 by two brothers&nbsp;<a href=\"https://en.wikipedia.org/wiki/Thomas_Knoll\" title=\"Thomas Knoll\">Thomas</a>&nbsp;and&nbsp;<a href=\"https://en.wikipedia.org/wiki/John_Knoll\" title=\"John Knoll\">John Knoll</a>, who sold the distribution license to Adobe Systems Incorporated in 1988. Thomas Knoll, a Ph.D. student at the&nbsp;<a href=\"https://en.wikipedia.org/wiki/University_of_Michigan\" title=\"University of Michigan\">University of Michigan</a>, began writing a program on his&nbsp;<a href=\"https://en.wikipedia.org/wiki/Macintosh_Plus\" title=\"Macintosh Plus\">Macintosh Plus</a>&nbsp;to display&nbsp;<a href=\"https://en.wikipedia.org/wiki/Grayscale\" title=\"Grayscale\">grayscale</a>&nbsp;images on a monochrome display. This program (at that time called&nbsp;<strong>Display</strong>) caught the attention of his brother John, an&nbsp;<a href=\"https://en.wikipedia.org/wiki/Industrial_Light_%26_Magic\" title=\"Industrial Light &amp; Magic\">Industrial Light &amp; Magic</a>&nbsp;employee, who recommended that Thomas turn it into a full-fledged image editing program. Thomas took a six-month break from his studies in 1988 to collaborate with his brother on the program. Thomas renamed the program ImagePro, but the name was already taken.<a href=\"https://en.wikipedia.org/wiki/Adobe_Photoshop#cite_note-history-7\">[7]</a>&nbsp;Later that year, Thomas renamed his program&nbsp;<strong>Photoshop</strong>&nbsp;and worked out a short-term deal with scanner manufacturer Barneyscan to distribute copies of the program with a&nbsp;<a href=\"https://en.wikipedia.org/wiki/Image_scanner\" title=\"Image scanner\">slide scanner</a>; a &quot;total of about 200 copies of Photoshop were shipped&quot; this way.<a href=\"https://en.wikipedia.org/wiki/Adobe_Photoshop#cite_note-8\">[8]</a><a href=\"https://en.wikipedia.org/wiki/Adobe_Photoshop#cite_note-9\">[9]</a></p>\n\n<p>During this time, John traveled to&nbsp;<a href=\"https://en.wikipedia.org/wiki/Silicon_Valley\" title=\"Silicon Valley\">Silicon Valley</a>&nbsp;and gave a demonstration of the program to engineers at&nbsp;<a href=\"https://en.wikipedia.org/wiki/Apple_Inc.\" title=\"Apple Inc.\">Apple</a>&nbsp;and Russell Brown, art director at&nbsp;<a href=\"https://en.wikipedia.org/wiki/Adobe_Inc.\" title=\"Adobe Inc.\">Adobe</a>. Both showings were successful, and Adobe decided to purchase the license to distribute in September 1988.<a href=\"https://en.wikipedia.org/wiki/Adobe_Photoshop#cite_note-history-7\">[7]</a>&nbsp;While John worked on&nbsp;<a href=\"https://en.wikipedia.org/wiki/Plug-in_(computing)\" title=\"Plug-in (computing)\">plug-ins</a>&nbsp;in California, Thomas remained in&nbsp;<a href=\"https://en.wikipedia.org/wiki/Ann_Arbor,_Michigan\" title=\"Ann Arbor, Michigan\">Ann Arbor</a>&nbsp;writing code.&nbsp;<em>Photoshop</em>&nbsp;1.0 was released on February 19, 1990, for&nbsp;<a href=\"https://en.wikipedia.org/wiki/Macintosh\" title=\"Macintosh\">Macintosh</a>&nbsp;exclusively.<a href=\"https://en.wikipedia.org/wiki/Adobe_Photoshop#cite_note-10\">[10]</a><a href=\"https://en.wikipedia.org/wiki/Adobe_Photoshop#cite_note-About-11\">[11]</a>&nbsp;The Barneyscan version included advanced color editing features that were stripped from the first Adobe shipped version. The handling of color slowly improved with each release from Adobe and Photoshop quickly became the industry standard in digital color editing. At the time Photoshop 1.0 was released, digital retouching on dedicated high-end systems (such as the&nbsp;<a href=\"https://en.wikipedia.org/wiki/Scailex_Corporation\" title=\"Scailex Corporation\">Scitex</a>) cost around $300 an hour for basic photo retouching. The list price of Photoshop 1.0 for Macintosh in 1990 was $895.<a href=\"https://en.wikipedia.org/wiki/Adobe_Photoshop#cite_note-12\">[12]</a><a href=\"https://en.wikipedia.org/wiki/Adobe_Photoshop#cite_note-13\">[13]</a></p>\n\n<p>Photoshop was initially only available on Macintosh. In 1993, Adobe chief architect Seetharaman Narayanan&nbsp;<a href=\"https://en.wikipedia.org/wiki/Ported\" title=\"Ported\">ported</a>&nbsp;Photoshop to&nbsp;<a href=\"https://en.wikipedia.org/wiki/Microsoft_Windows\" title=\"Microsoft Windows\">Microsoft Windows</a>. The Windows port led to Photoshop reaching a wider&nbsp;<a href=\"https://en.wikipedia.org/wiki/Mass_market\" title=\"Mass market\">mass market</a>&nbsp;audience as&nbsp;<a href=\"https://en.wikipedia.org/wiki/Microsoft\" title=\"Microsoft\">Microsoft</a>&#39;s global reach expanded within the next few years.<a href=\"https://en.wikipedia.org/wiki/Adobe_Photoshop#cite_note-14\">[14]</a>&nbsp;On March 31, 1995, Adobe purchased the rights for Photoshop from Thomas and John Knoll for $34.5 million so Adobe would no longer need to pay a royalty for each copy sold.<a href=\"https://en.wikipedia.org/wiki/Adobe_Photoshop#cite_note-15\">[15]</a><a href=\"https://en.wikipedia.org/wiki/Adobe_Photoshop#cite_note-16\">[16]</a></p>\n\n<h2>File format</h2>\n\n<table>\n	<caption>Photoshop document</caption>\n	<tbody>\n		<tr>\n			<th scope=\"row\"><a href=\"https://en.wikipedia.org/wiki/Filename_extension\" title=\"Filename extension\">Filename extension</a></th>\n			<td>\n			<p>.psd</p>\n			</td>\n		</tr>\n		<tr>\n			<th scope=\"row\"><a href=\"https://en.wikipedia.org/wiki/Media_type\" title=\"Media type\">Internet media&nbsp;type</a></th>\n			<td>\n			<p>image/vnd.adobe.photoshop</p>\n			</td>\n		</tr>\n		<tr>\n			<th scope=\"row\"><a href=\"https://en.wikipedia.org/wiki/Type_code\" title=\"Type code\">Type code</a></th>\n			<td>8BPS</td>\n		</tr>\n		<tr>\n			<th scope=\"row\"><a href=\"https://en.wikipedia.org/wiki/Open_format\" title=\"Open format\">Open format</a>?</th>\n			<td>no</td>\n		</tr>\n		<tr>\n			<th scope=\"row\">Website</th>\n			<td><a href=\"https://www.adobe.com/devnet-apps/photoshop/fileformatashtml/\" rel=\"nofollow\">www.adobe.com/devnet-apps/photoshop/fileformatashtml/</a></td>\n		</tr>\n	</tbody>\n</table>\n\n<p>Photoshop files have default file extension as .PSD, which stands for &quot;PhotoShop Document&quot;.<a href=\"https://en.wikipedia.org/wiki/Adobe_Photoshop#cite_note-17\">[17]</a>&nbsp;A PSD file stores an image with support for most imaging options available in Photoshop. These include layers with&nbsp;<a href=\"https://en.wikipedia.org/wiki/Mask_(computing)\" title=\"Mask (computing)\">masks</a>,&nbsp;<a href=\"https://en.wikipedia.org/wiki/Transparency_(graphic)\" title=\"Transparency (graphic)\">transparency</a>, text,&nbsp;<a href=\"https://en.wikipedia.org/wiki/Alpha_compositing\" title=\"Alpha compositing\">alpha channels</a>&nbsp;and&nbsp;<a href=\"https://en.wikipedia.org/wiki/Spot_color\" title=\"Spot color\">spot colors</a>,&nbsp;<a href=\"https://en.wikipedia.org/wiki/Clipping_path\" title=\"Clipping path\">clipping paths</a>, and&nbsp;<a href=\"https://en.wikipedia.org/wiki/Duotone\" title=\"Duotone\">duotone</a>&nbsp;settings. This is in contrast to many other file formats (e.g., .JPG or .GIF) that restrict content to provide streamlined, predictable functionality. A PSD file has a maximum height and width of 30,000 pixels, and a length limit of two gigabytes.</p>\n\n<p>Photoshop files sometimes have the file extension .PSB, which stands for &quot;PhotoShop Big&quot; (also known as &quot;large document format&quot;).<a href=\"https://en.wikipedia.org/wiki/Adobe_Photoshop#cite_note-18\">[18]</a>&nbsp;A PSB file extends the PSD file format, increasing the maximum height and width to 300,000 pixels and the length limit to around 4&nbsp;<a href=\"https://en.wikipedia.org/wiki/Exabyte\" title=\"Exabyte\">Exabytes</a>. The dimension limit was apparently chosen arbitrarily by Adobe, not based on computer arithmetic constraints (it is not close to a power of two, as is 30,000) but for ease of&nbsp;<a href=\"https://en.wikipedia.org/wiki/Software_testing\" title=\"Software testing\">software testing</a>. PSD and PSB formats are documented.<a href=\"https://en.wikipedia.org/wiki/Adobe_Photoshop#cite_note-19\">[19]</a></p>\n\n<p>Because of Photoshop&#39;s popularity, PSD files are widely used and supported to some extent by most competing software, including Open-source / Free software such as&nbsp;<a href=\"https://en.wikipedia.org/wiki/GIMP\" title=\"GIMP\">GIMP</a>. The .PSD file format can be exported to and from Adobe&#39;s other apps like&nbsp;<a href=\"https://en.wikipedia.org/wiki/Adobe_Illustrator\" title=\"Adobe Illustrator\">Adobe Illustrator</a>,&nbsp;<a href=\"https://en.wikipedia.org/wiki/Adobe_Premiere_Pro\" title=\"Adobe Premiere Pro\">Adobe Premiere Pro</a>, and&nbsp;<a href=\"https://en.wikipedia.org/wiki/Adobe_After_Effects\" title=\"Adobe After Effects\">After Effects</a>.</p>\n\n<h2>Plugins</h2>\n\n<p>Main article:&nbsp;<a href=\"https://en.wikipedia.org/wiki/Photoshop_plugin\" title=\"Photoshop plugin\">Photoshop plugin</a></p>\n\n<p>Photoshop functionality can be extended by add-on programs called&nbsp;<a href=\"https://en.wikipedia.org/wiki/Photoshop_plugin\" title=\"Photoshop plugin\">Photoshop plugins</a>&nbsp;(or plug-ins). Adobe creates some plugins, such as Adobe Camera Raw, but third-party companies develop most plugins, according to Adobe&#39;s specifications. Some are free and some are commercial software. Most plugins work with only Photoshop or Photoshop-compatible hosts, but a few can also be run as standalone applications.</p>\n\n<p>There are various types of plugins, such as filter, export, import, selection, color correction, and automation. The most popular plugins are the filter plugins (also known as a&nbsp;<a href=\"https://en.wikipedia.org/wiki/8bf\" title=\"8bf\">8bf</a>&nbsp;plugins), available under the Filter menu in Photoshop. Filter plugins can either modify the current image or create content. Below are some popular types of plugins, and some well-known companies associated with them:</p>\n\n<ul>\n	<li>Color correction plugins (Alien Skin Software,<a href=\"https://en.wikipedia.org/wiki/Adobe_Photoshop#cite_note-20\">[20]</a>&nbsp;Nik Software,<a href=\"https://en.wikipedia.org/wiki/Adobe_Photoshop#cite_note-21\">[21]</a>&nbsp;OnOne Software,<a href=\"https://en.wikipedia.org/wiki/Adobe_Photoshop#cite_note-22\">[22]</a>&nbsp;Topaz Labs Software,<a href=\"https://en.wikipedia.org/wiki/Adobe_Photoshop#cite_note-23\">[23]</a>&nbsp;The Plugin Site,<a href=\"https://en.wikipedia.org/wiki/Adobe_Photoshop#cite_note-24\">[24]</a>&nbsp;etc.)</li>\n	<li>Special effects plugins (Alien Skin Software, Auto FX Software,<a href=\"https://en.wikipedia.org/wiki/Adobe_Photoshop#cite_note-25\">[25]</a>&nbsp;AV Bros.,<a href=\"https://en.wikipedia.org/wiki/Adobe_Photoshop#cite_note-26\">[26]</a>&nbsp;Flaming Pear Software,<a href=\"https://en.wikipedia.org/wiki/Adobe_Photoshop#cite_note-27\">[27]</a>&nbsp;etc.)</li>\n	<li>3D effects plugins (Andromeda Software,<a href=\"https://en.wikipedia.org/wiki/Adobe_Photoshop#cite_note-28\">[28]</a>&nbsp;Strata,<a href=\"https://en.wikipedia.org/wiki/Adobe_Photoshop#cite_note-29\">[29]</a>&nbsp;etc.)</li>\n</ul>\n\n<p>Adobe Camera Raw (also known as ACR and Camera Raw) is a special plugin, supplied free by Adobe, used primarily to read and process&nbsp;<a href=\"https://en.wikipedia.org/wiki/Raw_image_format\" title=\"Raw image format\">raw image files</a>&nbsp;so that the resulting images can be processed by Photoshop.<a href=\"https://en.wikipedia.org/wiki/Adobe_Photoshop#cite_note-30\">[30]</a>&nbsp;It can also be used from within&nbsp;<a href=\"https://en.wikipedia.org/wiki/Adobe_Bridge\" title=\"Adobe Bridge\">Adobe Bridge</a>.</p>\n', 57, NULL),
(21, 'Test ajax', 'Oka', '<p>Photoshop was developed in 1987 by two brothers&nbsp;<a href=\"https://en.wikipedia.org/wiki/Thomas_Knoll\" title=\"Thomas Knoll\">Thomas</a>&nbsp;and&nbsp;<a href=\"https://en.wikipedia.org/wiki/John_Knoll\" title=\"John Knoll\">John Knoll</a>, who sold the distribution license to Adobe Systems Incorporated in 1988. Thomas Knoll, a Ph.D. student at the&nbsp;<a href=\"https://en.wikipedia.org/wiki/University_of_Michigan\" title=\"University of Michigan\">University of Michigan</a>, began writing a program on his&nbsp;<a href=\"https://en.wikipedia.org/wiki/Macintosh_Plus\" title=\"Macintosh Plus\">Macintosh Plus</a>&nbsp;to display&nbsp;<a href=\"https://en.wikipedia.org/wiki/Grayscale\" title=\"Grayscale\">grayscale</a>&nbsp;images on a monochrome display. This program (at that time called&nbsp;<strong>Display</strong>) caught the attention of his brother John, an&nbsp;<a href=\"https://en.wikipedia.org/wiki/Industrial_Light_%26_Magic\" title=\"Industrial Light &amp; Magic\">Industrial Light &amp; Magic</a>&nbsp;employee, who recommended that Thomas turn it into a full-fledged image editing program. Thomas took a six-month break from his studies in 1988 to collaborate with his brother on the program. Thomas renamed the program ImagePro, but the name was already taken.<a href=\"https://en.wikipedia.org/wiki/Adobe_Photoshop#cite_note-history-7\">[7]</a>&nbsp;Later that year, Thomas renamed his program&nbsp;<strong>Photoshop</strong>&nbsp;and worked out a short-term deal with scanner manufacturer Barneyscan to distribute copies of the program with a&nbsp;<a href=\"https://en.wikipedia.org/wiki/Image_scanner\" title=\"Image scanner\">slide scanner</a>; a &quot;total of about 200 copies of Photoshop were shipped&quot; this way.<a href=\"https://en.wikipedia.org/wiki/Adobe_Photoshop#cite_note-8\">[8]</a><a href=\"https://en.wikipedia.org/wiki/Adobe_Photoshop#cite_note-9\">[9]</a></p>\n\n<p>During this time, John traveled to&nbsp;<a href=\"https://en.wikipedia.org/wiki/Silicon_Valley\" title=\"Silicon Valley\">Silicon Valley</a>&nbsp;and gave a demonstration of the program to engineers at&nbsp;<a href=\"https://en.wikipedia.org/wiki/Apple_Inc.\" title=\"Apple Inc.\">Apple</a>&nbsp;and Russell Brown, art director at&nbsp;<a href=\"https://en.wikipedia.org/wiki/Adobe_Inc.\" title=\"Adobe Inc.\">Adobe</a>. Both showings were successful, and Adobe decided to purchase the license to distribute in September 1988.<a href=\"https://en.wikipedia.org/wiki/Adobe_Photoshop#cite_note-history-7\">[7]</a>&nbsp;While John worked on&nbsp;<a href=\"https://en.wikipedia.org/wiki/Plug-in_(computing)\" title=\"Plug-in (computing)\">plug-ins</a>&nbsp;in California, Thomas remained in&nbsp;<a href=\"https://en.wikipedia.org/wiki/Ann_Arbor,_Michigan\" title=\"Ann Arbor, Michigan\">Ann Arbor</a>&nbsp;writing code.&nbsp;<em>Photoshop</em>&nbsp;1.0 was released on February 19, 1990, for&nbsp;<a href=\"https://en.wikipedia.org/wiki/Macintosh\" title=\"Macintosh\">Macintosh</a>&nbsp;exclusively.<a href=\"https://en.wikipedia.org/wiki/Adobe_Photoshop#cite_note-10\">[10]</a><a href=\"https://en.wikipedia.org/wiki/Adobe_Photoshop#cite_note-About-11\">[11]</a>&nbsp;The Barneyscan version included advanced color editing features that were stripped from the first Adobe shipped version. The handling of color slowly improved with each release from Adobe and Photoshop quickly became the industry standard in digital color editing. At the time Photoshop 1.0 was released, digital retouching on dedicated high-end systems (such as the&nbsp;<a href=\"https://en.wikipedia.org/wiki/Scailex_Corporation\" title=\"Scailex Corporation\">Scitex</a>) cost around $300 an hour for basic photo retouching. The list price of Photoshop 1.0 for Macintosh in 1990 was $895.<a href=\"https://en.wikipedia.org/wiki/Adobe_Photoshop#cite_note-12\">[12]</a><a href=\"https://en.wikipedia.org/wiki/Adobe_Photoshop#cite_note-13\">[13]</a></p>\n\n<p>Photoshop was initially only available on Macintosh. In 1993, Adobe chief architect Seetharaman Narayanan&nbsp;<a href=\"https://en.wikipedia.org/wiki/Ported\" title=\"Ported\">ported</a>&nbsp;Photoshop to&nbsp;<a href=\"https://en.wikipedia.org/wiki/Microsoft_Windows\" title=\"Microsoft Windows\">Microsoft Windows</a>. The Windows port led to Photoshop reaching a wider&nbsp;<a href=\"https://en.wikipedia.org/wiki/Mass_market\" title=\"Mass market\">mass market</a>&nbsp;audience as&nbsp;<a href=\"https://en.wikipedia.org/wiki/Microsoft\" title=\"Microsoft\">Microsoft</a>&#39;s global reach expanded within the next few years.<a href=\"https://en.wikipedia.org/wiki/Adobe_Photoshop#cite_note-14\">[14]</a>&nbsp;On March 31, 1995, Adobe purchased the rights for Photoshop from Thomas and John Knoll for $34.5 million so Adobe would no longer need to pay a royalty for each copy sold.<a href=\"https://en.wikipedia.org/wiki/Adobe_Photoshop#cite_note-15\">[15]</a><a href=\"https://en.wikipedia.org/wiki/Adobe_Photoshop#cite_note-16\">[16]</a></p>\n\n<h2>File format</h2>\n\n<table>\n	<caption>Photoshop document</caption>\n	<tbody>\n		<tr>\n			<th scope=\"row\"><a href=\"https://en.wikipedia.org/wiki/Filename_extension\" title=\"Filename extension\">Filename extension</a></th>\n			<td>\n			<p>.psd</p>\n			</td>\n		</tr>\n		<tr>\n			<th scope=\"row\"><a href=\"https://en.wikipedia.org/wiki/Media_type\" title=\"Media type\">Internet media&nbsp;type</a></th>\n			<td>\n			<p>image/vnd.adobe.photoshop</p>\n			</td>\n		</tr>\n		<tr>\n			<th scope=\"row\"><a href=\"https://en.wikipedia.org/wiki/Type_code\" title=\"Type code\">Type code</a></th>\n			<td>8BPS</td>\n		</tr>\n		<tr>\n			<th scope=\"row\"><a href=\"https://en.wikipedia.org/wiki/Open_format\" title=\"Open format\">Open format</a>?</th>\n			<td>no</td>\n		</tr>\n		<tr>\n			<th scope=\"row\">Website</th>\n			<td><a href=\"https://www.adobe.com/devnet-apps/photoshop/fileformatashtml/\" rel=\"nofollow\">www.adobe.com/devnet-apps/photoshop/fileformatashtml/</a></td>\n		</tr>\n	</tbody>\n</table>\n\n<p>Photoshop files have default file extension as .PSD, which stands for &quot;PhotoShop Document&quot;.<a href=\"https://en.wikipedia.org/wiki/Adobe_Photoshop#cite_note-17\">[17]</a>&nbsp;A PSD file stores an image with support for most imaging options available in Photoshop. These include layers with&nbsp;<a href=\"https://en.wikipedia.org/wiki/Mask_(computing)\" title=\"Mask (computing)\">masks</a>,&nbsp;<a href=\"https://en.wikipedia.org/wiki/Transparency_(graphic)\" title=\"Transparency (graphic)\">transparency</a>, text,&nbsp;<a href=\"https://en.wikipedia.org/wiki/Alpha_compositing\" title=\"Alpha compositing\">alpha channels</a>&nbsp;and&nbsp;<a href=\"https://en.wikipedia.org/wiki/Spot_color\" title=\"Spot color\">spot colors</a>,&nbsp;<a href=\"https://en.wikipedia.org/wiki/Clipping_path\" title=\"Clipping path\">clipping paths</a>, and&nbsp;<a href=\"https://en.wikipedia.org/wiki/Duotone\" title=\"Duotone\">duotone</a>&nbsp;settings. This is in contrast to many other file formats (e.g., .JPG or .GIF) that restrict content to provide streamlined, predictable functionality. A PSD file has a maximum height and width of 30,000 pixels, and a length limit of two gigabytes.</p>\n\n<p>Photoshop files sometimes have the file extension .PSB, which stands for &quot;PhotoShop Big&quot; (also known as &quot;large document format&quot;).<a href=\"https://en.wikipedia.org/wiki/Adobe_Photoshop#cite_note-18\">[18]</a>&nbsp;A PSB file extends the PSD file format, increasing the maximum height and width to 300,000 pixels and the length limit to around 4&nbsp;<a href=\"https://en.wikipedia.org/wiki/Exabyte\" title=\"Exabyte\">Exabytes</a>. The dimension limit was apparently chosen arbitrarily by Adobe, not based on computer arithmetic constraints (it is not close to a power of two, as is 30,000) but for ease of&nbsp;<a href=\"https://en.wikipedia.org/wiki/Software_testing\" title=\"Software testing\">software testing</a>. PSD and PSB formats are documented.<a href=\"https://en.wikipedia.org/wiki/Adobe_Photoshop#cite_note-19\">[19]</a></p>\n\n<p>Because of Photoshop&#39;s popularity, PSD files are widely used and supported to some extent by most competing software, including Open-source / Free software such as&nbsp;<a href=\"https://en.wikipedia.org/wiki/GIMP\" title=\"GIMP\">GIMP</a>. The .PSD file format can be exported to and from Adobe&#39;s other apps like&nbsp;<a href=\"https://en.wikipedia.org/wiki/Adobe_Illustrator\" title=\"Adobe Illustrator\">Adobe Illustrator</a>,&nbsp;<a href=\"https://en.wikipedia.org/wiki/Adobe_Premiere_Pro\" title=\"Adobe Premiere Pro\">Adobe Premiere Pro</a>, and&nbsp;<a href=\"https://en.wikipedia.org/wiki/Adobe_After_Effects\" title=\"Adobe After Effects\">After Effects</a>.</p>\n\n<h2>Plugins</h2>\n\n<p>Main article:&nbsp;<a href=\"https://en.wikipedia.org/wiki/Photoshop_plugin\" title=\"Photoshop plugin\">Photoshop plugin</a></p>\n\n<p>Photoshop functionality can be extended by add-on programs called&nbsp;<a href=\"https://en.wikipedia.org/wiki/Photoshop_plugin\" title=\"Photoshop plugin\">Photoshop plugins</a>&nbsp;(or plug-ins). Adobe creates some plugins, such as Adobe Camera Raw, but third-party companies develop most plugins, according to Adobe&#39;s specifications. Some are free and some are commercial software. Most plugins work with only Photoshop or Photoshop-compatible hosts, but a few can also be run as standalone applications.</p>\n\n<p>There are various types of plugins, such as filter, export, import, selection, color correction, and automation. The most popular plugins are the filter plugins (also known as a&nbsp;<a href=\"https://en.wikipedia.org/wiki/8bf\" title=\"8bf\">8bf</a>&nbsp;plugins), available under the Filter menu in Photoshop. Filter plugins can either modify the current image or create content. Below are some popular types of plugins, and some well-known companies associated with them:</p>\n\n<ul>\n	<li>Color correction plugins (Alien Skin Software,<a href=\"https://en.wikipedia.org/wiki/Adobe_Photoshop#cite_note-20\">[20]</a>&nbsp;Nik Software,<a href=\"https://en.wikipedia.org/wiki/Adobe_Photoshop#cite_note-21\">[21]</a>&nbsp;OnOne Software,<a href=\"https://en.wikipedia.org/wiki/Adobe_Photoshop#cite_note-22\">[22]</a>&nbsp;Topaz Labs Software,<a href=\"https://en.wikipedia.org/wiki/Adobe_Photoshop#cite_note-23\">[23]</a>&nbsp;The Plugin Site,<a href=\"https://en.wikipedia.org/wiki/Adobe_Photoshop#cite_note-24\">[24]</a>&nbsp;etc.)</li>\n	<li>Special effects plugins (Alien Skin Software, Auto FX Software,<a href=\"https://en.wikipedia.org/wiki/Adobe_Photoshop#cite_note-25\">[25]</a>&nbsp;AV Bros.,<a href=\"https://en.wikipedia.org/wiki/Adobe_Photoshop#cite_note-26\">[26]</a>&nbsp;Flaming Pear Software,<a href=\"https://en.wikipedia.org/wiki/Adobe_Photoshop#cite_note-27\">[27]</a>&nbsp;etc.)</li>\n	<li>3D effects plugins (Andromeda Software,<a href=\"https://en.wikipedia.org/wiki/Adobe_Photoshop#cite_note-28\">[28]</a>&nbsp;Strata,<a href=\"https://en.wikipedia.org/wiki/Adobe_Photoshop#cite_note-29\">[29]</a>&nbsp;etc.)</li>\n</ul>\n\n<p>Adobe Camera Raw (also known as ACR and Camera Raw) is a special plugin, supplied free by Adobe, used primarily to read and process&nbsp;<a href=\"https://en.wikipedia.org/wiki/Raw_image_format\" title=\"Raw image format\">raw image files</a>&nbsp;so that the resulting images can be processed by Photoshop.<a href=\"https://en.wikipedia.org/wiki/Adobe_Photoshop#cite_note-30\">[30]</a>&nbsp;It can also be used from within&nbsp;<a href=\"https://en.wikipedia.org/wiki/Adobe_Bridge\" title=\"Adobe Bridge\">Adobe Bridge</a>.</p>\n', 57, NULL);
INSERT INTO `courses_coursetopic` (`id`, `topic_title`, `topic_description`, `topic_content`, `course_id`, `topic_duration`) VALUES
(22, 'Test ajax', 'Oka', '<p>Photoshop was developed in 1987 by two brothers&nbsp;<a href=\"https://en.wikipedia.org/wiki/Thomas_Knoll\" title=\"Thomas Knoll\">Thomas</a>&nbsp;and&nbsp;<a href=\"https://en.wikipedia.org/wiki/John_Knoll\" title=\"John Knoll\">John Knoll</a>, who sold the distribution license to Adobe Systems Incorporated in 1988. Thomas Knoll, a Ph.D. student at the&nbsp;<a href=\"https://en.wikipedia.org/wiki/University_of_Michigan\" title=\"University of Michigan\">University of Michigan</a>, began writing a program on his&nbsp;<a href=\"https://en.wikipedia.org/wiki/Macintosh_Plus\" title=\"Macintosh Plus\">Macintosh Plus</a>&nbsp;to display&nbsp;<a href=\"https://en.wikipedia.org/wiki/Grayscale\" title=\"Grayscale\">grayscale</a>&nbsp;images on a monochrome display. This program (at that time called&nbsp;<strong>Display</strong>) caught the attention of his brother John, an&nbsp;<a href=\"https://en.wikipedia.org/wiki/Industrial_Light_%26_Magic\" title=\"Industrial Light &amp; Magic\">Industrial Light &amp; Magic</a>&nbsp;employee, who recommended that Thomas turn it into a full-fledged image editing program. Thomas took a six-month break from his studies in 1988 to collaborate with his brother on the program. Thomas renamed the program ImagePro, but the name was already taken.<a href=\"https://en.wikipedia.org/wiki/Adobe_Photoshop#cite_note-history-7\">[7]</a>&nbsp;Later that year, Thomas renamed his program&nbsp;<strong>Photoshop</strong>&nbsp;and worked out a short-term deal with scanner manufacturer Barneyscan to distribute copies of the program with a&nbsp;<a href=\"https://en.wikipedia.org/wiki/Image_scanner\" title=\"Image scanner\">slide scanner</a>; a &quot;total of about 200 copies of Photoshop were shipped&quot; this way.<a href=\"https://en.wikipedia.org/wiki/Adobe_Photoshop#cite_note-8\">[8]</a><a href=\"https://en.wikipedia.org/wiki/Adobe_Photoshop#cite_note-9\">[9]</a></p>\n\n<p>During this time, John traveled to&nbsp;<a href=\"https://en.wikipedia.org/wiki/Silicon_Valley\" title=\"Silicon Valley\">Silicon Valley</a>&nbsp;and gave a demonstration of the program to engineers at&nbsp;<a href=\"https://en.wikipedia.org/wiki/Apple_Inc.\" title=\"Apple Inc.\">Apple</a>&nbsp;and Russell Brown, art director at&nbsp;<a href=\"https://en.wikipedia.org/wiki/Adobe_Inc.\" title=\"Adobe Inc.\">Adobe</a>. Both showings were successful, and Adobe decided to purchase the license to distribute in September 1988.<a href=\"https://en.wikipedia.org/wiki/Adobe_Photoshop#cite_note-history-7\">[7]</a>&nbsp;While John worked on&nbsp;<a href=\"https://en.wikipedia.org/wiki/Plug-in_(computing)\" title=\"Plug-in (computing)\">plug-ins</a>&nbsp;in California, Thomas remained in&nbsp;<a href=\"https://en.wikipedia.org/wiki/Ann_Arbor,_Michigan\" title=\"Ann Arbor, Michigan\">Ann Arbor</a>&nbsp;writing code.&nbsp;<em>Photoshop</em>&nbsp;1.0 was released on February 19, 1990, for&nbsp;<a href=\"https://en.wikipedia.org/wiki/Macintosh\" title=\"Macintosh\">Macintosh</a>&nbsp;exclusively.<a href=\"https://en.wikipedia.org/wiki/Adobe_Photoshop#cite_note-10\">[10]</a><a href=\"https://en.wikipedia.org/wiki/Adobe_Photoshop#cite_note-About-11\">[11]</a>&nbsp;The Barneyscan version included advanced color editing features that were stripped from the first Adobe shipped version. The handling of color slowly improved with each release from Adobe and Photoshop quickly became the industry standard in digital color editing. At the time Photoshop 1.0 was released, digital retouching on dedicated high-end systems (such as the&nbsp;<a href=\"https://en.wikipedia.org/wiki/Scailex_Corporation\" title=\"Scailex Corporation\">Scitex</a>) cost around $300 an hour for basic photo retouching. The list price of Photoshop 1.0 for Macintosh in 1990 was $895.<a href=\"https://en.wikipedia.org/wiki/Adobe_Photoshop#cite_note-12\">[12]</a><a href=\"https://en.wikipedia.org/wiki/Adobe_Photoshop#cite_note-13\">[13]</a></p>\n\n<p>Photoshop was initially only available on Macintosh. In 1993, Adobe chief architect Seetharaman Narayanan&nbsp;<a href=\"https://en.wikipedia.org/wiki/Ported\" title=\"Ported\">ported</a>&nbsp;Photoshop to&nbsp;<a href=\"https://en.wikipedia.org/wiki/Microsoft_Windows\" title=\"Microsoft Windows\">Microsoft Windows</a>. The Windows port led to Photoshop reaching a wider&nbsp;<a href=\"https://en.wikipedia.org/wiki/Mass_market\" title=\"Mass market\">mass market</a>&nbsp;audience as&nbsp;<a href=\"https://en.wikipedia.org/wiki/Microsoft\" title=\"Microsoft\">Microsoft</a>&#39;s global reach expanded within the next few years.<a href=\"https://en.wikipedia.org/wiki/Adobe_Photoshop#cite_note-14\">[14]</a>&nbsp;On March 31, 1995, Adobe purchased the rights for Photoshop from Thomas and John Knoll for $34.5 million so Adobe would no longer need to pay a royalty for each copy sold.<a href=\"https://en.wikipedia.org/wiki/Adobe_Photoshop#cite_note-15\">[15]</a><a href=\"https://en.wikipedia.org/wiki/Adobe_Photoshop#cite_note-16\">[16]</a></p>\n\n<h2>File format</h2>\n\n<table>\n	<caption>Photoshop document</caption>\n	<tbody>\n		<tr>\n			<th scope=\"row\"><a href=\"https://en.wikipedia.org/wiki/Filename_extension\" title=\"Filename extension\">Filename extension</a></th>\n			<td>\n			<p>.psd</p>\n			</td>\n		</tr>\n		<tr>\n			<th scope=\"row\"><a href=\"https://en.wikipedia.org/wiki/Media_type\" title=\"Media type\">Internet media&nbsp;type</a></th>\n			<td>\n			<p>image/vnd.adobe.photoshop</p>\n			</td>\n		</tr>\n		<tr>\n			<th scope=\"row\"><a href=\"https://en.wikipedia.org/wiki/Type_code\" title=\"Type code\">Type code</a></th>\n			<td>8BPS</td>\n		</tr>\n		<tr>\n			<th scope=\"row\"><a href=\"https://en.wikipedia.org/wiki/Open_format\" title=\"Open format\">Open format</a>?</th>\n			<td>no</td>\n		</tr>\n		<tr>\n			<th scope=\"row\">Website</th>\n			<td><a href=\"https://www.adobe.com/devnet-apps/photoshop/fileformatashtml/\" rel=\"nofollow\">www.adobe.com/devnet-apps/photoshop/fileformatashtml/</a></td>\n		</tr>\n	</tbody>\n</table>\n\n<p>Photoshop files have default file extension as .PSD, which stands for &quot;PhotoShop Document&quot;.<a href=\"https://en.wikipedia.org/wiki/Adobe_Photoshop#cite_note-17\">[17]</a>&nbsp;A PSD file stores an image with support for most imaging options available in Photoshop. These include layers with&nbsp;<a href=\"https://en.wikipedia.org/wiki/Mask_(computing)\" title=\"Mask (computing)\">masks</a>,&nbsp;<a href=\"https://en.wikipedia.org/wiki/Transparency_(graphic)\" title=\"Transparency (graphic)\">transparency</a>, text,&nbsp;<a href=\"https://en.wikipedia.org/wiki/Alpha_compositing\" title=\"Alpha compositing\">alpha channels</a>&nbsp;and&nbsp;<a href=\"https://en.wikipedia.org/wiki/Spot_color\" title=\"Spot color\">spot colors</a>,&nbsp;<a href=\"https://en.wikipedia.org/wiki/Clipping_path\" title=\"Clipping path\">clipping paths</a>, and&nbsp;<a href=\"https://en.wikipedia.org/wiki/Duotone\" title=\"Duotone\">duotone</a>&nbsp;settings. This is in contrast to many other file formats (e.g., .JPG or .GIF) that restrict content to provide streamlined, predictable functionality. A PSD file has a maximum height and width of 30,000 pixels, and a length limit of two gigabytes.</p>\n\n<p>Photoshop files sometimes have the file extension .PSB, which stands for &quot;PhotoShop Big&quot; (also known as &quot;large document format&quot;).<a href=\"https://en.wikipedia.org/wiki/Adobe_Photoshop#cite_note-18\">[18]</a>&nbsp;A PSB file extends the PSD file format, increasing the maximum height and width to 300,000 pixels and the length limit to around 4&nbsp;<a href=\"https://en.wikipedia.org/wiki/Exabyte\" title=\"Exabyte\">Exabytes</a>. The dimension limit was apparently chosen arbitrarily by Adobe, not based on computer arithmetic constraints (it is not close to a power of two, as is 30,000) but for ease of&nbsp;<a href=\"https://en.wikipedia.org/wiki/Software_testing\" title=\"Software testing\">software testing</a>. PSD and PSB formats are documented.<a href=\"https://en.wikipedia.org/wiki/Adobe_Photoshop#cite_note-19\">[19]</a></p>\n\n<p>Because of Photoshop&#39;s popularity, PSD files are widely used and supported to some extent by most competing software, including Open-source / Free software such as&nbsp;<a href=\"https://en.wikipedia.org/wiki/GIMP\" title=\"GIMP\">GIMP</a>. The .PSD file format can be exported to and from Adobe&#39;s other apps like&nbsp;<a href=\"https://en.wikipedia.org/wiki/Adobe_Illustrator\" title=\"Adobe Illustrator\">Adobe Illustrator</a>,&nbsp;<a href=\"https://en.wikipedia.org/wiki/Adobe_Premiere_Pro\" title=\"Adobe Premiere Pro\">Adobe Premiere Pro</a>, and&nbsp;<a href=\"https://en.wikipedia.org/wiki/Adobe_After_Effects\" title=\"Adobe After Effects\">After Effects</a>.</p>\n\n<h2>Plugins</h2>\n\n<p>Main article:&nbsp;<a href=\"https://en.wikipedia.org/wiki/Photoshop_plugin\" title=\"Photoshop plugin\">Photoshop plugin</a></p>\n\n<p>Photoshop functionality can be extended by add-on programs called&nbsp;<a href=\"https://en.wikipedia.org/wiki/Photoshop_plugin\" title=\"Photoshop plugin\">Photoshop plugins</a>&nbsp;(or plug-ins). Adobe creates some plugins, such as Adobe Camera Raw, but third-party companies develop most plugins, according to Adobe&#39;s specifications. Some are free and some are commercial software. Most plugins work with only Photoshop or Photoshop-compatible hosts, but a few can also be run as standalone applications.</p>\n\n<p>There are various types of plugins, such as filter, export, import, selection, color correction, and automation. The most popular plugins are the filter plugins (also known as a&nbsp;<a href=\"https://en.wikipedia.org/wiki/8bf\" title=\"8bf\">8bf</a>&nbsp;plugins), available under the Filter menu in Photoshop. Filter plugins can either modify the current image or create content. Below are some popular types of plugins, and some well-known companies associated with them:</p>\n\n<ul>\n	<li>Color correction plugins (Alien Skin Software,<a href=\"https://en.wikipedia.org/wiki/Adobe_Photoshop#cite_note-20\">[20]</a>&nbsp;Nik Software,<a href=\"https://en.wikipedia.org/wiki/Adobe_Photoshop#cite_note-21\">[21]</a>&nbsp;OnOne Software,<a href=\"https://en.wikipedia.org/wiki/Adobe_Photoshop#cite_note-22\">[22]</a>&nbsp;Topaz Labs Software,<a href=\"https://en.wikipedia.org/wiki/Adobe_Photoshop#cite_note-23\">[23]</a>&nbsp;The Plugin Site,<a href=\"https://en.wikipedia.org/wiki/Adobe_Photoshop#cite_note-24\">[24]</a>&nbsp;etc.)</li>\n	<li>Special effects plugins (Alien Skin Software, Auto FX Software,<a href=\"https://en.wikipedia.org/wiki/Adobe_Photoshop#cite_note-25\">[25]</a>&nbsp;AV Bros.,<a href=\"https://en.wikipedia.org/wiki/Adobe_Photoshop#cite_note-26\">[26]</a>&nbsp;Flaming Pear Software,<a href=\"https://en.wikipedia.org/wiki/Adobe_Photoshop#cite_note-27\">[27]</a>&nbsp;etc.)</li>\n	<li>3D effects plugins (Andromeda Software,<a href=\"https://en.wikipedia.org/wiki/Adobe_Photoshop#cite_note-28\">[28]</a>&nbsp;Strata,<a href=\"https://en.wikipedia.org/wiki/Adobe_Photoshop#cite_note-29\">[29]</a>&nbsp;etc.)</li>\n</ul>\n\n<p>Adobe Camera Raw (also known as ACR and Camera Raw) is a special plugin, supplied free by Adobe, used primarily to read and process&nbsp;<a href=\"https://en.wikipedia.org/wiki/Raw_image_format\" title=\"Raw image format\">raw image files</a>&nbsp;so that the resulting images can be processed by Photoshop.<a href=\"https://en.wikipedia.org/wiki/Adobe_Photoshop#cite_note-30\">[30]</a>&nbsp;It can also be used from within&nbsp;<a href=\"https://en.wikipedia.org/wiki/Adobe_Bridge\" title=\"Adobe Bridge\">Adobe Bridge</a>.</p>\n', 57, 200),
(23, '1', '1', '<p>Photoshop was developed in 1987 by two brothers&nbsp;<a href=\"https://en.wikipedia.org/wiki/Thomas_Knoll\" title=\"Thomas Knoll\">Thomas</a>&nbsp;and&nbsp;<a href=\"https://en.wikipedia.org/wiki/John_Knoll\" title=\"John Knoll\">John Knoll</a>, who sold the distribution license to Adobe Systems Incorporated in 1988. Thomas Knoll, a Ph.D. student at the&nbsp;<a href=\"https://en.wikipedia.org/wiki/University_of_Michigan\" title=\"University of Michigan\">University of Michigan</a>, began writing a program on his&nbsp;<a href=\"https://en.wikipedia.org/wiki/Macintosh_Plus\" title=\"Macintosh Plus\">Macintosh Plus</a>&nbsp;to display&nbsp;<a href=\"https://en.wikipedia.org/wiki/Grayscale\" title=\"Grayscale\">grayscale</a>&nbsp;images on a monochrome display. This program (at that time called&nbsp;<strong>Display</strong>) caught the attention of his brother John, an&nbsp;<a href=\"https://en.wikipedia.org/wiki/Industrial_Light_%26_Magic\" title=\"Industrial Light &amp; Magic\">Industrial Light &amp; Magic</a>&nbsp;employee, who recommended that Thomas turn it into a full-fledged image editing program. Thomas took a six-month break from his studies in 1988 to collaborate with his brother on the program. Thomas renamed the program ImagePro, but the name was already taken.<a href=\"https://en.wikipedia.org/wiki/Adobe_Photoshop#cite_note-history-7\">[7]</a>&nbsp;Later that year, Thomas renamed his program&nbsp;<strong>Photoshop</strong>&nbsp;and worked out a short-term deal with scanner manufacturer Barneyscan to distribute copies of the program with a&nbsp;<a href=\"https://en.wikipedia.org/wiki/Image_scanner\" title=\"Image scanner\">slide scanner</a>; a &quot;total of about 200 copies of Photoshop were shipped&quot; this way.<a href=\"https://en.wikipedia.org/wiki/Adobe_Photoshop#cite_note-8\">[8]</a><a href=\"https://en.wikipedia.org/wiki/Adobe_Photoshop#cite_note-9\">[9]</a></p>\n\n<p>During this time, John traveled to&nbsp;<a href=\"https://en.wikipedia.org/wiki/Silicon_Valley\" title=\"Silicon Valley\">Silicon Valley</a>&nbsp;and gave a demonstration of the program to engineers at&nbsp;<a href=\"https://en.wikipedia.org/wiki/Apple_Inc.\" title=\"Apple Inc.\">Apple</a>&nbsp;and Russell Brown, art director at&nbsp;<a href=\"https://en.wikipedia.org/wiki/Adobe_Inc.\" title=\"Adobe Inc.\">Adobe</a>. Both showings were successful, and Adobe decided to purchase the license to distribute in September 1988.<a href=\"https://en.wikipedia.org/wiki/Adobe_Photoshop#cite_note-history-7\">[7]</a>&nbsp;While John worked on&nbsp;<a href=\"https://en.wikipedia.org/wiki/Plug-in_(computing)\" title=\"Plug-in (computing)\">plug-ins</a>&nbsp;in California, Thomas remained in&nbsp;<a href=\"https://en.wikipedia.org/wiki/Ann_Arbor,_Michigan\" title=\"Ann Arbor, Michigan\">Ann Arbor</a>&nbsp;writing code.&nbsp;<em>Photoshop</em>&nbsp;1.0 was released on February 19, 1990, for&nbsp;<a href=\"https://en.wikipedia.org/wiki/Macintosh\" title=\"Macintosh\">Macintosh</a>&nbsp;exclusively.<a href=\"https://en.wikipedia.org/wiki/Adobe_Photoshop#cite_note-10\">[10]</a><a href=\"https://en.wikipedia.org/wiki/Adobe_Photoshop#cite_note-About-11\">[11]</a>&nbsp;The Barneyscan version included advanced color editing features that were stripped from the first Adobe shipped version. The handling of color slowly improved with each release from Adobe and Photoshop quickly became the industry standard in digital color editing. At the time Photoshop 1.0 was released, digital retouching on dedicated high-end systems (such as the&nbsp;<a href=\"https://en.wikipedia.org/wiki/Scailex_Corporation\" title=\"Scailex Corporation\">Scitex</a>) cost around $300 an hour for basic photo retouching. The list price of Photoshop 1.0 for Macintosh in 1990 was $895.<a href=\"https://en.wikipedia.org/wiki/Adobe_Photoshop#cite_note-12\">[12]</a><a href=\"https://en.wikipedia.org/wiki/Adobe_Photoshop#cite_note-13\">[13]</a></p>\n\n<p>Photoshop was initially only available on Macintosh. In 1993, Adobe chief architect Seetharaman Narayanan&nbsp;<a href=\"https://en.wikipedia.org/wiki/Ported\" title=\"Ported\">ported</a>&nbsp;Photoshop to&nbsp;<a href=\"https://en.wikipedia.org/wiki/Microsoft_Windows\" title=\"Microsoft Windows\">Microsoft Windows</a>. The Windows port led to Photoshop reaching a wider&nbsp;<a href=\"https://en.wikipedia.org/wiki/Mass_market\" title=\"Mass market\">mass market</a>&nbsp;audience as&nbsp;<a href=\"https://en.wikipedia.org/wiki/Microsoft\" title=\"Microsoft\">Microsoft</a>&#39;s global reach expanded within the next few years.<a href=\"https://en.wikipedia.org/wiki/Adobe_Photoshop#cite_note-14\">[14]</a>&nbsp;On March 31, 1995, Adobe purchased the rights for Photoshop from Thomas and John Knoll for $34.5 million so Adobe would no longer need to pay a royalty for each copy sold.<a href=\"https://en.wikipedia.org/wiki/Adobe_Photoshop#cite_note-15\">[15]</a><a href=\"https://en.wikipedia.org/wiki/Adobe_Photoshop#cite_note-16\">[16]</a></p>\n\n<h2>File format</h2>\n\n<table>\n	<caption>Photoshop document</caption>\n	<tbody>\n		<tr>\n			<th scope=\"row\"><a href=\"https://en.wikipedia.org/wiki/Filename_extension\" title=\"Filename extension\">Filename extension</a></th>\n			<td>\n			<p>.psd</p>\n			</td>\n		</tr>\n		<tr>\n			<th scope=\"row\"><a href=\"https://en.wikipedia.org/wiki/Media_type\" title=\"Media type\">Internet media&nbsp;type</a></th>\n			<td>\n			<p>image/vnd.adobe.photoshop</p>\n			</td>\n		</tr>\n		<tr>\n			<th scope=\"row\"><a href=\"https://en.wikipedia.org/wiki/Type_code\" title=\"Type code\">Type code</a></th>\n			<td>8BPS</td>\n		</tr>\n		<tr>\n			<th scope=\"row\"><a href=\"https://en.wikipedia.org/wiki/Open_format\" title=\"Open format\">Open format</a>?</th>\n			<td>no</td>\n		</tr>\n		<tr>\n			<th scope=\"row\">Website</th>\n			<td><a href=\"https://www.adobe.com/devnet-apps/photoshop/fileformatashtml/\" rel=\"nofollow\">www.adobe.com/devnet-apps/photoshop/fileformatashtml/</a></td>\n		</tr>\n	</tbody>\n</table>\n\n<p>Photoshop files have default file extension as .PSD, which stands for &quot;PhotoShop Document&quot;.<a href=\"https://en.wikipedia.org/wiki/Adobe_Photoshop#cite_note-17\">[17]</a>&nbsp;A PSD file stores an image with support for most imaging options available in Photoshop. These include layers with&nbsp;<a href=\"https://en.wikipedia.org/wiki/Mask_(computing)\" title=\"Mask (computing)\">masks</a>,&nbsp;<a href=\"https://en.wikipedia.org/wiki/Transparency_(graphic)\" title=\"Transparency (graphic)\">transparency</a>, text,&nbsp;<a href=\"https://en.wikipedia.org/wiki/Alpha_compositing\" title=\"Alpha compositing\">alpha channels</a>&nbsp;and&nbsp;<a href=\"https://en.wikipedia.org/wiki/Spot_color\" title=\"Spot color\">spot colors</a>,&nbsp;<a href=\"https://en.wikipedia.org/wiki/Clipping_path\" title=\"Clipping path\">clipping paths</a>, and&nbsp;<a href=\"https://en.wikipedia.org/wiki/Duotone\" title=\"Duotone\">duotone</a>&nbsp;settings. This is in contrast to many other file formats (e.g., .JPG or .GIF) that restrict content to provide streamlined, predictable functionality. A PSD file has a maximum height and width of 30,000 pixels, and a length limit of two gigabytes.</p>\n\n<p>Photoshop files sometimes have the file extension .PSB, which stands for &quot;PhotoShop Big&quot; (also known as &quot;large document format&quot;).<a href=\"https://en.wikipedia.org/wiki/Adobe_Photoshop#cite_note-18\">[18]</a>&nbsp;A PSB file extends the PSD file format, increasing the maximum height and width to 300,000 pixels and the length limit to around 4&nbsp;<a href=\"https://en.wikipedia.org/wiki/Exabyte\" title=\"Exabyte\">Exabytes</a>. The dimension limit was apparently chosen arbitrarily by Adobe, not based on computer arithmetic constraints (it is not close to a power of two, as is 30,000) but for ease of&nbsp;<a href=\"https://en.wikipedia.org/wiki/Software_testing\" title=\"Software testing\">software testing</a>. PSD and PSB formats are documented.<a href=\"https://en.wikipedia.org/wiki/Adobe_Photoshop#cite_note-19\">[19]</a></p>\n\n<p>Because of Photoshop&#39;s popularity, PSD files are widely used and supported to some extent by most competing software, including Open-source / Free software such as&nbsp;<a href=\"https://en.wikipedia.org/wiki/GIMP\" title=\"GIMP\">GIMP</a>. The .PSD file format can be exported to and from Adobe&#39;s other apps like&nbsp;<a href=\"https://en.wikipedia.org/wiki/Adobe_Illustrator\" title=\"Adobe Illustrator\">Adobe Illustrator</a>,&nbsp;<a href=\"https://en.wikipedia.org/wiki/Adobe_Premiere_Pro\" title=\"Adobe Premiere Pro\">Adobe Premiere Pro</a>, and&nbsp;<a href=\"https://en.wikipedia.org/wiki/Adobe_After_Effects\" title=\"Adobe After Effects\">After Effects</a>.</p>\n\n<h2>Plugins</h2>\n\n<p>Main article:&nbsp;<a href=\"https://en.wikipedia.org/wiki/Photoshop_plugin\" title=\"Photoshop plugin\">Photoshop plugin</a></p>\n\n<p>Photoshop functionality can be extended by add-on programs called&nbsp;<a href=\"https://en.wikipedia.org/wiki/Photoshop_plugin\" title=\"Photoshop plugin\">Photoshop plugins</a>&nbsp;(or plug-ins). Adobe creates some plugins, such as Adobe Camera Raw, but third-party companies develop most plugins, according to Adobe&#39;s specifications. Some are free and some are commercial software. Most plugins work with only Photoshop or Photoshop-compatible hosts, but a few can also be run as standalone applications.</p>\n\n<p>There are various types of plugins, such as filter, export, import, selection, color correction, and automation. The most popular plugins are the filter plugins (also known as a&nbsp;<a href=\"https://en.wikipedia.org/wiki/8bf\" title=\"8bf\">8bf</a>&nbsp;plugins), available under the Filter menu in Photoshop. Filter plugins can either modify the current image or create content. Below are some popular types of plugins, and some well-known companies associated with them:</p>\n\n<ul>\n	<li>Color correction plugins (Alien Skin Software,<a href=\"https://en.wikipedia.org/wiki/Adobe_Photoshop#cite_note-20\">[20]</a>&nbsp;Nik Software,<a href=\"https://en.wikipedia.org/wiki/Adobe_Photoshop#cite_note-21\">[21]</a>&nbsp;OnOne Software,<a href=\"https://en.wikipedia.org/wiki/Adobe_Photoshop#cite_note-22\">[22]</a>&nbsp;Topaz Labs Software,<a href=\"https://en.wikipedia.org/wiki/Adobe_Photoshop#cite_note-23\">[23]</a>&nbsp;The Plugin Site,<a href=\"https://en.wikipedia.org/wiki/Adobe_Photoshop#cite_note-24\">[24]</a>&nbsp;etc.)</li>\n	<li>Special effects plugins (Alien Skin Software, Auto FX Software,<a href=\"https://en.wikipedia.org/wiki/Adobe_Photoshop#cite_note-25\">[25]</a>&nbsp;AV Bros.,<a href=\"https://en.wikipedia.org/wiki/Adobe_Photoshop#cite_note-26\">[26]</a>&nbsp;Flaming Pear Software,<a href=\"https://en.wikipedia.org/wiki/Adobe_Photoshop#cite_note-27\">[27]</a>&nbsp;etc.)</li>\n	<li>3D effects plugins (Andromeda Software,<a href=\"https://en.wikipedia.org/wiki/Adobe_Photoshop#cite_note-28\">[28]</a>&nbsp;Strata,<a href=\"https://en.wikipedia.org/wiki/Adobe_Photoshop#cite_note-29\">[29]</a>&nbsp;etc.)</li>\n</ul>\n\n<p>Adobe Camera Raw (also known as ACR and Camera Raw) is a special plugin, supplied free by Adobe, used primarily to read and process&nbsp;<a href=\"https://en.wikipedia.org/wiki/Raw_image_format\" title=\"Raw image format\">raw image files</a>&nbsp;so that the resulting images can be processed by Photoshop.<a href=\"https://en.wikipedia.org/wiki/Adobe_Photoshop#cite_note-30\">[30]</a>&nbsp;It can also be used from within&nbsp;<a href=\"https://en.wikipedia.org/wiki/Adobe_Bridge\" title=\"Adobe Bridge\">Adobe Bridge</a>.</p>\n', 57, 1),
(24, 'Ajax done', 'Des', '<p>Photoshop was developed in 1987 by two brothers&nbsp;<a href=\"https://en.wikipedia.org/wiki/Thomas_Knoll\" title=\"Thomas Knoll\">Thomas</a>&nbsp;and&nbsp;<a href=\"https://en.wikipedia.org/wiki/John_Knoll\" title=\"John Knoll\">John Knoll</a>, who sold the distribution license to Adobe Systems Incorporated in 1988. Thomas Knoll, a Ph.D. student at the&nbsp;<a href=\"https://en.wikipedia.org/wiki/University_of_Michigan\" title=\"University of Michigan\">University of Michigan</a>, began writing a program on his&nbsp;<a href=\"https://en.wikipedia.org/wiki/Macintosh_Plus\" title=\"Macintosh Plus\">Macintosh Plus</a>&nbsp;to display&nbsp;<a href=\"https://en.wikipedia.org/wiki/Grayscale\" title=\"Grayscale\">grayscale</a>&nbsp;images on a monochrome display. This program (at that time called&nbsp;<strong>Display</strong>) caught the attention of his brother John, an&nbsp;<a href=\"https://en.wikipedia.org/wiki/Industrial_Light_%26_Magic\" title=\"Industrial Light &amp; Magic\">Industrial Light &amp; Magic</a>&nbsp;employee, who recommended that Thomas turn it into a full-fledged image editing program. Thomas took a six-month break from his studies in 1988 to collaborate with his brother on the program. Thomas renamed the program ImagePro, but the name was already taken.<a href=\"https://en.wikipedia.org/wiki/Adobe_Photoshop#cite_note-history-7\">[7]</a>&nbsp;Later that year, Thomas renamed his program&nbsp;<strong>Photoshop</strong>&nbsp;and worked out a short-term deal with scanner manufacturer Barneyscan to distribute copies of the program with a&nbsp;<a href=\"https://en.wikipedia.org/wiki/Image_scanner\" title=\"Image scanner\">slide scanner</a>; a &quot;total of about 200 copies of Photoshop were shipped&quot; this way.<a href=\"https://en.wikipedia.org/wiki/Adobe_Photoshop#cite_note-8\">[8]</a><a href=\"https://en.wikipedia.org/wiki/Adobe_Photoshop#cite_note-9\">[9]</a></p>\n\n<p>During this time, John traveled to&nbsp;<a href=\"https://en.wikipedia.org/wiki/Silicon_Valley\" title=\"Silicon Valley\">Silicon Valley</a>&nbsp;and gave a demonstration of the program to engineers at&nbsp;<a href=\"https://en.wikipedia.org/wiki/Apple_Inc.\" title=\"Apple Inc.\">Apple</a>&nbsp;and Russell Brown, art director at&nbsp;<a href=\"https://en.wikipedia.org/wiki/Adobe_Inc.\" title=\"Adobe Inc.\">Adobe</a>. Both showings were successful, and Adobe decided to purchase the license to distribute in September 1988.<a href=\"https://en.wikipedia.org/wiki/Adobe_Photoshop#cite_note-history-7\">[7]</a>&nbsp;While John worked on&nbsp;<a href=\"https://en.wikipedia.org/wiki/Plug-in_(computing)\" title=\"Plug-in (computing)\">plug-ins</a>&nbsp;in California, Thomas remained in&nbsp;<a href=\"https://en.wikipedia.org/wiki/Ann_Arbor,_Michigan\" title=\"Ann Arbor, Michigan\">Ann Arbor</a>&nbsp;writing code.&nbsp;<em>Photoshop</em>&nbsp;1.0 was released on February 19, 1990, for&nbsp;<a href=\"https://en.wikipedia.org/wiki/Macintosh\" title=\"Macintosh\">Macintosh</a>&nbsp;exclusively.<a href=\"https://en.wikipedia.org/wiki/Adobe_Photoshop#cite_note-10\">[10]</a><a href=\"https://en.wikipedia.org/wiki/Adobe_Photoshop#cite_note-About-11\">[11]</a>&nbsp;The Barneyscan version included advanced color editing features that were stripped from the first Adobe shipped version. The handling of color slowly improved with each release from Adobe and Photoshop quickly became the industry standard in digital color editing. At the time Photoshop 1.0 was released, digital retouching on dedicated high-end systems (such as the&nbsp;<a href=\"https://en.wikipedia.org/wiki/Scailex_Corporation\" title=\"Scailex Corporation\">Scitex</a>) cost around $300 an hour for basic photo retouching. The list price of Photoshop 1.0 for Macintosh in 1990 was $895.<a href=\"https://en.wikipedia.org/wiki/Adobe_Photoshop#cite_note-12\">[12]</a><a href=\"https://en.wikipedia.org/wiki/Adobe_Photoshop#cite_note-13\">[13]</a></p>\n\n<p>Photoshop was initially only available on Macintosh. In 1993, Adobe chief architect Seetharaman Narayanan&nbsp;<a href=\"https://en.wikipedia.org/wiki/Ported\" title=\"Ported\">ported</a>&nbsp;Photoshop to&nbsp;<a href=\"https://en.wikipedia.org/wiki/Microsoft_Windows\" title=\"Microsoft Windows\">Microsoft Windows</a>. The Windows port led to Photoshop reaching a wider&nbsp;<a href=\"https://en.wikipedia.org/wiki/Mass_market\" title=\"Mass market\">mass market</a>&nbsp;audience as&nbsp;<a href=\"https://en.wikipedia.org/wiki/Microsoft\" title=\"Microsoft\">Microsoft</a>&#39;s global reach expanded within the next few years.<a href=\"https://en.wikipedia.org/wiki/Adobe_Photoshop#cite_note-14\">[14]</a>&nbsp;On March 31, 1995, Adobe purchased the rights for Photoshop from Thomas and John Knoll for $34.5 million so Adobe would no longer need to pay a royalty for each copy sold.<a href=\"https://en.wikipedia.org/wiki/Adobe_Photoshop#cite_note-15\">[15]</a><a href=\"https://en.wikipedia.org/wiki/Adobe_Photoshop#cite_note-16\">[16]</a></p>\n\n<h2>File format</h2>\n\n<table>\n	<caption>Photoshop document</caption>\n	<tbody>\n		<tr>\n			<th scope=\"row\"><a href=\"https://en.wikipedia.org/wiki/Filename_extension\" title=\"Filename extension\">Filename extension</a></th>\n			<td>\n			<p>.psd</p>\n			</td>\n		</tr>\n		<tr>\n			<th scope=\"row\"><a href=\"https://en.wikipedia.org/wiki/Media_type\" title=\"Media type\">Internet media&nbsp;type</a></th>\n			<td>\n			<p>image/vnd.adobe.photoshop</p>\n			</td>\n		</tr>\n		<tr>\n			<th scope=\"row\"><a href=\"https://en.wikipedia.org/wiki/Type_code\" title=\"Type code\">Type code</a></th>\n			<td>8BPS</td>\n		</tr>\n		<tr>\n			<th scope=\"row\"><a href=\"https://en.wikipedia.org/wiki/Open_format\" title=\"Open format\">Open format</a>?</th>\n			<td>no</td>\n		</tr>\n		<tr>\n			<th scope=\"row\">Website</th>\n			<td><a href=\"https://www.adobe.com/devnet-apps/photoshop/fileformatashtml/\" rel=\"nofollow\">www.adobe.com/devnet-apps/photoshop/fileformatashtml/</a></td>\n		</tr>\n	</tbody>\n</table>\n\n<p>Photoshop files have default file extension as .PSD, which stands for &quot;PhotoShop Document&quot;.<a href=\"https://en.wikipedia.org/wiki/Adobe_Photoshop#cite_note-17\">[17]</a>&nbsp;A PSD file stores an image with support for most imaging options available in Photoshop. These include layers with&nbsp;<a href=\"https://en.wikipedia.org/wiki/Mask_(computing)\" title=\"Mask (computing)\">masks</a>,&nbsp;<a href=\"https://en.wikipedia.org/wiki/Transparency_(graphic)\" title=\"Transparency (graphic)\">transparency</a>, text,&nbsp;<a href=\"https://en.wikipedia.org/wiki/Alpha_compositing\" title=\"Alpha compositing\">alpha channels</a>&nbsp;and&nbsp;<a href=\"https://en.wikipedia.org/wiki/Spot_color\" title=\"Spot color\">spot colors</a>,&nbsp;<a href=\"https://en.wikipedia.org/wiki/Clipping_path\" title=\"Clipping path\">clipping paths</a>, and&nbsp;<a href=\"https://en.wikipedia.org/wiki/Duotone\" title=\"Duotone\">duotone</a>&nbsp;settings. This is in contrast to many other file formats (e.g., .JPG or .GIF) that restrict content to provide streamlined, predictable functionality. A PSD file has a maximum height and width of 30,000 pixels, and a length limit of two gigabytes.</p>\n\n<p>Photoshop files sometimes have the file extension .PSB, which stands for &quot;PhotoShop Big&quot; (also known as &quot;large document format&quot;).<a href=\"https://en.wikipedia.org/wiki/Adobe_Photoshop#cite_note-18\">[18]</a>&nbsp;A PSB file extends the PSD file format, increasing the maximum height and width to 300,000 pixels and the length limit to around 4&nbsp;<a href=\"https://en.wikipedia.org/wiki/Exabyte\" title=\"Exabyte\">Exabytes</a>. The dimension limit was apparently chosen arbitrarily by Adobe, not based on computer arithmetic constraints (it is not close to a power of two, as is 30,000) but for ease of&nbsp;<a href=\"https://en.wikipedia.org/wiki/Software_testing\" title=\"Software testing\">software testing</a>. PSD and PSB formats are documented.<a href=\"https://en.wikipedia.org/wiki/Adobe_Photoshop#cite_note-19\">[19]</a></p>\n\n<p>Because of Photoshop&#39;s popularity, PSD files are widely used and supported to some extent by most competing software, including Open-source / Free software such as&nbsp;<a href=\"https://en.wikipedia.org/wiki/GIMP\" title=\"GIMP\">GIMP</a>. The .PSD file format can be exported to and from Adobe&#39;s other apps like&nbsp;<a href=\"https://en.wikipedia.org/wiki/Adobe_Illustrator\" title=\"Adobe Illustrator\">Adobe Illustrator</a>,&nbsp;<a href=\"https://en.wikipedia.org/wiki/Adobe_Premiere_Pro\" title=\"Adobe Premiere Pro\">Adobe Premiere Pro</a>, and&nbsp;<a href=\"https://en.wikipedia.org/wiki/Adobe_After_Effects\" title=\"Adobe After Effects\">After Effects</a>.</p>\n\n<h2>Plugins</h2>\n\n<p>Main article:&nbsp;<a href=\"https://en.wikipedia.org/wiki/Photoshop_plugin\" title=\"Photoshop plugin\">Photoshop plugin</a></p>\n\n<p>Photoshop functionality can be extended by add-on programs called&nbsp;<a href=\"https://en.wikipedia.org/wiki/Photoshop_plugin\" title=\"Photoshop plugin\">Photoshop plugins</a>&nbsp;(or plug-ins). Adobe creates some plugins, such as Adobe Camera Raw, but third-party companies develop most plugins, according to Adobe&#39;s specifications. Some are free and some are commercial software. Most plugins work with only Photoshop or Photoshop-compatible hosts, but a few can also be run as standalone applications.</p>\n\n<p>There are various types of plugins, such as filter, export, import, selection, color correction, and automation. The most popular plugins are the filter plugins (also known as a&nbsp;<a href=\"https://en.wikipedia.org/wiki/8bf\" title=\"8bf\">8bf</a>&nbsp;plugins), available under the Filter menu in Photoshop. Filter plugins can either modify the current image or create content. Below are some popular types of plugins, and some well-known companies associated with them:</p>\n\n<ul>\n	<li>Color correction plugins (Alien Skin Software,<a href=\"https://en.wikipedia.org/wiki/Adobe_Photoshop#cite_note-20\">[20]</a>&nbsp;Nik Software,<a href=\"https://en.wikipedia.org/wiki/Adobe_Photoshop#cite_note-21\">[21]</a>&nbsp;OnOne Software,<a href=\"https://en.wikipedia.org/wiki/Adobe_Photoshop#cite_note-22\">[22]</a>&nbsp;Topaz Labs Software,<a href=\"https://en.wikipedia.org/wiki/Adobe_Photoshop#cite_note-23\">[23]</a>&nbsp;The Plugin Site,<a href=\"https://en.wikipedia.org/wiki/Adobe_Photoshop#cite_note-24\">[24]</a>&nbsp;etc.)</li>\n	<li>Special effects plugins (Alien Skin Software, Auto FX Software,<a href=\"https://en.wikipedia.org/wiki/Adobe_Photoshop#cite_note-25\">[25]</a>&nbsp;AV Bros.,<a href=\"https://en.wikipedia.org/wiki/Adobe_Photoshop#cite_note-26\">[26]</a>&nbsp;Flaming Pear Software,<a href=\"https://en.wikipedia.org/wiki/Adobe_Photoshop#cite_note-27\">[27]</a>&nbsp;etc.)</li>\n	<li>3D effects plugins (Andromeda Software,<a href=\"https://en.wikipedia.org/wiki/Adobe_Photoshop#cite_note-28\">[28]</a>&nbsp;Strata,<a href=\"https://en.wikipedia.org/wiki/Adobe_Photoshop#cite_note-29\">[29]</a>&nbsp;etc.)</li>\n</ul>\n\n<p>Adobe Camera Raw (also known as ACR and Camera Raw) is a special plugin, supplied free by Adobe, used primarily to read and process&nbsp;<a href=\"https://en.wikipedia.org/wiki/Raw_image_format\" title=\"Raw image format\">raw image files</a>&nbsp;so that the resulting images can be processed by Photoshop.<a href=\"https://en.wikipedia.org/wiki/Adobe_Photoshop#cite_note-30\">[30]</a>&nbsp;It can also be used from within&nbsp;<a href=\"https://en.wikipedia.org/wiki/Adobe_Bridge\" title=\"Adobe Bridge\">Adobe Bridge</a>.</p>\n', 57, 23),
(25, 'asdfg', 'sdfg', '<p>Photoshop was developed in 1987 by two brothers&nbsp;<a href=\"https://en.wikipedia.org/wiki/Thomas_Knoll\" title=\"Thomas Knoll\">Thomas</a>&nbsp;and&nbsp;<a href=\"https://en.wikipedia.org/wiki/John_Knoll\" title=\"John Knoll\">John Knoll</a>, who sold the distribution license to Adobe Systems Incorporated in 1988. Thomas Knoll, a Ph.D. student at the&nbsp;<a href=\"https://en.wikipedia.org/wiki/University_of_Michigan\" title=\"University of Michigan\">University of Michigan</a>, began writing a program on his&nbsp;<a href=\"https://en.wikipedia.org/wiki/Macintosh_Plus\" title=\"Macintosh Plus\">Macintosh Plus</a>&nbsp;to display&nbsp;<a href=\"https://en.wikipedia.org/wiki/Grayscale\" title=\"Grayscale\">grayscale</a>&nbsp;images on a monochrome display. This program (at that time called&nbsp;<strong>Display</strong>) caught the attention of his brother John, an&nbsp;<a href=\"https://en.wikipedia.org/wiki/Industrial_Light_%26_Magic\" title=\"Industrial Light &amp; Magic\">Industrial Light &amp; Magic</a>&nbsp;employee, who recommended that Thomas turn it into a full-fledged image editing program. Thomas took a six-month break from his studies in 1988 to collaborate with his brother on the program. Thomas renamed the program ImagePro, but the name was already taken.<a href=\"https://en.wikipedia.org/wiki/Adobe_Photoshop#cite_note-history-7\">[7]</a>&nbsp;Later that year, Thomas renamed his program&nbsp;<strong>Photoshop</strong>&nbsp;and worked out a short-term deal with scanner manufacturer Barneyscan to distribute copies of the program with a&nbsp;<a href=\"https://en.wikipedia.org/wiki/Image_scanner\" title=\"Image scanner\">slide scanner</a>; a &quot;total of about 200 copies of Photoshop were shipped&quot; this way.<a href=\"https://en.wikipedia.org/wiki/Adobe_Photoshop#cite_note-8\">[8]</a><a href=\"https://en.wikipedia.org/wiki/Adobe_Photoshop#cite_note-9\">[9]</a></p>\n\n<p>During this time, John traveled to&nbsp;<a href=\"https://en.wikipedia.org/wiki/Silicon_Valley\" title=\"Silicon Valley\">Silicon Valley</a>&nbsp;and gave a demonstration of the program to engineers at&nbsp;<a href=\"https://en.wikipedia.org/wiki/Apple_Inc.\" title=\"Apple Inc.\">Apple</a>&nbsp;and Russell Brown, art director at&nbsp;<a href=\"https://en.wikipedia.org/wiki/Adobe_Inc.\" title=\"Adobe Inc.\">Adobe</a>. Both showings were successful, and Adobe decided to purchase the license to distribute in September 1988.<a href=\"https://en.wikipedia.org/wiki/Adobe_Photoshop#cite_note-history-7\">[7]</a>&nbsp;While John worked on&nbsp;<a href=\"https://en.wikipedia.org/wiki/Plug-in_(computing)\" title=\"Plug-in (computing)\">plug-ins</a>&nbsp;in California, Thomas remained in&nbsp;<a href=\"https://en.wikipedia.org/wiki/Ann_Arbor,_Michigan\" title=\"Ann Arbor, Michigan\">Ann Arbor</a>&nbsp;writing code.&nbsp;<em>Photoshop</em>&nbsp;1.0 was released on February 19, 1990, for&nbsp;<a href=\"https://en.wikipedia.org/wiki/Macintosh\" title=\"Macintosh\">Macintosh</a>&nbsp;exclusively.<a href=\"https://en.wikipedia.org/wiki/Adobe_Photoshop#cite_note-10\">[10]</a><a href=\"https://en.wikipedia.org/wiki/Adobe_Photoshop#cite_note-About-11\">[11]</a>&nbsp;The Barneyscan version included advanced color editing features that were stripped from the first Adobe shipped version. The handling of color slowly improved with each release from Adobe and Photoshop quickly became the industry standard in digital color editing. At the time Photoshop 1.0 was released, digital retouching on dedicated high-end systems (such as the&nbsp;<a href=\"https://en.wikipedia.org/wiki/Scailex_Corporation\" title=\"Scailex Corporation\">Scitex</a>) cost around $300 an hour for basic photo retouching. The list price of Photoshop 1.0 for Macintosh in 1990 was $895.<a href=\"https://en.wikipedia.org/wiki/Adobe_Photoshop#cite_note-12\">[12]</a><a href=\"https://en.wikipedia.org/wiki/Adobe_Photoshop#cite_note-13\">[13]</a></p>\n\n<p>Photoshop was initially only available on Macintosh. In 1993, Adobe chief architect Seetharaman Narayanan&nbsp;<a href=\"https://en.wikipedia.org/wiki/Ported\" title=\"Ported\">ported</a>&nbsp;Photoshop to&nbsp;<a href=\"https://en.wikipedia.org/wiki/Microsoft_Windows\" title=\"Microsoft Windows\">Microsoft Windows</a>. The Windows port led to Photoshop reaching a wider&nbsp;<a href=\"https://en.wikipedia.org/wiki/Mass_market\" title=\"Mass market\">mass market</a>&nbsp;audience as&nbsp;<a href=\"https://en.wikipedia.org/wiki/Microsoft\" title=\"Microsoft\">Microsoft</a>&#39;s global reach expanded within the next few years.<a href=\"https://en.wikipedia.org/wiki/Adobe_Photoshop#cite_note-14\">[14]</a>&nbsp;On March 31, 1995, Adobe purchased the rights for Photoshop from Thomas and John Knoll for $34.5 million so Adobe would no longer need to pay a royalty for each copy sold.<a href=\"https://en.wikipedia.org/wiki/Adobe_Photoshop#cite_note-15\">[15]</a><a href=\"https://en.wikipedia.org/wiki/Adobe_Photoshop#cite_note-16\">[16]</a></p>\n\n<h2>File format</h2>\n\n<table>\n	<caption>Photoshop document</caption>\n	<tbody>\n		<tr>\n			<th scope=\"row\"><a href=\"https://en.wikipedia.org/wiki/Filename_extension\" title=\"Filename extension\">Filename extension</a></th>\n			<td>\n			<p>.psd</p>\n			</td>\n		</tr>\n		<tr>\n			<th scope=\"row\"><a href=\"https://en.wikipedia.org/wiki/Media_type\" title=\"Media type\">Internet media&nbsp;type</a></th>\n			<td>\n			<p>image/vnd.adobe.photoshop</p>\n			</td>\n		</tr>\n		<tr>\n			<th scope=\"row\"><a href=\"https://en.wikipedia.org/wiki/Type_code\" title=\"Type code\">Type code</a></th>\n			<td>8BPS</td>\n		</tr>\n		<tr>\n			<th scope=\"row\"><a href=\"https://en.wikipedia.org/wiki/Open_format\" title=\"Open format\">Open format</a>?</th>\n			<td>no</td>\n		</tr>\n		<tr>\n			<th scope=\"row\">Website</th>\n			<td><a href=\"https://www.adobe.com/devnet-apps/photoshop/fileformatashtml/\" rel=\"nofollow\">www.adobe.com/devnet-apps/photoshop/fileformatashtml/</a></td>\n		</tr>\n	</tbody>\n</table>\n\n<p>Photoshop files have default file extension as .PSD, which stands for &quot;PhotoShop Document&quot;.<a href=\"https://en.wikipedia.org/wiki/Adobe_Photoshop#cite_note-17\">[17]</a>&nbsp;A PSD file stores an image with support for most imaging options available in Photoshop. These include layers with&nbsp;<a href=\"https://en.wikipedia.org/wiki/Mask_(computing)\" title=\"Mask (computing)\">masks</a>,&nbsp;<a href=\"https://en.wikipedia.org/wiki/Transparency_(graphic)\" title=\"Transparency (graphic)\">transparency</a>, text,&nbsp;<a href=\"https://en.wikipedia.org/wiki/Alpha_compositing\" title=\"Alpha compositing\">alpha channels</a>&nbsp;and&nbsp;<a href=\"https://en.wikipedia.org/wiki/Spot_color\" title=\"Spot color\">spot colors</a>,&nbsp;<a href=\"https://en.wikipedia.org/wiki/Clipping_path\" title=\"Clipping path\">clipping paths</a>, and&nbsp;<a href=\"https://en.wikipedia.org/wiki/Duotone\" title=\"Duotone\">duotone</a>&nbsp;settings. This is in contrast to many other file formats (e.g., .JPG or .GIF) that restrict content to provide streamlined, predictable functionality. A PSD file has a maximum height and width of 30,000 pixels, and a length limit of two gigabytes.</p>\n\n<p>Photoshop files sometimes have the file extension .PSB, which stands for &quot;PhotoShop Big&quot; (also known as &quot;large document format&quot;).<a href=\"https://en.wikipedia.org/wiki/Adobe_Photoshop#cite_note-18\">[18]</a>&nbsp;A PSB file extends the PSD file format, increasing the maximum height and width to 300,000 pixels and the length limit to around 4&nbsp;<a href=\"https://en.wikipedia.org/wiki/Exabyte\" title=\"Exabyte\">Exabytes</a>. The dimension limit was apparently chosen arbitrarily by Adobe, not based on computer arithmetic constraints (it is not close to a power of two, as is 30,000) but for ease of&nbsp;<a href=\"https://en.wikipedia.org/wiki/Software_testing\" title=\"Software testing\">software testing</a>. PSD and PSB formats are documented.<a href=\"https://en.wikipedia.org/wiki/Adobe_Photoshop#cite_note-19\">[19]</a></p>\n\n<p>Because of Photoshop&#39;s popularity, PSD files are widely used and supported to some extent by most competing software, including Open-source / Free software such as&nbsp;<a href=\"https://en.wikipedia.org/wiki/GIMP\" title=\"GIMP\">GIMP</a>. The .PSD file format can be exported to and from Adobe&#39;s other apps like&nbsp;<a href=\"https://en.wikipedia.org/wiki/Adobe_Illustrator\" title=\"Adobe Illustrator\">Adobe Illustrator</a>,&nbsp;<a href=\"https://en.wikipedia.org/wiki/Adobe_Premiere_Pro\" title=\"Adobe Premiere Pro\">Adobe Premiere Pro</a>, and&nbsp;<a href=\"https://en.wikipedia.org/wiki/Adobe_After_Effects\" title=\"Adobe After Effects\">After Effects</a>.</p>\n\n<h2>Plugins</h2>\n\n<p>Main article:&nbsp;<a href=\"https://en.wikipedia.org/wiki/Photoshop_plugin\" title=\"Photoshop plugin\">Photoshop plugin</a></p>\n\n<p>Photoshop functionality can be extended by add-on programs called&nbsp;<a href=\"https://en.wikipedia.org/wiki/Photoshop_plugin\" title=\"Photoshop plugin\">Photoshop plugins</a>&nbsp;(or plug-ins). Adobe creates some plugins, such as Adobe Camera Raw, but third-party companies develop most plugins, according to Adobe&#39;s specifications. Some are free and some are commercial software. Most plugins work with only Photoshop or Photoshop-compatible hosts, but a few can also be run as standalone applications.</p>\n\n<p>There are various types of plugins, such as filter, export, import, selection, color correction, and automation. The most popular plugins are the filter plugins (also known as a&nbsp;<a href=\"https://en.wikipedia.org/wiki/8bf\" title=\"8bf\">8bf</a>&nbsp;plugins), available under the Filter menu in Photoshop. Filter plugins can either modify the current image or create content. Below are some popular types of plugins, and some well-known companies associated with them:</p>\n\n<ul>\n	<li>Color correction plugins (Alien Skin Software,<a href=\"https://en.wikipedia.org/wiki/Adobe_Photoshop#cite_note-20\">[20]</a>&nbsp;Nik Software,<a href=\"https://en.wikipedia.org/wiki/Adobe_Photoshop#cite_note-21\">[21]</a>&nbsp;OnOne Software,<a href=\"https://en.wikipedia.org/wiki/Adobe_Photoshop#cite_note-22\">[22]</a>&nbsp;Topaz Labs Software,<a href=\"https://en.wikipedia.org/wiki/Adobe_Photoshop#cite_note-23\">[23]</a>&nbsp;The Plugin Site,<a href=\"https://en.wikipedia.org/wiki/Adobe_Photoshop#cite_note-24\">[24]</a>&nbsp;etc.)</li>\n	<li>Special effects plugins (Alien Skin Software, Auto FX Software,<a href=\"https://en.wikipedia.org/wiki/Adobe_Photoshop#cite_note-25\">[25]</a>&nbsp;AV Bros.,<a href=\"https://en.wikipedia.org/wiki/Adobe_Photoshop#cite_note-26\">[26]</a>&nbsp;Flaming Pear Software,<a href=\"https://en.wikipedia.org/wiki/Adobe_Photoshop#cite_note-27\">[27]</a>&nbsp;etc.)</li>\n	<li>3D effects plugins (Andromeda Software,<a href=\"https://en.wikipedia.org/wiki/Adobe_Photoshop#cite_note-28\">[28]</a>&nbsp;Strata,<a href=\"https://en.wikipedia.org/wiki/Adobe_Photoshop#cite_note-29\">[29]</a>&nbsp;etc.)</li>\n</ul>\n\n<p>Adobe Camera Raw (also known as ACR and Camera Raw) is a special plugin, supplied free by Adobe, used primarily to read and process&nbsp;<a href=\"https://en.wikipedia.org/wiki/Raw_image_format\" title=\"Raw image format\">raw image files</a>&nbsp;so that the resulting images can be processed by Photoshop.<a href=\"https://en.wikipedia.org/wiki/Adobe_Photoshop#cite_note-30\">[30]</a>&nbsp;It can also be used from within&nbsp;<a href=\"https://en.wikipedia.org/wiki/Adobe_Bridge\" title=\"Adobe Bridge\">Adobe Bridge</a>.</p>\n', 57, NULL);
INSERT INTO `courses_coursetopic` (`id`, `topic_title`, `topic_description`, `topic_content`, `course_id`, `topic_duration`) VALUES
(26, 'sdv', 'cv', '<p>Photoshop was developed in 1987 by two brothers&nbsp;<a href=\"https://en.wikipedia.org/wiki/Thomas_Knoll\" title=\"Thomas Knoll\">Thomas</a>&nbsp;and&nbsp;<a href=\"https://en.wikipedia.org/wiki/John_Knoll\" title=\"John Knoll\">John Knoll</a>, who sold the distribution license to Adobe Systems Incorporated in 1988. Thomas Knoll, a Ph.D. student at the&nbsp;<a href=\"https://en.wikipedia.org/wiki/University_of_Michigan\" title=\"University of Michigan\">University of Michigan</a>, began writing a program on his&nbsp;<a href=\"https://en.wikipedia.org/wiki/Macintosh_Plus\" title=\"Macintosh Plus\">Macintosh Plus</a>&nbsp;to display&nbsp;<a href=\"https://en.wikipedia.org/wiki/Grayscale\" title=\"Grayscale\">grayscale</a>&nbsp;images on a monochrome display. This program (at that time called&nbsp;<strong>Display</strong>) caught the attention of his brother John, an&nbsp;<a href=\"https://en.wikipedia.org/wiki/Industrial_Light_%26_Magic\" title=\"Industrial Light &amp; Magic\">Industrial Light &amp; Magic</a>&nbsp;employee, who recommended that Thomas turn it into a full-fledged image editing program. Thomas took a six-month break from his studies in 1988 to collaborate with his brother on the program. Thomas renamed the program ImagePro, but the name was already taken.<a href=\"https://en.wikipedia.org/wiki/Adobe_Photoshop#cite_note-history-7\">[7]</a>&nbsp;Later that year, Thomas renamed his program&nbsp;<strong>Photoshop</strong>&nbsp;and worked out a short-term deal with scanner manufacturer Barneyscan to distribute copies of the program with a&nbsp;<a href=\"https://en.wikipedia.org/wiki/Image_scanner\" title=\"Image scanner\">slide scanner</a>; a &quot;total of about 200 copies of Photoshop were shipped&quot; this way.<a href=\"https://en.wikipedia.org/wiki/Adobe_Photoshop#cite_note-8\">[8]</a><a href=\"https://en.wikipedia.org/wiki/Adobe_Photoshop#cite_note-9\">[9]</a></p>\n\n<p>During this time, John traveled to&nbsp;<a href=\"https://en.wikipedia.org/wiki/Silicon_Valley\" title=\"Silicon Valley\">Silicon Valley</a>&nbsp;and gave a demonstration of the program to engineers at&nbsp;<a href=\"https://en.wikipedia.org/wiki/Apple_Inc.\" title=\"Apple Inc.\">Apple</a>&nbsp;and Russell Brown, art director at&nbsp;<a href=\"https://en.wikipedia.org/wiki/Adobe_Inc.\" title=\"Adobe Inc.\">Adobe</a>. Both showings were successful, and Adobe decided to purchase the license to distribute in September 1988.<a href=\"https://en.wikipedia.org/wiki/Adobe_Photoshop#cite_note-history-7\">[7]</a>&nbsp;While John worked on&nbsp;<a href=\"https://en.wikipedia.org/wiki/Plug-in_(computing)\" title=\"Plug-in (computing)\">plug-ins</a>&nbsp;in California, Thomas remained in&nbsp;<a href=\"https://en.wikipedia.org/wiki/Ann_Arbor,_Michigan\" title=\"Ann Arbor, Michigan\">Ann Arbor</a>&nbsp;writing code.&nbsp;<em>Photoshop</em>&nbsp;1.0 was released on February 19, 1990, for&nbsp;<a href=\"https://en.wikipedia.org/wiki/Macintosh\" title=\"Macintosh\">Macintosh</a>&nbsp;exclusively.<a href=\"https://en.wikipedia.org/wiki/Adobe_Photoshop#cite_note-10\">[10]</a><a href=\"https://en.wikipedia.org/wiki/Adobe_Photoshop#cite_note-About-11\">[11]</a>&nbsp;The Barneyscan version included advanced color editing features that were stripped from the first Adobe shipped version. The handling of color slowly improved with each release from Adobe and Photoshop quickly became the industry standard in digital color editing. At the time Photoshop 1.0 was released, digital retouching on dedicated high-end systems (such as the&nbsp;<a href=\"https://en.wikipedia.org/wiki/Scailex_Corporation\" title=\"Scailex Corporation\">Scitex</a>) cost around $300 an hour for basic photo retouching. The list price of Photoshop 1.0 for Macintosh in 1990 was $895.<a href=\"https://en.wikipedia.org/wiki/Adobe_Photoshop#cite_note-12\">[12]</a><a href=\"https://en.wikipedia.org/wiki/Adobe_Photoshop#cite_note-13\">[13]</a></p>\n\n<p>Photoshop was initially only available on Macintosh. In 1993, Adobe chief architect Seetharaman Narayanan&nbsp;<a href=\"https://en.wikipedia.org/wiki/Ported\" title=\"Ported\">ported</a>&nbsp;Photoshop to&nbsp;<a href=\"https://en.wikipedia.org/wiki/Microsoft_Windows\" title=\"Microsoft Windows\">Microsoft Windows</a>. The Windows port led to Photoshop reaching a wider&nbsp;<a href=\"https://en.wikipedia.org/wiki/Mass_market\" title=\"Mass market\">mass market</a>&nbsp;audience as&nbsp;<a href=\"https://en.wikipedia.org/wiki/Microsoft\" title=\"Microsoft\">Microsoft</a>&#39;s global reach expanded within the next few years.<a href=\"https://en.wikipedia.org/wiki/Adobe_Photoshop#cite_note-14\">[14]</a>&nbsp;On March 31, 1995, Adobe purchased the rights for Photoshop from Thomas and John Knoll for $34.5 million so Adobe would no longer need to pay a royalty for each copy sold.<a href=\"https://en.wikipedia.org/wiki/Adobe_Photoshop#cite_note-15\">[15]</a><a href=\"https://en.wikipedia.org/wiki/Adobe_Photoshop#cite_note-16\">[16]</a></p>\n\n<h2>File format</h2>\n\n<table>\n	<caption>Photoshop document</caption>\n	<tbody>\n		<tr>\n			<th scope=\"row\"><a href=\"https://en.wikipedia.org/wiki/Filename_extension\" title=\"Filename extension\">Filename extension</a></th>\n			<td>\n			<p>.psd</p>\n			</td>\n		</tr>\n		<tr>\n			<th scope=\"row\"><a href=\"https://en.wikipedia.org/wiki/Media_type\" title=\"Media type\">Internet media&nbsp;type</a></th>\n			<td>\n			<p>image/vnd.adobe.photoshop</p>\n			</td>\n		</tr>\n		<tr>\n			<th scope=\"row\"><a href=\"https://en.wikipedia.org/wiki/Type_code\" title=\"Type code\">Type code</a></th>\n			<td>8BPS</td>\n		</tr>\n		<tr>\n			<th scope=\"row\"><a href=\"https://en.wikipedia.org/wiki/Open_format\" title=\"Open format\">Open format</a>?</th>\n			<td>no</td>\n		</tr>\n		<tr>\n			<th scope=\"row\">Website</th>\n			<td><a href=\"https://www.adobe.com/devnet-apps/photoshop/fileformatashtml/\" rel=\"nofollow\">www.adobe.com/devnet-apps/photoshop/fileformatashtml/</a></td>\n		</tr>\n	</tbody>\n</table>\n\n<p>Photoshop files have default file extension as .PSD, which stands for &quot;PhotoShop Document&quot;.<a href=\"https://en.wikipedia.org/wiki/Adobe_Photoshop#cite_note-17\">[17]</a>&nbsp;A PSD file stores an image with support for most imaging options available in Photoshop. These include layers with&nbsp;<a href=\"https://en.wikipedia.org/wiki/Mask_(computing)\" title=\"Mask (computing)\">masks</a>,&nbsp;<a href=\"https://en.wikipedia.org/wiki/Transparency_(graphic)\" title=\"Transparency (graphic)\">transparency</a>, text,&nbsp;<a href=\"https://en.wikipedia.org/wiki/Alpha_compositing\" title=\"Alpha compositing\">alpha channels</a>&nbsp;and&nbsp;<a href=\"https://en.wikipedia.org/wiki/Spot_color\" title=\"Spot color\">spot colors</a>,&nbsp;<a href=\"https://en.wikipedia.org/wiki/Clipping_path\" title=\"Clipping path\">clipping paths</a>, and&nbsp;<a href=\"https://en.wikipedia.org/wiki/Duotone\" title=\"Duotone\">duotone</a>&nbsp;settings. This is in contrast to many other file formats (e.g., .JPG or .GIF) that restrict content to provide streamlined, predictable functionality. A PSD file has a maximum height and width of 30,000 pixels, and a length limit of two gigabytes.</p>\n\n<p>Photoshop files sometimes have the file extension .PSB, which stands for &quot;PhotoShop Big&quot; (also known as &quot;large document format&quot;).<a href=\"https://en.wikipedia.org/wiki/Adobe_Photoshop#cite_note-18\">[18]</a>&nbsp;A PSB file extends the PSD file format, increasing the maximum height and width to 300,000 pixels and the length limit to around 4&nbsp;<a href=\"https://en.wikipedia.org/wiki/Exabyte\" title=\"Exabyte\">Exabytes</a>. The dimension limit was apparently chosen arbitrarily by Adobe, not based on computer arithmetic constraints (it is not close to a power of two, as is 30,000) but for ease of&nbsp;<a href=\"https://en.wikipedia.org/wiki/Software_testing\" title=\"Software testing\">software testing</a>. PSD and PSB formats are documented.<a href=\"https://en.wikipedia.org/wiki/Adobe_Photoshop#cite_note-19\">[19]</a></p>\n\n<p>Because of Photoshop&#39;s popularity, PSD files are widely used and supported to some extent by most competing software, including Open-source / Free software such as&nbsp;<a href=\"https://en.wikipedia.org/wiki/GIMP\" title=\"GIMP\">GIMP</a>. The .PSD file format can be exported to and from Adobe&#39;s other apps like&nbsp;<a href=\"https://en.wikipedia.org/wiki/Adobe_Illustrator\" title=\"Adobe Illustrator\">Adobe Illustrator</a>,&nbsp;<a href=\"https://en.wikipedia.org/wiki/Adobe_Premiere_Pro\" title=\"Adobe Premiere Pro\">Adobe Premiere Pro</a>, and&nbsp;<a href=\"https://en.wikipedia.org/wiki/Adobe_After_Effects\" title=\"Adobe After Effects\">After Effects</a>.</p>\n\n<h2>Plugins</h2>\n\n<p>Main article:&nbsp;<a href=\"https://en.wikipedia.org/wiki/Photoshop_plugin\" title=\"Photoshop plugin\">Photoshop plugin</a></p>\n\n<p>Photoshop functionality can be extended by add-on programs called&nbsp;<a href=\"https://en.wikipedia.org/wiki/Photoshop_plugin\" title=\"Photoshop plugin\">Photoshop plugins</a>&nbsp;(or plug-ins). Adobe creates some plugins, such as Adobe Camera Raw, but third-party companies develop most plugins, according to Adobe&#39;s specifications. Some are free and some are commercial software. Most plugins work with only Photoshop or Photoshop-compatible hosts, but a few can also be run as standalone applications.</p>\n\n<p>There are various types of plugins, such as filter, export, import, selection, color correction, and automation. The most popular plugins are the filter plugins (also known as a&nbsp;<a href=\"https://en.wikipedia.org/wiki/8bf\" title=\"8bf\">8bf</a>&nbsp;plugins), available under the Filter menu in Photoshop. Filter plugins can either modify the current image or create content. Below are some popular types of plugins, and some well-known companies associated with them:</p>\n\n<ul>\n	<li>Color correction plugins (Alien Skin Software,<a href=\"https://en.wikipedia.org/wiki/Adobe_Photoshop#cite_note-20\">[20]</a>&nbsp;Nik Software,<a href=\"https://en.wikipedia.org/wiki/Adobe_Photoshop#cite_note-21\">[21]</a>&nbsp;OnOne Software,<a href=\"https://en.wikipedia.org/wiki/Adobe_Photoshop#cite_note-22\">[22]</a>&nbsp;Topaz Labs Software,<a href=\"https://en.wikipedia.org/wiki/Adobe_Photoshop#cite_note-23\">[23]</a>&nbsp;The Plugin Site,<a href=\"https://en.wikipedia.org/wiki/Adobe_Photoshop#cite_note-24\">[24]</a>&nbsp;etc.)</li>\n	<li>Special effects plugins (Alien Skin Software, Auto FX Software,<a href=\"https://en.wikipedia.org/wiki/Adobe_Photoshop#cite_note-25\">[25]</a>&nbsp;AV Bros.,<a href=\"https://en.wikipedia.org/wiki/Adobe_Photoshop#cite_note-26\">[26]</a>&nbsp;Flaming Pear Software,<a href=\"https://en.wikipedia.org/wiki/Adobe_Photoshop#cite_note-27\">[27]</a>&nbsp;etc.)</li>\n	<li>3D effects plugins (Andromeda Software,<a href=\"https://en.wikipedia.org/wiki/Adobe_Photoshop#cite_note-28\">[28]</a>&nbsp;Strata,<a href=\"https://en.wikipedia.org/wiki/Adobe_Photoshop#cite_note-29\">[29]</a>&nbsp;etc.)</li>\n</ul>\n\n<p>Adobe Camera Raw (also known as ACR and Camera Raw) is a special plugin, supplied free by Adobe, used primarily to read and process&nbsp;<a href=\"https://en.wikipedia.org/wiki/Raw_image_format\" title=\"Raw image format\">raw image files</a>&nbsp;so that the resulting images can be processed by Photoshop.<a href=\"https://en.wikipedia.org/wiki/Adobe_Photoshop#cite_note-30\">[30]</a>&nbsp;It can also be used from within&nbsp;<a href=\"https://en.wikipedia.org/wiki/Adobe_Bridge\" title=\"Adobe Bridge\">Adobe Bridge</a>.</p>\n', 57, 345),
(27, 'asdf', 'sdsf', '<p>Photoshop was developed in 1987 by two brothers&nbsp;<a href=\"https://en.wikipedia.org/wiki/Thomas_Knoll\" title=\"Thomas Knoll\">Thomas</a>&nbsp;and&nbsp;<a href=\"https://en.wikipedia.org/wiki/John_Knoll\" title=\"John Knoll\">John Knoll</a>, who sold the distribution license to Adobe Systems Incorporated in 1988. Thomas Knoll, a Ph.D. student at the&nbsp;<a href=\"https://en.wikipedia.org/wiki/University_of_Michigan\" title=\"University of Michigan\">University of Michigan</a>, began writing a program on his&nbsp;<a href=\"https://en.wikipedia.org/wiki/Macintosh_Plus\" title=\"Macintosh Plus\">Macintosh Plus</a>&nbsp;to display&nbsp;<a href=\"https://en.wikipedia.org/wiki/Grayscale\" title=\"Grayscale\">grayscale</a>&nbsp;images on a monochrome display. This program (at that time called&nbsp;<strong>Display</strong>) caught the attention of his brother John, an&nbsp;<a href=\"https://en.wikipedia.org/wiki/Industrial_Light_%26_Magic\" title=\"Industrial Light &amp; Magic\">Industrial Light &amp; Magic</a>&nbsp;employee, who recommended that Thomas turn it into a full-fledged image editing program. Thomas took a six-month break from his studies in 1988 to collaborate with his brother on the program. Thomas renamed the program ImagePro, but the name was already taken.<a href=\"https://en.wikipedia.org/wiki/Adobe_Photoshop#cite_note-history-7\">[7]</a>&nbsp;Later that year, Thomas renamed his program&nbsp;<strong>Photoshop</strong>&nbsp;and worked out a short-term deal with scanner manufacturer Barneyscan to distribute copies of the program with a&nbsp;<a href=\"https://en.wikipedia.org/wiki/Image_scanner\" title=\"Image scanner\">slide scanner</a>; a &quot;total of about 200 copies of Photoshop were shipped&quot; this way.<a href=\"https://en.wikipedia.org/wiki/Adobe_Photoshop#cite_note-8\">[8]</a><a href=\"https://en.wikipedia.org/wiki/Adobe_Photoshop#cite_note-9\">[9]</a></p>\n\n<p>During this time, John traveled to&nbsp;<a href=\"https://en.wikipedia.org/wiki/Silicon_Valley\" title=\"Silicon Valley\">Silicon Valley</a>&nbsp;and gave a demonstration of the program to engineers at&nbsp;<a href=\"https://en.wikipedia.org/wiki/Apple_Inc.\" title=\"Apple Inc.\">Apple</a>&nbsp;and Russell Brown, art director at&nbsp;<a href=\"https://en.wikipedia.org/wiki/Adobe_Inc.\" title=\"Adobe Inc.\">Adobe</a>. Both showings were successful, and Adobe decided to purchase the license to distribute in September 1988.<a href=\"https://en.wikipedia.org/wiki/Adobe_Photoshop#cite_note-history-7\">[7]</a>&nbsp;While John worked on&nbsp;<a href=\"https://en.wikipedia.org/wiki/Plug-in_(computing)\" title=\"Plug-in (computing)\">plug-ins</a>&nbsp;in California, Thomas remained in&nbsp;<a href=\"https://en.wikipedia.org/wiki/Ann_Arbor,_Michigan\" title=\"Ann Arbor, Michigan\">Ann Arbor</a>&nbsp;writing code.&nbsp;<em>Photoshop</em>&nbsp;1.0 was released on February 19, 1990, for&nbsp;<a href=\"https://en.wikipedia.org/wiki/Macintosh\" title=\"Macintosh\">Macintosh</a>&nbsp;exclusively.<a href=\"https://en.wikipedia.org/wiki/Adobe_Photoshop#cite_note-10\">[10]</a><a href=\"https://en.wikipedia.org/wiki/Adobe_Photoshop#cite_note-About-11\">[11]</a>&nbsp;The Barneyscan version included advanced color editing features that were stripped from the first Adobe shipped version. The handling of color slowly improved with each release from Adobe and Photoshop quickly became the industry standard in digital color editing. At the time Photoshop 1.0 was released, digital retouching on dedicated high-end systems (such as the&nbsp;<a href=\"https://en.wikipedia.org/wiki/Scailex_Corporation\" title=\"Scailex Corporation\">Scitex</a>) cost around $300 an hour for basic photo retouching. The list price of Photoshop 1.0 for Macintosh in 1990 was $895.<a href=\"https://en.wikipedia.org/wiki/Adobe_Photoshop#cite_note-12\">[12]</a><a href=\"https://en.wikipedia.org/wiki/Adobe_Photoshop#cite_note-13\">[13]</a></p>\n\n<p>Photoshop was initially only available on Macintosh. In 1993, Adobe chief architect Seetharaman Narayanan&nbsp;<a href=\"https://en.wikipedia.org/wiki/Ported\" title=\"Ported\">ported</a>&nbsp;Photoshop to&nbsp;<a href=\"https://en.wikipedia.org/wiki/Microsoft_Windows\" title=\"Microsoft Windows\">Microsoft Windows</a>. The Windows port led to Photoshop reaching a wider&nbsp;<a href=\"https://en.wikipedia.org/wiki/Mass_market\" title=\"Mass market\">mass market</a>&nbsp;audience as&nbsp;<a href=\"https://en.wikipedia.org/wiki/Microsoft\" title=\"Microsoft\">Microsoft</a>&#39;s global reach expanded within the next few years.<a href=\"https://en.wikipedia.org/wiki/Adobe_Photoshop#cite_note-14\">[14]</a>&nbsp;On March 31, 1995, Adobe purchased the rights for Photoshop from Thomas and John Knoll for $34.5 million so Adobe would no longer need to pay a royalty for each copy sold.<a href=\"https://en.wikipedia.org/wiki/Adobe_Photoshop#cite_note-15\">[15]</a><a href=\"https://en.wikipedia.org/wiki/Adobe_Photoshop#cite_note-16\">[16]</a></p>\n\n<h2>File format</h2>\n\n<table>\n	<caption>Photoshop document</caption>\n	<tbody>\n		<tr>\n			<th scope=\"row\"><a href=\"https://en.wikipedia.org/wiki/Filename_extension\" title=\"Filename extension\">Filename extension</a></th>\n			<td>\n			<p>.psd</p>\n			</td>\n		</tr>\n		<tr>\n			<th scope=\"row\"><a href=\"https://en.wikipedia.org/wiki/Media_type\" title=\"Media type\">Internet media&nbsp;type</a></th>\n			<td>\n			<p>image/vnd.adobe.photoshop</p>\n			</td>\n		</tr>\n		<tr>\n			<th scope=\"row\"><a href=\"https://en.wikipedia.org/wiki/Type_code\" title=\"Type code\">Type code</a></th>\n			<td>8BPS</td>\n		</tr>\n		<tr>\n			<th scope=\"row\"><a href=\"https://en.wikipedia.org/wiki/Open_format\" title=\"Open format\">Open format</a>?</th>\n			<td>no</td>\n		</tr>\n		<tr>\n			<th scope=\"row\">Website</th>\n			<td><a href=\"https://www.adobe.com/devnet-apps/photoshop/fileformatashtml/\" rel=\"nofollow\">www.adobe.com/devnet-apps/photoshop/fileformatashtml/</a></td>\n		</tr>\n	</tbody>\n</table>\n\n<p>Photoshop files have default file extension as .PSD, which stands for &quot;PhotoShop Document&quot;.<a href=\"https://en.wikipedia.org/wiki/Adobe_Photoshop#cite_note-17\">[17]</a>&nbsp;A PSD file stores an image with support for most imaging options available in Photoshop. These include layers with&nbsp;<a href=\"https://en.wikipedia.org/wiki/Mask_(computing)\" title=\"Mask (computing)\">masks</a>,&nbsp;<a href=\"https://en.wikipedia.org/wiki/Transparency_(graphic)\" title=\"Transparency (graphic)\">transparency</a>, text,&nbsp;<a href=\"https://en.wikipedia.org/wiki/Alpha_compositing\" title=\"Alpha compositing\">alpha channels</a>&nbsp;and&nbsp;<a href=\"https://en.wikipedia.org/wiki/Spot_color\" title=\"Spot color\">spot colors</a>,&nbsp;<a href=\"https://en.wikipedia.org/wiki/Clipping_path\" title=\"Clipping path\">clipping paths</a>, and&nbsp;<a href=\"https://en.wikipedia.org/wiki/Duotone\" title=\"Duotone\">duotone</a>&nbsp;settings. This is in contrast to many other file formats (e.g., .JPG or .GIF) that restrict content to provide streamlined, predictable functionality. A PSD file has a maximum height and width of 30,000 pixels, and a length limit of two gigabytes.</p>\n\n<p>Photoshop files sometimes have the file extension .PSB, which stands for &quot;PhotoShop Big&quot; (also known as &quot;large document format&quot;).<a href=\"https://en.wikipedia.org/wiki/Adobe_Photoshop#cite_note-18\">[18]</a>&nbsp;A PSB file extends the PSD file format, increasing the maximum height and width to 300,000 pixels and the length limit to around 4&nbsp;<a href=\"https://en.wikipedia.org/wiki/Exabyte\" title=\"Exabyte\">Exabytes</a>. The dimension limit was apparently chosen arbitrarily by Adobe, not based on computer arithmetic constraints (it is not close to a power of two, as is 30,000) but for ease of&nbsp;<a href=\"https://en.wikipedia.org/wiki/Software_testing\" title=\"Software testing\">software testing</a>. PSD and PSB formats are documented.<a href=\"https://en.wikipedia.org/wiki/Adobe_Photoshop#cite_note-19\">[19]</a></p>\n\n<p>Because of Photoshop&#39;s popularity, PSD files are widely used and supported to some extent by most competing software, including Open-source / Free software such as&nbsp;<a href=\"https://en.wikipedia.org/wiki/GIMP\" title=\"GIMP\">GIMP</a>. The .PSD file format can be exported to and from Adobe&#39;s other apps like&nbsp;<a href=\"https://en.wikipedia.org/wiki/Adobe_Illustrator\" title=\"Adobe Illustrator\">Adobe Illustrator</a>,&nbsp;<a href=\"https://en.wikipedia.org/wiki/Adobe_Premiere_Pro\" title=\"Adobe Premiere Pro\">Adobe Premiere Pro</a>, and&nbsp;<a href=\"https://en.wikipedia.org/wiki/Adobe_After_Effects\" title=\"Adobe After Effects\">After Effects</a>.</p>\n\n<h2>Plugins</h2>\n\n<p>Main article:&nbsp;<a href=\"https://en.wikipedia.org/wiki/Photoshop_plugin\" title=\"Photoshop plugin\">Photoshop plugin</a></p>\n\n<p>Photoshop functionality can be extended by add-on programs called&nbsp;<a href=\"https://en.wikipedia.org/wiki/Photoshop_plugin\" title=\"Photoshop plugin\">Photoshop plugins</a>&nbsp;(or plug-ins). Adobe creates some plugins, such as Adobe Camera Raw, but third-party companies develop most plugins, according to Adobe&#39;s specifications. Some are free and some are commercial software. Most plugins work with only Photoshop or Photoshop-compatible hosts, but a few can also be run as standalone applications.</p>\n\n<p>There are various types of plugins, such as filter, export, import, selection, color correction, and automation. The most popular plugins are the filter plugins (also known as a&nbsp;<a href=\"https://en.wikipedia.org/wiki/8bf\" title=\"8bf\">8bf</a>&nbsp;plugins), available under the Filter menu in Photoshop. Filter plugins can either modify the current image or create content. Below are some popular types of plugins, and some well-known companies associated with them:</p>\n\n<ul>\n	<li>Color correction plugins (Alien Skin Software,<a href=\"https://en.wikipedia.org/wiki/Adobe_Photoshop#cite_note-20\">[20]</a>&nbsp;Nik Software,<a href=\"https://en.wikipedia.org/wiki/Adobe_Photoshop#cite_note-21\">[21]</a>&nbsp;OnOne Software,<a href=\"https://en.wikipedia.org/wiki/Adobe_Photoshop#cite_note-22\">[22]</a>&nbsp;Topaz Labs Software,<a href=\"https://en.wikipedia.org/wiki/Adobe_Photoshop#cite_note-23\">[23]</a>&nbsp;The Plugin Site,<a href=\"https://en.wikipedia.org/wiki/Adobe_Photoshop#cite_note-24\">[24]</a>&nbsp;etc.)</li>\n	<li>Special effects plugins (Alien Skin Software, Auto FX Software,<a href=\"https://en.wikipedia.org/wiki/Adobe_Photoshop#cite_note-25\">[25]</a>&nbsp;AV Bros.,<a href=\"https://en.wikipedia.org/wiki/Adobe_Photoshop#cite_note-26\">[26]</a>&nbsp;Flaming Pear Software,<a href=\"https://en.wikipedia.org/wiki/Adobe_Photoshop#cite_note-27\">[27]</a>&nbsp;etc.)</li>\n	<li>3D effects plugins (Andromeda Software,<a href=\"https://en.wikipedia.org/wiki/Adobe_Photoshop#cite_note-28\">[28]</a>&nbsp;Strata,<a href=\"https://en.wikipedia.org/wiki/Adobe_Photoshop#cite_note-29\">[29]</a>&nbsp;etc.)</li>\n</ul>\n\n<p>Adobe Camera Raw (also known as ACR and Camera Raw) is a special plugin, supplied free by Adobe, used primarily to read and process&nbsp;<a href=\"https://en.wikipedia.org/wiki/Raw_image_format\" title=\"Raw image format\">raw image files</a>&nbsp;so that the resulting images can be processed by Photoshop.<a href=\"https://en.wikipedia.org/wiki/Adobe_Photoshop#cite_note-30\">[30]</a>&nbsp;It can also be used from within&nbsp;<a href=\"https://en.wikipedia.org/wiki/Adobe_Bridge\" title=\"Adobe Bridge\">Adobe Bridge</a>.</p>\n', 57, 234),
(28, 'sdfg', 'sadfg', '<p>Photoshop was developed in 1987 by two brothers&nbsp;<a href=\"https://en.wikipedia.org/wiki/Thomas_Knoll\" title=\"Thomas Knoll\">Thomas</a>&nbsp;and&nbsp;<a href=\"https://en.wikipedia.org/wiki/John_Knoll\" title=\"John Knoll\">John Knoll</a>, who sold the distribution license to Adobe Systems Incorporated in 1988. Thomas Knoll, a Ph.D. student at the&nbsp;<a href=\"https://en.wikipedia.org/wiki/University_of_Michigan\" title=\"University of Michigan\">University of Michigan</a>, began writing a program on his&nbsp;<a href=\"https://en.wikipedia.org/wiki/Macintosh_Plus\" title=\"Macintosh Plus\">Macintosh Plus</a>&nbsp;to display&nbsp;<a href=\"https://en.wikipedia.org/wiki/Grayscale\" title=\"Grayscale\">grayscale</a>&nbsp;images on a monochrome display. This program (at that time called&nbsp;<strong>Display</strong>) caught the attention of his brother John, an&nbsp;<a href=\"https://en.wikipedia.org/wiki/Industrial_Light_%26_Magic\" title=\"Industrial Light &amp; Magic\">Industrial Light &amp; Magic</a>&nbsp;employee, who recommended that Thomas turn it into a full-fledged image editing program. Thomas took a six-month break from his studies in 1988 to collaborate with his brother on the program. Thomas renamed the program ImagePro, but the name was already taken.<a href=\"https://en.wikipedia.org/wiki/Adobe_Photoshop#cite_note-history-7\">[7]</a>&nbsp;Later that year, Thomas renamed his program&nbsp;<strong>Photoshop</strong>&nbsp;and worked out a short-term deal with scanner manufacturer Barneyscan to distribute copies of the program with a&nbsp;<a href=\"https://en.wikipedia.org/wiki/Image_scanner\" title=\"Image scanner\">slide scanner</a>; a &quot;total of about 200 copies of Photoshop were shipped&quot; this way.<a href=\"https://en.wikipedia.org/wiki/Adobe_Photoshop#cite_note-8\">[8]</a><a href=\"https://en.wikipedia.org/wiki/Adobe_Photoshop#cite_note-9\">[9]</a></p>\n\n<p>During this time, John traveled to&nbsp;<a href=\"https://en.wikipedia.org/wiki/Silicon_Valley\" title=\"Silicon Valley\">Silicon Valley</a>&nbsp;and gave a demonstration of the program to engineers at&nbsp;<a href=\"https://en.wikipedia.org/wiki/Apple_Inc.\" title=\"Apple Inc.\">Apple</a>&nbsp;and Russell Brown, art director at&nbsp;<a href=\"https://en.wikipedia.org/wiki/Adobe_Inc.\" title=\"Adobe Inc.\">Adobe</a>. Both showings were successful, and Adobe decided to purchase the license to distribute in September 1988.<a href=\"https://en.wikipedia.org/wiki/Adobe_Photoshop#cite_note-history-7\">[7]</a>&nbsp;While John worked on&nbsp;<a href=\"https://en.wikipedia.org/wiki/Plug-in_(computing)\" title=\"Plug-in (computing)\">plug-ins</a>&nbsp;in California, Thomas remained in&nbsp;<a href=\"https://en.wikipedia.org/wiki/Ann_Arbor,_Michigan\" title=\"Ann Arbor, Michigan\">Ann Arbor</a>&nbsp;writing code.&nbsp;<em>Photoshop</em>&nbsp;1.0 was released on February 19, 1990, for&nbsp;<a href=\"https://en.wikipedia.org/wiki/Macintosh\" title=\"Macintosh\">Macintosh</a>&nbsp;exclusively.<a href=\"https://en.wikipedia.org/wiki/Adobe_Photoshop#cite_note-10\">[10]</a><a href=\"https://en.wikipedia.org/wiki/Adobe_Photoshop#cite_note-About-11\">[11]</a>&nbsp;The Barneyscan version included advanced color editing features that were stripped from the first Adobe shipped version. The handling of color slowly improved with each release from Adobe and Photoshop quickly became the industry standard in digital color editing. At the time Photoshop 1.0 was released, digital retouching on dedicated high-end systems (such as the&nbsp;<a href=\"https://en.wikipedia.org/wiki/Scailex_Corporation\" title=\"Scailex Corporation\">Scitex</a>) cost around $300 an hour for basic photo retouching. The list price of Photoshop 1.0 for Macintosh in 1990 was $895.<a href=\"https://en.wikipedia.org/wiki/Adobe_Photoshop#cite_note-12\">[12]</a><a href=\"https://en.wikipedia.org/wiki/Adobe_Photoshop#cite_note-13\">[13]</a></p>\n\n<p>Photoshop was initially only available on Macintosh. In 1993, Adobe chief architect Seetharaman Narayanan&nbsp;<a href=\"https://en.wikipedia.org/wiki/Ported\" title=\"Ported\">ported</a>&nbsp;Photoshop to&nbsp;<a href=\"https://en.wikipedia.org/wiki/Microsoft_Windows\" title=\"Microsoft Windows\">Microsoft Windows</a>. The Windows port led to Photoshop reaching a wider&nbsp;<a href=\"https://en.wikipedia.org/wiki/Mass_market\" title=\"Mass market\">mass market</a>&nbsp;audience as&nbsp;<a href=\"https://en.wikipedia.org/wiki/Microsoft\" title=\"Microsoft\">Microsoft</a>&#39;s global reach expanded within the next few years.<a href=\"https://en.wikipedia.org/wiki/Adobe_Photoshop#cite_note-14\">[14]</a>&nbsp;On March 31, 1995, Adobe purchased the rights for Photoshop from Thomas and John Knoll for $34.5 million so Adobe would no longer need to pay a royalty for each copy sold.<a href=\"https://en.wikipedia.org/wiki/Adobe_Photoshop#cite_note-15\">[15]</a><a href=\"https://en.wikipedia.org/wiki/Adobe_Photoshop#cite_note-16\">[16]</a></p>\n\n<h2>File format</h2>\n\n<table>\n	<caption>Photoshop document</caption>\n	<tbody>\n		<tr>\n			<th scope=\"row\"><a href=\"https://en.wikipedia.org/wiki/Filename_extension\" title=\"Filename extension\">Filename extension</a></th>\n			<td>\n			<p>.psd</p>\n			</td>\n		</tr>\n		<tr>\n			<th scope=\"row\"><a href=\"https://en.wikipedia.org/wiki/Media_type\" title=\"Media type\">Internet media&nbsp;type</a></th>\n			<td>\n			<p>image/vnd.adobe.photoshop</p>\n			</td>\n		</tr>\n		<tr>\n			<th scope=\"row\"><a href=\"https://en.wikipedia.org/wiki/Type_code\" title=\"Type code\">Type code</a></th>\n			<td>8BPS</td>\n		</tr>\n		<tr>\n			<th scope=\"row\"><a href=\"https://en.wikipedia.org/wiki/Open_format\" title=\"Open format\">Open format</a>?</th>\n			<td>no</td>\n		</tr>\n		<tr>\n			<th scope=\"row\">Website</th>\n			<td><a href=\"https://www.adobe.com/devnet-apps/photoshop/fileformatashtml/\" rel=\"nofollow\">www.adobe.com/devnet-apps/photoshop/fileformatashtml/</a></td>\n		</tr>\n	</tbody>\n</table>\n\n<p>Photoshop files have default file extension as .PSD, which stands for &quot;PhotoShop Document&quot;.<a href=\"https://en.wikipedia.org/wiki/Adobe_Photoshop#cite_note-17\">[17]</a>&nbsp;A PSD file stores an image with support for most imaging options available in Photoshop. These include layers with&nbsp;<a href=\"https://en.wikipedia.org/wiki/Mask_(computing)\" title=\"Mask (computing)\">masks</a>,&nbsp;<a href=\"https://en.wikipedia.org/wiki/Transparency_(graphic)\" title=\"Transparency (graphic)\">transparency</a>, text,&nbsp;<a href=\"https://en.wikipedia.org/wiki/Alpha_compositing\" title=\"Alpha compositing\">alpha channels</a>&nbsp;and&nbsp;<a href=\"https://en.wikipedia.org/wiki/Spot_color\" title=\"Spot color\">spot colors</a>,&nbsp;<a href=\"https://en.wikipedia.org/wiki/Clipping_path\" title=\"Clipping path\">clipping paths</a>, and&nbsp;<a href=\"https://en.wikipedia.org/wiki/Duotone\" title=\"Duotone\">duotone</a>&nbsp;settings. This is in contrast to many other file formats (e.g., .JPG or .GIF) that restrict content to provide streamlined, predictable functionality. A PSD file has a maximum height and width of 30,000 pixels, and a length limit of two gigabytes.</p>\n\n<p>Photoshop files sometimes have the file extension .PSB, which stands for &quot;PhotoShop Big&quot; (also known as &quot;large document format&quot;).<a href=\"https://en.wikipedia.org/wiki/Adobe_Photoshop#cite_note-18\">[18]</a>&nbsp;A PSB file extends the PSD file format, increasing the maximum height and width to 300,000 pixels and the length limit to around 4&nbsp;<a href=\"https://en.wikipedia.org/wiki/Exabyte\" title=\"Exabyte\">Exabytes</a>. The dimension limit was apparently chosen arbitrarily by Adobe, not based on computer arithmetic constraints (it is not close to a power of two, as is 30,000) but for ease of&nbsp;<a href=\"https://en.wikipedia.org/wiki/Software_testing\" title=\"Software testing\">software testing</a>. PSD and PSB formats are documented.<a href=\"https://en.wikipedia.org/wiki/Adobe_Photoshop#cite_note-19\">[19]</a></p>\n\n<p>Because of Photoshop&#39;s popularity, PSD files are widely used and supported to some extent by most competing software, including Open-source / Free software such as&nbsp;<a href=\"https://en.wikipedia.org/wiki/GIMP\" title=\"GIMP\">GIMP</a>. The .PSD file format can be exported to and from Adobe&#39;s other apps like&nbsp;<a href=\"https://en.wikipedia.org/wiki/Adobe_Illustrator\" title=\"Adobe Illustrator\">Adobe Illustrator</a>,&nbsp;<a href=\"https://en.wikipedia.org/wiki/Adobe_Premiere_Pro\" title=\"Adobe Premiere Pro\">Adobe Premiere Pro</a>, and&nbsp;<a href=\"https://en.wikipedia.org/wiki/Adobe_After_Effects\" title=\"Adobe After Effects\">After Effects</a>.</p>\n\n<h2>Plugins</h2>\n\n<p>Main article:&nbsp;<a href=\"https://en.wikipedia.org/wiki/Photoshop_plugin\" title=\"Photoshop plugin\">Photoshop plugin</a></p>\n\n<p>Photoshop functionality can be extended by add-on programs called&nbsp;<a href=\"https://en.wikipedia.org/wiki/Photoshop_plugin\" title=\"Photoshop plugin\">Photoshop plugins</a>&nbsp;(or plug-ins). Adobe creates some plugins, such as Adobe Camera Raw, but third-party companies develop most plugins, according to Adobe&#39;s specifications. Some are free and some are commercial software. Most plugins work with only Photoshop or Photoshop-compatible hosts, but a few can also be run as standalone applications.</p>\n\n<p>There are various types of plugins, such as filter, export, import, selection, color correction, and automation. The most popular plugins are the filter plugins (also known as a&nbsp;<a href=\"https://en.wikipedia.org/wiki/8bf\" title=\"8bf\">8bf</a>&nbsp;plugins), available under the Filter menu in Photoshop. Filter plugins can either modify the current image or create content. Below are some popular types of plugins, and some well-known companies associated with them:</p>\n\n<ul>\n	<li>Color correction plugins (Alien Skin Software,<a href=\"https://en.wikipedia.org/wiki/Adobe_Photoshop#cite_note-20\">[20]</a>&nbsp;Nik Software,<a href=\"https://en.wikipedia.org/wiki/Adobe_Photoshop#cite_note-21\">[21]</a>&nbsp;OnOne Software,<a href=\"https://en.wikipedia.org/wiki/Adobe_Photoshop#cite_note-22\">[22]</a>&nbsp;Topaz Labs Software,<a href=\"https://en.wikipedia.org/wiki/Adobe_Photoshop#cite_note-23\">[23]</a>&nbsp;The Plugin Site,<a href=\"https://en.wikipedia.org/wiki/Adobe_Photoshop#cite_note-24\">[24]</a>&nbsp;etc.)</li>\n	<li>Special effects plugins (Alien Skin Software, Auto FX Software,<a href=\"https://en.wikipedia.org/wiki/Adobe_Photoshop#cite_note-25\">[25]</a>&nbsp;AV Bros.,<a href=\"https://en.wikipedia.org/wiki/Adobe_Photoshop#cite_note-26\">[26]</a>&nbsp;Flaming Pear Software,<a href=\"https://en.wikipedia.org/wiki/Adobe_Photoshop#cite_note-27\">[27]</a>&nbsp;etc.)</li>\n	<li>3D effects plugins (Andromeda Software,<a href=\"https://en.wikipedia.org/wiki/Adobe_Photoshop#cite_note-28\">[28]</a>&nbsp;Strata,<a href=\"https://en.wikipedia.org/wiki/Adobe_Photoshop#cite_note-29\">[29]</a>&nbsp;etc.)</li>\n</ul>\n\n<p>Adobe Camera Raw (also known as ACR and Camera Raw) is a special plugin, supplied free by Adobe, used primarily to read and process&nbsp;<a href=\"https://en.wikipedia.org/wiki/Raw_image_format\" title=\"Raw image format\">raw image files</a>&nbsp;so that the resulting images can be processed by Photoshop.<a href=\"https://en.wikipedia.org/wiki/Adobe_Photoshop#cite_note-30\">[30]</a>&nbsp;It can also be used from within&nbsp;<a href=\"https://en.wikipedia.org/wiki/Adobe_Bridge\" title=\"Adobe Bridge\">Adobe Bridge</a>.</p>\n', 57, 234),
(29, 'Topic First', 'Description of first topic', '<p>Okay so new</p>\n', 58, 10),
(30, 'Topic Second', 'Description of Second topic', '<p>Second</p>\n', 58, 10),
(31, 'Topic Third', 'Description of Third topic', '<p>Third</p>\n', 58, 10),
(32, 'Topic Fourth', 'Description of 4th topic', '<p>Sixth</p>\n', 58, 12),
(33, 'five', 'five', '', 58, NULL),
(34, 'Sixth', 'sadfg', '', 58, NULL),
(35, '7th', '7th', '', 58, NULL),
(36, 'asdfgh', 'sadfg', '', 57, NULL),
(37, 'asdfgh', 'sadfg', '', 57, NULL),
(38, 'asdfgh', 'sadfg', '', 57, NULL),
(44, 'asdfgs', 'safg', '', 57, 234),
(45, 'topic name', 'Description', '', 67, 20),
(46, 'Topic 1', 'Description', '', 68, 10);

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(55, '2021-04-13 18:57:59.522587', '63', 'Okay', 1, '[{\"added\": {}}]', 7, 34),
(56, '2021-04-13 19:06:29.475175', '58', 'Developing a modern web', 2, '[{\"changed\": {\"fields\": [\"Is approved\"]}}]', 7, 34),
(57, '2021-04-17 08:57:23.820292', '84', 'banish12345 Adobe Photoshop CC – Essentials Training Course', 2, '[{\"changed\": {\"fields\": [\"User\"]}}]', 11, 34),
(58, '2021-04-17 17:42:24.137747', '4', 'OrderStatus object (4)', 3, '', 15, 34),
(59, '2021-04-17 18:00:11.308086', '6', 'OrderStatus object (6)', 3, '', 15, 34),
(60, '2021-04-17 18:04:16.367687', '7', 'OrderStatus object (7)', 3, '', 15, 34),
(61, '2021-04-17 18:05:41.961676', '8', 'OrderStatus object (8)', 3, '', 15, 34),
(62, '2021-04-17 18:23:55.823838', '9', 'OrderStatus object (9)', 3, '', 15, 34),
(63, '2021-04-17 18:25:30.497500', '10', 'OrderStatus object (10)', 3, '', 15, 34),
(64, '2021-04-17 18:27:39.271296', '11', 'OrderStatus object (11)', 3, '', 15, 34),
(65, '2021-04-18 02:48:10.850148', '16', 'admin 0.0', 3, '', 10, 34),
(66, '2021-04-18 02:49:18.902864', '6', 'admin 2000.0', 3, '', 10, 34),
(67, '2021-04-18 06:23:39.114538', '16', 'OrderStatus object (16)', 3, '', 15, 34),
(68, '2021-04-18 06:23:39.117528', '15', 'OrderStatus object (15)', 3, '', 15, 34),
(69, '2021-04-18 06:23:39.119522', '12', 'OrderStatus object (12)', 3, '', 15, 34),
(70, '2021-04-18 06:23:39.121516', '5', 'OrderStatus object (5)', 3, '', 15, 34),
(71, '2021-04-18 06:23:39.122514', '3', 'OrderStatus object (3)', 3, '', 15, 34),
(72, '2021-04-18 06:23:39.124508', '2', 'OrderStatus object (2)', 3, '', 15, 34),
(73, '2021-04-18 06:23:39.126503', '1', 'OrderStatus object (1)', 3, '', 15, 34);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(12, 'admins', 'admin'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(10, 'cart', 'cart'),
(11, 'cart', 'cartitem'),
(15, 'cart', 'orderstatus'),
(5, 'contenttypes', 'contenttype'),
(7, 'courses', 'course'),
(16, 'courses', 'coursesearch'),
(8, 'courses', 'coursetitle'),
(9, 'courses', 'coursetopic'),
(13, 'instructors', 'instructor'),
(17, 'instructors', 'instructorpayment'),
(6, 'sessions', 'session'),
(14, 'students', 'student');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'accounts', '0001_initial', '2021-04-04 16:46:59.306377'),
(2, 'accounts', '0002_delete_login', '2021-04-04 16:46:59.322000'),
(3, 'contenttypes', '0001_initial', '2021-04-04 16:46:59.353240'),
(4, 'auth', '0001_initial', '2021-04-04 16:46:59.509452'),
(5, 'admin', '0001_initial', '2021-04-04 16:46:59.806257'),
(6, 'admin', '0002_logentry_remove_auto_add', '2021-04-04 16:46:59.899993'),
(7, 'admin', '0003_logentry_add_action_flag_choices', '2021-04-04 16:46:59.899993'),
(8, 'contenttypes', '0002_remove_content_type_name', '2021-04-04 16:46:59.974308'),
(9, 'auth', '0002_alter_permission_name_max_length', '2021-04-04 16:47:00.011542'),
(10, 'auth', '0003_alter_user_email_max_length', '2021-04-04 16:47:00.046450'),
(11, 'auth', '0004_alter_user_username_opts', '2021-04-04 16:47:00.054202'),
(12, 'auth', '0005_alter_user_last_login_null', '2021-04-04 16:47:00.089800'),
(13, 'auth', '0006_require_contenttypes_0002', '2021-04-04 16:47:00.092584'),
(14, 'auth', '0007_alter_validators_add_error_messages', '2021-04-04 16:47:00.100491'),
(15, 'auth', '0008_alter_user_username_max_length', '2021-04-04 16:47:00.115430'),
(16, 'auth', '0009_alter_user_last_name_max_length', '2021-04-04 16:47:00.134381'),
(17, 'auth', '0010_alter_group_name_max_length', '2021-04-04 16:47:00.153329'),
(18, 'auth', '0011_update_proxy_permissions', '2021-04-04 16:47:00.161308'),
(19, 'auth', '0012_alter_user_first_name_max_length', '2021-04-04 16:47:00.179262'),
(20, 'courses', '0001_initial', '2021-04-04 16:47:00.213170'),
(21, 'courses', '0002_auto_20210404_2231', '2021-04-04 16:47:00.519991'),
(22, 'sessions', '0001_initial', '2021-04-04 16:47:00.587645'),
(23, 'courses', '0003_delete_coursetitle', '2021-04-05 13:44:50.551822'),
(24, 'courses', '0004_auto_20210405_2032', '2021-04-05 14:47:58.651347'),
(25, 'courses', '0005_auto_20210409_0636', '2021-04-09 00:51:20.462111'),
(26, 'courses', '0006_course_course_caption', '2021-04-09 00:55:34.843321'),
(27, 'courses', '0007_course_course_modified_date', '2021-04-09 00:59:33.566654'),
(28, 'courses', '0008_course_course_audience', '2021-04-09 01:06:17.721498'),
(29, 'courses', '0009_course_course_outcome', '2021-04-09 01:08:46.722805'),
(30, 'courses', '0010_course_course_instructor', '2021-04-09 09:30:21.130808'),
(31, 'courses', '0011_auto_20210409_1517', '2021-04-09 09:33:02.233939'),
(32, 'courses', '0012_auto_20210409_1528', '2021-04-09 09:43:42.100547'),
(33, 'courses', '0013_auto_20210410_0712', '2021-04-10 01:27:42.913871'),
(34, 'courses', '0014_auto_20210410_0720', '2021-04-10 01:35:47.166183'),
(35, 'courses', '0015_auto_20210410_0735', '2021-04-10 01:50:07.035856'),
(36, 'courses', '0016_auto_20210410_0742', '2021-04-10 01:57:41.470079'),
(37, 'courses', '0017_auto_20210410_0811', '2021-04-10 02:26:06.800215'),
(38, 'courses', '0018_coursetopic_topic_duration', '2021-04-10 02:28:59.336688'),
(39, 'courses', '0019_auto_20210410_0815', '2021-04-10 02:30:33.720160'),
(40, 'cart', '0001_initial', '2021-04-12 07:10:47.505586'),
(41, 'cart', '0002_remove_cartitem_total_items', '2021-04-12 07:25:25.255166'),
(42, 'admins', '0001_initial', '2021-04-12 16:21:10.330200'),
(43, 'instructors', '0001_initial', '2021-04-12 16:21:10.427011'),
(44, 'students', '0001_initial', '2021-04-12 16:21:10.539708'),
(45, 'cart', '0003_auto_20210412_2208', '2021-04-12 16:23:32.270600'),
(46, 'cart', '0004_orderstatus', '2021-04-12 16:29:43.109180'),
(47, 'courses', '0020_course_is_approved', '2021-04-13 18:30:01.719124'),
(48, 'courses', '0021_auto_20210414_0041', '2021-04-13 18:56:11.969388'),
(49, 'courses', '0022_auto_20210414_0045', '2021-04-13 19:00:43.454089'),
(50, 'courses', '0023_auto_20210414_0046', '2021-04-13 19:01:14.492466'),
(51, 'cart', '0005_remove_orderstatus_student', '2021-04-17 10:12:06.038009'),
(52, 'courses', '0024_coursesearch', '2021-04-18 04:52:47.879115'),
(53, 'instructors', '0002_instructorpayment', '2021-04-18 10:10:53.339860'),
(54, 'instructors', '0003_auto_20210418_1649', '2021-04-18 11:04:18.528587'),
(55, 'instructors', '0004_auto_20210418_1655', '2021-04-18 11:10:09.379741'),
(56, 'instructors', '0005_auto_20210418_1659', '2021-04-18 11:14:09.161555'),
(57, 'instructors', '0006_instructor_status', '2021-04-18 12:03:51.405386'),
(58, 'instructors', '0007_instructor_date_requested', '2021-04-18 12:56:56.246383'),
(59, 'courses', '0025_auto_20210418_2025', '2021-04-18 14:40:37.780945'),
(60, 'instructors', '0008_auto_20210418_2026', '2021-04-18 14:41:19.500368'),
(61, 'courses', '0026_auto_20210418_2119', '2021-04-18 15:34:14.560773'),
(62, 'courses', '0027_delete_coursesearch', '2021-04-20 10:21:56.879855');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('0mwckdh1ypomxl4dl0b5tudh96dqp77v', '.eJxVjEEOwiAQRe_C2hAGcBCX7j0DGWAqVQNJaVfGu9smXdjtf-_9jwi0zCUsnacwZnEVWpz-t0jpxXUD-Un10WRqdZ7GKDdF7rTLe8v8vu3u4aBQL2sNxnDyZPQlMedsnVdWrzlSdMQDRgJS6syACGi1Nw49kDcarGJyUXx_8hw3ug:1lUr5p:oeLQApj8XUT-XfvjcGBTjLzk493Oq_aVWw3nRoZGQJw', '2021-04-23 13:22:37.190648'),
('2iuabdxbekxpgmlehsi4v0xffwq94dfk', '.eJxVjEEOgjAQRe_StWnaGSnUpXvO0EyZGUENTSisjHdXEha6_e-9_zKJtnVMW5UlTWwuBr05_Y6ZhofMO-E7zbdihzKvy5TtrtiDVtsXluf1cP8ORqrjt4Zzq8pt8I10MbKEHIEcd9qoMEYEBA-BMgdGDBgaAefIq1IEcb417w8IBDfa:1lVpkz:w681cyuRsG9bVNNfC7TPys14QoIDqcZmZPX0YHrE9Ao', '2021-04-26 06:09:09.907578'),
('2o8tjydx4mraz0lnsp02h1vyo7ydkc2z', '.eJxVjEEOwiAQRe_C2hAoUwSX7nsGMgyDVA0kpV0Z765NutDtf-_9lwi4rSVsnZcwJ3ERWpx-t4j04LqDdMd6a5JaXZc5yl2RB-1yaomf18P9OyjYy7cGIDdozHZUQGfL2bPzUTmgzGRGn2jIzhjUJjoGG8GCB045ZfLoVRTvD-kbOHw:1lVGRb:HwKcN5x0r_WHZJ5VaGE6ar0n0OZpNg7LwrpqseVTbfA', '2021-04-24 16:26:47.110576'),
('2qty95z1jz394p87a7k0brejq02f8voa', '.eJxVjEEOgjAQRe_StWnaGSnUpXvO0EyZGUENTSisjHdXEha6_e-9_zKJtnVMW5UlTWwuBr05_Y6ZhofMO-E7zbdihzKvy5TtrtiDVtsXluf1cP8ORqrjt4Zzq8pt8I10MbKEHIEcd9qoMEYEBA-BMgdGDBgaAefIq1IEcb417w8IBDfa:1lVsr9:7y1dTS0j-hFhEBiwUMFl_2O5hxgUmHLyrJ7nkffdc_M', '2021-04-26 09:27:43.449517'),
('2su5f298b8z2a8k74g3s2pix2l0ijrmm', '.eJxVjDsOwjAQBe_iGlm7_iWmpOcM1q69JgGUSHFSIe4OkVJA-2bmvVSibR3S1mRJY1FnZdXpd2PKD5l2UO403Wad52ldRta7og_a9HUu8rwc7t_BQG341h34GAhBAIM3haM4U4HQYw-Zs_PFRgsGrXCF3iHbjsl1SEZCDRbU-wO7fzbr:1lUuKK:ARHrd6eLqzHmSStop3E_ubLQccc_d5K5AWwo_CDUXXA', '2021-04-23 16:49:48.824663'),
('33j7028u6ah1d0xwtqyc08l231z1stn4', '.eJxVjEEOwiAQRe_C2hAGcBCX7j0DGWAqVQNJaVfGu9smXdjtf-_9jwi0zCUsnacwZnEVWpz-t0jpxXUD-Un10WRqdZ7GKDdF7rTLe8v8vu3u4aBQL2sNxnDyZPQlMedsnVdWrzlSdMQDRgJS6syACGi1Nw49kDcarGJyUXx_8hw3ug:1lWH2E:iBDBnj0zgDYH0zkymMuXae4nS-i5o9sXkWfXPRKV-Ks', '2021-04-27 11:16:46.458586'),
('3dpaj7hyq4u5j5ou0sfnrpyrw2eptuqb', '.eJxVjEEOwiAQRe_C2pCWocC4dO8ZmpkBbNVAUtqV8e7apAvd_vfef6mRtnUat5aWcY7qrMCq0-_IJI9UdhLvVG5VSy3rMrPeFX3Qpq81puflcP8OJmrTt0bpczBdjh2wF0LLA3noqXfBgRcHwjZbRM-GIIeYgEMQ7BDNYDFH9f4AByI38g:1lXxOp:wsf89ZL0iNhInx8xOt-zOl1Nr9TW2I51pdFevUKWOII', '2021-05-02 02:43:03.281054'),
('3vqdsg45d70fbmbnacxqfvltsbssxrj8', '.eJxVjEEOwiAQRe_C2hAGcBCX7j0DGWAqVQNJaVfGu9smXdjtf-_9jwi0zCUsnacwZnEVWpz-t0jpxXUD-Un10WRqdZ7GKDdF7rTLe8v8vu3u4aBQL2sNxnDyZPQlMedsnVdWrzlSdMQDRgJS6syACGi1Nw49kDcarGJyUXx_8hw3ug:1lWCS0:8nSh8B4xlWPcwgEW5USJiKDBKOaDvwHnDeU2DkKxA9Q', '2021-04-27 06:23:04.114878'),
('4mdxcdaeinik8gfe87prmxixg9yfgk8r', '.eJxVjEEOgjAQRe_StWnaGSnUpXvO0EyZGUENTSisjHdXEha6_e-9_zKJtnVMW5UlTWwuBr05_Y6ZhofMO-E7zbdihzKvy5TtrtiDVtsXluf1cP8ORqrjt4Zzq8pt8I10MbKEHIEcd9qoMEYEBA-BMgdGDBgaAefIq1IEcb417w8IBDfa:1lVx8i:RTQOPTpkbBmMR4kk9-gXA6VGLeBPipqNJHQWSQ_cheo', '2021-04-26 14:02:08.081614'),
('5fy728p254o8pbryuluvn3th8m9ighkx', '.eJxVjEEOwiAQRe_C2hAGcBCX7j0DGWAqVQNJaVfGu9smXdjtf-_9jwi0zCUsnacwZnEVWpz-t0jpxXUD-Un10WRqdZ7GKDdF7rTLe8v8vu3u4aBQL2sNxnDyZPQlMedsnVdWrzlSdMQDRgJS6syACGi1Nw49kDcarGJyUXx_8hw3ug:1lUuzN:ueFQyD2JRBpJxn1ggv96ZXJ37Rs5h-U6xRlbjJBVM3Y', '2021-04-23 17:32:13.535429'),
('5yzgat2538f3uibxw1msyu0im20xtgx1', '.eJxVjEEOwiAQRe_C2pCWocC4dO8ZmpkBbNVAUtqV8e7apAvd_vfef6mRtnUat5aWcY7qrMCq0-_IJI9UdhLvVG5VSy3rMrPeFX3Qpq81puflcP8OJmrTt0bpczBdjh2wF0LLA3noqXfBgRcHwjZbRM-GIIeYgEMQ7BDNYDFH9f4AByI38g:1lY8lD:f2wHd6PE6l3IoCKwBt2Iyr3n6Jr4M0KAjdacuUUl1oA', '2021-05-02 14:50:55.626901'),
('7oh14fl6gzctkxuzz8h9s94f76rhjlq5', '.eJxVjEEOwiAQRe_C2hAGcBCX7j0DGWAqVQNJaVfGu9smXdjtf-_9jwi0zCUsnacwZnEVWpz-t0jpxXUD-Un10WRqdZ7GKDdF7rTLe8v8vu3u4aBQL2sNxnDyZPQlMedsnVdWrzlSdMQDRgJS6syACGi1Nw49kDcarGJyUXx_8hw3ug:1lUuAS:e9WRoB9ybPwe3gb8fGLp3gxZ6hFQgIZlBWX2QXx0lUA', '2021-04-23 16:39:36.120773'),
('81sskgci00mal0kabkyqr47xprg39tyo', '.eJxVjEEOwiAQRe_C2hAoUwSX7nsGMgyDVA0kpV0Z765NutDtf-_9lwi4rSVsnZcwJ3ERWpx-t4j04LqDdMd6a5JaXZc5yl2RB-1yaomf18P9OyjYy7cGIDdozHZUQGfL2bPzUTmgzGRGn2jIzhjUJjoGG8GCB045ZfLoVRTvD-kbOHw:1lWJPP:dUCWiYWDuBT2oY1GaVh-JED3YyPbiYXbrlTgmFpU-uw', '2021-04-27 13:48:51.410729'),
('8zghiwa20asfiugqnryrw9jylqkya6mn', '.eJxVjEEOwiAQRe_C2hAGcBCX7j0DGWAqVQNJaVfGu9smXdjtf-_9jwi0zCUsnacwZnEVWpz-t0jpxXUD-Un10WRqdZ7GKDdF7rTLe8v8vu3u4aBQL2sNxnDyZPQlMedsnVdWrzlSdMQDRgJS6syACGi1Nw49kDcarGJyUXx_8hw3ug:1lV39u:P9QqopnUGeBBVEtZqcmxlEnlqaueoKH78ThFrxC9fjw', '2021-04-24 02:15:38.223428'),
('96m4j6gg0ad9q80rpxj5s276a15k9cl0', '.eJxVjEEOwiAQRe_C2hAGcBCX7j0DGWAqVQNJaVfGu9smXdjtf-_9jwi0zCUsnacwZnEVWpz-t0jpxXUD-Un10WRqdZ7GKDdF7rTLe8v8vu3u4aBQL2sNxnDyZPQlMedsnVdWrzlSdMQDRgJS6syACGi1Nw49kDcarGJyUXx_8hw3ug:1lV1p9:xZwNJT0n7YuUMH8iQwklmYykZuvioqQaur3ESR7liM0', '2021-04-24 00:50:07.269735'),
('akhpgy3bsw9976xrq5amyczd7k4lpaxe', '.eJxVjEEOwiAQRe_C2hAoUwSX7nsGMgyDVA0kpV0Z765NutDtf-_9lwi4rSVsnZcwJ3ERWpx-t4j04LqDdMd6a5JaXZc5yl2RB-1yaomf18P9OyjYy7cGIDdozHZUQGfL2bPzUTmgzGRGn2jIzhjUJjoGG8GCB045ZfLoVRTvD-kbOHw:1lVsvA:KDi7_AhtIX2HRpM7C9ebG8zBWVG52miHitFnEAyby-A', '2021-04-26 09:31:52.447059'),
('bqsycmmgnkctg40u3lnjq7ew2bq5wx9s', '.eJxVjLsOAiEUBf-F2hDeFyzt_QYCXJBVA8myWxn_XUm20PbMzHkRH_at-n3k1S9IzkRacvodY0iP3CbBe2i3TlNv27pEOhV60EGvHfPzcrh_BzWMOuuoWQ5Rq4QOkDOjFLdQbODCSVQFEaEILZjMLksOGi2IAqCM-RYKyfsDEQA38g:1lXjSK:GwKZuBsSqyaolMwuijwFnAdEBeKl2xbZXAMv6H3UVzs', '2021-05-01 11:49:44.617714'),
('cikjzfntvo5exyqj2rrglbgo4f0xyrlw', '.eJxVjDsOwjAQBe_iGlnEH9ahpM8ZovXuGgeQLcVJhbg7iZQC2pl5761GXJc8rk3mcWJ1VRbU6RdGpKeU3fADy71qqmWZp6j3RB-26aGyvG5H-3eQseVtTSQJIpkkhOhFesQQGROfQ5-ctWwMd0CwAQDXRRAfjE_WoQ3RwUV9vmcZOWI:1lXgiz:YVIqUes3P0BDNOxAgq22aPFp8RxqG-en4yBgmn0hmpE', '2021-05-01 08:54:45.128489'),
('d4osq0y6dqqead77kmjtezaz46cbzjis', '.eJxVjEEOwiAQRe_C2hAGcBCX7j0DGWAqVQNJaVfGu9smXdjtf-_9jwi0zCUsnacwZnEVWpz-t0jpxXUD-Un10WRqdZ7GKDdF7rTLe8v8vu3u4aBQL2sNxnDyZPQlMedsnVdWrzlSdMQDRgJS6syACGi1Nw49kDcarGJyUXx_8hw3ug:1lVAHZ:_LPjhCPXo3dJXAZCIBETMYmJcTnwRX6Y6tU-sghhBwk', '2021-04-24 09:52:01.521372'),
('eel7b2chiyyxy6u89uqrhulmevnuka9a', '.eJxVjEEOwiAQRe_C2hAGcBCX7j0DGWAqVQNJaVfGu9smXdjtf-_9jwi0zCUsnacwZnEVWpz-t0jpxXUD-Un10WRqdZ7GKDdF7rTLe8v8vu3u4aBQL2sNxnDyZPQlMedsnVdWrzlSdMQDRgJS6syACGi1Nw49kDcarGJyUXx_8hw3ug:1lUnIa:gIF_cVtostt5BeUTnmF3221ajmUu26LkWqNdBR6CJFs', '2021-04-23 09:19:32.667578'),
('eghqqpunoib2asjsmtyg7jmpshoxzmsr', '.eJxVjLsOAiEUBf-F2hDeFyzt_QYCXJBVA8myWxn_XUm20PbMzHkRH_at-n3k1S9IzkRacvodY0iP3CbBe2i3TlNv27pEOhV60EGvHfPzcrh_BzWMOuuoWQ5Rq4QOkDOjFLdQbODCSVQFEaEILZjMLksOGi2IAqCM-RYKyfsDEQA38g:1lY1WF:rleEK5X2SubPj0O_hq33neQCSpjshpPNJYHzohG8c2A', '2021-05-02 07:06:59.869645'),
('eutbysk5jc3fpxd1vr64m1zfryhh8g25', '.eJxVjEEOwiAQRe_C2pCWocC4dO8ZmpkBbNVAUtqV8e7apAvd_vfef6mRtnUat5aWcY7qrMCq0-_IJI9UdhLvVG5VSy3rMrPeFX3Qpq81puflcP8OJmrTt0bpczBdjh2wF0LLA3noqXfBgRcHwjZbRM-GIIeYgEMQ7BDNYDFH9f4AByI38g:1lWNhY:ebr0K8a6CDxKJczN55BExjWX95LjxXmVFbL8Wc_EfpE', '2021-04-27 18:23:52.498882'),
('f3tn199sklhmanop211522j7ggyyc42b', '.eJxVjEEOgjAQRe_StWnaGSnUpXvO0EyZGUENTSisjHdXEha6_e-9_zKJtnVMW5UlTWwuBr05_Y6ZhofMO-E7zbdihzKvy5TtrtiDVtsXluf1cP8ORqrjt4Zzq8pt8I10MbKEHIEcd9qoMEYEBA-BMgdGDBgaAefIq1IEcb417w8IBDfa:1lVpmq:bTGRuHWLvDoWR4pCGBTKQi7lRzGcsuRnnr_9bJKNjZw', '2021-04-26 06:11:04.291687'),
('fcr7vi57gfz3qnbdroe1a2ko4z9ygd48', '.eJxVjDsOwjAQBe_iGlm7_iWmpOcM1q69JgGUSHFSIe4OkVJA-2bmvVSibR3S1mRJY1FnZdXpd2PKD5l2UO403Wad52ldRta7og_a9HUu8rwc7t_BQG341h34GAhBAIM3haM4U4HQYw-Zs_PFRgsGrXCF3iHbjsl1SEZCDRbU-wO7fzbr:1lVIUU:TJYUrW4kNwnLkbmxKYjigKyMI6NSzss8o-SUGhn5Q4M', '2021-04-24 18:37:54.594372'),
('fd39o61eg2wzvk7i6z2c58fea4g9iak8', '.eJxVjEEOgjAQRe_StWnaGSnUpXvO0EyZGUENTSisjHdXEha6_e-9_zKJtnVMW5UlTWwuBr05_Y6ZhofMO-E7zbdihzKvy5TtrtiDVtsXluf1cP8ORqrjt4Zzq8pt8I10MbKEHIEcd9qoMEYEBA-BMgdGDBgaAefIq1IEcb417w8IBDfa:1lVx6g:j2zBZDTAMz8hO4gHxcJ_6BsEXxAjyqNsexA80Xr0Iok', '2021-04-26 14:00:02.905948'),
('g1ba77uk20vl4hum3h346gmi5kykdj1s', '.eJxVjEEOwiAQRe_C2hAGcBCX7j0DGWAqVQNJaVfGu9smXdjtf-_9jwi0zCUsnacwZnEVWpz-t0jpxXUD-Un10WRqdZ7GKDdF7rTLe8v8vu3u4aBQL2sNxnDyZPQlMedsnVdWrzlSdMQDRgJS6syACGi1Nw49kDcarGJyUXx_8hw3ug:1lV2zQ:Ej2HLYIf_ssIXiZjIRG9rd42eQeh2VmP11bhyAZ4EnI', '2021-04-24 02:04:48.378431'),
('g82vsja1v2z9i0xc441ebfkmu432efuh', '.eJxVjEEOwiAQRe_C2pCWocC4dO8ZmpkBbNVAUtqV8e7apAvd_vfef6mRtnUat5aWcY7qrMCq0-_IJI9UdhLvVG5VSy3rMrPeFX3Qpq81puflcP8OJmrTt0bpczBdjh2wF0LLA3noqXfBgRcHwjZbRM-GIIeYgEMQ7BDNYDFH9f4AByI38g:1lY7XO:Yu60kNn3S5lcDvTOmTN6qkvM-2g_hJR4VtGK0-EFlag', '2021-05-02 13:32:34.060621'),
('gwfybyst0wkrmnxd1gqu5tq0118nc0gp', '.eJxVjEEOwiAQRe_C2pCWocC4dO8ZmpkBbNVAUtqV8e7apAvd_vfef6mRtnUat5aWcY7qrMCq0-_IJI9UdhLvVG5VSy3rMrPeFX3Qpq81puflcP8OJmrTt0bpczBdjh2wF0LLA3noqXfBgRcHwjZbRM-GIIeYgEMQ7BDNYDFH9f4AByI38g:1lXTFr:bp-OUCgATksvlNh_yqjGYa1llJ6l-IYZ6HGclKUolIw', '2021-04-30 18:31:47.020426'),
('kjt0yqgcoffzpry6yalhiaut5u1bz8wt', '.eJxVjEEOwiAQRe_C2hAGcBCX7j0DGWAqVQNJaVfGu9smXdjtf-_9jwi0zCUsnacwZnEVWpz-t0jpxXUD-Un10WRqdZ7GKDdF7rTLe8v8vu3u4aBQL2sNxnDyZPQlMedsnVdWrzlSdMQDRgJS6syACGi1Nw49kDcarGJyUXx_8hw3ug:1lYA7p:XpjxkXwZTNt5EVjBNABXlqhsS_L2YZb76-8oA-SsosQ', '2021-05-02 16:18:21.373143'),
('knoytsir401r6inbe115nnssca4gudbl', '.eJxVjEEOwiAQRe_C2pCWocC4dO8ZmpkBbNVAUtqV8e7apAvd_vfef6mRtnUat5aWcY7qrMCq0-_IJI9UdhLvVG5VSy3rMrPeFX3Qpq81puflcP8OJmrTt0bpczBdjh2wF0LLA3noqXfBgRcHwjZbRM-GIIeYgEMQ7BDNYDFH9f4AByI38g:1lWvwf:aICTedVyzwg3RsHGS5Laz5hIQtFJ9CESMQMuq5rodJU', '2021-04-29 06:57:45.075277'),
('lzdykmouer3lg3x4gxbqjf0iuacpsqkc', '.eJxVjEEOwiAQRe_C2pCWocC4dO8ZmpkBbNVAUtqV8e7apAvd_vfef6mRtnUat5aWcY7qrMCq0-_IJI9UdhLvVG5VSy3rMrPeFX3Qpq81puflcP8OJmrTt0bpczBdjh2wF0LLA3noqXfBgRcHwjZbRM-GIIeYgEMQ7BDNYDFH9f4AByI38g:1lY0oG:jM69IbQMsdl8CNo_YsfvlIrDof8ia6VZXulqWiR8wn0', '2021-05-02 06:21:32.656998'),
('nf22i1nlyu9mof1ni4gb0fvd7ig4d6ct', '.eJxVjEEOwiAQRe_C2pCWocC4dO8ZmpkBbNVAUtqV8e7apAvd_vfef6mRtnUat5aWcY7qrMCq0-_IJI9UdhLvVG5VSy3rMrPeFX3Qpq81puflcP8OJmrTt0bpczBdjh2wF0LLA3noqXfBgRcHwjZbRM-GIIeYgEMQ7BDNYDFH9f4AByI38g:1lWW8d:c3QsO-AwlPXyZoByG6sy7aVleSuSxFuV8wU2hE0socE', '2021-04-28 03:24:23.435567'),
('nknspszsupt1ze2vzm3335ez13w10r6j', '.eJxVjEEOgjAQRe_StWnaGSnUpXvO0EyZGUENTSisjHdXEha6_e-9_zKJtnVMW5UlTWwuBr05_Y6ZhofMO-E7zbdihzKvy5TtrtiDVtsXluf1cP8ORqrjt4Zzq8pt8I10MbKEHIEcd9qoMEYEBA-BMgdGDBgaAefIq1IEcb417w8IBDfa:1lVpxs:EbmgD-EjyZXbDWEDMARS43R6_CRajgOd3tDCV8GpSCE', '2021-04-26 06:22:28.778648'),
('oom6ddzlm4f0mui89c2t9p9mxn9cgxbu', '.eJxVjEEOwiAQRe_C2hAGcBCX7j0DGWAqVQNJaVfGu9smXdjtf-_9jwi0zCUsnacwZnEVWpz-t0jpxXUD-Un10WRqdZ7GKDdF7rTLe8v8vu3u4aBQL2sNxnDyZPQlMedsnVdWrzlSdMQDRgJS6syACGi1Nw49kDcarGJyUXx_8hw3ug:1lV6Dk:myU2ISlQJqXE6DeYSCNXzOkRIAdsmlDSvCaF6WvvWwg', '2021-04-24 05:31:48.999948'),
('ozf0r9phu53tpbmcd97vvobqwznfq8v7', '.eJxVjEEOwiAQRe_C2pCWocC4dO8ZmpkBbNVAUtqV8e7apAvd_vfef6mRtnUat5aWcY7qrMCq0-_IJI9UdhLvVG5VSy3rMrPeFX3Qpq81puflcP8OJmrTt0bpczBdjh2wF0LLA3noqXfBgRcHwjZbRM-GIIeYgEMQ7BDNYDFH9f4AByI38g:1lYB4n:AhsjPNpyV2wprxONG0gQ76yOjggtdWJywki9CjsjfTg', '2021-05-02 17:19:17.108977'),
('png50tqasw9ekgxjxty8ut365dyuckhb', '.eJxVjMsOwiAQRf-FtSEQysule7-BzDCDVA0kpV0Z_12bdKHbe865L5FgW2vaBi9pJnEWkxan3xEhP7jthO7Qbl3m3tZlRrkr8qBDXjvx83K4fwcVRv3W2dGkDBigqJyyLsSiKVM0SNp6CjpoQ-QsKy4G0BXPCBhzjACWtBfvDxF8OMo:1lXlI3:zD7krYPOyh03RejZVNv2i2Mmj-E0CQv8zeLjLtJYTqI', '2021-05-01 13:47:15.806867'),
('q6jznswv2qy593lgsasw73d3ysuvg6c1', '.eJxVjEEOwiAQRe_C2hAoUwSX7nsGMgyDVA0kpV0Z765NutDtf-_9lwi4rSVsnZcwJ3ERWpx-t4j04LqDdMd6a5JaXZc5yl2RB-1yaomf18P9OyjYy7cGIDdozHZUQGfL2bPzUTmgzGRGn2jIzhjUJjoGG8GCB045ZfLoVRTvD-kbOHw:1lWGue:2SfODpoXoV556d9tVmV4uYHyknYOpxQ6ix4qFduClsc', '2021-04-27 11:08:56.538528'),
('qdkesxlhs7gf1j27p8zxnir17s2jamun', '.eJxVjDsOwjAQBe_iGlm7_iWmpOcM1q69JgGUSHFSIe4OkVJA-2bmvVSibR3S1mRJY1FnZdXpd2PKD5l2UO403Wad52ldRta7og_a9HUu8rwc7t_BQG341h34GAhBAIM3haM4U4HQYw-Zs_PFRgsGrXCF3iHbjsl1SEZCDRbU-wO7fzbr:1lUuqO:1w0aRJ_4MgGPALQoP-5HIlVwJCuAcGyaKq6z_fFt6Rc', '2021-04-23 17:22:56.451921'),
('rixvrf3fr3p9gpophtutg4af14d53ahp', '.eJxVjEEOwiAQRe_C2pCWocC4dO8ZmpkBbNVAUtqV8e7apAvd_vfef6mRtnUat5aWcY7qrMCq0-_IJI9UdhLvVG5VSy3rMrPeFX3Qpq81puflcP8OJmrTt0bpczBdjh2wF0LLA3noqXfBgRcHwjZbRM-GIIeYgEMQ7BDNYDFH9f4AByI38g:1lWtvi:dpeBSXogDhYnBq75D9SrjHetfmwyXRRnrgjhdU8tdTs', '2021-04-29 04:48:38.128010'),
('sdjzh1n5nqx7voduinul0zmi0f0xtudr', '.eJxVjEEOwiAQRe_C2pCWocC4dO8ZmpkBbNVAUtqV8e7apAvd_vfef6mRtnUat5aWcY7qrMCq0-_IJI9UdhLvVG5VSy3rMrPeFX3Qpq81puflcP8OJmrTt0bpczBdjh2wF0LLA3noqXfBgRcHwjZbRM-GIIeYgEMQ7BDNYDFH9f4AByI38g:1lWzNt:zp4X9my52-2-QW6yQGXLIMvtU750LWXabQgQ1DnZsys', '2021-04-29 10:38:05.000288'),
('tdms1mjg2rrczdo67kk26oo9fr9v3zi0', '.eJxVjEsOAiEQBe_C2pB2-IlL956BNN0gowaSYWZlvLuSzEK3r6reSwTc1hK2npYwszgLo8Thd4xIj1QH4TvWW5PU6rrMUQ5F7rTLa-P0vOzu30HBXr61p6zYMCGCBWcJM5iJ_ITKcsynqK3RLjlPg4FLEXR0bAEhK_B4FO8PJ9A4ig:1lXm4d:Yp1DxHwA1FW1H52fkrPLGoARVuwvwFCG0R7dKKeVngs', '2021-05-01 14:37:27.738673'),
('tmbtxakwilw86u7h3qt8mn8dhp16ykz0', '.eJxVjEEOwiAQRe_C2hAGcBCX7j0DGWAqVQNJaVfGu9smXdjtf-_9jwi0zCUsnacwZnEVWpz-t0jpxXUD-Un10WRqdZ7GKDdF7rTLe8v8vu3u4aBQL2sNxnDyZPQlMedsnVdWrzlSdMQDRgJS6syACGi1Nw49kDcarGJyUXx_8hw3ug:1lUuUf:-tbvtHmLpV93WrIc-CfTFxTU-MN0NsTXVZAhhaZdLC4', '2021-04-23 17:00:29.082235'),
('un7gqr6s8jgurz4qwk9q815thnm885ka', '.eJxVjEEOwiAQRe_C2hAGcBCX7j0DGWAqVQNJaVfGu9smXdjtf-_9jwi0zCUsnacwZnEVWpz-t0jpxXUD-Un10WRqdZ7GKDdF7rTLe8v8vu3u4aBQL2sNxnDyZPQlMedsnVdWrzlSdMQDRgJS6syACGi1Nw49kDcarGJyUXx_8hw3ug:1lVdXt:wRc5gpNutXOZvtpo4W_97B6lIVKbxsQAg2g5P3W9qfA', '2021-04-25 17:06:49.277751'),
('uqu0z4cytrb0vjv364g4dlda2txc1r8f', '.eJxVjEEOwiAQRe_C2hAoUwSX7nsGMgyDVA0kpV0Z765NutDtf-_9lwi4rSVsnZcwJ3ERWpx-t4j04LqDdMd6a5JaXZc5yl2RB-1yaomf18P9OyjYy7cGIDdozHZUQGfL2bPzUTmgzGRGn2jIzhjUJjoGG8GCB045ZfLoVRTvD-kbOHw:1lWGoV:DfWcU96R8TaHslTtK4BJGVWcaKfmxK66347SUcv8utg', '2021-04-27 11:02:35.064357'),
('usqfj855r85bvi1ngry3yszihvu4bwju', '.eJxVjEEOwiAQRe_C2hAGcBCX7j0DGWAqVQNJaVfGu9smXdjtf-_9jwi0zCUsnacwZnEVWpz-t0jpxXUD-Un10WRqdZ7GKDdF7rTLe8v8vu3u4aBQL2sNxnDyZPQlMedsnVdWrzlSdMQDRgJS6syACGi1Nw49kDcarGJyUXx_8hw3ug:1lYB51:2hILoIB5QdjsBWaic86CAaWSPYcoX5hSkpgdqsuIRRE', '2021-05-02 17:19:31.888532'),
('uxrcmqt5qq7c9zttgv2tpfnwu4f4b9wb', '.eJxVjEEOwiAQRe_C2hAGcBCX7j0DGWAqVQNJaVfGu9smXdjtf-_9jwi0zCUsnacwZnEVWpz-t0jpxXUD-Un10WRqdZ7GKDdF7rTLe8v8vu3u4aBQL2sNxnDyZPQlMedsnVdWrzlSdMQDRgJS6syACGi1Nw49kDcarGJyUXx_8hw3ug:1lVCNB:OrE66nxuYJG2M3V5bOafkUKGoxUjprpF4tpwcJYRe0c', '2021-04-24 12:05:57.197693'),
('w47c5cmu9qvxzqrqtgd4vxhxyadu9nvt', '.eJxVjEEOwiAQRe_C2hAGcBCX7j0DGWAqVQNJaVfGu9smXdjtf-_9jwi0zCUsnacwZnEVWpz-t0jpxXUD-Un10WRqdZ7GKDdF7rTLe8v8vu3u4aBQL2sNxnDyZPQlMedsnVdWrzlSdMQDRgJS6syACGi1Nw49kDcarGJyUXx_8hw3ug:1lVGUD:QMWwhbwfZWKbm11kl43MdBgu2lNuJAvJrK5CTxQyKnY', '2021-04-24 16:29:29.746761'),
('xc1k8sb8xkdkuashi7ewa8n8parafcf0', '.eJxVjEEOwiAQRe_C2hAGcBCX7j0DGWAqVQNJaVfGu9smXdjtf-_9jwi0zCUsnacwZnEVWpz-t0jpxXUD-Un10WRqdZ7GKDdF7rTLe8v8vu3u4aBQL2sNxnDyZPQlMedsnVdWrzlSdMQDRgJS6syACGi1Nw49kDcarGJyUXx_8hw3ug:1lUunK:TaQOVs0Vsb7bjtu14sddWiAnNWQPjohFl1o1-4NX_Cw', '2021-04-23 17:19:46.996968'),
('ypy7ijtatp1wm3rw840rloutdvj2d52z', '.eJxVjEEOwiAQRe_C2hAGcBCX7j0DGWAqVQNJaVfGu9smXdjtf-_9jwi0zCUsnacwZnEVWpz-t0jpxXUD-Un10WRqdZ7GKDdF7rTLe8v8vu3u4aBQL2sNxnDyZPQlMedsnVdWrzlSdMQDRgJS6syACGi1Nw49kDcarGJyUXx_8hw3ug:1lVGUD:QMWwhbwfZWKbm11kl43MdBgu2lNuJAvJrK5CTxQyKnY', '2021-04-24 16:29:29.490383'),
('zuauqye6dz1ifmwihnd8nc8sphewjdm6', '.eJxVjEEOwiAQRe_C2pCWocC4dO8ZmpkBbNVAUtqV8e7apAvd_vfef6mRtnUat5aWcY7qrMCq0-_IJI9UdhLvVG5VSy3rMrPeFX3Qpq81puflcP8OJmrTt0bpczBdjh2wF0LLA3noqXfBgRcHwjZbRM-GIIeYgEMQ7BDNYDFH9f4AByI38g:1lYRX4:ndzkjbkVRpOLEEEoEXT2iNi8qeeuOxXA3UvFpkwFHjU', '2021-05-03 10:53:34.880577'),
('zzao3opk3mv28vezoo7e9pruidmq2kel', '.eJxVjDsOwjAQBe_iGlm7_iWmpOcM1q69JgGUSHFSIe4OkVJA-2bmvVSibR3S1mRJY1FnZdXpd2PKD5l2UO403Wad52ldRta7og_a9HUu8rwc7t_BQG341h34GAhBAIM3haM4U4HQYw-Zs_PFRgsGrXCF3iHbjsl1SEZCDRbU-wO7fzbr:1lVG2d:jRG62AnD_T5wWZNfNdAMYCgG1LWTvt9VQxBNzydQbrI', '2021-04-24 16:00:59.323166');

-- --------------------------------------------------------

--
-- Table structure for table `instructors_instructor`
--

CREATE TABLE `instructors_instructor` (
  `id` int(11) NOT NULL,
  `first_name` varchar(200) NOT NULL,
  `last_name` varchar(200) DEFAULT NULL,
  `profile_image` varchar(100) NOT NULL,
  `user_id` int(11) NOT NULL,
  `status` varchar(50) NOT NULL,
  `date_requested` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `instructors_instructorpayment`
--

CREATE TABLE `instructors_instructorpayment` (
  `id` int(11) NOT NULL,
  `account_holder_name` varchar(100) DEFAULT NULL,
  `payment_method` varchar(50) NOT NULL,
  `payment_id` varchar(100) DEFAULT NULL,
  `instructor_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `students_student`
--

CREATE TABLE `students_student` (
  `id` int(11) NOT NULL,
  `first_name` varchar(200) DEFAULT NULL,
  `last_name` varchar(200) DEFAULT NULL,
  `profile_image` varchar(100) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins_admin`
--
ALTER TABLE `admins_admin`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admins_admin_user_id_b0a95fca_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `cart_cart`
--
ALTER TABLE `cart_cart`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cart_cart_user_id_9b4220b9_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `cart_cartitem`
--
ALTER TABLE `cart_cartitem`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cart_cartitem_cart_id_370ad265_fk_cart_cart_id` (`cart_id`),
  ADD KEY `cart_cartitem_course_id_3fb6fc6f_fk_courses_course_id` (`course_id`),
  ADD KEY `cart_cartitem_user_id_292943b8_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `cart_orderstatus`
--
ALTER TABLE `cart_orderstatus`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cart_orderstatus_course_id_6d94492e_fk_courses_course_id` (`course_id`),
  ADD KEY `cart_orderstatus_user_id_4a4840f4_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `courses_course`
--
ALTER TABLE `courses_course`
  ADD PRIMARY KEY (`id`),
  ADD KEY `courses_course_course_instructor_id_69ea3e36_fk_auth_user_id` (`course_instructor_id`);

--
-- Indexes for table `courses_coursetopic`
--
ALTER TABLE `courses_coursetopic`
  ADD PRIMARY KEY (`id`),
  ADD KEY `courses_coursetopic_course_id_a4b6abd4_fk_courses_course_id` (`course_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `instructors_instructor`
--
ALTER TABLE `instructors_instructor`
  ADD PRIMARY KEY (`id`),
  ADD KEY `instructors_instructor_user_id_65547c86_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `instructors_instructorpayment`
--
ALTER TABLE `instructors_instructorpayment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `instructors_instruct_instructor_id_6347cd91_fk_instructo` (`instructor_id`);

--
-- Indexes for table `students_student`
--
ALTER TABLE `students_student`
  ADD PRIMARY KEY (`id`),
  ADD KEY `students_student_user_id_56286dbb_fk_auth_user_id` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins_admin`
--
ALTER TABLE `admins_admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cart_cart`
--
ALTER TABLE `cart_cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `cart_cartitem`
--
ALTER TABLE `cart_cartitem`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cart_orderstatus`
--
ALTER TABLE `cart_orderstatus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `courses_course`
--
ALTER TABLE `courses_course`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `courses_coursetopic`
--
ALTER TABLE `courses_coursetopic`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `instructors_instructor`
--
ALTER TABLE `instructors_instructor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `instructors_instructorpayment`
--
ALTER TABLE `instructors_instructorpayment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `students_student`
--
ALTER TABLE `students_student`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `admins_admin`
--
ALTER TABLE `admins_admin`
  ADD CONSTRAINT `admins_admin_user_id_b0a95fca_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `cart_cart`
--
ALTER TABLE `cart_cart`
  ADD CONSTRAINT `cart_cart_user_id_9b4220b9_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `cart_cartitem`
--
ALTER TABLE `cart_cartitem`
  ADD CONSTRAINT `cart_cartitem_cart_id_370ad265_fk_cart_cart_id` FOREIGN KEY (`cart_id`) REFERENCES `cart_cart` (`id`),
  ADD CONSTRAINT `cart_cartitem_course_id_3fb6fc6f_fk_courses_course_id` FOREIGN KEY (`course_id`) REFERENCES `courses_course` (`id`),
  ADD CONSTRAINT `cart_cartitem_user_id_292943b8_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `cart_orderstatus`
--
ALTER TABLE `cart_orderstatus`
  ADD CONSTRAINT `cart_orderstatus_course_id_6d94492e_fk_courses_course_id` FOREIGN KEY (`course_id`) REFERENCES `courses_course` (`id`),
  ADD CONSTRAINT `cart_orderstatus_user_id_4a4840f4_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `courses_course`
--
ALTER TABLE `courses_course`
  ADD CONSTRAINT `courses_course_course_instructor_id_69ea3e36_fk_auth_user_id` FOREIGN KEY (`course_instructor_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `courses_coursetopic`
--
ALTER TABLE `courses_coursetopic`
  ADD CONSTRAINT `courses_coursetopic_course_id_a4b6abd4_fk_courses_course_id` FOREIGN KEY (`course_id`) REFERENCES `courses_course` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `instructors_instructor`
--
ALTER TABLE `instructors_instructor`
  ADD CONSTRAINT `instructors_instructor_user_id_65547c86_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `instructors_instructorpayment`
--
ALTER TABLE `instructors_instructorpayment`
  ADD CONSTRAINT `instructors_instruct_instructor_id_6347cd91_fk_instructo` FOREIGN KEY (`instructor_id`) REFERENCES `instructors_instructor` (`id`);

--
-- Constraints for table `students_student`
--
ALTER TABLE `students_student`
  ADD CONSTRAINT `students_student_user_id_56286dbb_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
