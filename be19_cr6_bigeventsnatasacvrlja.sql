-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 12, 2023 at 11:00 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `be19_cr6_bigeventsnatasacvrlja`
--
CREATE DATABASE IF NOT EXISTS `be19_cr6_bigeventsnatasacvrlja` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `be19_cr6_bigeventsnatasacvrlja`;

-- --------------------------------------------------------

--
-- Table structure for table `doctrine_migration_versions`
--

CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20230811080026', '2023-08-11 10:01:15', 76),
('DoctrineMigrations\\Version20230811115531', '2023-08-11 13:55:44', 160);

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` int(11) NOT NULL,
  `name` varchar(70) NOT NULL,
  `create_date` datetime NOT NULL,
  `description` longtext NOT NULL,
  `image` varchar(255) NOT NULL,
  `capacity` int(11) NOT NULL,
  `contact` varchar(60) NOT NULL,
  `contact_phone` int(11) NOT NULL,
  `type` varchar(50) NOT NULL,
  `url` varchar(255) NOT NULL,
  `address` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `name`, `create_date`, `description`, `image`, `capacity`, `contact`, `contact_phone`, `type`, `url`, `address`) VALUES
(2, 'Event test', '2018-01-01 00:00:00', 'test', 'https://cdn.pixabay.com/photo/2023/07/28/18/23/bird-8155768_1280.jpg', 12, 'email', 12345, 'Music', 'url.test', 'address'),
(3, 'Glitz and Glamour. 200 Years of Lobmeyr', '2023-08-30 17:30:00', 'Since 1823, the Viennese glass manufacturer J. & L. Lobmeyr  has stood for artistic, masterfully executed glasses, drinking  services, chandeliers, and decorative objects of fine dining. Over the course of six generations, the Lobmeyr family has managed  to combine tradition with innovation and to shape glass design far beyond the borders of Austria with designs by creative minds such as Theophil Hansen, Josef Hoffmann, Adolf Loos, Lotte Fink, Marianne Rath, Michael Anastassiades, Max Lamb, POLKA, Martino Gamper, and Sebastian Menschhorn.\r\n\r\nOn the occasion of its 200th anniversary, the MAK, which can look back on a long-standing connection with the glassmaking dynasty, is honoring J. & L. Lobmeyr with an exhibition that makes the unbelievable variety of the objects tangible. In the exhibition design, an aspect that is often perceived only intuitively will be formative: J. & L. Lobmeyr’s deep understanding of the interplay of light and shadow. The anniversary exhibition plays with the optical charms that Lobmeyr glass unfolds when placed in light.', 'https://cdn.pixabay.com/photo/2016/11/21/15/58/wedding-1846114_1280.jpg', 50, 'test@gmail.com', 52413, 'other', 'https://events.wien.info/en/1626/glitz-and-glamour-200-years-of-lobmeyr/', 'MAK-Ausstellungshalle Stubenring 5 1010 Wien'),
(7, 'Theater im Park am Belvedere 2023', '2023-09-16 15:30:00', 'The private garden of Palais Schwarzenberg - a beautiful, two-hectare English natural garden in the 3rd district is also open in 2023 for communal cultural enjoyment under the open sky. Surrounded by over 100-year-old plane trees, one of Vienna\'s summer stages will be staged from May 25 to September 16, 2023.\r\n\r\nMany stars from the worlds of cabaret, comedy, classical music, pop or theater, who have joined us in previous years, will be performing again. Numerous well-known artists are new to the 2023 season.\r\n\r\nFrom the theater to the museum: as a special bonus, visitors to Theater im Park receive free admission to the Museum im Oberen Belvedere on the day of the event or the following day (upon presentation of the Theater im Park ticket at the Belvedere ticket office, subject to availability)!', 'https://events.wien.info/media/full/fb-cover2-mit-button.jpg', 150, 'belvedere@gmail.com', 1324569, 'theater', 'https://events.wien.info/en/129l/theater-im-park-am-belvedere-2023/', 'Prinz-Eugen-Straße/Ecke Plößlgasse 1030 Wien'),
(8, 'A Tribute to Vienna', '2023-08-25 14:00:00', 'Capriole, Levade and Johann Strauß – the performance of \"A Tribute to Vienna\" with Prof. Günter Seifert, member of the Vienna Philharmonic Orchestra, and his philharmonic colleagues will share the highlights of the Viennese Ballet of the White Stallions alternating with musical presentations of the imperial period.\r\n\r\nThe Spanish Riding School presents its most important exercises of the range of the High School – as usual, in highest elegance and harmony –  among others the “Pas de Deux” or the world famous Schools Above the Ground, for example the Capriole or the Levade.\r\n\r\nProfessor Günter Seifert presents a typical Viennese repertoire: from the Waltz Song of Johann Strauß Son “Out there in Sieveringthe lilac is blooming already“, the \"Chineser Galop” by Johann Strauß Father, the “Jubelwalzer” by Joseph Lanner to the ”Radetzky March”, one of the most famous marches in the world, which traditionally concludes every New Year’s Concert and has a highly symbolic meaning for the Austro-Hungarian monarchy.', 'https://events.wien.info/media/full/Spanische_Hofreitschule_A_Tribute_to_Vienna.jpg', 60, 'ridingschool@vienna.at', 1632445, 'music', 'https://events.wien.info/en/10p1/a-tribute-to-vienna/', 'Michaelerplatz 1 (Besucherzentrum/Visitor Center) 1010 Wien'),
(9, 'Vienna 1900. Birth of Modernism', '2023-08-15 11:00:00', 'The Leopold Museum is a unique treasury of Viennese Modernism and the Wiener Werkstätte. The new permanent exhibition “Vienna 1900. Birth of Modernism” offers insights into the enormous abundance and diversity of the artistic and intellectual achievements of this epoch. Art lovers will be enthralled by the 1,300 exhibits arranged over three floors.\r\nApart from the world’s largest and most significant Egon Schiele collection, masterpieces by Gustav Klimt, the graphics, sculptures, and photographs, there are also exhibits in glass, ceramic, metal, textiles, and leather. Jewelry and furniture are also on display, as are entire apartment furnishings. An exhibition for everyone wishing to experience Viennese Modernism in Vienna.', 'https://events.wien.info/media/full/Wien1900.jpg', 20, 'leopold@vienna.at', 1236548, 'other', 'https://events.wien.info/en/16kr/vienna-1900-birth-of-modernism/', 'Museumsplatz 1 1070 Wien'),
(10, 'Into the Viennese Alps on the Rax cable car', '2023-09-29 17:00:00', 'Straight as a die up the Rax: The Rax cable car takes its guests up to the Rax plateau in the Viennese Alps in Lower Austria in a ride lasting eight minutes. A year-round peak feeling less than 100 kilometers from Vienna – reachable on public transport in around 70 minutes!\r\nSafe, energy-aware, efficient, comfortable, and with state-of-the-art technology, Austria\'s first passenger cable car shuttles guests to and from the Rax plateau at 1,545 meters above sea level in summer and winter.\r\n\r\nThe ride up the mountain takes under eight minutes – with theonline booking system, you can buy tickets from the comfort of home. Once at the top of the Rax plateau, a place of power and inspiration with a fascinating botanical biodiversity awaits hiking guests and nature enthusiasts. Hikers can also get athletically active – the Rax is a climbing paradise, too. And pleasurable walking is another option for exploring the plateau. Contemporary chalet cuisine is provided by theRaxalm-Berggasthofand theOttohaus, where individual guests can stay overnight in spring, summer, and autumn if they wish.', 'https://events.wien.info/media/full/Rax-Seilbahn_Sommer_c_Katrin_Nusterer.jpg', 15, 'reichenau@rax.vienna.at', 145236, 'sport', 'https://events.wien.info/en/16el/into-the-viennese-alps-on-the-rax-cable-car/', 'Dr. Ewald Bing-Straße 3 2651 Reichenau an der Rax'),
(11, 'Guided Tours', '2023-08-29 09:00:00', 'Take a look behind the scenes of the Spanish Riding School\r\n\r\nIn the Guided Tour through the Spanish Riding School you will visit the baroque Winter Riding School, the Summer Riding School with one of the world’s largest oval horse walkers and the stables of the Lipizzan stallions, which have been located in the Stallburg (one of Vienna’s most prominent Renaissance buildings) for more than 450 years. You will visit the most important areas of our historic institution and will learn about our history, equestrian traditions and about the stars – the Lipizzan stallions!\r\n\r\nMeeting point for the guided tour: directly at the Visitor Centre, 5 minutes before the guided tour starts.', 'https://events.wien.info/media/full/Pferd_in_Box_c_Spanische_Hofreitschule_Michael_Rzepa.jpg', 10, 'spanishriding@gmail.com', 136524, 'sport', 'https://events.wien.info/en/11zu/guided-tours/', 'Michaelerplatz 1 (Besucherzentrum/Visitor Center) 1010 Wien'),
(12, 'Sound of Freedom', '2023-08-28 15:00:00', 'In Tegucigalpa, Honduras, Roberto, a poor father of two, is approached by a former beauty queen, Giselle. She offers to sign his young children, Miguel and Rocío, to child modeling contracts. He accepts and takes them to the photoshoot. When he returns to pick his children up, they are gone. It is revealed that the children were sold to be used as sex slaves.\r\n\r\nIn Calexico, California, Tim Ballard is a Special Agent for the Homeland Security Investigations (HSI), where he arrests people who possess and distribute child pornography. The painful work takes a great toll on his personal life, and this is only worsened when another agent, Chris, points out that they have arrested many child predators, but have failed to save even a single child from being exploited. Tim knows that this is because most of them are outside the U.S., but Chris\'s words stick with him. He speaks to a predator he arrested, Ernst Oshinsky, and pretends to be a pedophile himself. Once he gains Oshinsky\'s trust, he sets up a meeting with a trafficked child, and is able to arrest Earl Buchanan, the man who purchased Miguel.', 'https://i.ytimg.com/vi/Rt0kp4VW1cI/maxresdefault.jpg', 100, 'movies@vienna.at', 136524, 'movie', 'https://en.wikipedia.org/wiki/Sound_of_Freedom_(film)', 'Vienna, Millenium City, st. 3');

-- --------------------------------------------------------

--
-- Table structure for table `messenger_messages`
--

CREATE TABLE `messenger_messages` (
  `id` bigint(20) NOT NULL,
  `body` longtext NOT NULL,
  `headers` longtext NOT NULL,
  `queue_name` varchar(190) NOT NULL,
  `created_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `available_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `delivered_at` datetime DEFAULT NULL COMMENT '(DC2Type:datetime_immutable)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `doctrine_migration_versions`
--
ALTER TABLE `doctrine_migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messenger_messages`
--
ALTER TABLE `messenger_messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_75EA56E0FB7336F0` (`queue_name`),
  ADD KEY `IDX_75EA56E0E3BD61CE` (`available_at`),
  ADD KEY `IDX_75EA56E016BA31DB` (`delivered_at`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `messenger_messages`
--
ALTER TABLE `messenger_messages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
