-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Anamakine: localhost:3306
-- Üretim Zamanı: 12 Eki 2016, 23:11:36
-- Sunucu sürümü: 5.6.28
-- PHP Sürümü: 7.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `sozluk`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `basliklar`
--

CREATE TABLE `basliklar` (
  `id` int(11) NOT NULL,
  `baslik` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `ilkentry` longtext COLLATE utf8_turkish_ci NOT NULL,
  `yazar` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `tarih` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `basliklar`
--

INSERT INTO `basliklar` (`id`, `baslik`, `ilkentry`, `yazar`, `tarih`) VALUES
(1, 'anın görüntüsü', 'ilk entry', 'efe', '2016-10-12 18:17:47'),
(2, 'şortla rahatlıkla gezilebilecek iller', 'ilk entry', 'duk leonard', '2016-10-12 18:18:16'),
(3, 'tutsak özgür', 'ilk entry', 'asabi yazar', '2016-10-12 18:18:47'),
(4, 'antidepresan bir işe yaramıyor', 'ilk entry', 'anti', '2016-10-12 18:25:09'),
(5, 'kedi ve yalnızlık birliği', 'ilk entry', 'kedi', '2016-10-12 18:25:38'),
(6, 'fransa', 'ilk entry', 'frn', '2016-10-12 18:25:50'),
(7, 'artı oylarla mutlu olan ezik yazar', 'ilk entry', 'ezik yazar', '2016-10-12 18:26:14'),
(8, 'Biz insanı en güzel şekilde yarattık', 'en çok eleştirilen ama bağlamsız okunması sebebiyle haksız eleştirilen ayettir. \r\n\r\n"insanı en güzel şekilde yarattık, sonra onu aşağıların aşağısına çektik" diye devam eder tin suresi. bir akıllı insan da şu soruyu sormaz; yahu madem "insanı en güzel şekilde yarattıktan kasıt insanın kusursuz,hastalık kapmayan bir bünye olarak yaratılmasıysa, ayetin devamında neden " sonra onu aşağıların aşağısına çektik" desin. allah; insanı hastalığa yakalanmayan,süpermen gibi bir şey olarak yarattım deyip, ardından onu hastalıklı, kusurlu kıldım mı diyor ? gerçekten bunu anlıyorsanız durum vahim. \r\n\r\neğer böyle anlıyorsanız bu ayeti eleştirmeye hakkınız yok. çünkü allah kusursuz yarattım sonra kusurlu kıldım diyor ayette sizin anladığınız gibi anlarsak. yani sonuçta kusurlu hale getiriyor. bu da demek oluyor ki allah insanların kusursuz olduğunu iddia etmiyor.\r\n\r\nböyle rezil bir din eleştirisi olmaz. kutsal metin yorumunun bir yöntemi var, usulu var. ayetlerin arka planı var, bağlamı var. bunları bilmeden ayeti dümdüz okuyup sonra eleştiri getirmeye kalkıyorsunuz. hadi literal bir okuma yaptın, bari akıl yürüt bu ayetin devamında neden "onu aşağıların aşağısına ittik" diyor.o da yok. sonra ateistler dini çok daha iyi biliyor mavalları.\r\n\r\nbakın burada beydavi güzelce açıklamış bu söz konusu ayeti. insanın en güzel yaratılmasından maksat; genç ,dimdik olması, taşı sıksa suyunu çıkaracak kıvamda yaratılmasıdır. devamında aşağıların aşağısına ittik ayetinden maksat ise insanın yaşlılık haline, bakıma muhtaç haline geri getirilmesi. ', 'efe', '2016-10-12 21:05:38');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `cevaplar`
--

CREATE TABLE `cevaplar` (
  `id` int(11) NOT NULL,
  `cevap` longtext COLLATE utf8_turkish_ci NOT NULL,
  `cevapID` int(11) NOT NULL,
  `yazar` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `tarih` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `cevaplar`
--

INSERT INTO `cevaplar` (`id`, `cevap`, `cevapID`, `yazar`, `tarih`) VALUES
(1, 'fasdfasfadsf', 4, 'nuri', '2016-10-12 20:58:25'),
(2, 'asdfasfd asdf asfd ads', 4, 'hamza', '2016-10-12 20:58:25'),
(3, 'asdf asdfasdf asd f', 2, 'hüseyin', '2016-10-12 20:58:25'),
(4, 'ASDFASDFASDFASD A SDFASDF A SF', 1, 'alkolik', '2016-10-12 20:58:25'),
(5, 'BU DENEME DİVİDİR', 1, 'suratsız', '2016-10-12 20:58:25'),
(6, 'kesinlikle ben ', 7, 'maymun kılıklı adam', '2016-10-12 20:58:25'),
(7, 'evet doğru :)', 7, 'ceset', '2016-10-12 20:58:25'),
(8, 'napim ama', 7, 'nursuz', '2016-10-12 20:58:25'),
(9, 'bana kahve sözü olan yazar. zamanla bu entryi uzatacak olaylar yaşamak dileğiyle. \r\n\r\nedit: sözünü tutmayanları nasıl rencide ettiğimi bilen bilir, ayağını denk al. *\r\n\r\nedit 2: bugün ikinci kez buluşmamız, yaşanacak çok şeyimiz olduğu kesin, daha söylenecek çok şarkımız var. seni seviyorum.\r\n\r\nedit 3: bu gece kendisini arayıp uyandıramamanın verdiği hüzünle bir edit gireyim dedim. geçen güzel günlerimiz hiç bitmesin sevgilim, seni seviyorum.\r\n\r\nedit 4: bıraktığı notla kendisine olan sevgi kalibremi iyice yükseltmiş olan sevgilim yazarı. hayatım buna da bir ara edit atmalısın. #25104480\r\n\r\nedit 5: çok iyi başlayan bir gün geçirmesekte yine de kollarımızın birbirimizi sarması ne kadar hoş değil mi sevgilim? güzel olan aslında ne biliyor musun? ümidim tükenince artık gökyüzüne değil senin gözlerine bakabiliyorum, eskisi gibi karşında titremiyor olabilirim ama kalbim bu konuda bedenimle hem fikir değil. yine güzel sonlanan bir gece umarım sonumuzda mutlu olur sevgilim. seni seviyorum.\r\n\r\nedit 6: hayatım boyunca aldığım en değerli hediyeyi bana sunmuş insan. hediyeden çok içindeki notu kalbimi feth etmiş bulunmakta. kalbimi yokluyorum boşlukta feth edecek bir kaç yeri daha var mı diye bulamıyorum ama o her seferinde bak burda da yer var edasıyla kalbimin bilinmez, gün yüzüne çıkmamış noktalarını feth ediveriyor. uzun zaman sonra mutlu mesut geçirdiğimiz günlerden biri daha sevgilim. seni seviyorum!\r\n\r\nedit 7: 1. bira 1. sigara:\r\nilk günden düşündüm neler yaşadığımızı sözlükten tanışmamız mesela ne kadar absürddü değil mi? ben özgür bekliyordum ama değişimi sende hatırlıyorsundur umarım. daha sonra geceleri sözlük muhabbetlerimiz. açtım şimdi onları okuyorum mesela gözümde biraz yaş ellerde biraz titreme..\r\n1. bira 2. sigara\r\ndaha sonra telefonla ilk konuşmalarımız senin sesinle alay etmelerim senin milletin telefonundan beni kaçak göçek aramaların ve benim bir anda sana mesajlarımı kesişim, sözlük yazarlarının itirafları da son noktamızdı zaten. sıklaşan telefonlaşmalar, whatsapptan iletiler, istanbul planlarımız. ve senin doğumgünün, taksimde karşılaşma zangır zangır titreyişim hani dedim ya sana sevdiğim sigarasızlıktan o diye yalandı bak bende sana yalan söylemişim o zaman heyecandandı, etkilenmemdendi. akşamı beşiktaş\' a yanına gelmem o güzeller güzeli beşiktaş\' ın yolları bitsin istemem seninle baş başa bir süre daha kalabilmek için..\r\n2. bira 3. sigara\r\nilk baş başa planlı buluşmamız sabah tam 6 yataktan kalktım direk babamın iş yerine harç yatıracağım para lazım patronu bekle allah bekle yok ortalıkta sevdiğim de okulda beni beklesin. gün içinde birlikte geçireceğimiz vakit ofis odasında çürüyor ona mı yanayım senin okulda beni tek başına beklemene mi? velhasıl kelam okula geldim seni gördüm bir anda üstümdeki bütün keder dağıldı yüreğime bir ferahlık indi. tarihi söylüyorum hayatım bilirsin tarihlerle aramın pek iyi olmadığını 03.09.2014 bütün koşuşturmaların ardından beyazıt meydandayız ben insanlardan kaçtıkça sen içlerinde kaybolmak istiyorsun şimdi anlıyorum galiba o kalabalığın içinde belki dertlerinin kederlerininde seni bırakacağını düşünüyorsun. birden avuçlarımda bir sıcaklık yüreğimde bir sıcaklık sevdiğimin elleri ellerimde. taksime kadar hiç bırakmadan..\r\n2. bira 4. sigara\r\nartık seninle taksimdeyiz çaylar içilmiş tostlar yenilmiş ve aklımdan geçen tek düşünce allahım ne olur bu an sonsuza dek sürsün..\r\nbazı detayları atladıktan sonra taksimdeyiz karşımda inönü stadyumu yanımda sevdiğim kafasını omuzuma dayamış. bu sefer içimden geçen düşünce allahım karşımda inönü yanımda sevdiğim rüyaysa uyandır hüngür hüngür ağlamak istiyorum. yürüyoruz, beşiktaşı talan ediyoruz el eleyiz kol kolayız yetmiyor! seninle geçen vakitler bana yetmiyor! artık gitmen lazım sevdiğim diyorum ama bu iskeleden binme biraz daha yürüyelim kabataş iskelesinden bin. kabataş iskelesine varıyoruz boşta bir bank oturalım biraz daha dur diyorum oturuyoruz. fark ediyorum senin vapurun bu iskelede yok ama gitmeni istemiyorum biraz daha dur asabiyazar diyorum daha sonra söylersin. sen fark ediyorsun daha sonra beşiktaşa gidiyoruz tekrar beşiktaştan bir vapur kalkıyor içinde sevdiğim.\r\n2. bira 5. sigara\r\nanlıyorum artık sensiz olunmayacağını. onsuzluk ne zor diyorum kendi kendime. isyan ediyorum bazen sensiz geçen günlerin diyorum..\r\nhangi gün hatırlamıyorum kusura bakma galatadayız ara sessiz sakin bir sokakta bundan sonra hep birlikteyiz diyorsun, seninim benimsin..\r\nkalbimin atışımı kulaklarımda duyduğum an nasıl mutlu olmuşum anlatamam erkekliğe de bok sürdürmeyeceğiz ya renk vermiyoruz tabi. yokuştan yukarı çıkıyoruz aynı anda duruyoruz ve birbirimize sarılıp öpüşüyoruz. kafamıza gelmek üzere olan şişeyi saymazsak herşey güzel o bile bozmuyor keyfimizi.\r\n3. bira 6. sigara\r\nbugüne gelelim artık sevdiğim güzel bir başlangıç kötü bir son sana bana bize yakışmayan bir son. tartışmamızı anlatmayacağım hata bende biliyorum özür diliyorum. kafanda belirledin sen fikrini ben seni bilirim. hakkımızda ne olacağına karar verecek cümleler senin dilinden dökülecek ben sana hiçbir şey diyemeyeceğim. kararın ne olursa olsun seni sevecek olacağım bu kalbin bir daha fethi zor olur. eğer bitireceksen sevdiğim şunu unutma seni her zaman seviyor olacağım 10 yıl sonrada evlenince de. beni ara bazen ayrılırsak seni seviyorum de ve telefonu suratıma kapat. yalandan da olsa yap bana bunu senden son isteğimdir. sana her zaman muhtaç olan ve seni her zaman sevecek olan asabiyazar.\r\nbira bitti sigara bitti\r\ngitmeden sevdiğim şunu da sana bırakayım istedim\r\nhttp://video.uludagsozluk.com/v/tutsakozgur-124691/ +\r\n\r\nedit 8: gelmene sayılı günler var ama bana seneler gibi geliyor elini biraz çabuk tut ve hemen gel sevgilim seni seviyorum!\r\n\r\nedit 9: 3. ayımızı da arkamızda bırakmış bulunmaktayız. gerçekten çok seviyoruz. iyi ki birlikteyiz nice 3 aylara sevgilim!', 7, 'kıl', '2016-10-12 20:58:25'),
(10, '1. otlakçı arkadaşlara kaptırılan sigara\r\n2. kızlı ortamda sırtlanılan hesap\r\n3. parayı katlamak için bastığın iddia', 3, 'efe', '2016-10-12 20:58:25'),
(11, 'istersek 10 tane gol yiyelim ama hala aynı zihniyet ile yola devam edecek olmak koyuyor...', 2, 'özgür', '2016-10-12 20:58:25'),
(12, 'kaliteli müziklerin hiçbiri son ses dinlenmez. türk sanat müziği, türk halk müziği, klasik batı müziği. hangisi son ses dinlemeye uygun? hiçbiri. o yüzden sen anlamadığın yabancı şarkıları yada içi boş çamura batmış kalitesiz sevda sözcükleri içeren rapini kaliteli san.\r\n', 6, 'keleş', '2016-10-12 20:58:25'),
(13, 'birkaç gün önce adanalı biriyle tanıştım.\r\nhaberlerde gördüğümüz gibi mi her şey falan diye sorduk tabii biz , o da gülüyor falan.\r\nsonra ben dedim ki güneşe ateş eden adam vardı, onu fazla garip bulduğumu belirterek. \r\nçocuk durdu ve şunu dedi :\r\no adam haklı ama yaa.', 6, 'şebelebettin', '2016-10-12 20:58:25'),
(14, 'en çok eleştirilen ama bağlamsız okunması sebebiyle haksız eleştirilen ayettir. \r\n\r\n"insanı en güzel şekilde yarattık, sonra onu aşağıların aşağısına çektik" diye devam eder tin suresi. bir akıllı insan da şu soruyu sormaz; yahu madem "insanı en güzel şekilde yarattıktan kasıt insanın kusursuz,hastalık kapmayan bir bünye olarak yaratılmasıysa, ayetin devamında neden " sonra onu aşağıların aşağısına çektik" desin. allah; insanı hastalığa yakalanmayan,süpermen gibi bir şey olarak yarattım deyip, ardından onu hastalıklı, kusurlu kıldım mı diyor ? gerçekten bunu anlıyorsanız durum vahim. \r\n\r\neğer böyle anlıyorsanız bu ayeti eleştirmeye hakkınız yok. çünkü allah kusursuz yarattım sonra kusurlu kıldım diyor ayette sizin anladığınız gibi anlarsak. yani sonuçta kusurlu hale getiriyor. bu da demek oluyor ki allah insanların kusursuz olduğunu iddia etmiyor.\r\n\r\nböyle rezil bir din eleştirisi olmaz. kutsal metin yorumunun bir yöntemi var, usulu var. ayetlerin arka planı var, bağlamı var. bunları bilmeden ayeti dümdüz okuyup sonra eleştiri getirmeye kalkıyorsunuz. hadi literal bir okuma yaptın, bari akıl yürüt bu ayetin devamında neden "onu aşağıların aşağısına ittik" diyor.o da yok. sonra ateistler dini çok daha iyi biliyor mavalları.\r\n\r\nbakın burada beydavi güzelce açıklamış bu söz konusu ayeti. insanın en güzel yaratılmasından maksat; genç ,dimdik olması, taşı sıksa suyunu çıkaracak kıvamda yaratılmasıdır. devamında aşağıların aşağısına ittik ayetinden maksat ise insanın yaşlılık haline, bakıma muhtaç haline geri getirilmesi. ', 8, 'efe', '2016-10-12 21:05:52'),
(15, 'senin ebeveynlerin benimkilerden önce evlenmişse ve ben erkek olan taraf olmuşsam bunda benim ne suçum var? bir de öyle\'\' ben gördüğün gibi çok yaşlıyım.\'\' diyorsun ya çok tatlı oluyorsun.', 5, 'rüknettin', '2016-10-12 21:07:37');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `basliklar`
--
ALTER TABLE `basliklar`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `cevaplar`
--
ALTER TABLE `cevaplar`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cevapID` (`cevapID`) USING BTREE;

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `basliklar`
--
ALTER TABLE `basliklar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- Tablo için AUTO_INCREMENT değeri `cevaplar`
--
ALTER TABLE `cevaplar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- Dökümü yapılmış tablolar için kısıtlamalar
--

--
-- Tablo kısıtlamaları `cevaplar`
--
ALTER TABLE `cevaplar`
  ADD CONSTRAINT `cevaplar_ibfk_1` FOREIGN KEY (`cevapID`) REFERENCES `basliklar` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
