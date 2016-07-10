-- phpMyAdmin SQL Dump
-- version 4.1.7
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Lug 10, 2016 alle 16:57
-- Versione del server: 5.6.29-log
-- PHP Version: 5.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `my_hypermedia2016tim`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `AS_Category`
--

CREATE TABLE IF NOT EXISTS `AS_Category` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `Name` (`Name`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dump dei dati per la tabella `AS_Category`
--

INSERT INTO `AS_Category` (`Id`, `Name`) VALUES
(1, 'line management & services'),
(2, 'cost control and payments'),
(3, 'technical support & configuration'),
(4, 'Smart Life'),
(5, 'Highlights');

-- --------------------------------------------------------

--
-- Struttura della tabella `AS_Offered`
--

CREATE TABLE IF NOT EXISTS `AS_Offered` (
  `Id` int(11) NOT NULL,
  `Id assistantService` int(11) NOT NULL,
  PRIMARY KEY (`Id`,`Id assistantService`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `AS_Offered`
--

INSERT INTO `AS_Offered` (`Id`, `Id assistantService`) VALUES
(1, 2),
(3, 1),
(3, 3),
(3, 4),
(4, 1),
(4, 3),
(5, 2);

-- --------------------------------------------------------

--
-- Struttura della tabella `Assistant Service`
--

CREATE TABLE IF NOT EXISTS `Assistant Service` (
  `Id assistantService` int(11) NOT NULL AUTO_INCREMENT,
  `Description` text,
  `Type Category` int(70) DEFAULT NULL,
  `Pre-Description` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `Name` varchar(60) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`Id assistantService`),
  UNIQUE KEY `Name` (`Name`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dump dei dati per la tabella `Assistant Service`
--

INSERT INTO `Assistant Service` (`Id assistantService`, `Description`, `Type Category`, `Pre-Description`, `Name`) VALUES
(1, 'In MyTIM Mobile you have available all the information related to your telephone line.\r\n\r\nYou can keep you constantly updated on the active services on your line, on the characteristics of your SIM, get information relevant to your plan and to purchases made on the site and if necessary to block your line for theft or loss.\r\n\r\nRegister now!', 1, 'In MyTIM Mobile hai a disposizione tutte le informazioni relative alla tua linea telefonica', 'MY TIM Mobile'),
(2, 'Flat Day is the base rate for the surf the Internet from Smartphone, Tablet PC, and for a maximum of 500MB per day at a cost of 4 € (VAT included) .The Flat Day base rate intervenes in the absence of an offer active data on your line. In this condition if you make an Internet connection takes a daily fee of € 4 for 500MB of data traffic to be used within the same day (until 23:59) .The Day of the Flat fee is charged only on days of actual use to first connection event. On reaching 500MB of data traffic in the day, the browsing speed is reduced to 32 Kbps at no additional cost. The MB of traffic available in the day are counted to prepaid unit increments of 1KB. Any Internet traffic not consumed in the day is reset.', 2, 'Check out the features of the basic tariff for browsing the Internet from your mobile phone, tablet and PC, which applies if you are not active specific offers for data traffic.\r\n', 'Cost Control & Payments-services'),
(3, 'SOSsmartphone è il servizio di TIM per tutti i clienti, Ricaricabili o con Abbonamento, che permette di ricevere un’assistenza tecnica specializzata e personalizzata per la gestione del proprio smartphone o tablet.\r\n\r\nGrazie al servizio SOSsmartphone potrai parlare con un esperto che ti fornirà tutta la consulenza e l’assistenza “premium” di cui necessiti e che soprattutto sarà in grado di connettersi in remoto ed operare direttamente sul tuo dispositivo.\r\n\r\nI servizi che potrai ricevere con SOSsmartphone sono:\r\n\r\n    supporto per trasferimento dati in caso di cambio telefono: esempio trasferimento rubrica, foto, sms;\r\n    consulenza nell’utilizzo delle funzioni avanzate dello smartphone;\r\n    assistenza specialistica sulle configurazioni avanzate dello smartphone e integrazione nella tua rete domestica;', 3, 'Con il servizio di TIM SOSsmartphone  puoi ricevere un’assistenza tecnica specializzata e personalizzata per la gestione del tuo smartphone o tablet.', 'Specialized Technical assistency...SOS SmartPhone'),
(4, 'If you have an Android device, to always have with you create playlists from a PC, you can synchronize the device through the timmusic.it site. Set the "App Code" to be found within the section of the site "My Playlist", the code inside the homologous section of the app TIMmusic. Then click "Connect". At which point your mobile device is synchronized and personal playlists appear in the section. Remember you can sync up to 3 devices.\r\n', 4, 'If you have an Android device, to always have with you the playlist created by PC ...', 'How syncronize playlists from pc to smartphone and tablet');

-- --------------------------------------------------------

--
-- Struttura della tabella `Device`
--

CREATE TABLE IF NOT EXISTS `Device` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `Type Category` int(11) DEFAULT NULL,
  `Initial Description` text CHARACTER SET utf8,
  `Photo` int(11) DEFAULT NULL,
  `Display` varchar(75) CHARACTER SET utf8 DEFAULT NULL,
  `Sensor` varchar(75) CHARACTER SET utf8 DEFAULT NULL,
  `Processor` varchar(75) CHARACTER SET utf8 DEFAULT NULL,
  `Camera` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `Video` varchar(75) CHARACTER SET utf8 DEFAULT NULL,
  `Connectivity` text CHARACTER SET utf8,
  `Battery` varchar(75) CHARACTER SET utf8 DEFAULT NULL,
  `Operational System` varchar(75) CHARACTER SET utf8 DEFAULT NULL,
  `Audio` varchar(75) CHARACTER SET utf8 DEFAULT NULL,
  `Picture` varchar(75) CHARACTER SET utf8 DEFAULT NULL,
  `Memory` varchar(75) CHARACTER SET utf8 DEFAULT NULL,
  `Weight` varchar(15) CHARACTER SET utf8 DEFAULT NULL,
  `Size` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `Tecnology` text CHARACTER SET utf8,
  `Cooling` varchar(75) CHARACTER SET utf8 DEFAULT NULL,
  `Noise` varchar(75) CHARACTER SET utf8 DEFAULT NULL,
  `Tension Stabilizator` varchar(75) CHARACTER SET utf8 DEFAULT NULL,
  `Operating Enviroment` varchar(75) CHARACTER SET utf8 DEFAULT NULL,
  `Wi-Fi` varchar(75) CHARACTER SET utf8 DEFAULT NULL,
  `Interfaces` varchar(350) CHARACTER SET utf8 DEFAULT NULL,
  `Wireless-Protection` varchar(75) CHARACTER SET utf8 DEFAULT NULL,
  `Advance Option` varchar(350) CHARACTER SET utf8 DEFAULT NULL,
  `InPromotion` tinyint(1) NOT NULL DEFAULT '0',
  `InOutlet` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`Id`),
  UNIQUE KEY `modello` (`Id`),
  UNIQUE KEY `Name` (`Name`),
  UNIQUE KEY `Photo` (`Photo`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dump dei dati per la tabella `Device`
--

INSERT INTO `Device` (`Id`, `Name`, `Type Category`, `Initial Description`, `Photo`, `Display`, `Sensor`, `Processor`, `Camera`, `Video`, `Connectivity`, `Battery`, `Operational System`, `Audio`, `Picture`, `Memory`, `Weight`, `Size`, `Tecnology`, `Cooling`, `Noise`, `Tension Stabilizator`, `Operating Enviroment`, `Wi-Fi`, `Interfaces`, `Wireless-Protection`, `Advance Option`, `InPromotion`, `InOutlet`) VALUES
(1, 'iPad Air 2 16GB', 1, 'L’iPad Air più sottile di sempre è anche il più potente e versatile. È un concentrato di tecnologie evolute, a cominciare dal sensore di impronte digitali Touch ID.\r\n\r\n', 1, 'Retina da 9,7" (diagonale)', 'impronte digitali Touch ID\r\n', 'Chip A8X\r\n', 'iSight da 8MP\r\n', 'FaceTime HD\r\n', 'Wi-Fi 802.11ac con tecnologia MIMO + Cellular - 4G LTE più veloce', 'Fino a 10 ore di autonomia', 'iOS 8', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0),
(2, 'Samsung Galaxy TAB A 9.7', 1, 'Slim and modern\r\n\r\nThe essential style and metallic frame enhance the new format 4: 3, giving the Galaxy TAB In a modern and sophisticated look, ensuring maximum mobility thanks to the 7.5 mm thick and only 456 grams of weight.\r\noptimized viewing experience\r\n\r\nDesigned to be the most portable tablet category, Galaxy TAB A no compromise, giving you a wider screen than other tablet. A new display, ideal for viewing optimally presentations, websites, publications, e-books and e-mail.\r\nPerfect photos with Auto Focus\r\n\r\nThe 5 MP camera with auto focus allows for more clear and defined images with ease and in any condition. You can also easily scan QR codes and barcodes improving interaction with the world around you.\r\nInteresting content and free services\r\n\r\nThe GALAXY TAB A experience is enriched by the many content now available for you. You can read your favorite magazines thanks to 6 months included with MagBox and enjoy a fantasitico e-book a month for a year with Kindle for Samsung.\r\nexcellent performance\r\n\r\nThanks to Quad Core 1.2GHz processor, 2GB of RAM, the latest version of Android Lollipop and Multiscreen feature, is the perfect device for those who try for the first time a Tablet and for those seeking a high-performance product.\r\nfun and secure content for toddlers\r\n\r\nWith the Baby Mode children can use the Galaxy Tab A that has a its own area. This mode provides an enjoyable interface and protected.\r\ncontinuous shooting\r\n\r\nThanks to the Continuous Shooting function, you can quickly capture a series of consecutive shots to capture every moment in rapid succession without losing a second. The Continuous Shot function can be activated simply by pressing and holding the Shutter icon.\r\nConnection without problems\r\n\r\nThe Quick Connect * and Bluetooth between SmartTV and TAB To control the TV from the Tablet, share content, and turns the tablet into a second TV screen. * Available only with Tizen TV products with Bluetooth for sale in 2015 or later.', 2, '9.7” TFT,1024x768 (4:3)', NULL, 'Snapdragon 410 QuadCore da 1.2 GHz\r\n', 'Front: 2 Mpxl - Back: 5 Mpxl\r\n', 'aac,amr,awb,mp3,ogg,wav, DivX, XviD, MPEG4, VP8, H.263, H.264\r\n', 'Wi-Fi 802.11 a/b/g/n - Bluetooth 4.0 - micro USB\r\n', 'Stand-by fino a 250h - 43 ore in chiamata\r\n', 'Android™ 5.0.2\r\n', NULL, NULL, 'Interna 16GB (espandibile fino a 128GB), 2GB di Ram\r\n', '455 grammi', '242,5 x 166,8 x 7,4 mm', 'LTE/HSDPA/HSUPA\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1),
(3, 'Huawei P9', 2, 'PREMIUM. ELEGANT. STYLISH.\r\nHuawei P9 in its design lines with a strong visual impact, characterized by diamond-cut edges and rounded to perfection. The smartphone has a unibody aerospace aluminum and glass upgraded 2.5D, and is available in two colors: Titanium Grey and Mystic Silver.\r\n\r\n\r\nLIGHT DISPLAY AND THE INTENSE COLOURS\r\n\r\nWith a 96% color gamut, stunning Full HD IPS display, 5.2 "allows you to discover a world full of intense colors and more natural.\r\n\r\nAN INNOVATIVE SYSTEM WITH DOUBLE CAMERA, A UNIQUE COLLABORATION\r\n\r\nThe cooperation between Huawei and Leica has created a smartphone with dual camera. The result: more photo and video sensational brightness and sharpness.\r\n\r\nINNOVATIVE SYSTEM WITH DOUBLE CAMERA\r\n\r\nHuawei P9 is capable of capturing images with bright colors while ensuring a yield extraordinary black and white; all with the timeless style of Leica.La technology with dual Huawei P9 camera allows you to capture a larger amount of light, combining the best qualities of color acquired from RGB sensor with details obtained from the sensor in black and white. All to ensure maximum results with every shot.', 3, 'Display IPS Full HD da 5.2’’', NULL, 'Processore Kirin 955 - Octa-Core (4x2,5 GHz + 4x1,8 GHz)\r\n', 'Principale 12MP x 2, f/2.2 Leica BSI CMOS Flash dual-tone Frontale 8MP, f/2.4\r\n', NULL, '4G cat.6/HSDPA42/UMTS/EDGE/GPRS Frequenze 850/900/1800/1900/2100 Wi-Fi a/b/g/n/ac dual band 2,4/5GHz con Wi-Fi Direct Bluetooth 4.2, BLE USB Type-C, NFC\r\n', 'Stand-by fino a 566 ore - Conversazione fino a 1980 min\r\n', ' Android 6.0', NULL, NULL, '32GB', '144 grammi', '145 x 70,9 x 6,95 mm', 'Abilitato tecnologia 4GPlus/4G/HSDPA 42/UMTS/EDGE/GPRS Frequenze 850/900/1800/1900MHz\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0),
(4, 'Apple iPhone 6', 2, 'iPhone 6 is not only bigger: it''s even better, from every point of view. Bigger, but thinner. More powerful, but careful consumption. It is a new generation of iPhone.\r\n', 4, 'Retina HD da 4,7" (diagonale) con risoluzione di 1334x750 pixel\r\n', 'Sensore di impronte digitali Touch ID\r\n', 'Chip A8 con coprocessore di movimento M8\r\n', 'iSight da 8 megapixel con Focus Pixels e flash True Tone\r\n', 'HD a 1080p e 60 fps, moviola a 240 fps\r\nFaceTime HD\r\n', '4G LTE1 e Wi-Fi 802.11ac\r\n', NULL, 'iOS 8 e iCloud\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(5, 'Modem ADSL Wi-Fi', 3, 'Fast and wireless navigation\r\n\r\nADSL Modem with Wi-Fi browsing at high speed and wireless, using the Wi-Fi interface or through the four Ethernet ports.\r\n\r\nFaster Browsing through technology Wi-Fi wireless and better network coverage Wi-Fi in your home (1).\r\nProtection: WPA and WPA2 encryption prevents unauthorized access to the Wi-Fi network. Also available advanced features such as MAC address filtering and the integrated firewall.\r\nThe whole family connected: connect all PCs, smartphones and tablets to the new ADSL Wi-Fi modem and also share printers and hard disk connected to the USB port of the modem.\r\nInstallation no problem: the modem will automatically configure itself on your ADSL line, without installing software.\r\nSave on electricity bills: the new modem, compared to a previous generation product Telecom Italy with the same functionality, saves up to 40% of electricity on an average annual use (2).\r\nThe modem works only on Wi-Fi ADSL line Telecom Italy and is compatible with major operating systems (Windows 7, Vista, XP - Mac OS 10.3).\r\n\r\nBuy the Modem ADSL Wi-Fi directly on this site. You will receive it at home in free delivery.\r\n\r\nnotes:\r\n(1) Wi-Fi 802.11n technology improves performance over previous generation products 802.11b / g Telecom Italia.Per use the wireless network you must have a computer with Wi-Fi interface. Actual performance may vary depending on the computer, the distance, the speed of the ADSL connection and other factors.', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ADSL/ADSL2+; velocità fino a 20 Mbps down/1 Mbps up\r\n', NULL, NULL, NULL, NULL, 'Wi-Fi 802.11 b/g/n; velocità di trasferimento fino a 300Mbps\r\n', 'Interfacce USB alta velocità (480 Mbit/s) ad alta potenza (500 mA), 1 porta connettore tipo A Interfaccia Wi-FiStandard IEEE 802.11nInterfaccia radio 2.4Ghz, 2 antenne, velocità di trasmissione teorica 300 Mbps\r\n', NULL, 'Funzionalità di routing avanzate (DHCP server, NAT, NAPT, Virtual Server) - Firewall - Condivisione Hard Disk e Stampante USB\r\n', 0, 1),
(6, 'Samsung Gear VR', 4, 'Display\r\n\r\nWear the Gear VR and start enjoying your favorite show! The Super AMOLED display, the wide field of vision, precise sensor head-tracking and low latency introduce reality into the virtual world.\r\n\r\ncompatibility\r\n\r\nGear VR is perfectly compatible with the Galaxy S smartphones (Galaxy S7, S7 edge, Galaxy S6, S6 and S6 edge edge +). You have to do is connect your phone to have available all over the world and more.\r\n\r\nDesign\r\n\r\nImmerse yourself in virtual reality becomes even more excited your ear. Thanks wider interface, now the Gear VR is 19% lighter than the previous model. And thanks to the larger touchpad, you can manage your device in an easy and precise.', 6, '5.7" WQHD ( Note5 & S6 edge+)5.1" WQHD S6 & S6 edge)\r\n', 'Accelerometro - Girometro - Sensore di prossimità\r\n', NULL, 'Visione in anteprima ad alta frequenza di fotogrammi 60fps, 120fps\r\n', NULL, 'MicrUSB\r\n', NULL, NULL, NULL, NULL, NULL, '318 g', '92,6 x 201,9 x 116,4 mm ', NULL, NULL, NULL, NULL, NULL, NULL, 'Touch Pad - Tasto Indietro - Tasto volume\r\n', NULL, NULL, 0, 0);

-- --------------------------------------------------------

--
-- Struttura della tabella `Device_Category`
--

CREATE TABLE IF NOT EXISTS `Device_Category` (
  `Id category` int(11) NOT NULL AUTO_INCREMENT,
  `Description` text,
  `Name` varchar(150) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`Id category`),
  UNIQUE KEY `Name` (`Name`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dump dei dati per la tabella `Device_Category`
--

INSERT INTO `Device_Category` (`Id category`, `Description`, `Name`) VALUES
(1, 'Buy tablet and PC with Telecom and TIM!\r\n\r\nFor professional use or for entertainment, choose the tablet or computer best suited to your needs.\r\n\r\nBuy an Apple iPad or Samsung tablet to browse, read, the fun, or given away a laptop computer to work and study!', 'Tablet e computer'),
(2, 'Buy smart phones, home phones and mobile phones online with TIM: for you a wide selection of the most innovative devices and delivery is always free!\r\n\r\nChoose your favorite smartphone from Apple iPhone, Blackberry, Samsung smartphone, LG, Nokia and many other brands.\r\n\r\nDiscover the cordless and fixed telephones Home: telephones with large buttons, cordless phones and classic duo.\r\n\r\nWant to know the current promotions and special themes? Visit the Outlet and buy the best products area in special offer!', 'Smartphone e telefoni'),
(3, 'Navigate from home or on the move with the devices for networking TIM: discover the variety of modems, mobile internet sticks and Repeater Wi-Fi.\r\n\r\nBuy ADSL and fiber router to surf at home, amplifies your wifi network with repeaters or choose the convenience of 4G modems to connect to the internet on the move.\r\n\r\nWant to know the current promotions and special themes? Visit the Outlet and buy the best products area in special offer!', 'Modem e networking'),
(4, 'Buy Televisions, Video and Audio with TIM!\r\n\r\nRevolutionize the way you watch TV, choosing your favorite programs with Smart TV and TIMvision decoder.\r\n\r\nYou love sports? Check your sports performance and keep an eye on your progress with wearable devices: smart band, smart watch, and more\r\n\r\nDiscover the systems for the security of your home, choose the cameras for video surveillance kit for home control TIM.\r\n\r\nWant to know the current promotions and special themes? Visit the Outlet and buy the best products area in special offer!\r\n', 'TV e Smart Living'),
(5, 'Online Discouted price!! Only for you!!', 'Outlet'),
(6, 'Promotion Devices for this month,super price for these devices.Best smartphones, tablets, wearable devices, and for the house in special offer!!!!', 'Promotions');

-- --------------------------------------------------------

--
-- Struttura della tabella `SL_Category`
--

CREATE TABLE IF NOT EXISTS `SL_Category` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `Activation & FAQ` text CHARACTER SET utf8,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dump dei dati per la tabella `SL_Category`
--

INSERT INTO `SL_Category` (`Id`, `Name`, `Activation & FAQ`) VALUES
(1, 'TV-TIMVision', 'Guide to Service?\r\nWith TIMvision you can watch all the content on the PC, Smart TV, on TV decoder, Tablet and Smartphone, anytime, anywhere.\r\n\r\nWhat can I do with the decoder TIMvision?\r\nIf you''re a member, all the contents of the Subscription section:\r\n• the great Cinema, the full seasons of the best TV series, the Cartoons and children''s programs and most loved children, and much more, like Documentaries, Concerts.\r\n• The programs last week broadcast on LA7 and RAI in "Last 7 days TV" and repository for La7 programs in "TV Programs".\r\n\r\nVideostore:\r\n• The most recent film titles and the great successes of the past rent / buy from the comfort of home.\r\n• Hotzone: catalog with titles only adults-only rent or purchase by credit card or payment in fixed line bill TIM.\r\n\r\nThe app of our partners:\r\n• YouTube\r\n• TIM Today - a selection of news selected by TIM to keep updated on the main news from the world.\r\n• Netflix - original series, comedies, dramas, children''s programs streamed on your TV. You can subscribe directly from decoder and pay the fixed line bill TIM.\r\n• Premium Online - the new way to see Mediaset Premium on your TV.\r\n• Senses Unique offer of adult content\r\n• The free channels of digital terrestrial television by connecting the receiver to the antenna.\r\n• Your personal content (pictures, videos, etc.) to be seen on the TV using the USB receiver.\r\n\r\nHow can I have a decoder?\r\nSe scegli l’offerta TIM SMART, il decoder è disponibile a noleggio al costo di 2€/mese.\r\nIn alternativa, puoi acquistarlo qui Se sei un cliente TIM fisso, ma non hai l’offerta TIM Smart, puoi scegliere l’offerta “TIMvision con decoder”.\r\nQuali altre funzionalità hai il decoder?\r\n• The TIMvision decoder stores the point where you stopped watching and lets you resume it whenever you want. In addition, you can start the content when it suits you.\r\n• It has advanced functions for the digital terrestrial like the ability to pause for a few minutes of live content.\r\n• You can connect a USB key to view personal pictures / videos / music.\r\n• You can search for a specific content using:\r\n\r\n• "Search" by pressing the red button on the remote TIMvision\r\n• "Filter" by pressing the green button on the remote control to activate the search by genre, year, etc. actor\r\n'),
(2, 'TiMusic', NULL),
(3, 'TimReading', NULL),
(4, 'TimGames', NULL),
(5, 'Serie A TIM', NULL);

-- --------------------------------------------------------

--
-- Struttura della tabella `SL_Offered`
--

CREATE TABLE IF NOT EXISTS `SL_Offered` (
  `Id` int(11) NOT NULL,
  `Id SmartLife` int(11) NOT NULL,
  PRIMARY KEY (`Id`,`Id SmartLife`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `SL_Offered`
--

INSERT INTO `SL_Offered` (`Id`, `Id SmartLife`) VALUES
(1, 1),
(1, 3),
(1, 4),
(1, 5),
(2, 1),
(2, 3),
(2, 4),
(2, 5),
(3, 2),
(6, 4);

-- --------------------------------------------------------

--
-- Struttura della tabella `Smart_Life_Service`
--

CREATE TABLE IF NOT EXISTS `Smart_Life_Service` (
  `Id Smart_Life` int(11) NOT NULL AUTO_INCREMENT,
  `Initial Description` text,
  `Name` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `Type Category` int(11) NOT NULL,
  PRIMARY KEY (`Id Smart_Life`),
  UNIQUE KEY `Name` (`Name`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Dump dei dati per la tabella `Smart_Life_Service`
--

INSERT INTO `Smart_Life_Service` (`Id Smart_Life`, `Initial Description`, `Name`, `Type Category`) VALUES
(1, 'Sit back and enjoy great cinema!!\r\n\r\nA varied selection of films with the most anticipated premieres, the great classics, unreleased, action films, thrillers, comedies and animation for the whole family. In addition to HD, to make every spectacular image and not miss a single detail', 'Cinema', 1),
(2, 'Una puntata tira l’altra!!\r\n\r\nTutti gli episodi delle migliori serie TV, dalle più famose alle più esclusive, disponibili immediatamente e da vedere tutte d’un fiato e, per non interrompere la tua maratona, puoi guardare TIMvision anche sul WEB, su Smartphone e Tablet', 'Tv Series', 1),
(3, 'La natura e il mondo visti da vicino!!\r\n\r\nUna ricca offerta con i migliori documentari per attraversare luoghi incontaminati ed avere uno sguardo attento alla natura, rivedere la grande storia del passato per aiutarci a non dimenticare e incontrare personaggi famosi comodamente a casa', 'Documentari', 1),
(4, 'Ogni settimana la classifica dei 20 brani più ascoltati su TIMmusic', 'TOP 20', 2),
(5, 'Tante playlist create per accompagnare ogni momento della tua giornata.', 'Playlist', 2),
(6, 'All national and international album releases, often in exclusive preview', 'News', 2),
(7, 'Would you like to get to work already informed about the latest news? Read Your favorite newspaper anywhere, anytime on Smartphone, Tablet and PC', 'newspapers', 3),
(8, 'Fashion, gossip, news, science. What magazine you want to read now? Choose with a click and browse through Tablet and PC', 'Magazine', 3),
(9, 'TIMreading has the right book for you. Bestseller, latest news, thriller, romance novels to read on Smartphone, Tablet and PC', 'ebook', 3),
(10, 'The best classics for endless fun!', 'Arcade', 4),
(11, 'News Sport!!\r\nExperience the thrill of the challenge!', 'Sports', 4),
(12, 'A goal leads to another\r\nSee all video-goal, the video synthesis, video-news, and the news video of the championship of Serie A Soccer', 'VIdeo', 5),
(13, 'Along with TIM share a passion for football!!\r\n\r\nWith the sole of FOOTBALL LEAGUE official app you direct access to the Facebook fan page and Twitter Serie A TIM', 'Social', 5);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
