-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th7 04, 2017 lúc 12:16 CH
-- Phiên bản máy phục vụ: 10.1.21-MariaDB
-- Phiên bản PHP: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `shopping`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `article`
--

CREATE TABLE `article` (
  `idTT` int(11) NOT NULL,
  `idLoai` int(11) NOT NULL,
  `TenTT` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Alias` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Hinh` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `MoTa` text COLLATE utf8_unicode_ci NOT NULL,
  `NoiDung` text COLLATE utf8_unicode_ci NOT NULL,
  `NgayDang` datetime NOT NULL,
  `LuotXem` int(11) NOT NULL DEFAULT '0',
  `Title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Des` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Keyword` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `AnHien` tinyint(1) NOT NULL DEFAULT '1',
  `STT` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `banggia`
--

CREATE TABLE `banggia` (
  `idbg` int(1) NOT NULL,
  `textbanggia` longtext CHARACTER SET utf8 NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `banggia`
--

INSERT INTO `banggia` (`idbg`, `textbanggia`) VALUES
(1, '<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"border-collapse:\r\n collapse;width:972pt\" width=\"1296\">\r\n	<colgroup>\r\n		<col span=\"7\" style=\"width:54pt\" width=\"72\" />\r\n		<col style=\"width:54pt\" width=\"72\" />\r\n		<col span=\"10\" style=\"width:54pt\" width=\"72\" />\r\n	</colgroup>\r\n	<tbody>\r\n		<tr height=\"19\" style=\"height:14.25pt\">\r\n			<td height=\"19\" style=\"height:14.25pt;width:54pt\" width=\"72\">\r\n				&nbsp;</td>\r\n			<td style=\"width:54pt\" width=\"72\">\r\n				&nbsp;</td>\r\n			<td style=\"width:54pt\" width=\"72\">\r\n				&nbsp;</td>\r\n			<td style=\"width:54pt\" width=\"72\">\r\n				&nbsp;</td>\r\n			<td style=\"width:54pt\" width=\"72\">\r\n				&nbsp;</td>\r\n			<td style=\"width:54pt\" width=\"72\">\r\n				&nbsp;</td>\r\n			<td class=\"xl69\" style=\"width:54pt\" width=\"72\">\r\n				&nbsp;</td>\r\n			<td class=\"xl72\" style=\"width:54pt\" width=\"72\">\r\n				&nbsp;</td>\r\n			<td style=\"width:54pt\" width=\"72\">\r\n				&nbsp;</td>\r\n			<td style=\"width:54pt\" width=\"72\">\r\n				&nbsp;</td>\r\n			<td style=\"width:54pt\" width=\"72\">\r\n				&nbsp;</td>\r\n			<td style=\"width:54pt\" width=\"72\">\r\n				&nbsp;</td>\r\n			<td style=\"width:54pt\" width=\"72\">\r\n				&nbsp;</td>\r\n			<td class=\"xl69\" style=\"width:54pt\" width=\"72\">\r\n				&nbsp;</td>\r\n			<td class=\"xl69\" style=\"width:54pt\" width=\"72\">\r\n				&nbsp;</td>\r\n			<td style=\"width:54pt\" width=\"72\">\r\n				&nbsp;</td>\r\n			<td style=\"width:54pt\" width=\"72\">\r\n				&nbsp;</td>\r\n			<td style=\"width:54pt\" width=\"72\">\r\n				&nbsp;</td>\r\n		</tr>\r\n		<tr height=\"19\" style=\"height:14.25pt\">\r\n			<td class=\"xl68\" height=\"19\" style=\"height:14.25pt\">\r\n				&nbsp;</td>\r\n			<td class=\"xl68\">\r\n				T2</td>\r\n			<td class=\"xl68\">\r\n				T3</td>\r\n			<td class=\"xl68\">\r\n				T4</td>\r\n			<td class=\"xl68\">\r\n				T5</td>\r\n			<td class=\"xl68\">\r\n				T6</td>\r\n			<td class=\"xl68\">\r\n				T7</td>\r\n			<td class=\"xl73\">\r\n				CN</td>\r\n			<td class=\"xl68\">\r\n				T2</td>\r\n			<td class=\"xl68\">\r\n				T3</td>\r\n			<td class=\"xl68\">\r\n				T4</td>\r\n			<td class=\"xl68\">\r\n				T5</td>\r\n			<td class=\"xl68\">\r\n				T6</td>\r\n			<td class=\"xl68\">\r\n				T7</td>\r\n			<td class=\"xl68\">\r\n				CN</td>\r\n			<td class=\"xl68\">\r\n				<span style=\"background-color:#ffff00;\">SANG</span></td>\r\n			<td class=\"xl68\">\r\n				CHIEU</td>\r\n			<td class=\"xl68\">\r\n				KHUYA</td>\r\n		</tr>\r\n		<tr height=\"19\" style=\"height:14.25pt\">\r\n			<td class=\"xl67\" height=\"19\" style=\"height:14.25pt\">\r\n				HƯƠNG</td>\r\n			<td>\r\n				C</td>\r\n			<td>\r\n				S</td>\r\n			<td>\r\n				C</td>\r\n			<td>\r\n				S</td>\r\n			<td>\r\n				C</td>\r\n			<td>\r\n				S</td>\r\n			<td class=\"xl71\">\r\n				C<span _fck_bookmark=\"1\" style=\"display: none;\">&nbsp;</span><span _fck_bookmark=\"1\" style=\"display: none;\">&nbsp;</span></td>\r\n			<td>\r\n				C</td>\r\n			<td>\r\n				S</td>\r\n			<td>\r\n				C</td>\r\n			<td>\r\n				S</td>\r\n			<td>\r\n				C</td>\r\n			<td>\r\n				S<span _fck_bookmark=\"1\" style=\"display: none;\">&nbsp;</span></td>\r\n			&nbsp;\r\n			<td>\r\n				S</td>\r\n			<td align=\"right\">\r\n				7</td>\r\n			<td align=\"right\">\r\n				7</td>\r\n			<td>\r\n				&nbsp;</td>\r\n		</tr>\r\n		<tr height=\"19\" style=\"height:14.25pt\">\r\n			<td class=\"xl63\" height=\"19\" style=\"height:14.25pt\">\r\n				THẢO</td>\r\n			<td class=\"xl70\">\r\n				K</td>\r\n			<td>\r\n				C</td>\r\n			<td>\r\n				S</td>\r\n			<td>\r\n				C</td>\r\n			<td>\r\n				S</td>\r\n			<td>\r\n				C</td>\r\n			<td class=\"xl70\">\r\n				K</td>\r\n			<td>\r\n				C</td>\r\n			<td>\r\n				S</td>\r\n			<td>\r\n				C</td>\r\n			<td>\r\n				S</td>\r\n			<td>\r\n				C</td>\r\n			<td>\r\n				S</td>\r\n			<td>\r\n				C</td>\r\n			<td>\r\n				&nbsp;</td>\r\n			<td>\r\n				&nbsp;</td>\r\n			<td>\r\n				&nbsp;</td>\r\n		</tr>\r\n		<tr height=\"19\" style=\"height:14.25pt\">\r\n			<td class=\"xl64\" height=\"19\" style=\"height:14.25pt\">\r\n				B&Igrave;NH</td>\r\n			<td>\r\n				C</td>\r\n			<td class=\"xl70\">\r\n				K</td>\r\n			<td>\r\n				C</td>\r\n			<td>\r\n				S</td>\r\n			<td>\r\n				C</td>\r\n			<td>\r\n				S</td>\r\n			<td class=\"xl71\">\r\n				C</td>\r\n			<td class=\"xl70\">\r\n				K</td>\r\n			<td>\r\n				S</td>\r\n			<td>\r\n				C</td>\r\n			<td>\r\n				S</td>\r\n			<td>\r\n				C</td>\r\n			<td>\r\n				S</td>\r\n			<td>\r\n				C</td>\r\n			<td>\r\n				&nbsp;</td>\r\n			<td>\r\n				&nbsp;</td>\r\n			<td>\r\n				&nbsp;</td>\r\n		</tr>\r\n		<tr height=\"19\" style=\"height:14.25pt\">\r\n			<td class=\"xl65\" height=\"19\" style=\"height:14.25pt\">\r\n				MY</td>\r\n			<td>\r\n				C</td>\r\n			<td class=\"xl70\">\r\n				K</td>\r\n			<td>\r\n				C</td>\r\n			<td>\r\n				S</td>\r\n			<td>\r\n				C</td>\r\n			<td>\r\n				S</td>\r\n			<td class=\"xl71\">\r\n				C</td>\r\n			<td class=\"xl70\">\r\n				K</td>\r\n			<td>\r\n				S</td>\r\n			<td>\r\n				C</td>\r\n			<td>\r\n				S</td>\r\n			<td>\r\n				<span style=\"color:#ff0000;\">C</span></td>\r\n			<td>\r\n				S</td>\r\n			<td>\r\n				C</td>\r\n			<td>\r\n				&nbsp;</td>\r\n			<td>\r\n				&nbsp;</td>\r\n			<td>\r\n				&nbsp;</td>\r\n		</tr>\r\n		<tr height=\"19\" style=\"height:14.25pt\">\r\n			<td class=\"xl63\" height=\"19\" style=\"height:14.25pt\">\r\n				HẰNG</td>\r\n			<td>\r\n				C</td>\r\n			<td>\r\n				S</td>\r\n			<td class=\"xl70\">\r\n				K</td>\r\n			<td>\r\n				C</td>\r\n			<td>\r\n				S</td>\r\n			<td>\r\n				C</td>\r\n			<td class=\"xl71\">\r\n				S</td>\r\n			<td>\r\n				C</td>\r\n			<td class=\"xl70\">\r\n				K</td>\r\n			<td>\r\n				C</td>\r\n			<td>\r\n				S</td>\r\n			<td>\r\n				C</td>\r\n			<td>\r\n				S</td>\r\n			<td>\r\n				C</td>\r\n			<td>\r\n				&nbsp;</td>\r\n			<td>\r\n				&nbsp;</td>\r\n			<td>\r\n				&nbsp;</td>\r\n		</tr>\r\n		<tr height=\"19\" style=\"height:14.25pt\">\r\n			<td class=\"xl63\" height=\"19\" style=\"height:14.25pt\">\r\n				TI&Ecirc;N</td>\r\n			<td>\r\n				C</td>\r\n			<td>\r\n				S</td>\r\n			<td>\r\n				C</td>\r\n			<td class=\"xl70\">\r\n				K</td>\r\n			<td>\r\n				C</td>\r\n			<td>\r\n				S</td>\r\n			<td class=\"xl71\">\r\n				C</td>\r\n			<td>\r\n				C</td>\r\n			<td>\r\n				S</td>\r\n			<td class=\"xl70\">\r\n				K</td>\r\n			<td>\r\n				S</td>\r\n			<td>\r\n				C</td>\r\n			<td>\r\n				S</td>\r\n			<td>\r\n				C</td>\r\n			<td>\r\n				&nbsp;</td>\r\n			<td>\r\n				&nbsp;</td>\r\n			<td>\r\n				&nbsp;</td>\r\n		</tr>\r\n		<tr height=\"19\" style=\"height:14.25pt\">\r\n			<td class=\"xl64\" height=\"19\" style=\"height:14.25pt\">\r\n				TNGAN</td>\r\n			<td>\r\n				C</td>\r\n			<td>\r\n				S</td>\r\n			<td>\r\n				C</td>\r\n			<td class=\"xl70\">\r\n				K</td>\r\n			<td>\r\n				C</td>\r\n			<td>\r\n				S</td>\r\n			<td class=\"xl71\">\r\n				C</td>\r\n			<td>\r\n				C</td>\r\n			<td>\r\n				S</td>\r\n			<td class=\"xl70\">\r\n				K</td>\r\n			<td>\r\n				S</td>\r\n			<td>\r\n				C</td>\r\n			<td>\r\n				S</td>\r\n			<td>\r\n				C</td>\r\n			<td>\r\n				&nbsp;</td>\r\n			<td>\r\n				&nbsp;</td>\r\n			<td>\r\n				&nbsp;</td>\r\n		</tr>\r\n		<tr height=\"19\" style=\"height:14.25pt\">\r\n			<td class=\"xl75\" height=\"19\" style=\"height:14.25pt\">\r\n				LTAM</td>\r\n			<td class=\"xl70\">\r\n				K</td>\r\n			<td>\r\n				C</td>\r\n			<td>\r\n				S</td>\r\n			<td>\r\n				C</td>\r\n			<td>\r\n				S</td>\r\n			<td>\r\n				C</td>\r\n			<td class=\"xl70\">\r\n				K</td>\r\n			<td>\r\n				C</td>\r\n			<td>\r\n				S</td>\r\n			<td>\r\n				C</td>\r\n			<td>\r\n				S</td>\r\n			<td>\r\n				C</td>\r\n			<td>\r\n				S</td>\r\n			<td>\r\n				C</td>\r\n			<td>\r\n				&nbsp;</td>\r\n			<td>\r\n				&nbsp;</td>\r\n			<td>\r\n				&nbsp;</td>\r\n		</tr>\r\n		<tr height=\"19\" style=\"height:14.25pt\">\r\n			<td class=\"xl66\" height=\"19\" style=\"height:14.25pt\">\r\n				HTAM</td>\r\n			<td>\r\n				S</td>\r\n			<td>\r\n				C</td>\r\n			<td class=\"xl70\">\r\n				K</td>\r\n			<td>\r\n				C</td>\r\n			<td>\r\n				S</td>\r\n			<td>\r\n				C</td>\r\n			<td class=\"xl71\">\r\n				S</td>\r\n			<td>\r\n				C</td>\r\n			<td class=\"xl70\">\r\n				K</td>\r\n			<td>\r\n				C</td>\r\n			<td>\r\n				S</td>\r\n			<td>\r\n				C</td>\r\n			<td>\r\n				S</td>\r\n			<td>\r\n				C</td>\r\n			<td>\r\n				&nbsp;</td>\r\n			<td>\r\n				&nbsp;</td>\r\n			<td>\r\n				&nbsp;</td>\r\n		</tr>\r\n		<tr height=\"19\" style=\"height:14.25pt\">\r\n			<td class=\"xl74\" height=\"19\" style=\"height:14.25pt\">\r\n				&nbsp;</td>\r\n			<td class=\"xl74\">\r\n				&nbsp;</td>\r\n			<td class=\"xl74\">\r\n				&nbsp;</td>\r\n			<td class=\"xl74\">\r\n				&nbsp;</td>\r\n			<td class=\"xl74\">\r\n				&nbsp;</td>\r\n			<td class=\"xl74\">\r\n				&nbsp;</td>\r\n			<td class=\"xl74\">\r\n				&nbsp;</td>\r\n			<td class=\"xl74\">\r\n				&nbsp;</td>\r\n			<td class=\"xl74\">\r\n				&nbsp;</td>\r\n			<td class=\"xl74\">\r\n				&nbsp;</td>\r\n			<td class=\"xl74\">\r\n				&nbsp;</td>\r\n			<td class=\"xl74\">\r\n				&nbsp;</td>\r\n			<td class=\"xl74\">\r\n				&nbsp;</td>\r\n			<td class=\"xl74\">\r\n				&nbsp;</td>\r\n			<td class=\"xl74\">\r\n				&nbsp;</td>\r\n			<td class=\"xl74\">\r\n				&nbsp;</td>\r\n			<td class=\"xl74\">\r\n				&nbsp;</td>\r\n			<td class=\"xl74\">\r\n				&nbsp;</td>\r\n		</tr>\r\n		<tr height=\"19\" style=\"height:14.25pt\">\r\n			<td class=\"xl67\" height=\"19\" style=\"height:14.25pt\">\r\n				NG&Acirc;N</td>\r\n			<td>\r\n				S</td>\r\n			<td>\r\n				C</td>\r\n			<td>\r\n				S</td>\r\n			<td>\r\n				C</td>\r\n			<td>\r\n				S</td>\r\n			<td>\r\n				C</td>\r\n			<td class=\"xl71\">\r\n				S</td>\r\n			<td>\r\n				S</td>\r\n			<td>\r\n				C</td>\r\n			<td>\r\n				S</td>\r\n			<td>\r\n				C</td>\r\n			<td>\r\n				S</td>\r\n			<td>\r\n				C</td>\r\n			<td>\r\n				C</td>\r\n			<td>\r\n				&nbsp;</td>\r\n			<td>\r\n				&nbsp;</td>\r\n			<td>\r\n				&nbsp;</td>\r\n		</tr>\r\n		<tr height=\"19\" style=\"height:14.25pt\">\r\n			<td class=\"xl63\" height=\"19\" style=\"height:14.25pt\">\r\n				NGỌC</td>\r\n			<td>\r\n				S</td>\r\n			<td>\r\n				C</td>\r\n			<td>\r\n				S</td>\r\n			<td>\r\n				C</td>\r\n			<td class=\"xl70\">\r\n				K</td>\r\n			<td>\r\n				C</td>\r\n			<td class=\"xl71\">\r\n				S</td>\r\n			<td>\r\n				S</td>\r\n			<td>\r\n				C</td>\r\n			<td>\r\n				S</td>\r\n			<td class=\"xl70\">\r\n				K</td>\r\n			<td>\r\n				S</td>\r\n			<td>\r\n				C</td>\r\n			<td>\r\n				S</td>\r\n			<td>\r\n				&nbsp;</td>\r\n			<td>\r\n				&nbsp;</td>\r\n			<td>\r\n				&nbsp;</td>\r\n		</tr>\r\n		<tr height=\"19\" style=\"height:14.25pt\">\r\n			<td class=\"xl64\" height=\"19\" style=\"height:14.25pt\">\r\n				THU</td>\r\n			<td>\r\n				S</td>\r\n			<td>\r\n				C</td>\r\n			<td>\r\n				S</td>\r\n			<td>\r\n				C</td>\r\n			<td>\r\n				S</td>\r\n			<td class=\"xl70\">\r\n				K</td>\r\n			<td class=\"xl71\">\r\n				C</td>\r\n			<td>\r\n				S</td>\r\n			<td>\r\n				C</td>\r\n			<td>\r\n				S</td>\r\n			<td>\r\n				C</td>\r\n			<td class=\"xl70\">\r\n				K</td>\r\n			<td>\r\n				C</td>\r\n			<td>\r\n				S</td>\r\n			<td>\r\n				&nbsp;</td>\r\n			<td>\r\n				&nbsp;</td>\r\n			<td>\r\n				&nbsp;</td>\r\n		</tr>\r\n		<tr height=\"19\" style=\"height:14.25pt\">\r\n			<td class=\"xl65\" height=\"19\" style=\"height:14.25pt\">\r\n				MAI</td>\r\n			<td>\r\n				S</td>\r\n			<td>\r\n				C</td>\r\n			<td>\r\n				S</td>\r\n			<td>\r\n				C</td>\r\n			<td>\r\n				S</td>\r\n			<td class=\"xl70\">\r\n				K</td>\r\n			<td class=\"xl71\">\r\n				C</td>\r\n			<td>\r\n				S</td>\r\n			<td>\r\n				C</td>\r\n			<td>\r\n				S</td>\r\n			<td>\r\n				C</td>\r\n			<td class=\"xl70\">\r\n				K</td>\r\n			<td>\r\n				C</td>\r\n			<td>\r\n				S</td>\r\n			<td>\r\n				&nbsp;</td>\r\n			<td>\r\n				&nbsp;</td>\r\n			<td>\r\n				&nbsp;</td>\r\n		</tr>\r\n		<tr height=\"19\" style=\"height:14.25pt\">\r\n			<td class=\"xl64\" height=\"19\" style=\"height:14.25pt\">\r\n				PHỤNG</td>\r\n			<td>\r\n				S</td>\r\n			<td>\r\n				C</td>\r\n			<td>\r\n				S</td>\r\n			<td>\r\n				C</td>\r\n			<td>\r\n				S</td>\r\n			<td>\r\n				C</td>\r\n			<td class=\"xl70\">\r\n				K</td>\r\n			<td>\r\n				C</td>\r\n			<td>\r\n				S</td>\r\n			<td>\r\n				C</td>\r\n			<td>\r\n				S</td>\r\n			<td>\r\n				C</td>\r\n			<td class=\"xl70\">\r\n				K</td>\r\n			<td>\r\n				C</td>\r\n			<td>\r\n				&nbsp;</td>\r\n			<td>\r\n				&nbsp;</td>\r\n			<td>\r\n				&nbsp;</td>\r\n		</tr>\r\n		<tr height=\"19\" style=\"height:14.25pt\">\r\n			<td class=\"xl63\" height=\"19\" style=\"height:14.25pt\">\r\n				LỆ</td>\r\n			<td>\r\n				S</td>\r\n			<td>\r\n				C</td>\r\n			<td>\r\n				S</td>\r\n			<td>\r\n				C</td>\r\n			<td>\r\n				S</td>\r\n			<td>\r\n				C</td>\r\n			<td class=\"xl70\">\r\n				K</td>\r\n			<td>\r\n				C</td>\r\n			<td>\r\n				S</td>\r\n			<td>\r\n				C</td>\r\n			<td>\r\n				S</td>\r\n			<td>\r\n				C</td>\r\n			<td class=\"xl70\">\r\n				K</td>\r\n			<td>\r\n				C</td>\r\n			<td>\r\n				&nbsp;</td>\r\n			<td>\r\n				&nbsp;</td>\r\n			<td>\r\n				&nbsp;</td>\r\n		</tr>\r\n		<tr height=\"19\" style=\"height:14.25pt\">\r\n			<td class=\"xl63\" height=\"19\" style=\"height:14.25pt\">\r\n				LẠC</td>\r\n			<td>\r\n				S</td>\r\n			<td>\r\n				C</td>\r\n			<td>\r\n				S</td>\r\n			<td>\r\n				C</td>\r\n			<td>\r\n				S</td>\r\n			<td>\r\n				C</td>\r\n			<td class=\"xl71\">\r\n				S</td>\r\n			<td class=\"xl70\">\r\n				K</td>\r\n			<td>\r\n				C</td>\r\n			<td>\r\n				S</td>\r\n			<td>\r\n				C</td>\r\n			<td>\r\n				S</td>\r\n			<td>\r\n				C</td>\r\n			<td>\r\n				S</td>\r\n			<td>\r\n				&nbsp;</td>\r\n			<td>\r\n				&nbsp;</td>\r\n			<td>\r\n				&nbsp;</td>\r\n		</tr>\r\n		<tr height=\"19\" style=\"height:14.25pt\">\r\n			<td class=\"xl65\" height=\"19\" style=\"height:14.25pt\">\r\n				Đ&Agrave;O</td>\r\n			<td>\r\n				S</td>\r\n			<td>\r\n				C</td>\r\n			<td>\r\n				S</td>\r\n			<td>\r\n				C</td>\r\n			<td>\r\n				S</td>\r\n			<td>\r\n				C</td>\r\n			<td class=\"xl71\">\r\n				S</td>\r\n			<td class=\"xl70\">\r\n				K</td>\r\n			<td>\r\n				C</td>\r\n			<td>\r\n				S</td>\r\n			<td>\r\n				C</td>\r\n			<td>\r\n				S</td>\r\n			<td>\r\n				C</td>\r\n			<td>\r\n				S</td>\r\n			<td>\r\n				&nbsp;</td>\r\n			<td>\r\n				&nbsp;</td>\r\n			<td>\r\n				&nbsp;</td>\r\n		</tr>\r\n		<tr height=\"19\" style=\"height:14.25pt\">\r\n			<td class=\"xl75\" height=\"19\" style=\"height:14.25pt\">\r\n				HO&Agrave;I</td>\r\n			<td>\r\n				S</td>\r\n			<td>\r\n				C</td>\r\n			<td>\r\n				S</td>\r\n			<td>\r\n				C</td>\r\n			<td class=\"xl70\">\r\n				K</td>\r\n			<td>\r\n				C</td>\r\n			<td class=\"xl71\">\r\n				S</td>\r\n			<td>\r\n				S</td>\r\n			<td>\r\n				C</td>\r\n			<td>\r\n				S</td>\r\n			<td class=\"xl70\">\r\n				K</td>\r\n			<td>\r\n				S</td>\r\n			<td>\r\n				C</td>\r\n			<td>\r\n				S</td>\r\n			<td>\r\n				&nbsp;</td>\r\n			<td>\r\n				&nbsp;</td>\r\n			<td>\r\n				&nbsp;</td>\r\n		</tr>\r\n		<tr height=\"19\" style=\"height:14.25pt\">\r\n			<td height=\"19\" style=\"height:14.25pt\">\r\n				&nbsp;</td>\r\n			<td>\r\n				&nbsp;</td>\r\n			<td>\r\n				&nbsp;</td>\r\n			<td>\r\n				&nbsp;</td>\r\n			<td>\r\n				&nbsp;</td>\r\n			<td>\r\n				&nbsp;</td>\r\n			<td>\r\n				&nbsp;</td>\r\n			<td class=\"xl71\">\r\n				&nbsp;</td>\r\n			<td>\r\n				&nbsp;</td>\r\n			<td>\r\n				&nbsp;</td>\r\n			<td>\r\n				&nbsp;</td>\r\n			<td>\r\n				&nbsp;</td>\r\n			<td>\r\n				&nbsp;</td>\r\n			<td>\r\n				&nbsp;</td>\r\n			<td>\r\n				&nbsp;</td>\r\n			<td>\r\n				&nbsp;</td>\r\n			<td>\r\n				&nbsp;</td>\r\n			<td>\r\n				&nbsp;</td>\r\n		</tr>\r\n		<tr height=\"19\" style=\"height:14.25pt\">\r\n			<td height=\"19\" style=\"height:14.25pt\">\r\n				&nbsp;</td>\r\n			<td>\r\n				&nbsp;</td>\r\n			<td>\r\n				&nbsp;</td>\r\n			<td>\r\n				&nbsp;</td>\r\n			<td>\r\n				&nbsp;</td>\r\n			<td>\r\n				&nbsp;</td>\r\n			<td>\r\n				&nbsp;</td>\r\n			<td class=\"xl71\">\r\n				&nbsp;</td>\r\n			<td>\r\n				&nbsp;</td>\r\n			<td>\r\n				&nbsp;</td>\r\n			<td>\r\n				&nbsp;</td>\r\n			<td>\r\n				&nbsp;</td>\r\n			<td>\r\n				&nbsp;</td>\r\n			<td>\r\n				&nbsp;</td>\r\n			<td>\r\n				&nbsp;</td>\r\n			<td>\r\n				&nbsp;</td>\r\n			<td>\r\n				&nbsp;</td>\r\n			<td>\r\n				&nbsp;</td>\r\n		</tr>\r\n		<tr height=\"19\" style=\"height:14.25pt\">\r\n			<td height=\"19\" style=\"height:14.25pt\">\r\n				&nbsp;</td>\r\n			<td>\r\n				&nbsp;</td>\r\n			<td>\r\n				&nbsp;</td>\r\n			<td>\r\n				&nbsp;</td>\r\n			<td>\r\n				&nbsp;</td>\r\n			<td>\r\n				&nbsp;</td>\r\n			<td>\r\n				&nbsp;</td>\r\n			<td class=\"xl71\">\r\n				&nbsp;</td>\r\n			<td>\r\n				&nbsp;</td>\r\n			<td>\r\n				&nbsp;</td>\r\n			<td>\r\n				&nbsp;</td>\r\n			<td>\r\n				&nbsp;</td>\r\n			<td>\r\n				&nbsp;</td>\r\n			<td>\r\n				&nbsp;</td>\r\n			<td>\r\n				&nbsp;</td>\r\n			<td>\r\n				&nbsp;</td>\r\n			<td>\r\n				&nbsp;</td>\r\n			<td>\r\n				&nbsp;</td>\r\n		</tr>\r\n		<tr height=\"19\" style=\"height:14.25pt\">\r\n			<td height=\"19\" style=\"height:14.25pt\">\r\n				KHUYA</td>\r\n			<td class=\"xl70\">\r\n				K</td>\r\n			<td>\r\n				&nbsp;</td>\r\n			<td>\r\n				&nbsp;</td>\r\n			<td>\r\n				&nbsp;</td>\r\n			<td>\r\n				&nbsp;</td>\r\n			<td>\r\n				&nbsp;</td>\r\n			<td class=\"xl71\">\r\n				&nbsp;</td>\r\n			<td>\r\n				&nbsp;</td>\r\n			<td>\r\n				&nbsp;</td>\r\n			<td>\r\n				&nbsp;</td>\r\n			<td>\r\n				&nbsp;</td>\r\n			<td>\r\n				&nbsp;</td>\r\n			<td>\r\n				&nbsp;</td>\r\n			<td>\r\n				&nbsp;</td>\r\n			<td>\r\n				&nbsp;</td>\r\n			<td>\r\n				&nbsp;</td>\r\n			<td>\r\n				&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `banner`
--

CREATE TABLE `banner` (
  `idbanner` int(12) NOT NULL,
  `alias` varchar(255) DEFAULT NULL,
  `urlhinh` varchar(500) NOT NULL,
  `metadesc` varchar(150) NOT NULL,
  `name` varchar(100) NOT NULL DEFAULT '',
  `urlLink` varchar(100) NOT NULL DEFAULT '',
  `ThuTu` int(4) NOT NULL DEFAULT '1',
  `AnHien` int(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `banner`
--

INSERT INTO `banner` (`idbanner`, `alias`, `urlhinh`, `metadesc`, `name`, `urlLink`, `ThuTu`, `AnHien`) VALUES
(10, 'khuyen-mai-he', '{\"url\" : \"http://daitailoc.com/images/linh-kien-vi-tinh-tphcm.jpg\",\"desc\" : \"Linh Kiện Vi Tính TPHCM\"}', '', 'Khuyến Mãi Hè', '', 1, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category`
--

CREATE TABLE `category` (
  `idcate` int(12) NOT NULL,
  `alias` varchar(255) DEFAULT NULL,
  `urlhinh` text NOT NULL,
  `metadesc` varchar(150) DEFAULT NULL,
  `tencate` varchar(100) NOT NULL DEFAULT '',
  `ThuTu` int(4) NOT NULL DEFAULT '1',
  `AnHien` int(1) NOT NULL DEFAULT '1',
  `NoiBat` tinyint(1) DEFAULT NULL,
  `idmenu` int(12) NOT NULL,
  `idcha` int(12) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `category`
--

INSERT INTO `category` (`idcate`, `alias`, `urlhinh`, `metadesc`, `tencate`, `ThuTu`, `AnHien`, `NoiBat`, `idmenu`, `idcha`) VALUES
(1, 'o-cung-hdd---ssd', '{\"url\" : \"http://daitailoc.com/images/O%20Cung%20HDD.jpg\",\"desc\" : \"\"}', '', 'Ổ Cứng HDD - SSD', 1, 1, 0, 15, 0),
(174, 'o-cung-hhd', '', 'Ổ cứng HHD', 'Ổ cứng HHD', 2, 1, 0, 15, 0),
(175, 'o-cung-msata', '', 'Ổ cứng mSATA', 'Ổ cứng mSATA', 3, 1, 0, 15, 0),
(176, 'ban-phim', '', 'Bàn Phím', 'Bàn Phím', 4, 1, 0, 15, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `donhang`
--

CREATE TABLE `donhang` (
  `idDH` int(11) NOT NULL,
  `MaDH` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `TenKH` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `DiaChi` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `SDT` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `Email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `NgayDat` datetime NOT NULL,
  `NgayGiao` datetime NOT NULL,
  `MaGiamGia` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `STT` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

--
-- Đang đổ dữ liệu cho bảng `donhang`
--

INSERT INTO `donhang` (`idDH`, `MaDH`, `TenKH`, `DiaChi`, `SDT`, `Email`, `NgayDat`, `NgayGiao`, `MaGiamGia`, `STT`) VALUES
(1, '', 'Huỳnh Khánh Hòa', 'Quận 6, TPHCM', '0944966929', 'aa@gmail.com', '2017-06-22 09:42:49', '2017-06-26 11:42:32', '', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hienthitrangchu`
--

CREATE TABLE `hienthitrangchu` (
  `id` int(11) NOT NULL,
  `json` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `hienthitrangchu`
--

INSERT INTO `hienthitrangchu` (`id`, `json`) VALUES
(1, '[\r\n [\r\n  {\r\n   \"name\": \"Sản Phẩm Mới Nhất\",\r\n   \"danhmuc\": 0,\r\n   \"id\": 99\r\n  },\r\n  {\r\n   \"name\": \"Sản Phẩm Nổi Bật\",\r\n   \"danhmuc\": 0,\r\n   \"id\": 98\r\n  },\r\n  {\r\n   \"name\": \"Tai Nghe\",\r\n   \"danhmuc\": 2,\r\n   \"id\": 29\r\n  },\r\n  {\r\n   \"name\": \"Màn Hình Máy Tính\",\r\n   \"danhmuc\": 1,\r\n   \"id\": 7\r\n  },\r\n  {\r\n   \"name\": \"Loa Vi Tính\",\r\n   \"danhmuc\": 2,\r\n   \"id\": 55\r\n  },\r\n  {\r\n   \"name\": \"Thiết Bị Trợ Giảng\",\r\n   \"danhmuc\": 2,\r\n   \"id\": 91\r\n  },\r\n  {\r\n   \"name\": \"Chuột Máy Tính - Bàn Phím\",\r\n   \"danhmuc\": 2,\r\n   \"id\": 22\r\n  },\r\n  {\r\n   \"name\": \"Hệ Thống Camera\",\r\n   \"danhmuc\": 2,\r\n   \"id\": 81\r\n  },\r\n  {\r\n   \"name\": \"Đế Tản Nhiệt\",\r\n   \"danhmuc\": 2,\r\n   \"id\": 68\r\n  },\r\n  {\r\n   \"name\": \"Thiết Bị Thông Minh\",\r\n   \"danhmuc\": 2,\r\n   \"id\": 72\r\n  },\r\n  {\r\n   \"name\": \"Máy Tính Xách Tay - Notebook\",\r\n   \"danhmuc\": 1,\r\n   \"id\": 12\r\n  }\r\n ]\r\n]');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `imageproduct`
--

CREATE TABLE `imageproduct` (
  `idimg` int(12) NOT NULL,
  `idsp` int(12) NOT NULL,
  `jsonurlHinh` varchar(1000) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loaitintuc`
--

CREATE TABLE `loaitintuc` (
  `idLoai` int(11) NOT NULL,
  `TenLoai` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Alias` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Hinh` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `MoTa` text COLLATE utf8_unicode_ci NOT NULL,
  `Title` text COLLATE utf8_unicode_ci NOT NULL,
  `Des` text COLLATE utf8_unicode_ci NOT NULL,
  `Keyword` text COLLATE utf8_unicode_ci NOT NULL,
  `Parent` int(11) NOT NULL,
  `AnHien` tinyint(1) NOT NULL,
  `ThuTu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `menu`
--

CREATE TABLE `menu` (
  `idmenu` int(12) NOT NULL,
  `alias` varchar(255) DEFAULT NULL,
  `urlhinh` varchar(500) NOT NULL,
  `metadesc` varchar(150) NOT NULL,
  `tenMenu` varchar(100) NOT NULL DEFAULT '',
  `ThuTu` int(4) NOT NULL DEFAULT '1',
  `ThuTuTrangChu` int(11) NOT NULL,
  `AnHien` int(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `menu`
--

INSERT INTO `menu` (`idmenu`, `alias`, `urlhinh`, `metadesc`, `tenMenu`, `ThuTu`, `ThuTuTrangChu`, `AnHien`) VALUES
(2, 'thiet-bi-van-phong', '', 'Thiết Bị Văn Phòng là một trong các sản phẩm nổi bật của ĐẠI TÀI LỘC', 'Thiết Bị Văn Phòng', 2, 2, 1),
(15, 'thiet-bi-dien-tu', '', 'Thiết bị điện tử', 'Thiết bị điện tử', 1, 1, 1),
(16, 'thiet-bi-gia-dinh', '', 'Thiết bị gia đình', 'Thiết bị gia đình', 3, 3, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orderdetail`
--

CREATE TABLE `orderdetail` (
  `idctdh` int(11) NOT NULL,
  `idDH` int(11) NOT NULL,
  `idsp` int(11) NOT NULL,
  `tensp` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mausac` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `kichthuoc` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `soluong` int(11) NOT NULL,
  `dongia` double NOT NULL,
  `thanhtien` double NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `popup`
--

CREATE TABLE `popup` (
  `idpopup` int(12) NOT NULL,
  `alias` varchar(255) DEFAULT NULL,
  `urlhinh` varchar(500) NOT NULL,
  `metadesc` varchar(150) NOT NULL,
  `name` varchar(100) NOT NULL DEFAULT '',
  `urlLink` varchar(100) NOT NULL DEFAULT '',
  `ThuTu` int(4) NOT NULL DEFAULT '1',
  `AnHien` int(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `popup`
--

INSERT INTO `popup` (`idpopup`, `alias`, `urlhinh`, `metadesc`, `name`, `urlLink`, `ThuTu`, `AnHien`) VALUES
(1, 'abcxyz', '{\"url\" : \"http://daitailoc.com/images/Dai-Tai-Loc-Computer.png\",\"desc\" : \"dai tai loc\"}', '', 'abcxyz', 'http://daitailoc.com/danhmuc/linh-kien-vi-tinh', 1, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pricelist`
--

CREATE TABLE `pricelist` (
  `idpl` int(12) NOT NULL,
  `namepl` varchar(100) NOT NULL DEFAULT '',
  `alias` varchar(255) DEFAULT NULL,
  `urlhinh` varchar(500) NOT NULL,
  `metadesc` varchar(500) NOT NULL,
  `introtext` varchar(500) NOT NULL,
  `Content` longtext NOT NULL,
  `status` int(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `pricelist`
--

INSERT INTO `pricelist` (`idpl`, `namepl`, `alias`, `urlhinh`, `metadesc`, `introtext`, `Content`, `status`) VALUES
(13, 'Bảng Giá Ổ Cứng', 'bang-gia-o-cung', '{\r\n			\"url\" : \"http://daitailoc.com/images/bang-gia-hdd.jpg\",\r\n			\"desc\" : \"\"\r\n		}', '', 'Bảng giá ổ cứng dung lượng từ 40 đến 4TB được <b>VI TÍNH ĐẠI TÀI LỘC</b> cập nhật liên tục trong ngày. GIảm giá ngay khi... ', '<table style=\"table-style2\">\r\n	<tbody>\r\n		<tr>\r\n			<td colspan=\"3\" style=\"width:936px;height:36px;\">\r\n				<p align=\"center\">\r\n					<strong>HDD&nbsp;&nbsp;LAPTOP</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:763px;height:25px;\">\r\n				<p>\r\n					<strong>Hdd&nbsp;</strong><strong>Laptop</strong><strong>&nbsp;&nbsp;&nbsp; 40GB&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; SEAGATE -&nbsp;&nbsp; ATA</strong></p>\r\n			</td>\r\n			<td nowrap=\"nowrap\" style=\"width:105px;height:25px;\">\r\n				<p align=\"right\">\r\n					<strong>170.000</strong></p>\r\n			</td>\r\n			<td style=\"width:68px;height:25px;\">\r\n				<p align=\"center\">\r\n					12T</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:763px;height:25px;\">\r\n				<p>\r\n					<strong>Hdd&nbsp;</strong><strong>Laptop</strong><strong>&nbsp;&nbsp;&nbsp; 80GB&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; SEAGATE -&nbsp;&nbsp; ATA</strong></p>\r\n			</td>\r\n			<td nowrap=\"nowrap\" style=\"width:105px;height:25px;\">\r\n				<p align=\"right\">\r\n					<strong>270.000</strong></p>\r\n			</td>\r\n			<td style=\"width:68px;height:25px;\">\r\n				<p align=\"center\">\r\n					12T</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:763px;height:25px;\">\r\n				<p>\r\n					<strong>Hdd&nbsp;</strong><strong>Laptop</strong><strong>&nbsp;&nbsp;&nbsp; 80GB&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; SEAGATE -&nbsp; SATA</strong></p>\r\n			</td>\r\n			<td style=\"width:105px;height:25px;\">\r\n				<p align=\"right\">\r\n					<strong>390.000</strong></p>\r\n			</td>\r\n			<td style=\"width:68px;height:25px;\">\r\n				<p align=\"center\">\r\n					12T</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:763px;height:25px;\">\r\n				<p>\r\n					<strong>Hdd&nbsp;</strong><strong>Laptop</strong><strong>&nbsp;&nbsp;&nbsp; 120GB&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; SEAGATE -&nbsp; SATA</strong></p>\r\n			</td>\r\n			<td style=\"width:105px;height:25px;\">\r\n				<p align=\"right\">\r\n					<strong>430.000</strong></p>\r\n			</td>\r\n			<td style=\"width:68px;height:25px;\">\r\n				<p align=\"center\">\r\n					12T</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:763px;height:25px;\">\r\n				<p>\r\n					<strong>Hdd&nbsp;</strong><strong>Laptop</strong><strong>&nbsp;&nbsp;&nbsp; 160Gb&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; SEAGATE -&nbsp;&nbsp; SATA&nbsp;</strong></p>\r\n			</td>\r\n			<td style=\"width:105px;height:25px;\">\r\n				<p align=\"right\">\r\n					<strong>480.000</strong></p>\r\n			</td>\r\n			<td style=\"width:68px;height:25px;\">\r\n				<p align=\"center\">\r\n					12T</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:763px;height:25px;\">\r\n				<p>\r\n					<strong>Hdd&nbsp;</strong><strong>Laptop </strong><strong>&nbsp;250Gb&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; SEAGATE&nbsp; ------ Sata</strong></p>\r\n			</td>\r\n			<td style=\"width:105px;height:25px;\">\r\n				<p align=\"right\">\r\n					<strong>640.000</strong></p>\r\n			</td>\r\n			<td style=\"width:68px;height:25px;\">\r\n				<p align=\"center\">\r\n					12T</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:763px;height:25px;\">\r\n				<p>\r\n					<strong>Hdd&nbsp;</strong><strong>Laptop</strong><strong>&nbsp;&nbsp;320G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; SEAGATE ------- Sata</strong></p>\r\n			</td>\r\n			<td style=\"width:105px;height:25px;\">\r\n				<p align=\"right\">\r\n					<strong>700.000</strong></p>\r\n			</td>\r\n			<td style=\"width:68px;height:25px;\">\r\n				<p align=\"center\">\r\n					12T</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:763px;height:25px;\">\r\n				<p>\r\n					<strong>Hdd&nbsp;</strong><strong>Laptop</strong><strong>&nbsp;&nbsp;500G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; SEAGATE&nbsp; ----- Sata</strong></p>\r\n			</td>\r\n			<td style=\"width:105px;height:25px;\">\r\n				<p align=\"right\">\r\n					<strong>780.000</strong></p>\r\n			</td>\r\n			<td style=\"width:68px;height:25px;\">\r\n				<p align=\"center\">\r\n					12T</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:763px;height:25px;\">\r\n				<p>\r\n					<strong>Hdd&nbsp;</strong><strong>Laptop</strong><strong>&nbsp;&nbsp;500G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; SEAGATE/HITACHI/WD&nbsp; --- 7200 V&Ograve;NG ----- BH 2 NĂM</strong></p>\r\n			</td>\r\n			<td style=\"width:105px;height:25px;\">\r\n				<p align=\"right\">\r\n					<strong>810.000</strong></p>\r\n			</td>\r\n			<td style=\"width:68px;height:25px;\">\r\n				<p align=\"center\">\r\n					24T</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:763px;height:25px;\">\r\n				<p>\r\n					<strong>Hdd&nbsp;</strong><strong>Laptop</strong><strong>&nbsp;&nbsp;1T&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; HITACHI - SATA&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; CHINH HANG</strong></p>\r\n			</td>\r\n			<td style=\"width:105px;height:25px;\">\r\n				<p align=\"right\">\r\n					<strong>1,170.000</strong></p>\r\n			</td>\r\n			<td style=\"width:68px;height:25px;\">\r\n				<p align=\"center\">\r\n					12T</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"3\" style=\"width:936px;height:36px;\">\r\n				<p align=\"center\">\r\n					<strong>HDD&nbsp;&nbsp;- CAM KẾT ĐỔI NGAY</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:763px;height:25px;\">\r\n				<p>\r\n					<strong>HDD -&nbsp; </strong><strong>40GB&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strong><strong>SEAGATE -&nbsp;&nbsp;ATA&nbsp;</strong></p>\r\n			</td>\r\n			<td style=\"width:105px;height:25px;\">\r\n				<p align=\"right\">\r\n					<strong>100.000</strong></p>\r\n			</td>\r\n			<td style=\"width:68px;height:25px;\">\r\n				<p align=\"center\">\r\n					12T</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:763px;height:25px;\">\r\n				<p>\r\n					<strong>HDD -&nbsp; </strong><strong>80GB</strong><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; SEAGATE -&nbsp;&nbsp;ATA&nbsp;</strong></p>\r\n			</td>\r\n			<td style=\"width:105px;height:25px;\">\r\n				<p align=\"right\">\r\n					<strong>110.000</strong></p>\r\n			</td>\r\n			<td style=\"width:68px;height:25px;\">\r\n				<p align=\"center\">\r\n					12T</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:763px;height:25px;\">\r\n				<p>\r\n					<strong>HDD -&nbsp; </strong><strong>80GB</strong><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; SEAGATE -&nbsp;&nbsp;ATA&nbsp;------------ MỎNG</strong></p>\r\n			</td>\r\n			<td style=\"width:105px;height:25px;\">\r\n				<p align=\"right\">\r\n					<strong>150.000</strong></p>\r\n			</td>\r\n			<td style=\"width:68px;height:25px;\">\r\n				<p align=\"center\">\r\n					12T</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:763px;height:25px;\">\r\n				<p>\r\n					<strong>HDD -&nbsp; </strong><strong>160GB&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strong><strong>&nbsp;SEAGATE/SAMSUNG&nbsp; -&nbsp;&nbsp;ATA&nbsp;</strong></p>\r\n			</td>\r\n			<td style=\"width:105px;height:25px;\">\r\n				<p align=\"right\">\r\n					<strong>150.000</strong></p>\r\n			</td>\r\n			<td style=\"width:68px;height:25px;\">\r\n				<p align=\"center\">\r\n					12T</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:763px;height:25px;\">\r\n				<p>\r\n					<strong>HDD -&nbsp; </strong><strong>160GB&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strong><strong>&nbsp;SEAGATE&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -&nbsp;&nbsp;ATA&nbsp;---------- MỎNG</strong></p>\r\n			</td>\r\n			<td style=\"width:105px;height:25px;\">\r\n				<p align=\"right\">\r\n					<strong>260.000</strong></p>\r\n			</td>\r\n			<td style=\"width:68px;height:25px;\">\r\n				<p align=\"center\">\r\n					12T</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:763px;height:25px;\">\r\n				<p>\r\n					<strong>HDD -&nbsp; </strong><strong>250GB</strong><strong>&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;SEAGATE&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ATA</strong></p>\r\n			</td>\r\n			<td style=\"width:105px;height:25px;\">\r\n				<p align=\"right\">\r\n					<strong>250.000</strong></p>\r\n			</td>\r\n			<td style=\"width:68px;height:25px;\">\r\n				<p align=\"center\">\r\n					12T</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:763px;height:25px;\">\r\n				<p>\r\n					<strong>HDD -&nbsp; </strong><strong>500GB</strong><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; SEAGATE&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ATA</strong></p>\r\n			</td>\r\n			<td style=\"width:105px;height:25px;\">\r\n				<p align=\"right\">\r\n					<strong>530.000</strong></p>\r\n			</td>\r\n			<td style=\"width:68px;height:25px;\">\r\n				<p align=\"center\">\r\n					12T</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:763px;height:12px;\">\r\n				<p>\r\n					&nbsp;</p>\r\n			</td>\r\n			<td style=\"width:105px;height:12px;\">\r\n				<p>\r\n					&nbsp;</p>\r\n			</td>\r\n			<td style=\"width:68px;height:12px;\">\r\n				<p align=\"center\">\r\n					&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:763px;height:25px;\">\r\n				<p>\r\n					<strong>HDD -&nbsp; </strong><strong>80GB</strong><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; SEAGATE&nbsp;&nbsp;&nbsp; -&nbsp;&nbsp;SATA - D&Agrave;Y</strong></p>\r\n			</td>\r\n			<td nowrap=\"nowrap\" style=\"width:105px;height:25px;\">\r\n				<p align=\"right\">\r\n					<strong>110.000</strong></p>\r\n			</td>\r\n			<td style=\"width:68px;height:25px;\">\r\n				<p align=\"center\">\r\n					12T</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:763px;height:25px;\">\r\n				<p>\r\n					<strong>HDD - </strong><strong>&nbsp;80GB</strong><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; SEAGATE&nbsp;&nbsp;&nbsp; -&nbsp;&nbsp;SATA - MỎNG</strong></p>\r\n			</td>\r\n			<td style=\"width:105px;height:25px;\">\r\n				<p align=\"right\">\r\n					<strong>130.000</strong></p>\r\n			</td>\r\n			<td style=\"width:68px;height:25px;\">\r\n				<p align=\"center\">\r\n					12T</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:763px;height:25px;\">\r\n				<p>\r\n					<strong>HDD - </strong><strong>&nbsp;160GB&nbsp; </strong><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;SEAGATE&nbsp;&nbsp;&nbsp; -&nbsp;&nbsp;SATA - MỎNG</strong></p>\r\n			</td>\r\n			<td style=\"width:105px;height:25px;\">\r\n				<p align=\"right\">\r\n					<strong>210.000</strong></p>\r\n			</td>\r\n			<td style=\"width:68px;height:25px;\">\r\n				<p align=\"center\">\r\n					12T</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:763px;height:25px;\">\r\n				<p>\r\n					<strong>HDD - </strong><strong>&nbsp;250GB&nbsp; </strong><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;SEAGATE&nbsp;&nbsp;&nbsp; -&nbsp;&nbsp;SATA - 1N&nbsp; ----- DAY</strong></p>\r\n			</td>\r\n			<td style=\"width:105px;height:25px;\">\r\n				<p align=\"right\">\r\n					<strong>330.000</strong></p>\r\n			</td>\r\n			<td style=\"width:68px;height:25px;\">\r\n				<p align=\"center\">\r\n					12T</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:763px;height:25px;\">\r\n				<p>\r\n					<strong>HDD - </strong><strong>&nbsp;250GB&nbsp; </strong><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;SEAGATE&nbsp;&nbsp;&nbsp; -&nbsp;&nbsp;SATA - 1N&nbsp;&nbsp; ----MỎNG</strong></p>\r\n			</td>\r\n			<td style=\"width:105px;height:25px;\">\r\n				<p align=\"right\">\r\n					<strong>365.000</strong></p>\r\n			</td>\r\n			<td style=\"width:68px;height:25px;\">\r\n				<p align=\"center\">\r\n					12T</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:763px;height:11px;\">\r\n				<p>\r\n					&nbsp;</p>\r\n			</td>\r\n			<td style=\"width:105px;height:11px;\">\r\n				<p>\r\n					&nbsp;</p>\r\n			</td>\r\n			<td style=\"width:68px;height:11px;\">\r\n				<p align=\"center\">\r\n					&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:763px;height:25px;\">\r\n				<p>\r\n					<strong>HDD - </strong><strong>&nbsp;250GB&nbsp; </strong><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;SEAGATE&nbsp;&nbsp;&nbsp; -&nbsp;&nbsp;SATA ----- </strong><strong>CTY</strong></p>\r\n			</td>\r\n			<td style=\"width:105px;height:25px;\">\r\n				<p align=\"right\">\r\n					<strong>400.000</strong></p>\r\n			</td>\r\n			<td style=\"width:68px;height:25px;\">\r\n				<p align=\"center\">\r\n					24T</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:763px;height:25px;\">\r\n				<p>\r\n					<strong>HDD - </strong><strong>&nbsp;250GB&nbsp; </strong><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;SEAGATE&nbsp;&nbsp;&nbsp; -&nbsp;&nbsp;SATA - </strong><strong>2N ----- 18A --- Bo sương c&aacute;</strong></p>\r\n			</td>\r\n			<td style=\"width:105px;height:25px;\">\r\n				<p align=\"right\">\r\n					<strong>480.000</strong></p>\r\n			</td>\r\n			<td style=\"width:68px;height:25px;\">\r\n				<p align=\"center\">\r\n					24T</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:763px;height:25px;\">\r\n				<p>\r\n					<strong>HDD - </strong><strong>&nbsp;250GB&nbsp; </strong><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;WD&nbsp;&nbsp;&nbsp; -&nbsp;&nbsp;SATA - </strong><strong>2N ----- TEM VISCOM/VITA</strong></p>\r\n			</td>\r\n			<td style=\"width:105px;height:25px;\">\r\n				<p align=\"right\">\r\n					<strong>480.000</strong></p>\r\n			</td>\r\n			<td style=\"width:68px;height:25px;\">\r\n				<p align=\"center\">\r\n					24T</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:763px;height:25px;\">\r\n				<p>\r\n					<strong>HDD - </strong><strong>&nbsp;320GB&nbsp; </strong><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;SEAGATE&nbsp;&nbsp;&nbsp; -&nbsp;&nbsp;SATA - </strong><strong>2N ----- CTY </strong></p>\r\n			</td>\r\n			<td style=\"width:105px;height:25px;\">\r\n				<p align=\"right\">\r\n					<strong>410.000</strong></p>\r\n			</td>\r\n			<td style=\"width:68px;height:25px;\">\r\n				<p align=\"center\">\r\n					24T</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:763px;height:25px;\">\r\n				<p>\r\n					<strong>HDD - </strong><strong>&nbsp;500GB&nbsp; </strong><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;SEAGATE&nbsp;&nbsp;&nbsp; -&nbsp;&nbsp;SATA - </strong><strong>2N ----- 18A --- Bo sương c&aacute;</strong></p>\r\n			</td>\r\n			<td style=\"width:105px;height:25px;\">\r\n				<p align=\"right\">\r\n					<strong>810.000</strong></p>\r\n			</td>\r\n			<td style=\"width:68px;height:25px;\">\r\n				<p align=\"center\">\r\n					24T</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:763px;height:25px;\">\r\n				<p>\r\n					<strong>HDD - </strong><strong>&nbsp;1TB&nbsp; </strong><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;SEAGATE&nbsp;&nbsp;&nbsp; -&nbsp;&nbsp;SATA ----- </strong><strong>2N ----- 18A --- Bo sương c&aacute;</strong></p>\r\n			</td>\r\n			<td style=\"width:105px;height:25px;\">\r\n				<p align=\"right\">\r\n					<strong>1,060.000</strong></p>\r\n			</td>\r\n			<td style=\"width:68px;height:25px;\">\r\n				<p align=\"center\">\r\n					24T</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:763px;height:26px;\">\r\n				<p>\r\n					<strong>HDD - </strong><strong>&nbsp;2TB&nbsp; </strong><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;SEAGATE&nbsp;&nbsp;&nbsp; -&nbsp;&nbsp;SATA ----- </strong><strong>2N ----- 18A --- Bo sương c&aacute;</strong></p>\r\n			</td>\r\n			<td style=\"width:105px;height:26px;\">\r\n				<p align=\"right\">\r\n					<strong>1,450.000</strong></p>\r\n			</td>\r\n			<td style=\"width:68px;height:26px;\">\r\n				<p align=\"center\">\r\n					24T</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:763px;height:26px;\">\r\n				<p>\r\n					<strong>HDD - </strong><strong>&nbsp;3TB&nbsp; </strong><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;SEAGATE&nbsp;&nbsp;&nbsp; -&nbsp;&nbsp;SATA ----- </strong><strong>2N ----- 18A --- Bo sương c&aacute;</strong></p>\r\n			</td>\r\n			<td style=\"width:105px;height:26px;\">\r\n				<p align=\"right\">\r\n					<strong>2,140.000</strong></p>\r\n			</td>\r\n			<td style=\"width:68px;height:26px;\">\r\n				<p align=\"center\">\r\n					24T</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:763px;height:26px;\">\r\n				<p>\r\n					<strong>HDD - </strong><strong>&nbsp;4TB&nbsp; </strong><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;SEAGATE&nbsp;&nbsp;&nbsp; -&nbsp;&nbsp;SATA ----- </strong><strong>2N ----- 18A --- Bo sương c&aacute;</strong></p>\r\n			</td>\r\n			<td style=\"width:105px;height:26px;\">\r\n				<p align=\"right\">\r\n					<strong>3,150.000</strong></p>\r\n			</td>\r\n			<td style=\"width:68px;height:26px;\">\r\n				<p align=\"center\">\r\n					24T</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:763px;height:26px;\">\r\n				<p>\r\n					<strong><em>HDD H&Agrave;NG CH&Iacute;NH HẠNG </em></strong></p>\r\n			</td>\r\n			<td style=\"width:105px;height:26px;\">\r\n				<p>\r\n					&nbsp;</p>\r\n			</td>\r\n			<td style=\"width:68px;height:26px;\">\r\n				<p>\r\n					&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:763px;height:26px;\">\r\n				<p>\r\n					<strong>Hdd Seagate 500 Sata&nbsp;3&nbsp; </strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>\r\n			</td>\r\n			<td style=\"width:105px;height:26px;\">\r\n				<p align=\"right\">\r\n					<strong>1,055.000</strong></p>\r\n			</td>\r\n			<td style=\"width:68px;height:26px;\">\r\n				<p align=\"center\">\r\n					24T</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:763px;height:26px;\">\r\n				<p>\r\n					<strong>Hdd Seagate 1TB Sata 3&nbsp; </strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>\r\n			</td>\r\n			<td style=\"width:105px;height:26px;\">\r\n				<p align=\"right\">\r\n					<strong>1,200.000</strong></p>\r\n			</td>\r\n			<td style=\"width:68px;height:26px;\">\r\n				<p align=\"center\">\r\n					24T</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:763px;height:26px;\">\r\n				<p>\r\n					<strong>Hdd Seagate 2TB Sata 3&nbsp; </strong></p>\r\n			</td>\r\n			<td style=\"width:105px;height:26px;\">\r\n				<p align=\"right\">\r\n					<strong>1,810.000</strong></p>\r\n			</td>\r\n			<td style=\"width:68px;height:26px;\">\r\n				<p align=\"center\">\r\n					24T</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:763px;height:26px;\">\r\n				<p>\r\n					<strong>Hdd Seagate 3TB Sata 3&nbsp; </strong></p>\r\n			</td>\r\n			<td style=\"width:105px;height:26px;\">\r\n				<p align=\"right\">\r\n					<strong>2,400.000</strong></p>\r\n			</td>\r\n			<td style=\"width:68px;height:26px;\">\r\n				<p align=\"center\">\r\n					24T</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:763px;height:26px;\">\r\n				<p>\r\n					<strong>Hdd Seagate 4TB Sata 3&nbsp; </strong></p>\r\n			</td>\r\n			<td style=\"width:105px;height:26px;\">\r\n				<p align=\"right\">\r\n					<strong>3,450.000</strong></p>\r\n			</td>\r\n			<td style=\"width:68px;height:26px;\">\r\n				<p align=\"center\">\r\n					24T</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:763px;height:12px;\">\r\n				<p>\r\n					&nbsp;</p>\r\n			</td>\r\n			<td style=\"width:105px;height:12px;\">\r\n				<p>\r\n					&nbsp;</p>\r\n			</td>\r\n			<td style=\"width:68px;height:12px;\">\r\n				<p align=\"center\">\r\n					&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:763px;height:26px;\">\r\n				<p>\r\n					<strong>Hdd Western&nbsp;250G Sata&nbsp;Blue &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; </strong></p>\r\n			</td>\r\n			<td style=\"width:105px;height:26px;\">\r\n				<p align=\"right\">\r\n					<strong>975.000</strong></p>\r\n			</td>\r\n			<td style=\"width:68px;height:26px;\">\r\n				<p align=\"center\">\r\n					24T</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:763px;height:26px;\">\r\n				<p>\r\n					<strong>Hdd Western&nbsp;500G Sata 3------ Blue&nbsp;&nbsp;&nbsp; &nbsp;</strong></p>\r\n			</td>\r\n			<td style=\"width:105px;height:26px;\">\r\n				<p align=\"right\">\r\n					<strong>1,055.000</strong></p>\r\n			</td>\r\n			<td style=\"width:68px;height:26px;\">\r\n				<p align=\"center\">\r\n					24T</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:763px;height:26px;\">\r\n				<p>\r\n					<strong>Hdd Western&nbsp;500G Sata 3------ Green&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</strong></p>\r\n			</td>\r\n			<td style=\"width:105px;height:26px;\">\r\n				<p align=\"right\">\r\n					<strong>1,110.000</strong></p>\r\n			</td>\r\n			<td style=\"width:68px;height:26px;\">\r\n				<p align=\"center\">\r\n					24T</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:763px;height:26px;\">\r\n				<p>\r\n					<strong>Hdd Western&nbsp;500G Sata 3 ----- BLACK&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</strong></p>\r\n			</td>\r\n			<td style=\"width:105px;height:26px;\">\r\n				<p align=\"right\">\r\n					<strong>1,530.000</strong></p>\r\n			</td>\r\n			<td style=\"width:68px;height:26px;\">\r\n				<p align=\"center\">\r\n					24T</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:763px;height:26px;\">\r\n				<p>\r\n					<strong>Hdd Western&nbsp;1TB &nbsp;&nbsp;Sata 3 ----- Blue </strong></p>\r\n			</td>\r\n			<td style=\"width:105px;height:26px;\">\r\n				<p align=\"right\">\r\n					<strong>1,210.000</strong></p>\r\n			</td>\r\n			<td style=\"width:68px;height:26px;\">\r\n				<p align=\"center\">\r\n					24T</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:763px;height:26px;\">\r\n				<p>\r\n					<strong>Hdd Western&nbsp;1TB &nbsp;&nbsp;Sata 3 ------Green</strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>\r\n			</td>\r\n			<td style=\"width:105px;height:26px;\">\r\n				<p align=\"right\">\r\n					<strong>1,220.000</strong></p>\r\n			</td>\r\n			<td style=\"width:68px;height:26px;\">\r\n				<p align=\"center\">\r\n					24T</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:763px;height:26px;\">\r\n				<p>\r\n					<strong>Hdd Western&nbsp;1TB &nbsp;&nbsp;Sata 3 ------RED</strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>\r\n			</td>\r\n			<td style=\"width:105px;height:26px;\">\r\n				<p align=\"right\">\r\n					<strong>1,630.000</strong></p>\r\n			</td>\r\n			<td style=\"width:68px;height:26px;\">\r\n				<p align=\"center\">\r\n					24T</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:763px;height:25px;\">\r\n				<p>\r\n					<strong>Hdd Western&nbsp;1TB &nbsp;&nbsp;Sata 3 ---- BLACK --- Chuy&ecirc;n Boot Room</strong>&nbsp;&nbsp;&nbsp;&nbsp;</p>\r\n			</td>\r\n			<td style=\"width:105px;height:25px;\">\r\n				<p align=\"right\">\r\n					<strong>1,710.000</strong></p>\r\n			</td>\r\n			<td style=\"width:68px;height:25px;\">\r\n				<p align=\"center\">\r\n					24T</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:763px;height:26px;\">\r\n				<p>\r\n					<strong>Hdd Western&nbsp;2TB Sata 3 ------- Green </strong></p>\r\n			</td>\r\n			<td style=\"width:105px;height:26px;\">\r\n				<p align=\"right\">\r\n					<strong>1,800.000</strong></p>\r\n			</td>\r\n			<td style=\"width:68px;height:26px;\">\r\n				<p align=\"center\">\r\n					24T</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:763px;height:26px;\">\r\n				<p>\r\n					<strong>Hdd Western&nbsp;2TB Sata 3 ------- RED </strong></p>\r\n			</td>\r\n			<td style=\"width:105px;height:26px;\">\r\n				<p align=\"right\">\r\n					<strong>2,345.000</strong></p>\r\n			</td>\r\n			<td style=\"width:68px;height:26px;\">\r\n				<p align=\"center\">\r\n					24T</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:763px;height:26px;\">\r\n				<p>\r\n					<strong>Hdd Western&nbsp;2TB Sata 3&nbsp; ----- BLACK&nbsp;&nbsp;&nbsp;&nbsp;</strong></p>\r\n			</td>\r\n			<td style=\"width:105px;height:26px;\">\r\n				<p align=\"right\">\r\n					<strong>3,165.000</strong></p>\r\n			</td>\r\n			<td style=\"width:68px;height:26px;\">\r\n				<p align=\"center\">\r\n					24T</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:763px;height:26px;\">\r\n				<p>\r\n					<strong>Hdd Western&nbsp;3TB Sata 3 Green </strong></p>\r\n			</td>\r\n			<td style=\"width:105px;height:26px;\">\r\n				<p align=\"right\">\r\n					<strong>2,320.000</strong></p>\r\n			</td>\r\n			<td style=\"width:68px;height:26px;\">\r\n				<p align=\"center\">\r\n					24T</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:763px;height:26px;\">\r\n				<p>\r\n					<strong>Hdd Western&nbsp;3TB Sata 3 ------- RED </strong></p>\r\n			</td>\r\n			<td style=\"width:105px;height:26px;\">\r\n				<p align=\"right\">\r\n					<strong>2,930.000</strong></p>\r\n			</td>\r\n			<td style=\"width:68px;height:26px;\">\r\n				<p align=\"center\">\r\n					24T</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:763px;height:26px;\">\r\n				<p>\r\n					<strong>Hdd Western&nbsp;3TB Sata 3 BLUE NEW </strong></p>\r\n			</td>\r\n			<td style=\"width:105px;height:26px;\">\r\n				<p align=\"right\">\r\n					<strong>2,450.000</strong></p>\r\n			</td>\r\n			<td style=\"width:68px;height:26px;\">\r\n				<p align=\"center\">\r\n					24T</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:763px;height:26px;\">\r\n				<p>\r\n					<strong>Hdd Western&nbsp;3TB Sata 3&nbsp; ----- BLACK&nbsp;&nbsp;&nbsp;&nbsp;</strong></p>\r\n			</td>\r\n			<td style=\"width:105px;height:26px;\">\r\n				<p align=\"right\">\r\n					<strong>4,070.000</strong></p>\r\n			</td>\r\n			<td style=\"width:68px;height:26px;\">\r\n				<p align=\"center\">\r\n					24T</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:763px;height:26px;\">\r\n				<p>\r\n					<strong>Hdd Western&nbsp;4TB Sata 3 Green </strong></p>\r\n			</td>\r\n			<td style=\"width:105px;height:26px;\">\r\n				<p align=\"right\">\r\n					<strong>3,440.000</strong></p>\r\n			</td>\r\n			<td style=\"width:68px;height:26px;\">\r\n				<p align=\"center\">\r\n					24T</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:763px;height:26px;\">\r\n				<p>\r\n					<strong>Hdd Western&nbsp;4TB Sata 3 ------- RED</strong></p>\r\n			</td>\r\n			<td style=\"width:105px;height:26px;\">\r\n				<p align=\"right\">\r\n					<strong>4,155.000</strong></p>\r\n			</td>\r\n			<td style=\"width:68px;height:26px;\">\r\n				<p align=\"center\">\r\n					24T</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:763px;height:26px;\">\r\n				<p>\r\n					<strong>Hdd Western&nbsp;4TB Sata 3&nbsp; ----- BLACK&nbsp;&nbsp;&nbsp;&nbsp;</strong></p>\r\n			</td>\r\n			<td style=\"width:105px;height:26px;\">\r\n				<p align=\"right\">\r\n					<strong>5,320.000</strong></p>\r\n			</td>\r\n			<td style=\"width:68px;height:26px;\">\r\n				<p align=\"center\">\r\n					24T</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"3\" style=\"width:936px;height:38px;\">\r\n				<p align=\"center\">\r\n					<strong>HDD - SSD </strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:763px;height:26px;\">\r\n				<p>\r\n					<strong>ĐẾ&nbsp;&nbsp;&nbsp; SSD&nbsp;&nbsp; SẮT</strong></p>\r\n			</td>\r\n			<td style=\"width:105px;height:26px;\">\r\n				<p align=\"right\">\r\n					<strong>35.000</strong></p>\r\n			</td>\r\n			<td style=\"width:68px;height:26px;\">\r\n				<p align=\"center\">\r\n					&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:763px;height:25px;\">\r\n				<p>\r\n					<strong>SSD&nbsp; - 120GB&nbsp;&nbsp;&nbsp; TEAM&nbsp;&nbsp; - Sata 3 ------------- H&Agrave;NG CH&Iacute;NH H&Atilde;NG</strong></p>\r\n			</td>\r\n			<td style=\"width:105px;height:25px;\">\r\n				<p align=\"right\">\r\n					<strong>1,150.000</strong></p>\r\n			</td>\r\n			<td style=\"width:68px;height:25px;\">\r\n				<p align=\"center\">\r\n					36T</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:763px;height:25px;\">\r\n				<p>\r\n					<strong>SSD&nbsp; - 240GB&nbsp;&nbsp;&nbsp; TEAM&nbsp;&nbsp;&nbsp; - Sata 3 ------------ H&Agrave;NG CH&Iacute;NH H&Atilde;NG</strong></p>\r\n			</td>\r\n			<td style=\"width:105px;height:25px;\">\r\n				<p align=\"right\">\r\n					<strong>2,050.000</strong></p>\r\n			</td>\r\n			<td style=\"width:68px;height:25px;\">\r\n				<p align=\"center\">\r\n					36T</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:763px;height:9px;\">\r\n				<p>\r\n					&nbsp;</p>\r\n			</td>\r\n			<td style=\"width:105px;height:9px;\">\r\n				<p>\r\n					&nbsp;</p>\r\n			</td>\r\n			<td style=\"width:68px;height:9px;\">\r\n				<p align=\"center\">\r\n					&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:763px;height:25px;\">\r\n				<p>\r\n					<strong>SSD&nbsp; - 120GB&nbsp;&nbsp;&nbsp; KINGTON&nbsp;&nbsp;&nbsp; - Sata 3 ------------- CTY ------ C&oacute; đế sắt</strong></p>\r\n			</td>\r\n			<td style=\"width:105px;height:25px;\">\r\n				<p align=\"right\">\r\n					<strong>890.000</strong></p>\r\n			</td>\r\n			<td style=\"width:68px;height:25px;\">\r\n				<p align=\"center\">\r\n					36T</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:763px;height:25px;\">\r\n				<p>\r\n					<strong>SSD&nbsp; - 120GB&nbsp;&nbsp;&nbsp; KINGTON&nbsp;&nbsp;&nbsp; - Sata 3 ------------- Ch&iacute;nh h&atilde;ng Viết Sơn ------ C&oacute; đế sắt</strong></p>\r\n			</td>\r\n			<td style=\"width:105px;height:25px;\">\r\n				<p align=\"right\">\r\n					<strong>1,200.000</strong></p>\r\n			</td>\r\n			<td style=\"width:68px;height:25px;\">\r\n				<p align=\"center\">\r\n					36T</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:763px;height:25px;\">\r\n				<p>\r\n					<strong>SSD&nbsp; - 240GB&nbsp;&nbsp;&nbsp; KINGTON&nbsp;&nbsp;&nbsp; - Sata 3 ------------- CTY ------ C&oacute; đế sắt</strong></p>\r\n			</td>\r\n			<td style=\"width:105px;height:25px;\">\r\n				<p align=\"right\">\r\n					<strong>1,800.000</strong></p>\r\n			</td>\r\n			<td style=\"width:68px;height:25px;\">\r\n				<p align=\"center\">\r\n					36T</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:763px;height:25px;\">\r\n				<p>\r\n					<strong>SSD&nbsp; - 240GB&nbsp;&nbsp;&nbsp; KINGTON&nbsp;&nbsp;&nbsp; - Sata 3 ------------- Ch&iacute;nh h&atilde;ng Viết Sơn ------ C&oacute; đế sắt</strong></p>\r\n			</td>\r\n			<td style=\"width:105px;height:25px;\">\r\n				<p align=\"right\">\r\n					<strong>2,120.000</strong></p>\r\n			</td>\r\n			<td style=\"width:68px;height:25px;\">\r\n				<p align=\"center\">\r\n					36T</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:763px;height:12px;\">\r\n				<p>\r\n					&nbsp;</p>\r\n			</td>\r\n			<td style=\"width:105px;height:12px;\">\r\n				<p>\r\n					&nbsp;</p>\r\n			</td>\r\n			<td style=\"width:68px;height:12px;\">\r\n				<p align=\"center\">\r\n					&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:763px;height:25px;\">\r\n				<p>\r\n					<strong>SSD&nbsp; - 120GB&nbsp;&nbsp;&nbsp; INTEL&nbsp;&nbsp; - Sata 3 -------------------- ch&iacute;nh h&atilde;ng&nbsp; ------ C&oacute; đế sắt</strong></p>\r\n			</td>\r\n			<td style=\"width:105px;height:25px;\">\r\n				<p align=\"right\">\r\n					<strong>1,640.000</strong></p>\r\n			</td>\r\n			<td style=\"width:68px;height:25px;\">\r\n				<p align=\"center\">\r\n					36T</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:763px;height:25px;\">\r\n				<p>\r\n					<strong>SSD&nbsp; - 240GB&nbsp;&nbsp;&nbsp; INTEL&nbsp;&nbsp; - Sata 3 -------------------- ch&iacute;nh h&atilde;ng&nbsp; ------ C&oacute; đế sắt</strong></p>\r\n			</td>\r\n			<td style=\"width:105px;height:25px;\">\r\n				<p align=\"right\">\r\n					<strong>2,750.000</strong></p>\r\n			</td>\r\n			<td style=\"width:68px;height:25px;\">\r\n				<p align=\"center\">\r\n					36T</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:763px;height:13px;\">\r\n				<p>\r\n					&nbsp;</p>\r\n			</td>\r\n			<td style=\"width:105px;height:13px;\">\r\n				<p>\r\n					&nbsp;</p>\r\n			</td>\r\n			<td style=\"width:68px;height:13px;\">\r\n				<p align=\"center\">\r\n					&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:763px;height:28px;\">\r\n				<p>\r\n					<strong>SSD&nbsp; - 120GB&nbsp;&nbsp;&nbsp; CORSAI&nbsp;&nbsp; - Sata 3 -------------------- ch&iacute;nh h&atilde;ng&nbsp; ------ C&oacute; đế sắt</strong></p>\r\n			</td>\r\n			<td style=\"width:105px;height:28px;\">\r\n				<p align=\"right\">\r\n					<strong>1,990.000</strong></p>\r\n			</td>\r\n			<td style=\"width:68px;height:28px;\">\r\n				<p align=\"center\">\r\n					36T</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:763px;height:28px;\">\r\n				<p>\r\n					<strong>SSD&nbsp; - 2400GB&nbsp;&nbsp;&nbsp; CORSAI&nbsp;&nbsp; - Sata 3 -------------------- ch&iacute;nh h&atilde;ng&nbsp; ------ C&oacute; đế sắt</strong></p>\r\n			</td>\r\n			<td style=\"width:105px;height:28px;\">\r\n				<p align=\"right\">\r\n					<strong>2,765.000</strong></p>\r\n			</td>\r\n			<td style=\"width:68px;height:28px;\">\r\n				<p align=\"center\">\r\n					36T</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:763px;height:25px;\">\r\n				<p>\r\n					<strong>SSD&nbsp; - 240GB&nbsp;&nbsp;&nbsp; SILICOM&nbsp;&nbsp; - Sata 3 -----------H&Agrave;NG CH&Iacute;NH H&Atilde;NG</strong></p>\r\n			</td>\r\n			<td style=\"width:105px;height:25px;\">\r\n				<p align=\"right\">\r\n					<strong>2,050.000</strong></p>\r\n			</td>\r\n			<td style=\"width:68px;height:25px;\">\r\n				<p align=\"center\">\r\n					36T</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

CREATE TABLE `product` (
  `idsp` int(12) NOT NULL,
  `alias` varchar(255) DEFAULT NULL,
  `metadesc` varchar(150) DEFAULT NULL,
  `idmenu` int(12) NOT NULL DEFAULT '0',
  `idcate` int(12) NOT NULL,
  `idcatecha` int(12) NOT NULL,
  `tensp` varchar(1000) NOT NULL DEFAULT '',
  `title` varchar(1000) NOT NULL,
  `masp` varchar(50) DEFAULT NULL,
  `mota` varchar(3500) NOT NULL DEFAULT '',
  `ngaycapnhat` date NOT NULL DEFAULT '0000-00-00',
  `gia` int(11) NOT NULL DEFAULT '0',
  `giaSi` int(12) NOT NULL,
  `urlHinh` text NOT NULL,
  `baiviet` text,
  `danhgia` text NOT NULL,
  `soluongtonkho` int(4) DEFAULT '0',
  `khuyenmai` varchar(255) DEFAULT NULL,
  `baohanh` varchar(50) DEFAULT NULL,
  `AnHien` int(1) DEFAULT '1',
  `NoiBat` int(1) DEFAULT '0',
  `ThuTuTrangChu` int(11) DEFAULT NULL,
  `ThuTuMenu` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`idsp`, `alias`, `metadesc`, `idmenu`, `idcate`, `idcatecha`, `tensp`, `title`, `masp`, `mota`, `ngaycapnhat`, `gia`, `giaSi`, `urlHinh`, `baiviet`, `danhgia`, `soluongtonkho`, `khuyenmai`, `baohanh`, `AnHien`, `NoiBat`, `ThuTuTrangChu`, `ThuTuMenu`) VALUES
(101, 'o-cung-seagate-320gb-sata-pc', 'Mua bán Ổ Cứng Seagate 320GB Sata dành cho desktop, ổ cứng hdd 320gb bảo hành 24 tháng. Luôn có giá ưu đãi cho khách hàng đặt mua với số lượng nhiều.', 15, 25, 1, 'Ổ Cứng Seagate 320GB Sata PC', '', 'HH00000891', 'Ổ cứng HDD (Hard Disk Drive) Seagate dung lượng 320GB kết nối chuẩn sata dành cho PC (máy vi tính để bàn). Thích hợp cho việc nâng cấp dung lượng vùng nhớ máy vi tính của bạn. Chiếc máy tính của bạn sẽ được vùng lưu trữ dữ liệu thêm rộng rãi hơn với dung lượng cộng thêm 320GB. Sản phẩm ổ cứng chính hãng seagate với chuẩn sata, được kết nối với hầu hết các dòng mainboard mới hoặc cũ.', '0000-00-00', 450000, 0, '{\r\n			\"url\" : \"http://daitailoc.com/images/o-cung-hdd-seagate-160gb-sata-pc-mong.jpg\",\r\n			\"desc\" : \"\"\r\n		}', '<p>\r\n	đang cập nhật...</p>\r\n', '', 0, 'Khi mua HDD 320GB chính hãng Seagate tại <b>ĐẠI TÀI LỘC</b> với số lượng trên 5. Quý khách hàng sẽ nhận được ngay giá ưu đãi, áp dụng cho tất cả cách khách hàng.\n<b>ĐẠI TÀI LỘC</b> cam kết giá ổ cứng seagate 320GB được bán đúng theo giá thị trường.      ', 'Bảo hành 24 tháng', 1, 0, NULL, NULL),
(849, 'sdd-120g', NULL, 15, 1, 0, 'SDD 120GB', '', NULL, '', '0000-00-00', 100, 0, '', NULL, '', 0, 'Giảm 100 nghìn cho đơn hàng trị giá 1000 000 đ', NULL, 1, 1, NULL, NULL),
(850, 'sdd-150g', NULL, 15, 1, 0, 'SDD 150GB', '', NULL, '', '0000-00-00', 150, 0, '', NULL, '', 0, 'Giảm 100 nghìn cho đơn hàng trị giá 1000 000 đ', NULL, 1, 1, NULL, NULL),
(851, 'sdd-220g', NULL, 15, 1, 0, 'SDD 220GB', '', NULL, '', '0000-00-00', 200, 0, '', NULL, '', 0, 'Giảm 100 nghìn cho đơn hàng trị giá 1000 000 đ', NULL, 1, 1, NULL, NULL),
(852, 'sdd-320g', NULL, 15, 1, 0, 'SDD 320GB', '', NULL, '', '0000-00-00', 300, 0, '', NULL, '', 0, 'Giảm 100 nghìn cho đơn hàng trị giá 1000 000 đ', NULL, 1, 1, NULL, NULL),
(853, 'sdd-420g', NULL, 15, 1, 0, 'SDD 420GB', '', NULL, '', '0000-00-00', 400, 0, '', NULL, '', 0, 'Giảm 100 nghìn cho đơn hàng trị giá 1000 000 đ', NULL, 1, 1, NULL, NULL),
(854, 'o-msata-120g', NULL, 15, 1, 0, 'Ổ mSATA 120GB', '', NULL, '', '0000-00-00', 120, 0, '', NULL, '', 0, 'Giảm 100 nghìn cho đơn hàng trị giá 1000 000 đ', NULL, 1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL DEFAULT '',
  `password` varchar(50) NOT NULL,
  `salt` varchar(100) NOT NULL,
  `address` varchar(255) NOT NULL,
  `number` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL DEFAULT '',
  `registerdate` date NOT NULL DEFAULT '0000-00-00',
  `idgroup` int(11) NOT NULL DEFAULT '0',
  `active` int(1) DEFAULT '0',
  `randomkey` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `password`, `salt`, `address`, `number`, `email`, `registerdate`, `idgroup`, `active`, `randomkey`) VALUES
(16, '', 'c9598ad2b30890cea954470ecbb80e66', '940', '', '', 'huynh.hieu312@gmail.com', '0000-00-00', 1, 1, '8e08998cb1abb518c122352edea68ea6'),
(17, 'admin', '6be6af9721fec4f2b953df8270d56619', '989', '', '', 'admin@gmail.com', '0000-00-00', 1, 1, '0b0ec8510fc9ada0cbf71b40818884c6'),
(18, 'Dai Tai Loc', 'cc6208335fc8cedd846fd8f35f3de5d1', '850', '', '', 'daitailoc@gmail.com', '0000-00-00', 2, 0, 'a3fb4fbf9a6f9cf09166aa9c20cbc1ad');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`idTT`);

--
-- Chỉ mục cho bảng `banggia`
--
ALTER TABLE `banggia`
  ADD PRIMARY KEY (`idbg`);

--
-- Chỉ mục cho bảng `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`idbanner`);

--
-- Chỉ mục cho bảng `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`idcate`);

--
-- Chỉ mục cho bảng `donhang`
--
ALTER TABLE `donhang`
  ADD PRIMARY KEY (`idDH`);

--
-- Chỉ mục cho bảng `hienthitrangchu`
--
ALTER TABLE `hienthitrangchu`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `imageproduct`
--
ALTER TABLE `imageproduct`
  ADD PRIMARY KEY (`idimg`);

--
-- Chỉ mục cho bảng `loaitintuc`
--
ALTER TABLE `loaitintuc`
  ADD PRIMARY KEY (`idLoai`);

--
-- Chỉ mục cho bảng `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`idmenu`);

--
-- Chỉ mục cho bảng `orderdetail`
--
ALTER TABLE `orderdetail`
  ADD PRIMARY KEY (`idctdh`);

--
-- Chỉ mục cho bảng `popup`
--
ALTER TABLE `popup`
  ADD PRIMARY KEY (`idpopup`);

--
-- Chỉ mục cho bảng `pricelist`
--
ALTER TABLE `pricelist`
  ADD PRIMARY KEY (`idpl`);

--
-- Chỉ mục cho bảng `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`idsp`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `email_2` (`email`),
  ADD UNIQUE KEY `email_3` (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `article`
--
ALTER TABLE `article`
  MODIFY `idTT` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT cho bảng `banggia`
--
ALTER TABLE `banggia`
  MODIFY `idbg` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT cho bảng `banner`
--
ALTER TABLE `banner`
  MODIFY `idbanner` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT cho bảng `category`
--
ALTER TABLE `category`
  MODIFY `idcate` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=177;
--
-- AUTO_INCREMENT cho bảng `donhang`
--
ALTER TABLE `donhang`
  MODIFY `idDH` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT cho bảng `hienthitrangchu`
--
ALTER TABLE `hienthitrangchu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT cho bảng `imageproduct`
--
ALTER TABLE `imageproduct`
  MODIFY `idimg` int(12) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `loaitintuc`
--
ALTER TABLE `loaitintuc`
  MODIFY `idLoai` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `menu`
--
ALTER TABLE `menu`
  MODIFY `idmenu` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT cho bảng `orderdetail`
--
ALTER TABLE `orderdetail`
  MODIFY `idctdh` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `popup`
--
ALTER TABLE `popup`
  MODIFY `idpopup` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT cho bảng `pricelist`
--
ALTER TABLE `pricelist`
  MODIFY `idpl` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT cho bảng `product`
--
ALTER TABLE `product`
  MODIFY `idsp` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=855;
--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
