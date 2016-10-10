-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Anamakine: localhost:3306
-- Üretim Zamanı: 10 Eki 2016, 23:10:43
-- Sunucu sürümü: 5.6.28
-- PHP Sürümü: 7.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Veritabanı: `sorucevap`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `kategoriler`
--

CREATE TABLE `kategoriler` (
  `id` int(11) NOT NULL,
  `kategori` varchar(25) COLLATE utf8_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `kategoriler`
--

INSERT INTO `kategoriler` (`id`, `kategori`) VALUES
(2, 'Dini'),
(3, 'Yaşam'),
(4, 'Bilgisayar'),
(5, 'Cep Telefonu'),
(6, 'Genel Kültür');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `sorucevap`
--

CREATE TABLE `sorucevap` (
  `id` int(11) NOT NULL,
  `soru` text COLLATE utf8_turkish_ci NOT NULL,
  `cevap` text COLLATE utf8_turkish_ci NOT NULL,
  `kategori` varchar(25) COLLATE utf8_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `sorucevap`
--

INSERT INTO `sorucevap` (`id`, `soru`, `cevap`, `kategori`) VALUES
(129, 'Türkiye\'nin başkenti hangi ilimizdir ?', 'Ankara', 'Genel Kültür'),
(130, 'PHP programlama dilinin açılımı nedir ?', 'Hypertext Preprocessor', 'Bilgisayar'),
(131, 'İstanbul kaç yılında feth olunmuştur ?', '1453', 'Genel Kültür'),
(132, 'RGB açılımı nedir ?', 'Red Green Blue', 'Bilgisayar'),
(133, 'Türkiye\'de en çok çay üretilen ilimiz neresidir ?', 'Rize', 'Genel Kültür');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `kategoriler`
--
ALTER TABLE `kategoriler`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `sorucevap`
--
ALTER TABLE `sorucevap`
  ADD PRIMARY KEY (`id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `kategoriler`
--
ALTER TABLE `kategoriler`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- Tablo için AUTO_INCREMENT değeri `sorucevap`
--
ALTER TABLE `sorucevap`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=134;