-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 31, 2023 at 04:47 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `healthcare_db1`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
(13, 'Can add content type', 4, 'add_contenttype'),
(14, 'Can change content type', 4, 'change_contenttype'),
(15, 'Can delete content type', 4, 'delete_contenttype'),
(16, 'Can view content type', 4, 'view_contenttype'),
(17, 'Can add session', 5, 'add_session'),
(18, 'Can change session', 5, 'change_session'),
(19, 'Can delete session', 5, 'delete_session'),
(20, 'Can view session', 5, 'view_session'),
(21, 'Can add user', 6, 'add_user'),
(22, 'Can change user', 6, 'change_user'),
(23, 'Can delete user', 6, 'delete_user'),
(24, 'Can view user', 6, 'view_user'),
(25, 'Can add medical', 7, 'add_medical'),
(26, 'Can change medical', 7, 'change_medical'),
(27, 'Can delete medical', 7, 'delete_medical'),
(28, 'Can view medical', 7, 'view_medical'),
(29, 'Can add ment', 8, 'add_ment'),
(30, 'Can change ment', 8, 'change_ment'),
(31, 'Can delete ment', 8, 'delete_ment'),
(32, 'Can view ment', 8, 'view_ment'),
(33, 'Can add profile', 9, 'add_profile'),
(34, 'Can change profile', 9, 'change_profile'),
(35, 'Can delete profile', 9, 'delete_profile'),
(36, 'Can view profile', 9, 'view_profile');

-- --------------------------------------------------------

--
-- Table structure for table `core_medical`
--

CREATE TABLE `core_medical` (
  `id` bigint(20) NOT NULL,
  `s1` varchar(200) NOT NULL,
  `s2` varchar(200) NOT NULL,
  `s3` varchar(200) NOT NULL,
  `s4` varchar(200) NOT NULL,
  `s5` varchar(200) NOT NULL,
  `disease` varchar(200) NOT NULL,
  `medicine` varchar(200) NOT NULL,
  `created_on` datetime(6) NOT NULL,
  `doctor_id` bigint(20) DEFAULT NULL,
  `patient_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_medical`
--

INSERT INTO `core_medical` (`id`, `s1`, `s2`, `s3`, `s4`, `s5`, `disease`, `medicine`, `created_on`, `doctor_id`, `patient_id`) VALUES
(1, 'shivering', 'vomiting', 'headache', 'muscle_pain', 'diarrhoea', 'Malaria', '', '2023-02-04 16:45:19.468857', NULL, 4),
(2, 'acute_liver_failure', 'back_pain', 'back_pain', 'bladder_discomfort', 'constipation', 'Urinary tract infection', 'Gatrimav 100mg Tablet 6\'S', '2023-02-04 17:24:41.502105', NULL, 4),
(3, 'altered_sensorium', 'anxiety', 'belly_pain', 'bladder_discomfort', 'congestion', 'Paralysis (brain hemorrhage)', 'See Doctor', '2023-02-04 18:16:09.252496', NULL, 6),
(4, 'altered_sensorium', 'blister', 'blackheads', 'bladder_discomfort', 'chest_pain', 'Heart attack', 'See Doctor', '2023-02-04 18:30:11.325314', NULL, 6),
(5, 'shivering', 'vomiting', 'headache', 'muscle_pain', 'back_pain', 'Malaria', 'AP Cobal Capsule 10\'S', '2023-02-04 18:32:24.219665', NULL, 6),
(6, 'back_pain', 'acidity', 'headache', 'anxiety', 'chest_pain', 'Hypertension ', 'See Doctor', '2023-02-07 14:37:20.986366', NULL, 6),
(7, 'back_pain', 'blackheads', 'high_fever', 'headache', 'acidity', 'Migraine', '', '2023-02-17 04:30:12.819683', NULL, 1),
(8, 'runny_nose', 'cough', 'chest_pain', 'weight_loss', 'indigestion', 'GERD', '', '2023-02-17 04:31:38.985464', NULL, 1),
(9, 'runny_nose', 'cough', 'chest_pain', 'redness_of_eyes', 'itching', 'GERD', '', '2023-02-17 04:32:29.826813', NULL, 1),
(10, 'runny_nose', 'cough', 'chest_pain', 'redness_of_eyes', 'itching', 'GERD', '', '2023-02-17 04:32:31.732234', NULL, 1),
(11, 'runny_nose', 'cough', 'chest_pain', 'redness_of_eyes', 'itching', 'GERD', '', '2023-02-17 04:32:31.935587', NULL, 1),
(12, 'runny_nose', 'cough', 'chest_pain', 'redness_of_eyes', 'itching', 'GERD', '', '2023-02-17 04:32:32.415513', NULL, 1),
(13, 'runny_nose', 'cough', 'chest_pain', 'redness_of_eyes', 'itching', 'GERD', '', '2023-02-17 04:32:32.609635', NULL, 1),
(14, 'runny_nose', 'cough', 'chest_pain', 'redness_of_eyes', 'itching', 'GERD', '', '2023-02-17 04:32:32.830534', NULL, 1),
(15, 'runny_nose', 'cough', 'chest_pain', 'redness_of_eyes', 'itching', 'GERD', '', '2023-02-17 04:32:33.266887', NULL, 1),
(16, 'runny_nose', 'cough', 'chest_pain', 'redness_of_eyes', 'itching', 'GERD', '', '2023-02-17 04:32:33.482637', NULL, 1),
(17, 'runny_nose', 'cough', 'chest_pain', 'redness_of_eyes', 'itching', 'GERD', '', '2023-02-17 04:32:33.784502', NULL, 1),
(18, 'runny_nose', 'cough', 'chest_pain', 'redness_of_eyes', 'itching', 'GERD', '', '2023-02-17 04:32:34.152508', NULL, 1),
(19, 'back_pain', 'acidity', 'altered_sensorium', 'anxiety', 'belly_pain', 'Paralysis (brain hemorrhage)', '', '2023-02-25 08:50:44.951652', NULL, 6),
(20, 'high_fever', 'cough', 'muscle_pain', 'cramps', 'headache', 'Malaria', '', '2023-02-26 11:01:38.615879', NULL, 6),
(21, 'headache', 'neck_pain', 'shivering', 'high_fever', 'back_pain', 'Cervical spondylosis', 'Consult to the  Doctor', '2023-03-02 06:47:28.158963', NULL, 8),
(22, 'headache', 'neck_pain', 'shivering', 'high_fever', 'back_pain', 'Cervical spondylosis', 'Consult to the  Doctor', '2023-03-02 06:47:28.402496', NULL, 8),
(23, 'headache', 'back_pain', 'mild_fever', 'cough', 'cramps', 'Paralysis (brain hemorrhage)', '', '2023-03-02 08:53:09.249763', NULL, 1),
(24, 'headache', 'back_pain', 'mild_fever', 'acidity', 'cramp', 'Migraine', '', '2023-03-02 08:53:46.201947', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `core_ment`
--

CREATE TABLE `core_ment` (
  `id` bigint(20) NOT NULL,
  `approved` tinyint(1) NOT NULL,
  `time` varchar(200) DEFAULT NULL,
  `ment_day` datetime(6) DEFAULT NULL,
  `created_on` datetime(6) NOT NULL,
  `doctor_id` bigint(20) DEFAULT NULL,
  `medical_id` bigint(20) DEFAULT NULL,
  `patient_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_ment`
--

INSERT INTO `core_ment` (`id`, `approved`, `time`, `ment_day`, `created_on`, `doctor_id`, `medical_id`, `patient_id`) VALUES
(1, 1, '12: 00PM', '2022-12-05 00:00:00.000000', '2023-02-04 17:13:25.340653', 1, 1, 4),
(2, 0, NULL, NULL, '2023-02-04 17:24:53.780545', NULL, 2, 4),
(3, 0, NULL, NULL, '2023-02-04 18:16:19.672076', NULL, 3, 6),
(4, 0, NULL, NULL, '2023-02-04 18:30:24.060610', NULL, 4, 6),
(5, 1, '1:00 pm', '2022-12-12 00:00:00.000000', '2023-02-04 18:32:33.045314', 4, 5, 6),
(6, 1, '1:00 pm', '2022-12-12 00:00:00.000000', '2023-02-07 14:37:34.484445', 4, 6, 6),
(7, 0, NULL, NULL, '2023-02-17 06:23:53.614789', NULL, 7, 1),
(8, 0, NULL, NULL, '2023-02-26 11:02:59.183381', NULL, 19, 6),
(9, 0, NULL, NULL, '2023-02-26 11:03:00.862539', NULL, 20, 6),
(10, 0, NULL, NULL, '2023-03-02 06:51:21.773116', NULL, 21, 8),
(11, 0, NULL, NULL, '2023-03-02 08:53:59.765568', NULL, 8, 1);

-- --------------------------------------------------------

--
-- Table structure for table `core_profile`
--

CREATE TABLE `core_profile` (
  `id` bigint(20) NOT NULL,
  `avatar` varchar(100) NOT NULL,
  `birth_date` date NOT NULL,
  `region` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_profile`
--

INSERT INTO `core_profile` (`id`, `avatar`, `birth_date`, `region`, `gender`, `country`, `user_id`) VALUES
(1, 'profile/avator.png', '2002-11-25', 'Equotorial', 'Male', 'Tanzania', 4),
(2, 'profile/avator.png', '2000-01-01', 'Equotorial', 'Male', 'India', 6),
(3, 'profile/avator.png', '2001-01-29', 'Equotorial', 'Female', '  ', 8);

-- --------------------------------------------------------

--
-- Table structure for table `core_user`
--

CREATE TABLE `core_user` (
  `id` bigint(20) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `is_patient` tinyint(1) NOT NULL,
  `is_doctor` tinyint(1) NOT NULL,
  `phonenumber` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_user`
--

INSERT INTO `core_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`, `is_patient`, `is_doctor`, `phonenumber`) VALUES
(1, 'pbkdf2_sha256$260000$0ulL3AkJQsD47Gdw6yg83Q$U5I1u8wwzOIX8x/+TgsfjYIm/fvMpt53TKPS+YlxoOI=', '2023-03-02 08:58:26.016719', 1, 'project', '', '', 'project@gmail.com', 1, 1, '2023-02-04 08:08:12.000992', 0, 0, NULL),
(3, '12345678', NULL, 0, 'unkown', 'abc', 'cde', '', 0, 1, '2023-02-04 08:25:07.000000', 1, 0, '9354983769'),
(4, 'pbkdf2_sha256$260000$VLnUKyAEVMLyzcAg8kRRIr$xz8+n7Gy6EWM4egSlQqE0rcw3wHms/XTorZ++qBaEbU=', '2023-03-02 08:56:04.044718', 0, 'abcd', '', '', 'abc@gmail.com', 0, 1, '2023-02-04 09:15:37.000000', 0, 1, '9354983769'),
(5, '12345678', NULL, 0, 'Doctor', 'Dr. D.D', 'Aggarwal', 'da@gmail.com', 0, 1, '2023-02-04 17:58:00.000000', 0, 1, '9711707953'),
(6, 'pbkdf2_sha256$260000$9gulzMdVdkzpWmU0CcHvtv$wDtlupBQsSTk5hiGYrrLw2OlNVOQzHrS6hlYWYP6+Eo=', '2023-03-02 07:18:13.243406', 0, 'patient', '', '', 'abc@gmail.com', 0, 1, '2023-02-04 18:14:55.360077', 1, 0, NULL),
(8, 'pbkdf2_sha256$260000$7CRH4nYPRJW0g9PZoiW4Hu$JViqAzFzwyETZJzKRnBY69jrHh/uIuG6ZSX17adW+ug=', '2023-03-02 06:45:02.210022', 0, 'Geetika', '', '', 'geets@gmail.com', 0, 1, '2023-03-02 04:29:37.430533', 1, 0, NULL),
(10, 'pbkdf2_sha256$260000$uJENqUQIbKgJ4uPBets45d$H3TQrjhL8UDobJOoag3xe0HakGefF4nyUDi/VQhusXM=', '2023-03-02 04:33:33.237624', 0, 'prachi', '', '', 'test@gmail.com', 0, 1, '2023-03-02 04:33:15.864809', 1, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `core_user_groups`
--

CREATE TABLE `core_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `core_user_user_permissions`
--

CREATE TABLE `core_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2023-02-04 08:25:01.999664', '2', 'Doctor', 1, '[{\"added\": {}}]', 6, 1),
(2, '2023-02-04 08:26:24.922303', '3', 'unkown', 1, '[{\"added\": {}}]', 6, 1),
(3, '2023-02-04 17:56:40.028234', '2', 'Doctor', 3, '', 6, 1),
(4, '2023-02-04 17:58:41.645298', '5', 'Doctor', 1, '[{\"added\": {}}]', 6, 1),
(5, '2023-02-04 18:03:18.729472', '4', 'abcd', 2, '[{\"changed\": {\"fields\": [\"Is patient\", \"Is doctor\", \"Phonenumber\"]}}]', 6, 1),
(6, '2023-02-22 02:52:48.295819', '2', 'India', 2, '[{\"changed\": {\"fields\": [\"Country\"]}}]', 9, 1),
(7, '2023-02-22 02:52:52.173322', '2', 'India', 2, '[]', 9, 1),
(8, '2023-03-02 04:36:04.680597', '7', 'Sanjana', 3, '', 6, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'contenttypes', 'contenttype'),
(7, 'core', 'medical'),
(8, 'core', 'ment'),
(9, 'core', 'profile'),
(6, 'core', 'user'),
(5, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2023-02-04 07:57:11.891044'),
(2, 'contenttypes', '0002_remove_content_type_name', '2023-02-04 07:57:11.911311'),
(3, 'auth', '0001_initial', '2023-02-04 07:57:11.993723'),
(4, 'auth', '0002_alter_permission_name_max_length', '2023-02-04 07:57:12.013709'),
(5, 'auth', '0003_alter_user_email_max_length', '2023-02-04 07:57:12.017877'),
(6, 'auth', '0004_alter_user_username_opts', '2023-02-04 07:57:12.022699'),
(7, 'auth', '0005_alter_user_last_login_null', '2023-02-04 07:57:12.026924'),
(8, 'auth', '0006_require_contenttypes_0002', '2023-02-04 07:57:12.028630'),
(9, 'auth', '0007_alter_validators_add_error_messages', '2023-02-04 07:57:12.033258'),
(10, 'auth', '0008_alter_user_username_max_length', '2023-02-04 07:57:12.037412'),
(11, 'auth', '0009_alter_user_last_name_max_length', '2023-02-04 07:57:12.041625'),
(12, 'auth', '0010_alter_group_name_max_length', '2023-02-04 07:57:12.048187'),
(13, 'auth', '0011_update_proxy_permissions', '2023-02-04 07:57:12.052176'),
(14, 'auth', '0012_alter_user_first_name_max_length', '2023-02-04 07:57:12.056546'),
(15, 'core', '0001_initial', '2023-02-04 07:57:12.144798'),
(16, 'admin', '0001_initial', '2023-02-04 07:57:12.184156'),
(17, 'admin', '0002_logentry_remove_auto_add', '2023-02-04 07:57:12.190141'),
(18, 'admin', '0003_logentry_add_action_flag_choices', '2023-02-04 07:57:12.196124'),
(19, 'sessions', '0001_initial', '2023-02-04 07:57:12.208664'),
(20, 'core', '0002_medical', '2023-02-04 07:59:20.048709'),
(21, 'core', '0003_ment', '2023-02-04 08:00:52.992773'),
(22, 'core', '0004_profile', '2023-02-04 08:02:45.505558');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('48hvqoc593qwpbo7l5s6nq8erbmyilnk', '.eJxVjMsOwiAQRf-FtSG8cVy67zeQgQGpGkhKuzL-uzbpQrf3nHNfLOC21rCNvISZ2IVJdvrdIqZHbjugO7Zb56m3dZkj3xV-0MGnTvl5Pdy_g4qjfmurtQMyULwHA0paMkLF7Ny5OOkxImmPgEJGdJqS0wixgAKvRVHCW_b-AMFiNyE:1pSsM2:FSFnqEoeENvYSxbus844sJQg_zWg-xAAo6pRqoCM_hI', '2023-03-03 04:28:14.302763'),
('49pcfqmp4oax030qykpo252579hkjynr', '.eJxVjMsOwiAQRf-FtSG8cVy67zeQgQGpGkhKuzL-uzbpQrf3nHNfLOC21rCNvISZ2IVJdvrdIqZHbjugO7Zb56m3dZkj3xV-0MGnTvl5Pdy_g4qjfmurtQMyULwHA0paMkLF7Ny5OOkxImmPgEJGdJqS0wixgAKvRVHCW_b-AMFiNyE:1pXele:dYLItudhZh4QE07jn6efq_KigNctOVyMB8ZJ53ZyBiA', '2023-03-16 08:58:26.019788'),
('szkdsin5maby8fj3nmg21lg6z2zk2yh7', '.eJxVjDEOwjAMRe-SGUUkOK7CyM4ZIjuxSQGlUtNOiLtDpQ6w_vfef5lE61LT2mVOYzFng-bwuzHlh7QNlDu122Tz1JZ5ZLspdqfdXqciz8vu_h1U6vVbi6MhxAAgcOTolD15QPFADmEgcKjohH0QBdTos3KIxAqBCpYTmPcH2aM4Aw:1pONlR:R27Q_kUxV60HQm4rrO1dQ6Vhl1pU3SVm-8WuuV5k1sY', '2023-02-18 18:59:53.723719');

--
-- Indexes for dumped tables
--

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
-- Indexes for table `core_medical`
--
ALTER TABLE `core_medical`
  ADD PRIMARY KEY (`id`),
  ADD KEY `core_medical_doctor_id_3d50ad37_fk_core_user_id` (`doctor_id`),
  ADD KEY `core_medical_patient_id_5344c821_fk_core_user_id` (`patient_id`);

--
-- Indexes for table `core_ment`
--
ALTER TABLE `core_ment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `core_ment_doctor_id_60a15865_fk_core_user_id` (`doctor_id`),
  ADD KEY `core_ment_medical_id_f2161916_fk_core_medical_id` (`medical_id`),
  ADD KEY `core_ment_patient_id_d91dbfa4_fk_core_user_id` (`patient_id`);

--
-- Indexes for table `core_profile`
--
ALTER TABLE `core_profile`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Indexes for table `core_user`
--
ALTER TABLE `core_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `core_user_groups`
--
ALTER TABLE `core_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `core_user_groups_user_id_group_id_c82fcad1_uniq` (`user_id`,`group_id`),
  ADD KEY `core_user_groups_group_id_fe8c697f_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `core_user_user_permissions`
--
ALTER TABLE `core_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `core_user_user_permissions_user_id_permission_id_73ea0daa_uniq` (`user_id`,`permission_id`),
  ADD KEY `core_user_user_permi_permission_id_35ccf601_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_core_user_id` (`user_id`);

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
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `core_medical`
--
ALTER TABLE `core_medical`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `core_ment`
--
ALTER TABLE `core_ment`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `core_profile`
--
ALTER TABLE `core_profile`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `core_user`
--
ALTER TABLE `core_user`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `core_user_groups`
--
ALTER TABLE `core_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `core_user_user_permissions`
--
ALTER TABLE `core_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- Constraints for dumped tables
--

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
-- Constraints for table `core_medical`
--
ALTER TABLE `core_medical`
  ADD CONSTRAINT `core_medical_doctor_id_3d50ad37_fk_core_user_id` FOREIGN KEY (`doctor_id`) REFERENCES `core_user` (`id`),
  ADD CONSTRAINT `core_medical_patient_id_5344c821_fk_core_user_id` FOREIGN KEY (`patient_id`) REFERENCES `core_user` (`id`);

--
-- Constraints for table `core_ment`
--
ALTER TABLE `core_ment`
  ADD CONSTRAINT `core_ment_doctor_id_60a15865_fk_core_user_id` FOREIGN KEY (`doctor_id`) REFERENCES `core_user` (`id`),
  ADD CONSTRAINT `core_ment_medical_id_f2161916_fk_core_medical_id` FOREIGN KEY (`medical_id`) REFERENCES `core_medical` (`id`),
  ADD CONSTRAINT `core_ment_patient_id_d91dbfa4_fk_core_user_id` FOREIGN KEY (`patient_id`) REFERENCES `core_user` (`id`);

--
-- Constraints for table `core_profile`
--
ALTER TABLE `core_profile`
  ADD CONSTRAINT `core_profile_user_id_bf8ada58_fk_core_user_id` FOREIGN KEY (`user_id`) REFERENCES `core_user` (`id`);

--
-- Constraints for table `core_user_groups`
--
ALTER TABLE `core_user_groups`
  ADD CONSTRAINT `core_user_groups_group_id_fe8c697f_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `core_user_groups_user_id_70b4d9b8_fk_core_user_id` FOREIGN KEY (`user_id`) REFERENCES `core_user` (`id`);

--
-- Constraints for table `core_user_user_permissions`
--
ALTER TABLE `core_user_user_permissions`
  ADD CONSTRAINT `core_user_user_permi_permission_id_35ccf601_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `core_user_user_permissions_user_id_085123d3_fk_core_user_id` FOREIGN KEY (`user_id`) REFERENCES `core_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_core_user_id` FOREIGN KEY (`user_id`) REFERENCES `core_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
