-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- ホスト: localhost
-- 生成日時: 2019 年 10 月 24 日 15:51
-- サーバのバージョン： 10.4.6-MariaDB
-- PHP のバージョン: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- データベース: `gsacfd04_db04`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `gs_bm_table`
--

CREATE TABLE `gs_bm_table` (
  `id` int(11) NOT NULL,
  `name` varchar(64) COLLATE utf32_unicode_ci NOT NULL,
  `url` text COLLATE utf32_unicode_ci NOT NULL,
  `comment` text COLLATE utf32_unicode_ci NOT NULL,
  `indate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_unicode_ci;

--
-- テーブルのデータのダンプ `gs_bm_table`
--

INSERT INTO `gs_bm_table` (`id`, `name`, `url`, `comment`, `indate`) VALUES
(3, '苦界浄土', 'https://www.kinokuniya.co.jp/f/dsg-01-9784062748155', '少しずつ読み進めています。\r\n', '2019-10-10 19:15:49'),
(4, '子どもの自分くずしと自分つくり', 'http://www.ajup-net.com/bd/isbn978-4-13-002056-5.html', '読むたびに発見がある。', '2019-10-10 19:43:54'),
(5, 'Cultural Anthropology, Canadian Edition', 'https://www.amazon.com/Cultural-Anthropology-Canadian-Nancy-Bonvillain/dp/0131596810', 'データベースと繋がっているか確認\r\n', '2019-10-17 17:56:40'),
(6, 'ダンス・ダンス・ダンス(上)', 'http://bookclub.kodansha.co.jp/product?item=0000203624', '問題はなんだろうか。。...', '2019-10-17 20:17:29'),
(8, '日本人のための発音教本', 'https://www.ask-books.com/hatsuon/', '発音筋トレ参考書', '2019-10-24 18:03:49');

-- --------------------------------------------------------

--
-- テーブルの構造 `user_table`
--

CREATE TABLE `user_table` (
  `id` int(12) NOT NULL,
  `name` varchar(64) COLLATE utf32_unicode_ci NOT NULL,
  `lid` varchar(128) COLLATE utf32_unicode_ci NOT NULL,
  `lpw` varchar(64) COLLATE utf32_unicode_ci NOT NULL,
  `kanri_flg` int(1) NOT NULL,
  `life_flg` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_unicode_ci;

--
-- テーブルのデータのダンプ `user_table`
--

INSERT INTO `user_table` (`id`, `name`, `lid`, `lpw`, `kanri_flg`, `life_flg`) VALUES
(11, 'test2', '2', '2', 1, 0),
(12, 'test2', '2', '2', 1, 0),
(14, 'n', 'n', 'n', 0, 1),
(15, 'nnn', 'nnn', 'nnn', 0, 0);

--
-- ダンプしたテーブルのインデックス
--

--
-- テーブルのインデックス `gs_bm_table`
--
ALTER TABLE `gs_bm_table`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `user_table`
--
ALTER TABLE `user_table`
  ADD PRIMARY KEY (`id`);

--
-- ダンプしたテーブルのAUTO_INCREMENT
--

--
-- テーブルのAUTO_INCREMENT `gs_bm_table`
--
ALTER TABLE `gs_bm_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- テーブルのAUTO_INCREMENT `user_table`
--
ALTER TABLE `user_table`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
