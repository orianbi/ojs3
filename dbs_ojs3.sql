-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 30 Sep 2024 pada 03.48
-- Versi server: 10.4.27-MariaDB
-- Versi PHP: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbs_ojs3`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `access_keys`
--

CREATE TABLE `access_keys` (
  `access_key_id` bigint(20) NOT NULL,
  `context` varchar(40) NOT NULL,
  `key_hash` varchar(40) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `assoc_id` bigint(20) DEFAULT NULL,
  `expiry_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `announcements`
--

CREATE TABLE `announcements` (
  `announcement_id` bigint(20) NOT NULL,
  `assoc_type` smallint(6) DEFAULT NULL,
  `assoc_id` bigint(20) NOT NULL,
  `type_id` bigint(20) DEFAULT NULL,
  `date_expire` date DEFAULT NULL,
  `date_posted` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `announcement_settings`
--

CREATE TABLE `announcement_settings` (
  `announcement_id` bigint(20) NOT NULL,
  `locale` varchar(14) NOT NULL DEFAULT '',
  `setting_name` varchar(255) NOT NULL,
  `setting_value` text DEFAULT NULL,
  `setting_type` varchar(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `announcement_types`
--

CREATE TABLE `announcement_types` (
  `type_id` bigint(20) NOT NULL,
  `assoc_type` smallint(6) NOT NULL,
  `assoc_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `announcement_type_settings`
--

CREATE TABLE `announcement_type_settings` (
  `type_id` bigint(20) NOT NULL,
  `locale` varchar(14) NOT NULL DEFAULT '',
  `setting_name` varchar(255) NOT NULL,
  `setting_value` text DEFAULT NULL,
  `setting_type` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `authors`
--

CREATE TABLE `authors` (
  `author_id` bigint(20) NOT NULL,
  `email` varchar(90) NOT NULL,
  `include_in_browse` smallint(6) NOT NULL DEFAULT 1,
  `publication_id` bigint(20) NOT NULL,
  `seq` double(8,2) NOT NULL DEFAULT 0.00,
  `user_group_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data untuk tabel `authors`
--

INSERT INTO `authors` (`author_id`, `email`, `include_in_browse`, `publication_id`, `seq`, `user_group_id`) VALUES
(1, 'edy@gmail.com', 1, 1, 0.00, 14),
(2, 'indah@gmail.com', 1, 1, 1.00, 14),
(3, 'kurniawanedyrafly86@gmail.com', 1, 4, 0.00, 14),
(4, 'idhamhalid1988@gmail.com', 1, 4, 1.00, 14),
(5, 'admin@gmail.com', 1, 6, 0.00, 14),
(6, 'ratiaratulangiw@gmail.com', 1, 8, 0.00, 14),
(7, 'rosnalia.widyan17@gmail.com', 1, 8, 1.00, 14),
(8, 'kurniawanedyrafly86@gmail.com', 1, 9, 0.00, 14),
(9, 'idhamhalid1988@gmail.com', 1, 9, 1.00, 14);

-- --------------------------------------------------------

--
-- Struktur dari tabel `author_settings`
--

CREATE TABLE `author_settings` (
  `author_id` bigint(20) NOT NULL,
  `locale` varchar(14) NOT NULL DEFAULT '',
  `setting_name` varchar(255) NOT NULL,
  `setting_value` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data untuk tabel `author_settings`
--

INSERT INTO `author_settings` (`author_id`, `locale`, `setting_name`, `setting_value`) VALUES
(1, '', 'country', 'ID'),
(1, '', 'orcid', ''),
(1, '', 'url', ''),
(1, 'id_ID', 'affiliation', 'Politeknik Medica Farma Husada Mataram'),
(1, 'id_ID', 'biography', ''),
(1, 'id_ID', 'familyName', ' Kurniawan'),
(1, 'id_ID', 'givenName', 'Edy'),
(1, 'id_ID', 'preferredPublicName', ''),
(2, '', 'country', 'ID'),
(2, '', 'orcid', ''),
(2, '', 'url', ''),
(2, 'id_ID', 'affiliation', 'Politeknik Medica Farma Husada Mataram'),
(2, 'id_ID', 'biography', ''),
(2, 'id_ID', 'familyName', ' Halid'),
(2, 'id_ID', 'givenName', 'Idham'),
(2, 'id_ID', 'preferredPublicName', ''),
(3, '', 'country', 'ID'),
(3, '', 'orcid', ''),
(3, '', 'url', ''),
(3, 'id_ID', 'affiliation', 'Politeknik Medica Farma Husada Mataram'),
(3, 'id_ID', 'biography', ''),
(3, 'id_ID', 'familyName', ''),
(3, 'id_ID', 'givenName', 'Edy Kurniawan'),
(3, 'id_ID', 'preferredPublicName', ''),
(4, '', 'country', 'ID'),
(4, '', 'orcid', ''),
(4, '', 'url', ''),
(4, 'id_ID', 'affiliation', 'Politeknik Medica Farma Husada Mataram'),
(4, 'id_ID', 'biography', ''),
(4, 'id_ID', 'familyName', ''),
(4, 'id_ID', 'givenName', 'Idham Halid'),
(4, 'id_ID', 'preferredPublicName', ''),
(5, 'id_ID', 'familyName', 'adminojs'),
(5, 'id_ID', 'givenName', 'adminojs'),
(6, '', 'country', 'ID'),
(6, '', 'orcid', ''),
(6, '', 'url', ''),
(6, 'id_ID', 'affiliation', 'Politeknik Medica Farma Husada Mataram'),
(6, 'id_ID', 'biography', ''),
(6, 'id_ID', 'familyName', ''),
(6, 'id_ID', 'givenName', 'Wulan Ratia Ratulangi'),
(6, 'id_ID', 'preferredPublicName', ''),
(7, '', 'country', 'ID'),
(7, '', 'orcid', ''),
(7, '', 'url', ''),
(7, 'id_ID', 'affiliation', 'Politeknik Medica Farma Husada Mataram'),
(7, 'id_ID', 'biography', ''),
(7, 'id_ID', 'familyName', ''),
(7, 'id_ID', 'givenName', 'Rosnalia Widyan'),
(7, 'id_ID', 'preferredPublicName', ''),
(8, '', 'country', 'ID'),
(8, '', 'orcid', ''),
(8, '', 'url', ''),
(8, 'id_ID', 'affiliation', 'Politeknik Medica Farma Husada Mataram'),
(8, 'id_ID', 'biography', ''),
(8, 'id_ID', 'familyName', ''),
(8, 'id_ID', 'givenName', 'Edy Kurniawan'),
(8, 'id_ID', 'preferredPublicName', ''),
(9, '', 'country', 'ID'),
(9, '', 'orcid', ''),
(9, '', 'url', ''),
(9, 'id_ID', 'affiliation', 'Politeknik Medica Farma Husada Mataram'),
(9, 'id_ID', 'biography', ''),
(9, 'id_ID', 'familyName', ''),
(9, 'id_ID', 'givenName', 'Idham Halid'),
(9, 'id_ID', 'preferredPublicName', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_sources`
--

CREATE TABLE `auth_sources` (
  `auth_id` bigint(20) NOT NULL,
  `title` varchar(60) NOT NULL,
  `plugin` varchar(32) NOT NULL,
  `auth_default` smallint(6) NOT NULL DEFAULT 0,
  `settings` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `categories`
--

CREATE TABLE `categories` (
  `category_id` bigint(20) NOT NULL,
  `context_id` bigint(20) NOT NULL,
  `parent_id` bigint(20) NOT NULL,
  `seq` bigint(20) DEFAULT NULL,
  `path` varchar(255) NOT NULL,
  `image` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `category_settings`
--

CREATE TABLE `category_settings` (
  `category_id` bigint(20) NOT NULL,
  `locale` varchar(14) NOT NULL DEFAULT '',
  `setting_name` varchar(255) NOT NULL,
  `setting_value` text DEFAULT NULL,
  `setting_type` varchar(6) NOT NULL COMMENT '(bool|int|float|string|object)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `citations`
--

CREATE TABLE `citations` (
  `citation_id` bigint(20) NOT NULL,
  `publication_id` bigint(20) NOT NULL DEFAULT 0,
  `raw_citation` text NOT NULL,
  `seq` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `citation_settings`
--

CREATE TABLE `citation_settings` (
  `citation_id` bigint(20) NOT NULL,
  `locale` varchar(14) NOT NULL DEFAULT '',
  `setting_name` varchar(255) NOT NULL,
  `setting_value` text DEFAULT NULL,
  `setting_type` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `completed_payments`
--

CREATE TABLE `completed_payments` (
  `completed_payment_id` bigint(20) NOT NULL,
  `timestamp` datetime NOT NULL,
  `payment_type` bigint(20) NOT NULL,
  `context_id` bigint(20) NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `assoc_id` bigint(20) DEFAULT NULL,
  `amount` double(8,2) NOT NULL,
  `currency_code_alpha` varchar(3) DEFAULT NULL,
  `payment_method_plugin_name` varchar(80) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `controlled_vocabs`
--

CREATE TABLE `controlled_vocabs` (
  `controlled_vocab_id` bigint(20) NOT NULL,
  `symbolic` varchar(64) NOT NULL,
  `assoc_type` bigint(20) NOT NULL DEFAULT 0,
  `assoc_id` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data untuk tabel `controlled_vocabs`
--

INSERT INTO `controlled_vocabs` (`controlled_vocab_id`, `symbolic`, `assoc_type`, `assoc_id`) VALUES
(1, 'interest', 0, 0),
(6, 'submissionAgency', 1048588, 1),
(11, 'submissionAgency', 1048588, 2),
(16, 'submissionAgency', 1048588, 3),
(21, 'submissionAgency', 1048588, 4),
(26, 'submissionAgency', 1048588, 5),
(31, 'submissionAgency', 1048588, 6),
(36, 'submissionAgency', 1048588, 7),
(41, 'submissionAgency', 1048588, 8),
(46, 'submissionAgency', 1048588, 9),
(4, 'submissionDiscipline', 1048588, 1),
(9, 'submissionDiscipline', 1048588, 2),
(14, 'submissionDiscipline', 1048588, 3),
(19, 'submissionDiscipline', 1048588, 4),
(24, 'submissionDiscipline', 1048588, 5),
(29, 'submissionDiscipline', 1048588, 6),
(34, 'submissionDiscipline', 1048588, 7),
(39, 'submissionDiscipline', 1048588, 8),
(44, 'submissionDiscipline', 1048588, 9),
(2, 'submissionKeyword', 1048588, 1),
(7, 'submissionKeyword', 1048588, 2),
(12, 'submissionKeyword', 1048588, 3),
(17, 'submissionKeyword', 1048588, 4),
(22, 'submissionKeyword', 1048588, 5),
(27, 'submissionKeyword', 1048588, 6),
(32, 'submissionKeyword', 1048588, 7),
(37, 'submissionKeyword', 1048588, 8),
(42, 'submissionKeyword', 1048588, 9),
(5, 'submissionLanguage', 1048588, 1),
(10, 'submissionLanguage', 1048588, 2),
(15, 'submissionLanguage', 1048588, 3),
(20, 'submissionLanguage', 1048588, 4),
(25, 'submissionLanguage', 1048588, 5),
(30, 'submissionLanguage', 1048588, 6),
(35, 'submissionLanguage', 1048588, 7),
(40, 'submissionLanguage', 1048588, 8),
(45, 'submissionLanguage', 1048588, 9),
(3, 'submissionSubject', 1048588, 1),
(8, 'submissionSubject', 1048588, 2),
(13, 'submissionSubject', 1048588, 3),
(18, 'submissionSubject', 1048588, 4),
(23, 'submissionSubject', 1048588, 5),
(28, 'submissionSubject', 1048588, 6),
(33, 'submissionSubject', 1048588, 7),
(38, 'submissionSubject', 1048588, 8),
(43, 'submissionSubject', 1048588, 9);

-- --------------------------------------------------------

--
-- Struktur dari tabel `controlled_vocab_entries`
--

CREATE TABLE `controlled_vocab_entries` (
  `controlled_vocab_entry_id` bigint(20) NOT NULL,
  `controlled_vocab_id` bigint(20) NOT NULL,
  `seq` double(8,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data untuk tabel `controlled_vocab_entries`
--

INSERT INTO `controlled_vocab_entries` (`controlled_vocab_entry_id`, `controlled_vocab_id`, `seq`) VALUES
(55, 2, 1.00),
(56, 2, 2.00),
(57, 2, 3.00),
(58, 17, 1.00),
(59, 17, 2.00),
(60, 17, 3.00),
(127, 37, 1.00),
(128, 37, 2.00),
(129, 37, 3.00),
(130, 37, 4.00),
(131, 37, 5.00),
(132, 37, 6.00);

-- --------------------------------------------------------

--
-- Struktur dari tabel `controlled_vocab_entry_settings`
--

CREATE TABLE `controlled_vocab_entry_settings` (
  `controlled_vocab_entry_id` bigint(20) NOT NULL,
  `locale` varchar(14) NOT NULL DEFAULT '',
  `setting_name` varchar(255) NOT NULL,
  `setting_value` text DEFAULT NULL,
  `setting_type` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data untuk tabel `controlled_vocab_entry_settings`
--

INSERT INTO `controlled_vocab_entry_settings` (`controlled_vocab_entry_id`, `locale`, `setting_name`, `setting_value`, `setting_type`) VALUES
(55, 'id_ID', 'submissionKeyword', 'Bacillus laterosporus', 'string'),
(56, 'id_ID', 'submissionKeyword', 'Sumber karbon alami', 'string'),
(57, 'id_ID', 'submissionKeyword', 'Laju germinasi', 'string'),
(58, 'id_ID', 'submissionKeyword', 'Bacillus laterosporus', 'string'),
(59, 'id_ID', 'submissionKeyword', 'Germination rate', 'string'),
(60, 'id_ID', 'submissionKeyword', 'Natural carbon source', 'string'),
(127, 'id_ID', 'submissionKeyword', 'Uji kualitatif', 'string'),
(128, 'id_ID', 'submissionKeyword', 'Organoleptik', 'string'),
(129, 'id_ID', 'submissionKeyword', 'Formalin', 'string'),
(130, 'id_ID', 'submissionKeyword', 'Ikan teri', 'string'),
(131, 'id_ID', 'submissionKeyword', 'Cumi', 'string'),
(132, 'id_ID', 'submissionKeyword', 'Rebon', 'string');

-- --------------------------------------------------------

--
-- Struktur dari tabel `custom_issue_orders`
--

CREATE TABLE `custom_issue_orders` (
  `issue_id` bigint(20) NOT NULL,
  `journal_id` bigint(20) NOT NULL,
  `seq` double(8,2) NOT NULL DEFAULT 0.00
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `custom_section_orders`
--

CREATE TABLE `custom_section_orders` (
  `issue_id` bigint(20) NOT NULL,
  `section_id` bigint(20) NOT NULL,
  `seq` double(8,2) NOT NULL DEFAULT 0.00
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_object_tombstones`
--

CREATE TABLE `data_object_tombstones` (
  `tombstone_id` bigint(20) NOT NULL,
  `data_object_id` bigint(20) NOT NULL,
  `date_deleted` datetime NOT NULL,
  `set_spec` varchar(255) NOT NULL,
  `set_name` varchar(255) NOT NULL,
  `oai_identifier` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data untuk tabel `data_object_tombstones`
--

INSERT INTO `data_object_tombstones` (`tombstone_id`, `data_object_id`, `date_deleted`, `set_spec`, `set_name`, `oai_identifier`) VALUES
(1, 1, '2024-09-29 01:38:35', 'pm:ART', 'Artikel', 'oai:ojs2.localhost:article/1'),
(5, 4, '2024-09-29 03:06:07', 'pm:ART', 'Artikel', 'oai:ojs2.localhost:article/4');

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_object_tombstone_oai_set_objects`
--

CREATE TABLE `data_object_tombstone_oai_set_objects` (
  `object_id` bigint(20) NOT NULL,
  `tombstone_id` bigint(20) NOT NULL,
  `assoc_type` bigint(20) NOT NULL,
  `assoc_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data untuk tabel `data_object_tombstone_oai_set_objects`
--

INSERT INTO `data_object_tombstone_oai_set_objects` (`object_id`, `tombstone_id`, `assoc_type`, `assoc_id`) VALUES
(1, 1, 256, 1),
(2, 1, 530, 1),
(9, 5, 256, 1),
(10, 5, 530, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_object_tombstone_settings`
--

CREATE TABLE `data_object_tombstone_settings` (
  `tombstone_id` bigint(20) NOT NULL,
  `locale` varchar(14) NOT NULL DEFAULT '',
  `setting_name` varchar(255) NOT NULL,
  `setting_value` text DEFAULT NULL,
  `setting_type` varchar(6) NOT NULL COMMENT '(bool|int|float|string|object)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `edit_decisions`
--

CREATE TABLE `edit_decisions` (
  `edit_decision_id` bigint(20) NOT NULL,
  `submission_id` bigint(20) NOT NULL,
  `review_round_id` bigint(20) NOT NULL,
  `stage_id` bigint(20) DEFAULT NULL,
  `round` smallint(6) NOT NULL,
  `editor_id` bigint(20) NOT NULL,
  `decision` smallint(6) NOT NULL,
  `date_decided` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `email_log`
--

CREATE TABLE `email_log` (
  `log_id` bigint(20) NOT NULL,
  `assoc_type` bigint(20) NOT NULL,
  `assoc_id` bigint(20) NOT NULL,
  `sender_id` bigint(20) NOT NULL,
  `date_sent` datetime NOT NULL,
  `event_type` bigint(20) DEFAULT NULL,
  `from_address` varchar(255) DEFAULT NULL,
  `recipients` text DEFAULT NULL,
  `cc_recipients` text DEFAULT NULL,
  `bcc_recipients` text DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `body` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `email_log_users`
--

CREATE TABLE `email_log_users` (
  `email_log_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `email_templates`
--

CREATE TABLE `email_templates` (
  `email_id` bigint(20) NOT NULL,
  `email_key` varchar(64) NOT NULL COMMENT 'Unique identifier for this email.',
  `context_id` bigint(20) NOT NULL,
  `enabled` smallint(6) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `email_templates_default`
--

CREATE TABLE `email_templates_default` (
  `email_id` bigint(20) NOT NULL,
  `email_key` varchar(64) NOT NULL COMMENT 'Unique identifier for this email.',
  `can_disable` smallint(6) NOT NULL DEFAULT 0,
  `can_edit` smallint(6) NOT NULL DEFAULT 0,
  `from_role_id` bigint(20) DEFAULT NULL,
  `to_role_id` bigint(20) DEFAULT NULL,
  `stage_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data untuk tabel `email_templates_default`
--

INSERT INTO `email_templates_default` (`email_id`, `email_key`, `can_disable`, `can_edit`, `from_role_id`, `to_role_id`, `stage_id`) VALUES
(1, 'NOTIFICATION', 0, 1, NULL, NULL, NULL),
(2, 'NOTIFICATION_CENTER_DEFAULT', 0, 1, NULL, NULL, NULL),
(3, 'PASSWORD_RESET_CONFIRM', 0, 1, NULL, NULL, NULL),
(4, 'USER_REGISTER', 0, 1, NULL, NULL, NULL),
(5, 'USER_VALIDATE', 0, 1, NULL, NULL, NULL),
(6, 'REVIEWER_REGISTER', 0, 1, NULL, NULL, NULL),
(7, 'PUBLISH_NOTIFY', 0, 1, NULL, NULL, NULL),
(8, 'LOCKSS_EXISTING_ARCHIVE', 0, 1, NULL, NULL, NULL),
(9, 'LOCKSS_NEW_ARCHIVE', 0, 1, NULL, NULL, NULL),
(10, 'SUBMISSION_ACK', 1, 1, NULL, 65536, 1),
(11, 'SUBMISSION_ACK_NOT_USER', 1, 1, NULL, 65536, 1),
(12, 'EDITOR_ASSIGN', 1, 1, 16, 16, 1),
(13, 'REVIEW_CANCEL', 1, 1, 16, 4096, 3),
(14, 'REVIEW_REINSTATE', 1, 1, 16, 4096, 3),
(15, 'REVIEW_REQUEST', 1, 1, 16, 4096, 3),
(16, 'REVIEW_REQUEST_SUBSEQUENT', 1, 1, 16, 4096, 3),
(17, 'REVIEW_REQUEST_ONECLICK', 1, 1, 16, 4096, 3),
(18, 'REVIEW_REQUEST_ONECLICK_SUBSEQUENT', 1, 1, 16, 4096, 3),
(19, 'REVIEW_REQUEST_ATTACHED', 0, 1, 16, 4096, 3),
(20, 'REVIEW_REQUEST_ATTACHED_SUBSEQUENT', 0, 1, 16, 4096, 3),
(21, 'REVIEW_REQUEST_REMIND_AUTO', 0, 1, NULL, 4096, 3),
(22, 'REVIEW_REQUEST_REMIND_AUTO_ONECLICK', 0, 1, NULL, 4096, 3),
(23, 'REVIEW_CONFIRM', 1, 1, 4096, 16, 3),
(24, 'REVIEW_DECLINE', 1, 1, 4096, 16, 3),
(25, 'REVIEW_ACK', 1, 1, 16, 4096, 3),
(26, 'REVIEW_REMIND', 0, 1, 16, 4096, 3),
(27, 'REVIEW_REMIND_AUTO', 0, 1, NULL, 4096, 3),
(28, 'REVIEW_REMIND_ONECLICK', 0, 1, 16, 4096, 3),
(29, 'REVIEW_REMIND_AUTO_ONECLICK', 0, 1, NULL, 4096, 3),
(30, 'EDITOR_DECISION_ACCEPT', 0, 1, 16, 65536, 3),
(31, 'EDITOR_DECISION_SEND_TO_EXTERNAL', 0, 1, 16, 65536, 3),
(32, 'EDITOR_DECISION_SEND_TO_PRODUCTION', 0, 1, 16, 65536, 5),
(33, 'EDITOR_DECISION_REVISIONS', 0, 1, 16, 65536, 3),
(34, 'EDITOR_DECISION_RESUBMIT', 0, 1, 16, 65536, 3),
(35, 'EDITOR_DECISION_DECLINE', 0, 1, 16, 65536, 3),
(36, 'EDITOR_DECISION_INITIAL_DECLINE', 0, 1, 16, 65536, 1),
(37, 'EDITOR_RECOMMENDATION', 0, 1, 16, 16, 3),
(38, 'COPYEDIT_REQUEST', 1, 1, 16, 4097, 4),
(39, 'LAYOUT_REQUEST', 1, 1, 16, 4097, 5),
(40, 'LAYOUT_COMPLETE', 1, 1, 4097, 16, 5),
(41, 'EMAIL_LINK', 0, 1, 1048576, NULL, NULL),
(42, 'SUBSCRIPTION_NOTIFY', 0, 1, NULL, 1048576, NULL),
(43, 'OPEN_ACCESS_NOTIFY', 0, 1, NULL, 1048576, NULL),
(44, 'SUBSCRIPTION_BEFORE_EXPIRY', 0, 1, NULL, 1048576, NULL),
(45, 'SUBSCRIPTION_AFTER_EXPIRY', 0, 1, NULL, 1048576, NULL),
(46, 'SUBSCRIPTION_AFTER_EXPIRY_LAST', 0, 1, NULL, 1048576, NULL),
(47, 'SUBSCRIPTION_PURCHASE_INDL', 0, 1, NULL, 2097152, NULL),
(48, 'SUBSCRIPTION_PURCHASE_INSTL', 0, 1, NULL, 2097152, NULL),
(49, 'SUBSCRIPTION_RENEW_INDL', 0, 1, NULL, 2097152, NULL),
(50, 'SUBSCRIPTION_RENEW_INSTL', 0, 1, NULL, 2097152, NULL),
(51, 'CITATION_EDITOR_AUTHOR_QUERY', 0, 1, NULL, NULL, 4),
(52, 'REVISED_VERSION_NOTIFY', 0, 1, NULL, 16, 3),
(53, 'STATISTICS_REPORT_NOTIFICATION', 1, 1, 16, 17, NULL),
(54, 'ANNOUNCEMENT', 0, 1, 16, 1048576, NULL),
(55, 'ORCID_COLLECT_AUTHOR_ID', 0, 1, NULL, NULL, NULL),
(56, 'ORCID_REQUEST_AUTHOR_AUTHORIZATION', 0, 1, NULL, NULL, NULL),
(57, 'MANUAL_PAYMENT_NOTIFICATION', 0, 1, NULL, NULL, NULL),
(58, 'PAYPAL_INVESTIGATE_PAYMENT', 0, 1, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `email_templates_default_data`
--

CREATE TABLE `email_templates_default_data` (
  `email_key` varchar(64) NOT NULL COMMENT 'Unique identifier for this email.',
  `locale` varchar(14) NOT NULL DEFAULT 'en_US',
  `subject` varchar(120) NOT NULL,
  `body` text DEFAULT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data untuk tabel `email_templates_default_data`
--

INSERT INTO `email_templates_default_data` (`email_key`, `locale`, `subject`, `body`, `description`) VALUES
('ANNOUNCEMENT', 'en_US', '{$title}', '<b>{$title}</b><br />\n<br />\n{$summary}<br />\n<br />\nVisit our website to read the <a href=\"{$url}\">full announcement</a>.', 'This email is sent when a new announcement is created.'),
('ANNOUNCEMENT', 'id_ID', '{$title}', '<b>{$title}</b><br />\n<br />\n{$summary}<br />\n<br />\nKunjungi website kami untuk melihat <a href=\"{$url}\">pengumuman selengkapnya</a>.', 'Surel ini dikirim ketika terdapat pengumuman baru.'),
('CITATION_EDITOR_AUTHOR_QUERY', 'en_US', 'Citation Editing', '{$authorFirstName},<br />\n<br />\nCould you please verify or provide us with the proper citation for the following reference from your article, {$submissionTitle}:<br />\n<br />\n{$rawCitation}<br />\n<br />\nThanks!<br />\n<br />\n{$userFirstName}<br />\nCopy-Editor, {$contextName}<br />\n', 'This email allows copyeditors to request additional information about references from authors.'),
('CITATION_EDITOR_AUTHOR_QUERY', 'id_ID', 'Penyuntingan Sitiran', '{$authorFirstName},<br />\n<br />\nMohon verifikasi atau berikan sitasi yang benar untuk rujukan berikut dari artikel Anda, {$submissionTitle}:<br />\n<br />\n{$rawCitation}<br />\n<br />\nTerimakasih!<br />\n<br />\n{$userFirstName}<br />\nCopy-Editor, {$contextName}<br />\n', 'Email ini memungkinkan copyeditor untuk meminta informasi tambahan tentang rujukan dari penulis.'),
('COPYEDIT_REQUEST', 'en_US', 'Copyediting Request', '{$participantName}:<br />\n<br />\nI would ask that you undertake the copyediting of &quot;{$submissionTitle}&quot; for {$contextName} by following these steps.<br />\n1. Click on the Submission URL below.<br />\n2. Open any files available under Draft Files and do your copyediting, while adding any Copyediting Discussions as needed.<br />\n3. Save copyedited file(s), and upload to Copyedited panel.<br />\n4. Notify the Editor that all files have been prepared, and that the Production process may begin.<br />\n<br />\n{$contextName} URL: {$contextUrl}<br />\nSubmission URL: {$submissionUrl}<br />\nUsername: {$participantUsername}', 'This email is sent by a Section Editor to a submission\'s Copyeditor to request that they begin the copyediting process. It provides information about the submission and how to access it.'),
('COPYEDIT_REQUEST', 'id_ID', 'Permohonan Copyediting', '{$participantName}:<br />\n<br />\nKami meminta Anda melakukan copyediting terhadap &quot;{$submissionTitle}&quot; untuk {$contextName} mengikuti langkah-langkah berikut.<br />\n1. Klik URL Naskah di bawah.<br />\n2. Buka semua file yang ada di file Draft dan lakukan copyediting, tambahkan Diskusi Copyediting sesuai kebutuhan.<br />\n3. Simpan file yang telah di-copyedit, dan unggah ke panel Sudah Copyedit.<br />\n4. Beritahu Editor bahwa semua file telah siap, dan bahwa proses Produksi dapat dimulai.<br />\n<br />\n{$contextName} URL: {$contextUrl}<br />\nURL Naskah: {$submissionUrl}<br />\nNama pengguna: {$participantUsername}', 'Email ini dari Editor Bagian ke Copyeditor naskah agar memulai proses copyediting.  Email ini memuat informasi terkait penyerahan naskah dan bagaimana mengaksesnya.'),
('EDITOR_ASSIGN', 'en_US', 'Editorial Assignment', '{$editorialContactName}:<br />\n<br />\nThe submission, &quot;{$submissionTitle},&quot; to {$contextName} has been assigned to you to see through the editorial process in your role as Section Editor.<br />\n<br />\nSubmission URL: {$submissionUrl}<br />\nUsername: {$editorUsername}<br />\n<br />\nThank you.', 'This email notifies a Section Editor that the Editor has assigned them the task of overseeing a submission through the editing process. It provides information about the submission and how to access the journal site.'),
('EDITOR_ASSIGN', 'id_ID', 'Penugasan Editorial', '{$editorialContactName}:<br />\n<br />\nNaskah, &quot;{$submissionTitle},&quot; di {$contextName} telah ditugaskan kepada Anda sebagai Editor Bagian untuk memastikan selesainya seluruh proses editorial.<br />\n<br />\nURL Naskah: {$submissionUrl}<br />\nNama pengguna: {$editorUsername}<br />\n<br />\nTerimakasih.', 'Email ini memberitahu Editor Bagian bahwa Editor telah memberikan tugas untuk mengawasi suatu naskah dalam menyelesaikan proses editorial. Email ini memberikan informasi mengenai naskah dan cara mengaksesnya di website jurnal.'),
('EDITOR_DECISION_ACCEPT', 'en_US', 'Editor Decision', '{$authorName}:<br />\n<br />\nWe have reached a decision regarding your submission to {$contextName}, &quot;{$submissionTitle}&quot;.<br />\n<br />\nOur decision is to: Accept Submission', 'This email from the Editor or Section Editor to an Author notifies them of a final \"accept submission\" decision regarding their submission.'),
('EDITOR_DECISION_ACCEPT', 'id_ID', 'Keputusan Editor', '{$authorName}:<br />\n<br />\nKami telah membuat keputusan terkait naskah yang Anda kirimkan ke {$contextName}, &quot;{$submissionTitle}&quot;.<br />\n<br />\nKeputusan kami adalah: Naskah Diterima', 'Email ini dari Editor atau Editor Bagian kepada Penulis memberitahukan keputusan final \"Naskah Diterima\".'),
('EDITOR_DECISION_DECLINE', 'en_US', 'Editor Decision', '{$authorName}:<br />\n<br />\nWe have reached a decision regarding your submission to {$contextName}, &quot;{$submissionTitle}&quot;.<br />\n<br />\nOur decision is to: Decline Submission', 'This email from the Editor or Section Editor to an Author notifies them of a final \"decline\" decision regarding their submission.'),
('EDITOR_DECISION_DECLINE', 'id_ID', 'Keputusan Editor', '{$authorName}:<br />\n<br />\nKami telah membuat keputusan terkait naskah yang Anda kirimkan ke {$contextName}, &quot;{$submissionTitle}&quot;.<br />\n<br />\nKeputusan kami adalah: Naskah Ditolak', 'Email ini dari Editor atau Editor Bagian kepada Penulis memberitahukan keputusan final \"Naskah Ditolak\".'),
('EDITOR_DECISION_INITIAL_DECLINE', 'en_US', 'Editor Decision', '\n			{$authorName}:<br />\n<br />\nWe have reached a decision regarding your submission to {$contextName}, &quot;{$submissionTitle}&quot;.<br />\n<br />\nOur decision is to: Decline Submission', 'This email is sent to the author if the editor declines their submission initially, before the review stage'),
('EDITOR_DECISION_INITIAL_DECLINE', 'id_ID', 'Keputusan Penyunting', '\n			{$authorName}:<br />\n<br />\nKami telah sampai pada keputusan mengenai naskah Anda {$contextName}, &quot;{$submissionTitle}&quot;.<br />\n<br />\nKeputusannya adalah: Menolak Naskah', 'Email ini dikirim kepada penulis jika naskah mereka ditolak oleh editor lebih awal, sebelum masuk ke tahap review'),
('EDITOR_DECISION_RESUBMIT', 'en_US', 'Editor Decision', '{$authorName}:<br />\n<br />\nWe have reached a decision regarding your submission to {$contextName}, &quot;{$submissionTitle}&quot;.<br />\n<br />\nOur decision is to: Resubmit for Review', 'This email from the Editor or Section Editor to an Author notifies them of a final \"resubmit\" decision regarding their submission.'),
('EDITOR_DECISION_RESUBMIT', 'id_ID', 'Keputusan Editor', '{$authorName}:<br />\n<br />\nKami telah membuat keputusan terkait naskah yang Anda kirimkan ke {$contextName}, &quot;{$submissionTitle}&quot;.<br />\n<br />\nKeputusan kami adalah: Kirim Ulang untuk Review', 'Email ini dari Editor atau Editor Bagian kepada Penulis memberitahukan bahwa Penulis perlu mengirim ulang naskahnya.'),
('EDITOR_DECISION_REVISIONS', 'en_US', 'Editor Decision', '{$authorName}:<br />\n<br />\nWe have reached a decision regarding your submission to {$contextName}, &quot;{$submissionTitle}&quot;.<br />\n<br />\nOur decision is: Revisions Required', 'This email from the Editor or Section Editor to an Author notifies them of a final \"revisions required\" decision regarding their submission.'),
('EDITOR_DECISION_REVISIONS', 'id_ID', 'Keputusan Editor', '{$authorName}:<br />\n<br />\nKami telah membuat keputusan terkait naskah yang Anda kirimkan ke {$contextName}, &quot;{$submissionTitle}&quot;.<br />\n<br />\nKeputusan kami adalah: Perlu Revisi', 'Email ini dari Editor atau Editor Bagian kepada Penulis memberitahukan keputusan final \"Perlu Revisi\".'),
('EDITOR_DECISION_SEND_TO_EXTERNAL', 'en_US', 'Editor Decision', '{$authorName}:<br />\n<br />\nWe have reached a decision regarding your submission to {$contextName}, &quot;{$submissionTitle}&quot;.<br />\n<br />\nOur decision is to: Send to Review<br />\n<br />\nSubmission URL: {$submissionUrl}', 'This email from the Editor or Section Editor to an Author notifies them that their submission is being sent to an external review.'),
('EDITOR_DECISION_SEND_TO_EXTERNAL', 'id_ID', 'Keputusan Editor', '{$authorName}:<br />\n<br />\nKami telah membuat keputusan terkait naskah yang Anda kirimkan ke {$contextName}, &quot;{$submissionTitle}&quot;.<br />\n<br />\nKeputusan kami adalah: Dikirimkan ke Reviewer Eksternal<br />\n<br />\nURL Naskah: {$submissionUrl}', 'Email ini dari Editor atau Editor Bagian kepada Penulis memberitahukan bahwa naskah dikirimkan ke reviewer eksternal.'),
('EDITOR_DECISION_SEND_TO_PRODUCTION', 'en_US', 'Editor Decision', '{$authorName}:<br />\n<br />\nThe editing of your submission, &quot;{$submissionTitle},&quot; is complete.  We are now sending it to production.<br />\n<br />\nSubmission URL: {$submissionUrl}', 'This email from the Editor or Section Editor to an Author notifies them that their submission is being sent to production.'),
('EDITOR_DECISION_SEND_TO_PRODUCTION', 'id_ID', 'Keputusan Editor', '{$authorName}:<br />\n<br />\nProses editing naskah Anda, &quot;{$submissionTitle},&quot; telah selesai.  Kami sekarang mengirimkannya ke produksi.<br />\n<br />\nURL Naskah: {$submissionUrl}', 'Email ini dari Editor atau Editor Bagian kepada Penulis memberitahukan bahwa naskah dikirim ke produksi.'),
('EDITOR_RECOMMENDATION', 'en_US', 'Editor Recommendation', '{$editors}:<br />\n<br />\nThe recommendation regarding the submission to {$contextName}, &quot;{$submissionTitle}&quot; is: {$recommendation}', 'This email from the recommending Editor or Section Editor to the decision making Editors or Section Editors notifies them of a final recommendation regarding the submission.'),
('EDITOR_RECOMMENDATION', 'id_ID', 'Rekomendasi Penyunting', '{$editors}:<br />\n<br />\nRekomendasi berkaitan dengan  naskah {$contextName}, &quot;{$submissionTitle}&quot; adalah: {$recommendation}', 'Email ini berasal dari Editor atau Editor Bagian kepada Editor pengambilan keputusan atau Editor Bagian memberi tahu mereka tentang rekomendasi akhir mengenai naskah tersebut.'),
('EMAIL_LINK', 'en_US', 'Article of Possible Interest', 'Thought you might be interested in seeing &quot;{$submissionTitle}&quot; by {$authorName} published in Vol {$volume}, No {$number} ({$year}) of {$contextName} at &quot;{$articleUrl}&quot;.', 'This email template provides a registered reader with the opportunity to send information about an article to somebody who may be interested. It is available via the Reading Tools and must be enabled by the Journal Manager in the Reading Tools Administration page.'),
('EMAIL_LINK', 'id_ID', 'Artikel Menarik', 'Anda mungkin tertarik dengan &quot;{$submissionTitle}&quot; oleh {$authorName} diterbitkan di Vol {$volume}, No {$number} ({$year}) {$contextName} yang tersedia di &quot;{$articleUrl}&quot;.', 'Template email ini memungkinkan pembaca terdaftar mengirimkan informasi tentang suatu artikel kepada seseorang yang mungkin akan tertarik. Email ini tersedia di Alat Baca dan harus diaktifkan oleh Manajer Jurnal di halaman Administrasi Alat Baca.'),
('LAYOUT_COMPLETE', 'en_US', 'Galleys Complete', '{$editorialContactName}:<br />\n<br />\nGalleys have now been prepared for the manuscript, &quot;{$submissionTitle},&quot; for {$contextName} and are ready for proofreading.<br />\n<br />\nIf you have any questions, please contact me.<br />\n<br />\n{$participantName}', 'This email from the Layout Editor to the Section Editor notifies them that the layout process has been completed.'),
('LAYOUT_COMPLETE', 'id_ID', 'Galley Selesai', '{$editorialContactName}:<br />\n<br />\nGalley telah dipersiapkan bagi naskah, &quot;{$submissionTitle},&quot; di {$contextName} dan siap untuk proofreading.<br />\n<br />\nJika ada pertanyaan, silakan hubungi kami.<br />\n<br />\n{$participantName}', 'Email from the Layout Editor kepada Editor Bagian memberitahukan bahwa proses layout telah selesai.'),
('LAYOUT_REQUEST', 'en_US', 'Request Galleys', '{$participantName}:<br />\n<br />\nThe submission &quot;{$submissionTitle}&quot; to {$contextName} now needs galleys laid out by following these steps.<br />\n1. Click on the Submission URL below.<br />\n2. Log into the journal and use the Production Ready files to create the galleys according to the journal\'s standards.<br />\n3. Upload the galleys to the Galley Files section.<br />\n4. Notify the Editor using Production Discussions that the galleys are uploaded and ready.<br />\n<br />\n{$contextName} URL: {$contextUrl}<br />\nSubmission URL: {$submissionUrl}<br />\nUsername: {$participantUsername}<br />\n<br />\nIf you are unable to undertake this work at this time or have any questions, please contact me. Thank you for your contribution to this journal.', 'This email from the Section Editor to the Layout Editor notifies them that they have been assigned the task of performing layout editing on a submission. It provides information about the submission and how to access it.'),
('LAYOUT_REQUEST', 'id_ID', 'Permohonan Galley', '{$participantName}:<br />\n<br />\nNaskah &quot;{$submissionTitle}&quot; di {$contextName} memerlukan pembuatan galley dengan mengikuti langkah-langkah berikut.<br />\n1. Klik URL Naskah di bawah.<br />\n2. Login ke jurnal dan gunakan file Siap Produksi untuk membuat galley sesuai standar jurnal.<br />\n3. Unggah galley ke bagian File Galley.<br />\n4. Beritahu Editor menggunakan Diskusi Produksi bahwa galley telah diunggah dan siap digunakan.<br />\n<br />\n{$contextName} URL: {$contextUrl}<br />\nURL Naskah: {$submissionUrl}<br />\nNama pengguna: {$participantUsername}<br />\n<br />\nJika Anda tidak dapat melakukan tugas ini saat ini atau mempunyai pertanyaan, silakan hubungi kami.  Terimakasih atas kontribusi Anda ke jurnal ini.', 'Email dari Editor Bagian kepada Layout Editor memberitahukan bahwa mereka telah ditugaskan untuk melakukan layout editing terhadap suatu naskah.  Email ini memuat informasi terkait penyerahan naskah dan bagaimana mengaksesnya.'),
('LOCKSS_EXISTING_ARCHIVE', 'en_US', 'Archiving Request for {$contextName}', 'Dear [University Librarian]<br />\n<br />\n{$contextName} &amp;lt;{$contextUrl}&amp;gt;, is a journal for which a member of your faculty, [name of member], serves as a [title of position]. The journal is seeking to establish a LOCKSS (Lots of Copies Keep Stuff Safe) compliant archive with this and other university libraries.<br />\n<br />\n[Brief description of journal]<br />\n<br />\nThe URL to the LOCKSS Publisher Manifest for our journal is: {$contextUrl}/gateway/lockss<br />\n<br />\nWe understand that you are already participating in LOCKSS. If we can provide any additional metadata for purposes of registering our journal with your version of LOCKSS, we would be happy to provide it.<br />\n<br />\nThank you,<br />\n{$principalContactSignature}', 'This email requests the keeper of a LOCKSS archive to consider including this journal in their archive. It provides the URL to the journal\'s LOCKSS Publisher Manifest.'),
('LOCKSS_EXISTING_ARCHIVE', 'id_ID', 'Permohonan Pengarsipan untuk {$contextName}', 'Yang terhormat [Pustakawan Universitas]<br />\n<br />\n{$contextName} &amp;lt;{$contextUrl}&amp;gt;, merupakan jurnal yang salah satu anggota fakultas Anda, [name of member], menjadi [title of position]. Jurnal ini hendak membuat arsip sesuai LOCKSS (Lots of Copies Keep Stuff Safe) di perpustakaan Anda dan perpustakaan universitas lainnya.<br />\n<br />\n[Deskripsi singkat jurnal]<br />\n<br />\nURL Publisher Manifest LOCKSS jurnal kami adalah: {$contextUrl}/gateway/lockss<br />\n<br />\nKami memahami bahwa Anda telah bergabung dengan LOCKSS. Jika kami perlu memberikan metadata tambahan untuk mendaftarkan jurnal kami di versi LOCKSS Anda, dengan senang hati kami akan memberikannya.<br />\n<br />\nTerimakasih,<br />\n{$principalContactSignature}', 'Email ini meminta penjaga arsip LOCKSS untuk mempertimbangkan memasukkan jurnal ini ke dalam arsip mereka. Email ini memberikan URL Publisher Manifest LOCKSS jurnal.'),
('LOCKSS_NEW_ARCHIVE', 'en_US', 'Archiving Request for {$contextName}', 'Dear [University Librarian]<br />\n<br />\n{$contextName} &amp;lt;{$contextUrl}&amp;gt;, is a journal for which a member of your faculty, [name of member] serves as a [title of position]. The journal is seeking to establish a LOCKSS (Lots of Copies Keep Stuff Safe) compliant archive with this and other university libraries.<br />\n<br />\n[Brief description of journal]<br />\n<br />\nThe LOCKSS Program &amp;lt;http://lockss.org/&amp;gt;, an international library/publisher initiative, is a working example of a distributed preservation and archiving repository, additional details are below. The software, which runs on an ordinary personal computer is free; the system is easily brought on-line; very little ongoing maintenance is required.<br />\n<br />\nTo assist in the archiving of our journal, we invite you to become a member of the LOCKSS community, to help collect and preserve titles produced by your faculty and by other scholars worldwide. To do so, please have someone on your staff visit the LOCKSS site for information on how this system operates. I look forward to hearing from you on the feasibility of providing this archiving support for this journal.<br />\n<br />\nThank you,<br />\n{$principalContactSignature}', 'This email encourages the recipient to participate in the LOCKSS initiative and include this journal in the archive. It provides information about the LOCKSS initiative and ways to become involved.'),
('LOCKSS_NEW_ARCHIVE', 'id_ID', 'Permohonan Pengarsipan untuk {$contextName}', 'Yang terhormat [University Librarian]<br />\n<br />\n{$contextName} &amp;lt;{$contextUrl}&amp;gt;, merupakan jurnal yang salah satu anggota fakultas Anda, [name of member], menjadi [title of position]. Jurnal ini hendak membuat arsip sesuai LOCKSS (Lots of Copies Keep Stuff Safe) di perpustakaan Anda dan perpustakaan universitas lainnya.<br />\n<br />\n[Deskripsi singkat jurnal]<br />\n<br />\nProgram LOCKSS &amp;lt;http://lockss.org/&amp;gt;, suatu gerakan perpustakaan/penerbit internasional, merupakan contoh nyata penyimpanan dan pengarsipan terdistribusi, detail tambahan dapat dilihat di bawah. Piranti lunak ini, yang berjalan di komputer biasa, merupakan piranti lunak yang gratis; sistemnya mudah di-online-kan; tidak membutuhkan banyak perawatan.<br />\n<br />\nUntuk membantu mengarsipkan jurnal kami, kami mengundang Anda untuk menjadi anggota komunitas LOCKSS, guna membantu mengumpulkan dan menyimpan judul-judul karya anggota fakultas Anda dan ilmuwan lainnya di seluruh dunia. Jika berkenan, silakan mengunjungi website LOCKSS untuk informasi mengenai bagaimana cara kerja sistem ini. Kami berharap Anda berkenan mendukung pengarsipan jurnal ini.<br />\n<br />\nTerimakasih,<br />\n{$principalContactSignature}', 'Email ini mendorong penerima untuk berpartisipasi di gerakan LOCKSS dan memasukkan jurnal ini dalam arsip. Email ini memberikan informasi tentang gerakan LOCKSS dan cara untuk bergabung.'),
('MANUAL_PAYMENT_NOTIFICATION', 'en_US', 'Manual Payment Notification', 'A manual payment needs to be processed for the journal {$contextName} and the user {$userFullName} (username &quot;{$userName}&quot;).<br />\n<br />\nThe item being paid for is &quot;{$itemName}&quot;.<br />\nThe cost is {$itemCost} ({$itemCurrencyCode}).<br />\n<br />\nThis email was generated by Open Journal Systems\' Manual Payment plugin.', 'This email template is used to notify a journal manager contact that a manual payment was requested.'),
('MANUAL_PAYMENT_NOTIFICATION', 'id_ID', 'Pemberitahuan Pembayaran Manual', 'Pembayaran manual harus diproses untuk jurnal {$contextName} dan pengguna {$userFullName} (username &quot;{$userName}&quot;).<br />\n<br />\nItem yang akan dibayar adalah &quot;{$itemName}&quot;.<br />\nBiayanya {$itemCost} ({$itemCurrencyCode}).<br />\n<br />\nSurat elektronik ini dibuat oleh plugin Pembayaran Manual OJS.', 'Email ini digunakan untuk memberitahukan kontak manajer jurnal bahwa pembayaran manual dibutuhkan.'),
('NOTIFICATION', 'en_US', 'New notification from {$siteTitle}', 'You have a new notification from {$siteTitle}:<br />\n<br />\n{$notificationContents}<br />\n<br />\nLink: {$url}<br />\n<br />\n{$principalContactSignature}', 'The email is sent to registered users that have selected to have this type of notification emailed to them.'),
('NOTIFICATION', 'id_ID', 'Notifikasi baru dari {$siteTitle}', 'Anda memperoleh satu notifikasi baru dari {$siteTitle}:<br />\n<br />\n{$notificationContents}<br />\n<br />\nTautan: {$url}<br />\n<br />\n{$principalContactSignature}', 'Email ini dikirimkan ke pengguna terdaftar yang memilih untuk memperoleh jenis notifikasi ini dikirimkan melalui email.'),
('NOTIFICATION_CENTER_DEFAULT', 'en_US', 'A message regarding {$contextName}', 'Please enter your message.', 'The default (blank) message used in the Notification Center Message Listbuilder.'),
('NOTIFICATION_CENTER_DEFAULT', 'id_ID', 'Pesan terkait {$contextName}', 'Silakan tuliskan pesan Anda.', 'Pesan default (kosong) yang digunakan di Pengelola Pesan Pusat Notifikasi.'),
('OPEN_ACCESS_NOTIFY', 'en_US', 'Issue Now Open Access', 'Readers:<br />\n<br />\n{$contextName} has just made available in an open access format the following issue. We invite you to review the Table of Contents here and then visit our web site ({$contextUrl}) to review articles and items of interest.<br />\n<br />\nThanks for the continuing interest in our work,<br />\n{$editorialContactSignature}', 'This email is sent to registered readers who have requested to receive a notification email when an issue becomes open access.'),
('OPEN_ACCESS_NOTIFY', 'id_ID', 'Terbitan Sudah Open Access', 'Readers:<br />\n<br />\n{$contextName} telah menjadikan terbitan berikut Open Access. Kami mengundang Anda untuk menelaah Daftar Isi berikut dan mengunjungi website kami ({$contextUrl}) untuk membaca artikel dan item yang Anda minati.<br />\n<br />\nTerimakasih atas perhatiannya,<br />\n{$editorialContactSignature}', 'Email ini dikirimkan ke pembaca terdaftar yang meminta untuk dikirimkan email pemberitahuan saat suatu terbitan menjadi Open Access.'),
('ORCID_COLLECT_AUTHOR_ID', 'en_US', 'Submission ORCID', 'Dear {$authorName},<br/>\n<br/>\nYou have been listed as an author on a manuscript submission to {$contextName}.<br/>\nTo confirm your authorship, please add your ORCID id to this submission by visiting the link provided below.<br/>\n<br/>\n<a href=\"{$authorOrcidUrl}\"><img id=\"orcid-id-logo\" src=\"https://orcid.org/sites/default/files/images/orcid_16x16.png\" width=\'16\' height=\'16\' alt=\"ORCID iD icon\" style=\"display: block; margin: 0 .5em 0 0; padding: 0; float: left;\"/>Register or connect your ORCID iD</a><br/>\n<br/>\n<br>\n<a href=\"{$orcidAboutUrl}\">More information about ORCID at {$contextName}</a><br/>\n<br/>\nIf you have any questions, please contact me.<br/>\n<br/>\n{$principalContactSignature}<br/>\n', 'This email template is used to collect the ORCID id\'s from authors.'),
('ORCID_COLLECT_AUTHOR_ID', 'id_ID', 'ORCID Naskah', 'Yang Kami Hormati {$authorName},<br/>\n<br/>\nAnda telah terdaftar sebagai penulis naskah{$contextName}.<br/>\nUntuk mengonfirmasi kepenulisan tersebut, tambahkanlah id ORCID Anda pada naskah tersebut dengan membuka tautan berikut ini.<br/>\n<br/>\n<a href=\"{$authorOrcidUrl}\"><img id=\"orcid-id-logo\" src=\"https://orcid.org/sites/default/files/images/orcid_16x16.png\" width=\'16\' height=\'16\' alt=\"ORCID iD icon\" style=\"display: block; margin: 0 .5em 0 0; padding: 0; float: left;\"/>Register atau hubungkan iD ORCID Anda</a><br/>\n<br/>\n<br>\n<a href=\"{$orcidAboutUrl}\">Informasi selengkapnya tentang ORCID pada {$contextName}</a><br/>\n<br/>\nBila ada pertanyaan, silakan hubungi kami.<br/>\n<br/>\n{$principalContactSignature}<br/>\n', 'Template surel ini digunakan untuk mengumpulkan id ORCID penulis.'),
('ORCID_REQUEST_AUTHOR_AUTHORIZATION', 'en_US', 'Requesting ORCID record access', 'Dear {$authorName},<br>\n<br>\nYou have been listed as an author on the manuscript submission \"{$submissionTitle}\" to {$contextName}.\n<br>\n<br>\nPlease allow us to add your ORCID id to this submission and also to add the submission to your ORCID profile on publication.<br>\nVisit the link to the official ORCID website, login with your profile and authorize the access by following the instructions.<br>\n<a href=\"{$authorOrcidUrl}\"><img id=\"orcid-id-logo\" src=\"https://orcid.org/sites/default/files/images/orcid_16x16.png\" width=\'16\' height=\'16\' alt=\"ORCID iD icon\" style=\"display: block; margin: 0 .5em 0 0; padding: 0; float: left;\"/>Register or Connect your ORCID iD</a><br/>\n<br>\n<br>\n<a href=\"{$orcidAboutUrl}\">More about ORCID at {$contextName}</a><br/>\n<br>\nIf you have any questions, please contact me.<br>\n<br>\n{$principalContactSignature}<br>\n', 'This email template is used to request ORCID record access from authors.'),
('ORCID_REQUEST_AUTHOR_AUTHORIZATION', 'id_ID', 'Meminta akses rekaman ORCID', 'Yang Kami Hormati {$authorName},<br>\n<br>\nAnda telah terdaftar sebagai penulis naskah \"{$submissionTitle}\" pada {$contextName}.\n<br>\n<br>\nIjinkanlah kami menambahkan id ORCID Anda pada naskah ini serta menambahkan naskah pada profil ORCID Anda pada terbitan.<br>\nBuka tautan web ORCID, login dan beri akses sesuai petunjuk berikut.<br>\n<a href=\"{$authorOrcidUrl}\"><img id=\"orcid-id-logo\" src=\"https://orcid.org/sites/default/files/images/orcid_16x16.png\" width=\'16\' height=\'16\' alt=\"ORCID iD icon\" style=\"display: block; margin: 0 .5em 0 0; padding: 0; float: left;\"/>Register atau hubungkan iD ORCID Anda</a><br/>\n<br>\n<br>\n<a href=\"{$orcidAboutUrl}\">nformasi selengkapnya tentang ORCID pada {$contextName}</a><br/>\n<br>\nBila ada pertanyaan, silakan hubungi kami.<br>\n<br>\n{$principalContactSignature}<br/>\n', 'Template surel ini digunakan untuk meminta akses rekaman ORCID penulis.'),
('PASSWORD_RESET_CONFIRM', 'en_US', 'Password Reset Confirmation', 'We have received a request to reset your password for the {$siteTitle} web site.<br />\n<br />\nIf you did not make this request, please ignore this email and your password will not be changed. If you wish to reset your password, click on the below URL.<br />\n<br />\nReset my password: {$url}<br />\n<br />\n{$principalContactSignature}', 'This email is sent to a registered user when they indicate that they have forgotten their password or are unable to login. It provides a URL they can follow to reset their password.'),
('PASSWORD_RESET_CONFIRM', 'id_ID', 'Konfirmasi Reset Sandi', 'Kami menerima permintaan reset sandi untuk akun Anda di website {$siteTitle}.<br />\n<br />\nJika Anda tidak merasa mengajukan permintaan ini, abaikan pesan ini dan sandi Anda tidak akan diubah.  Jika Anda memang ingin melakukan reset sandi, klik tautan berikut ini.<br />\n<br />\nReset sandi saya: {$url}<br />\n<br />\n{$principalContactSignature}', 'Email ini dikirimkan ke pengguna terdaftar ketika lupa sandi atau tidak dapat login. Email ini memberikan URL untuk melakukan reset sandi.'),
('PAYPAL_INVESTIGATE_PAYMENT', 'en_US', 'Unusual PayPal Activity', 'Open Journal Systems has encountered unusual activity relating to PayPal payment support for the journal {$contextName}. This activity may need further investigation or manual intervention.<br />\n                       <br />\nThis email was generated by Open Journal Systems\' PayPal plugin.<br />\n<br />\nFull post information for the request:<br />\n{$postInfo}<br />\n<br />\nAdditional information (if supplied):<br />\n{$additionalInfo}<br />\n<br />\nServer vars:<br />\n{$serverVars}<br />\n', 'This email template is used to notify a journal\'s primary contact that suspicious activity or activity requiring manual intervention was encountered by the PayPal plugin.'),
('PAYPAL_INVESTIGATE_PAYMENT', 'id_ID', 'Kegiatan pembayaran paypal yang tidak biasa', 'Open Journal System telah menemukan kegiatan yang tidak biasa yang terkait dengan bantuan pembayaran paypal untuk jurnal {$contextName}. Kegiatan ini mungkin memerlukan investigasi lebih lanjut atau intervensi manual.<br />\n                       <br />\nSurel ini dibuat oleh plugin PayPal pada OJS.<br />\n<br />\nInformasi posting penuh untuk permohonan:<br />\n{$postInfo}<br />\n<br />\nInformasi tambahan (jika tersedia):<br />\n{$additionalInfo}<br />\n<br />\nServer vars:<br />\n{$serverVars}<br />\n', 'Email ini digunakan untuk memberitahukan narahubung utama jurnal bahwa plugin PayPal menemukan kegiatan mencurigakan atau kegiatan yang membutuhkan intervensi manual.'),
('PUBLISH_NOTIFY', 'en_US', 'New Issue Published', 'Readers:<br />\n<br />\n{$contextName} has just published its latest issue at {$contextUrl}. We invite you to review the Table of Contents here and then visit our web site to review articles and items of interest.<br />\n<br />\nThanks for the continuing interest in our work,<br />\n{$editorialContactSignature}', 'This email is sent to registered readers via the \"Notify Users\" link in the Editor\'s User Home. It notifies readers of a new issue and invites them to visit the journal at a supplied URL.'),
('PUBLISH_NOTIFY', 'id_ID', 'Terbitan Baru', 'Readers:<br />\n<br />\n{$contextName} baru saja menerbitkan terbitan terbarunya di {$contextUrl}. Kami mengundang Anda untuk membaca Daftar Isi dan selanjutnya mengunjungi website kami untuk membaca artikel yang Anda minati.<br />\n<br />\nTerimakasih atas perhatian Anda,<br />\n{$editorialContactSignature}', 'Email ini dikirimkan ke pembaca terdaftar melalui tautan \"Beritahu Pengguna\" di Beranda Pengguna Editor. Email ini memberitahu pembaca tentang terbitan baru dan mengundang pembaca untuk mengunjungi jurnal melalui URL yang diberikan.'),
('REVIEWER_REGISTER', 'en_US', 'Registration as Reviewer with {$contextName}', 'In light of your expertise, we have taken the liberty of registering your name in the reviewer database for {$contextName}. This does not entail any form of commitment on your part, but simply enables us to approach you with a submission to possibly review. On being invited to review, you will have an opportunity to see the title and abstract of the paper in question, and you\'ll always be in a position to accept or decline the invitation. You can also ask at any point to have your name removed from this reviewer list.<br />\n<br />\nWe are providing you with a username and password, which is used in all interactions with the journal through its website. You may wish, for example, to update your profile, including your reviewing interests.<br />\n<br />\nUsername: {$username}<br />\nPassword: {$password}<br />\n<br />\nThank you,<br />\n{$principalContactSignature}', 'This email is sent to a newly registered reviewer to welcome them to the system and provide them with a record of their username and password.'),
('REVIEWER_REGISTER', 'id_ID', 'Registrasi sebagai Reviewer di {$contextName}', 'Dengan mempertimbangkan keahlian Anda, kami memasukkan nama Anda dalam database reviewer di {$contextName}. Hal ini tidak bersifat mengikat, hanya sekedar memudahkan kami untuk mengundang Anda untuk melakukan review terhadap suatu naskah. Ketika memperoleh undangan untuk melakukan review suatu naskah, Anda dapat melihat judul dan abstrak naskah tersebut, dan Anda berhak menentukan apakah akan menerima atau menolak undangan tersebut. Anda juga dapat meminta dihapus dari daftar reviewer kapan saja Anda menghendaki.<br />\n<br />\nKami menyertakan nama pengguna dan sandi Anda, yang digunakan dalam semua interaksi dengan jurnal melalui website. Anda dapat melakukan update profil, termasuk minat review Anda.<br />\n<br />\nNama pengguna: {$username}<br />\nSandi: {$password}<br />\n<br />\nTerimakasih,<br />\n{$principalContactSignature}', 'Email ini dikirimkan ke reviewer baru untuk menyambut dan memberikan informasi nama pengguna dan sandi.'),
('REVIEW_ACK', 'en_US', 'Article Review Acknowledgement', '{$reviewerName}:<br />\n<br />\nThank you for completing the review of the submission, &quot;{$submissionTitle},&quot; for {$contextName}. We appreciate your contribution to the quality of the work that we publish.', 'This email is sent by a Section Editor to confirm receipt of a completed review and thank the reviewer for their contributions.'),
('REVIEW_ACK', 'id_ID', 'Ucapan Terimakasih atas Review Artikel', '{$reviewerName}:<br />\n<br />\nTerimakasih telah menyelesaikan review terhadap naskah, &quot;{$submissionTitle},&quot; untuk {$contextName}. Kami sangat menghargai kontribusi Anda terhadap kualitas karya yang kami publikasikan.', 'Email ini dikirimkan Editor Bagian untuk mengkonfirmasi penerimaan review dan mengucapkan terimakasih atas kontribusinya.'),
('REVIEW_CANCEL', 'en_US', 'Request for Review Cancelled', '{$reviewerName}:<br />\n<br />\nWe have decided at this point to cancel our request for you to review the submission, &quot;{$submissionTitle},&quot; for {$contextName}. We apologize for any inconvenience this may cause you and hope that we will be able to call on you to assist with this journal\'s review process in the future.<br />\n<br />\nIf you have any questions, please contact me.', 'This email is sent by the Section Editor to a Reviewer who has a submission review in progress to notify them that the review has been cancelled.'),
('REVIEW_CANCEL', 'id_ID', 'Permohonan Review Dibatalkan', '{$reviewerName}:<br />\n<br />\nKami memutuskan untuk membatalkan permohonan review kami kepada Anda untuk naskah, &quot;{$submissionTitle},&quot; di {$contextName}. Kami mohon maaf sebesar-besarnya untuk ketidaknyamanan ini dan kami harap di masa mendatang Anda dapat membantu proses review di jurnal ini.<br />\n<br />\nJika ada pertanyaan, silakan hubungi kami.', 'Email ini dikirimkan Editor Bagian kepada Reviewer yang sedang melakukan review untuk memberitahukan pembatalan review.'),
('REVIEW_CONFIRM', 'en_US', 'Able to Review', 'Editors:<br />\n<br />\nI am able and willing to review the submission, &quot;{$submissionTitle},&quot; for {$contextName}. Thank you for thinking of me, and I plan to have the review completed by its due date, {$reviewDueDate}, if not before.<br />\n<br />\n{$reviewerName}', 'This email is sent by a Reviewer to the Section Editor in response to a review request to notify the Section Editor that the review request has been accepted and will be completed by the specified date.'),
('REVIEW_CONFIRM', 'id_ID', 'Dapat Melakukan Review', 'Editor:<br />\n<br />\nSaya dapat dan bersedia melakukan review terhadap naskah, &quot;{$submissionTitle},&quot; untuk {$contextName}. Terimakasih telah mempercayakan kepada saya, dan saya berencana untuk menyelesaikan review ini sesuai tenggat, {$reviewDueDate}, atau sebelumnya.<br />\n<br />\n{$reviewerName}', 'Email ini dikirimkan Reviewer kepada Editor Bagian sebagai respon terhadap permohonan review untuk memberitahu Editor Bagian bahwa permohonan review diterima dan akan diselesaikan pada tanggal yang ditetapkan.'),
('REVIEW_DECLINE', 'en_US', 'Unable to Review', 'Editors:<br />\n<br />\nI am afraid that at this time I am unable to review the submission, &quot;{$submissionTitle},&quot; for {$contextName}. Thank you for thinking of me, and another time feel free to call on me.<br />\n<br />\n{$reviewerName}', 'This email is sent by a Reviewer to the Section Editor in response to a review request to notify the Section Editor that the review request has been declined.'),
('REVIEW_DECLINE', 'id_ID', 'Tidak Dapat Melakukan Review', 'Editor:<br />\n<br />\nMohon maaf saat ini saya tidak dapat melakukan review terhadap naskah, &quot;{$submissionTitle},&quot; untuk {$contextName}. Terimakasih telah mempercayakann kepada saya, dan lain waktu silakan menghubungi saya lagi.<br />\n<br />\n{$reviewerName}', 'Email ini dikirimkan Reviewer kepada Editor Bagian sebagai respon terhadap permohonan review untuk memberitahu Editor Bagian bahwa permohonan review ditolak.'),
('REVIEW_REINSTATE', 'en_US', 'Request for Review Reinstated', '{$reviewerName}:<br />\n<br />\nWe would like to reinstate our request for you to review the submission, &quot;{$submissionTitle},&quot; for {$contextName}. We hope that you will be able to assist with this journal\'s review process.<br />\n<br />\nIf you have any questions, please contact me.', 'This email is sent by the Section Editor to a Reviewer who has a submission review in progress to notify them that a cancelled review has been reinstated.'),
('REVIEW_REINSTATE', 'id_ID', 'Meminta Pemulihan Review', '{$reviewerName}:<br />\n<br />\nKami ingin memulihkan permintaan kami kepada Anda untuk mereview naskah, &quot;{$submissionTitle},&quot; untuk {$contextName}. Kami berharap Anda dapat membantu proses review jurnal kami.<br />\n<br />\nJika ada pertanyaan, silakan hubungi saya.', 'Email ini dikirim oleh Editor Bagian kepada Mitra Bestari yang sedang mereview naskah untuk memberi tahu bahwa ulasan mereka yang dibatalkan telah dipulihkan.'),
('REVIEW_REMIND', 'en_US', 'Submission Review Reminder', '{$reviewerName}:<br />\n<br />\nJust a gentle reminder of our request for your review of the submission, &quot;{$submissionTitle},&quot; for {$contextName}. We were hoping to have this review by {$reviewDueDate}, and would be pleased to receive it as soon as you are able to prepare it.<br />\n<br />\nIf you do not have your username and password for the journal\'s web site, you can use this link to reset your password (which will then be emailed to you along with your username). {$passwordResetUrl}<br />\n<br />\nSubmission URL: {$submissionReviewUrl}<br />\n<br />\nPlease confirm your ability to complete this vital contribution to the work of the journal. I look forward to hearing from you.<br />\n<br />\n{$editorialContactSignature}', 'This email is sent by a Section Editor to remind a reviewer that their review is due.'),
('REVIEW_REMIND', 'id_ID', 'Pengingat Review Naskah', '{$reviewerName}:<br />\n<br />\nSekedar mengingatkan tentang permohonan kami untuk melakukan review terhadap naskah, &quot;{$submissionTitle},&quot; untuk {$contextName}. Kami mengharapkan telah menerima review ini pada {$reviewDueDate}, dan akan sangat berbahagia untuk dapat menerimanya segera setelah Anda menyelesaikannya.<br />\n<br />\nJika Anda tidak memiliki nama pengguna dan sandi untuk website jurnal ini, Anda dapat menggunakan tautan berikut untuk mereset sandi Anda (yang selanjutnya akan diemailkan kepada Anda bersama nama pengguna Anda). {$passwordResetUrl}<br />\n<br />\nURL Naskah: {$submissionReviewUrl}<br />\n<br />\nMohon konfirmasi kesanggupan Anda untuk menyelesaikan kontribusi penting ini.  Kami menunggu balasan Anda.<br />\n<br />\n{$editorialContactSignature}', 'Email ini dikirimkan Editor Bagian untuk mengingatkan reviewer bahwa review telah mencapai tenggat.'),
('REVIEW_REMIND_AUTO', 'en_US', 'Automated Submission Review Reminder', '{$reviewerName}:<br />\n<br />\nJust a gentle reminder of our request for your review of the submission, &quot;{$submissionTitle},&quot; for {$contextName}. We were hoping to have this review by {$reviewDueDate}, and this email has been automatically generated and sent with the passing of that date. We would still be pleased to receive it as soon as you are able to prepare it.<br />\n<br />\nIf you do not have your username and password for the journal\'s web site, you can use this link to reset your password (which will then be emailed to you along with your username). {$passwordResetUrl}<br />\n<br />\nSubmission URL: {$submissionReviewUrl}<br />\n<br />\nPlease confirm your ability to complete this vital contribution to the work of the journal. I look forward to hearing from you.<br />\n<br />\n{$editorialContactSignature}', 'This email is automatically sent when a reviewer\'s due date elapses (see Review Options under Settings > Workflow > Review) and one-click reviewer access is disabled. Scheduled tasks must be enabled and configured (see the site configuration file).'),
('REVIEW_REMIND_AUTO', 'id_ID', 'Pengingat Otomatis Review Naskah', '{$reviewerName}:<br />\n<br />\nSekedar mengingatkan tentang permohonan kami untuk melakukan review terhadap naskah, &quot;{$submissionTitle},&quot; untuk {$contextName}. Kami mengharapkan telah menerima review ini pada {$reviewDueDate}, dan email ini dikirim secara otomatis seiring terlewatinya tanggal tersebut. Kami masih tetap menanti review tersebut segera setelah Anda dapat menyelesaikannya.<br />\n<br />\nJika Anda tidak memiliki nama pengguna dan sandi untuk website jurnal ini, Anda dapat menggunakan tautan berikut untuk mereset sandi Anda (yang selanjutnya akan diemailkan kepada Anda bersama nama pengguna Anda). {$passwordResetUrl}<br />\n<br />\nURL Naskah: {$submissionReviewUrl}<br />\n<br />\nMohon konfirmasi kesanggupan Anda untuk menyelesaikan kontribusi penting ini.  Kami menunggu balasan Anda.<br />\n<br />\n{$editorialContactSignature}', 'Email ini dikirimkan otomatis saat tenggat waktu review terlewati (lihat Opsi Review di menu Pengaturan > Alur Kerja > Review) and one-click reviewer access is disabled. Scheduled tasks must be enabled and configured (see the site configuration file).'),
('REVIEW_REMIND_AUTO_ONECLICK', 'en_US', 'Automated Submission Review Reminder', '{$reviewerName}:<br />\n<br />\nJust a gentle reminder of our request for your review of the submission, &quot;{$submissionTitle},&quot; for {$contextName}. We were hoping to have this review by {$reviewDueDate}, and this email has been automatically generated and sent with the passing of that date. We would still be pleased to receive it as soon as you are able to prepare it.<br />\n<br />\nSubmission URL: {$submissionReviewUrl}<br />\n<br />\nPlease confirm your ability to complete this vital contribution to the work of the journal. I look forward to hearing from you.<br />\n<br />\n{$editorialContactSignature}', 'This email is automatically sent when a reviewer\'s due date elapses (see Review Options under Settings > Workflow > Review) and one-click reviewer access is enabled. Scheduled tasks must be enabled and configured (see the site configuration file).'),
('REVIEW_REMIND_AUTO_ONECLICK', 'id_ID', 'Pengingat Review Naskah Otomatis', '{$reviewerName}:<br />\n<br />\nSekedar mengingatkan tentang permohonan kami untuk melakukan review terhadap naskah, &quot;{$submissionTitle},&quot; untuk {$contextName}. We were hoping to have this review by {$reviewDueDate}, dan email ini dikirim secara otomatis seiring terlewatinya tanggal tersebut. We would still be pleased to receive it as soon as you are able to prepare it.<br />\n<br />\nURL Naskah: {$submissionReviewUrl}<br />\n<br />\nMohon konfirmasi kesanggupan Anda untuk menyelesaikan kontribusi penting ini.  Kami menunggu balasan Anda.<br />\n<br />\n{$editorialContactSignature}', 'Email ini dikirimkan otomatis saat tenggat waktu review terlewati (lihat Opsi Review di menu Pengaturan > Alur Kerja > Review) dan akses one-click reviewer diaktifkan. Tugas terjadwal harus diaktifkan dan diatur (lihat file konfigurasi website).'),
('REVIEW_REMIND_ONECLICK', 'en_US', 'Submission Review Reminder', '{$reviewerName}:<br />\n<br />\nJust a gentle reminder of our request for your review of the submission, &quot;{$submissionTitle},&quot; for {$contextName}. We were hoping to have this review by {$reviewDueDate}, and would be pleased to receive it as soon as you are able to prepare it.<br />\n<br />\nSubmission URL: {$submissionReviewUrl}<br />\n<br />\nPlease confirm your ability to complete this vital contribution to the work of the journal. I look forward to hearing from you.<br />\n<br />\n{$editorialContactSignature}', 'This email is sent by a Section Editor to remind a reviewer that their review is due.'),
('REVIEW_REMIND_ONECLICK', 'id_ID', 'Pengingat Review Naskah', '{$reviewerName}:<br />\n<br />\nSekedar mengingatkan tentang permohonan kami untuk melakukan review terhadap naskah, &quot;{$submissionTitle},&quot; untuk {$contextName}. Kami mengharapkan telah menerima review ini pada {$reviewDueDate}, dan akan sangat berbahagia untuk dapat menerimanya segera setelah Anda menyelesaikannya.<br />\n<br />\nURL Naskah: {$submissionReviewUrl}<br />\n<br />\nMohon konfirmasi kesanggupan Anda untuk menyelesaikan kontribusi penting ini.  Kami menunggu balasan Anda.<br />\n<br />\n{$editorialContactSignature}', 'Email ini dikirimkan Editor Bagian untuk mengingatkan reviewer bahwa review telah mencapai tenggat.'),
('REVIEW_REQUEST', 'en_US', 'Article Review Request', '{$reviewerName}:<br />\n<br />\nI believe that you would serve as an excellent reviewer of the manuscript, &quot;{$submissionTitle},&quot; which has been submitted to {$contextName}. The submission\'s abstract is inserted below, and I hope that you will consider undertaking this important task for us.<br />\n<br />\nPlease log into the journal web site by {$responseDueDate} to indicate whether you will undertake the review or not, as well as to access the submission and to record your review and recommendation. The web site is {$contextUrl}<br />\n<br />\nThe review itself is due {$reviewDueDate}.<br />\n<br />\nIf you do not have your username and password for the journal\'s web site, you can use this link to reset your password (which will then be emailed to you along with your username). {$passwordResetUrl}<br />\n<br />\nSubmission URL: {$submissionReviewUrl}<br />\n<br />\nThank you for considering this request.<br />\n<br />\n{$editorialContactSignature}<br />\n<br />\n&quot;{$submissionTitle}&quot;<br />\n<br />\n{$submissionAbstract}', 'This email from the Section Editor to a Reviewer requests that the reviewer accept or decline the task of reviewing a submission. It provides information about the submission such as the title and abstract, a review due date, and how to access the submission itself. This message is used when the Standard Review Process is selected in Management > Settings > Workflow > Review. (Otherwise see REVIEW_REQUEST_ATTACHED.)'),
('REVIEW_REQUEST', 'id_ID', 'Permohonan Review Artikel', '{$reviewerName}:<br />\n<br />\nKami memandang bahwa Anda merupakan reviewer yang tepat untuk naskah, &quot;{$submissionTitle},&quot; yang diserahkan ke {$contextName}. Abstrak naskah tersebut disertakan di bawah ini, dan kami berharap Anda berkenan melakukannya.<br />\n<br />\nSilakan login ke website jurnal sebelum {$responseDueDate} untuk memberitahukan apakah Anda bersedia melakukan review atau tidak, juga untuk mengakses naskah dan menyerahkan review beserta rekomendasi Anda. Website jurnal adalah {$contextUrl}<br />\n<br />\nTenggat review ini sendiri adalah {$reviewDueDate}.<br />\n<br />\nJika Anda tidak memiliki nama pengguna dan sandi untuk website jurnal ini, Anda dapat menggunakan tautan berikut untuk mereset sandi Anda (yang selanjutnya akan diemailkan kepada Anda bersama nama pengguna Anda). {$passwordResetUrl}<br />\n<br />\nURL Naskah: {$submissionReviewUrl}<br />\n<br />\nTerimakasih atas perhatiannya.<br />\n<br />\n{$editorialContactSignature}<br />\n<br />\n&quot;{$submissionTitle}&quot;<br />\n<br />\n{$submissionAbstract}', 'Email ini dari Editor Bagian kepada Reviewer untuk meminta reviewer memberitahukan apakah menerima atau menolak permohonan review. Email ini memberikan informasi tentang naskah meliputi judul dan abstrak, tenggat review, dan cara mengakses naskah. Pesan ini digunakan saat Proses Review Standar dipilih di Manajemen > Pengaturan > Alur Kerja > Review. (Selain itu lihat di REVIEW_REQUEST_ATTACHED.)'),
('REVIEW_REQUEST_ATTACHED', 'en_US', 'Article Review Request', '{$reviewerName}:<br />\n<br />\nI believe that you would serve as an excellent reviewer of the manuscript, &quot;{$submissionTitle},&quot; and I am asking that you consider undertaking this important task for us. The Review Guidelines for this journal are appended below, and the submission is attached to this email. Your review of the submission, along with your recommendation, should be emailed to me by {$reviewDueDate}.<br />\n<br />\nPlease indicate in a return email by {$responseDueDate} whether you are able and willing to do the review.<br />\n<br />\nThank you for considering this request.<br />\n<br />\n{$editorialContactSignature}<br />\n<br />\n<br />\nReview Guidelines<br />\n<br />\n{$reviewGuidelines}<br />\n', 'This email is sent by the Section Editor to a Reviewer to request that they accept or decline the task of reviewing a submission. It includes the submission as an attachment. This message is used when the Email-Attachment Review Process is selected in Management > Settings > Workflow > Review. (Otherwise see REVIEW_REQUEST.)');
INSERT INTO `email_templates_default_data` (`email_key`, `locale`, `subject`, `body`, `description`) VALUES
('REVIEW_REQUEST_ATTACHED', 'id_ID', 'Permohonan Review Artikel', '{$reviewerName}:<br />\n<br />\nKami memandang bahwa Anda merupakan reviewer yang tepat untuk naskah, &quot;{$submissionTitle},&quot; dan kami mengharapkan Anda berkenan melakukan review. Panduan Review untuk jurnal ini disertakan di bawah, dan naskah telah dilampirkan bersama email ini. Review beserta rekomendasi Anda, kami harap telah diemailkan sebelum tenggat review {$reviewDueDate}.<br />\n<br />\nMohon sampaikan dalam email balasan sebelum {$responseDueDate} tentang kesediaan Anda untuk melakukan review.<br />\n<br />\nTerimakasih atas perhatiannya.<br />\n<br />\n{$editorialContactSignature}<br />\n<br />\n<br />\nPanduan Review<br />\n<br />\n{$reviewGuidelines}<br />\n', 'Email ini dari Editor Bagian kepada Reviewer untuk meminta reviewer memberitahukan apakah menerima atau menolak permohonan review. Email disertai naskah terlampir bersama email. Pesan ini digunakan saat Proses Review Lampiran Email dipilih di Manajemen > Pengaturan > Alur Kerja > Review. (Selain itu lihat REVIEW_REQUEST.)'),
('REVIEW_REQUEST_ATTACHED_SUBSEQUENT', 'en_US', 'Article Review Request', '{$reviewerName}:<br />\n<br />\nThis regards the manuscript &quot;{$submissionTitle},&quot; which is under consideration by {$contextName}.<br />\n<br />\nFollowing the review of the previous version of the manuscript, the authors have now submitted a revised version of their paper. We would appreciate it if you could help evaluate it.<br />\n<br />\nThe Review Guidelines for this journal are appended below, and the submission is attached to this email. Your review of the submission, along with your recommendation, should be emailed to me by {$reviewDueDate}.<br />\n<br />\nPlease indicate in a return email by {$responseDueDate} whether you are able and willing to do the review.<br />\n<br />\nThank you for considering this request.<br />\n<br />\n{$editorialContactSignature}<br />\n<br />\n<br />\nReview Guidelines<br />\n<br />\n{$reviewGuidelines}<br />\n', 'This email is sent by the Section Editor to a Reviewer to request that they accept or decline the task of reviewing a submission for a second or greater round of review. It includes the submission as an attachment. This message is used when the Email-Attachment Review Process is selected in Management > Settings > Workflow > Review. (Otherwise see REVIEW_REQUEST_SUBSEQUENT.)'),
('REVIEW_REQUEST_ATTACHED_SUBSEQUENT', 'id_ID', 'Permohonan Review Artikel', '{$reviewerName}:<br />\n<br />\nEmail ini terkait naskah &quot;{$submissionTitle},&quot; yang sedang dalam pertimbangan di {$contextName}.<br />\n<br />\nSetelah review untuk versi naskah sebelumnya, penulis saat ini telah menyerahkan versi revisi naskahnya.  Kami berharap Anda dapat membantu mengevaluasinya.<br />\n<br />\nPanduan Review untuk jurnal ini disertakan di bawah, dan naskah dilampirkan bersama email ini. Review dan rekomendasi Anda, mohon dapat diemailkan ke kami pada {$reviewDueDate}.<br />\n<br />\nMohon sampaikan di email balasan sebelum {$responseDueDate} tentang kesediaan Anda untuk melakukan review.<br />\n<br />\nTerimakasih atas perhatiannya.<br />\n<br />\n{$editorialContactSignature}<br />\n<br />\n<br />\nPanduan Review<br />\n<br />\n{$reviewGuidelines}<br />\n', 'Email ini dari Editor Bagian kepada Reviewer untuk meminta reviewer memberitahukan apakah menerima atau menolak permohonan review untuk ronde kedua atau berikutnya.  Email disertai naskah terlampir bersama email. Pesan ini digunakan saat Proses Review Lampiran Email dipilih di Manajemen > Pengaturan > Alur Kerja > Review. (Selain itu lihat REVIEW_REQUEST_SUBSEQUENT.)'),
('REVIEW_REQUEST_ONECLICK', 'en_US', 'Article Review Request', '{$reviewerName}:<br />\n<br />\nI believe that you would serve as an excellent reviewer of the manuscript, &quot;{$submissionTitle},&quot; which has been submitted to {$contextName}. The submission\'s abstract is inserted below, and I hope that you will consider undertaking this important task for us.<br />\n<br />\nPlease log into the journal web site by {$responseDueDate} to indicate whether you will undertake the review or not, as well as to access the submission and to record your review and recommendation.<br />\n<br />\nThe review itself is due {$reviewDueDate}.<br />\n<br />\nSubmission URL: {$submissionReviewUrl}<br />\n<br />\nThank you for considering this request.<br />\n<br />\n{$editorialContactSignature}<br />\n<br />\n&quot;{$submissionTitle}&quot;<br />\n<br />\n{$submissionAbstract}', 'This email from the Section Editor to a Reviewer requests that the reviewer accept or decline the task of reviewing a submission. It provides information about the submission such as the title and abstract, a review due date, and how to access the submission itself. This message is used when the Standard Review Process is selected in Management > Settings > Workflow > Review, and one-click reviewer access is enabled.'),
('REVIEW_REQUEST_ONECLICK', 'id_ID', 'Permohonan Review Artikel', '{$reviewerName}:<br />\n<br />\nKami memandang bahwa Anda merupakan reviewer yang tepat untuk naskah, &quot;{$submissionTitle},&quot; yang diserahkan ke {$contextName}. Abstrak naskah tersebut disertakan di bawah ini, dan kami berharap Anda berkenan melakukannya.<br />\n<br />\nSilakan login ke website jurnal sebelum {$responseDueDate} untuk memberitahukan apakah Anda bersedia melakukan review atau tidak, juga untuk mengakses naskah dan menyerahkan review beserta rekomendasi Anda. Website jurnal adalah {$contextUrl}<br />\n<br />\nTenggat review ini sendiri adalah {$reviewDueDate}.<br />\n<br />\nURL Naskah: {$submissionReviewUrl}<br />\n<br />\nTerimakasih atas perhatiannya.<br />\n<br />\n{$editorialContactSignature}<br />\n<br />\n&quot;{$submissionTitle}&quot;<br />\n<br />\n{$submissionAbstract}', 'Email ini dari Editor Bagian kepada Reviewer  untuk meminta reviewer memberitahukan apakah menerima atau menolak permohonan review. Email ini memberikan informasi tentang naskah meliputi judul dan abstrak, tenggat review, dan cara mengakses naskah. Pesan ini digunakan saat Proses Review Standar dipilih di Manajemen > Pengaturan > Alur Kerja > Review, dan akses one-click reviewer diaktifkan.'),
('REVIEW_REQUEST_ONECLICK_SUBSEQUENT', 'en_US', 'Article Review Request', '{$reviewerName}:<br />\n<br />\nThis regards the manuscript &quot;{$submissionTitle},&quot; which is under consideration by {$contextName}.<br />\n<br />\nFollowing the review of the previous version of the manuscript, the authors have now submitted a revised version of their paper. We would appreciate it if you could help evaluate it.<br />\n<br />\nPlease log into the journal web site by {$responseDueDate} to indicate whether you will undertake the review or not, as well as to access the submission and to record your review and recommendation.<br />\n<br />\nThe review itself is due {$reviewDueDate}.<br />\n<br />\nSubmission URL: {$submissionReviewUrl}<br />\n<br />\nThank you for considering this request.<br />\n<br />\n{$editorialContactSignature}<br />\n<br />\n&quot;{$submissionTitle}&quot;<br />\n<br />\n{$submissionAbstract}', 'This email from the Section Editor to a Reviewer requests that the reviewer accept or decline the task of reviewing a submission for a second or greater round of review. It provides information about the submission such as the title and abstract, a review due date, and how to access the submission itself. This message is used when the Standard Review Process is selected in Management > Settings > Workflow > Review, and one-click reviewer access is enabled.'),
('REVIEW_REQUEST_ONECLICK_SUBSEQUENT', 'id_ID', 'Permohonan Review Artikel', '{$reviewerName}:<br />\n<br />\nEmail ini terkait naskah &quot;{$submissionTitle},&quot; yang sedang dalam pertimbangan di {$contextName}.<br />\n<br />\nSetelah review untuk versi naskah sebelumnya, penulis saat ini telah menyerahkan versi revisi naskahnya.  Kami berharap Anda dapat membantu mengevaluasinya.<br />\n<br />\nSilakan login ke website jurnal sebelum {$responseDueDate} untuk memberitahukan apakah Anda bersedia melakukan review atau tidak, juga untuk mengakses naskah dan menyerahkan review beserta rekomendasi Anda.<br />\n<br />\nTenggat review ini sendiri adalah {$reviewDueDate}.<br />\n<br />\nURL Naskah: {$submissionReviewUrl}<br />\n<br />\nTerimakasih atas perhatiannya.<br />\n<br />\n{$editorialContactSignature}<br />\n<br />\n&quot;{$submissionTitle}&quot;<br />\n<br />\n{$submissionAbstract}', 'Email ini dari Editor Bagian kepada Reviewer untuk meminta reviewer memberitahukan apakah menerima atau menolak permohonan review untuk ronde kedua atau berikutnya. Email ini memberikan informasi tentang naskah meliputi judul dan abstrak, tenggat review, dan cara mengakses naskah. Pesan ini digunakan saat Proses Review Standar dipilih di Manajemen > Pengaturan > Alur Kerja > Review, dan akses one-click reviewer diaktifkan.'),
('REVIEW_REQUEST_REMIND_AUTO', 'en_US', 'Article Review Request Reminder', '{$reviewerName}:<br />\nJust a gentle reminder of our request for your review of the submission, &quot;{$submissionTitle},&quot; for {$contextName}. We were hoping to have your response by {$responseDueDate}, and this email has been automatically generated and sent with the passing of that date.\n<br />\nI believe that you would serve as an excellent reviewer of the manuscript. The submission\'s abstract is inserted below, and I hope that you will consider undertaking this important task for us.<br />\n<br />\nPlease log into the journal web site to indicate whether you will undertake the review or not, as well as to access the submission and to record your review and recommendation. The web site is {$contextUrl}<br />\n<br />\nThe review itself is due {$reviewDueDate}.<br />\n<br />\nIf you do not have your username and password for the journal\'s web site, you can use this link to reset your password (which will then be emailed to you along with your username). {$passwordResetUrl}<br />\n<br />\nSubmission URL: {$submissionReviewUrl}<br />\n<br />\nThank you for considering this request.<br />\n<br />\n{$editorialContactSignature}<br />\n<br />\n&quot;{$submissionTitle}&quot;<br />\n<br />\n{$submissionAbstract}', 'This email is automatically sent when a reviewer\'s confirmation due date elapses (see Review Options under Settings > Workflow > Review) and one-click reviewer access is disabled. Scheduled tasks must be enabled and configured (see the site configuration file).'),
('REVIEW_REQUEST_REMIND_AUTO', 'id_ID', 'Pengingat Permintaan Review Artikel', '{$reviewerName}:<br />\nSekedar mengingatkan tentang permohonan kami untuk melakukan review terhadap naskah, &quot;{$submissionTitle},&quot; untuk {$contextName}. Kami berharap telah menerima respon Anda pada {$responseDueDate}, dan email ini dikirim secara otomatis seiring terlewatinya tanggal tersebut.\n<br />\nKami memandang bahwa Anda merupakan reviewer yang tepat untuk naskah tersebut. Abstrak naskah tersebut disertakan di bawah ini, dan kami berharap Anda berkenan melakukannya.<br />\n<br />\nSilakan login ke website jurnal untuk memberitahukan apakah Anda bersedia melakukan review atau tidak, juga untuk mengakses naskah dan menyerahkan review beserta rekomendasi Anda. Website jurnal adalah {$contextUrl}<br />\n<br />\nTenggat review ini sendiri adalah {$reviewDueDate}.<br />\n<br />\nJika Anda tidak memiliki nama pengguna dan sandi untuk website jurnal ini, Anda dapat menggunakan tautan berikut untuk mereset sandi Anda (yang selanjutnya akan diemailkan kepada Anda bersama nama pengguna Anda). {$passwordResetUrl}<br />\n<br />\nURL Naskah: {$submissionReviewUrl}<br />\n<br />\nTerimakasih atas perhatiannya.<br />\n<br />\n{$editorialContactSignature}<br />\n<br />\n&quot;{$submissionTitle}&quot;<br />\n<br />\n{$submissionAbstract}', 'Email ini dikirim otomatis saat tenggat konfirmasi terlewati (lihat Opsi Review di menu Pengaturan > Alur Kerja > Review) dan akses one-click reviewer dinonaktifkan. Scheduled tasks must be enabled and configured (see the site configuration file).'),
('REVIEW_REQUEST_REMIND_AUTO_ONECLICK', 'en_US', 'Article Review Request', '{$reviewerName}:<br />\nJust a gentle reminder of our request for your review of the submission, &quot;{$submissionTitle},&quot; for {$contextName}. We were hoping to have your response by {$responseDueDate}, and this email has been automatically generated and sent with the passing of that date.\n<br />\nI believe that you would serve as an excellent reviewer of the manuscript. The submission\'s abstract is inserted below, and I hope that you will consider undertaking this important task for us.<br />\n<br />\nPlease log into the journal web site to indicate whether you will undertake the review or not, as well as to access the submission and to record your review and recommendation.<br />\n<br />\nThe review itself is due {$reviewDueDate}.<br />\n<br />\nSubmission URL: {$submissionReviewUrl}<br />\n<br />\nThank you for considering this request.<br />\n<br />\n{$editorialContactSignature}<br />\n<br />\n&quot;{$submissionTitle}&quot;<br />\n<br />\n{$submissionAbstract}', 'This email is automatically sent when a reviewer\'s confirmation due date elapses (see Review Options under Settings > Workflow > Review) and one-click reviewer access is enabled. Scheduled tasks must be enabled and configured (see the site configuration file).'),
('REVIEW_REQUEST_REMIND_AUTO_ONECLICK', 'id_ID', 'Permohonan Review Artikel', '{$reviewerName}:<br />\nSekedar mengingatkan tentang permohonan kami untuk melakukan review terhadap naskah, &quot;{$submissionTitle},&quot; untuk {$contextName}. Kami berharap telah menerima respon Anda pada {$responseDueDate}, dan email ini dikirim secara otomatis seiring terlewatinya tanggal tersebut.\n<br />\nKami memandang bahwa Anda merupakan reviewer yang tepat untuk naskah tersebut. Abstrak naskah tersebut disertakan di bawah ini, dan kami berharap Anda berkenan melakukannya.<br />\n<br />\nSilakan login ke website jurnal untuk memberitahukan apakah Anda bersedia melakukan review atau tidak, juga untuk mengakses naskah dan menyerahkan review beserta rekomendasi Anda. Website jurnal adalah {$contextUrl}<br />\n<br />\nTenggat review ini sendiri adalah {$reviewDueDate}.<br />\n<br />\nURL Naskah: {$submissionReviewUrl}<br />\n<br />\nTerimakasih atas perhatiannya.<br />\n<br />\n{$editorialContactSignature}<br />\n<br />\n&quot;{$submissionTitle}&quot;<br />\n<br />\n{$submissionAbstract}', 'Email ini dikirim otomatis saat tenggat konfirmasi reviewer terlewati (lihat Opsi Review di menu Pengaturan > Alur Kerja > Review) dan akses one-click reviewer diaktifkan. Tugas Terjadwal harus diaktifkan dan diatur (lihat file konfigurasi website).'),
('REVIEW_REQUEST_SUBSEQUENT', 'en_US', 'Article Review Request', '{$reviewerName}:<br />\n<br />\nThis regards the manuscript &quot;{$submissionTitle},&quot; which is under consideration by {$contextName}.<br />\n<br />\nFollowing the review of the previous version of the manuscript, the authors have now submitted a revised version of their paper. We would appreciate it if you could help evaluate it.<br />\n<br />\nPlease log into the journal web site by {$responseDueDate} to indicate whether you will undertake the review or not, as well as to access the submission and to record your review and recommendation. The web site is {$contextUrl}<br />\n<br />\nThe review itself is due {$reviewDueDate}.<br />\n<br />\nIf you do not have your username and password for the journal\'s web site, you can use this link to reset your password (which will then be emailed to you along with your username). {$passwordResetUrl}<br />\n<br />\nSubmission URL: {$submissionReviewUrl}<br />\n<br />\nThank you for considering this request.<br />\n<br />\n{$editorialContactSignature}<br />\n<br />\n&quot;{$submissionTitle}&quot;<br />\n<br />\n{$submissionAbstract}', 'This email from the Section Editor to a Reviewer requests that the reviewer accept or decline the task of reviewing a submission for a second or greater round of review. It provides information about the submission such as the title and abstract, a review due date, and how to access the submission itself. This message is used when the Standard Review Process is selected in Management > Settings > Workflow > Review. (Otherwise see REVIEW_REQUEST_ATTACHED_SUBSEQUENT.)'),
('REVIEW_REQUEST_SUBSEQUENT', 'id_ID', 'Permohonan Review Artikel', '{$reviewerName}:<br />\n<br />\nEmail ini terkait naskah &quot;{$submissionTitle},&quot; yang sedang dalam pertimbangan di {$contextName}.<br />\n<br />\nSetelah review untuk versi naskah sebelumnya, penulis saat ini telah menyerahkan versi revisi naskahnya.  Kami berharap Anda dapat membantu mengevaluasinya.<br />\n<br />\nSilakan login ke website jurnal sebelum {$responseDueDate} untuk memberitahukan apakah Anda bersedia melakukan review atau tidak, juga untuk mengakses naskah dan menyerahkan review beserta rekomendasi Anda. Website jurnal adalah {$contextUrl}<br />\n<br />\nTenggat review ini sendiri adalah {$reviewDueDate}.<br />\n<br />\nJika Anda tidak memiliki nama pengguna dan sandi untuk website jurnal ini, Anda dapat menggunakan tautan berikut untuk mereset sandi Anda (yang selanjutnya akan diemailkan kepada Anda bersama nama pengguna Anda). {$passwordResetUrl}<br />\n<br />\nURL Naskah: {$submissionReviewUrl}<br />\n<br />\nTerimakasih atas perhatiannya.<br />\n<br />\n{$editorialContactSignature}<br />\n<br />\n&quot;{$submissionTitle}&quot;<br />\n<br />\n{$submissionAbstract}', 'Email ini dari Editor Bagian kepada Reviewer untuk meminta reviewer memberitahukan apakah menerima atau menolak permohonan review untuk ronde kedua atau berikutnya. Email ini memberikan informasi tentang naskah meliputi judul dan abstrak, tenggat review, dan cara mengakses naskah. Pesan ini digunakan saat Proses Review Standar dipilih di Manajemen > Pengaturan > Alur Kerja > Review. (Selain itu lihat REVIEW_REQUEST_ATTACHED_SUBSEQUENT.)'),
('REVISED_VERSION_NOTIFY', 'en_US', 'Revised Version Uploaded', 'Editors:<br />\n<br />\nA revised version of &quot;{$submissionTitle}&quot; has been uploaded by the author {$authorName}.<br />\n<br />\nSubmission URL: {$submissionUrl}<br />\n<br />\n{$editorialContactSignature}', 'This email is automatically sent to the assigned editor when author uploads a revised version of an article.'),
('REVISED_VERSION_NOTIFY', 'id_ID', 'Versi Revisi telah Diunggah', 'Editor:<br />\n<br />\nVersi revisi dari &quot;{$submissionTitle}&quot; telah diunggah oleh penulis {$authorName}.<br />\n<br />\nURL naskah: {$submissionUrl}<br />\n<br />\n{$editorialContactSignature}', 'Email ini dikirim secara otomatis ke editor yang ditugaskan saat penulis mengunggah naskah versi revisi.'),
('STATISTICS_REPORT_NOTIFICATION', 'en_US', 'Editorial activity for {$month}, {$year}', '\n{$name}, <br />\n<br />\nYour journal health report for {$month}, {$year} is now available. Your key stats for this month are below.<br />\n<ul>\n	<li>New submissions this month: {$newSubmissions}</li>\n	<li>Declined submissions this month: {$declinedSubmissions}</li>\n	<li>Accepted submissions this month: {$acceptedSubmissions}</li>\n	<li>Total submissions in the system: {$totalSubmissions}</li>\n</ul>\nLogin to the journal to view more detailed <a href=\"{$editorialStatsLink}\">editorial trends</a> and <a href=\"{$publicationStatsLink}\">published article stats</a>. A full copy of this month\'s editorial trends is attached.<br />\n<br />\nSincerely,<br />\n{$principalContactSignature}', 'This email is automatically sent monthly to editors and journal managers to provide them a system health overview.'),
('STATISTICS_REPORT_NOTIFICATION', 'id_ID', 'Kagiatan redaksi selama {$month}, {$year}', '\n{$name}, <br />\n<br />\nLaporan kondisi jurnal Anda untuk {$month}, {$year} sudah tersedia. Statistik utama Anda bulan ini tersaji sebagai berikut.<br />\n<ul>\n	<li>Naskah baru yang masuk bulan ini: {$newSubmissions}</li>\n	<li>Naskah ditolak bulan ini: {$declinedSubmissions}</li>\n	<li>Naskah yang diterima bulan ini: {$acceptedSubmissions}</li>\n	<li>Total naskah dalam sistem: {$totalSubmissions}</li>\n</ul>\nLogin untuk melihat lebih rinci <a href=\"{$editorialStatsLink}\">trend editorial</a> dan <a href=\"{$publicationStatsLink}\">statistik artikel yang dipublikasikan</a>. Salinan lengkap trend bulan ini terlampir.<br />\n<br />\nSalam Hormat,<br />\n{$principalContactSignature}', 'Email ini dikirim secara otomatis setiap bulan kepada editor dan manajer jurnal untuk menyediakan pratinjau kestabilan sistem.'),
('SUBMISSION_ACK', 'en_US', 'Submission Acknowledgement', '{$authorName}:<br />\n<br />\nThank you for submitting the manuscript, &quot;{$submissionTitle}&quot; to {$contextName}. With the online journal management system that we are using, you will be able to track its progress through the editorial process by logging in to the journal web site:<br />\n<br />\nSubmission URL: {$submissionUrl}<br />\nUsername: {$authorUsername}<br />\n<br />\nIf you have any questions, please contact me. Thank you for considering this journal as a venue for your work.<br />\n<br />\n{$editorialContactSignature}', 'This email, when enabled, is automatically sent to an author when they complete the process of submitting a manuscript to the journal. It provides information about tracking the submission through the process and thanks the author for the submission.'),
('SUBMISSION_ACK', 'id_ID', 'Ucapan Terimakasih atas Penyerahan Naskah', '{$authorName}:<br />\n<br />\nTerimakasih telah menyerahkan naskah, &quot;{$submissionTitle}&quot; ke {$contextName}. Dengan sistem manajemenn jurnal online yang kami gunakan, Anda dapat memantau kemajuan proses editorial naskah Anda melalui:<br />\n<br />\nURL Naskah: {$submissionUrl}<br />\nNama pengguna: {$authorUsername}<br />\n<br />\nJika ada pertanyaan, silakan hubungi kami. Terimakasih telah mempercayakan publikasi karya Anda di jurnal kami.<br />\n<br />\n{$editorialContactSignature}', 'Email ini, jika diaktifkan, secara otomatis dikirimkan ke penulis saat menyelesaikan proses penyerahan naskah ke jurnal. Email ini berisi informasi tentang pemantauan kemajuan proses editorial dan ucaan terima kasih atas naskah yang dikirimkan.'),
('SUBMISSION_ACK_NOT_USER', 'en_US', 'Submission Acknowledgement', 'Hello,<br />\n<br />\n{$submitterName} has submitted the manuscript, &quot;{$submissionTitle}&quot; to {$contextName}. <br />\n<br />\nIf you have any questions, please contact me. Thank you for considering this journal as a venue for your work.<br />\n<br />\n{$editorialContactSignature}', 'This email, when enabled, is automatically sent to the other authors who are not users within OJS specified during the submission process.'),
('SUBMISSION_ACK_NOT_USER', 'id_ID', 'Pemberitahuan Penyerahan Naskah', 'Hello,<br />\n<br />\n{$submitterName} telah menyerahkan naskah, &quot;{$submissionTitle}&quot; ke {$contextName}. <br />\n<br />\nJika ada pertanyaan, silakan hubungi kami. Terimakasih telah mempercayakan publikasi karya Anda di jurnal kami.<br />\n<br />\n{$editorialContactSignature}', 'Email ini, jika diaktifkan, secara otomatis dikirimkan ke penulis saat menyelesaikan proses penyerahan naskah ke jurnal. Email ini memberikan informasi mengenai pemantauan kemajuan proses editorial dan mengucapkan terimakasih atas naskah yang dikirimkan.'),
('SUBSCRIPTION_AFTER_EXPIRY', 'en_US', 'Subscription Expired', '{$subscriberName}:<br />\n<br />\nYour {$contextName} subscription has expired.<br />\n<br />\n{$subscriptionType}<br />\nExpiry date: {$expiryDate}<br />\n<br />\nTo renew your subscription, please go to the journal website. You are able to log in to the system with your username, &quot;{$username}&quot;.<br />\n<br />\nIf you have any questions, please feel free to contact me.<br />\n<br />\n{$subscriptionContactSignature}', 'This email notifies a subscriber that their subscription has expired. It provides the journal\'s URL along with instructions for access.'),
('SUBSCRIPTION_AFTER_EXPIRY', 'id_ID', 'Langganan Berakhir', '{$subscriberName}:<br />\n<br />\nLangganan {$contextName} Anda telah berakhir.<br />\n<br />\n{$subscriptionType}<br />\nTanggal berakhir: {$expiryDate}<br />\n<br />\nUntuk memperbaharui langganan Anda, silakan kunjungi website jurnal.  Anda dapat login dengan menggunakan nama pengguna Anda, &quot;{$username}&quot;.<br />\n<br />\nJika ada pertanyaan, silakan hubungi kami.<br />\n<br />\n{$subscriptionContactSignature}', 'Email ini memberitahu seorang pelanggan bahwa langganannya telah berakhir.  Email ini memberikan URL jurnal beserta petunjuk aksesnya.'),
('SUBSCRIPTION_AFTER_EXPIRY_LAST', 'en_US', 'Subscription Expired - Final Reminder', '{$subscriberName}:<br />\n<br />\nYour {$contextName} subscription has expired.<br />\nPlease note that this is the final reminder that will be emailed to you.<br />\n<br />\n{$subscriptionType}<br />\nExpiry date: {$expiryDate}<br />\n<br />\nTo renew your subscription, please go to the journal website. You are able to log in to the system with your username, &quot;{$username}&quot;.<br />\n<br />\nIf you have any questions, please feel free to contact me.<br />\n<br />\n{$subscriptionContactSignature}', 'This email notifies a subscriber that their subscription has expired. It provides the journal\'s URL along with instructions for access.'),
('SUBSCRIPTION_AFTER_EXPIRY_LAST', 'id_ID', 'Langganan Berakhir - Pengingat Terakhir', '{$subscriberName}:<br />\n<br />\nLangganan {$contextName} Anda telah berakhir.<br />\nIni adalah pengingat terakhir yang diemailkan kepada Anda.<br />\n<br />\n{$subscriptionType}<br />\nTanggal berakhir: {$expiryDate}<br />\n<br />\nUntuk memperbaharui langganan Anda, silakan kunjungi website jurnal.  Anda dapat login dengan menggunakan nama pengguna Anda, &quot;{$username}&quot;.<br />\n<br />\nJika ada pertanyaan, silakan hubungi kami.<br />\n<br />\n{$subscriptionContactSignature}', 'Email ini memberitahu seorang pelanggan bahwa langganannya telah berakhir.  Email ini memberikan URL jurnal beserta petunjuk aksesnya.'),
('SUBSCRIPTION_BEFORE_EXPIRY', 'en_US', 'Notice of Subscription Expiry', '{$subscriberName}:<br />\n<br />\nYour {$contextName} subscription is about to expire.<br />\n<br />\n{$subscriptionType}<br />\nExpiry date: {$expiryDate}<br />\n<br />\nTo ensure the continuity of your access to this journal, please go to the journal website and renew your subscription. You are able to log in to the system with your username, &quot;{$username}&quot;.<br />\n<br />\nIf you have any questions, please feel free to contact me.<br />\n<br />\n{$subscriptionContactSignature}', 'This email notifies a subscriber that their subscription will soon expire. It provides the journal\'s URL along with instructions for access.'),
('SUBSCRIPTION_BEFORE_EXPIRY', 'id_ID', 'Pemberitahuan Tanggal Berakhir Langganan', '{$subscriberName}:<br />\n<br />\nLangganan {$contextName} Anda hampir berakhir.<br />\n<br />\n{$subscriptionType}<br />\nTanggal berakhir: {$expiryDate}<br />\n<br />\nUntuk terus memperoleh akses ke jurnal ini, silakan kunjungi website jurnal dan perbaharui langganan Anda. Anda dapat login menggunakan nama pengguna Anda, &quot;{$username}&quot;.<br />\n<br />\nJika ada pertanyaan, silakan hubungi kami.<br />\n<br />\n{$subscriptionContactSignature}', 'Email ini memberitahu seorang pelanggan bahwa langganannya hampir berakhir.  Email ini memberikan URL jurnal beserta petunjuk aksesnya.'),
('SUBSCRIPTION_NOTIFY', 'en_US', 'Subscription Notification', '{$subscriberName}:<br />\n<br />\nYou have now been registered as a subscriber in our online journal management system for {$contextName}, with the following subscription:<br />\n<br />\n{$subscriptionType}<br />\n<br />\nTo access content that is available only to subscribers, simply log in to the system with your username, &quot;{$username}&quot;.<br />\n<br />\nOnce you have logged in to the system you can change your profile details and password at any point.<br />\n<br />\nPlease note that if you have an institutional subscription, there is no need for users at your institution to log in, since requests for subscription content will be automatically authenticated by the system.<br />\n<br />\nIf you have any questions, please feel free to contact me.<br />\n<br />\n{$subscriptionContactSignature}', 'This email notifies a registered reader that the Manager has created a subscription for them. It provides the journal\'s URL along with instructions for access.'),
('SUBSCRIPTION_NOTIFY', 'id_ID', 'Pemberitahuan Langganan', '{$subscriberName}:<br />\n<br />\nAnda sekarang telah terdaftar sebagai pelanggan di sistem manajemen jurnal online kami, {$contextName}, dengan jenis langganan:<br />\n<br />\n{$subscriptionType}<br />\n<br />\nUntuk mengakses konten yang hanya tersedia bagi pelanggan, silakan login ke sistem dengan menggunakan nama pengguna Anda, &quot;{$username}&quot;.<br />\n<br />\nSetelah login, Anda dapat mengubah detail profil Anda dan sandi Anda kapanpun Anda kehendaki.<br />\n<br />\nJika Anda memiliki langganan institusi, pengguna di institusi Anda tidak perlu login karena semua akses secara otomatis diotentikasi oleh sistem.<br />\n<br />\nJika ada pertanyaan, silakan hubungi kami.<br />\n<br />\n{$subscriptionContactSignature}', 'Email ini memberitahu pembaca terdaftar bahwa Manajer telah membuat akses langganan untuk mereka.  Email ini memberikan URL jurnal beserta petunjuk aksesnya.'),
('SUBSCRIPTION_PURCHASE_INDL', 'en_US', 'Subscription Purchase: Individual', 'An individual subscription has been purchased online for {$contextName} with the following details.<br />\n<br />\nSubscription Type:<br />\n{$subscriptionType}<br />\n<br />\nUser:<br />\n{$userDetails}<br />\n<br />\nMembership Information (if provided):<br />\n{$membership}<br />\n<br />\nTo view or edit this subscription, please use the following URL.<br />\n<br />\nSubscription URL: {$subscriptionUrl}<br />\n', 'This email notifies the Subscription Manager that an individual subscription has been purchased online. It provides summary information about the subscription and a quick access link to the purchased subscription.'),
('SUBSCRIPTION_PURCHASE_INDL', 'id_ID', 'Pembelian Langganan: Individu', 'Sebuah langganan individu telah dibeli online untuk {$contextName} dengan rincian berikut.<br />\n<br />\nJenis Langganan:<br />\n{$subscriptionType}<br />\n<br />\nPengguna:<br />\n{$userDetails}<br />\n<br />\nInformasi Keanggotaan (jika ada):<br />\n{$membership}<br />\n<br />\nUntuk melihat atau mengubah langganan ini, silakan gunakan URL berikut ini.<br />\n<br />\nURL Langganan: {$subscriptionUrl}<br />\n', 'Email ini memberitahu Manajer Langganan bahwa sebuah langganan individu telah dibeli online.  Email ini memberikan ringkasan informasi tentang langganan tersebut beserta tautan untuk mengakses langganan yang dibeli.'),
('SUBSCRIPTION_PURCHASE_INSTL', 'en_US', 'Subscription Purchase: Institutional', 'An institutional subscription has been purchased online for {$contextName} with the following details. To activate this subscription, please use the provided Subscription URL and set the subscription status to \'Active\'.<br />\n<br />\nSubscription Type:<br />\n{$subscriptionType}<br />\n<br />\nInstitution:<br />\n{$institutionName}<br />\n{$institutionMailingAddress}<br />\n<br />\nDomain (if provided):<br />\n{$domain}<br />\n<br />\nIP Ranges (if provided):<br />\n{$ipRanges}<br />\n<br />\nContact Person:<br />\n{$userDetails}<br />\n<br />\nMembership Information (if provided):<br />\n{$membership}<br />\n<br />\nTo view or edit this subscription, please use the following URL.<br />\n<br />\nSubscription URL: {$subscriptionUrl}<br />\n', 'This email notifies the Subscription Manager that an institutional subscription has been purchased online. It provides summary information about the subscription and a quick access link to the purchased subscription.'),
('SUBSCRIPTION_PURCHASE_INSTL', 'id_ID', 'Pembelian Langganan: Institusi', 'Sebuah langganan institusi telah dibeli online untuk {$contextName} dengan rincian berikut. Untuk mengaktifkan langganan ini, silakan gunakan URL Langganan dan jadikan status langganan ke \'Aktif\'.<br />\n<br />\nJenis Langganan:<br />\n{$subscriptionType}<br />\n<br />\nInstitusi:<br />\n{$institutionName}<br />\n{$institutionMailingAddress}<br />\n<br />\nDomain (jika ada):<br />\n{$domain}<br />\n<br />\nIP Ranges (jika ada):<br />\n{$ipRanges}<br />\n<br />\nContact Person:<br />\n{$userDetails}<br />\n<br />\nInformasi Keanggotaan (jika ada):<br />\n{$membership}<br />\n<br />\nUntuk melihat atau mengubah langganan ini, silakan gunakan URL berikut ini.<br />\n<br />\nURL Langganan: {$subscriptionUrl}<br />\n', 'Email ini memberitahu Manajer Langganan bahwa sebuah langganan institusi telah dibeli online.  Email ini memberikan ringkasan informasi tentang langganan tersebut beserta tautan untuk mengakses langganan yang dibeli.'),
('SUBSCRIPTION_RENEW_INDL', 'en_US', 'Subscription Renewal: Individual', 'An individual subscription has been renewed online for {$contextName} with the following details.<br />\n<br />\nSubscription Type:<br />\n{$subscriptionType}<br />\n<br />\nUser:<br />\n{$userDetails}<br />\n<br />\nMembership Information (if provided):<br />\n{$membership}<br />\n<br />\nTo view or edit this subscription, please use the following URL.<br />\n<br />\nSubscription URL: {$subscriptionUrl}<br />\n', 'This email notifies the Subscription Manager that an individual subscription has been renewed online. It provides summary information about the subscription and a quick access link to the renewed subscription.'),
('SUBSCRIPTION_RENEW_INDL', 'id_ID', 'Pembaharuan Langganan: Individu', 'Sebuah langganan individu telah diperbaharui online untuk {$contextName} dengan rincian berikut.<br />\n<br />\nJenis Langganan:<br />\n{$subscriptionType}<br />\n<br />\nPengguna:<br />\n{$userDetails}<br />\n<br />\nInformasi Keanggotaan (jika ada):<br />\n{$membership}<br />\n<br />\nUntuk melihat atau mengubah langganan ini, silakan gunakan URL berikut ini.<br />\n<br />\nURL Langganan: {$subscriptionUrl}<br />\n', 'Email ini memberitahu Manajer Langganan bahwa sebuah langganan individu telah diperbaharui online.  Email ini memberikan ringkasan informasi tentang langganan tersebut beserta tautan untuk mengakses langganan yang diperbaharui.'),
('SUBSCRIPTION_RENEW_INSTL', 'en_US', 'Subscription Renewal: Institutional', 'An institutional subscription has been renewed online for {$contextName} with the following details.<br />\n<br />\nSubscription Type:<br />\n{$subscriptionType}<br />\n<br />\nInstitution:<br />\n{$institutionName}<br />\n{$institutionMailingAddress}<br />\n<br />\nDomain (if provided):<br />\n{$domain}<br />\n<br />\nIP Ranges (if provided):<br />\n{$ipRanges}<br />\n<br />\nContact Person:<br />\n{$userDetails}<br />\n<br />\nMembership Information (if provided):<br />\n{$membership}<br />\n<br />\nTo view or edit this subscription, please use the following URL.<br />\n<br />\nSubscription URL: {$subscriptionUrl}<br />\n', 'This email notifies the Subscription Manager that an institutional subscription has been renewed online. It provides summary information about the subscription and a quick access link to the renewed subscription.'),
('SUBSCRIPTION_RENEW_INSTL', 'id_ID', 'Pembaharuan Langganan: Institusi', 'Sebuah langganan institusi telah diperbaharui online untuk {$contextName} dengan rincian berikut.<br />\n<br />\nJenis Langganan:<br />\n{$subscriptionType}<br />\n<br />\nInstitusi:<br />\n{$institutionName}<br />\n{$institutionMailingAddress}<br />\n<br />\nDomain (jika ada):<br />\n{$domain}<br />\n<br />\nIP Ranges (jika ada):<br />\n{$ipRanges}<br />\n<br />\nContact Person:<br />\n{$userDetails}<br />\n<br />\nInformasi Keanggotaan (jika ada):<br />\n{$membership}<br />\n<br />\nUntuk melihat atau mengubah langganan ini, silakan gunakan URL berikut ini.<br />\n<br />\nURL Langganan: {$subscriptionUrl}<br />\n', 'Email ini memberitahu Manajer Langganan bahwa sebuah langganan institusi telah diperbaharui online.  Email ini memberikan ringkasan informasi tentang langganan tersebut beserta tautan untuk mengakses langganan yang diperbaharui.'),
('USER_REGISTER', 'en_US', 'Journal Registration', '{$userFullName}<br />\n<br />\nYou have now been registered as a user with {$contextName}. We have included your username and password in this email, which are needed for all work with this journal through its website. At any point, you can ask to be removed from the journal\'s list of users by contacting me.<br />\n<br />\nUsername: {$username}<br />\nPassword: {$password}<br />\n<br />\nThank you,<br />\n{$principalContactSignature}', 'This email is sent to a newly registered user to welcome them to the system and provide them with a record of their username and password.'),
('USER_REGISTER', 'id_ID', 'Registrasi Jurnal', '{$userFullName}<br />\n<br />\nAnda sekarang telah terdaftar sebagai pengguna di {$contextName}.  Kami sertakan nama pengguna dan sandi Anda di email ini, keduanya diperlukan untuk semua kegiatan melalui website jurnal ini. Anda dapat keluar dari daftar pengguna jurnal kapan saja dengan menghubungi kami.<br />\n<br />\nNama pengguna: {$username}<br />\nSandi: {$password}<br />\n<br />\nTerimakasih,<br />\n{$principalContactSignature}', 'Email ini dikirimkan ke pengguna baru untuk menyambut dan memberikan informasi nama pengguna dan sandi.'),
('USER_VALIDATE', 'en_US', 'Validate Your Account', '{$userFullName}<br />\n<br />\nYou have created an account with {$contextName}, but before you can start using it, you need to validate your email account. To do this, simply follow the link below:<br />\n<br />\n{$activateUrl}<br />\n<br />\nThank you,<br />\n{$principalContactSignature}', 'This email is sent to a newly registered user to validate their email account.'),
('USER_VALIDATE', 'id_ID', 'Validasi Akun Anda', '{$userFullName}<br />\n<br />\nAnda telah membuat akun di {$contextName}.  Sebelum dapat menggunakannya, Anda perlu melakukan validasi akun email. Untuk melakukannya, klik tautan berikut ini:<br />\n<br />\n{$activateUrl}<br />\n<br />\nTerimakasih,<br />\n{$principalContactSignature}', 'Email ini dikirim ke pengguna baru agar melakukan validasi email yang mereka gunakan untuk registrasi.');

-- --------------------------------------------------------

--
-- Struktur dari tabel `email_templates_settings`
--

CREATE TABLE `email_templates_settings` (
  `email_id` bigint(20) NOT NULL,
  `locale` varchar(14) NOT NULL DEFAULT '',
  `setting_name` varchar(255) NOT NULL,
  `setting_value` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `event_log`
--

CREATE TABLE `event_log` (
  `log_id` bigint(20) NOT NULL,
  `assoc_type` bigint(20) NOT NULL,
  `assoc_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `date_logged` datetime NOT NULL,
  `event_type` bigint(20) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `is_translated` smallint(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data untuk tabel `event_log`
--

INSERT INTO `event_log` (`log_id`, `assoc_type`, `assoc_id`, `user_id`, `date_logged`, `event_type`, `message`, `is_translated`) VALUES
(1, 1048585, 1, 1, '2024-09-29 01:14:23', 268435458, 'submission.event.general.metadataUpdated', 0),
(2, 1048585, 1, 1, '2024-09-29 01:15:26', 268435458, 'submission.event.general.metadataUpdated', 0),
(3, 1048585, 1, 1, '2024-09-29 01:17:21', 268435458, 'submission.event.general.metadataUpdated', 0),
(4, 1048585, 1, 1, '2024-09-29 01:17:37', 268435458, 'submission.event.general.metadataUpdated', 0),
(5, 1048585, 1, 1, '2024-09-29 01:18:23', 268435458, 'submission.event.general.metadataUpdated', 0),
(6, 1048585, 1, 1, '2024-09-29 01:18:40', 268435458, 'submission.event.general.metadataUpdated', 0),
(7, 1048585, 1, 1, '2024-09-29 01:18:48', 268435458, 'submission.event.general.metadataUpdated', 0),
(8, 1048585, 1, 1, '2024-09-29 01:19:07', 268435458, 'submission.event.general.metadataUpdated', 0),
(9, 515, 1, 1, '2024-09-29 01:21:15', 1342177281, 'submission.event.fileUploaded', 0),
(10, 1048585, 1, 1, '2024-09-29 01:21:15', 1342177288, 'submission.event.fileRevised', 0),
(11, 515, 1, 1, '2024-09-29 01:22:24', 1342177296, 'submission.event.fileEdited', 0),
(12, 1048585, 1, 1, '2024-09-29 01:22:24', 1342177296, 'submission.event.fileEdited', 0),
(13, 1048585, 1, 1, '2024-09-29 01:24:00', 268435458, 'submission.event.general.metadataUpdated', 0),
(14, 515, 2, 1, '2024-09-29 01:24:01', 1342177281, 'submission.event.fileUploaded', 0),
(15, 1048585, 1, 1, '2024-09-29 01:24:01', 1342177288, 'submission.event.fileRevised', 0),
(16, 1048585, 1, 1, '2024-09-29 01:24:01', 268435462, 'publication.event.published', 0),
(17, 1048585, 1, 1, '2024-09-29 01:38:35', 268435463, 'publication.event.unpublished', 0),
(18, 1048585, 1, 1, '2024-09-29 01:38:35', 268435462, 'publication.event.scheduled', 0),
(19, 1048585, 1, 1, '2024-09-29 01:38:50', 268435458, 'submission.event.general.metadataUpdated', 0),
(20, 1048585, 4, 1, '2024-09-29 01:46:00', 268435458, 'submission.event.general.metadataUpdated', 0),
(21, 1048585, 4, 1, '2024-09-29 01:46:09', 268435458, 'submission.event.general.metadataUpdated', 0),
(22, 1048585, 4, 1, '2024-09-29 01:46:49', 268435458, 'submission.event.general.metadataUpdated', 0),
(23, 515, 3, 1, '2024-09-29 01:47:18', 1342177281, 'submission.event.fileUploaded', 0),
(24, 1048585, 4, 1, '2024-09-29 01:47:18', 1342177288, 'submission.event.fileRevised', 0),
(25, 515, 3, 1, '2024-09-29 01:47:22', 1342177296, 'submission.event.fileEdited', 0),
(26, 1048585, 4, 1, '2024-09-29 01:47:22', 1342177296, 'submission.event.fileEdited', 0),
(27, 1048585, 4, 1, '2024-09-29 01:48:06', 268435458, 'submission.event.general.metadataUpdated', 0),
(28, 515, 4, 1, '2024-09-29 01:48:06', 1342177281, 'submission.event.fileUploaded', 0),
(29, 1048585, 4, 1, '2024-09-29 01:48:06', 1342177288, 'submission.event.fileRevised', 0),
(30, 1048585, 4, 1, '2024-09-29 01:48:06', 268435462, 'publication.event.scheduled', 0),
(31, 1048585, 4, 1, '2024-09-29 01:49:18', 268435462, 'publication.event.published', 0),
(32, 1048585, 4, 1, '2024-09-29 02:47:53', 268435463, 'publication.event.unpublished', 0),
(33, 1048585, 4, 1, '2024-09-29 02:47:53', 268435462, 'publication.event.scheduled', 0),
(34, 1048585, 4, 1, '2024-09-29 02:49:55', 268435462, 'publication.event.published', 0),
(35, 1048585, 4, 1, '2024-09-29 02:50:49', 268435463, 'publication.event.unpublished', 0),
(36, 1048585, 4, 1, '2024-09-29 02:50:49', 268435462, 'publication.event.scheduled', 0),
(37, 1048585, 4, 1, '2024-09-29 02:51:41', 268435462, 'publication.event.published', 0),
(38, 515, 5, 1, '2024-09-29 02:52:31', 1342177281, 'submission.event.fileUploaded', 0),
(39, 1048585, 4, 1, '2024-09-29 02:52:31', 1342177288, 'submission.event.fileRevised', 0),
(40, 515, 6, 1, '2024-09-29 02:53:13', 1342177281, 'submission.event.fileUploaded', 0),
(41, 1048585, 4, 1, '2024-09-29 02:53:13', 1342177288, 'submission.event.fileRevised', 0),
(42, 1048585, 4, 1, '2024-09-29 02:54:18', 268435463, 'publication.event.unpublished', 0),
(43, 1048585, 4, 1, '2024-09-29 02:54:18', 268435462, 'publication.event.scheduled', 0),
(44, 515, 7, 1, '2024-09-29 02:58:18', 1342177281, 'submission.event.fileUploaded', 0),
(45, 1048585, 4, 1, '2024-09-29 02:58:18', 1342177288, 'submission.event.fileRevised', 0),
(46, 515, 7, 1, '2024-09-29 02:58:23', 1342177296, 'submission.event.fileEdited', 0),
(47, 1048585, 4, 1, '2024-09-29 02:58:23', 1342177296, 'submission.event.fileEdited', 0),
(48, 1048585, 4, 1, '2024-09-29 02:59:07', 268435462, 'publication.event.published', 0),
(49, 1048585, 4, 1, '2024-09-29 03:06:07', 268435463, 'publication.event.unpublished', 0),
(50, 515, 8, 1, '2024-09-29 03:06:48', 1342177281, 'submission.event.fileUploaded', 0),
(51, 1048585, 4, 1, '2024-09-29 03:06:48', 1342177288, 'submission.event.fileRevised', 0),
(52, 515, 8, 1, '2024-09-29 03:06:52', 1342177296, 'submission.event.fileEdited', 0),
(53, 1048585, 4, 1, '2024-09-29 03:06:52', 1342177296, 'submission.event.fileEdited', 0),
(54, 515, 3, 1, '2024-09-29 03:06:58', 1342177282, 'submission.event.fileDeleted', 0),
(55, 515, 7, 1, '2024-09-29 03:06:58', 1342177282, 'submission.event.fileDeleted', 0),
(56, 1048585, 6, 1, '2024-09-29 03:09:11', 268435458, 'submission.event.general.metadataUpdated', 0),
(57, 1048585, 1, 1, '2024-09-29 03:09:48', 268435458, 'submission.event.general.metadataUpdated', 0),
(58, 1048585, 2, 1, '2024-09-29 03:09:48', 268435458, 'submission.event.general.metadataUpdated', 0),
(59, 1048585, 3, 1, '2024-09-29 03:09:48', 268435458, 'submission.event.general.metadataUpdated', 0),
(60, 1048585, 4, 1, '2024-09-29 03:09:48', 268435458, 'submission.event.general.metadataUpdated', 0),
(61, 1048585, 5, 1, '2024-09-29 03:09:48', 268435458, 'submission.event.general.metadataUpdated', 0),
(62, 1048585, 6, 1, '2024-09-29 03:09:48', 268435458, 'submission.event.general.metadataUpdated', 0),
(63, 1048585, 7, 1, '2024-09-29 03:09:48', 268435458, 'submission.event.general.metadataUpdated', 0),
(64, 1048585, 8, 1, '2024-09-29 03:12:56', 268435458, 'submission.event.general.metadataUpdated', 0),
(65, 1048585, 8, 1, '2024-09-29 03:13:36', 268435458, 'submission.event.general.metadataUpdated', 0),
(66, 515, 9, 1, '2024-09-29 03:13:54', 1342177281, 'submission.event.fileUploaded', 0),
(67, 1048585, 8, 1, '2024-09-29 03:13:54', 1342177288, 'submission.event.fileRevised', 0),
(68, 515, 9, 1, '2024-09-29 03:14:38', 1342177296, 'submission.event.fileEdited', 0),
(69, 1048585, 8, 1, '2024-09-29 03:14:38', 1342177296, 'submission.event.fileEdited', 0),
(70, 1048585, 8, 1, '2024-09-29 03:14:57', 268435458, 'submission.event.general.metadataUpdated', 0),
(71, 515, 10, 1, '2024-09-29 03:14:57', 1342177281, 'submission.event.fileUploaded', 0),
(72, 1048585, 8, 1, '2024-09-29 03:14:57', 1342177288, 'submission.event.fileRevised', 0),
(73, 1048585, 8, 1, '2024-09-29 03:14:58', 268435462, 'publication.event.scheduled', 0),
(74, 515, 11, 1, '2024-09-29 03:20:39', 1342177281, 'submission.event.fileUploaded', 0),
(75, 1048585, 8, 1, '2024-09-29 03:20:39', 1342177288, 'submission.event.fileRevised', 0),
(76, 515, 11, 1, '2024-09-29 03:20:42', 1342177296, 'submission.event.fileEdited', 0),
(77, 1048585, 8, 1, '2024-09-29 03:20:42', 1342177296, 'submission.event.fileEdited', 0),
(78, 1048585, 8, 1, '2024-09-29 03:23:48', 268435462, 'publication.event.published', 0),
(79, 1048585, 8, 1, '2024-09-29 05:56:17', 268435463, 'publication.event.unpublished', 0),
(80, 1048585, 8, 1, '2024-09-29 05:56:17', 268435462, 'publication.event.scheduled', 0),
(81, 515, 12, 1, '2024-09-29 06:01:08', 1342177281, 'submission.event.fileUploaded', 0),
(82, 1048585, 8, 1, '2024-09-29 06:01:08', 1342177288, 'submission.event.fileRevised', 0),
(83, 1048585, 9, 1, '2024-09-29 06:21:36', 268435458, 'submission.event.general.metadataUpdated', 0),
(84, 1048585, 9, 1, '2024-09-29 06:22:06', 268435458, 'submission.event.general.metadataUpdated', 0),
(85, 515, 13, 1, '2024-09-29 06:23:46', 1342177281, 'submission.event.fileUploaded', 0),
(86, 1048585, 9, 1, '2024-09-29 06:23:46', 1342177288, 'submission.event.fileRevised', 0),
(87, 515, 13, 1, '2024-09-29 06:23:56', 1342177282, 'submission.event.fileDeleted', 0),
(88, 515, 14, 1, '2024-09-29 06:24:25', 1342177281, 'submission.event.fileUploaded', 0),
(89, 1048585, 9, 1, '2024-09-29 06:24:25', 1342177288, 'submission.event.fileRevised', 0),
(90, 515, 14, 1, '2024-09-29 06:24:45', 1342177282, 'submission.event.fileDeleted', 0),
(91, 515, 15, 1, '2024-09-29 06:24:56', 1342177281, 'submission.event.fileUploaded', 0),
(92, 1048585, 9, 1, '2024-09-29 06:24:56', 1342177288, 'submission.event.fileRevised', 0),
(93, 515, 15, 1, '2024-09-29 06:25:28', 1342177282, 'submission.event.fileDeleted', 0),
(94, 515, 16, 1, '2024-09-29 06:25:40', 1342177281, 'submission.event.fileUploaded', 0),
(95, 1048585, 9, 1, '2024-09-29 06:25:40', 1342177288, 'submission.event.fileRevised', 0),
(96, 515, 16, 1, '2024-09-29 06:25:43', 1342177296, 'submission.event.fileEdited', 0),
(97, 1048585, 9, 1, '2024-09-29 06:25:43', 1342177296, 'submission.event.fileEdited', 0),
(98, 1048585, 9, 1, '2024-09-29 06:26:17', 268435458, 'submission.event.general.metadataUpdated', 0),
(99, 515, 17, 1, '2024-09-29 06:26:17', 1342177281, 'submission.event.fileUploaded', 0),
(100, 1048585, 9, 1, '2024-09-29 06:26:17', 1342177288, 'submission.event.fileRevised', 0),
(101, 1048585, 9, 1, '2024-09-29 06:26:17', 268435462, 'publication.event.scheduled', 0),
(102, 515, 18, 1, '2024-09-29 06:26:59', 1342177281, 'submission.event.fileUploaded', 0),
(103, 1048585, 9, 1, '2024-09-29 06:26:59', 1342177288, 'submission.event.fileRevised', 0),
(104, 515, 19, 1, '2024-09-29 06:27:12', 1342177281, 'submission.event.fileUploaded', 0),
(105, 1048585, 9, 1, '2024-09-29 06:27:12', 1342177288, 'submission.event.fileRevised', 0),
(106, 1048585, 9, 1, '2024-09-29 06:28:14', 268435458, 'submission.event.general.metadataUpdated', 0),
(107, 1048585, 9, 1, '2024-09-29 06:28:29', 268435462, 'publication.event.published', 0),
(108, 1048585, 8, 1, '2024-09-29 06:28:29', 268435462, 'publication.event.published', 0),
(109, 1048585, 9, 1, '2024-09-29 08:57:49', 268435463, 'publication.event.unpublished', 0),
(110, 1048585, 9, 1, '2024-09-29 08:57:49', 268435462, 'publication.event.scheduled', 0),
(111, 1048585, 8, 1, '2024-09-29 08:57:49', 268435463, 'publication.event.unpublished', 0),
(112, 1048585, 8, 1, '2024-09-29 08:57:50', 268435462, 'publication.event.scheduled', 0),
(113, 1048585, 9, 1, '2024-09-29 09:02:01', 268435462, 'publication.event.published', 0),
(114, 1048585, 8, 1, '2024-09-29 09:02:01', 268435462, 'publication.event.published', 0),
(115, 1048585, 9, 1, '2024-09-30 03:46:28', 268435463, 'publication.event.unpublished', 0),
(116, 1048585, 9, 1, '2024-09-30 03:46:28', 268435462, 'publication.event.scheduled', 0),
(117, 1048585, 8, 1, '2024-09-30 03:46:28', 268435463, 'publication.event.unpublished', 0),
(118, 1048585, 8, 1, '2024-09-30 03:46:28', 268435462, 'publication.event.scheduled', 0),
(119, 1048585, 9, 1, '2024-09-30 03:48:31', 268435462, 'publication.event.published', 0),
(120, 1048585, 8, 1, '2024-09-30 03:48:31', 268435462, 'publication.event.published', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `event_log_settings`
--

CREATE TABLE `event_log_settings` (
  `log_id` bigint(20) NOT NULL,
  `setting_name` varchar(255) NOT NULL,
  `setting_value` text DEFAULT NULL,
  `setting_type` varchar(6) NOT NULL COMMENT '(bool|int|float|string|object)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data untuk tabel `event_log_settings`
--

INSERT INTO `event_log_settings` (`log_id`, `setting_name`, `setting_value`, `setting_type`) VALUES
(9, 'fileId', '1', 'int'),
(9, 'fileStage', '10', 'int'),
(9, 'originalFileName', 'document.pdf', 'string'),
(9, 'sourceSubmissionFileId', NULL, 'string'),
(9, 'submissionFileId', '1', 'int'),
(9, 'submissionId', '1', 'int'),
(9, 'username', 'adminojs', 'string'),
(10, 'fileId', '1', 'int'),
(10, 'fileStage', '10', 'int'),
(10, 'name', 'document.pdf', 'string'),
(10, 'submissionFileId', '1', 'int'),
(10, 'submissionId', '1', 'int'),
(10, 'username', 'adminojs', 'string'),
(11, 'fileId', '1', 'int'),
(11, 'fileStage', '10', 'int'),
(11, 'originalFileName', 'Artikel Ke 1', 'string'),
(11, 'sourceSubmissionFileId', NULL, 'string'),
(11, 'submissionFileId', '1', 'int'),
(11, 'submissionId', '1', 'int'),
(11, 'username', 'adminojs', 'string'),
(12, 'fileId', '1', 'int'),
(12, 'fileStage', '10', 'int'),
(12, 'name', 'Artikel Ke 1', 'string'),
(12, 'originalFileName', 'Artikel Ke 1', 'string'),
(12, 'sourceSubmissionFileId', NULL, 'string'),
(12, 'submissionFileId', '1', 'int'),
(12, 'submissionId', '1', 'int'),
(12, 'username', 'adminojs', 'string'),
(14, 'fileId', '1', 'int'),
(14, 'fileStage', '2', 'int'),
(14, 'originalFileName', 'Artikel Ke 1', 'string'),
(14, 'sourceSubmissionFileId', '1', 'int'),
(14, 'submissionFileId', '2', 'int'),
(14, 'submissionId', '1', 'int'),
(14, 'username', 'adminojs', 'string'),
(15, 'fileId', '1', 'int'),
(15, 'fileStage', '2', 'int'),
(15, 'name', 'Artikel Ke 1', 'string'),
(15, 'submissionFileId', '2', 'int'),
(15, 'submissionId', '1', 'int'),
(15, 'username', 'adminojs', 'string'),
(23, 'fileId', '2', 'int'),
(23, 'fileStage', '10', 'int'),
(23, 'originalFileName', 'document.pdf', 'string'),
(23, 'sourceSubmissionFileId', NULL, 'string'),
(23, 'submissionFileId', '3', 'int'),
(23, 'submissionId', '4', 'int'),
(23, 'username', 'adminojs', 'string'),
(24, 'fileId', '2', 'int'),
(24, 'fileStage', '10', 'int'),
(24, 'name', 'document.pdf', 'string'),
(24, 'submissionFileId', '3', 'int'),
(24, 'submissionId', '4', 'int'),
(24, 'username', 'adminojs', 'string'),
(25, 'fileId', '2', 'int'),
(25, 'fileStage', '10', 'int'),
(25, 'originalFileName', 'document.pdf', 'string'),
(25, 'sourceSubmissionFileId', NULL, 'string'),
(25, 'submissionFileId', '3', 'int'),
(25, 'submissionId', '4', 'int'),
(25, 'username', 'adminojs', 'string'),
(26, 'fileId', '2', 'int'),
(26, 'fileStage', '10', 'int'),
(26, 'name', 'document.pdf', 'string'),
(26, 'originalFileName', 'document.pdf', 'string'),
(26, 'sourceSubmissionFileId', NULL, 'string'),
(26, 'submissionFileId', '3', 'int'),
(26, 'submissionId', '4', 'int'),
(26, 'username', 'adminojs', 'string'),
(28, 'fileId', '2', 'int'),
(28, 'fileStage', '2', 'int'),
(28, 'originalFileName', 'document.pdf', 'string'),
(28, 'sourceSubmissionFileId', '3', 'int'),
(28, 'submissionFileId', '4', 'int'),
(28, 'submissionId', '4', 'int'),
(28, 'username', 'adminojs', 'string'),
(29, 'fileId', '2', 'int'),
(29, 'fileStage', '2', 'int'),
(29, 'name', 'document.pdf', 'string'),
(29, 'submissionFileId', '4', 'int'),
(29, 'submissionId', '4', 'int'),
(29, 'username', 'adminojs', 'string'),
(38, 'fileId', '3', 'int'),
(38, 'fileStage', '11', 'int'),
(38, 'originalFileName', 'document.pdf', 'string'),
(38, 'sourceSubmissionFileId', NULL, 'string'),
(38, 'submissionFileId', '5', 'int'),
(38, 'submissionId', '4', 'int'),
(38, 'username', 'adminojs', 'string'),
(39, 'fileId', '3', 'int'),
(39, 'fileStage', '11', 'int'),
(39, 'name', 'document.pdf', 'string'),
(39, 'submissionFileId', '5', 'int'),
(39, 'submissionId', '4', 'int'),
(39, 'username', 'adminojs', 'string'),
(40, 'fileId', '4', 'int'),
(40, 'fileStage', '11', 'int'),
(40, 'originalFileName', 'document.pdf', 'string'),
(40, 'sourceSubmissionFileId', NULL, 'string'),
(40, 'submissionFileId', '6', 'int'),
(40, 'submissionId', '4', 'int'),
(40, 'username', 'adminojs', 'string'),
(41, 'fileId', '4', 'int'),
(41, 'fileStage', '11', 'int'),
(41, 'name', 'document.pdf', 'string'),
(41, 'submissionFileId', '6', 'int'),
(41, 'submissionId', '4', 'int'),
(41, 'username', 'adminojs', 'string'),
(44, 'fileId', '5', 'int'),
(44, 'fileStage', '10', 'int'),
(44, 'originalFileName', '453-Article Text-3444-1-10-20240107 (1).pdf', 'string'),
(44, 'sourceSubmissionFileId', NULL, 'string'),
(44, 'submissionFileId', '7', 'int'),
(44, 'submissionId', '4', 'int'),
(44, 'username', 'adminojs', 'string'),
(45, 'fileId', '5', 'int'),
(45, 'fileStage', '10', 'int'),
(45, 'name', '453-Article Text-3444-1-10-20240107 (1).pdf', 'string'),
(45, 'submissionFileId', '7', 'int'),
(45, 'submissionId', '4', 'int'),
(45, 'username', 'adminojs', 'string'),
(46, 'fileId', '5', 'int'),
(46, 'fileStage', '10', 'int'),
(46, 'originalFileName', '453-Article Text-3444-1-10-20240107 (1).pdf', 'string'),
(46, 'sourceSubmissionFileId', NULL, 'string'),
(46, 'submissionFileId', '7', 'int'),
(46, 'submissionId', '4', 'int'),
(46, 'username', 'adminojs', 'string'),
(47, 'fileId', '5', 'int'),
(47, 'fileStage', '10', 'int'),
(47, 'name', '453-Article Text-3444-1-10-20240107 (1).pdf', 'string'),
(47, 'originalFileName', '453-Article Text-3444-1-10-20240107 (1).pdf', 'string'),
(47, 'sourceSubmissionFileId', NULL, 'string'),
(47, 'submissionFileId', '7', 'int'),
(47, 'submissionId', '4', 'int'),
(47, 'username', 'adminojs', 'string'),
(50, 'fileId', '6', 'int'),
(50, 'fileStage', '10', 'int'),
(50, 'originalFileName', '453-Article Text-3444-1-10-20240107 (1).pdf', 'string'),
(50, 'sourceSubmissionFileId', NULL, 'string'),
(50, 'submissionFileId', '8', 'int'),
(50, 'submissionId', '4', 'int'),
(50, 'username', 'adminojs', 'string'),
(51, 'fileId', '6', 'int'),
(51, 'fileStage', '10', 'int'),
(51, 'name', '453-Article Text-3444-1-10-20240107 (1).pdf', 'string'),
(51, 'submissionFileId', '8', 'int'),
(51, 'submissionId', '4', 'int'),
(51, 'username', 'adminojs', 'string'),
(52, 'fileId', '6', 'int'),
(52, 'fileStage', '10', 'int'),
(52, 'originalFileName', '453-Article Text-3444-1-10-20240107 (1).pdf', 'string'),
(52, 'sourceSubmissionFileId', NULL, 'string'),
(52, 'submissionFileId', '8', 'int'),
(52, 'submissionId', '4', 'int'),
(52, 'username', 'adminojs', 'string'),
(53, 'fileId', '6', 'int'),
(53, 'fileStage', '10', 'int'),
(53, 'name', '453-Article Text-3444-1-10-20240107 (1).pdf', 'string'),
(53, 'originalFileName', '453-Article Text-3444-1-10-20240107 (1).pdf', 'string'),
(53, 'sourceSubmissionFileId', NULL, 'string'),
(53, 'submissionFileId', '8', 'int'),
(53, 'submissionId', '4', 'int'),
(53, 'username', 'adminojs', 'string'),
(54, 'fileStage', '10', 'int'),
(54, 'sourceSubmissionFileId', NULL, 'string'),
(54, 'submissionFileId', '3', 'int'),
(54, 'submissionId', '4', 'int'),
(54, 'username', 'adminojs', 'string'),
(55, 'fileStage', '10', 'int'),
(55, 'sourceSubmissionFileId', NULL, 'string'),
(55, 'submissionFileId', '7', 'int'),
(55, 'submissionId', '4', 'int'),
(55, 'username', 'adminojs', 'string'),
(66, 'fileId', '7', 'int'),
(66, 'fileStage', '10', 'int'),
(66, 'originalFileName', '453-Article Text-3444-1-10-20240107 (1).pdf', 'string'),
(66, 'sourceSubmissionFileId', NULL, 'string'),
(66, 'submissionFileId', '9', 'int'),
(66, 'submissionId', '8', 'int'),
(66, 'username', 'adminojs', 'string'),
(67, 'fileId', '7', 'int'),
(67, 'fileStage', '10', 'int'),
(67, 'name', '453-Article Text-3444-1-10-20240107 (1).pdf', 'string'),
(67, 'submissionFileId', '9', 'int'),
(67, 'submissionId', '8', 'int'),
(67, 'username', 'adminojs', 'string'),
(68, 'fileId', '7', 'int'),
(68, 'fileStage', '10', 'int'),
(68, 'originalFileName', '453-Article Text-3444-1-10-20240107 (1).pdf', 'string'),
(68, 'sourceSubmissionFileId', NULL, 'string'),
(68, 'submissionFileId', '9', 'int'),
(68, 'submissionId', '8', 'int'),
(68, 'username', 'adminojs', 'string'),
(69, 'fileId', '7', 'int'),
(69, 'fileStage', '10', 'int'),
(69, 'name', '453-Article Text-3444-1-10-20240107 (1).pdf', 'string'),
(69, 'originalFileName', '453-Article Text-3444-1-10-20240107 (1).pdf', 'string'),
(69, 'sourceSubmissionFileId', NULL, 'string'),
(69, 'submissionFileId', '9', 'int'),
(69, 'submissionId', '8', 'int'),
(69, 'username', 'adminojs', 'string'),
(71, 'fileId', '7', 'int'),
(71, 'fileStage', '2', 'int'),
(71, 'originalFileName', '453-Article Text-3444-1-10-20240107 (1).pdf', 'string'),
(71, 'sourceSubmissionFileId', '9', 'int'),
(71, 'submissionFileId', '10', 'int'),
(71, 'submissionId', '8', 'int'),
(71, 'username', 'adminojs', 'string'),
(72, 'fileId', '7', 'int'),
(72, 'fileStage', '2', 'int'),
(72, 'name', '453-Article Text-3444-1-10-20240107 (1).pdf', 'string'),
(72, 'submissionFileId', '10', 'int'),
(72, 'submissionId', '8', 'int'),
(72, 'username', 'adminojs', 'string'),
(74, 'fileId', '8', 'int'),
(74, 'fileStage', '11', 'int'),
(74, 'originalFileName', '453-Article Text-3444-1-10-20240107 (1).pdf', 'string'),
(74, 'sourceSubmissionFileId', NULL, 'string'),
(74, 'submissionFileId', '11', 'int'),
(74, 'submissionId', '8', 'int'),
(74, 'username', 'adminojs', 'string'),
(75, 'fileId', '8', 'int'),
(75, 'fileStage', '11', 'int'),
(75, 'name', '453-Article Text-3444-1-10-20240107 (1).pdf', 'string'),
(75, 'submissionFileId', '11', 'int'),
(75, 'submissionId', '8', 'int'),
(75, 'username', 'adminojs', 'string'),
(76, 'fileId', '8', 'int'),
(76, 'fileStage', '11', 'int'),
(76, 'originalFileName', '453-Article Text-3444-1-10-20240107 (1).pdf', 'string'),
(76, 'sourceSubmissionFileId', NULL, 'string'),
(76, 'submissionFileId', '11', 'int'),
(76, 'submissionId', '8', 'int'),
(76, 'username', 'adminojs', 'string'),
(77, 'fileId', '8', 'int'),
(77, 'fileStage', '11', 'int'),
(77, 'name', '453-Article Text-3444-1-10-20240107 (1).pdf', 'string'),
(77, 'originalFileName', '453-Article Text-3444-1-10-20240107 (1).pdf', 'string'),
(77, 'sourceSubmissionFileId', NULL, 'string'),
(77, 'submissionFileId', '11', 'int'),
(77, 'submissionId', '8', 'int'),
(77, 'username', 'adminojs', 'string'),
(81, 'fileId', '7', 'int'),
(81, 'fileStage', '18', 'int'),
(81, 'originalFileName', '453-Article Text-3444-1-10-20240107 (1).pdf', 'string'),
(81, 'sourceSubmissionFileId', '10', 'int'),
(81, 'submissionFileId', '12', 'int'),
(81, 'submissionId', '8', 'int'),
(81, 'username', 'adminojs', 'string'),
(82, 'fileId', '7', 'int'),
(82, 'fileStage', '18', 'int'),
(82, 'name', '453-Article Text-3444-1-10-20240107 (1).pdf', 'string'),
(82, 'submissionFileId', '12', 'int'),
(82, 'submissionId', '8', 'int'),
(82, 'username', 'adminojs', 'string'),
(85, 'fileId', '9', 'int'),
(85, 'fileStage', '10', 'int'),
(85, 'originalFileName', 'document.pdf', 'string'),
(85, 'sourceSubmissionFileId', NULL, 'string'),
(85, 'submissionFileId', '13', 'int'),
(85, 'submissionId', '9', 'int'),
(85, 'username', 'adminojs', 'string'),
(86, 'fileId', '9', 'int'),
(86, 'fileStage', '10', 'int'),
(86, 'name', 'document.pdf', 'string'),
(86, 'submissionFileId', '13', 'int'),
(86, 'submissionId', '9', 'int'),
(86, 'username', 'adminojs', 'string'),
(87, 'fileStage', '10', 'int'),
(87, 'sourceSubmissionFileId', NULL, 'string'),
(87, 'submissionFileId', '13', 'int'),
(87, 'submissionId', '9', 'int'),
(87, 'username', 'adminojs', 'string'),
(88, 'fileId', '10', 'int'),
(88, 'fileStage', '10', 'int'),
(88, 'originalFileName', 'document.pdf', 'string'),
(88, 'sourceSubmissionFileId', NULL, 'string'),
(88, 'submissionFileId', '14', 'int'),
(88, 'submissionId', '9', 'int'),
(88, 'username', 'adminojs', 'string'),
(89, 'fileId', '10', 'int'),
(89, 'fileStage', '10', 'int'),
(89, 'name', 'document.pdf', 'string'),
(89, 'submissionFileId', '14', 'int'),
(89, 'submissionId', '9', 'int'),
(89, 'username', 'adminojs', 'string'),
(90, 'fileStage', '10', 'int'),
(90, 'sourceSubmissionFileId', NULL, 'string'),
(90, 'submissionFileId', '14', 'int'),
(90, 'submissionId', '9', 'int'),
(90, 'username', 'adminojs', 'string'),
(91, 'fileId', '11', 'int'),
(91, 'fileStage', '10', 'int'),
(91, 'originalFileName', 'document.pdf', 'string'),
(91, 'sourceSubmissionFileId', NULL, 'string'),
(91, 'submissionFileId', '15', 'int'),
(91, 'submissionId', '9', 'int'),
(91, 'username', 'adminojs', 'string'),
(92, 'fileId', '11', 'int'),
(92, 'fileStage', '10', 'int'),
(92, 'name', 'document.pdf', 'string'),
(92, 'submissionFileId', '15', 'int'),
(92, 'submissionId', '9', 'int'),
(92, 'username', 'adminojs', 'string'),
(93, 'fileStage', '10', 'int'),
(93, 'sourceSubmissionFileId', NULL, 'string'),
(93, 'submissionFileId', '15', 'int'),
(93, 'submissionId', '9', 'int'),
(93, 'username', 'adminojs', 'string'),
(94, 'fileId', '12', 'int'),
(94, 'fileStage', '10', 'int'),
(94, 'originalFileName', 'document.pdf', 'string'),
(94, 'sourceSubmissionFileId', NULL, 'string'),
(94, 'submissionFileId', '16', 'int'),
(94, 'submissionId', '9', 'int'),
(94, 'username', 'adminojs', 'string'),
(95, 'fileId', '12', 'int'),
(95, 'fileStage', '10', 'int'),
(95, 'name', 'document.pdf', 'string'),
(95, 'submissionFileId', '16', 'int'),
(95, 'submissionId', '9', 'int'),
(95, 'username', 'adminojs', 'string'),
(96, 'fileId', '12', 'int'),
(96, 'fileStage', '10', 'int'),
(96, 'originalFileName', 'document.pdf', 'string'),
(96, 'sourceSubmissionFileId', NULL, 'string'),
(96, 'submissionFileId', '16', 'int'),
(96, 'submissionId', '9', 'int'),
(96, 'username', 'adminojs', 'string'),
(97, 'fileId', '12', 'int'),
(97, 'fileStage', '10', 'int'),
(97, 'name', 'document.pdf', 'string'),
(97, 'originalFileName', 'document.pdf', 'string'),
(97, 'sourceSubmissionFileId', NULL, 'string'),
(97, 'submissionFileId', '16', 'int'),
(97, 'submissionId', '9', 'int'),
(97, 'username', 'adminojs', 'string'),
(99, 'fileId', '12', 'int'),
(99, 'fileStage', '2', 'int'),
(99, 'originalFileName', 'document.pdf', 'string'),
(99, 'sourceSubmissionFileId', '16', 'int'),
(99, 'submissionFileId', '17', 'int'),
(99, 'submissionId', '9', 'int'),
(99, 'username', 'adminojs', 'string'),
(100, 'fileId', '12', 'int'),
(100, 'fileStage', '2', 'int'),
(100, 'name', 'document.pdf', 'string'),
(100, 'submissionFileId', '17', 'int'),
(100, 'submissionId', '9', 'int'),
(100, 'username', 'adminojs', 'string'),
(102, 'fileId', '12', 'int'),
(102, 'fileStage', '6', 'int'),
(102, 'originalFileName', 'document.pdf', 'string'),
(102, 'sourceSubmissionFileId', '17', 'int'),
(102, 'submissionFileId', '18', 'int'),
(102, 'submissionId', '9', 'int'),
(102, 'username', 'adminojs', 'string'),
(103, 'fileId', '12', 'int'),
(103, 'fileStage', '6', 'int'),
(103, 'name', 'document.pdf', 'string'),
(103, 'submissionFileId', '18', 'int'),
(103, 'submissionId', '9', 'int'),
(103, 'username', 'adminojs', 'string'),
(104, 'fileId', '12', 'int'),
(104, 'fileStage', '9', 'int'),
(104, 'originalFileName', 'document.pdf', 'string'),
(104, 'sourceSubmissionFileId', '18', 'int'),
(104, 'submissionFileId', '19', 'int'),
(104, 'submissionId', '9', 'int'),
(104, 'username', 'adminojs', 'string'),
(105, 'fileId', '12', 'int'),
(105, 'fileStage', '9', 'int'),
(105, 'name', 'document.pdf', 'string'),
(105, 'submissionFileId', '19', 'int'),
(105, 'submissionId', '9', 'int'),
(105, 'username', 'adminojs', 'string');

-- --------------------------------------------------------

--
-- Struktur dari tabel `files`
--

CREATE TABLE `files` (
  `file_id` bigint(20) UNSIGNED NOT NULL,
  `path` varchar(255) NOT NULL,
  `mimetype` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data untuk tabel `files`
--

INSERT INTO `files` (`file_id`, `path`, `mimetype`) VALUES
(1, 'journals/1/articles/1/66f88f6b6412a.pdf', 'application/pdf'),
(2, 'journals/1/articles/4/66f895864c1eb.pdf', 'application/pdf'),
(3, 'journals/1/articles/4/66f8a4cfe868f.pdf', 'application/pdf'),
(4, 'journals/1/articles/4/66f8a4f9b0d15.pdf', 'application/pdf'),
(6, 'journals/1/articles/4/66f8a82857759.pdf', 'application/pdf'),
(7, 'journals/1/articles/8/66f8a9d2b99ed.pdf', 'application/pdf'),
(8, 'journals/1/articles/8/66f8ab674fb48.pdf', 'application/pdf'),
(12, 'journals/1/articles/9/66f8d6c4e0c1d.pdf', 'application/pdf');

-- --------------------------------------------------------

--
-- Struktur dari tabel `filters`
--

CREATE TABLE `filters` (
  `filter_id` bigint(20) NOT NULL,
  `filter_group_id` bigint(20) NOT NULL DEFAULT 0,
  `context_id` bigint(20) NOT NULL DEFAULT 0,
  `display_name` varchar(255) DEFAULT NULL,
  `class_name` varchar(255) DEFAULT NULL,
  `is_template` smallint(6) NOT NULL DEFAULT 0,
  `parent_filter_id` bigint(20) NOT NULL DEFAULT 0,
  `seq` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data untuk tabel `filters`
--

INSERT INTO `filters` (`filter_id`, `filter_group_id`, `context_id`, `display_name`, `class_name`, `is_template`, `parent_filter_id`, `seq`) VALUES
(1, 1, 0, 'Extract metadata from a(n) Submission', 'plugins.metadata.dc11.filter.Dc11SchemaArticleAdapter', 0, 0, 0),
(2, 2, 0, 'Crossref XML issue export', 'plugins.importexport.crossref.filter.IssueCrossrefXmlFilter', 0, 0, 0),
(3, 3, 0, 'Crossref XML issue export', 'plugins.importexport.crossref.filter.ArticleCrossrefXmlFilter', 0, 0, 0),
(4, 4, 0, 'DataCite XML export', 'plugins.importexport.datacite.filter.DataciteXmlFilter', 0, 0, 0),
(5, 5, 0, 'DataCite XML export', 'plugins.importexport.datacite.filter.DataciteXmlFilter', 0, 0, 0),
(6, 6, 0, 'DataCite XML export', 'plugins.importexport.datacite.filter.DataciteXmlFilter', 0, 0, 0),
(7, 7, 0, 'DOAJ XML export', 'plugins.importexport.doaj.filter.DOAJXmlFilter', 0, 0, 0),
(8, 8, 0, 'DOAJ JSON export', 'plugins.importexport.doaj.filter.DOAJJsonFilter', 0, 0, 0),
(9, 9, 0, 'Native XML submission export', 'plugins.importexport.native.filter.ArticleNativeXmlFilter', 0, 0, 0),
(10, 10, 0, 'Native XML submission import', 'plugins.importexport.native.filter.NativeXmlArticleFilter', 0, 0, 0),
(11, 11, 0, 'Native XML issue export', 'plugins.importexport.native.filter.IssueNativeXmlFilter', 0, 0, 0),
(12, 12, 0, 'Native XML issue import', 'plugins.importexport.native.filter.NativeXmlIssueFilter', 0, 0, 0),
(13, 13, 0, 'Native XML issue galley export', 'plugins.importexport.native.filter.IssueGalleyNativeXmlFilter', 0, 0, 0),
(14, 14, 0, 'Native XML issue galley import', 'plugins.importexport.native.filter.NativeXmlIssueGalleyFilter', 0, 0, 0),
(15, 15, 0, 'Native XML author export', 'plugins.importexport.native.filter.AuthorNativeXmlFilter', 0, 0, 0),
(16, 16, 0, 'Native XML author import', 'plugins.importexport.native.filter.NativeXmlAuthorFilter', 0, 0, 0),
(17, 18, 0, 'Native XML submission file import', 'plugins.importexport.native.filter.NativeXmlArticleFileFilter', 0, 0, 0),
(18, 17, 0, 'Native XML submission file export', 'lib.pkp.plugins.importexport.native.filter.SubmissionFileNativeXmlFilter', 0, 0, 0),
(19, 19, 0, 'Native XML representation export', 'plugins.importexport.native.filter.ArticleGalleyNativeXmlFilter', 0, 0, 0),
(20, 20, 0, 'Native XML representation import', 'plugins.importexport.native.filter.NativeXmlArticleGalleyFilter', 0, 0, 0),
(21, 21, 0, 'Native XML Publication export', 'plugins.importexport.native.filter.PublicationNativeXmlFilter', 0, 0, 0),
(22, 22, 0, 'Native XML publication import', 'plugins.importexport.native.filter.NativeXmlPublicationFilter', 0, 0, 0),
(23, 23, 0, 'ArticlePubMedXmlFilter', 'plugins.importexport.pubmed.filter.ArticlePubMedXmlFilter', 0, 0, 0),
(24, 24, 0, 'User XML user export', 'lib.pkp.plugins.importexport.users.filter.PKPUserUserXmlFilter', 0, 0, 0),
(25, 25, 0, 'User XML user import', 'lib.pkp.plugins.importexport.users.filter.UserXmlPKPUserFilter', 0, 0, 0),
(26, 26, 0, 'Native XML user group export', 'lib.pkp.plugins.importexport.users.filter.UserGroupNativeXmlFilter', 0, 0, 0),
(27, 27, 0, 'Native XML user group import', 'lib.pkp.plugins.importexport.users.filter.NativeXmlUserGroupFilter', 0, 0, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `filter_groups`
--

CREATE TABLE `filter_groups` (
  `filter_group_id` bigint(20) NOT NULL,
  `symbolic` varchar(255) DEFAULT NULL,
  `display_name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `input_type` varchar(255) DEFAULT NULL,
  `output_type` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data untuk tabel `filter_groups`
--

INSERT INTO `filter_groups` (`filter_group_id`, `symbolic`, `display_name`, `description`, `input_type`, `output_type`) VALUES
(1, 'article=>dc11', 'plugins.metadata.dc11.articleAdapter.displayName', 'plugins.metadata.dc11.articleAdapter.description', 'class::classes.submission.Submission', 'metadata::plugins.metadata.dc11.schema.Dc11Schema(ARTICLE)'),
(2, 'issue=>crossref-xml', 'plugins.importexport.crossref.displayName', 'plugins.importexport.crossref.description', 'class::classes.issue.Issue[]', 'xml::schema(https://www.crossref.org/schemas/crossref4.3.6.xsd)'),
(3, 'article=>crossref-xml', 'plugins.importexport.crossref.displayName', 'plugins.importexport.crossref.description', 'class::classes.submission.Submission[]', 'xml::schema(https://www.crossref.org/schemas/crossref4.3.6.xsd)'),
(4, 'issue=>datacite-xml', 'plugins.importexport.datacite.displayName', 'plugins.importexport.datacite.description', 'class::classes.issue.Issue', 'xml::schema(http://schema.datacite.org/meta/kernel-4/metadata.xsd)'),
(5, 'article=>datacite-xml', 'plugins.importexport.datacite.displayName', 'plugins.importexport.datacite.description', 'class::classes.submission.Submission', 'xml::schema(http://schema.datacite.org/meta/kernel-4/metadata.xsd)'),
(6, 'galley=>datacite-xml', 'plugins.importexport.datacite.displayName', 'plugins.importexport.datacite.description', 'class::classes.article.ArticleGalley', 'xml::schema(http://schema.datacite.org/meta/kernel-4/metadata.xsd)'),
(7, 'article=>doaj-xml', 'plugins.importexport.doaj.displayName', 'plugins.importexport.doaj.description', 'class::classes.submission.Submission[]', 'xml::schema(plugins/importexport/doaj/doajArticles.xsd)'),
(8, 'article=>doaj-json', 'plugins.importexport.doaj.displayName', 'plugins.importexport.doaj.description', 'class::classes.submission.Submission', 'primitive::string'),
(9, 'article=>native-xml', 'plugins.importexport.native.displayName', 'plugins.importexport.native.description', 'class::classes.submission.Submission[]', 'xml::schema(plugins/importexport/native/native.xsd)'),
(10, 'native-xml=>article', 'plugins.importexport.native.displayName', 'plugins.importexport.native.description', 'xml::schema(plugins/importexport/native/native.xsd)', 'class::classes.submission.Submission[]'),
(11, 'issue=>native-xml', 'plugins.importexport.native.displayName', 'plugins.importexport.native.description', 'class::classes.issue.Issue[]', 'xml::schema(plugins/importexport/native/native.xsd)'),
(12, 'native-xml=>issue', 'plugins.importexport.native.displayName', 'plugins.importexport.native.description', 'xml::schema(plugins/importexport/native/native.xsd)', 'class::classes.issue.Issue[]'),
(13, 'issuegalley=>native-xml', 'plugins.importexport.native.displayName', 'plugins.importexport.native.description', 'class::classes.issue.IssueGalley[]', 'xml::schema(plugins/importexport/native/native.xsd)'),
(14, 'native-xml=>issuegalley', 'plugins.importexport.native.displayName', 'plugins.importexport.native.description', 'xml::schema(plugins/importexport/native/native.xsd)', 'class::classes.issue.IssueGalley[]'),
(15, 'author=>native-xml', 'plugins.importexport.native.displayName', 'plugins.importexport.native.description', 'class::classes.article.Author[]', 'xml::schema(plugins/importexport/native/native.xsd)'),
(16, 'native-xml=>author', 'plugins.importexport.native.displayName', 'plugins.importexport.native.description', 'xml::schema(plugins/importexport/native/native.xsd)', 'class::classes.article.Author[]'),
(17, 'SubmissionFile=>native-xml', 'plugins.importexport.native.displayName', 'plugins.importexport.native.description', 'class::lib.pkp.classes.submission.SubmissionFile', 'xml::schema(plugins/importexport/native/native.xsd)'),
(18, 'native-xml=>SubmissionFile', 'plugins.importexport.native.displayName', 'plugins.importexport.native.description', 'xml::schema(plugins/importexport/native/native.xsd)', 'class::lib.pkp.classes.submission.SubmissionFile'),
(19, 'article-galley=>native-xml', 'plugins.importexport.native.displayName', 'plugins.importexport.native.description', 'class::classes.article.ArticleGalley', 'xml::schema(plugins/importexport/native/native.xsd)'),
(20, 'native-xml=>ArticleGalley', 'plugins.importexport.native.displayName', 'plugins.importexport.native.description', 'xml::schema(plugins/importexport/native/native.xsd)', 'class::classes.article.ArticleGalley[]'),
(21, 'publication=>native-xml', 'plugins.importexport.native.displayName', 'plugins.importexport.native.description', 'class::classes.publication.Publication', 'xml::schema(plugins/importexport/native/native.xsd)'),
(22, 'native-xml=>Publication', 'plugins.importexport.native.displayName', 'plugins.importexport.native.description', 'xml::schema(plugins/importexport/native/native.xsd)', 'class::classes.publication.Publication'),
(23, 'article=>pubmed-xml', 'plugins.importexport.pubmed.displayName', 'plugins.importexport.pubmed.description', 'class::classes.submission.Submission[]', 'xml::dtd'),
(24, 'user=>user-xml', 'plugins.importexport.users.displayName', 'plugins.importexport.users.description', 'class::lib.pkp.classes.user.User[]', 'xml::schema(lib/pkp/plugins/importexport/users/pkp-users.xsd)'),
(25, 'user-xml=>user', 'plugins.importexport.users.displayName', 'plugins.importexport.users.description', 'xml::schema(lib/pkp/plugins/importexport/users/pkp-users.xsd)', 'class::classes.users.User[]'),
(26, 'usergroup=>user-xml', 'plugins.importexport.users.displayName', 'plugins.importexport.users.description', 'class::lib.pkp.classes.security.UserGroup[]', 'xml::schema(lib/pkp/plugins/importexport/users/pkp-users.xsd)'),
(27, 'user-xml=>usergroup', 'plugins.importexport.native.displayName', 'plugins.importexport.native.description', 'xml::schema(lib/pkp/plugins/importexport/users/pkp-users.xsd)', 'class::lib.pkp.classes.security.UserGroup[]');

-- --------------------------------------------------------

--
-- Struktur dari tabel `filter_settings`
--

CREATE TABLE `filter_settings` (
  `filter_id` bigint(20) NOT NULL,
  `locale` varchar(14) NOT NULL DEFAULT '',
  `setting_name` varchar(255) NOT NULL,
  `setting_value` text DEFAULT NULL,
  `setting_type` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `genres`
--

CREATE TABLE `genres` (
  `genre_id` bigint(20) NOT NULL,
  `context_id` bigint(20) NOT NULL,
  `seq` bigint(20) NOT NULL,
  `enabled` smallint(6) NOT NULL DEFAULT 1,
  `category` bigint(20) NOT NULL DEFAULT 1,
  `dependent` smallint(6) NOT NULL DEFAULT 0,
  `supplementary` smallint(6) NOT NULL DEFAULT 0,
  `entry_key` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data untuk tabel `genres`
--

INSERT INTO `genres` (`genre_id`, `context_id`, `seq`, `enabled`, `category`, `dependent`, `supplementary`, `entry_key`) VALUES
(1, 1, 0, 1, 1, 0, 0, 'SUBMISSION'),
(2, 1, 1, 1, 3, 0, 1, 'RESEARCHINSTRUMENT'),
(3, 1, 2, 1, 3, 0, 1, 'RESEARCHMATERIALS'),
(4, 1, 3, 1, 3, 0, 1, 'RESEARCHRESULTS'),
(5, 1, 4, 1, 3, 0, 1, 'TRANSCRIPTS'),
(6, 1, 5, 1, 3, 0, 1, 'DATAANALYSIS'),
(7, 1, 6, 1, 3, 0, 1, 'DATASET'),
(8, 1, 7, 1, 3, 0, 1, 'SOURCETEXTS'),
(9, 1, 8, 1, 1, 1, 1, 'MULTIMEDIA'),
(10, 1, 9, 1, 2, 1, 0, 'IMAGE'),
(11, 1, 10, 1, 1, 1, 0, 'STYLE'),
(12, 1, 11, 1, 3, 0, 1, 'OTHER');

-- --------------------------------------------------------

--
-- Struktur dari tabel `genre_settings`
--

CREATE TABLE `genre_settings` (
  `genre_id` bigint(20) NOT NULL,
  `locale` varchar(14) NOT NULL DEFAULT '',
  `setting_name` varchar(255) NOT NULL,
  `setting_value` text DEFAULT NULL,
  `setting_type` varchar(6) NOT NULL COMMENT '(bool|int|float|string|object)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data untuk tabel `genre_settings`
--

INSERT INTO `genre_settings` (`genre_id`, `locale`, `setting_name`, `setting_value`, `setting_type`) VALUES
(1, 'id_ID', 'name', 'File Utama Naskah', 'string'),
(2, 'id_ID', 'name', 'Instrumen Penelitian', 'string'),
(3, 'id_ID', 'name', 'Bahan Penelitian', 'string'),
(4, 'id_ID', 'name', 'Hasil Penelitian', 'string'),
(5, 'id_ID', 'name', 'Transkrip', 'string'),
(6, 'id_ID', 'name', 'Analisis Data', 'string'),
(7, 'id_ID', 'name', 'Data Set', 'string'),
(8, 'id_ID', 'name', 'Teks Sumber', 'string'),
(9, 'id_ID', 'name', 'Multimedia', 'string'),
(10, 'id_ID', 'name', 'Gambar', 'string'),
(11, 'id_ID', 'name', 'HTML StyleSheet', 'string'),
(12, 'id_ID', 'name', 'Lainnya', 'string');

-- --------------------------------------------------------

--
-- Struktur dari tabel `institutional_subscriptions`
--

CREATE TABLE `institutional_subscriptions` (
  `institutional_subscription_id` bigint(20) NOT NULL,
  `subscription_id` bigint(20) NOT NULL,
  `institution_name` varchar(255) NOT NULL,
  `mailing_address` varchar(255) DEFAULT NULL,
  `domain` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `institutional_subscription_ip`
--

CREATE TABLE `institutional_subscription_ip` (
  `institutional_subscription_ip_id` bigint(20) NOT NULL,
  `subscription_id` bigint(20) NOT NULL,
  `ip_string` varchar(40) NOT NULL,
  `ip_start` bigint(20) NOT NULL,
  `ip_end` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `issues`
--

CREATE TABLE `issues` (
  `issue_id` bigint(20) NOT NULL,
  `journal_id` bigint(20) NOT NULL,
  `volume` smallint(6) DEFAULT NULL,
  `number` varchar(40) DEFAULT NULL,
  `year` smallint(6) DEFAULT NULL,
  `published` smallint(6) NOT NULL DEFAULT 0,
  `current` smallint(6) NOT NULL DEFAULT 0,
  `date_published` datetime DEFAULT NULL,
  `date_notified` datetime DEFAULT NULL,
  `last_modified` datetime DEFAULT NULL,
  `access_status` smallint(6) NOT NULL DEFAULT 1,
  `open_access_date` datetime DEFAULT NULL,
  `show_volume` smallint(6) NOT NULL DEFAULT 0,
  `show_number` smallint(6) NOT NULL DEFAULT 0,
  `show_year` smallint(6) NOT NULL DEFAULT 0,
  `show_title` smallint(6) NOT NULL DEFAULT 0,
  `style_file_name` varchar(90) DEFAULT NULL,
  `original_style_file_name` varchar(255) DEFAULT NULL,
  `url_path` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data untuk tabel `issues`
--

INSERT INTO `issues` (`issue_id`, `journal_id`, `volume`, `number`, `year`, `published`, `current`, `date_published`, `date_notified`, `last_modified`, `access_status`, `open_access_date`, `show_volume`, `show_number`, `show_year`, `show_title`, `style_file_name`, `original_style_file_name`, `url_path`) VALUES
(3, 1, 1, '04', 2024, 1, 1, '2024-09-30 03:48:30', NULL, '2024-09-30 03:48:30', 1, NULL, 1, 1, 1, 0, NULL, NULL, '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `issue_files`
--

CREATE TABLE `issue_files` (
  `file_id` bigint(20) NOT NULL,
  `issue_id` bigint(20) NOT NULL,
  `file_name` varchar(90) NOT NULL,
  `file_type` varchar(255) NOT NULL,
  `file_size` bigint(20) NOT NULL,
  `content_type` bigint(20) NOT NULL,
  `original_file_name` varchar(127) DEFAULT NULL,
  `date_uploaded` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `issue_galleys`
--

CREATE TABLE `issue_galleys` (
  `galley_id` bigint(20) NOT NULL,
  `locale` varchar(14) DEFAULT NULL,
  `issue_id` bigint(20) NOT NULL,
  `file_id` bigint(20) NOT NULL,
  `label` varchar(32) DEFAULT NULL,
  `seq` double(8,2) NOT NULL DEFAULT 0.00,
  `url_path` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `issue_galley_settings`
--

CREATE TABLE `issue_galley_settings` (
  `galley_id` bigint(20) NOT NULL,
  `locale` varchar(14) NOT NULL DEFAULT '',
  `setting_name` varchar(255) NOT NULL,
  `setting_value` text DEFAULT NULL,
  `setting_type` varchar(6) NOT NULL COMMENT '(bool|int|float|string|object)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `issue_settings`
--

CREATE TABLE `issue_settings` (
  `issue_id` bigint(20) NOT NULL,
  `locale` varchar(14) NOT NULL DEFAULT '',
  `setting_name` varchar(255) NOT NULL,
  `setting_value` text DEFAULT NULL,
  `setting_type` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data untuk tabel `issue_settings`
--

INSERT INTO `issue_settings` (`issue_id`, `locale`, `setting_name`, `setting_value`, `setting_type`) VALUES
(3, 'id_ID', 'coverImage', 'cover_issue_3_id_ID.jpg', 'string'),
(3, 'id_ID', 'coverImageAltText', '', 'string'),
(3, 'id_ID', 'description', '', 'string'),
(3, 'id_ID', 'title', '', 'string');

-- --------------------------------------------------------

--
-- Struktur dari tabel `item_views`
--

CREATE TABLE `item_views` (
  `assoc_type` bigint(20) NOT NULL,
  `assoc_id` bigint(20) NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `date_last_viewed` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `journals`
--

CREATE TABLE `journals` (
  `journal_id` bigint(20) NOT NULL,
  `path` varchar(32) NOT NULL,
  `seq` double(8,2) NOT NULL DEFAULT 0.00 COMMENT 'Used to order lists of journals',
  `primary_locale` varchar(14) NOT NULL,
  `enabled` smallint(6) NOT NULL DEFAULT 1 COMMENT 'Controls whether or not the journal is considered "live" and will appear on the website. (Note that disabled journals may still be accessible, but only if the user knows the URL.)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data untuk tabel `journals`
--

INSERT INTO `journals` (`journal_id`, `path`, `seq`, `primary_locale`, `enabled`) VALUES
(1, 'pm', 1.00, 'id_ID', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `journal_settings`
--

CREATE TABLE `journal_settings` (
  `journal_id` bigint(20) NOT NULL,
  `locale` varchar(14) NOT NULL DEFAULT '',
  `setting_name` varchar(255) NOT NULL,
  `setting_value` mediumtext DEFAULT NULL,
  `setting_type` varchar(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data untuk tabel `journal_settings`
--

INSERT INTO `journal_settings` (`journal_id`, `locale`, `setting_name`, `setting_value`, `setting_type`) VALUES
(1, '', 'contactEmail', 'admin@gmail.com', NULL),
(1, '', 'contactName', 'adminojs', NULL),
(1, '', 'contactPhone', '0878909888900', NULL),
(1, '', 'copyrightYearBasis', 'issue', NULL),
(1, '', 'defaultReviewMode', '2', NULL),
(1, '', 'disableSubmissions', '0', NULL),
(1, '', 'enableAnnouncements', '1', NULL),
(1, '', 'enableOai', '1', NULL),
(1, '', 'itemsPerPage', '25', NULL),
(1, '', 'keywords', 'request', NULL),
(1, '', 'licenseUrl', 'https://creativecommons.org/licenses/by-nc-sa/4.0', NULL),
(1, '', 'mailingAddress', 'Jln praya - keruak tangun desa sukaraja kecamatan jerowaru', NULL),
(1, '', 'membershipFee', '0', NULL),
(1, '', 'numAnnouncementsHomepage', '1', NULL),
(1, '', 'numPageLinks', '10', NULL),
(1, '', 'numWeeksPerResponse', '4', NULL),
(1, '', 'numWeeksPerReview', '4', NULL),
(1, '', 'publicationFee', '0', NULL),
(1, '', 'purchaseArticleFee', '0', NULL),
(1, '', 'sidebar', '[\"quick-menu\"]', NULL),
(1, '', 'supportedFormLocales', '[\"id_ID\"]', NULL),
(1, '', 'supportedLocales', '[\"id_ID\"]', NULL),
(1, '', 'supportedSubmissionLocales', '[\"id_ID\"]', NULL),
(1, '', 'supportEmail', 'irham@gmail.com', NULL),
(1, '', 'supportName', 'IRHAM', NULL),
(1, '', 'supportPhone', '08765478900239', NULL),
(1, '', 'themePluginPath', 'defaultManuscript', NULL),
(1, 'id_ID', 'abbreviation', 'KJU', NULL),
(1, 'id_ID', 'about', '<p lang=\"en-ID\" align=\"justify\">Yayasan Pesantren Luhur Al-Azhar berdiri tahun 1979, mengambil peran di bidang pendidikan. Yayasan menganggap bidang pendidikan merupakan persoalan yang sangat urgen untuk dipecahkan. Pada saat yang bersamaan, jumlah perguruan tinggi di NTB masih sangat sedikit, tidak sebanding dengan jumlah calon mahasiswa yang terus mengalami peningkatan dari tahun ke tahun. Untuk alasan itulah, kemudian pada tanggal 10 Mei 1981 Yayasan Pesantren Luhur Al-Azhar mengeluarkan Surat Keputusan Nomor 01/YPLA/1981 tentang Pembentukan Universitas Islam Al-Azhar di Provinsi Nusa Tenggara Barat.</p>\n<p lang=\"en-ID\" align=\"justify\">Pada mulanya UNIZAR memiliki 4 (empat) Fakultas, yakni: </p>\n<p lang=\"en-ID\" align=\"justify\">(1) <strong>Fakultas Hukum</strong>: Jurusan Hukum Keperdataan dan Jurusan Hukum Pidana, yang belakangan pada tahun 1993, program nasional pendidikan tinggi ilmu hukum mengalami reorientasi pendidikan yang dilaksanakan dengan melebur seluruh jurusan menjadi program studi tunggal, yakni program studi ilmu hukum, </p>\n<p lang=\"en-ID\" align=\"justify\">(2) <strong>Fakultas Pertanian</strong>: Program Studi Sosial Ekonomi,</p>\n<p lang=\"en-ID\" align=\"justify\">(3) <strong>Fakultas Teknik</strong>: Program Studi Teknik Sipil,</p>\n<p lang=\"en-ID\" align=\"justify\">(4) <strong>Fakultas Ekonomi</strong>: Program Studi Ekonomi Pembangunan.</p>\n<p lang=\"en-ID\" align=\"justify\">Kesemuanya mendapat status terdaftar dari Menteri Pendidikan dan Kebudayaan, yang kala itu dijabat oleh Prof. Dr. Nugroho Notusanto, pada tanggal 18 Agustus 1984, dengan SK Nomor 0378/0/1984 tentang Pemberian Status Terdaftar kepada Fakultas dan Jurusan dalam Lingkungan Universitas Islam Al-Azhar di Mataram.</p>\n<p lang=\"en-ID\" align=\"justify\">Setelah itu, Rektor sekaligus pendiri Unizar, orang menyebutnya tokoh tiga zaman, H. Abdurrahim, S.H, menggagas pendirian Fakultas Kedokteran. Namun, karena berbagai persyaratan masih belum dipenuhi saat itu, maka atas saran Prof. Dr. dr. Soewignjo Soemohardjo, Sp.PD, KGEH, tahun 1990 berdirilah Fakultas Biologi. Dalam proses pengurusan ijin, atas saran dari Kopertis Wilayah VIII, namanya kemudian berubah menjadi Fakultas Matematika dan Ilmu Pengetahuan Alam (MIPA), sedangkan biologi dijadikan nama jurusan dan program studi.</p>\n<p lang=\"en-ID\" align=\"justify\">Kurang lebih dua tahun berikutnya, tepatnya tanggal 28 April 1992, Fakultas MIPA mendapat status terdaftar dari Direktur Jenderal Pendidikan Tinggi (Dirjen Dikti) dengan Keputusan Nomor 154/DIKTI/Kep/1992 tentang Pemberian Status Terdaftar kepada Jurusan Biologi Program Studi Biologi untuk Jenjang Program S1 pada Fakultas MIPA di Lingkungan Unizar di Mataram. Fakultas baru ini dianggap sebagai embrio dari Fakultas Kedokteran.</p>\n<p lang=\"en-ID\" align=\"justify\">Beberapa tahun setelahnya, tepatnya tahun 2000, gagasan untuk mendirikan Fakultas Kedokteran dimunculkan kembali, dan baru setelah 4 (empat) tahun kemudian, tepatnya pada tanggal 17 Juni 2004, Dirjen Dikti mengeluarkan Surat Ijin Penyelenggaraan, yakni dengan Surat nomor 2100/D/T/2004, perihal Ijin Penyelenggaraan Program Studi Pendidikan Dokter pada Universitas Islam Al-Azhar (Unizar) Mataram. </p>\n<p lang=\"en-ID\" align=\"justify\">Setelah itu, berdirilah Program Studi Akuntansi dengan SK Izin Operasional Nomor 500/KPT/I/2016 tanggal 7 Desember 2016. Selanjutnya, Program Studi Agroekoteknologi berdiri melalui Keputusan Menteri Pendidikan Dan Kebudayaan Republik Indonesia Nomor 1193/M/2020 tentang Izin Pembukaan Program Studi Agroekoteknologi Program Sarjana Pada Universitas Islam Al-Azhar di Kota Mataram yang diselenggarakan oleh Yayasan Pesantren Luhur Al-Azhar tanggal 30 Desember 2020.</p>\n<p lang=\"en-ID\" align=\"justify\">Saat ini terdapat enam (6) fakultas dengan 9 (sembilan) program studi di Universitas Islam Al-Azhar:</p>', NULL),
(1, 'id_ID', 'acronym', 'Junizar', NULL),
(1, 'id_ID', 'announcementsIntroduction', '<p><a title=\"Bersaing di Kancah Nasional: Mahasiswi UNIZAR Raih Top 3 Miss Hijab NTB 2024\" href=\"https://unizar.ac.id/bersaing-di-kancah-nasional-mahasiswi-unizar-raih-top-3-miss-hijab-ntb-2024/\" target=\"_blank\" rel=\"noopener\">Bersaing di Kancah Nasional: Mahasiswi UNIZAR Raih Top 3 Miss Hijab NTB 2024</a></p>\n<div class=\"elementor-element elementor-element-a7f26b2 elementor-widget elementor-widget-image\" data-id=\"a7f26b2\" data-element_type=\"widget\" data-widget_type=\"image.default\">\n<div class=\"elementor-widget-container\">\n<figure class=\"wp-caption\"><br />\n<figcaption class=\"widget-image-caption wp-caption-text\">Nurul In Sakbaini, Mahasiswi Prodi Akuntansi FEB UNIZAR, meraih Juara sebagai Runner Up 2 pada Ajang Miss Hijab NTB 2024 yang digelar di Hotel Puri Indah Mataram, pada Jumat (23/08/24)</figcaption>\n</figure>\n</div>\n</div>\n<div class=\"elementor-element elementor-element-5482e11 elementor-widget elementor-widget-text-editor\" data-id=\"5482e11\" data-element_type=\"widget\" data-widget_type=\"text-editor.default\">\n<div class=\"elementor-widget-container\">\n<p><strong>UNIZAR NEWS</strong>, Mataram – Nurul In Sakbaini, seorang Mahasiswi Semester III (Tiga) Program Studi Akuntansi Fakultas Ekonomi dan Bisnis Universitas Islam Al-Azhar (UNIZAR), meraih Juara sebagai <em>Runner Up</em> 2 dalam ajang Miss Hijab NTB 2024. Lahir dan besar di Kota Bima, Iin, sapaan akrabnya, merasa bangga dapat mewakili kotanya dalam kompetisi bergengsi ini. Meskipun dihadapkan dengan peserta lain dari berbagai daerah seperti Sumbawa, Mataram, Kabupaten Lombok Barat, dan Kabupaten Lombok Timur, Iin mengaku tidak merasa tersaingi, namun lebih fokus untuk meningkatkan kualitas dirinya.</p>\n<p>“Untuk tantangan, saya merasa kesulitan pada <em>public speaking </em>dan pengetahuan tentang <em>fashion </em>yang masih kurang,” ungkap Iin. Dari 13 peserta yang tersisa, ajang ini menjadi ajang yang sangat kompetitif dengan berbagai kegiatan yang padat.</p>\n<p>Karantina yang berlangsung selama tiga hari di Hotel Puri Indah Mataram ini benar-benar menguji fisik dan mental para finalis. Pada hari pertama, mereka menjalani penilaian bakat, wawancara, dan sesi foto yang intens. “Jam kegiatan sangat padat, sampai-sampai kami jarang memegang HP untuk berkabar dengan keluarga,” kata Iin sambil tertawa kecil. Mereka harus mencuri waktu saat istirahat untuk sekedar mengunggah status di <em>WhatsApp</em>.</p>\n<p>Hari dimulai sejak subuh, dimana para peserta bangun sekitar jam 4 pagi untuk mandi, sholat, dan mempersiapkan diri. Setelah sarapan pukul 7 pagi, kegiatan dilanjutkan dengan <em>pre test</em> dan berbagai aktivitas lainnya hingga larut malam. “Pernah pada hari pertama, kami baru bisa tidur pukul 2 pagi, dan hanya tidur satu setengah jam sebelum harus bangun lagi untuk persiapan hari berikutnya,” cerita Iin tentang jadwal yang melelahkan.</p>\n</div>\n</div>\n<div class=\"elementor-element elementor-element-c45e691 elementor-widget elementor-widget-image\" data-id=\"c45e691\" data-element_type=\"widget\" data-widget_type=\"image.default\">\n<div class=\"elementor-widget-container\">\n<figure class=\"wp-caption\"><br />\n<figcaption class=\"widget-image-caption wp-caption-text\">Nurul In Sakbaini (kanan) saat menerima piala dan hadiah dari Indah Purwanti Ningsih, SE., Founder Lombok Womanpreneur Club (kiri) pada Ajang Miss Hijab NTB 2024 yang digelar di Hotel Puri Indah Mataram, pada Jumat (23/08/24)</figcaption>\n</figure>\n</div>\n</div>\n<div class=\"elementor-element elementor-element-01bcffc elementor-widget elementor-widget-text-editor\" data-id=\"01bcffc\" data-element_type=\"widget\" data-widget_type=\"text-editor.default\">\n<div class=\"elementor-widget-container\">\n<p>Hari kedua diisi dengan gladi bersih dan sesi wawancara lebih lanjut, serta pemotretan menggunakan kain tenun yang dijahit dan dikreasikan sendiri oleh para peserta. Mereka juga latihan koreografi untuk penampilan di atas panggung saat <em>grand final</em>. “Latihan jalan, posisi di panggung, semua dipersiapkan dengan matang untuk tampil maksimal di depan banyak orang,” jelas Iin.</p>\n<p>Setelah melalui berbagai tantangan di tingkat regional, Iin bersama para finalis Miss Hijab lainnya akan bertolak ke Yogyakarta untuk mengikuti lomba di tingkat nasional pada 14 November 2024. Persiapan menuju ajang tersebut sudah dimulai dari sekarang. Iin saat ini sedang mempersiapkan foto dan video yang akan dikirim ke tim pusat sebagai bagian dari penilaian.</p>\n<p>Dukungan dari keluarga dan UNIZAR sangat berarti bagi Iin. “Saya sangat bersyukur mendapat dukungan penuh dari keluarga dan kampus UNIZAR. Mereka sangat mengapresiasi apa yang telah saya capai,” ungkapnya dengan penuh syukur. Iin juga berencana untuk bersilaturahmi kembali ke kampus bersama Regional Direktur Miss Hijab NTB 2024 sebagai bentuk rasa terima kasih atas dukungan yang diberikan.</p>\n<p>Sebagai persiapan menuju ajang nasional, Iin kini sedang sibuk dengan sesi <em>photoshoot </em>yang akan digunakan untuk pembuatan video bakat dan berbagai keperluan lainnya. Dalam sesi tersebut, ia akan mengenakan pakaian yang digunakan saat <em>grand final</em>, termasuk busana pengantin.</p>\n<p>Nurul In Sakbaini menjadi contoh nyata bagaimana ketekunan, kerja keras, dan dukungan dari lingkungan sekitar dapat membawa seseorang meraih mimpi-mimpinya. Perjalanan ini belum berakhir, dan kita semua, sivitas akademika UNIZAR dan masyarakat NTB, menanti kiprah Iin di tingkat nasional. Semoga sukses, Iin! (Asmadi/Humas)</p>\n</div>\n</div>', NULL),
(1, 'id_ID', 'authorInformation', 'Tertarik menerbitkan jurnal? Kami merekomendasikan Anda mereview halaman <a href=\"http://localhost/ojs3/index.php/pm/about\">Tentang Kami </a>untuk kebijakan bagian jurnal serta <a href=\"http://localhost/ojs3/index.php/pm/about/submissions#authorGuidelines\">Petunjuk Penulis </a>. Penulis perlu <a href=\"http://localhost/ojs3/index.php/pm/user/register\">Mendaftar </a>dengan jurnal sebelum menyerahkan atau jika sudah terdaftar <a href=\"http://localhost/ojs3/index.php/index/login\">login</a>dan mulai proses lima langkah.', NULL),
(1, 'id_ID', 'clockssLicense', 'Journal ini memakai sistem CLOCKSS untum membuat sistem pengarsipan terdistribusi di antara pustaka yang turut berpartisipasi dan mengizinkan pustaka tersebut membuat arsip jurnal secara permanen untuk tujuan pemeliharaan dan pemulihan. <a href=\"http://clockss.org/\">More...</a>', NULL),
(1, 'id_ID', 'contactAffiliation', 'ojs', NULL),
(1, 'id_ID', 'description', '<p>Kumpulan Junarl Universitas Islam Al-Azhar</p>', NULL),
(1, 'id_ID', 'editorialTeam', '<p>1. MUHAMMAD ISA ASRORI</p>\n<p>2. IRHAM</p>', NULL),
(1, 'id_ID', 'favicon', '{\"name\":\"logo unizar.png\",\"uploadName\":\"favicon_id_ID.png\",\"width\":2711,\"height\":2708,\"dateUploaded\":\"2024-09-28 11:22:49\",\"altText\":\"\"}', NULL),
(1, 'id_ID', 'homepageImage', '{\"name\":\"cover_issue_36_en_US.jpg\",\"uploadName\":\"homepageImage_id_ID.jpg\",\"width\":1131,\"height\":1600,\"dateUploaded\":\"2024-09-26 15:15:12\",\"altText\":\"\"}', NULL),
(1, 'id_ID', 'librarianInformation', 'Kami mendorong pustakawan riset untuk mendaftar jurnal diantara pemegang jurnal eletronik perpustakaan. Begitu juga, ini mungkin berharga bahwa sistem penerbitan sumber terbuka jurnal cocok untuk perpustakaan untuk menjadi tuan rumah untuk anggota fakultas untuk menggunakan jurnal saat mereka terlibat dalam proses editing. (Lihat <a href=\"http://pkp.sfu.ca/ojs\">Open Journal Systems</a>).', NULL),
(1, 'id_ID', 'lockssLicense', 'OJS sistem LOCKSS berfungsi sebagai sistem pengarsipan terdistribusi antar-perpustakaan yang menggunakan sistem ini dengan tujuan membuat arsip permanen (untuk preservasi dan restorasi). <a href=\"http://www.lockss.org/\">Lanjut...</a>', NULL),
(1, 'id_ID', 'name', 'Kumpulan Junral Unizar', NULL),
(1, 'id_ID', 'openAccessPolicy', 'Jurnal ini menyediakan akses terbuka yang pada prinsipnya membuat riset tersedia secara gratis untuk publik dan akan mensupport pertukaran pengetahuan global terbesar.', NULL),
(1, 'id_ID', 'pageFooter', '<div class=\"elementor-element elementor-element-625180a2 elementor-widget elementor-widget-image\" data-id=\"625180a2\" data-element_type=\"widget\" data-widget_type=\"image.default\">\n<div class=\"elementor-widget-container\"><img class=\"attachment-medium size-medium wp-image-3597\" src=\"https://unizar.ac.id/wp-content/uploads/2022/08/LOGO_UNIZAR_TEXT-PUTIH.png\" alt=\"\" width=\"300\" height=\"100\" /></div>\n</div>\n<div class=\"elementor-element elementor-element-6a0ce8db elementor-widget elementor-widget-text-editor\" data-id=\"6a0ce8db\" data-element_type=\"widget\" data-widget_type=\"text-editor.default\">\n<div class=\"elementor-widget-container\">\n<p>Diselenggarakan oleh<br /><strong>Yayasan Pesantren Luhur Al-Azhar</strong><br />Jl. Unizar No.20, Turida, Kec. Sandubaya, Kota Mataram, Nusa Tenggara Barat</p>\n<ul>\n<li>Telepon : <span role=\"link\" aria-label=\"Hubungi Nomor Telepon (0370) 6175565\">(0370) 7562077<br /></span></li>\n<li>Fax : <span role=\"link\" aria-label=\"Hubungi Nomor Telepon (0370) 6175565\">(0370) 7562077<br /></span></li>\n<li>Email : mail@unizar.ac.id</li>\n</ul>\n</div>\n</div>', NULL),
(1, 'id_ID', 'pageHeaderLogoImage', '{\"name\":\"header.jpg\",\"uploadName\":\"pageHeaderLogoImage_id_ID.jpg\",\"width\":5500,\"height\":450,\"dateUploaded\":\"2024-09-29 01:53:41\",\"altText\":\"\"}', NULL),
(1, 'id_ID', 'privacyStatement', '<p>Nama dan alamat email yang dimasukkan di website ini hanya akan digunakan untuk tujuan yang sudah disebutkan, tidak akan disalahgunakan untuk tujuan lain atau untuk disebarluaskan ke pihak lain.</p>', NULL),
(1, 'id_ID', 'readerInformation', 'Kami mendorong pembaca untuk mendaftarkan diri di layanan notifikasi penerbitan untuk jurnal ini. Gunakan tautan <a href=\"http://localhost/ojs3/index.php/pm/user/register\">Daftar</a>di bagian atas beranda jurnal. Dengan mendaftar, pembaca akan memperoleh email berisi Daftar Isi tiap ada terbitan jurnal baru. Daftar ini juga membuat jurnal dapat mengetahui tingkat dukungan atau jumlah pembaca. Lihat jurnal <a href=\"http://localhost/ojs3/index.php/pm/about/submissions#privacyStatement\">Pernyataan Privasi</a>, yang meyakinkan pembaca bahwa nama dan alamat email yang didaftarkan tidak akan digunakan untuk tujuan lain.', NULL),
(1, 'id_ID', 'submissionChecklist', '[{\"order\":1,\"content\":\"Naskah belum pernah diterbitkan sebelumnya, dan tidak sedang dalam pertimbangan untuk diterbitkan di jurnal lain (atau sudah dijelaskan dalam Komentar kepada Editor).\"},{\"order\":2,\"content\":\"File naskah dalam format dokumen OpenOffice, Microsoft Word, atau RTF.\"},{\"order\":3,\"content\":\"Referensi yang dapat diakses online telah dituliskan URL-nya.\"},{\"order\":4,\"content\":\"Naskah diketik dengan teks 1 spasi; font 12; menggunakan huruf miring, bukan huruf bergaris bawah (kecuali alamat URL); dan semua ilustrasi, gambar, dan tabel diletakkan dalam teks pada tempat yang diharapkan, bukan dikelompokkan tersendiri di akhir naskah.\"},{\"order\":5,\"content\":\"Naskah mengikuti aturan gaya selingkung dan bibliografi yang disyaratkan dalam Panduan Penulis.\"}]', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `library_files`
--

CREATE TABLE `library_files` (
  `file_id` bigint(20) NOT NULL,
  `context_id` bigint(20) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `original_file_name` varchar(255) NOT NULL,
  `file_type` varchar(255) NOT NULL,
  `file_size` bigint(20) NOT NULL,
  `type` smallint(6) NOT NULL,
  `date_uploaded` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  `submission_id` bigint(20) NOT NULL,
  `public_access` smallint(6) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `library_file_settings`
--

CREATE TABLE `library_file_settings` (
  `file_id` bigint(20) NOT NULL,
  `locale` varchar(14) NOT NULL DEFAULT '',
  `setting_name` varchar(255) NOT NULL,
  `setting_value` text DEFAULT NULL,
  `setting_type` varchar(6) NOT NULL COMMENT '(bool|int|float|string|object|date)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `metadata_descriptions`
--

CREATE TABLE `metadata_descriptions` (
  `metadata_description_id` bigint(20) NOT NULL,
  `assoc_type` bigint(20) NOT NULL DEFAULT 0,
  `assoc_id` bigint(20) NOT NULL DEFAULT 0,
  `schema_namespace` varchar(255) NOT NULL,
  `schema_name` varchar(255) NOT NULL,
  `display_name` varchar(255) DEFAULT NULL,
  `seq` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `metadata_description_settings`
--

CREATE TABLE `metadata_description_settings` (
  `metadata_description_id` bigint(20) NOT NULL,
  `locale` varchar(14) NOT NULL DEFAULT '',
  `setting_name` varchar(255) NOT NULL,
  `setting_value` text DEFAULT NULL,
  `setting_type` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `metrics`
--

CREATE TABLE `metrics` (
  `load_id` varchar(255) NOT NULL,
  `context_id` bigint(20) NOT NULL,
  `pkp_section_id` bigint(20) DEFAULT NULL,
  `assoc_object_type` bigint(20) DEFAULT NULL,
  `assoc_object_id` bigint(20) DEFAULT NULL,
  `submission_id` bigint(20) DEFAULT NULL,
  `representation_id` bigint(20) DEFAULT NULL,
  `assoc_type` bigint(20) NOT NULL,
  `assoc_id` bigint(20) NOT NULL,
  `day` varchar(8) DEFAULT NULL,
  `month` varchar(6) DEFAULT NULL,
  `file_type` smallint(6) DEFAULT NULL,
  `country_id` varchar(2) DEFAULT NULL,
  `region` varchar(2) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `metric_type` varchar(255) NOT NULL,
  `metric` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data untuk tabel `metrics`
--

INSERT INTO `metrics` (`load_id`, `context_id`, `pkp_section_id`, `assoc_object_type`, `assoc_object_id`, `submission_id`, `representation_id`, `assoc_type`, `assoc_id`, `day`, `month`, `file_type`, `country_id`, `region`, `city`, `metric_type`, `metric`) VALUES
('usage_events_20240926.log', 1, NULL, NULL, NULL, NULL, NULL, 256, 1, '20240926', '202409', NULL, NULL, NULL, NULL, 'ojs::counter', 63),
('usage_events_20240927.log', 1, NULL, NULL, NULL, NULL, NULL, 256, 1, '20240927', '202409', NULL, NULL, NULL, NULL, 'ojs::counter', 36),
('usage_events_20240927.log', 1, NULL, NULL, NULL, NULL, NULL, 259, 2, '20240927', '202409', NULL, NULL, NULL, NULL, 'ojs::counter', 1),
('usage_events_20240928.log', 1, NULL, NULL, NULL, NULL, NULL, 256, 1, '20240928', '202409', NULL, NULL, NULL, NULL, 'ojs::counter', 69),
('usage_events_20240929.log', 1, NULL, NULL, NULL, NULL, NULL, 256, 1, '20240929', '202409', NULL, NULL, NULL, NULL, 'ojs::counter', 18),
('usage_events_20240929.log', 1, NULL, NULL, NULL, NULL, NULL, 259, 3, '20240929', '202409', NULL, NULL, NULL, NULL, 'ojs::counter', 39),
('usage_events_20240929.log', 1, 1, 259, 3, 4, NULL, 1048585, 4, '20240929', '202409', NULL, NULL, NULL, NULL, 'ojs::counter', 13),
('usage_events_20240929.log', 1, 1, 259, 3, 8, NULL, 1048585, 8, '20240929', '202409', NULL, NULL, NULL, NULL, 'ojs::counter', 10);

-- --------------------------------------------------------

--
-- Struktur dari tabel `navigation_menus`
--

CREATE TABLE `navigation_menus` (
  `navigation_menu_id` bigint(20) NOT NULL,
  `context_id` bigint(20) NOT NULL,
  `area_name` varchar(255) DEFAULT '',
  `title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data untuk tabel `navigation_menus`
--

INSERT INTO `navigation_menus` (`navigation_menu_id`, `context_id`, `area_name`, `title`) VALUES
(1, 0, 'user', 'User Navigation Menu'),
(2, 1, 'user', 'User Navigation Menu'),
(3, 1, 'primary', 'Primary');

-- --------------------------------------------------------

--
-- Struktur dari tabel `navigation_menu_items`
--

CREATE TABLE `navigation_menu_items` (
  `navigation_menu_item_id` bigint(20) NOT NULL,
  `context_id` bigint(20) NOT NULL,
  `path` varchar(255) DEFAULT '',
  `type` varchar(255) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data untuk tabel `navigation_menu_items`
--

INSERT INTO `navigation_menu_items` (`navigation_menu_item_id`, `context_id`, `path`, `type`) VALUES
(1, 0, NULL, 'NMI_TYPE_USER_REGISTER'),
(2, 0, NULL, 'NMI_TYPE_USER_LOGIN'),
(3, 0, NULL, 'NMI_TYPE_USER_DASHBOARD'),
(4, 0, NULL, 'NMI_TYPE_USER_DASHBOARD'),
(5, 0, NULL, 'NMI_TYPE_USER_PROFILE'),
(6, 0, NULL, 'NMI_TYPE_ADMINISTRATION'),
(7, 0, NULL, 'NMI_TYPE_USER_LOGOUT'),
(8, 1, '', 'NMI_TYPE_USER_REGISTER'),
(9, 1, '', 'NMI_TYPE_USER_LOGIN'),
(10, 1, NULL, 'NMI_TYPE_USER_DASHBOARD'),
(12, 1, NULL, 'NMI_TYPE_USER_PROFILE'),
(13, 1, NULL, 'NMI_TYPE_ADMINISTRATION'),
(14, 1, NULL, 'NMI_TYPE_USER_LOGOUT'),
(15, 1, '', 'NMI_TYPE_CURRENT'),
(16, 1, '', 'NMI_TYPE_ARCHIVES'),
(17, 1, '', 'NMI_TYPE_ANNOUNCEMENTS'),
(18, 1, NULL, 'NMI_TYPE_ABOUT'),
(19, 1, NULL, 'NMI_TYPE_ABOUT'),
(20, 1, NULL, 'NMI_TYPE_SUBMISSIONS'),
(21, 1, '', 'NMI_TYPE_EDITORIAL_TEAM'),
(22, 1, NULL, 'NMI_TYPE_PRIVACY'),
(23, 1, '', 'NMI_TYPE_CONTACT'),
(24, 1, NULL, 'NMI_TYPE_SEARCH'),
(26, 1, '', 'NMI_TYPE_ABOUT'),
(27, 1, '', 'NMI_TYPE_ABOUT'),
(28, 1, '', 'NMI_TYPE_USER_DASHBOARD'),
(29, 1, '', 'NMI_TYPE_CURRENT'),
(30, 1, '', 'NMI_TYPE_USER_REGISTER');

-- --------------------------------------------------------

--
-- Struktur dari tabel `navigation_menu_item_assignments`
--

CREATE TABLE `navigation_menu_item_assignments` (
  `navigation_menu_item_assignment_id` bigint(20) NOT NULL,
  `navigation_menu_id` bigint(20) NOT NULL,
  `navigation_menu_item_id` bigint(20) NOT NULL,
  `parent_id` bigint(20) DEFAULT NULL,
  `seq` bigint(20) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data untuk tabel `navigation_menu_item_assignments`
--

INSERT INTO `navigation_menu_item_assignments` (`navigation_menu_item_assignment_id`, `navigation_menu_id`, `navigation_menu_item_id`, `parent_id`, `seq`) VALUES
(1, 1, 1, 0, 0),
(2, 1, 2, 0, 1),
(3, 1, 3, 0, 2),
(4, 1, 4, 3, 0),
(5, 1, 5, 3, 1),
(6, 1, 6, 3, 2),
(7, 1, 7, 3, 3),
(271, 3, 28, 0, 0),
(272, 3, 17, 0, 1),
(273, 3, 29, 0, 2),
(274, 3, 16, 29, 3),
(275, 3, 15, 29, 4),
(276, 3, 27, 0, 5),
(277, 3, 30, 0, 6),
(278, 3, 8, 30, 7),
(279, 3, 9, 30, 8),
(280, 2, 10, 0, 0),
(281, 2, 12, 10, 1),
(282, 2, 13, 10, 2),
(283, 2, 14, 10, 3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `navigation_menu_item_assignment_settings`
--

CREATE TABLE `navigation_menu_item_assignment_settings` (
  `navigation_menu_item_assignment_id` bigint(20) NOT NULL,
  `locale` varchar(14) NOT NULL DEFAULT '',
  `setting_name` varchar(255) NOT NULL,
  `setting_value` text DEFAULT NULL,
  `setting_type` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data untuk tabel `navigation_menu_item_assignment_settings`
--

INSERT INTO `navigation_menu_item_assignment_settings` (`navigation_menu_item_assignment_id`, `locale`, `setting_name`, `setting_value`, `setting_type`) VALUES
(271, 'id_ID', 'title', 'BERANDA', 'string'),
(272, 'id_ID', 'title', 'PENGUMUMAN', 'string'),
(273, 'id_ID', 'title', 'TERBITAN', 'string'),
(274, 'id_ID', 'title', 'ARSIP', 'string'),
(275, 'id_ID', 'title', 'TERKINI', 'string'),
(276, 'id_ID', 'title', 'TENTANG', 'string'),
(277, 'id_ID', 'title', 'USER', 'string'),
(278, 'id_ID', 'title', 'DAFTAR', 'string'),
(279, 'id_ID', 'title', 'LOGIN', 'string');

-- --------------------------------------------------------

--
-- Struktur dari tabel `navigation_menu_item_settings`
--

CREATE TABLE `navigation_menu_item_settings` (
  `navigation_menu_item_id` bigint(20) NOT NULL,
  `locale` varchar(14) NOT NULL DEFAULT '',
  `setting_name` varchar(255) NOT NULL,
  `setting_value` longtext DEFAULT NULL,
  `setting_type` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data untuk tabel `navigation_menu_item_settings`
--

INSERT INTO `navigation_menu_item_settings` (`navigation_menu_item_id`, `locale`, `setting_name`, `setting_value`, `setting_type`) VALUES
(1, '', 'titleLocaleKey', 'navigation.register', 'string'),
(2, '', 'titleLocaleKey', 'navigation.login', 'string'),
(3, '', 'titleLocaleKey', '{$loggedInUsername}', 'string'),
(4, '', 'titleLocaleKey', 'navigation.dashboard', 'string'),
(5, '', 'titleLocaleKey', 'common.viewProfile', 'string'),
(6, '', 'titleLocaleKey', 'navigation.admin', 'string'),
(7, '', 'titleLocaleKey', 'user.logOut', 'string'),
(8, '', 'titleLocaleKey', 'navigation.register', 'string'),
(8, 'id_ID', 'content', '', 'string'),
(8, 'id_ID', 'remoteUrl', '', 'string'),
(8, 'id_ID', 'title', 'DAFTAR', 'string'),
(9, '', 'titleLocaleKey', 'navigation.login', 'string'),
(9, 'id_ID', 'content', '', 'string'),
(9, 'id_ID', 'remoteUrl', '', 'string'),
(9, 'id_ID', 'title', 'LOGIN', 'string'),
(10, '', 'titleLocaleKey', '{$loggedInUsername}', 'string'),
(12, '', 'titleLocaleKey', 'common.viewProfile', 'string'),
(13, '', 'titleLocaleKey', 'navigation.admin', 'string'),
(14, '', 'titleLocaleKey', 'user.logOut', 'string'),
(15, '', 'titleLocaleKey', 'navigation.current', 'string'),
(15, 'id_ID', 'content', '', 'string'),
(15, 'id_ID', 'remoteUrl', '', 'string'),
(15, 'id_ID', 'title', 'TERKINI', 'string'),
(16, '', 'titleLocaleKey', 'navigation.archives', 'string'),
(16, 'id_ID', 'content', '', 'string'),
(16, 'id_ID', 'remoteUrl', '', 'string'),
(16, 'id_ID', 'title', 'ARSIP', 'string'),
(17, '', 'titleLocaleKey', 'manager.announcements', 'string'),
(17, 'id_ID', 'content', '', 'string'),
(17, 'id_ID', 'remoteUrl', '', 'string'),
(17, 'id_ID', 'title', 'PENGUMUMAN', 'string'),
(18, '', 'titleLocaleKey', 'navigation.about', 'string'),
(19, '', 'titleLocaleKey', 'about.aboutContext', 'string'),
(20, '', 'titleLocaleKey', 'about.submissions', 'string'),
(21, '', 'titleLocaleKey', 'about.editorialTeam', 'string'),
(21, 'id_ID', 'content', '', 'string'),
(21, 'id_ID', 'remoteUrl', '', 'string'),
(21, 'id_ID', 'title', 'DEWAN REDAKSI', 'string'),
(22, '', 'titleLocaleKey', 'manager.setup.privacyStatement', 'string'),
(23, '', 'titleLocaleKey', 'about.contact', 'string'),
(23, 'id_ID', 'content', '', 'string'),
(23, 'id_ID', 'remoteUrl', '', 'string'),
(23, 'id_ID', 'title', 'KONTAK', 'string'),
(24, '', 'titleLocaleKey', 'common.search', 'string'),
(26, 'id_ID', 'content', '', 'string'),
(26, 'id_ID', 'remoteUrl', '', 'string'),
(26, 'id_ID', 'title', 'PROFIL', 'string'),
(27, 'id_ID', 'content', '', 'string'),
(27, 'id_ID', 'remoteUrl', '', 'string'),
(27, 'id_ID', 'title', 'TENTANG', 'string'),
(28, 'id_ID', 'content', '', 'string'),
(28, 'id_ID', 'remoteUrl', '', 'string'),
(28, 'id_ID', 'title', 'BERANDA', 'string'),
(29, 'id_ID', 'content', '', 'string'),
(29, 'id_ID', 'remoteUrl', '', 'string'),
(29, 'id_ID', 'title', 'TERBITAN', 'string'),
(30, 'id_ID', 'content', '', 'string'),
(30, 'id_ID', 'remoteUrl', '', 'string'),
(30, 'id_ID', 'title', 'USER', 'string');

-- --------------------------------------------------------

--
-- Struktur dari tabel `notes`
--

CREATE TABLE `notes` (
  `note_id` bigint(20) NOT NULL,
  `assoc_type` bigint(20) NOT NULL,
  `assoc_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `date_created` datetime NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `contents` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data untuk tabel `notes`
--

INSERT INTO `notes` (`note_id`, `assoc_type`, `assoc_id`, `user_id`, `date_created`, `date_modified`, `title`, `contents`) VALUES
(1, 1048586, 1, 1, '2024-09-29 03:19:51', '2024-09-29 03:19:51', NULL, NULL),
(2, 1048586, 2, 1, '2024-09-29 03:20:03', '2024-09-29 03:20:03', NULL, NULL),
(3, 1048586, 3, 1, '2024-09-29 05:58:20', '2024-09-29 05:58:20', NULL, NULL),
(4, 1048586, 4, 1, '2024-09-29 06:00:37', '2024-09-29 06:00:37', NULL, NULL),
(5, 1048586, 5, 1, '2024-09-29 06:26:28', '2024-09-29 06:26:28', NULL, NULL),
(6, 1048586, 6, 1, '2024-09-29 06:27:03', '2024-09-29 06:27:03', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `notifications`
--

CREATE TABLE `notifications` (
  `notification_id` bigint(20) NOT NULL,
  `context_id` bigint(20) NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `level` bigint(20) NOT NULL,
  `type` bigint(20) NOT NULL,
  `date_created` datetime NOT NULL,
  `date_read` datetime DEFAULT NULL,
  `assoc_type` bigint(20) DEFAULT NULL,
  `assoc_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data untuk tabel `notifications`
--

INSERT INTO `notifications` (`notification_id`, `context_id`, `user_id`, `level`, `type`, `date_created`, `date_read`, `assoc_type`, `assoc_id`) VALUES
(63, 1, 2, 2, 268435477, '2024-09-27 16:11:16', NULL, 259, 1),
(65, 1, 1, 2, 268435477, '2024-09-27 16:11:19', NULL, 259, 1),
(70, 1, 2, 2, 268435477, '2024-09-27 16:14:56', NULL, 259, 2),
(72, 1, 1, 2, 268435477, '2024-09-27 16:14:58', NULL, 259, 2),
(83, 1, 2, 2, 268435477, '2024-09-28 07:30:06', NULL, 259, 2),
(85, 1, 1, 2, 268435477, '2024-09-28 07:30:09', NULL, 259, 2),
(135, 1, 2, 2, 268435477, '2024-09-29 01:49:19', NULL, 259, 3),
(137, 1, 1, 2, 268435477, '2024-09-29 01:49:21', NULL, 259, 3),
(140, 1, 2, 2, 268435477, '2024-09-29 02:49:57', NULL, 259, 3),
(142, 1, 1, 2, 268435477, '2024-09-29 02:49:59', NULL, 259, 3),
(144, 1, 2, 2, 268435477, '2024-09-29 02:51:42', NULL, 259, 3),
(146, 1, 1, 2, 268435477, '2024-09-29 02:51:44', NULL, 259, 3),
(148, 1, 2, 2, 268435477, '2024-09-29 02:59:07', NULL, 259, 3),
(150, 1, 1, 2, 268435477, '2024-09-29 02:59:09', NULL, 259, 3),
(159, 1, 2, 2, 268435477, '2024-09-29 03:23:49', NULL, 259, 3),
(161, 1, 1, 2, 268435477, '2024-09-29 03:23:51', NULL, 259, 3),
(171, 1, 2, 2, 268435477, '2024-09-29 06:28:29', NULL, 259, 3),
(173, 1, 1, 2, 268435477, '2024-09-29 06:28:31', NULL, 259, 3),
(175, 1, 2, 2, 268435477, '2024-09-29 09:02:02', NULL, 259, 3),
(177, 1, 1, 2, 268435477, '2024-09-29 09:02:04', NULL, 259, 3),
(179, 1, 2, 2, 268435477, '2024-09-30 03:48:32', NULL, 259, 3),
(181, 1, 1, 2, 268435477, '2024-09-30 03:48:34', NULL, 259, 3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `notification_mail_list`
--

CREATE TABLE `notification_mail_list` (
  `notification_mail_list_id` bigint(20) NOT NULL,
  `email` varchar(90) NOT NULL,
  `confirmed` smallint(6) NOT NULL DEFAULT 0,
  `token` varchar(40) NOT NULL,
  `context` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `notification_settings`
--

CREATE TABLE `notification_settings` (
  `notification_id` bigint(20) NOT NULL,
  `locale` varchar(14) DEFAULT NULL,
  `setting_name` varchar(64) NOT NULL,
  `setting_value` text NOT NULL,
  `setting_type` varchar(6) NOT NULL COMMENT '(bool|int|float|string|object)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `notification_subscription_settings`
--

CREATE TABLE `notification_subscription_settings` (
  `setting_id` bigint(20) NOT NULL,
  `setting_name` varchar(64) NOT NULL,
  `setting_value` text NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `context` bigint(20) NOT NULL,
  `setting_type` varchar(6) NOT NULL COMMENT '(bool|int|float|string|object)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `oai_resumption_tokens`
--

CREATE TABLE `oai_resumption_tokens` (
  `token` varchar(32) NOT NULL,
  `expire` bigint(20) NOT NULL,
  `record_offset` int(11) NOT NULL,
  `params` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `plugin_settings`
--

CREATE TABLE `plugin_settings` (
  `plugin_name` varchar(80) NOT NULL,
  `context_id` bigint(20) NOT NULL,
  `setting_name` varchar(80) NOT NULL,
  `setting_value` text DEFAULT NULL,
  `setting_type` varchar(6) NOT NULL COMMENT '(bool|int|float|string|object)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data untuk tabel `plugin_settings`
--

INSERT INTO `plugin_settings` (`plugin_name`, `context_id`, `setting_name`, `setting_value`, `setting_type`) VALUES
('academicfreethemeplugin', 1, 'article_tracking_date', 'true', 'string'),
('academicfreethemeplugin', 1, 'baseColour', '#048518', 'string'),
('academicfreethemeplugin', 1, 'bootstrapTheme', 'yeti', 'string'),
('academicfreethemeplugin', 1, 'crossmark_button', 'false', 'string'),
('academicfreethemeplugin', 1, 'dimension_badge', 'false', 'string'),
('academicfreethemeplugin', 1, 'doi_on_index', 'true', 'string'),
('academicfreethemeplugin', 1, 'enabled', '0', 'bool'),
('academicfreethemeplugin', 1, 'galley_link_on_index', 'false', 'string'),
('academicfreethemeplugin', 1, 'headerTheme', 'red', 'string'),
('academicfreethemeplugin', 1, 'maintenance_mode', 'false', 'string'),
('academicfreethemeplugin', 1, 'statistics', 'true', 'string'),
('acronplugin', 0, 'crontab', '[{\"className\":\"plugins.generic.usageStats.UsageStatsLoader\",\"frequency\":{\"hour\":24},\"args\":[\"autoStage\"]},{\"className\":\"plugins.generic.usageStats.UsageStatsLoader\",\"frequency\":{\"hour\":24},\"args\":[\"autoStage\"]},{\"className\":\"plugins.importexport.crossref.CrossrefInfoSender\",\"frequency\":{\"hour\":24},\"args\":[]},{\"className\":\"plugins.importexport.datacite.DataciteInfoSender\",\"frequency\":{\"hour\":24},\"args\":[]},{\"className\":\"plugins.importexport.doaj.DOAJInfoSender\",\"frequency\":{\"hour\":24},\"args\":[]},{\"className\":\"plugins.generic.usageStats.UsageStatsLoader\",\"frequency\":{\"hour\":24},\"args\":[\"autoStage\"]},{\"className\":\"plugins.importexport.crossref.CrossrefInfoSender\",\"frequency\":{\"hour\":24},\"args\":[]},{\"className\":\"plugins.importexport.datacite.DataciteInfoSender\",\"frequency\":{\"hour\":24},\"args\":[]},{\"className\":\"plugins.importexport.doaj.DOAJInfoSender\",\"frequency\":{\"hour\":24},\"args\":[]},{\"className\":\"plugins.generic.usageStats.UsageStatsLoader\",\"frequency\":{\"hour\":24},\"args\":[\"autoStage\"]},{\"className\":\"plugins.importexport.crossref.CrossrefInfoSender\",\"frequency\":{\"hour\":24},\"args\":[]},{\"className\":\"plugins.importexport.datacite.DataciteInfoSender\",\"frequency\":{\"hour\":24},\"args\":[]},{\"className\":\"plugins.importexport.doaj.DOAJInfoSender\",\"frequency\":{\"hour\":24},\"args\":[]},{\"className\":\"plugins.generic.usageStats.UsageStatsLoader\",\"frequency\":{\"hour\":24},\"args\":[\"autoStage\"]},{\"className\":\"plugins.importexport.crossref.CrossrefInfoSender\",\"frequency\":{\"hour\":24},\"args\":[]},{\"className\":\"plugins.importexport.datacite.DataciteInfoSender\",\"frequency\":{\"hour\":24},\"args\":[]},{\"className\":\"plugins.importexport.doaj.DOAJInfoSender\",\"frequency\":{\"hour\":24},\"args\":[]},{\"className\":\"plugins.generic.usageStats.UsageStatsLoader\",\"frequency\":{\"hour\":24},\"args\":[\"autoStage\"]},{\"className\":\"plugins.importexport.crossref.CrossrefInfoSender\",\"frequency\":{\"hour\":24},\"args\":[]},{\"className\":\"plugins.importexport.datacite.DataciteInfoSender\",\"frequency\":{\"hour\":24},\"args\":[]},{\"className\":\"plugins.importexport.doaj.DOAJInfoSender\",\"frequency\":{\"hour\":24},\"args\":[]},{\"className\":\"lib.pkp.classes.task.ReviewReminder\",\"frequency\":{\"hour\":24},\"args\":[]},{\"className\":\"lib.pkp.classes.task.StatisticsReport\",\"frequency\":{\"day\":\"1\"},\"args\":[]},{\"className\":\"classes.tasks.SubscriptionExpiryReminder\",\"frequency\":{\"day\":\"1\"},\"args\":[]}]', 'object'),
('acronplugin', 0, 'enabled', '1', 'bool'),
('bootstrapthreethemeplugin', 1, 'bootstrapTheme', 'readable', 'string'),
('bootstrapthreethemeplugin', 1, 'enabled', '1', 'bool'),
('browseblockplugin', 1, 'enabled', '1', 'bool'),
('customblockmanagerplugin', 1, 'blocks', '[\"quick-menu\",\"hubungi-kami\"]', 'object'),
('customblockmanagerplugin', 1, 'enabled', '1', 'bool'),
('defaultmanuscriptchildthemeplugin', 1, 'accentColour', '#00923F', 'string'),
('defaultmanuscriptchildthemeplugin', 1, 'enabled', '1', 'bool'),
('defaultthemeplugin', 0, 'enabled', '1', 'bool'),
('defaultthemeplugin', 1, 'baseColour', '#00923F', 'string'),
('defaultthemeplugin', 1, 'enabled', '1', 'bool'),
('defaultthemeplugin', 1, 'showDescriptionInJournalIndex', 'false', 'string'),
('defaultthemeplugin', 1, 'typography', 'notoSans', 'string'),
('defaultthemeplugin', 1, 'useHomepageImageAsHeader', 'false', 'string'),
('developedbyblockplugin', 0, 'enabled', '0', 'bool'),
('developedbyblockplugin', 0, 'seq', '0', 'int'),
('developedbyblockplugin', 1, 'enabled', '1', 'bool'),
('developedbyblockplugin', 1, 'seq', '0', 'int'),
('driverplugin', 1, 'enabled', '0', 'bool'),
('dublincoremetaplugin', 1, 'enabled', '1', 'bool'),
('googlescholarplugin', 1, 'enabled', '1', 'bool'),
('htmlarticlegalleyplugin', 1, 'enabled', '1', 'bool'),
('hubungi-kami', 1, 'blockContent', '{\"id_ID\":\"<div class=\\\"pkp_structure_sidebar left\\\" role=\\\"complementary\\\" aria-label=\\\"Sidebar\\\">\\r\\n<div id=\\\"customblock-WA\\\" class=\\\"pkp_block block_custom\\\">\\r\\n<div class=\\\"content\\\">\\r\\n<div class=\\\"content\\\">\\r\\n<div style=\\\"padding: 8px; border-bottom: 1px solid #696969; background: #4b8b3b; color: #102e43;\\\"><strong><span style=\\\"font-size: medium; font-family: \'gadugi\', \'avant garde\';\\\"><span style=\\\"color: white;\\\">Hubungi Kami !!<\\/span><\\/span><\\/strong><\\/div>\\r\\n<img src=\\\"http:\\/\\/localhost\\/ojs3\\/public\\/site\\/images\\/adminojs\\/wa-77a1ee4a688f9a3d25c591302226bdc3.png\\\" alt=\\\"\\\" width=\\\"222\\\" height=\\\"77\\\"><\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<div id=\\\"customblock-mainmenu\\\" class=\\\"pkp_block block_custom\\\">\\r\\n<div class=\\\"content\\\">\\r\\n<div class=\\\"content\\\">\\r\\n<div style=\\\"padding: 8px; border-bottom: 1px solid #696969; background: #4b8b3b; color: #102e43;\\\"><strong><span style=\\\"font-size: medium; font-family: \'gadugi\', \'avant garde\';\\\"><span style=\\\"color: white;\\\">Menu Utama<\\/span><\\/span><\\/strong><\\/div>\\r\\n<div style=\\\"padding: 8px; border-bottom: 1px solid #696969; background: white; color: darkgreen;\\\"><a href=\\\"https:\\/\\/journal.sekawan-org.id\\/index.php\\/jsn\\/focus-scope\\\"><span style=\\\"color: #006600;\\\">Fokus dan Ruang Lingkup<\\/span><\\/a><\\/div>\\r\\n<div style=\\\"padding: 8px; border-bottom: 1px solid #696969; background: white; color: darkgreen;\\\"><a href=\\\"https:\\/\\/journal.sekawan-org.id\\/index.php\\/jsn\\/dewan-redaksi\\\"><span style=\\\"color: #006600;\\\">Dewan Redaksi<\\/span><\\/a><\\/div>\\r\\n<div style=\\\"padding: 8px; border-bottom: 1px solid #696969; background: white; color: darkgreen;\\\"><a href=\\\"https:\\/\\/journal.sekawan-org.id\\/index.php\\/jsn\\/section-policies\\\"><span style=\\\"color: #006600;\\\">Kebijakan Bagian<\\/span><\\/a><\\/div>\\r\\n<div style=\\\"padding: 8px; border-bottom: 1px solid #696969; background: white; color: darkgreen;\\\"><a href=\\\"https:\\/\\/journal.sekawan-org.id\\/index.php\\/jsn\\/peerReviewProcess\\\"><span style=\\\"color: #006600;\\\">Proses Tinjauan Sejawat<\\/span><\\/a><\\/div>\\r\\n<div style=\\\"padding: 8px; border-bottom: 1px solid #696969; background: white; color: darkgreen;\\\"><a href=\\\"https:\\/\\/journal.sekawan-org.id\\/index.php\\/jsn\\/freqPub\\\"><span style=\\\"color: #006600;\\\">Frekuensi Penerbitan<\\/span><\\/a><\\/div>\\r\\n<div style=\\\"padding: 8px; border-bottom: 1px solid #696969; background: white; color: darkgreen;\\\"><a href=\\\"https:\\/\\/journal.sekawan-org.id\\/index.php\\/jsn\\/pe\\\"><span style=\\\"color: #006600;\\\">Pedoman Etika Publikasi<\\/span><\\/a><\\/div>\\r\\n<div style=\\\"padding: 8px; border-bottom: 1px solid #696969; background: white; color: darkgreen;\\\"><a href=\\\"https:\\/\\/journal.sekawan-org.id\\/index.php\\/jsn\\/indexing\\\"><span style=\\\"color: #006600;\\\">Layanan Indeksasi<\\/span><\\/a><\\/div>\\r\\n<div style=\\\"padding: 8px; border-bottom: 1px solid #696969; background: white; color: darkgreen;\\\"><a href=\\\"https:\\/\\/journal.sekawan-org.id\\/index.php\\/jsn\\/apc\\\"><span style=\\\"color: #006600;\\\">Biaya Publikasi<\\/span><\\/a><\\/div>\\r\\n<div style=\\\"padding: 8px; border-bottom: 1px solid #696969; background: white; color: darkgreen;\\\"><a href=\\\"https:\\/\\/journal.sekawan-org.id\\/index.php\\/jsn\\/contacts\\\"><span style=\\\"color: #006600;\\\">Hubungi Kami<\\/span><\\/a><\\/div>\\r\\n<\\/div>\\r\\n<div style=\\\"padding: 8px; border-bottom: 1px solid #696969; background: white; color: darkgreen;\\\"><a href=\\\"https:\\/\\/journal.sekawan-org.id\\/index.php\\/jsn\\/statscounter\\\"><span style=\\\"color: #006600;\\\">Statistik Pengunjung<\\/span><\\/a><\\/div>\\r\\n<div style=\\\"padding: 8px; border-bottom: 1px solid #696969; background: white; color: darkgreen;\\\"><a href=\\\"https:\\/\\/docs.google.com\\/document\\/d\\/1bpZXx-uw21apEFyN7SVJGmeZPHyNHbas\\/edit?usp=sharing&amp;ouid=115163117247405190765&amp;rtpof=true&amp;sd=true\\\" target=\\\"_blank\\\" rel=\\\"noopener\\\"><span style=\\\"color: #006600;\\\">Unduh Template Artikel<\\/span><\\/a><\\/div>\\r\\n<div style=\\\"padding: 8px; border-bottom: 1px solid #696969; background: white; color: darkgreen;\\\"><a href=\\\"https:\\/\\/journal.sekawan-org.id\\/index.php\\/jsn\\/copyright\\\"><span style=\\\"color: #006600;\\\">Pemberitahuan Hak Cipta<\\/span><\\/a><\\/div>\\r\\n<div style=\\\"padding: 8px; border-bottom: 1px solid #696969; background: white; color: darkgreen;\\\"><a href=\\\"https:\\/\\/journal.sekawan-org.id\\/index.php\\/jsn\\/openAccess\\\"><span style=\\\"color: #006600;\\\">Kebijakan Akses Terbuka<\\/span><\\/a><\\/div>\\r\\n<div style=\\\"padding: 8px; border-bottom: 1px solid #696969; background: white; color: darkgreen;\\\"><a href=\\\"https:\\/\\/journal.sekawan-org.id\\/index.php\\/jsn\\/plagiatPolicy\\\"><span style=\\\"color: #006600;\\\">Kebijakan Plagiat<\\/span><\\/a><\\/div>\\r\\n<div style=\\\"padding: 8px; border-bottom: 1px solid #696969; background: white; color: darkgreen;\\\"><a href=\\\"https:\\/\\/journal.sekawan-org.id\\/index.php\\/jsn\\/archiving\\\"><span style=\\\"color: #006600;\\\">Pengarsipan<\\/span><\\/a><\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<!-- pkp_sidebar.left -->\\r\\n<p>&nbsp;<\\/p>\\r\\n<!-- pkp_structure_content -->\"}', 'object'),
('hubungi-kami', 1, 'blockTitle', '{\"id_ID\":\"template\"}', 'object'),
('hubungi-kami', 1, 'enabled', '1', 'bool'),
('hubungi-kami', 1, 'showName', NULL, 'string'),
('informationblockplugin', 1, 'enabled', '1', 'bool'),
('informationblockplugin', 1, 'seq', '7', 'int'),
('languagetoggleblockplugin', 0, 'enabled', '1', 'bool'),
('languagetoggleblockplugin', 0, 'seq', '4', 'int'),
('languagetoggleblockplugin', 1, 'enabled', '1', 'bool'),
('languagetoggleblockplugin', 1, 'seq', '4', 'int'),
('lensgalleyplugin', 1, 'enabled', '1', 'bool'),
('paypalpayment', 1, 'enabled', '0', 'bool'),
('pdfjsviewerplugin', 1, 'enabled', '1', 'bool'),
('pragmathemeplugin', 1, 'baseColour', '#02530A', 'string'),
('pragmathemeplugin', 1, 'enabled', '0', 'bool'),
('quick-menu', 1, 'blockContent', '{\"id_ID\":\"<div class=\\\"pkp_structure_sidebar left\\\" role=\\\"complementary\\\" aria-label=\\\"Sidebar\\\">\\r\\n<div id=\\\"customblock-WA\\\" class=\\\"pkp_block block_custom\\\">\\r\\n<div class=\\\"content\\\">\\r\\n<div class=\\\"content\\\">\\r\\n<div style=\\\"padding: 8px; border-bottom: 1px solid #696969; background: #4b8b3b; color: #102e43;\\\"><strong><span style=\\\"font-size: medium; font-family: \'gadugi\', \'avant garde\';\\\"><span style=\\\"color: white;\\\">Hubungi Kami !!<\\/span><\\/span><\\/strong><\\/div>\\r\\n<div style=\\\"padding: 8px; border-bottom: 1px solid #696969; background: white; color: darkgreen;\\\"><a href=\\\"https:\\/\\/api.whatsapp.com\\/send?phone=6281239866689\\\" target=\\\"_blank\\\" rel=\\\"noopener\\\"><img src=\\\"http:\\/\\/localhost\\/ojs3\\/public\\/site\\/images\\/adminojs\\/wa-1ffb7c6c520449c6a5df1963b047ef7d.png\\\" alt=\\\"\\\" width=\\\"222\\\" height=\\\"77\\\"><\\/a><\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<div id=\\\"customblock-mainmenu\\\" class=\\\"pkp_block block_custom\\\">\\r\\n<div class=\\\"content\\\">\\r\\n<div class=\\\"content\\\">\\r\\n<div style=\\\"padding: 8px; border-bottom: 1px solid #696969; background: #4b8b3b; color: #102e43;\\\"><strong><span style=\\\"font-size: medium; font-family: \'gadugi\', \'avant garde\';\\\"><span style=\\\"color: white;\\\">Menu Utama<\\/span><\\/span><\\/strong><\\/div>\\r\\n<div style=\\\"padding: 8px; border-bottom: 1px solid #696969; background: white; color: darkgreen;\\\"><span style=\\\"color: #006600;\\\">Fokus dan Ruang Lingkup<\\/span><\\/div>\\r\\n<div style=\\\"padding: 8px; border-bottom: 1px solid #696969; background: white; color: darkgreen;\\\"><span style=\\\"color: #006600;\\\">Dewan Redaksi<\\/span><\\/div>\\r\\n<div style=\\\"padding: 8px; border-bottom: 1px solid #696969; background: white; color: darkgreen;\\\"><span style=\\\"color: #006600;\\\">Kebijakan Bagian<\\/span><\\/div>\\r\\n<div style=\\\"padding: 8px; border-bottom: 1px solid #696969; background: white; color: darkgreen;\\\"><span style=\\\"color: #006600;\\\">Proses Tinjauan Sejawat<\\/span><\\/div>\\r\\n<div style=\\\"padding: 8px; border-bottom: 1px solid #696969; background: white; color: darkgreen;\\\"><span style=\\\"color: #006600;\\\">Frekuensi Penerbitan<\\/span><\\/div>\\r\\n<div style=\\\"padding: 8px; border-bottom: 1px solid #696969; background: white; color: darkgreen;\\\"><span style=\\\"color: #006600;\\\">Pedoman Etika Publikasi<\\/span><\\/div>\\r\\n<div style=\\\"padding: 8px; border-bottom: 1px solid #696969; background: white; color: darkgreen;\\\"><span style=\\\"color: #006600;\\\">Layanan Indeksasi<\\/span><\\/div>\\r\\n<div style=\\\"padding: 8px; border-bottom: 1px solid #696969; background: white; color: darkgreen;\\\"><a href=\\\"https:\\/\\/journal.sekawan-org.id\\/index.php\\/jsn\\/apc\\\"><span style=\\\"color: #006600;\\\">Biaya Publikasi<\\/span><\\/a><\\/div>\\r\\n<div style=\\\"padding: 8px; border-bottom: 1px solid #696969; background: white; color: darkgreen;\\\"><a href=\\\"https:\\/\\/journal.sekawan-org.id\\/index.php\\/jsn\\/contacts\\\"><span style=\\\"color: #006600;\\\">Hubungi Kami<\\/span><\\/a><\\/div>\\r\\n<div style=\\\"padding: 8px; border-bottom: 1px solid #696969; background: #4b8b3b; color: #102e43;\\\"><strong><span style=\\\"font-size: medium; font-family: \'gadugi\', \'avant garde\';\\\"><span style=\\\"color: white;\\\">Pengunjung !!<\\/span><\\/span><\\/strong><\\/div>\\r\\n<br>\\r\\n<p><a href=\\\"https:\\/\\/info.flagcounter.com\\/qRRU\\\"><img src=\\\"https:\\/\\/s11.flagcounter.com\\/count2\\/qRRU\\/bg_FFFFFF\\/txt_000000\\/border_CCCCCC\\/columns_2\\/maxflags_10\\/viewers_3\\/labels_1\\/pageviews_1\\/flags_0\\/percent_1\\/\\\" alt=\\\"Flag Counter\\\" border=\\\"0\\\"><\\/a><\\/p>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<!-- pkp_sidebar.left -->\\r\\n<p>&nbsp;<\\/p>\\r\\n<!-- pkp_structure_content -->\"}', 'object'),
('quick-menu', 1, 'blockTitle', '{\"id_ID\":\"Quick Menu\"}', 'object'),
('quick-menu', 1, 'enabled', '1', 'bool'),
('quick-menu', 1, 'showName', NULL, 'string'),
('resolverplugin', 1, 'enabled', '1', 'bool'),
('staticpagesplugin', 1, 'enabled', '1', 'bool'),
('subscriptionblockplugin', 1, 'enabled', '1', 'bool'),
('subscriptionblockplugin', 1, 'seq', '2', 'int'),
('tinymceplugin', 0, 'enabled', '1', 'bool'),
('tinymceplugin', 1, 'enabled', '1', 'bool'),
('usageeventplugin', 0, 'enabled', '1', 'bool'),
('usageeventplugin', 0, 'uniqueSiteId', '66f5181092f3d', 'string'),
('usagestatsplugin', 0, 'accessLogFileParseRegex', '/^(?P<ip>\\S+) \\S+ \\S+ \\[(?P<date>.*?)\\] \"\\S+ (?P<url>\\S+).*?\" (?P<returnCode>\\S+) \\S+ \".*?\" \"(?P<userAgent>.*?)\"/', 'string'),
('usagestatsplugin', 0, 'chartType', 'bar', 'string'),
('usagestatsplugin', 0, 'createLogFiles', '1', 'bool'),
('usagestatsplugin', 0, 'datasetMaxCount', '4', 'string'),
('usagestatsplugin', 0, 'enabled', '1', 'bool'),
('usagestatsplugin', 0, 'optionalColumns', '[\"city\",\"region\"]', 'object'),
('webfeedplugin', 1, 'displayItems', '1', 'bool'),
('webfeedplugin', 1, 'displayPage', 'homepage', 'string'),
('webfeedplugin', 1, 'enabled', '1', 'bool');

-- --------------------------------------------------------

--
-- Struktur dari tabel `publications`
--

CREATE TABLE `publications` (
  `publication_id` bigint(20) NOT NULL,
  `access_status` bigint(20) DEFAULT 0,
  `date_published` date DEFAULT NULL,
  `last_modified` datetime DEFAULT NULL,
  `locale` varchar(14) DEFAULT NULL,
  `primary_contact_id` bigint(20) DEFAULT NULL,
  `section_id` bigint(20) DEFAULT NULL,
  `seq` double(8,2) NOT NULL DEFAULT 0.00,
  `submission_id` bigint(20) NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT 1,
  `url_path` varchar(64) DEFAULT NULL,
  `version` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data untuk tabel `publications`
--

INSERT INTO `publications` (`publication_id`, `access_status`, `date_published`, `last_modified`, `locale`, `primary_contact_id`, `section_id`, `seq`, `submission_id`, `status`, `url_path`, `version`) VALUES
(1, 0, '2024-05-02', '2024-09-29 03:09:48', NULL, 1, 1, 0.00, 1, 1, NULL, 1),
(2, 0, NULL, '2024-09-29 03:09:48', NULL, NULL, 1, 0.00, 2, 1, NULL, 1),
(3, 0, NULL, '2024-09-29 03:09:48', NULL, NULL, 1, 0.00, 3, 1, NULL, 1),
(4, 0, '2024-09-29', '2024-09-29 03:09:48', NULL, 3, 1, 0.00, 4, 1, NULL, 1),
(5, 0, NULL, '2024-09-29 03:09:48', NULL, NULL, 1, 0.00, 5, 1, NULL, 1),
(6, 0, NULL, '2024-09-29 03:09:48', NULL, 5, 2, 0.00, 6, 1, NULL, 1),
(7, 0, NULL, '2024-09-29 03:09:48', NULL, NULL, 1, 0.00, 7, 1, NULL, 1),
(8, 0, '2024-09-29', '2024-09-30 03:48:31', NULL, 6, 1, 1.00, 8, 3, NULL, 1),
(9, 0, '2024-09-29', '2024-09-30 03:48:30', NULL, 8, 1, 2.00, 9, 3, NULL, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `publication_categories`
--

CREATE TABLE `publication_categories` (
  `publication_id` bigint(20) NOT NULL,
  `category_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `publication_galleys`
--

CREATE TABLE `publication_galleys` (
  `galley_id` bigint(20) NOT NULL,
  `locale` varchar(14) DEFAULT NULL,
  `publication_id` bigint(20) NOT NULL,
  `label` varchar(255) DEFAULT NULL,
  `submission_file_id` bigint(20) UNSIGNED DEFAULT NULL,
  `seq` double(8,2) NOT NULL DEFAULT 0.00,
  `remote_url` varchar(2047) DEFAULT NULL,
  `is_approved` smallint(6) NOT NULL DEFAULT 0,
  `url_path` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data untuk tabel `publication_galleys`
--

INSERT INTO `publication_galleys` (`galley_id`, `locale`, `publication_id`, `label`, `submission_file_id`, `seq`, `remote_url`, `is_approved`, `url_path`) VALUES
(1, 'id_ID', 1, 'PDF', 1, 0.00, '', 0, ''),
(3, 'id_ID', 4, 'RKA', 8, 0.00, '', 0, ''),
(4, 'id_ID', 8, 'PDF', 9, 0.00, 'https://drive.google.com/file/d/1Y-FQOsax_YABOuXpvXzgbWmkzQ3c6xUV/view?usp=sharing', 0, ''),
(7, 'id_ID', 9, 'PDF', 16, 0.00, 'https://drive.google.com/file/d/1IYuTPWjJx_rWt50yGZFtdH_hQh0YbSd2/view?usp=sharing', 0, '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `publication_galley_settings`
--

CREATE TABLE `publication_galley_settings` (
  `galley_id` bigint(20) NOT NULL,
  `locale` varchar(14) NOT NULL DEFAULT '',
  `setting_name` varchar(255) NOT NULL,
  `setting_value` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `publication_settings`
--

CREATE TABLE `publication_settings` (
  `publication_id` bigint(20) NOT NULL,
  `locale` varchar(14) NOT NULL DEFAULT '',
  `setting_name` varchar(255) NOT NULL,
  `setting_value` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data untuk tabel `publication_settings`
--

INSERT INTO `publication_settings` (`publication_id`, `locale`, `setting_name`, `setting_value`) VALUES
(1, '', 'categoryIds', '[]'),
(1, '', 'copyrightYear', '2024'),
(1, '', 'issueId', '0'),
(1, '', 'licenseUrl', 'https://creativecommons.org/licenses/by-nc-sa/4.0'),
(1, '', 'pages', '32-35'),
(1, 'id_ID', 'abstract', '<p><em>The increase in food demand is not in line with the increase in the amount of production and quality of agricultural products. The strategy to increase agricultural production so far has been carried out through the provision of chemical synthetic fertilizers, this strategy has a negative impact on the quality of agricultural land, namely a decrease in the essential organic elements of the soil which are needed by plants. Organic farming is a necessary solution to restore land quality and Bacillus laterosporus is a microorganism that has the ability to produce various beneficial metabolites for plant growth and maintain soil fertility. B. laterosporus is a microorganism that requires a high-quality carbon source to produce high-quality metabolites, so it requires natural carbon sources that are cheap, easy to obtain and not widely used by humans, such as old coconut water, nira and molasses. The aim of the study was to determine the difference in the germination rate of soybeans treated with B. laterosporus suspension with different natural carbon sources so that the best natural carbon source for the growth of B. laterosporus could be identified as an essential component of quality organic fertilizer. Soybean germination rate was measured and observed and compared with the control. The results showed that the provision of natural carbon sources had a good effect on the growth of the number of bacterial cells and the germination rate of soybean seeds.</em></p>'),
(1, 'id_ID', 'copyrightHolder', 'Kumpulan Junral Unizar'),
(1, 'id_ID', 'coverImage', '{\"uploadName\":\"article_1_cover_id_ID.jpg\",\"altText\":\"Penyunting kami berbicara pada konferensi PKP\"}'),
(1, 'id_ID', 'prefix', ''),
(1, 'id_ID', 'subtitle', ''),
(1, 'id_ID', 'title', 'Pengaruh Pemberian Suspensi Bacillus laterosporus dengan Sumber Karbon Alami Berbeda terhadap Laju Germinasi Kedelai (Glycine max)'),
(2, '', 'categoryIds', '[]'),
(2, '', 'copyrightYear', '2024'),
(2, '', 'licenseUrl', 'https://creativecommons.org/licenses/by-nc-sa/4.0'),
(2, 'id_ID', 'copyrightHolder', 'Kumpulan Junral Unizar'),
(3, '', 'categoryIds', '[]'),
(3, '', 'copyrightYear', '2024'),
(3, '', 'licenseUrl', 'https://creativecommons.org/licenses/by-nc-sa/4.0'),
(3, 'id_ID', 'copyrightHolder', 'Kumpulan Junral Unizar'),
(4, '', 'categoryIds', '[]'),
(4, '', 'copyrightYear', '2024'),
(4, '', 'issueId', '3'),
(4, '', 'licenseUrl', 'https://creativecommons.org/licenses/by-nc-sa/4.0'),
(4, '', 'pages', '32-35'),
(4, 'id_ID', 'abstract', '<p>The increase in food demand is not in line with the increase in the amount of production and<br>quality of agricultural products. The strategy to increase agricultural production so far has<br>been carried out through the provision of chemical synthetic fertilizers, this strategy has a<br>negative impact on the quality of agricultural land, namely a decrease in the essential organic<br>elements of the soil which are needed by plants. Organic farming is a necessary solution to<br>restore land quality and Bacillus laterosporus is a microorganism that has the ability to<br>produce various beneficial metabolites for plant growth and maintain soil fertility. B.<br>laterosporus is a microorganism that requires a high-quality carbon source to produce highquality<br>metabolites,<br>so<br>it<br>requires<br>natural<br>carbon<br>sources<br>that<br>are<br>cheap,<br>easy<br>to<br>obtain<br>and</p>\r\n<p>not<br>widely<br>used<br>by<br>humans,<br>such<br>as<br>old<br>coconut<br>water,<br>nira<br>and<br>molasses.<br>The<br>aim<br>of<br>the<br>study</p>\r\n<p>was</p>\r\n<p>to determine the difference in the germination rate of soybeans treated with B.<br>laterosporus suspension with different natural carbon sources so that the best natural carbon<br>source for the growth of B. laterosporus could be identified as an essential component of<br>quality organic fertilizer. Soybean germination rate was measured and observed and<br>compared with the control. The results showed that the provision of natural carbon sources<br>had a good effect on the growth of the number of bacterial cells and the germination rate of<br>soybean seeds.</p>'),
(4, 'id_ID', 'copyrightHolder', 'Kumpulan Junral Unizar'),
(4, 'id_ID', 'coverImage', '{\"uploadName\":\"article_4_cover_id_ID.png\",\"altText\":\"\"}'),
(4, 'id_ID', 'prefix', ''),
(4, 'id_ID', 'subtitle', ''),
(4, 'id_ID', 'title', 'Pengaruh Pemberian Suspensi Bacillus laterosporus dengan Sumber Karbon Alami Berbeda terhadap Laju Germinasi Kedelai (Glycine max)'),
(5, '', 'categoryIds', '[]'),
(5, '', 'copyrightYear', '2024'),
(5, '', 'licenseUrl', 'https://creativecommons.org/licenses/by-nc-sa/4.0'),
(5, 'id_ID', 'copyrightHolder', 'Kumpulan Junral Unizar'),
(6, '', 'categoryIds', '[]'),
(6, '', 'copyrightYear', '2024'),
(6, '', 'licenseUrl', 'https://creativecommons.org/licenses/by-nc-sa/4.0'),
(6, 'id_ID', 'copyrightHolder', 'Kumpulan Junral Unizar'),
(7, '', 'categoryIds', '[]'),
(7, '', 'copyrightYear', '2024'),
(7, '', 'licenseUrl', 'https://creativecommons.org/licenses/by-nc-sa/4.0'),
(7, 'id_ID', 'copyrightHolder', 'Kumpulan Junral Unizar'),
(8, '', 'categoryIds', '[]'),
(8, '', 'copyrightYear', '2024'),
(8, '', 'issueId', '3'),
(8, '', 'licenseUrl', 'https://creativecommons.org/licenses/by-nc-sa/4.0'),
(8, '', 'pages', '32-35'),
(8, 'id_ID', 'abstract', '<p>ABSTRAK</p>\r\n<p>Bahan tambahan pangan banyak sekali dijumpai dalam setiap produk makanan olahan.<br>Namun, tidak jarang para pelaku usaha menggunakan bahan tambahan pangan yang<br>dilarang berupa formalin yang digunakan sebagai pengawet pada triplek, busa dan lain-lain,<br>akan tetapi digunakan untuk mengawetkan makanan berupa hasil laut yang dikeringkan.<br>seperti ikan teri, cumi dan rebon. Pada penelitian ini bertujuan untuk melakukan uji kualitatif<br>dan organoleptik kandungan formalin pada hasil laut yang dikeringkan berupa ikan teri,<br>cumi dan rebon yang diperoleh dari beberapa pedagang di Pasar Pagesangan, Kota Mataram,<br>Nusa Tenggara Barat. Pengambilan sampel dilakukan dengan teknik random sampling. Uji<br>kualitatif formalin pada sampel ikan asin dilakukan dengan cara menambah masing-masing<br>1 ml Fehling A dan Fehling B, uji positif ditandai dengan berubahnya warna larutan biru<br>menjadi hijau dan terdapat endapan merah bata. Total sampel yang diuji berjumlah 15 sampel<br>di mana diperoleh hasil 7 sampel yang positif mengandung formalin yang ditandai dengan<br>terbentuknya endapan merah bata serta larutan sampel berubah menjadi warna hijau. Selain<br>itu, juga didukung oleh hasil uji organoleptiknya yang meliputi warna, aroma, bentuk atau<br>tekstur, di mana ciri-ciri fisik dari sampel uji yaitu ikan teri, cumi dan rebon berwarna putih<br>cerah dan segar, aroma tidak berbau khas hasil laut yang diawetkan dengan garam, dan<br>bentuk atau teksturnya lebih halus, utuh dan tidak mudah hancur dibandingkan dengan<br>sampel yang negative mengandung formalin.</p>'),
(8, 'id_ID', 'copyrightHolder', ''),
(8, 'id_ID', 'coverImage', '{\"uploadName\":\"article_8_cover_id_ID.jpg\",\"altText\":\"\"}'),
(8, 'id_ID', 'prefix', ''),
(8, 'id_ID', 'subtitle', ''),
(8, 'id_ID', 'title', 'Uji Kualitatif dan Organoleptik Kandungan Formalin pada Hasil Laut yang Dikeringkan Berupa Ikan Teri, Cumi, dan Rebon dari Pasar Pagesangan'),
(9, '', 'categoryIds', '[]'),
(9, '', 'copyrightYear', '2024'),
(9, '', 'issueId', '3'),
(9, '', 'licenseUrl', 'https://creativecommons.org/licenses/by-nc-sa/4.0'),
(9, '', 'pages', '32-35'),
(9, 'id_ID', 'abstract', '<p>ABSTRAK</p>\r\n<p>Meningkatnya kebutuhan pangan tidak seiring dengan peningkatan jumlah produksi dan mutu<br>hasil pertanian. Strategi peningkatan produksi pertanian selama ini dilakukan melalui<br>pemberian pupuk sintetis kimiawi, strategi ini memberikan dampak negatif terhadap kualitas<br>lahan pertanian yaitu menurunnya unsur organik esensial tanah yang sangat diperlukan oleh<br>tanaman. Pertanian organik merupakan solusi yang diperlukan untuk mengembalikan kualitas<br>lahan dan Bacillus laterosporus adalah mikroorganisme yang memiliki kemampuan<br>menghasilkan berbagai metabolit menguntungkan bagi pertumbuhan tanamanserta menjaga<br>kesuburan tanah. B. laterosporus merupakan mikroorganisme yang memerlukan sumber karbon<br>berkualitas untuk menghasilkan metabolit yang berkualitas sehingga diperlukan sumber karbon<br>alami yang murah, mudah diperoleh serta tidak banyak dimanfaatkan oleh manusia seperti air<br>kelapa tua, nira dan molase. Tujuan penelitian adalah untuk mengetahui perbedaan laju<br>germinasi kedelai yang diberi suspensi B. laterosporus dengan sumber karbon alami berbeda<br>sehingga dapat diketahui sunber karbon alami terbaik untuk pertumbuhan B. laterosporus<br>sebagai komponen esensial pupuk organik berkualitas. Laju germinasi kedelai diukur dan<br>diamati serta dibandingkan dengan kontrol. Hasil penelitian diperoleh bahwa pemberian<br>sumber karbon alami memberikan pengaruh yang baik terhadap pertumbuhan jumlah sel<br>bakter dan laju germinasi biji kedelai.</p>'),
(9, 'id_ID', 'copyrightHolder', ''),
(9, 'id_ID', 'coverImage', '{\"uploadName\":\"article_9_cover_id_ID.jpg\",\"altText\":\"\"}'),
(9, 'id_ID', 'prefix', ''),
(9, 'id_ID', 'subtitle', ''),
(9, 'id_ID', 'title', 'Pengaruh Pemberian Suspensi Bacillus laterosporus dengan Sumber Karbon Alami Berbeda terhadap Laju Germinasi Kedelai (Glycine max)  ');

-- --------------------------------------------------------

--
-- Struktur dari tabel `queries`
--

CREATE TABLE `queries` (
  `query_id` bigint(20) NOT NULL,
  `assoc_type` bigint(20) NOT NULL,
  `assoc_id` bigint(20) NOT NULL,
  `stage_id` smallint(6) NOT NULL,
  `seq` double(8,2) NOT NULL DEFAULT 0.00,
  `date_posted` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `closed` smallint(6) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `query_participants`
--

CREATE TABLE `query_participants` (
  `query_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `queued_payments`
--

CREATE TABLE `queued_payments` (
  `queued_payment_id` bigint(20) NOT NULL,
  `date_created` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  `expiry_date` date DEFAULT NULL,
  `payment_data` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `review_assignments`
--

CREATE TABLE `review_assignments` (
  `review_id` bigint(20) NOT NULL,
  `submission_id` bigint(20) NOT NULL,
  `reviewer_id` bigint(20) NOT NULL,
  `competing_interests` text DEFAULT NULL,
  `recommendation` smallint(6) DEFAULT NULL,
  `date_assigned` datetime DEFAULT NULL,
  `date_notified` datetime DEFAULT NULL,
  `date_confirmed` datetime DEFAULT NULL,
  `date_completed` datetime DEFAULT NULL,
  `date_acknowledged` datetime DEFAULT NULL,
  `date_due` datetime DEFAULT NULL,
  `date_response_due` datetime DEFAULT NULL,
  `last_modified` datetime DEFAULT NULL,
  `reminder_was_automatic` smallint(6) NOT NULL DEFAULT 0,
  `declined` smallint(6) NOT NULL DEFAULT 0,
  `cancelled` smallint(6) NOT NULL DEFAULT 0,
  `reviewer_file_id` bigint(20) DEFAULT NULL,
  `date_rated` datetime DEFAULT NULL,
  `date_reminded` datetime DEFAULT NULL,
  `quality` smallint(6) DEFAULT NULL,
  `review_round_id` bigint(20) NOT NULL,
  `stage_id` smallint(6) NOT NULL,
  `review_method` smallint(6) NOT NULL DEFAULT 1,
  `round` smallint(6) NOT NULL DEFAULT 1,
  `step` smallint(6) NOT NULL DEFAULT 1,
  `review_form_id` bigint(20) DEFAULT NULL,
  `unconsidered` smallint(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `review_files`
--

CREATE TABLE `review_files` (
  `review_id` bigint(20) NOT NULL,
  `submission_file_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `review_forms`
--

CREATE TABLE `review_forms` (
  `review_form_id` bigint(20) NOT NULL,
  `assoc_type` bigint(20) NOT NULL,
  `assoc_id` bigint(20) NOT NULL,
  `seq` double(8,2) DEFAULT NULL,
  `is_active` smallint(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `review_form_elements`
--

CREATE TABLE `review_form_elements` (
  `review_form_element_id` bigint(20) NOT NULL,
  `review_form_id` bigint(20) NOT NULL,
  `seq` double(8,2) DEFAULT NULL,
  `element_type` bigint(20) DEFAULT NULL,
  `required` smallint(6) DEFAULT NULL,
  `included` smallint(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `review_form_element_settings`
--

CREATE TABLE `review_form_element_settings` (
  `review_form_element_id` bigint(20) NOT NULL,
  `locale` varchar(14) NOT NULL DEFAULT '',
  `setting_name` varchar(255) NOT NULL,
  `setting_value` text DEFAULT NULL,
  `setting_type` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `review_form_responses`
--

CREATE TABLE `review_form_responses` (
  `review_form_element_id` bigint(20) NOT NULL,
  `review_id` bigint(20) NOT NULL,
  `response_type` varchar(6) DEFAULT NULL,
  `response_value` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `review_form_settings`
--

CREATE TABLE `review_form_settings` (
  `review_form_id` bigint(20) NOT NULL,
  `locale` varchar(14) NOT NULL DEFAULT '',
  `setting_name` varchar(255) NOT NULL,
  `setting_value` text DEFAULT NULL,
  `setting_type` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `review_rounds`
--

CREATE TABLE `review_rounds` (
  `review_round_id` bigint(20) NOT NULL,
  `submission_id` bigint(20) NOT NULL,
  `stage_id` bigint(20) DEFAULT NULL,
  `round` smallint(6) NOT NULL,
  `review_revision` bigint(20) DEFAULT NULL,
  `status` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `review_round_files`
--

CREATE TABLE `review_round_files` (
  `submission_id` bigint(20) NOT NULL,
  `review_round_id` bigint(20) NOT NULL,
  `stage_id` smallint(6) NOT NULL,
  `submission_file_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `scheduled_tasks`
--

CREATE TABLE `scheduled_tasks` (
  `class_name` varchar(255) NOT NULL,
  `last_run` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data untuk tabel `scheduled_tasks`
--

INSERT INTO `scheduled_tasks` (`class_name`, `last_run`) VALUES
('classes.tasks.SubscriptionExpiryReminder', '2024-09-26 10:10:50'),
('lib.pkp.classes.task.ReviewReminder', '2024-09-30 03:44:04'),
('lib.pkp.classes.task.StatisticsReport', '2024-09-26 10:10:50'),
('plugins.generic.usageStats.UsageStatsLoader', '2024-09-30 03:43:54'),
('plugins.importexport.crossref.CrossrefInfoSender', '2024-09-30 03:44:01'),
('plugins.importexport.datacite.DataciteInfoSender', '2024-09-30 03:44:03'),
('plugins.importexport.doaj.DOAJInfoSender', '2024-09-30 03:44:03');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sections`
--

CREATE TABLE `sections` (
  `section_id` bigint(20) NOT NULL,
  `journal_id` bigint(20) NOT NULL,
  `review_form_id` bigint(20) DEFAULT NULL,
  `seq` double(8,2) NOT NULL DEFAULT 0.00,
  `editor_restricted` smallint(6) NOT NULL DEFAULT 0,
  `meta_indexed` smallint(6) NOT NULL DEFAULT 0,
  `meta_reviewed` smallint(6) NOT NULL DEFAULT 1,
  `abstracts_not_required` smallint(6) NOT NULL DEFAULT 0,
  `hide_title` smallint(6) NOT NULL DEFAULT 0,
  `hide_author` smallint(6) NOT NULL DEFAULT 0,
  `is_inactive` smallint(6) NOT NULL DEFAULT 0,
  `abstract_word_count` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data untuk tabel `sections`
--

INSERT INTO `sections` (`section_id`, `journal_id`, `review_form_id`, `seq`, `editor_restricted`, `meta_indexed`, `meta_reviewed`, `abstracts_not_required`, `hide_title`, `hide_author`, `is_inactive`, `abstract_word_count`) VALUES
(1, 1, 0, 1.00, 0, 1, 1, 0, 0, 0, 1, NULL),
(2, 1, 0, 2.00, 0, 1, 1, 0, 0, 0, 0, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `section_settings`
--

CREATE TABLE `section_settings` (
  `section_id` bigint(20) NOT NULL,
  `locale` varchar(14) NOT NULL DEFAULT '',
  `setting_name` varchar(255) NOT NULL,
  `setting_value` text DEFAULT NULL,
  `setting_type` varchar(6) NOT NULL COMMENT '(bool|int|float|string|object)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data untuk tabel `section_settings`
--

INSERT INTO `section_settings` (`section_id`, `locale`, `setting_name`, `setting_value`, `setting_type`) VALUES
(1, 'id_ID', 'abbrev', 'ART', 'string'),
(1, 'id_ID', 'identifyType', '', 'string'),
(1, 'id_ID', 'policy', '<p>Kebijakan Bagian</p>', 'string'),
(1, 'id_ID', 'title', 'Artikel', 'string'),
(2, 'id_ID', 'abbrev', 'JR', 'string'),
(2, 'id_ID', 'identifyType', '', 'string'),
(2, 'id_ID', 'policy', '', 'string'),
(2, 'id_ID', 'title', 'Jurnal Rivew', 'string');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sessions`
--

CREATE TABLE `sessions` (
  `session_id` varchar(128) NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `ip_address` varchar(39) NOT NULL,
  `user_agent` varchar(255) DEFAULT NULL,
  `created` bigint(20) NOT NULL DEFAULT 0,
  `last_used` bigint(20) NOT NULL DEFAULT 0,
  `remember` smallint(6) NOT NULL DEFAULT 0,
  `data` text NOT NULL,
  `domain` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data untuk tabel `sessions`
--

INSERT INTO `sessions` (`session_id`, `user_id`, `ip_address`, `user_agent`, `created`, `last_used`, `remember`, `data`, `domain`) VALUES
('05g5n4d779srn9dr9tu8pqkaaa', 1, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1727404219, 1727406872, 1, 'csrf|a:2:{s:9:\"timestamp\";i:1727406875;s:5:\"token\";s:32:\"13c92b215e4bec0922f457cb44069234\";}userId|i:1;username|s:8:\"adminojs\";', 'localhost'),
('3bdtva6lvlc96mjnftad3vtrhs', 1, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36 Edg/129.0.0.0', 1727515680, 1727593426, 1, 'csrf|a:2:{s:9:\"timestamp\";i:1727593417;s:5:\"token\";s:32:\"0462e30c30df42422de27f5f413a32a6\";}username|s:8:\"adminojs\";currentLocale|s:5:\"en_US\";userId|i:1;', 'localhost'),
('4g0etqs10aibs22t7t96e6nq0m', 1, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1727338241, 1727660917, 1, 'csrf|a:2:{s:9:\"timestamp\";i:1727660910;s:5:\"token\";s:32:\"903edf61122717c30627c2e572011f6f\";}username|s:8:\"adminojs\";currentLocale|s:5:\"id_ID\";userId|i:1;', 'localhost'),
('a02rlt80766j11lr280io58qus', 1, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1727427669, 1727427972, 1, 'csrf|a:2:{s:9:\"timestamp\";i:1727427971;s:5:\"token\";s:32:\"cfbcab188b2cceb6a87f1d0987c0a4f0\";}userId|i:1;username|s:8:\"adminojs\";', 'localhost'),
('bfar7kvp6snm10mgn32p5k7b39', 1, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1727511451, 1727515209, 1, 'csrf|a:2:{s:9:\"timestamp\";i:1727515209;s:5:\"token\";s:32:\"efd49e8f7eb62bbeedaa7172b9c182e1\";}userId|i:1;username|s:8:\"adminojs\";', 'localhost'),
('niqaom5cloodmi09c68nbhr9o9', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1727504194, 1727504321, 0, '', 'localhost'),
('q6ptbqm1viho020oihu9sprsjq', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1727503520, 1727503538, 0, '', 'localhost');

-- --------------------------------------------------------

--
-- Struktur dari tabel `site`
--

CREATE TABLE `site` (
  `redirect` bigint(20) NOT NULL DEFAULT 0 COMMENT 'If not 0, redirect to the specified journal/conference/... site.',
  `primary_locale` varchar(14) NOT NULL COMMENT 'Primary locale for the site.',
  `min_password_length` smallint(6) NOT NULL DEFAULT 6,
  `installed_locales` varchar(1024) NOT NULL DEFAULT 'en_US' COMMENT 'Locales for which support has been installed.',
  `supported_locales` varchar(1024) DEFAULT NULL COMMENT 'Locales supported by the site (for hosted journals/conferences/...).',
  `original_style_file_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data untuk tabel `site`
--

INSERT INTO `site` (`redirect`, `primary_locale`, `min_password_length`, `installed_locales`, `supported_locales`, `original_style_file_name`) VALUES
(0, 'id_ID', 6, '[\"id_ID\",\"en_US\"]', '[\"id_ID\",\"en_US\"]', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `site_settings`
--

CREATE TABLE `site_settings` (
  `setting_name` varchar(255) NOT NULL,
  `locale` varchar(14) NOT NULL DEFAULT '',
  `setting_value` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data untuk tabel `site_settings`
--

INSERT INTO `site_settings` (`setting_name`, `locale`, `setting_value`) VALUES
('contactEmail', 'id_ID', 'admin@gmail.com'),
('contactName', 'id_ID', 'Open Journal Systems'),
('themePluginPath', '', 'default');

-- --------------------------------------------------------

--
-- Struktur dari tabel `stage_assignments`
--

CREATE TABLE `stage_assignments` (
  `stage_assignment_id` bigint(20) NOT NULL,
  `submission_id` bigint(20) NOT NULL,
  `user_group_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `date_assigned` datetime NOT NULL,
  `recommend_only` smallint(6) NOT NULL DEFAULT 0,
  `can_change_metadata` smallint(6) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data untuk tabel `stage_assignments`
--

INSERT INTO `stage_assignments` (`stage_assignment_id`, `submission_id`, `user_group_id`, `user_id`, `date_assigned`, `recommend_only`, `can_change_metadata`) VALUES
(1, 1, 2, 1, '2024-09-29 01:06:36', 0, 1),
(2, 2, 2, 1, '2024-09-29 01:24:15', 0, 1),
(3, 3, 2, 1, '2024-09-29 01:25:23', 0, 1),
(4, 4, 2, 1, '2024-09-29 01:41:36', 0, 1),
(5, 5, 2, 1, '2024-09-29 02:48:35', 0, 1),
(6, 6, 14, 1, '2024-09-29 03:09:11', 0, 0),
(7, 7, 2, 1, '2024-09-29 03:09:35', 0, 1),
(8, 8, 2, 1, '2024-09-29 03:09:53', 0, 1),
(9, 9, 2, 1, '2024-09-29 06:16:15', 0, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `static_pages`
--

CREATE TABLE `static_pages` (
  `static_page_id` bigint(20) NOT NULL,
  `path` varchar(255) NOT NULL,
  `context_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data untuk tabel `static_pages`
--

INSERT INTO `static_pages` (`static_page_id`, `path`, `context_id`) VALUES
(2, 'fokus-dan-ruang-lingkup', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `static_page_settings`
--

CREATE TABLE `static_page_settings` (
  `static_page_id` bigint(20) NOT NULL,
  `locale` varchar(14) NOT NULL DEFAULT '',
  `setting_name` varchar(255) NOT NULL,
  `setting_value` longtext DEFAULT NULL,
  `setting_type` varchar(6) NOT NULL COMMENT '(bool|int|float|string|object)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data untuk tabel `static_page_settings`
--

INSERT INTO `static_page_settings` (`static_page_id`, `locale`, `setting_name`, `setting_value`, `setting_type`) VALUES
(2, 'id_ID', 'content', '<h2>Focus &amp; Scope</h2>\r\n<div class=\"page\">\r\n<p><strong>The focus and scope</strong>&nbsp;of JTIM in the Field of Information Technology and Multimedia and or related to it with a range of themes such as Database System, Data Mining / Web Mining, Datawarehouse, Artificial Intelligence, Business Intelligence, Cloud &amp; Grid Computing, Decision Support System, Human-Computer &amp; Interaction, Mobile Computing &amp; Application, E-System, Machine Learning, Deep Learning, Information Retrieval (IR), Computer Network &amp; Security, Multimedia Systems, Information Systems, Geographical Information Systems (GIS), Accounting Information Systems, Database Security, Network Security, Fuzzy Logic, Expert System, Image Processing, Computer Graphics, Computer Vision, Semantic Web, e-Health, Animation and others allied.</p>\r\n</div>', 'string'),
(2, 'id_ID', 'title', 'Fokus dan Ruang Lingkup', 'string');

-- --------------------------------------------------------

--
-- Struktur dari tabel `subeditor_submission_group`
--

CREATE TABLE `subeditor_submission_group` (
  `context_id` bigint(20) NOT NULL,
  `assoc_id` bigint(20) NOT NULL,
  `assoc_type` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `submissions`
--

CREATE TABLE `submissions` (
  `submission_id` bigint(20) NOT NULL,
  `context_id` bigint(20) NOT NULL,
  `current_publication_id` bigint(20) DEFAULT NULL,
  `date_last_activity` datetime DEFAULT NULL,
  `date_submitted` datetime DEFAULT NULL,
  `last_modified` datetime DEFAULT NULL,
  `stage_id` bigint(20) NOT NULL DEFAULT 1,
  `locale` varchar(14) DEFAULT NULL,
  `status` smallint(6) NOT NULL DEFAULT 1,
  `submission_progress` smallint(6) NOT NULL DEFAULT 1,
  `work_type` smallint(6) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data untuk tabel `submissions`
--

INSERT INTO `submissions` (`submission_id`, `context_id`, `current_publication_id`, `date_last_activity`, `date_submitted`, `last_modified`, `stage_id`, `locale`, `status`, `submission_progress`, `work_type`) VALUES
(1, 1, 1, '2024-09-29 03:09:48', '2024-09-29 01:24:01', '2024-09-29 01:06:35', 5, 'id_ID', 1, 0, 0),
(2, 1, 2, '2024-09-29 03:09:48', NULL, '2024-09-29 01:24:15', 1, 'id_ID', 1, 1, 0),
(3, 1, 3, '2024-09-29 03:09:48', NULL, '2024-09-29 01:25:23', 1, 'id_ID', 1, 1, 0),
(4, 1, 4, '2024-09-29 03:09:48', '2024-09-29 01:48:06', '2024-09-29 01:41:36', 5, 'id_ID', 1, 0, 0),
(5, 1, 5, '2024-09-29 03:09:48', NULL, '2024-09-29 02:48:35', 1, 'id_ID', 1, 1, 0),
(6, 1, 6, '2024-09-29 03:09:48', NULL, '2024-09-29 03:09:11', 1, 'id_ID', 1, 2, 0),
(7, 1, 7, '2024-09-29 03:09:48', NULL, '2024-09-29 03:09:35', 1, 'id_ID', 1, 1, 0),
(8, 1, 8, '2024-09-30 03:48:31', '2024-09-29 03:14:57', '2024-09-29 03:09:53', 5, 'id_ID', 3, 0, 0),
(9, 1, 9, '2024-09-30 03:48:31', '2024-09-29 06:26:17', '2024-09-29 06:16:15', 5, 'id_ID', 3, 0, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `submission_comments`
--

CREATE TABLE `submission_comments` (
  `comment_id` bigint(20) NOT NULL,
  `comment_type` bigint(20) DEFAULT NULL,
  `role_id` bigint(20) NOT NULL,
  `submission_id` bigint(20) NOT NULL,
  `assoc_id` bigint(20) NOT NULL,
  `author_id` bigint(20) NOT NULL,
  `comment_title` text NOT NULL,
  `comments` text DEFAULT NULL,
  `date_posted` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `viewable` smallint(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `submission_files`
--

CREATE TABLE `submission_files` (
  `submission_file_id` bigint(20) UNSIGNED NOT NULL,
  `submission_id` bigint(20) NOT NULL,
  `file_id` bigint(20) UNSIGNED NOT NULL,
  `source_submission_file_id` bigint(20) DEFAULT NULL,
  `genre_id` bigint(20) DEFAULT NULL,
  `file_stage` bigint(20) NOT NULL,
  `direct_sales_price` varchar(255) DEFAULT NULL,
  `sales_type` varchar(255) DEFAULT NULL,
  `viewable` smallint(6) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `uploader_user_id` bigint(20) DEFAULT NULL,
  `assoc_type` bigint(20) DEFAULT NULL,
  `assoc_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data untuk tabel `submission_files`
--

INSERT INTO `submission_files` (`submission_file_id`, `submission_id`, `file_id`, `source_submission_file_id`, `genre_id`, `file_stage`, `direct_sales_price`, `sales_type`, `viewable`, `created_at`, `updated_at`, `uploader_user_id`, `assoc_type`, `assoc_id`) VALUES
(1, 1, 1, NULL, 12, 10, NULL, NULL, NULL, '2024-09-29 01:21:15', '2024-09-29 01:22:23', 1, 521, 1),
(2, 1, 1, 1, 12, 2, NULL, NULL, 1, '2024-09-29 01:24:00', '2024-09-29 01:24:00', 1, NULL, NULL),
(4, 4, 2, 3, 8, 2, NULL, NULL, 1, '2024-09-29 01:48:06', '2024-09-29 01:48:06', 1, NULL, NULL),
(5, 4, 3, NULL, 8, 11, NULL, NULL, NULL, '2024-09-29 02:52:31', '2024-09-29 02:52:31', 1, NULL, NULL),
(6, 4, 4, NULL, 8, 11, NULL, NULL, NULL, '2024-09-29 02:53:13', '2024-09-29 02:53:13', 1, NULL, NULL),
(8, 4, 6, NULL, 8, 10, NULL, NULL, NULL, '2024-09-29 03:06:48', '2024-09-29 03:06:52', 1, 521, 3),
(9, 8, 7, NULL, 8, 10, NULL, NULL, NULL, '2024-09-29 03:13:54', '2024-09-29 03:14:38', 1, 521, 4),
(10, 8, 7, 9, 8, 2, NULL, NULL, 1, '2024-09-29 03:14:57', '2024-09-29 03:14:57', 1, NULL, NULL),
(11, 8, 8, NULL, 8, 11, NULL, NULL, NULL, '2024-09-29 03:20:39', '2024-09-29 03:20:42', 1, NULL, NULL),
(12, 8, 7, 10, 8, 18, NULL, NULL, 1, '2024-09-29 06:01:08', '2024-09-29 06:01:08', 1, 520, 4),
(16, 9, 12, NULL, 12, 10, NULL, NULL, NULL, '2024-09-29 06:25:40', '2024-09-29 06:25:43', 1, 521, 7),
(17, 9, 12, 16, 12, 2, NULL, NULL, 1, '2024-09-29 06:26:17', '2024-09-29 06:26:17', 1, NULL, NULL),
(18, 9, 12, 17, 12, 6, NULL, NULL, 1, '2024-09-29 06:26:59', '2024-09-29 06:26:59', 1, NULL, NULL),
(19, 9, 12, 18, 12, 9, NULL, NULL, 1, '2024-09-29 06:27:12', '2024-09-29 06:27:12', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `submission_file_revisions`
--

CREATE TABLE `submission_file_revisions` (
  `revision_id` bigint(20) UNSIGNED NOT NULL,
  `submission_file_id` bigint(20) UNSIGNED NOT NULL,
  `file_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data untuk tabel `submission_file_revisions`
--

INSERT INTO `submission_file_revisions` (`revision_id`, `submission_file_id`, `file_id`) VALUES
(1, 1, 1),
(2, 2, 1),
(4, 4, 2),
(5, 5, 3),
(6, 6, 4),
(8, 8, 6),
(9, 9, 7),
(10, 10, 7),
(11, 11, 8),
(12, 12, 7),
(16, 16, 12),
(17, 17, 12),
(18, 18, 12),
(19, 19, 12);

-- --------------------------------------------------------

--
-- Struktur dari tabel `submission_file_settings`
--

CREATE TABLE `submission_file_settings` (
  `submission_file_id` bigint(20) NOT NULL,
  `locale` varchar(14) NOT NULL DEFAULT '',
  `setting_name` varchar(255) NOT NULL,
  `setting_value` text DEFAULT NULL,
  `setting_type` varchar(6) NOT NULL DEFAULT 'string' COMMENT '(bool|int|float|string|object|date)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data untuk tabel `submission_file_settings`
--

INSERT INTO `submission_file_settings` (`submission_file_id`, `locale`, `setting_name`, `setting_value`, `setting_type`) VALUES
(1, '', 'dateCreated', '', 'string'),
(1, '', 'language', '', 'string'),
(1, 'id_ID', 'creator', '', 'string'),
(1, 'id_ID', 'description', '', 'string'),
(1, 'id_ID', 'name', 'Artikel Ke 1', 'string'),
(1, 'id_ID', 'publisher', '', 'string'),
(1, 'id_ID', 'source', '', 'string'),
(1, 'id_ID', 'sponsor', '', 'string'),
(1, 'id_ID', 'subject', '', 'string'),
(2, '', 'dateCreated', '', 'string'),
(2, '', 'language', '', 'string'),
(2, 'id_ID', 'creator', '', 'string'),
(2, 'id_ID', 'description', '', 'string'),
(2, 'id_ID', 'name', 'Artikel Ke 1', 'string'),
(2, 'id_ID', 'publisher', '', 'string'),
(2, 'id_ID', 'source', '', 'string'),
(2, 'id_ID', 'sponsor', '', 'string'),
(2, 'id_ID', 'subject', '', 'string'),
(4, '', 'dateCreated', '', 'string'),
(4, '', 'language', '', 'string'),
(4, 'id_ID', 'creator', '', 'string'),
(4, 'id_ID', 'description', '', 'string'),
(4, 'id_ID', 'name', 'document.pdf', 'string'),
(4, 'id_ID', 'publisher', '', 'string'),
(4, 'id_ID', 'source', '', 'string'),
(4, 'id_ID', 'sponsor', '', 'string'),
(4, 'id_ID', 'subject', '', 'string'),
(5, 'id_ID', 'name', 'document.pdf', 'string'),
(6, 'id_ID', 'name', 'document.pdf', 'string'),
(8, '', 'dateCreated', '', 'string'),
(8, '', 'language', '', 'string'),
(8, 'id_ID', 'creator', '', 'string'),
(8, 'id_ID', 'description', '', 'string'),
(8, 'id_ID', 'name', '453-Article Text-3444-1-10-20240107 (1).pdf', 'string'),
(8, 'id_ID', 'publisher', '', 'string'),
(8, 'id_ID', 'source', '', 'string'),
(8, 'id_ID', 'sponsor', '', 'string'),
(8, 'id_ID', 'subject', '', 'string'),
(9, '', 'dateCreated', '2024-09-03', 'string'),
(9, '', 'language', 'INDONESIA', 'string'),
(9, 'id_ID', 'creator', 'DFSDFSD', 'string'),
(9, 'id_ID', 'description', '', 'string'),
(9, 'id_ID', 'name', '453-Article Text-3444-1-10-20240107 (1).pdf', 'string'),
(9, 'id_ID', 'publisher', '', 'string'),
(9, 'id_ID', 'source', 'Rosnalia Widyan', 'string'),
(9, 'id_ID', 'sponsor', 'DFSDF', 'string'),
(9, 'id_ID', 'subject', 'Rosnalia Widyan', 'string'),
(10, '', 'dateCreated', '2024-09-03', 'string'),
(10, '', 'language', 'INDONESIA', 'string'),
(10, 'id_ID', 'creator', 'DFSDFSD', 'string'),
(10, 'id_ID', 'description', '', 'string'),
(10, 'id_ID', 'name', '453-Article Text-3444-1-10-20240107 (1).pdf', 'string'),
(10, 'id_ID', 'publisher', '', 'string'),
(10, 'id_ID', 'source', 'Rosnalia Widyan', 'string'),
(10, 'id_ID', 'sponsor', 'DFSDF', 'string'),
(10, 'id_ID', 'subject', 'Rosnalia Widyan', 'string'),
(11, '', 'dateCreated', '', 'string'),
(11, '', 'language', '', 'string'),
(11, 'id_ID', 'creator', '', 'string'),
(11, 'id_ID', 'description', '', 'string'),
(11, 'id_ID', 'name', '453-Article Text-3444-1-10-20240107 (1).pdf', 'string'),
(11, 'id_ID', 'publisher', '', 'string'),
(11, 'id_ID', 'source', '', 'string'),
(11, 'id_ID', 'sponsor', '', 'string'),
(11, 'id_ID', 'subject', '', 'string'),
(12, '', 'dateCreated', '2024-09-03', 'string'),
(12, '', 'language', 'INDONESIA', 'string'),
(12, 'id_ID', 'creator', 'DFSDFSD', 'string'),
(12, 'id_ID', 'description', '', 'string'),
(12, 'id_ID', 'name', '453-Article Text-3444-1-10-20240107 (1).pdf', 'string'),
(12, 'id_ID', 'publisher', '', 'string'),
(12, 'id_ID', 'source', 'Rosnalia Widyan', 'string'),
(12, 'id_ID', 'sponsor', 'DFSDF', 'string'),
(12, 'id_ID', 'subject', 'Rosnalia Widyan', 'string'),
(16, '', 'dateCreated', '', 'string'),
(16, '', 'language', '', 'string'),
(16, 'id_ID', 'creator', '', 'string'),
(16, 'id_ID', 'description', '', 'string'),
(16, 'id_ID', 'name', 'document.pdf', 'string'),
(16, 'id_ID', 'publisher', '', 'string'),
(16, 'id_ID', 'source', '', 'string'),
(16, 'id_ID', 'sponsor', '', 'string'),
(16, 'id_ID', 'subject', '', 'string'),
(17, '', 'dateCreated', '', 'string'),
(17, '', 'language', '', 'string'),
(17, 'id_ID', 'creator', '', 'string'),
(17, 'id_ID', 'description', '', 'string'),
(17, 'id_ID', 'name', 'document.pdf', 'string'),
(17, 'id_ID', 'publisher', '', 'string'),
(17, 'id_ID', 'source', '', 'string'),
(17, 'id_ID', 'sponsor', '', 'string'),
(17, 'id_ID', 'subject', '', 'string'),
(18, '', 'dateCreated', '', 'string'),
(18, '', 'language', '', 'string'),
(18, 'id_ID', 'creator', '', 'string'),
(18, 'id_ID', 'description', '', 'string'),
(18, 'id_ID', 'name', 'document.pdf', 'string'),
(18, 'id_ID', 'publisher', '', 'string'),
(18, 'id_ID', 'source', '', 'string'),
(18, 'id_ID', 'sponsor', '', 'string'),
(18, 'id_ID', 'subject', '', 'string'),
(19, '', 'dateCreated', '', 'string'),
(19, '', 'language', '', 'string'),
(19, 'id_ID', 'creator', '', 'string'),
(19, 'id_ID', 'description', '', 'string'),
(19, 'id_ID', 'name', 'document.pdf', 'string'),
(19, 'id_ID', 'publisher', '', 'string'),
(19, 'id_ID', 'source', '', 'string'),
(19, 'id_ID', 'sponsor', '', 'string'),
(19, 'id_ID', 'subject', '', 'string');

-- --------------------------------------------------------

--
-- Struktur dari tabel `submission_search_keyword_list`
--

CREATE TABLE `submission_search_keyword_list` (
  `keyword_id` bigint(20) NOT NULL,
  `keyword_text` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data untuk tabel `submission_search_keyword_list`
--

INSERT INTO `submission_search_keyword_list` (`keyword_id`, `keyword_text`) VALUES
(55, 'ability'),
(128, 'abstrak'),
(260, 'adalah'),
(33, 'agricultural'),
(78, 'aim'),
(279, 'air'),
(154, 'akan'),
(18, 'alami'),
(30, 'amount'),
(208, 'aroma'),
(176, 'asin'),
(210, 'atau'),
(13, 'bacillus'),
(100, 'bacterial'),
(268, 'bagi'),
(129, 'bahan'),
(295, 'bahwa'),
(296, 'baik'),
(298, 'bakter'),
(132, 'banyak'),
(169, 'barat'),
(192, 'bata'),
(164, 'beberapa'),
(57, 'beneficial'),
(209, 'bentuk'),
(265, 'berbagai'),
(219, 'berbau'),
(19, 'berbeda'),
(195, 'berjumlah'),
(274, 'berkualitas'),
(161, 'bertujuan'),
(200, 'berubah'),
(183, 'berubahnya'),
(120, 'berupa'),
(215, 'berwarna'),
(299, 'biji'),
(186, 'biru'),
(152, 'busa'),
(177, 'cara'),
(65, 'carbon'),
(36, 'carried'),
(101, 'cells'),
(217, 'cerah'),
(69, 'cheap'),
(38, 'chemical'),
(212, 'ciri'),
(74, 'coconut'),
(93, 'compared'),
(88, 'component'),
(94, 'control'),
(123, 'cumi'),
(135, 'dalam'),
(245, 'dampak'),
(111, 'dan'),
(287, 'dapat'),
(125, 'dari'),
(44, 'decrease'),
(28, 'demand'),
(15, 'dengan'),
(80, 'determine'),
(293, 'diamati'),
(221, 'diawetkan'),
(229, 'dibandingkan'),
(286, 'diberi'),
(204, 'didukung'),
(81, 'difference'),
(148, 'digunakan'),
(134, 'dijumpai'),
(119, 'dikeringkan'),
(288, 'diketahui'),
(172, 'dilakukan'),
(147, 'dilarang'),
(277, 'dimanfaatkan'),
(255, 'diperlukan'),
(163, 'diperoleh'),
(182, 'ditandai'),
(194, 'diuji'),
(292, 'diukur'),
(70, 'easy'),
(1, 'edy'),
(98, 'effect'),
(47, 'elements'),
(190, 'endapan'),
(252, 'esensial'),
(45, 'essential'),
(5, 'farma'),
(51, 'farming'),
(180, 'fehling'),
(62, 'fertility'),
(89, 'fertilizer'),
(40, 'fertilizers'),
(213, 'fisik'),
(27, 'food'),
(114, 'formalin'),
(222, 'garam'),
(22, 'germinasi'),
(82, 'germination'),
(24, 'glycine'),
(97, 'good'),
(60, 'growth'),
(9, 'halid'),
(225, 'halus'),
(228, 'hancur'),
(116, 'hasil'),
(64, 'high'),
(103, 'highquality'),
(188, 'hijau'),
(73, 'humans'),
(6, 'husada'),
(87, 'identified'),
(8, 'idham'),
(121, 'ikan'),
(42, 'impact'),
(26, 'increase'),
(160, 'ini'),
(202, 'itu'),
(142, 'jarang'),
(203, 'juga'),
(234, 'jumlah'),
(113, 'kandungan'),
(17, 'karbon'),
(231, 'kebutuhan'),
(23, 'kedelai'),
(280, 'kelapa'),
(263, 'kemampuan'),
(272, 'kesuburan'),
(220, 'khas'),
(243, 'kimiawi'),
(291, 'komponen'),
(294, 'kontrol'),
(166, 'kota'),
(247, 'kualitas'),
(110, 'kualitatif'),
(2, 'kurniawan'),
(248, 'lahan'),
(153, 'lain'),
(21, 'laju'),
(43, 'land'),
(185, 'larutan'),
(14, 'laterosporus'),
(117, 'laut'),
(224, 'lebih'),
(29, 'line'),
(61, 'maintain'),
(138, 'makanan'),
(196, 'mana'),
(278, 'manusia'),
(179, 'masing'),
(7, 'mataram'),
(25, 'max'),
(91, 'measured'),
(4, 'medica'),
(162, 'melakukan'),
(240, 'melalui'),
(207, 'meliputi'),
(244, 'memberikan'),
(273, 'memerlukan'),
(262, 'memiliki'),
(178, 'menambah'),
(197, 'mengandung'),
(157, 'mengawetkan'),
(259, 'mengembalikan'),
(284, 'mengetahui'),
(146, 'menggunakan'),
(264, 'menghasilkan'),
(267, 'menguntungkan'),
(230, 'meningkatnya'),
(187, 'menjadi'),
(271, 'menjaga'),
(249, 'menurunnya'),
(191, 'merah'),
(257, 'merupakan'),
(266, 'metabolit'),
(58, 'metabolites'),
(54, 'microorganism'),
(261, 'mikroorganisme'),
(282, 'molase'),
(77, 'molasses'),
(227, 'mudah'),
(276, 'murah'),
(236, 'mutu'),
(140, 'namun'),
(67, 'natural'),
(49, 'needed'),
(246, 'negatif'),
(41, 'negative'),
(76, 'nira'),
(99, 'number'),
(167, 'nusa'),
(92, 'observed'),
(71, 'obtain'),
(139, 'olahan'),
(205, 'oleh'),
(46, 'organic'),
(251, 'organik'),
(112, 'organoleptik'),
(206, 'organoleptiknya'),
(115, 'pada'),
(127, 'pagesangan'),
(131, 'pangan'),
(143, 'para'),
(126, 'pasar'),
(165, 'pedagang'),
(144, 'pelaku'),
(11, 'pemberian'),
(159, 'penelitian'),
(170, 'pengambilan'),
(10, 'pengaruh'),
(150, 'pengawet'),
(233, 'peningkatan'),
(285, 'perbedaan'),
(237, 'pertanian'),
(269, 'pertumbuhan'),
(59, 'plant'),
(50, 'plants'),
(3, 'politeknik'),
(181, 'positif'),
(56, 'produce'),
(31, 'production'),
(34, 'products'),
(137, 'produk'),
(235, 'produksi'),
(37, 'provision'),
(241, 'pupuk'),
(216, 'putih'),
(32, 'quality'),
(174, 'random'),
(83, 'rate'),
(105, 'ratia'),
(106, 'ratulangi'),
(124, 'rebon'),
(63, 'requires'),
(53, 'restore'),
(95, 'results'),
(107, 'rosnalia'),
(171, 'sampel'),
(175, 'sampling'),
(254, 'sangat'),
(149, 'sebagai'),
(102, 'seeds'),
(218, 'segar'),
(275, 'sehingga'),
(232, 'seiring'),
(133, 'sekali'),
(297, 'sel'),
(201, 'selain'),
(239, 'selama'),
(158, 'seperti'),
(199, 'serta'),
(136, 'setiap'),
(96, 'showed'),
(242, 'sintetis'),
(48, 'soil'),
(258, 'solusi'),
(52, 'solution'),
(66, 'source'),
(68, 'sources'),
(90, 'soybean'),
(84, 'soybeans'),
(238, 'strategi'),
(35, 'strategy'),
(79, 'study'),
(16, 'sumber'),
(289, 'sunber'),
(12, 'suspensi'),
(86, 'suspension'),
(39, 'synthetic'),
(130, 'tambahan'),
(253, 'tanah'),
(256, 'tanaman'),
(270, 'tanamanserta'),
(173, 'teknik'),
(211, 'tekstur'),
(223, 'teksturnya'),
(168, 'tenggara'),
(290, 'terbaik'),
(198, 'terbentuknya'),
(189, 'terdapat'),
(20, 'terhadap'),
(122, 'teri'),
(155, 'tetapi'),
(141, 'tidak'),
(193, 'total'),
(85, 'treated'),
(151, 'triplek'),
(281, 'tua'),
(283, 'tujuan'),
(109, 'uji'),
(250, 'unsur'),
(156, 'untuk'),
(145, 'usaha'),
(226, 'utuh'),
(184, 'warna'),
(75, 'water'),
(72, 'widely'),
(108, 'widyan'),
(104, 'wulan'),
(214, 'yaitu'),
(118, 'yang');

-- --------------------------------------------------------

--
-- Struktur dari tabel `submission_search_objects`
--

CREATE TABLE `submission_search_objects` (
  `object_id` bigint(20) NOT NULL,
  `submission_id` bigint(20) NOT NULL,
  `type` int(11) NOT NULL COMMENT 'Type of item. E.g., abstract, fulltext, etc.',
  `assoc_id` bigint(20) DEFAULT NULL COMMENT 'Optional ID of an associated record (e.g., a file_id)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data untuk tabel `submission_search_objects`
--

INSERT INTO `submission_search_objects` (`object_id`, `submission_id`, `type`, `assoc_id`) VALUES
(81, 9, 1, 0),
(82, 9, 2, 0),
(83, 9, 4, 0),
(84, 9, 16, 0),
(85, 9, 17, 0),
(86, 9, 8, 0),
(87, 9, 32, 0),
(88, 9, 64, 0),
(89, 8, 1, 0),
(90, 8, 2, 0),
(91, 8, 4, 0),
(92, 8, 16, 0),
(93, 8, 17, 0),
(94, 8, 8, 0),
(95, 8, 32, 0),
(96, 8, 64, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `submission_search_object_keywords`
--

CREATE TABLE `submission_search_object_keywords` (
  `object_id` bigint(20) NOT NULL,
  `keyword_id` bigint(20) NOT NULL,
  `pos` int(11) NOT NULL COMMENT 'Word position of the keyword in the object.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data untuk tabel `submission_search_object_keywords`
--

INSERT INTO `submission_search_object_keywords` (`object_id`, `keyword_id`, `pos`) VALUES
(81, 1, 0),
(81, 2, 1),
(81, 3, 2),
(81, 3, 9),
(89, 3, 3),
(89, 3, 10),
(81, 4, 3),
(81, 4, 10),
(89, 4, 4),
(89, 4, 11),
(81, 5, 4),
(81, 5, 11),
(89, 5, 5),
(89, 5, 12),
(81, 6, 5),
(81, 6, 12),
(89, 6, 6),
(89, 6, 13),
(81, 7, 6),
(81, 7, 13),
(89, 7, 7),
(89, 7, 14),
(91, 7, 84),
(81, 8, 7),
(81, 9, 8),
(82, 10, 0),
(83, 10, 162),
(82, 11, 1),
(83, 11, 22),
(83, 11, 157),
(82, 12, 2),
(83, 12, 120),
(82, 13, 3),
(83, 13, 57),
(82, 14, 4),
(83, 14, 58),
(83, 14, 74),
(83, 14, 121),
(83, 14, 136),
(82, 15, 5),
(83, 15, 6),
(83, 15, 122),
(83, 15, 151),
(91, 15, 91),
(91, 15, 103),
(91, 15, 114),
(91, 15, 142),
(91, 15, 195),
(91, 15, 209),
(82, 16, 6),
(83, 16, 79),
(83, 16, 89),
(83, 16, 123),
(83, 16, 158),
(82, 17, 7),
(83, 17, 80),
(83, 17, 90),
(83, 17, 124),
(83, 17, 131),
(83, 17, 159),
(82, 18, 8),
(83, 18, 91),
(83, 18, 125),
(83, 18, 132),
(83, 18, 160),
(82, 19, 9),
(83, 19, 126),
(82, 20, 10),
(83, 20, 31),
(83, 20, 165),
(82, 21, 11),
(83, 21, 115),
(83, 21, 143),
(83, 21, 171),
(82, 22, 12),
(83, 22, 116),
(83, 22, 144),
(83, 22, 172),
(82, 23, 13),
(83, 23, 117),
(83, 23, 145),
(83, 23, 174),
(82, 24, 14),
(82, 25, 15),
(91, 41, 212),
(83, 76, 106),
(89, 104, 0),
(89, 105, 1),
(89, 106, 2),
(89, 107, 8),
(89, 108, 9),
(90, 109, 0),
(91, 109, 59),
(91, 109, 95),
(91, 109, 111),
(91, 109, 160),
(91, 109, 175),
(93, 109, 0),
(90, 110, 1),
(91, 110, 60),
(91, 110, 96),
(93, 110, 1),
(83, 111, 10),
(83, 111, 56),
(83, 111, 107),
(83, 111, 147),
(83, 111, 170),
(90, 111, 2),
(90, 111, 15),
(91, 111, 33),
(91, 111, 51),
(91, 111, 61),
(91, 111, 74),
(91, 111, 109),
(91, 111, 121),
(91, 111, 180),
(91, 111, 185),
(91, 111, 197),
(91, 111, 204),
(90, 112, 3),
(91, 112, 62),
(93, 112, 2),
(90, 113, 4),
(91, 113, 63),
(90, 114, 5),
(91, 114, 25),
(91, 114, 64),
(91, 114, 97),
(91, 114, 139),
(91, 114, 214),
(93, 114, 3),
(90, 115, 6),
(91, 115, 30),
(91, 115, 53),
(91, 115, 65),
(91, 115, 98),
(83, 116, 12),
(83, 116, 153),
(90, 116, 7),
(91, 116, 43),
(91, 116, 66),
(91, 116, 134),
(91, 116, 159),
(91, 116, 191),
(90, 117, 8),
(91, 117, 44),
(91, 117, 67),
(91, 117, 192),
(83, 118, 41),
(83, 118, 50),
(83, 118, 61),
(83, 118, 77),
(83, 118, 85),
(83, 118, 92),
(83, 118, 118),
(83, 118, 163),
(90, 118, 9),
(91, 118, 22),
(91, 118, 26),
(91, 118, 45),
(91, 118, 68),
(91, 118, 76),
(91, 118, 128),
(91, 118, 136),
(91, 118, 140),
(91, 118, 162),
(91, 118, 193),
(91, 118, 211),
(90, 119, 10),
(91, 119, 46),
(91, 119, 69),
(90, 120, 11),
(91, 120, 24),
(91, 120, 42),
(91, 120, 70),
(90, 121, 12),
(91, 121, 48),
(91, 121, 71),
(91, 121, 100),
(91, 121, 177),
(93, 121, 4),
(90, 122, 13),
(91, 122, 49),
(91, 122, 72),
(91, 122, 178),
(93, 122, 5),
(90, 123, 14),
(91, 123, 50),
(91, 123, 73),
(91, 123, 179),
(93, 123, 6),
(90, 124, 16),
(91, 124, 52),
(91, 124, 75),
(91, 124, 181),
(93, 124, 7),
(90, 125, 17),
(91, 125, 78),
(91, 125, 173),
(90, 126, 18),
(91, 126, 81),
(90, 127, 19),
(91, 127, 82),
(83, 128, 0),
(91, 128, 0),
(91, 129, 1),
(91, 129, 19),
(91, 130, 2),
(91, 130, 20),
(83, 131, 3),
(91, 131, 3),
(91, 131, 21),
(83, 132, 98),
(91, 132, 4),
(91, 133, 5),
(91, 134, 6),
(91, 135, 7),
(91, 136, 8),
(91, 137, 9),
(91, 138, 10),
(91, 138, 41),
(91, 139, 11),
(91, 140, 12),
(83, 141, 4),
(83, 141, 97),
(91, 141, 13),
(91, 141, 188),
(91, 141, 205),
(91, 142, 14),
(91, 143, 15),
(91, 144, 16),
(91, 145, 17),
(91, 146, 18),
(91, 147, 23),
(91, 148, 27),
(91, 148, 38),
(83, 149, 137),
(91, 149, 28),
(91, 150, 29),
(91, 151, 31),
(91, 152, 32),
(91, 153, 34),
(91, 153, 35),
(91, 154, 36),
(91, 155, 37),
(83, 156, 52),
(83, 156, 82),
(83, 156, 112),
(83, 156, 134),
(91, 156, 39),
(91, 156, 57),
(91, 157, 40),
(83, 158, 102),
(91, 158, 47),
(83, 159, 110),
(83, 159, 154),
(91, 159, 54),
(83, 160, 19),
(83, 160, 27),
(91, 160, 55),
(91, 161, 56),
(91, 162, 58),
(83, 163, 95),
(83, 163, 155),
(91, 163, 77),
(91, 163, 133),
(91, 164, 79),
(91, 165, 80),
(91, 166, 83),
(91, 167, 85),
(91, 168, 86),
(91, 169, 87),
(91, 170, 88),
(91, 171, 89),
(91, 171, 99),
(91, 171, 127),
(91, 171, 131),
(91, 171, 135),
(91, 171, 149),
(91, 171, 174),
(91, 171, 210),
(83, 172, 20),
(91, 172, 90),
(91, 172, 102),
(91, 173, 92),
(91, 174, 93),
(91, 175, 94),
(91, 176, 101),
(91, 177, 104),
(91, 178, 105),
(91, 179, 106),
(91, 179, 107),
(91, 180, 108),
(91, 180, 110),
(91, 181, 112),
(91, 181, 137),
(91, 182, 113),
(91, 182, 141),
(91, 183, 115),
(91, 184, 116),
(91, 184, 152),
(91, 184, 164),
(91, 185, 117),
(91, 185, 148),
(91, 186, 118),
(91, 187, 119),
(91, 187, 151),
(91, 188, 120),
(91, 188, 153),
(91, 189, 122),
(91, 190, 123),
(91, 190, 144),
(91, 191, 124),
(91, 191, 145),
(91, 192, 125),
(91, 192, 146),
(91, 193, 126),
(91, 194, 129),
(91, 195, 130),
(91, 196, 132),
(91, 196, 169),
(91, 197, 138),
(91, 197, 213),
(91, 198, 143),
(83, 199, 96),
(83, 199, 149),
(91, 199, 147),
(91, 200, 150),
(91, 201, 154),
(91, 202, 155),
(91, 203, 156),
(91, 204, 157),
(83, 205, 44),
(83, 205, 100),
(91, 205, 158),
(91, 206, 161),
(91, 207, 163),
(91, 208, 165),
(91, 208, 187),
(91, 209, 166),
(91, 209, 198),
(91, 210, 167),
(91, 210, 199),
(91, 211, 168),
(91, 212, 170),
(91, 212, 171),
(91, 213, 172),
(83, 214, 35),
(91, 214, 176),
(91, 215, 182),
(91, 216, 183),
(91, 217, 184),
(91, 218, 186),
(91, 219, 189),
(91, 220, 190),
(91, 221, 194),
(91, 222, 196),
(91, 223, 200),
(91, 224, 201),
(91, 225, 202),
(91, 226, 203),
(83, 227, 94),
(91, 227, 206),
(91, 228, 207),
(83, 229, 150),
(91, 229, 208),
(83, 230, 1),
(83, 231, 2),
(83, 232, 5),
(83, 233, 7),
(83, 233, 15),
(83, 234, 8),
(83, 234, 167),
(83, 235, 9),
(83, 235, 16),
(83, 236, 11),
(83, 237, 13),
(83, 237, 17),
(83, 237, 34),
(83, 237, 46),
(83, 238, 14),
(83, 238, 26),
(83, 239, 18),
(83, 240, 21),
(83, 241, 23),
(83, 241, 140),
(83, 242, 24),
(83, 243, 25),
(83, 244, 28),
(83, 244, 161),
(83, 245, 29),
(83, 246, 30),
(83, 247, 32),
(83, 247, 54),
(83, 248, 33),
(83, 248, 55),
(83, 249, 36),
(83, 250, 37),
(83, 251, 38),
(83, 251, 47),
(83, 251, 141),
(83, 252, 39),
(83, 252, 139),
(83, 253, 40),
(83, 253, 73),
(83, 254, 42),
(83, 255, 43),
(83, 255, 51),
(83, 255, 88),
(83, 256, 45),
(83, 257, 48),
(83, 257, 75),
(83, 258, 49),
(83, 259, 53),
(83, 260, 59),
(83, 260, 111),
(83, 261, 60),
(83, 261, 76),
(83, 262, 62),
(83, 263, 63),
(83, 264, 64),
(83, 264, 83),
(83, 265, 65),
(83, 266, 66),
(83, 266, 84),
(83, 267, 67),
(83, 268, 68),
(83, 269, 69),
(83, 269, 135),
(83, 269, 166),
(83, 270, 70),
(83, 271, 71),
(83, 272, 72),
(83, 273, 78),
(83, 274, 81),
(83, 274, 86),
(83, 274, 142),
(83, 275, 87),
(83, 275, 127),
(83, 276, 93),
(83, 277, 99),
(83, 278, 101),
(83, 279, 103),
(83, 280, 104),
(83, 281, 105),
(83, 282, 108),
(83, 283, 109),
(83, 284, 113),
(83, 285, 114),
(83, 286, 119),
(83, 287, 128),
(83, 288, 129),
(83, 289, 130),
(83, 290, 133),
(83, 291, 138),
(83, 292, 146),
(83, 293, 148),
(83, 294, 152),
(83, 295, 156),
(83, 296, 164),
(83, 297, 168),
(83, 298, 169),
(83, 299, 173);

-- --------------------------------------------------------

--
-- Struktur dari tabel `submission_settings`
--

CREATE TABLE `submission_settings` (
  `submission_id` bigint(20) NOT NULL,
  `locale` varchar(14) NOT NULL DEFAULT '',
  `setting_name` varchar(255) NOT NULL,
  `setting_value` mediumtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `submission_tombstones`
--

CREATE TABLE `submission_tombstones` (
  `tombstone_id` bigint(20) NOT NULL,
  `submission_id` bigint(20) NOT NULL,
  `date_deleted` datetime NOT NULL,
  `journal_id` bigint(20) NOT NULL,
  `section_id` bigint(20) NOT NULL,
  `set_spec` varchar(255) NOT NULL,
  `set_name` varchar(255) NOT NULL,
  `oai_identifier` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `subscriptions`
--

CREATE TABLE `subscriptions` (
  `subscription_id` bigint(20) NOT NULL,
  `journal_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `type_id` bigint(20) NOT NULL,
  `date_start` date DEFAULT NULL,
  `date_end` datetime DEFAULT NULL,
  `status` smallint(6) NOT NULL DEFAULT 1,
  `membership` varchar(40) DEFAULT NULL,
  `reference_number` varchar(40) DEFAULT NULL,
  `notes` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `subscription_types`
--

CREATE TABLE `subscription_types` (
  `type_id` bigint(20) NOT NULL,
  `journal_id` bigint(20) NOT NULL,
  `cost` double(8,2) NOT NULL,
  `currency_code_alpha` varchar(3) NOT NULL,
  `duration` smallint(6) DEFAULT NULL,
  `format` smallint(6) NOT NULL,
  `institutional` smallint(6) NOT NULL DEFAULT 0,
  `membership` smallint(6) NOT NULL DEFAULT 0,
  `disable_public_display` smallint(6) NOT NULL,
  `seq` double(8,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `subscription_type_settings`
--

CREATE TABLE `subscription_type_settings` (
  `type_id` bigint(20) NOT NULL,
  `locale` varchar(14) NOT NULL DEFAULT '',
  `setting_name` varchar(255) NOT NULL,
  `setting_value` text DEFAULT NULL,
  `setting_type` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `temporary_files`
--

CREATE TABLE `temporary_files` (
  `file_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `file_name` varchar(90) NOT NULL,
  `file_type` varchar(255) DEFAULT NULL,
  `file_size` bigint(20) NOT NULL,
  `original_file_name` varchar(127) DEFAULT NULL,
  `date_uploaded` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data untuk tabel `temporary_files`
--

INSERT INTO `temporary_files` (`file_id`, `user_id`, `file_name`, `file_type`, `file_size`, `original_file_name`, `date_uploaded`) VALUES
(19, 1, 'jpgDE37.tmp', 'image/jpeg', 273532, 'jurnal.jpg', '2024-09-27 16:11:04'),
(20, 1, 'png4620.tmp', 'image/png', 6150, 'unizar.png', '2024-09-27 16:14:47'),
(21, 1, 'pngBD7E.tmp', 'image/png', 178558, 'KMK 11 KM7 2024 ttg taging belanja infrastruktur_005.png', '2024-09-28 07:28:26'),
(22, 1, 'pdfAB6.tmp', 'application/pdf', 114200, 'Lampiran 1 APBD (Perda).pdf', '2024-09-28 07:28:45'),
(23, 1, 'jpe1B2E.tmp', 'image/jpeg', 145674, 'WhatsApp Image 2023-04-17 at 09.49.06.jpeg', '2024-09-28 07:29:55'),
(24, 1, 'pdfEDD9.tmp', 'application/pdf', 75030, 'Sistem Informasi Pemerintahan Daerah - Cetak RKA Rekap Belanja SKPD UPT RSUD Patut Patuh Patju.pdf', '2024-09-28 08:21:04'),
(36, 1, 'zip395E.tmp', 'application/zip', 42783, 'quickSubmit-master.zip', '2024-09-28 12:53:46'),
(37, 1, 'tpl809A.tmp', 'text/html', 5636, 'index.tpl', '2024-09-28 12:54:05'),
(46, 1, 'jpgC997.tmp', 'image/jpeg', 121084, 'cover_issue_23_en_US.jpg', '2024-09-29 01:41:10'),
(49, 1, 'pdfF77F.tmp', 'application/pdf', 174523, 'document.pdf', '2024-09-29 02:49:06'),
(50, 1, 'pdf4D.tmp', 'application/pdf', 409649, '453-Article Text-3444-1-10-20240107 (1).pdf', '2024-09-29 03:00:03');

-- --------------------------------------------------------

--
-- Struktur dari tabel `usage_stats_temporary_records`
--

CREATE TABLE `usage_stats_temporary_records` (
  `assoc_id` bigint(20) NOT NULL,
  `assoc_type` bigint(20) NOT NULL,
  `day` bigint(20) NOT NULL,
  `entry_time` bigint(20) NOT NULL,
  `metric` bigint(20) NOT NULL DEFAULT 1,
  `country_id` varchar(2) DEFAULT NULL,
  `region` varchar(2) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `load_id` varchar(255) NOT NULL,
  `file_type` smallint(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `user_id` bigint(20) NOT NULL,
  `username` varchar(32) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `url` varchar(2047) DEFAULT NULL,
  `phone` varchar(32) DEFAULT NULL,
  `mailing_address` varchar(255) DEFAULT NULL,
  `billing_address` varchar(255) DEFAULT NULL,
  `country` varchar(90) DEFAULT NULL,
  `locales` varchar(255) DEFAULT NULL,
  `gossip` text DEFAULT NULL,
  `date_last_email` datetime DEFAULT NULL,
  `date_registered` datetime NOT NULL,
  `date_validated` datetime DEFAULT NULL,
  `date_last_login` datetime NOT NULL,
  `must_change_password` smallint(6) DEFAULT NULL,
  `auth_id` bigint(20) DEFAULT NULL,
  `auth_str` varchar(255) DEFAULT NULL,
  `disabled` smallint(6) NOT NULL DEFAULT 0,
  `disabled_reason` text DEFAULT NULL,
  `inline_help` smallint(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`user_id`, `username`, `password`, `email`, `url`, `phone`, `mailing_address`, `billing_address`, `country`, `locales`, `gossip`, `date_last_email`, `date_registered`, `date_validated`, `date_last_login`, `must_change_password`, `auth_id`, `auth_str`, `disabled`, `disabled_reason`, `inline_help`) VALUES
(1, 'adminojs', '$2y$10$zcadFydC5J/dsoQOKNwbfub4C429ERxtl6Pg73/cpQcL6gyFc9MmG', 'admin@gmail.com', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '2024-09-26 10:10:37', NULL, '2024-09-29 08:55:16', 0, NULL, NULL, 0, NULL, 1),
(2, 'irham', '$2y$10$bpC.S2b10ateB6XxVHwoL.6lBE3CtO5uAoC9EiwU6V8cW1JZqRYme', 'irham@gmail.com', '', '', '', NULL, 'ID', '', NULL, NULL, '2024-09-26 10:13:11', NULL, '2024-09-26 10:13:11', 1, NULL, NULL, 0, NULL, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_groups`
--

CREATE TABLE `user_groups` (
  `user_group_id` bigint(20) NOT NULL,
  `context_id` bigint(20) NOT NULL,
  `role_id` bigint(20) NOT NULL,
  `is_default` smallint(6) NOT NULL DEFAULT 0,
  `show_title` smallint(6) NOT NULL DEFAULT 1,
  `permit_self_registration` smallint(6) NOT NULL DEFAULT 0,
  `permit_metadata_edit` smallint(6) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data untuk tabel `user_groups`
--

INSERT INTO `user_groups` (`user_group_id`, `context_id`, `role_id`, `is_default`, `show_title`, `permit_self_registration`, `permit_metadata_edit`) VALUES
(1, 0, 1, 1, 0, 0, 0),
(2, 1, 16, 1, 0, 0, 1),
(3, 1, 16, 1, 0, 0, 1),
(4, 1, 16, 1, 0, 0, 1),
(5, 1, 17, 1, 0, 0, 1),
(6, 1, 17, 1, 0, 0, 0),
(7, 1, 4097, 1, 0, 0, 0),
(8, 1, 4097, 1, 0, 0, 0),
(9, 1, 4097, 1, 0, 0, 0),
(10, 1, 4097, 1, 0, 0, 0),
(11, 1, 4097, 1, 0, 0, 0),
(12, 1, 4097, 1, 0, 0, 0),
(13, 1, 4097, 1, 0, 0, 0),
(14, 1, 65536, 1, 0, 1, 0),
(15, 1, 65536, 1, 0, 0, 0),
(16, 1, 4096, 1, 0, 1, 0),
(17, 1, 1048576, 1, 0, 1, 0),
(18, 1, 2097152, 1, 0, 0, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_group_settings`
--

CREATE TABLE `user_group_settings` (
  `user_group_id` bigint(20) NOT NULL,
  `locale` varchar(14) NOT NULL DEFAULT '',
  `setting_name` varchar(255) NOT NULL,
  `setting_value` text DEFAULT NULL,
  `setting_type` varchar(6) NOT NULL COMMENT '(bool|int|float|string|object)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data untuk tabel `user_group_settings`
--

INSERT INTO `user_group_settings` (`user_group_id`, `locale`, `setting_name`, `setting_value`, `setting_type`) VALUES
(1, 'id_ID', 'name', '##default.groups.name.siteAdmin##', 'string'),
(2, '', 'abbrevLocaleKey', 'default.groups.abbrev.manager', 'string'),
(2, '', 'nameLocaleKey', 'default.groups.name.manager', 'string'),
(2, 'id_ID', 'abbrev', 'JM', 'string'),
(2, 'id_ID', 'name', 'Manajer Jurnal', 'string'),
(3, '', 'abbrevLocaleKey', 'default.groups.abbrev.editor', 'string'),
(3, '', 'nameLocaleKey', 'default.groups.name.editor', 'string'),
(3, 'id_ID', 'abbrev', 'JE', 'string'),
(3, 'id_ID', 'name', 'Editor Jurnal', 'string'),
(4, '', 'abbrevLocaleKey', 'default.groups.abbrev.productionEditor', 'string'),
(4, '', 'nameLocaleKey', 'default.groups.name.productionEditor', 'string'),
(4, 'id_ID', 'abbrev', 'ProdE', 'string'),
(4, 'id_ID', 'name', 'Editor produksi', 'string'),
(5, '', 'abbrevLocaleKey', 'default.groups.abbrev.sectionEditor', 'string'),
(5, '', 'nameLocaleKey', 'default.groups.name.sectionEditor', 'string'),
(5, 'id_ID', 'abbrev', 'EdBag', 'string'),
(5, 'id_ID', 'name', 'Editor Bagian', 'string'),
(6, '', 'abbrevLocaleKey', 'default.groups.abbrev.guestEditor', 'string'),
(6, '', 'nameLocaleKey', 'default.groups.name.guestEditor', 'string'),
(6, 'id_ID', 'abbrev', 'GE', 'string'),
(6, 'id_ID', 'name', 'Editor Tamu', 'string'),
(7, '', 'abbrevLocaleKey', 'default.groups.abbrev.copyeditor', 'string'),
(7, '', 'nameLocaleKey', 'default.groups.name.copyeditor', 'string'),
(7, 'id_ID', 'abbrev', 'CE', 'string'),
(7, 'id_ID', 'name', 'Copyeditor', 'string'),
(8, '', 'abbrevLocaleKey', 'default.groups.abbrev.designer', 'string'),
(8, '', 'nameLocaleKey', 'default.groups.name.designer', 'string'),
(8, 'id_ID', 'abbrev', 'Desain', 'string'),
(8, 'id_ID', 'name', 'Desainer', 'string'),
(9, '', 'abbrevLocaleKey', 'default.groups.abbrev.funding', 'string'),
(9, '', 'nameLocaleKey', 'default.groups.name.funding', 'string'),
(9, 'id_ID', 'abbrev', 'FC', 'string'),
(9, 'id_ID', 'name', 'Koordinator pendanaan', 'string'),
(10, '', 'abbrevLocaleKey', 'default.groups.abbrev.indexer', 'string'),
(10, '', 'nameLocaleKey', 'default.groups.name.indexer', 'string'),
(10, 'id_ID', 'abbrev', 'IND', 'string'),
(10, 'id_ID', 'name', 'Pengindeks', 'string'),
(11, '', 'abbrevLocaleKey', 'default.groups.abbrev.layoutEditor', 'string'),
(11, '', 'nameLocaleKey', 'default.groups.name.layoutEditor', 'string'),
(11, 'id_ID', 'abbrev', 'LE', 'string'),
(11, 'id_ID', 'name', 'Editor Tata Letak', 'string'),
(12, '', 'abbrevLocaleKey', 'default.groups.abbrev.marketing', 'string'),
(12, '', 'nameLocaleKey', 'default.groups.name.marketing', 'string'),
(12, 'id_ID', 'abbrev', 'MS', 'string'),
(12, 'id_ID', 'name', 'Koordinator penjualan dan pemasaran', 'string'),
(13, '', 'abbrevLocaleKey', 'default.groups.abbrev.proofreader', 'string'),
(13, '', 'nameLocaleKey', 'default.groups.name.proofreader', 'string'),
(13, 'id_ID', 'abbrev', 'PR', 'string'),
(13, 'id_ID', 'name', 'Proofreader', 'string'),
(14, '', 'abbrevLocaleKey', 'default.groups.abbrev.author', 'string'),
(14, '', 'nameLocaleKey', 'default.groups.name.author', 'string'),
(14, 'id_ID', 'abbrev', 'AU', 'string'),
(14, 'id_ID', 'name', 'Penulis', 'string'),
(15, '', 'abbrevLocaleKey', 'default.groups.abbrev.translator', 'string'),
(15, '', 'nameLocaleKey', 'default.groups.name.translator', 'string'),
(15, 'id_ID', 'abbrev', 'Trans', 'string'),
(15, 'id_ID', 'name', 'Penerjemah', 'string'),
(16, '', 'abbrevLocaleKey', 'default.groups.abbrev.externalReviewer', 'string'),
(16, '', 'nameLocaleKey', 'default.groups.name.externalReviewer', 'string'),
(16, 'id_ID', 'abbrev', 'R', 'string'),
(16, 'id_ID', 'name', 'Mitra Bestari', 'string'),
(17, '', 'abbrevLocaleKey', 'default.groups.abbrev.reader', 'string'),
(17, '', 'nameLocaleKey', 'default.groups.name.reader', 'string'),
(17, 'id_ID', 'abbrev', 'Baca', 'string'),
(17, 'id_ID', 'name', 'Pembaca', 'string'),
(18, '', 'abbrevLocaleKey', 'default.groups.abbrev.subscriptionManager', 'string'),
(18, '', 'nameLocaleKey', 'default.groups.name.subscriptionManager', 'string'),
(18, 'id_ID', 'abbrev', 'MReg', 'string'),
(18, 'id_ID', 'name', 'Manajer Langganan', 'string');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_group_stage`
--

CREATE TABLE `user_group_stage` (
  `context_id` bigint(20) NOT NULL,
  `user_group_id` bigint(20) NOT NULL,
  `stage_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data untuk tabel `user_group_stage`
--

INSERT INTO `user_group_stage` (`context_id`, `user_group_id`, `stage_id`) VALUES
(1, 3, 1),
(1, 3, 3),
(1, 3, 4),
(1, 3, 5),
(1, 4, 4),
(1, 4, 5),
(1, 5, 1),
(1, 5, 3),
(1, 5, 4),
(1, 5, 5),
(1, 6, 1),
(1, 6, 3),
(1, 6, 4),
(1, 6, 5),
(1, 7, 4),
(1, 8, 5),
(1, 9, 1),
(1, 9, 3),
(1, 10, 5),
(1, 11, 5),
(1, 12, 4),
(1, 13, 5),
(1, 14, 1),
(1, 14, 3),
(1, 14, 4),
(1, 14, 5),
(1, 15, 1),
(1, 15, 3),
(1, 15, 4),
(1, 15, 5),
(1, 16, 3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_interests`
--

CREATE TABLE `user_interests` (
  `user_id` bigint(20) NOT NULL,
  `controlled_vocab_entry_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_settings`
--

CREATE TABLE `user_settings` (
  `user_id` bigint(20) NOT NULL,
  `locale` varchar(14) NOT NULL DEFAULT '',
  `setting_name` varchar(255) NOT NULL,
  `assoc_type` bigint(20) NOT NULL DEFAULT 0,
  `assoc_id` bigint(20) NOT NULL DEFAULT 0,
  `setting_value` text DEFAULT NULL,
  `setting_type` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data untuk tabel `user_settings`
--

INSERT INTO `user_settings` (`user_id`, `locale`, `setting_name`, `assoc_type`, `assoc_id`, `setting_value`, `setting_type`) VALUES
(1, 'id_ID', 'familyName', 0, 0, 'adminojs', 'string'),
(1, 'id_ID', 'givenName', 0, 0, 'adminojs', 'string'),
(2, '', 'orcid', 0, 0, '', 'string'),
(2, 'id_ID', 'affiliation', 0, 0, 'pm', 'string'),
(2, 'id_ID', 'biography', 0, 0, '', 'string'),
(2, 'id_ID', 'familyName', 0, 0, '', 'string'),
(2, 'id_ID', 'givenName', 0, 0, 'irham', 'string'),
(2, 'id_ID', 'preferredPublicName', 0, 0, '', 'string'),
(2, 'id_ID', 'signature', 0, 0, '', 'string');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_user_groups`
--

CREATE TABLE `user_user_groups` (
  `user_group_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data untuk tabel `user_user_groups`
--

INSERT INTO `user_user_groups` (`user_group_id`, `user_id`) VALUES
(1, 1),
(2, 1),
(2, 2),
(3, 2),
(6, 2),
(14, 1),
(15, 2),
(17, 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `versions`
--

CREATE TABLE `versions` (
  `major` int(11) NOT NULL DEFAULT 0 COMMENT 'Major component of version number, e.g. the 2 in OJS 2.3.8-0',
  `minor` int(11) NOT NULL DEFAULT 0 COMMENT 'Minor component of version number, e.g. the 3 in OJS 2.3.8-0',
  `revision` int(11) NOT NULL DEFAULT 0 COMMENT 'Revision component of version number, e.g. the 8 in OJS 2.3.8-0',
  `build` int(11) NOT NULL DEFAULT 0 COMMENT 'Build component of version number, e.g. the 0 in OJS 2.3.8-0',
  `date_installed` datetime NOT NULL,
  `current` smallint(6) NOT NULL DEFAULT 0 COMMENT '1 iff the version entry being described is currently active. This permits the table to store past installation history for forensic purposes.',
  `product_type` varchar(30) DEFAULT NULL COMMENT 'Describes the type of product this row describes, e.g. "plugins.generic" (for a generic plugin) or "core" for the application itelf',
  `product` varchar(30) DEFAULT NULL COMMENT 'Uniquely identifies the product this version row describes, e.g. "ojs2" for OJS 2.x, "languageToggle" for the language toggle block plugin, etc.',
  `product_class_name` varchar(80) DEFAULT NULL COMMENT 'Specifies the class name associated with this product, for plugins, or the empty string where not applicable.',
  `lazy_load` smallint(6) NOT NULL DEFAULT 0 COMMENT '1 iff the row describes a lazy-load plugin; 0 otherwise',
  `sitewide` smallint(6) NOT NULL DEFAULT 0 COMMENT '1 iff the row describes a site-wide plugin; 0 otherwise'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data untuk tabel `versions`
--

INSERT INTO `versions` (`major`, `minor`, `revision`, `build`, `date_installed`, `current`, `product_type`, `product`, `product_class_name`, `lazy_load`, `sitewide`) VALUES
(1, 0, 0, 0, '2024-09-26 10:10:37', 1, 'plugins.metadata', 'dc11', '', 0, 0),
(1, 0, 1, 0, '2024-09-26 10:10:37', 1, 'plugins.blocks', 'browse', 'BrowseBlockPlugin', 1, 0),
(1, 0, 0, 0, '2024-09-26 10:10:37', 1, 'plugins.blocks', 'developedBy', 'DevelopedByBlockPlugin', 1, 0),
(1, 0, 0, 0, '2024-09-26 10:10:37', 1, 'plugins.blocks', 'information', 'InformationBlockPlugin', 1, 0),
(1, 0, 0, 0, '2024-09-26 10:10:37', 1, 'plugins.blocks', 'languageToggle', 'LanguageToggleBlockPlugin', 1, 0),
(1, 0, 0, 0, '2024-09-26 10:10:37', 1, 'plugins.blocks', 'makeSubmission', 'MakeSubmissionBlockPlugin', 1, 0),
(1, 1, 0, 0, '2024-09-26 10:10:37', 1, 'plugins.blocks', 'subscription', 'SubscriptionBlockPlugin', 1, 0),
(1, 0, 0, 0, '2024-09-26 10:10:37', 1, 'plugins.gateways', 'resolver', '', 0, 0),
(1, 2, 0, 0, '2024-09-26 10:10:37', 1, 'plugins.generic', 'acron', 'AcronPlugin', 1, 1),
(1, 1, 3, 14, '2024-09-26 10:10:37', 1, 'plugins.generic', 'orcidProfile', 'OrcidProfilePlugin', 1, 0),
(1, 0, 0, 0, '2024-09-26 10:10:37', 1, 'plugins.generic', 'usageStats', 'UsageStatsPlugin', 0, 1),
(1, 0, 0, 0, '2024-09-26 10:10:37', 1, 'plugins.generic', 'usageEvent', '', 0, 0),
(1, 0, 0, 0, '2024-09-26 10:10:37', 1, 'plugins.generic', 'tinymce', 'TinyMCEPlugin', 1, 0),
(1, 2, 0, 0, '2024-09-26 10:10:37', 1, 'plugins.generic', 'staticPages', 'StaticPagesPlugin', 1, 0),
(1, 0, 0, 0, '2024-09-26 10:10:37', 1, 'plugins.generic', 'recommendBySimilarity', 'RecommendBySimilarityPlugin', 1, 1),
(1, 0, 0, 0, '2024-09-26 10:10:37', 1, 'plugins.generic', 'recommendByAuthor', 'RecommendByAuthorPlugin', 1, 1),
(1, 0, 1, 0, '2024-09-26 10:10:37', 1, 'plugins.generic', 'pdfJsViewer', 'PdfJsViewerPlugin', 1, 0),
(1, 0, 1, 0, '2024-09-26 10:10:37', 1, 'plugins.generic', 'lensGalley', 'LensGalleyPlugin', 1, 0),
(1, 0, 0, 0, '2024-09-26 10:10:37', 1, 'plugins.generic', 'announcementFeed', 'AnnouncementFeedPlugin', 1, 0),
(1, 0, 0, 0, '2024-09-26 10:10:37', 1, 'plugins.generic', 'htmlArticleGalley', 'HtmlArticleGalleyPlugin', 1, 0),
(1, 1, 0, 0, '2024-09-26 10:10:37', 1, 'plugins.generic', 'googleScholar', 'GoogleScholarPlugin', 1, 0),
(1, 0, 0, 0, '2024-09-26 10:10:37', 1, 'plugins.generic', 'googleAnalytics', 'GoogleAnalyticsPlugin', 1, 0),
(1, 0, 0, 0, '2024-09-26 10:10:37', 1, 'plugins.generic', 'dublinCoreMeta', 'DublinCoreMetaPlugin', 1, 0),
(1, 0, 0, 0, '2024-09-26 10:10:37', 1, 'plugins.generic', 'driver', 'DRIVERPlugin', 1, 0),
(1, 2, 0, 0, '2024-09-26 10:10:37', 1, 'plugins.generic', 'customBlockManager', 'CustomBlockManagerPlugin', 1, 0),
(0, 1, 0, 0, '2024-09-26 10:10:37', 1, 'plugins.generic', 'citationStyleLanguage', 'CitationStyleLanguagePlugin', 1, 0),
(1, 0, 0, 0, '2024-09-26 10:10:37', 1, 'plugins.generic', 'webFeed', 'WebFeedPlugin', 1, 0),
(2, 1, 0, 0, '2024-09-26 10:10:37', 1, 'plugins.importexport', 'crossref', '', 0, 0),
(2, 0, 0, 0, '2024-09-26 10:10:37', 1, 'plugins.importexport', 'datacite', '', 0, 0),
(1, 1, 0, 0, '2024-09-26 10:10:37', 1, 'plugins.importexport', 'doaj', '', 0, 0),
(1, 0, 0, 0, '2024-09-26 10:10:37', 1, 'plugins.importexport', 'native', '', 0, 0),
(1, 0, 0, 0, '2024-09-26 10:10:37', 1, 'plugins.importexport', 'pubmed', '', 0, 0),
(1, 0, 0, 0, '2024-09-26 10:10:37', 1, 'plugins.importexport', 'users', '', 0, 0),
(1, 0, 0, 0, '2024-09-26 10:10:37', 1, 'plugins.oaiMetadataFormats', 'dc', '', 0, 0),
(1, 0, 0, 0, '2024-09-26 10:10:37', 1, 'plugins.oaiMetadataFormats', 'marc', '', 0, 0),
(1, 0, 0, 0, '2024-09-26 10:10:37', 1, 'plugins.oaiMetadataFormats', 'marcxml', '', 0, 0),
(1, 0, 0, 0, '2024-09-26 10:10:37', 1, 'plugins.oaiMetadataFormats', 'rfc1807', '', 0, 0),
(1, 0, 0, 0, '2024-09-26 10:10:37', 1, 'plugins.paymethod', 'manual', '', 0, 0),
(1, 0, 0, 0, '2024-09-26 10:10:37', 1, 'plugins.paymethod', 'paypal', '', 0, 0),
(1, 0, 0, 0, '2024-09-26 10:10:37', 1, 'plugins.pubIds', 'doi', 'DOIPubIdPlugin', 1, 0),
(1, 0, 0, 0, '2024-09-26 10:10:38', 1, 'plugins.pubIds', 'urn', 'URNPubIdPlugin', 1, 0),
(1, 0, 0, 0, '2024-09-26 10:10:38', 1, 'plugins.reports', 'articles', '', 0, 0),
(1, 1, 0, 0, '2024-09-26 10:10:38', 1, 'plugins.reports', 'counterReport', '', 0, 0),
(2, 0, 0, 0, '2024-09-26 10:10:38', 1, 'plugins.reports', 'reviewReport', '', 0, 0),
(1, 0, 0, 0, '2024-09-26 10:10:38', 1, 'plugins.reports', 'subscriptions', '', 0, 0),
(1, 0, 0, 0, '2024-09-26 10:10:38', 1, 'plugins.reports', 'views', '', 0, 0),
(1, 0, 0, 0, '2024-09-26 10:10:38', 1, 'plugins.themes', 'default', 'DefaultThemePlugin', 1, 0),
(3, 3, 0, 19, '2024-09-26 10:10:32', 1, 'core', 'ojs2', '', 0, 1),
(3, 2, 0, 6, '2024-09-26 16:27:07', 1, 'plugins.themes', 'bootstrap3', 'BootstrapThreeThemePlugin', 1, 0),
(1, 0, 3, 1, '2024-09-27 05:12:27', 1, 'plugins.themes', 'defaultManuscript', 'DefaultManuscriptChildThemePlugin', 1, 0),
(3, 3, 0, 7, '2024-09-27 11:03:11', 1, 'plugins.themes', 'academic_free', 'AcademicFreeThemePlugin', 0, 0),
(1, 0, 0, 0, '2024-09-27 11:03:11', 1, 'plugins.themes', 'basic', 'basicThemePlugin', 0, 0),
(1, 1, 0, 0, '2024-09-27 11:03:11', 1, 'plugins.themes', 'classic', 'ClassicThemePlugin', 1, 0),
(1, 0, 0, 1, '2024-09-27 11:03:11', 1, 'plugins.themes', 'material', 'MaterialThemePlugin', 1, 0),
(1, 1, 0, 0, '2024-09-27 11:03:11', 1, 'plugins.themes', 'pragma', 'PragmaThemePlugin', 1, 0),
(1, 0, 6, 2, '2024-09-28 12:03:15', 1, 'plugins.importexport', 'quickSubmit', '', 0, 0);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `access_keys`
--
ALTER TABLE `access_keys`
  ADD PRIMARY KEY (`access_key_id`),
  ADD KEY `access_keys_hash` (`key_hash`,`user_id`,`context`);

--
-- Indeks untuk tabel `announcements`
--
ALTER TABLE `announcements`
  ADD PRIMARY KEY (`announcement_id`),
  ADD KEY `announcements_assoc` (`assoc_type`,`assoc_id`);

--
-- Indeks untuk tabel `announcement_settings`
--
ALTER TABLE `announcement_settings`
  ADD UNIQUE KEY `announcement_settings_pkey` (`announcement_id`,`locale`,`setting_name`),
  ADD KEY `announcement_settings_announcement_id` (`announcement_id`);

--
-- Indeks untuk tabel `announcement_types`
--
ALTER TABLE `announcement_types`
  ADD PRIMARY KEY (`type_id`),
  ADD KEY `announcement_types_assoc` (`assoc_type`,`assoc_id`);

--
-- Indeks untuk tabel `announcement_type_settings`
--
ALTER TABLE `announcement_type_settings`
  ADD UNIQUE KEY `announcement_type_settings_pkey` (`type_id`,`locale`,`setting_name`),
  ADD KEY `announcement_type_settings_type_id` (`type_id`);

--
-- Indeks untuk tabel `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`author_id`),
  ADD KEY `authors_publication_id` (`publication_id`);

--
-- Indeks untuk tabel `author_settings`
--
ALTER TABLE `author_settings`
  ADD UNIQUE KEY `author_settings_pkey` (`author_id`,`locale`,`setting_name`),
  ADD KEY `author_settings_author_id` (`author_id`);

--
-- Indeks untuk tabel `auth_sources`
--
ALTER TABLE `auth_sources`
  ADD PRIMARY KEY (`auth_id`);

--
-- Indeks untuk tabel `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`category_id`),
  ADD UNIQUE KEY `category_path` (`context_id`,`path`),
  ADD KEY `category_context_id` (`context_id`,`parent_id`);

--
-- Indeks untuk tabel `category_settings`
--
ALTER TABLE `category_settings`
  ADD UNIQUE KEY `category_settings_pkey` (`category_id`,`locale`,`setting_name`);

--
-- Indeks untuk tabel `citations`
--
ALTER TABLE `citations`
  ADD PRIMARY KEY (`citation_id`),
  ADD UNIQUE KEY `citations_publication_seq` (`publication_id`,`seq`),
  ADD KEY `citations_publication` (`publication_id`);

--
-- Indeks untuk tabel `citation_settings`
--
ALTER TABLE `citation_settings`
  ADD UNIQUE KEY `citation_settings_pkey` (`citation_id`,`locale`,`setting_name`),
  ADD KEY `citation_settings_citation_id` (`citation_id`);

--
-- Indeks untuk tabel `completed_payments`
--
ALTER TABLE `completed_payments`
  ADD PRIMARY KEY (`completed_payment_id`);

--
-- Indeks untuk tabel `controlled_vocabs`
--
ALTER TABLE `controlled_vocabs`
  ADD PRIMARY KEY (`controlled_vocab_id`),
  ADD UNIQUE KEY `controlled_vocab_symbolic` (`symbolic`,`assoc_type`,`assoc_id`);

--
-- Indeks untuk tabel `controlled_vocab_entries`
--
ALTER TABLE `controlled_vocab_entries`
  ADD PRIMARY KEY (`controlled_vocab_entry_id`),
  ADD KEY `controlled_vocab_entries_cv_id` (`controlled_vocab_id`,`seq`);

--
-- Indeks untuk tabel `controlled_vocab_entry_settings`
--
ALTER TABLE `controlled_vocab_entry_settings`
  ADD UNIQUE KEY `c_v_e_s_pkey` (`controlled_vocab_entry_id`,`locale`,`setting_name`),
  ADD KEY `c_v_e_s_entry_id` (`controlled_vocab_entry_id`);

--
-- Indeks untuk tabel `custom_issue_orders`
--
ALTER TABLE `custom_issue_orders`
  ADD UNIQUE KEY `custom_issue_orders_pkey` (`issue_id`);

--
-- Indeks untuk tabel `custom_section_orders`
--
ALTER TABLE `custom_section_orders`
  ADD UNIQUE KEY `custom_section_orders_pkey` (`issue_id`,`section_id`);

--
-- Indeks untuk tabel `data_object_tombstones`
--
ALTER TABLE `data_object_tombstones`
  ADD PRIMARY KEY (`tombstone_id`),
  ADD KEY `data_object_tombstones_data_object_id` (`data_object_id`);

--
-- Indeks untuk tabel `data_object_tombstone_oai_set_objects`
--
ALTER TABLE `data_object_tombstone_oai_set_objects`
  ADD PRIMARY KEY (`object_id`),
  ADD KEY `data_object_tombstone_oai_set_objects_tombstone_id` (`tombstone_id`);

--
-- Indeks untuk tabel `data_object_tombstone_settings`
--
ALTER TABLE `data_object_tombstone_settings`
  ADD UNIQUE KEY `data_object_tombstone_settings_pkey` (`tombstone_id`,`locale`,`setting_name`),
  ADD KEY `data_object_tombstone_settings_tombstone_id` (`tombstone_id`);

--
-- Indeks untuk tabel `edit_decisions`
--
ALTER TABLE `edit_decisions`
  ADD PRIMARY KEY (`edit_decision_id`),
  ADD KEY `edit_decisions_submission_id` (`submission_id`),
  ADD KEY `edit_decisions_editor_id` (`editor_id`);

--
-- Indeks untuk tabel `email_log`
--
ALTER TABLE `email_log`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `email_log_assoc` (`assoc_type`,`assoc_id`);

--
-- Indeks untuk tabel `email_log_users`
--
ALTER TABLE `email_log_users`
  ADD UNIQUE KEY `email_log_user_id` (`email_log_id`,`user_id`);

--
-- Indeks untuk tabel `email_templates`
--
ALTER TABLE `email_templates`
  ADD PRIMARY KEY (`email_id`),
  ADD UNIQUE KEY `email_templates_email_key` (`email_key`,`context_id`);

--
-- Indeks untuk tabel `email_templates_default`
--
ALTER TABLE `email_templates_default`
  ADD PRIMARY KEY (`email_id`),
  ADD KEY `email_templates_default_email_key` (`email_key`);

--
-- Indeks untuk tabel `email_templates_default_data`
--
ALTER TABLE `email_templates_default_data`
  ADD UNIQUE KEY `email_templates_default_data_pkey` (`email_key`,`locale`);

--
-- Indeks untuk tabel `email_templates_settings`
--
ALTER TABLE `email_templates_settings`
  ADD UNIQUE KEY `email_settings_pkey` (`email_id`,`locale`,`setting_name`),
  ADD KEY `email_settings_email_id` (`email_id`);

--
-- Indeks untuk tabel `event_log`
--
ALTER TABLE `event_log`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `event_log_assoc` (`assoc_type`,`assoc_id`);

--
-- Indeks untuk tabel `event_log_settings`
--
ALTER TABLE `event_log_settings`
  ADD UNIQUE KEY `event_log_settings_pkey` (`log_id`,`setting_name`),
  ADD KEY `event_log_settings_log_id` (`log_id`),
  ADD KEY `event_log_settings_name_value` (`setting_name`(50),`setting_value`(150));

--
-- Indeks untuk tabel `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`file_id`);

--
-- Indeks untuk tabel `filters`
--
ALTER TABLE `filters`
  ADD PRIMARY KEY (`filter_id`);

--
-- Indeks untuk tabel `filter_groups`
--
ALTER TABLE `filter_groups`
  ADD PRIMARY KEY (`filter_group_id`),
  ADD UNIQUE KEY `filter_groups_symbolic` (`symbolic`);

--
-- Indeks untuk tabel `filter_settings`
--
ALTER TABLE `filter_settings`
  ADD UNIQUE KEY `filter_settings_pkey` (`filter_id`,`locale`,`setting_name`),
  ADD KEY `filter_settings_id` (`filter_id`);

--
-- Indeks untuk tabel `genres`
--
ALTER TABLE `genres`
  ADD PRIMARY KEY (`genre_id`);

--
-- Indeks untuk tabel `genre_settings`
--
ALTER TABLE `genre_settings`
  ADD UNIQUE KEY `genre_settings_pkey` (`genre_id`,`locale`,`setting_name`),
  ADD KEY `genre_settings_genre_id` (`genre_id`);

--
-- Indeks untuk tabel `institutional_subscriptions`
--
ALTER TABLE `institutional_subscriptions`
  ADD PRIMARY KEY (`institutional_subscription_id`),
  ADD KEY `institutional_subscriptions_subscription_id` (`subscription_id`),
  ADD KEY `institutional_subscriptions_domain` (`domain`);

--
-- Indeks untuk tabel `institutional_subscription_ip`
--
ALTER TABLE `institutional_subscription_ip`
  ADD PRIMARY KEY (`institutional_subscription_ip_id`),
  ADD KEY `institutional_subscription_ip_subscription_id` (`subscription_id`),
  ADD KEY `institutional_subscription_ip_start` (`ip_start`),
  ADD KEY `institutional_subscription_ip_end` (`ip_end`);

--
-- Indeks untuk tabel `issues`
--
ALTER TABLE `issues`
  ADD PRIMARY KEY (`issue_id`),
  ADD KEY `issues_journal_id` (`journal_id`),
  ADD KEY `issues_url_path` (`url_path`);

--
-- Indeks untuk tabel `issue_files`
--
ALTER TABLE `issue_files`
  ADD PRIMARY KEY (`file_id`),
  ADD KEY `issue_files_issue_id` (`issue_id`);

--
-- Indeks untuk tabel `issue_galleys`
--
ALTER TABLE `issue_galleys`
  ADD PRIMARY KEY (`galley_id`),
  ADD KEY `issue_galleys_issue_id` (`issue_id`),
  ADD KEY `issue_galleys_url_path` (`url_path`);

--
-- Indeks untuk tabel `issue_galley_settings`
--
ALTER TABLE `issue_galley_settings`
  ADD UNIQUE KEY `issue_galley_settings_pkey` (`galley_id`,`locale`,`setting_name`),
  ADD KEY `issue_galley_settings_galley_id` (`galley_id`);

--
-- Indeks untuk tabel `issue_settings`
--
ALTER TABLE `issue_settings`
  ADD UNIQUE KEY `issue_settings_pkey` (`issue_id`,`locale`,`setting_name`),
  ADD KEY `issue_settings_issue_id` (`issue_id`),
  ADD KEY `issue_settings_name_value` (`setting_name`(50),`setting_value`(150));

--
-- Indeks untuk tabel `item_views`
--
ALTER TABLE `item_views`
  ADD UNIQUE KEY `item_views_pkey` (`assoc_type`,`assoc_id`,`user_id`);

--
-- Indeks untuk tabel `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_reserved_at_index` (`queue`,`reserved_at`);

--
-- Indeks untuk tabel `journals`
--
ALTER TABLE `journals`
  ADD PRIMARY KEY (`journal_id`),
  ADD UNIQUE KEY `journals_path` (`path`);

--
-- Indeks untuk tabel `journal_settings`
--
ALTER TABLE `journal_settings`
  ADD UNIQUE KEY `journal_settings_pkey` (`journal_id`,`locale`,`setting_name`),
  ADD KEY `journal_settings_journal_id` (`journal_id`);

--
-- Indeks untuk tabel `library_files`
--
ALTER TABLE `library_files`
  ADD PRIMARY KEY (`file_id`),
  ADD KEY `library_files_context_id` (`context_id`),
  ADD KEY `library_files_submission_id` (`submission_id`);

--
-- Indeks untuk tabel `library_file_settings`
--
ALTER TABLE `library_file_settings`
  ADD UNIQUE KEY `library_file_settings_pkey` (`file_id`,`locale`,`setting_name`),
  ADD KEY `library_file_settings_id` (`file_id`);

--
-- Indeks untuk tabel `metadata_descriptions`
--
ALTER TABLE `metadata_descriptions`
  ADD PRIMARY KEY (`metadata_description_id`),
  ADD KEY `metadata_descriptions_assoc` (`assoc_type`,`assoc_id`);

--
-- Indeks untuk tabel `metadata_description_settings`
--
ALTER TABLE `metadata_description_settings`
  ADD UNIQUE KEY `metadata_descripton_settings_pkey` (`metadata_description_id`,`locale`,`setting_name`),
  ADD KEY `metadata_description_settings_id` (`metadata_description_id`);

--
-- Indeks untuk tabel `metrics`
--
ALTER TABLE `metrics`
  ADD KEY `metrics_load_id` (`load_id`),
  ADD KEY `metrics_metric_type_context_id` (`metric_type`,`context_id`),
  ADD KEY `metrics_metric_type_submission_id_assoc_type` (`metric_type`,`submission_id`,`assoc_type`),
  ADD KEY `metrics_metric_type_submission_id_assoc` (`metric_type`,`context_id`,`assoc_type`,`assoc_id`);

--
-- Indeks untuk tabel `navigation_menus`
--
ALTER TABLE `navigation_menus`
  ADD PRIMARY KEY (`navigation_menu_id`);

--
-- Indeks untuk tabel `navigation_menu_items`
--
ALTER TABLE `navigation_menu_items`
  ADD PRIMARY KEY (`navigation_menu_item_id`);

--
-- Indeks untuk tabel `navigation_menu_item_assignments`
--
ALTER TABLE `navigation_menu_item_assignments`
  ADD PRIMARY KEY (`navigation_menu_item_assignment_id`);

--
-- Indeks untuk tabel `navigation_menu_item_assignment_settings`
--
ALTER TABLE `navigation_menu_item_assignment_settings`
  ADD UNIQUE KEY `navigation_menu_item_assignment_settings_pkey` (`navigation_menu_item_assignment_id`,`locale`,`setting_name`),
  ADD KEY `assignment_settings_navigation_menu_item_assignment_id` (`navigation_menu_item_assignment_id`);

--
-- Indeks untuk tabel `navigation_menu_item_settings`
--
ALTER TABLE `navigation_menu_item_settings`
  ADD UNIQUE KEY `navigation_menu_item_settings_pkey` (`navigation_menu_item_id`,`locale`,`setting_name`),
  ADD KEY `navigation_menu_item_settings_navigation_menu_id` (`navigation_menu_item_id`);

--
-- Indeks untuk tabel `notes`
--
ALTER TABLE `notes`
  ADD PRIMARY KEY (`note_id`),
  ADD KEY `notes_assoc` (`assoc_type`,`assoc_id`);

--
-- Indeks untuk tabel `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`notification_id`),
  ADD KEY `notifications_context_id_user_id` (`context_id`,`user_id`,`level`),
  ADD KEY `notifications_context_id` (`context_id`,`level`),
  ADD KEY `notifications_assoc` (`assoc_type`,`assoc_id`),
  ADD KEY `notifications_user_id_level` (`user_id`,`level`);

--
-- Indeks untuk tabel `notification_mail_list`
--
ALTER TABLE `notification_mail_list`
  ADD PRIMARY KEY (`notification_mail_list_id`),
  ADD UNIQUE KEY `notification_mail_list_email_context` (`email`,`context`);

--
-- Indeks untuk tabel `notification_settings`
--
ALTER TABLE `notification_settings`
  ADD UNIQUE KEY `notification_settings_pkey` (`notification_id`,`locale`,`setting_name`);

--
-- Indeks untuk tabel `notification_subscription_settings`
--
ALTER TABLE `notification_subscription_settings`
  ADD PRIMARY KEY (`setting_id`);

--
-- Indeks untuk tabel `oai_resumption_tokens`
--
ALTER TABLE `oai_resumption_tokens`
  ADD UNIQUE KEY `oai_resumption_tokens_pkey` (`token`);

--
-- Indeks untuk tabel `plugin_settings`
--
ALTER TABLE `plugin_settings`
  ADD UNIQUE KEY `plugin_settings_pkey` (`plugin_name`,`context_id`,`setting_name`),
  ADD KEY `plugin_settings_plugin_name` (`plugin_name`);

--
-- Indeks untuk tabel `publications`
--
ALTER TABLE `publications`
  ADD PRIMARY KEY (`publication_id`),
  ADD KEY `publications_submission_id` (`submission_id`),
  ADD KEY `publications_section_id` (`section_id`),
  ADD KEY `publications_url_path` (`url_path`);

--
-- Indeks untuk tabel `publication_categories`
--
ALTER TABLE `publication_categories`
  ADD UNIQUE KEY `publication_categories_id` (`publication_id`,`category_id`);

--
-- Indeks untuk tabel `publication_galleys`
--
ALTER TABLE `publication_galleys`
  ADD PRIMARY KEY (`galley_id`),
  ADD KEY `publication_galleys_publication_id` (`publication_id`),
  ADD KEY `publication_galleys_url_path` (`url_path`),
  ADD KEY `publication_galleys_submission_file_id_foreign` (`submission_file_id`);

--
-- Indeks untuk tabel `publication_galley_settings`
--
ALTER TABLE `publication_galley_settings`
  ADD UNIQUE KEY `publication_galley_settings_pkey` (`galley_id`,`locale`,`setting_name`),
  ADD KEY `publication_galley_settings_galley_id` (`galley_id`),
  ADD KEY `publication_galley_settings_name_value` (`setting_name`(50),`setting_value`(150));

--
-- Indeks untuk tabel `publication_settings`
--
ALTER TABLE `publication_settings`
  ADD UNIQUE KEY `publication_settings_pkey` (`publication_id`,`locale`,`setting_name`),
  ADD KEY `publication_settings_publication_id` (`publication_id`),
  ADD KEY `publication_settings_name_value` (`setting_name`(50),`setting_value`(150));

--
-- Indeks untuk tabel `queries`
--
ALTER TABLE `queries`
  ADD PRIMARY KEY (`query_id`),
  ADD KEY `queries_assoc_id` (`assoc_type`,`assoc_id`);

--
-- Indeks untuk tabel `query_participants`
--
ALTER TABLE `query_participants`
  ADD UNIQUE KEY `query_participants_pkey` (`query_id`,`user_id`);

--
-- Indeks untuk tabel `queued_payments`
--
ALTER TABLE `queued_payments`
  ADD PRIMARY KEY (`queued_payment_id`);

--
-- Indeks untuk tabel `review_assignments`
--
ALTER TABLE `review_assignments`
  ADD PRIMARY KEY (`review_id`),
  ADD KEY `review_assignments_submission_id` (`submission_id`),
  ADD KEY `review_assignments_reviewer_id` (`reviewer_id`),
  ADD KEY `review_assignments_form_id` (`review_form_id`),
  ADD KEY `review_assignments_reviewer_review` (`reviewer_id`,`review_id`);

--
-- Indeks untuk tabel `review_files`
--
ALTER TABLE `review_files`
  ADD UNIQUE KEY `review_files_pkey` (`review_id`,`submission_file_id`),
  ADD KEY `review_files_review_id` (`review_id`),
  ADD KEY `review_files_submission_file_id_foreign` (`submission_file_id`);

--
-- Indeks untuk tabel `review_forms`
--
ALTER TABLE `review_forms`
  ADD PRIMARY KEY (`review_form_id`);

--
-- Indeks untuk tabel `review_form_elements`
--
ALTER TABLE `review_form_elements`
  ADD PRIMARY KEY (`review_form_element_id`),
  ADD KEY `review_form_elements_review_form_id` (`review_form_id`);

--
-- Indeks untuk tabel `review_form_element_settings`
--
ALTER TABLE `review_form_element_settings`
  ADD UNIQUE KEY `review_form_element_settings_pkey` (`review_form_element_id`,`locale`,`setting_name`),
  ADD KEY `review_form_element_settings_review_form_element_id` (`review_form_element_id`);

--
-- Indeks untuk tabel `review_form_responses`
--
ALTER TABLE `review_form_responses`
  ADD KEY `review_form_responses_pkey` (`review_form_element_id`,`review_id`);

--
-- Indeks untuk tabel `review_form_settings`
--
ALTER TABLE `review_form_settings`
  ADD UNIQUE KEY `review_form_settings_pkey` (`review_form_id`,`locale`,`setting_name`),
  ADD KEY `review_form_settings_review_form_id` (`review_form_id`);

--
-- Indeks untuk tabel `review_rounds`
--
ALTER TABLE `review_rounds`
  ADD PRIMARY KEY (`review_round_id`),
  ADD UNIQUE KEY `review_rounds_submission_id_stage_id_round_pkey` (`submission_id`,`stage_id`,`round`),
  ADD KEY `review_rounds_submission_id` (`submission_id`);

--
-- Indeks untuk tabel `review_round_files`
--
ALTER TABLE `review_round_files`
  ADD UNIQUE KEY `review_round_files_pkey` (`submission_id`,`review_round_id`,`submission_file_id`),
  ADD KEY `review_round_files_submission_id` (`submission_id`),
  ADD KEY `review_round_files_submission_file_id_foreign` (`submission_file_id`);

--
-- Indeks untuk tabel `scheduled_tasks`
--
ALTER TABLE `scheduled_tasks`
  ADD UNIQUE KEY `scheduled_tasks_pkey` (`class_name`);

--
-- Indeks untuk tabel `sections`
--
ALTER TABLE `sections`
  ADD PRIMARY KEY (`section_id`),
  ADD KEY `sections_journal_id` (`journal_id`);

--
-- Indeks untuk tabel `section_settings`
--
ALTER TABLE `section_settings`
  ADD UNIQUE KEY `section_settings_pkey` (`section_id`,`locale`,`setting_name`),
  ADD KEY `section_settings_section_id` (`section_id`);

--
-- Indeks untuk tabel `sessions`
--
ALTER TABLE `sessions`
  ADD UNIQUE KEY `sessions_pkey` (`session_id`),
  ADD KEY `sessions_user_id` (`user_id`);

--
-- Indeks untuk tabel `site_settings`
--
ALTER TABLE `site_settings`
  ADD UNIQUE KEY `site_settings_pkey` (`setting_name`,`locale`);

--
-- Indeks untuk tabel `stage_assignments`
--
ALTER TABLE `stage_assignments`
  ADD PRIMARY KEY (`stage_assignment_id`),
  ADD UNIQUE KEY `stage_assignment` (`submission_id`,`user_group_id`,`user_id`),
  ADD KEY `stage_assignments_submission_id` (`submission_id`),
  ADD KEY `stage_assignments_user_group_id` (`user_group_id`),
  ADD KEY `stage_assignments_user_id` (`user_id`);

--
-- Indeks untuk tabel `static_pages`
--
ALTER TABLE `static_pages`
  ADD PRIMARY KEY (`static_page_id`);

--
-- Indeks untuk tabel `static_page_settings`
--
ALTER TABLE `static_page_settings`
  ADD UNIQUE KEY `static_page_settings_pkey` (`static_page_id`,`locale`,`setting_name`),
  ADD KEY `static_page_settings_static_page_id` (`static_page_id`);

--
-- Indeks untuk tabel `subeditor_submission_group`
--
ALTER TABLE `subeditor_submission_group`
  ADD UNIQUE KEY `section_editors_pkey` (`context_id`,`assoc_id`,`assoc_type`,`user_id`),
  ADD KEY `section_editors_context_id` (`context_id`),
  ADD KEY `subeditor_submission_group_assoc_id` (`assoc_id`,`assoc_type`),
  ADD KEY `subeditor_submission_group_user_id` (`user_id`);

--
-- Indeks untuk tabel `submissions`
--
ALTER TABLE `submissions`
  ADD PRIMARY KEY (`submission_id`),
  ADD KEY `submissions_context_id` (`context_id`),
  ADD KEY `submissions_publication_id` (`current_publication_id`);

--
-- Indeks untuk tabel `submission_comments`
--
ALTER TABLE `submission_comments`
  ADD PRIMARY KEY (`comment_id`),
  ADD KEY `submission_comments_submission_id` (`submission_id`);

--
-- Indeks untuk tabel `submission_files`
--
ALTER TABLE `submission_files`
  ADD PRIMARY KEY (`submission_file_id`),
  ADD KEY `submission_files_submission_id` (`submission_id`),
  ADD KEY `submission_files_stage_assoc` (`file_stage`,`assoc_type`,`assoc_id`),
  ADD KEY `submission_files_file_id_foreign` (`file_id`);

--
-- Indeks untuk tabel `submission_file_revisions`
--
ALTER TABLE `submission_file_revisions`
  ADD PRIMARY KEY (`revision_id`),
  ADD KEY `submission_file_revisions_submission_file_id_foreign` (`submission_file_id`),
  ADD KEY `submission_file_revisions_file_id_foreign` (`file_id`);

--
-- Indeks untuk tabel `submission_file_settings`
--
ALTER TABLE `submission_file_settings`
  ADD UNIQUE KEY `submission_file_settings_pkey` (`submission_file_id`,`locale`,`setting_name`),
  ADD KEY `submission_file_settings_id` (`submission_file_id`);

--
-- Indeks untuk tabel `submission_search_keyword_list`
--
ALTER TABLE `submission_search_keyword_list`
  ADD PRIMARY KEY (`keyword_id`),
  ADD UNIQUE KEY `submission_search_keyword_text` (`keyword_text`);

--
-- Indeks untuk tabel `submission_search_objects`
--
ALTER TABLE `submission_search_objects`
  ADD PRIMARY KEY (`object_id`),
  ADD KEY `submission_search_object_submission` (`submission_id`);

--
-- Indeks untuk tabel `submission_search_object_keywords`
--
ALTER TABLE `submission_search_object_keywords`
  ADD UNIQUE KEY `submission_search_object_keywords_pkey` (`object_id`,`pos`),
  ADD KEY `submission_search_object_keywords_keyword_id` (`keyword_id`);

--
-- Indeks untuk tabel `submission_settings`
--
ALTER TABLE `submission_settings`
  ADD UNIQUE KEY `submission_settings_pkey` (`submission_id`,`locale`,`setting_name`),
  ADD KEY `submission_settings_submission_id` (`submission_id`);

--
-- Indeks untuk tabel `submission_tombstones`
--
ALTER TABLE `submission_tombstones`
  ADD PRIMARY KEY (`tombstone_id`),
  ADD KEY `submission_tombstones_journal_id` (`journal_id`),
  ADD KEY `submission_tombstones_submission_id` (`submission_id`);

--
-- Indeks untuk tabel `subscriptions`
--
ALTER TABLE `subscriptions`
  ADD PRIMARY KEY (`subscription_id`);

--
-- Indeks untuk tabel `subscription_types`
--
ALTER TABLE `subscription_types`
  ADD PRIMARY KEY (`type_id`);

--
-- Indeks untuk tabel `subscription_type_settings`
--
ALTER TABLE `subscription_type_settings`
  ADD UNIQUE KEY `subscription_type_settings_pkey` (`type_id`,`locale`,`setting_name`),
  ADD KEY `subscription_type_settings_type_id` (`type_id`);

--
-- Indeks untuk tabel `temporary_files`
--
ALTER TABLE `temporary_files`
  ADD PRIMARY KEY (`file_id`),
  ADD KEY `temporary_files_user_id` (`user_id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `users_username` (`username`),
  ADD UNIQUE KEY `users_email` (`email`);

--
-- Indeks untuk tabel `user_groups`
--
ALTER TABLE `user_groups`
  ADD PRIMARY KEY (`user_group_id`),
  ADD KEY `user_groups_user_group_id` (`user_group_id`),
  ADD KEY `user_groups_context_id` (`context_id`),
  ADD KEY `user_groups_role_id` (`role_id`);

--
-- Indeks untuk tabel `user_group_settings`
--
ALTER TABLE `user_group_settings`
  ADD UNIQUE KEY `user_group_settings_pkey` (`user_group_id`,`locale`,`setting_name`);

--
-- Indeks untuk tabel `user_group_stage`
--
ALTER TABLE `user_group_stage`
  ADD UNIQUE KEY `user_group_stage_pkey` (`context_id`,`user_group_id`,`stage_id`),
  ADD KEY `user_group_stage_context_id` (`context_id`),
  ADD KEY `user_group_stage_user_group_id` (`user_group_id`),
  ADD KEY `user_group_stage_stage_id` (`stage_id`);

--
-- Indeks untuk tabel `user_interests`
--
ALTER TABLE `user_interests`
  ADD UNIQUE KEY `u_e_pkey` (`user_id`,`controlled_vocab_entry_id`);

--
-- Indeks untuk tabel `user_settings`
--
ALTER TABLE `user_settings`
  ADD UNIQUE KEY `user_settings_pkey` (`user_id`,`locale`,`setting_name`,`assoc_type`,`assoc_id`),
  ADD KEY `user_settings_user_id` (`user_id`),
  ADD KEY `user_settings_locale_setting_name_index` (`setting_name`,`locale`);

--
-- Indeks untuk tabel `user_user_groups`
--
ALTER TABLE `user_user_groups`
  ADD UNIQUE KEY `user_user_groups_pkey` (`user_group_id`,`user_id`),
  ADD KEY `user_user_groups_user_group_id` (`user_group_id`),
  ADD KEY `user_user_groups_user_id` (`user_id`);

--
-- Indeks untuk tabel `versions`
--
ALTER TABLE `versions`
  ADD UNIQUE KEY `versions_pkey` (`product_type`,`product`,`major`,`minor`,`revision`,`build`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `access_keys`
--
ALTER TABLE `access_keys`
  MODIFY `access_key_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `announcements`
--
ALTER TABLE `announcements`
  MODIFY `announcement_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `announcement_types`
--
ALTER TABLE `announcement_types`
  MODIFY `type_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `authors`
--
ALTER TABLE `authors`
  MODIFY `author_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `auth_sources`
--
ALTER TABLE `auth_sources`
  MODIFY `auth_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `categories`
--
ALTER TABLE `categories`
  MODIFY `category_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `citations`
--
ALTER TABLE `citations`
  MODIFY `citation_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `completed_payments`
--
ALTER TABLE `completed_payments`
  MODIFY `completed_payment_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `controlled_vocabs`
--
ALTER TABLE `controlled_vocabs`
  MODIFY `controlled_vocab_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT untuk tabel `controlled_vocab_entries`
--
ALTER TABLE `controlled_vocab_entries`
  MODIFY `controlled_vocab_entry_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=133;

--
-- AUTO_INCREMENT untuk tabel `data_object_tombstones`
--
ALTER TABLE `data_object_tombstones`
  MODIFY `tombstone_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `data_object_tombstone_oai_set_objects`
--
ALTER TABLE `data_object_tombstone_oai_set_objects`
  MODIFY `object_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT untuk tabel `edit_decisions`
--
ALTER TABLE `edit_decisions`
  MODIFY `edit_decision_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `email_log`
--
ALTER TABLE `email_log`
  MODIFY `log_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `email_templates`
--
ALTER TABLE `email_templates`
  MODIFY `email_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `email_templates_default`
--
ALTER TABLE `email_templates_default`
  MODIFY `email_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT untuk tabel `event_log`
--
ALTER TABLE `event_log`
  MODIFY `log_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;

--
-- AUTO_INCREMENT untuk tabel `files`
--
ALTER TABLE `files`
  MODIFY `file_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `filters`
--
ALTER TABLE `filters`
  MODIFY `filter_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT untuk tabel `filter_groups`
--
ALTER TABLE `filter_groups`
  MODIFY `filter_group_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT untuk tabel `genres`
--
ALTER TABLE `genres`
  MODIFY `genre_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `institutional_subscriptions`
--
ALTER TABLE `institutional_subscriptions`
  MODIFY `institutional_subscription_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `institutional_subscription_ip`
--
ALTER TABLE `institutional_subscription_ip`
  MODIFY `institutional_subscription_ip_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `issues`
--
ALTER TABLE `issues`
  MODIFY `issue_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `issue_files`
--
ALTER TABLE `issue_files`
  MODIFY `file_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `issue_galleys`
--
ALTER TABLE `issue_galleys`
  MODIFY `galley_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `journals`
--
ALTER TABLE `journals`
  MODIFY `journal_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `library_files`
--
ALTER TABLE `library_files`
  MODIFY `file_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `metadata_descriptions`
--
ALTER TABLE `metadata_descriptions`
  MODIFY `metadata_description_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `navigation_menus`
--
ALTER TABLE `navigation_menus`
  MODIFY `navigation_menu_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `navigation_menu_items`
--
ALTER TABLE `navigation_menu_items`
  MODIFY `navigation_menu_item_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT untuk tabel `navigation_menu_item_assignments`
--
ALTER TABLE `navigation_menu_item_assignments`
  MODIFY `navigation_menu_item_assignment_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=284;

--
-- AUTO_INCREMENT untuk tabel `notes`
--
ALTER TABLE `notes`
  MODIFY `note_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `notifications`
--
ALTER TABLE `notifications`
  MODIFY `notification_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=183;

--
-- AUTO_INCREMENT untuk tabel `notification_mail_list`
--
ALTER TABLE `notification_mail_list`
  MODIFY `notification_mail_list_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `notification_subscription_settings`
--
ALTER TABLE `notification_subscription_settings`
  MODIFY `setting_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `publications`
--
ALTER TABLE `publications`
  MODIFY `publication_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `publication_galleys`
--
ALTER TABLE `publication_galleys`
  MODIFY `galley_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `queries`
--
ALTER TABLE `queries`
  MODIFY `query_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `queued_payments`
--
ALTER TABLE `queued_payments`
  MODIFY `queued_payment_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `review_assignments`
--
ALTER TABLE `review_assignments`
  MODIFY `review_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `review_forms`
--
ALTER TABLE `review_forms`
  MODIFY `review_form_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `review_form_elements`
--
ALTER TABLE `review_form_elements`
  MODIFY `review_form_element_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `review_rounds`
--
ALTER TABLE `review_rounds`
  MODIFY `review_round_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `sections`
--
ALTER TABLE `sections`
  MODIFY `section_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `stage_assignments`
--
ALTER TABLE `stage_assignments`
  MODIFY `stage_assignment_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `static_pages`
--
ALTER TABLE `static_pages`
  MODIFY `static_page_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `submissions`
--
ALTER TABLE `submissions`
  MODIFY `submission_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `submission_comments`
--
ALTER TABLE `submission_comments`
  MODIFY `comment_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `submission_files`
--
ALTER TABLE `submission_files`
  MODIFY `submission_file_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT untuk tabel `submission_file_revisions`
--
ALTER TABLE `submission_file_revisions`
  MODIFY `revision_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT untuk tabel `submission_search_keyword_list`
--
ALTER TABLE `submission_search_keyword_list`
  MODIFY `keyword_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=300;

--
-- AUTO_INCREMENT untuk tabel `submission_search_objects`
--
ALTER TABLE `submission_search_objects`
  MODIFY `object_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT untuk tabel `submission_tombstones`
--
ALTER TABLE `submission_tombstones`
  MODIFY `tombstone_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `subscriptions`
--
ALTER TABLE `subscriptions`
  MODIFY `subscription_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `subscription_types`
--
ALTER TABLE `subscription_types`
  MODIFY `type_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `temporary_files`
--
ALTER TABLE `temporary_files`
  MODIFY `file_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `user_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `user_groups`
--
ALTER TABLE `user_groups`
  MODIFY `user_group_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `publication_galleys`
--
ALTER TABLE `publication_galleys`
  ADD CONSTRAINT `publication_galleys_submission_file_id_foreign` FOREIGN KEY (`submission_file_id`) REFERENCES `submission_files` (`submission_file_id`);

--
-- Ketidakleluasaan untuk tabel `review_files`
--
ALTER TABLE `review_files`
  ADD CONSTRAINT `review_files_submission_file_id_foreign` FOREIGN KEY (`submission_file_id`) REFERENCES `submission_files` (`submission_file_id`);

--
-- Ketidakleluasaan untuk tabel `review_round_files`
--
ALTER TABLE `review_round_files`
  ADD CONSTRAINT `review_round_files_submission_file_id_foreign` FOREIGN KEY (`submission_file_id`) REFERENCES `submission_files` (`submission_file_id`);

--
-- Ketidakleluasaan untuk tabel `submission_files`
--
ALTER TABLE `submission_files`
  ADD CONSTRAINT `submission_files_file_id_foreign` FOREIGN KEY (`file_id`) REFERENCES `files` (`file_id`);

--
-- Ketidakleluasaan untuk tabel `submission_file_revisions`
--
ALTER TABLE `submission_file_revisions`
  ADD CONSTRAINT `submission_file_revisions_file_id_foreign` FOREIGN KEY (`file_id`) REFERENCES `files` (`file_id`),
  ADD CONSTRAINT `submission_file_revisions_submission_file_id_foreign` FOREIGN KEY (`submission_file_id`) REFERENCES `submission_files` (`submission_file_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
