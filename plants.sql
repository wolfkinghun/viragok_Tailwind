-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2025. Máj 15. 11:41
-- Kiszolgáló verziója: 10.4.6-MariaDB
-- PHP verzió: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `plants`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_hungarian_ci NOT NULL DEFAULT '',
  `photo` varchar(50) COLLATE utf8_hungarian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `categories`
--

INSERT INTO `categories` (`id`, `name`, `photo`) VALUES
(1, 'Virágok', 'viragok.jpg'),
(2, 'Gyümölcsök', 'gyumolcsok.jpg'),
(3, 'Zöldségek', 'zoldsegek.jpg'),
(4, 'Fűszernövény', 'fuszernovenyek.jpg');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `plants`
--

CREATE TABLE `plants` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_hungarian_ci NOT NULL DEFAULT '',
  `categId` int(11) NOT NULL,
  `descr` varchar(500) COLLATE utf8_hungarian_ci NOT NULL,
  `photo` varchar(200) COLLATE utf8_hungarian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `plants`
--

INSERT INTO `plants` (`id`, `name`, `categId`, `descr`, `photo`) VALUES
(1, 'Dália', 1, 'A dáliák gumós, fagyérzékeny évelők. Tápanyagdús talajban virágoznak a legszebben. Vízigényük közepes, virágzásuk idején rendszeres vízellátást igényelnek. Virágzási idejük júliustól októberig tart. Kiválóan alkalmasak vágott virágnak.', 'https://res.cloudinary.com/myblog2024/image/upload/v1737373736/fotok/dalia_h4rdyr.jpg'),
(2, 'Százszorszép', 1, 'A százszorszép, vadszázszorszép vagy pipitér (Bellis perennis) az őszirózsafélék (Asteraceae) családjába, az őszirózsaformák (Asteroideae) alcsaládjába tartozó növényfaj. Csaknem egész Európában elterjedt. Észak-Amerikába behurcolták, ott inváziós faj. ', 'https://res.cloudinary.com/myblog2024/image/upload/v1737373739/fotok/szazszorszep_k6ihhc.jpg'),
(3, 'Levendula', 1, 'A levendula (Lavandula) az árvacsalánfélék családjába tartozó növénynemzetség 39 fajjal és több hibrid fajjal. ', 'https://res.cloudinary.com/myblog2024/image/upload/v1737373735/fotok/levendula_jegcfg.jpg'),
(4, 'Petúnia', 1, 'A petúnia (Petunia) a burgonyafélék (Solanaceae) családjába tartozó növénynemzetség. Dél-amerikai eredetű, trombitaforma virágú fajok tartoznak ide, melyeket dísznövényként az egész világon termesztenek. A legtöbb kerti petúnia hibrid (Petunia x hybrida). A petúnia név a francia nyelvből ered, ahová pedig a tupi-guaraní nyelvek \'petun\' = dohány szó átvételével került. ', 'https://res.cloudinary.com/myblog2024/image/upload/v1737373738/fotok/petunia_pnoyll.jpg'),
(5, 'Bazsalikom', 4, 'A bazsalikom - jelentése királyian illatozó) dísz-, fűszer-, és gyógynövény. Népies elnevezései: bazsalikusfű, buszujok, kerti bazsalikum, királyfű, német bors. \r\nEgyéves növény. Karószerű főgyökere számos oldalgyökérre ágazik. Nem hatol mélyre, de dús elágazódásával viszonylag nagy talajréteget sző át. Mereven felálló. 40–60 cm hosszú szára a gyökérnyaktól sok oldalhajtásra ágazik el. ', 'https://res.cloudinary.com/myblog2024/image/upload/v1737373734/fotok/bazsalikom_blbjjj.jpg'),
(6, 'Rozmaring', 4, 'Örökzöld félcserje. Virágai végállásúak, ajakosak, erősen kiemelkedő fellevelekkel. Színei a világoskéktől a liláig, sokféle árnyalatban megtalálhatóak. Levelei sötétzöldek, egyenesek, tűformájúak, szélük visszahajlik, fonákjuk szürkésen szőrözött. A növény minden része aromás illatú.', 'https://res.cloudinary.com/myblog2024/image/upload/v1737373737/fotok/rozmaring_shordk.jpg'),
(7, 'Paradicsom', 3, 'Trópusi hazájában évelő kúszónövény, mérsékelt éghajlaton egyévesként termesztik, vannak egész éves kultúrák is. Fajtától függően 40-260 centiméter magasra nő, átlagban 150 centiméter magas. Termése 1-100 dekagrammig változó nagyságú lehet. ', 'https://res.cloudinary.com/myblog2024/image/upload/v1737373738/fotok/paradicsom_wiftjz.jpg'),
(8, 'Sárgarépa', 3, 'A sárgarépa (Daucus carota subsp. sativus) fontos zöldségnövény, jelentős vitaminforrás, régóta ismerjük és termesztjük. ', 'https://res.cloudinary.com/myblog2024/image/upload/v1737373739/fotok/sargarepa_hawshc.jpg'),
(9, 'Karalábé', 3, 'A káposztafélék családjába tartozó zöldségnövény. Magas B1-, B2-, B6- és C-vitamin (63 mg/100 g) tartalma miatt ajánlatos a nyers fogyasztása. Tartalmaz még kalciumot, káliumot, magnéziumot, vasat, valamint meszet és foszfort is. Nem savanyítható, konzerválásra is alkalmatlan. Viszont egész évben termeszthető, és már tyúktojás nagyság elérésekor szedhető. A karalábét magas vitamintartalma miatt az alternatív gyógyászat hívei méregtelenítő hatásúnak tartják, de mindenképpen egészséges. ', 'https://res.cloudinary.com/myblog2024/image/upload/v1737373737/fotok/karalabe_vtand4.jpg'),
(10, 'Szamóca', 2, 'Az epret nagy földrajzi alkalmazkodóképessége és elterjedése miatt szinte a világ minden országában termesztik. Évelő, tőrózsát fejlesztő növény, az indanövényről úgy nevezett frigó palántákkal szaporított egyedek járulékos gyökérrendszert fejlesztenek, melyek sekélyen helyezkednek el a talajban. A gyökérzetet a levélzettel egy rövid gyökértörzs köti össze. Ebből fejlődnek ki a levelek, az indák, a virágok; ezen kívül ez a szerve tartalékolja a tápanyagokat, amely elősegíti az áttelelést.', 'https://res.cloudinary.com/myblog2024/image/upload/v1737373739/fotok/szamoca_nr8v59.jpg'),
(11, 'Málna', 2, 'Gyümölcse miatt kedvelt kerti növény. A magas vitamintartalma miatt egészséges gyümölcsöt gyakran nyersen fogyasztják, illetve lekvárként, kompótként, zseléként vagy szörpként kerül a konyhákban felhasználásra.', 'https://res.cloudinary.com/myblog2024/image/upload/v1737373740/fotok/malna_itr6ix.jpg'),
(12, 'Chili paprika', 3, 'Indiában, Afrikában és Mexikóban nagy hagyománya van fogyasztásának. Ezeken a helyeken elsősorban emésztést serkentő hatása miatt kedvelik, és ma már kutatások bizonyítják, hogy nem alaptalanul, mivel fokozza a nyál és a gyomornedvek elválasztását, melyek az étel lebontását teszik lehetővé. Akik szeretik a csípős, fűszeres ételeket, ugyanakkor fogyókúrázni szeretnének, kihasználhatják átmeneti anyagcsere-gyorsító tulajdonságát.', 'https://res.cloudinary.com/myblog2024/image/upload/v1737373735/fotok/chili-paprika_om2jkv.jpg'),
(13, 'Zsálya', 4, 'A zsálya (Salvia) az árvacsalánfélék családjába tartozó növénynemzetség. A három génusz egyike, amiket közönségesen zsálya néven említenek. A köznyelvben a „zsálya” szó általában az orvosi zsálya (Salvia officinalis) nevű fajra utal, de a kettős nevezéktan szabályai szerint bármely zsályafajra utalhatunk. A nemzetségbe kb. 700-900 faj tartozik, melyek között évelő és egyéves lágy szárú növények, cserjék is megtalálhatók.', 'https://upload.wikimedia.org/wikipedia/commons/thumb/7/77/Wiesensalbei_1.jpg/390px-Wiesensalbei_1.jpg');

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `plants`
--
ALTER TABLE `plants`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_plants_categories` (`categId`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT a táblához `plants`
--
ALTER TABLE `plants`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Megkötések a kiírt táblákhoz
--

--
-- Megkötések a táblához `plants`
--
ALTER TABLE `plants`
  ADD CONSTRAINT `FK_plants_categories` FOREIGN KEY (`categId`) REFERENCES `categories` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
