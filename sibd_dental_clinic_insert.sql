-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Erstellungszeit: 31. Okt 2019 um 14:19
-- Server-Version: 10.4.8-MariaDB
-- PHP-Version: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `sibd_dental_clinic`
--

--
-- Daten für Tabelle `client`
--

INSERT INTO `client` (`VAT`, `name`, `birth_date`, `street`, `city`, `zip`, `gender`, `age`) VALUES
('200000', 'Holden', '1932-05-14 15:16:24', '3920 Dui Rd.', 'San Miguel', '99929', '', 40),
('200001', 'Wright', '1938-05-17 04:03:37', 'P.O. Box 226, 8811 Dolor. St.', 'Nandyal', '80645', 'man', 41),
('200002', 'Carroll', '1992-07-26 01:07:01', '848 Est Avenue', 'Hudson\'s Hope', '09-237', 'man', 56),
('200003', 'Hall', '2014-07-16 20:53:48', '757-306 A, Rd.', 'Ananindeua', '0060 QG', 'man', 41);
INSERT INTO `client` (`VAT`, `name`, `birth_date`, `street`, `city`, `zip`, `gender`, `age`) VALUES
('200004', 'Rosales', '1982-12-30 03:36:53', '667-3134 Turpis Road', 'Vigo', '6366', 'man', 46),
('200005', 'Simpson', '2007-08-25 15:48:22', '389-6072 Ligula. Avenue', 'Miramichi', 'J68 5BA', 'man', 32),
('200006', 'Malone', '1999-10-08 16:13:41', 'P.O. Box 237, 5458 Et Ave', 'Alessandria', '48185', '', 36);
INSERT INTO `client` (`VAT`, `name`, `birth_date`, `street`, `city`, `zip`, `gender`, `age`) VALUES
('200007', 'Puckett', '1985-03-24 03:14:54', 'Ap #599-9611 Sem. St.', 'Bhopal', '52392', '', 28),
('200008', 'Franklin', '1972-09-16 07:29:52', 'P.O. Box 124, 6888 Elit, Rd.', 'Villach', '19929', '', 29),
('200009', 'Klein', '1944-01-23 19:46:28', '1755 Nunc. Avenue', 'Osnabrück', '70702', '', 53),
('200010', 'Clarke', '2016-06-07 09:45:08', 'Ap #623-1979 Blandit. Avenue', 'Gouda', '121115', 'man', 61);
INSERT INTO `client` (`VAT`, `name`, `birth_date`, `street`, `city`, `zip`, `gender`, `age`) VALUES
('200011', 'Cooper', '1952-07-02 00:36:45', '3284 Semper St.', 'Rio Verde', '51116', '', 37),
('200012', 'Hood', '1966-09-12 01:12:19', 'P.O. Box 983, 251 Eu Avenue', 'Bharatpur', '08139-122', '', 50),
('200013', 'Bryant', '1920-04-23 07:46:10', 'Ap #172-1424 Est, Rd.', 'Oderzo', '10714', '', 23),
('200014', 'Simpson', '1985-09-22 18:26:17', '706-7080 Donec St.', 'Molfetta', '6226', 'man', 32);
INSERT INTO `client` (`VAT`, `name`, `birth_date`, `street`, `city`, `zip`, `gender`, `age`) VALUES
('200015', 'Madden', '1986-09-07 14:01:12', '8517 Eu Avenue', 'Drumheller', '62346', 'man', 31),
('200016', 'Salazar', '1925-02-02 07:10:38', 'Ap #158-5107 Nibh. Street', 'Pitrufquén', '3310', 'man', 33),
('200017', 'Alford', '2006-12-08 12:29:47', 'P.O. Box 367, 9921 Curabitur R', 'Medea', '46028', '', 57);
INSERT INTO `client` (`VAT`, `name`, `birth_date`, `street`, `city`, `zip`, `gender`, `age`) VALUES
('200018', 'Mcintosh', '1991-10-30 16:58:01', '141-4289 Ante Rd.', 'Combarbalá', '72716-624', 'man', 22),
('200019', 'Benson', '1928-05-02 20:59:01', '950-7021 Faucibus. St.', 'La Magdeleine', '71612', '', 65),
('200020', 'Woodard', '1989-04-26 07:11:34', '1984 Blandit. Avenue', 'Stokkem', '2836', '', 38),
('200021', 'Rojas', '1954-11-07 18:27:09', '944-1122 Iaculis St.', 'Nevers', '481782', 'man', 49);
INSERT INTO `client` (`VAT`, `name`, `birth_date`, `street`, `city`, `zip`, `gender`, `age`) VALUES
('200022', 'Fulton', '1983-10-15 01:48:40', 'P.O. Box 289, 7882 Tincidunt S', 'Luttre', '97952-215', '', 29),
('200023', 'Hood', '1991-07-19 03:55:13', '9053 Ut St.', 'Dalkeith', '951374', 'man', 39),
('200024', 'Burch', '1939-09-15 18:48:46', 'Ap #339-6572 Scelerisque Stree', 'Enna', '6919 SO', '', 43),
('200025', 'Richard', '2001-11-21 04:59:31', 'Ap #144-8079 Sed Avenue', 'Lota', '78930', 'man', 43);
INSERT INTO `client` (`VAT`, `name`, `birth_date`, `street`, `city`, `zip`, `gender`, `age`) VALUES
('200026', 'Perez', '1936-06-28 06:17:42', '4493 Rutrum, Rd.', 'Namen', '8362', '', 48),
('200027', 'Estes', '1961-02-17 22:23:40', '811-1073 Tellus Rd.', 'Sanzeno', '52359', '', 48),
('200028', 'Harris', '1951-05-12 23:11:59', '4927 Nam Avenue', 'Ludhiana', '52-305', '', 34),
('200029', 'Estrada', '2015-06-01 12:12:21', '456-3454 Sed Rd.', 'Bertiolo', '72438-902', 'man', 43);
INSERT INTO `client` (`VAT`, `name`, `birth_date`, `street`, `city`, `zip`, `gender`, `age`) VALUES
('200030', 'Boyle', '1910-06-17 06:43:59', '7714 Felis St.', 'Wichita', '388045', 'man', 35),
('200031', 'Golden', '1925-05-27 15:54:57', 'Ap #116-2964 Nulla Ave', 'Tallahassee', '61217', '', 46),
('200032', 'Byrd', '2013-11-14 00:12:13', '5586 Ullamcorper, Rd.', 'Elx', '444351', '', 40),
('200033', 'Mcfadden', '1961-06-07 11:15:56', 'P.O. Box 113, 8533 In Ave', 'Alsemberg', 'T27 9TB', '', 45);
INSERT INTO `client` (`VAT`, `name`, `birth_date`, `street`, `city`, `zip`, `gender`, `age`) VALUES
('200034', 'Munoz', '2015-01-13 15:22:19', '9623 Donec Street', 'Rocca Santo Stefano', '3459', 'man', 43),
('200035', 'Frye', '1937-05-29 22:27:07', 'Ap #951-5903 Dui Rd.', 'Baiso', '10906', 'man', 31),
('200036', 'Avery', '1956-04-12 20:04:04', '134-103 Elit. Rd.', 'Matamata', '27652', 'man', 19),
('200037', 'Levy', '1975-06-19 16:20:00', 'P.O. Box 273, 7649 A, St.', 'Mangalore', '5458', '', 59);
INSERT INTO `client` (`VAT`, `name`, `birth_date`, `street`, `city`, `zip`, `gender`, `age`) VALUES
('200038', 'Molina', '1981-05-03 01:52:54', '506-5693 Non, Av.', 'Ruthin', '37764', 'man', 22),
('200039', 'Prince', '1987-10-08 22:01:45', '596-2686 Dignissim Street', 'Pangnirtung', '31345', '', 50),
('200040', 'Meyers', '1909-01-28 03:36:44', 'Ap #927-1751 Rutrum. Rd.', 'Gagliano del Capo', '7719', 'man', 44),
('200041', 'Parks', '1945-04-12 03:41:21', '3374 Nibh St.', 'Okotoks', '763196', 'man', 33);
INSERT INTO `client` (`VAT`, `name`, `birth_date`, `street`, `city`, `zip`, `gender`, `age`) VALUES
('200042', 'Bailey', '1945-06-30 02:11:11', 'P.O. Box 297, 2543 Vel, St.', 'Maria', '10802', '', 36),
('200043', 'Ramos', '1928-02-09 02:23:45', 'Ap #802-8160 Id, Street', 'Lauco', '312529', 'man', 55),
('200044', 'Mcneil', '1906-08-01 17:18:06', 'P.O. Box 614, 8277 Dignissim.', 'Tomé', '00090', 'man', 32);
INSERT INTO `client` (`VAT`, `name`, `birth_date`, `street`, `city`, `zip`, `gender`, `age`) VALUES
('200045', 'Foreman', '1999-01-23 09:13:09', 'P.O. Box 369, 1634 Egestas Rd.', 'Red Deer', '1425 BS', 'man', 37),
('200046', 'Mcknight', '2000-03-05 16:13:08', '489-310 Dolor. Rd.', 'Saint-Georges', '06186', '', 47),
('200047', 'Mckay', '2008-02-24 10:05:32', '3787 Sem. Av.', 'Sint-Niklaas', '41315', 'man', 25);
INSERT INTO `client` (`VAT`, `name`, `birth_date`, `street`, `city`, `zip`, `gender`, `age`) VALUES
('200048', 'Swanson', '1933-05-02 21:25:55', 'P.O. Box 612, 4791 At Rd.', 'Renfrew', '12777', '', 45),
('200049', 'Albert', '2018-09-22 03:56:39', '497-7082 Nascetur Av.', 'Mantova', '50802', '', 41),
('200050', 'Stein', '1964-12-02 03:42:06', 'P.O. Box 470, 5227 Ullamcorper', 'Houthalen', '11-597', '', 18);
INSERT INTO `client` (`VAT`, `name`, `birth_date`, `street`, `city`, `zip`, `gender`, `age`) VALUES
('200051', 'King', '2017-05-26 03:19:22', 'Ap #461-4222 Nunc Rd.', 'Tiarno di Sopra', '705663', 'man', 53),
('200052', 'Whitaker', '1940-12-25 07:59:54', 'Ap #326-5227 Lorem. St.', 'Cerignola', '93689-345', 'man', 26),
('200053', 'Phelps', '1950-11-11 13:11:00', 'Ap #562-7681 Mi Ave', 'Bellegem', '4552', '', 36),
('200054', 'Baird', '1962-05-27 17:32:15', '7045 Placerat Ave', 'Lecce', '48981', '', 34);
INSERT INTO `client` (`VAT`, `name`, `birth_date`, `street`, `city`, `zip`, `gender`, `age`) VALUES
('200055', 'Madden', '1947-03-09 08:06:47', 'P.O. Box 244, 9645 Blandit Rd.', 'San Gregorio', 'Y0 5CG', 'man', 35),
('200056', 'Singleton', '1961-07-13 11:14:58', 'P.O. Box 138, 6732 Cum Street', 'Harlech', '3840', '', 52),
('200057', 'Lott', '2013-03-30 21:37:18', '164-6007 Natoque St.', 'Orvieto', '072884', '', 26);
INSERT INTO `client` (`VAT`, `name`, `birth_date`, `street`, `city`, `zip`, `gender`, `age`) VALUES
('200058', 'Daniel', '1943-05-25 10:03:42', 'P.O. Box 964, 2316 Amet Street', 'Cedar Rapids', '40803', '', 34),
('200059', 'Hale', '1916-05-16 23:25:56', 'Ap #438-2456 Dictum. St.', 'Delitzsch', '94062-825', '', 47),
('200060', 'Morrow', '1937-02-26 01:28:59', 'Ap #931-1150 Commodo Av.', 'Paulatuk', '25098', '', 37);
INSERT INTO `client` (`VAT`, `name`, `birth_date`, `street`, `city`, `zip`, `gender`, `age`) VALUES
('200061', 'Alvarado', '1927-05-30 07:20:20', '204-1958 Dui St.', 'Tirupati', '150067', '', 45),
('200062', 'Bartlett', '1954-04-21 14:34:43', '337-4693 Ante Road', 'Çeşme', '6687 NV', 'man', 34),
('200063', 'Wood', '1996-07-07 02:25:25', 'P.O. Box 629, 7772 Eu, Av.', 'Juiz de Fora', '553500', '', 27);
INSERT INTO `client` (`VAT`, `name`, `birth_date`, `street`, `city`, `zip`, `gender`, `age`) VALUES
('200064', 'Sanford', '1963-09-03 09:23:46', 'Ap #597-2257 Dignissim St.', 'Francavilla Fontana', '861910', 'man', 51),
('200065', 'Weber', '1941-09-30 05:52:58', '1269 Nibh. Av.', 'Manoppello', '88139', 'man', 43),
('200066', 'Shelton', '2008-11-10 11:11:46', 'P.O. Box 812, 5524 Class St.', 'Warszawa', '74136', 'man', 28);
INSERT INTO `client` (`VAT`, `name`, `birth_date`, `street`, `city`, `zip`, `gender`, `age`) VALUES
('200067', 'Bruce', '1931-09-22 22:27:30', 'P.O. Box 163, 6469 Facilisi. A', 'Montemesola', '54427', 'man', 18),
('200068', 'Strickland', '1920-02-29 18:24:51', 'P.O. Box 731, 5161 Aliquet Ave', 'Klemskerke', '44004', '', 54),
('200069', 'Kirkland', '1979-04-12 00:05:17', 'P.O. Box 975, 4623 Interdum. R', 'Tramatza', '87898', 'man', 29);
INSERT INTO `client` (`VAT`, `name`, `birth_date`, `street`, `city`, `zip`, `gender`, `age`) VALUES
('200070', 'Rowe', '2010-03-02 00:39:41', '6611 Iaculis Avenue', 'Castel Ritaldi', '11525', '', 38),
('200071', 'Potter', '1920-05-11 17:03:48', '6500 Tincidunt St.', 'Nova Iguaçu', '03637-260', 'man', 44),
('200072', 'Glass', '1985-06-14 14:57:42', 'Ap #756-7320 Risus St.', 'Hanret', '23708', '', 36);
INSERT INTO `client` (`VAT`, `name`, `birth_date`, `street`, `city`, `zip`, `gender`, `age`) VALUES
('200073', 'Oliver', '1923-07-21 00:59:05', 'P.O. Box 826, 9107 Parturient', 'Sanzeno', '40-614', 'man', 57),
('200074', 'Douglas', '2010-06-28 21:36:37', '9800 Hendrerit Rd.', 'Lower Hutt', '94109', 'man', 35),
('200075', 'Rice', '2003-12-03 11:29:29', 'P.O. Box 845, 1950 Augue Rd.', 'Zwettl-Niederösterreich', '5768', '', 48);
INSERT INTO `client` (`VAT`, `name`, `birth_date`, `street`, `city`, `zip`, `gender`, `age`) VALUES
('200076', 'Salinas', '2003-06-23 15:02:34', 'P.O. Box 501, 1217 Etiam Avenu', 'Sefro', '7779', '', 46),
('200077', 'Anderson', '1938-03-13 09:33:21', '2887 Vitae Ave', 'Herstal', '61124', '', 52),
('200078', 'Reid', '1953-05-11 09:38:19', 'P.O. Box 790, 9514 Eu Road', 'Oberhausen', '35520', '', 47),
('200079', 'Harrington', '1960-11-06 16:13:54', '4473 Fusce Ave', 'O\'Higgins', '71062-944', '', 43);
INSERT INTO `client` (`VAT`, `name`, `birth_date`, `street`, `city`, `zip`, `gender`, `age`) VALUES
('200080', 'Sanders', '2010-11-21 04:07:39', '8671 Est Ave', 'Lathuy', '58762', 'man', 40),
('200081', 'Mitchell', '1937-09-04 16:18:33', '355-2887 Non Rd.', 'Merchtem', '748002', '', 47),
('200082', 'Bonner', '1974-04-24 03:50:31', 'P.O. Box 759, 635 Sed Rd.', 'Chartres', '495539', 'man', 48),
('200083', 'Camacho', '2009-03-26 19:30:15', '1626 Adipiscing St.', 'Sinaai-Waas', '6687', '', 52);
INSERT INTO `client` (`VAT`, `name`, `birth_date`, `street`, `city`, `zip`, `gender`, `age`) VALUES
('200084', 'Gould', '2017-11-29 17:39:37', '9277 Fusce Rd.', 'Shipshaw', '14420', '', 49),
('200085', 'Kemp', '1944-11-28 10:36:22', '791-4797 Urna. Road', 'San Demetrio Corone', '60800', 'man', 36),
('200086', 'Carney', '1959-09-10 07:10:58', '529-731 Lectus Rd.', 'Colwood', 'X6P 6N7', '', 32);
INSERT INTO `client` (`VAT`, `name`, `birth_date`, `street`, `city`, `zip`, `gender`, `age`) VALUES
('200087', 'Vaughan', '1947-12-25 01:43:56', 'P.O. Box 668, 4884 Luctus Rd.', 'Cerrillos', 'AM2H 6CC', '', 44),
('200088', 'Serrano', '1939-12-11 18:17:41', 'P.O. Box 366, 7048 Ornare St.', 'Püttlingen', '292449', 'man', 46),
('200089', 'Franklin', '1909-06-02 07:55:21', 'Ap #449-5961 Magna. Av.', 'Sauris', '46048', 'man', 22);
INSERT INTO `client` (`VAT`, `name`, `birth_date`, `street`, `city`, `zip`, `gender`, `age`) VALUES
('200090', 'Horn', '1912-04-17 22:11:55', 'Ap #526-3905 Non Street', 'Richmond', '68485', '', 31),
('200091', 'Gray', '1998-05-30 00:58:08', 'Ap #646-3829 Et, Av.', 'Warren', '407684', '', 60),
('200092', 'Morales', '1989-04-16 07:55:21', '7469 Nascetur Rd.', 'Ahmedabad', '8143', '', 44),
('200093', 'Aguirre', '1913-12-29 01:28:53', '443-2890 Arcu. Street', 'Gap', '49900', '', 42);
INSERT INTO `client` (`VAT`, `name`, `birth_date`, `street`, `city`, `zip`, `gender`, `age`) VALUES
('200094', 'Gomez', '1905-12-24 06:01:18', '7578 Neque St.', 'Nethen', '50247', '', 60),
('200095', 'Ellis', '1949-03-17 12:00:51', '907-6068 Ac Rd.', 'Barrackpur', '7424', '', 50),
('200096', 'Mercado', '2012-11-18 21:45:28', 'Ap #482-8390 A, Street', 'Sierning', '70318', 'man', 51),
('200097', 'Patterson', '2000-11-09 11:49:17', '8306 Risus. Av.', 'Rocca d\'Arce', '2549', 'man', 38);
INSERT INTO `client` (`VAT`, `name`, `birth_date`, `street`, `city`, `zip`, `gender`, `age`) VALUES
('200098', 'Rodriquez', '1945-02-02 00:45:49', 'P.O. Box 420, 1591 Urna Rd.', 'Sete Lagoas', '97556', 'man', 43),
('200099', 'Hunt', '1919-03-09 14:41:49', '678-7935 Lobortis Rd.', 'Ravensburg', '22393', 'man', 22);

--
-- Daten für Tabelle `doctor`
--

INSERT INTO `doctor` (`VAT`, `specialization`, `biography`, `email`) VALUES
('100000', 'Ophthalmologist', 'eu, accumsan sed, facilisis vitae, orci. Phasellus dapibus quam quis diam. Pellentesque habitant morbi tristique senectus et netus et malesuada', 'pede@nequeetnunc.ca'),
('100001', 'Anesthesiologist', 'vehicula aliquet libero. Integer in magna.', 'placerat.orci@eu.net');
INSERT INTO `doctor` (`VAT`, `specialization`, `biography`, `email`) VALUES
('100002', 'Ophthalmologist', 'eget nisi dictum augue malesuada malesuada. Integer id magna et ipsum cursus vestibulum. Mauris magna.', 'per.inceptos@Phasellusdolor.ca'),
('100003', 'Anesthesiologist', 'vulputate dui, nec tempus mauris erat eget ipsum. Suspendisse sagittis. Nullam vitae diam.', 'egestas.blandit.Nam@molestiete');
INSERT INTO `doctor` (`VAT`, `specialization`, `biography`, `email`) VALUES
('100004', 'Anesthesiologist', 'sem. Nulla interdum. Curabitur dictum. Phasellus in felis. Nulla tempor augue ac ipsum. Phasellus vitae mauris sit amet', 'elit@vitaeposuereat.org'),
('100005', ' Neurologist', 'Donec tincidunt. Donec vitae', 'et.ultrices@non.com'),
('100006', 'Dentist', 'Vivamus non lorem vitae odio sagittis semper. Nam tempor diam dictum sapien.', 'erat.volutpat.Nulla@urnasuscip');
INSERT INTO `doctor` (`VAT`, `specialization`, `biography`, `email`) VALUES
('100007', 'Ophthalmologist', 'sed pede nec ante blandit viverra. Donec', 'parturient.montes@Sed.org'),
('100008', 'Ophthalmologist', 'eu arcu. Morbi sit amet massa. Quisque porttitor eros nec tellus. Nunc lectus pede, ultrices a, auctor', 'neque@fermentum.ca'),
('100009', 'Dentist', 'a odio semper cursus. Integer mollis. Integer tincidunt aliquam arcu.', 'Nunc@Integermollis.edu');
INSERT INTO `doctor` (`VAT`, `specialization`, `biography`, `email`) VALUES
('100010', 'Anesthesiologist', 'molestie dapibus ligula. Aliquam erat volutpat. Nulla dignissim. Maecenas ornare egestas ligula. Nullam feugiat placerat velit. Quisque varius. Nam porttitor', 'nunc@dolordapibusgravida.com'),
('100011', 'Dentist', 'imperdiet, erat nonummy ultricies ornare, elit elit fermentum risus,', 'Donec@Phasellus.ca'),
('100012', 'Dentist', 'interdum. Nunc', 'Nulla@laoreetposuere.com');
INSERT INTO `doctor` (`VAT`, `specialization`, `biography`, `email`) VALUES
('100013', 'Pulmonologist', 'mauris, aliquam eu, accumsan sed, facilisis', 'Pellentesque.habitant.morbi@fa'),
('100014', 'Anesthesiologist', 'Aliquam tincidunt, nunc ac mattis ornare, lectus ante dictum mi, ac mattis velit justo nec ante. Maecenas', 'lorem@ut.net'),
('100015', 'Pulmonologist', 'mauris elit, dictum eu, eleifend', 'Sed.nec.metus@enimSed.co.uk');
INSERT INTO `doctor` (`VAT`, `specialization`, `biography`, `email`) VALUES
('100016', 'Podiatrist', 'accumsan neque et nunc. Quisque ornare tortor at risus. Nunc ac sem ut dolor dapibus gravida.', 'Nullam.nisl.Maecenas@Quisqueim'),
('100017', 'Pulmonologist', 'massa. Vestibulum accumsan', 'varius.ultrices@sollicitudinam'),
('100018', 'Podiatrist', 'at pretium aliquet, metus urna convallis erat, eget tincidunt dui augue', 'tempus.scelerisque@doloregesta');
INSERT INTO `doctor` (`VAT`, `specialization`, `biography`, `email`) VALUES
('100019', 'Dentist', 'urna, nec luctus felis purus ac tellus. Suspendisse sed dolor. Fusce mi', 'Proin.nisl.sem@pharetrafeliseg'),
('100020', 'Podiatrist', 'est.', 'accumsan.sed.facilisis@nislMae'),
('100021', 'Dentist', 'vitae odio sagittis semper. Nam tempor diam dictum sapien. Aenean massa. Integer vitae nibh. Donec', 'lorem@varius.net');
INSERT INTO `doctor` (`VAT`, `specialization`, `biography`, `email`) VALUES
('100022', 'Pulmonologist', 'eget, dictum placerat, augue. Sed molestie. Sed id risus quis diam luctus lobortis. Class', 'nibh.lacinia.orci@Duisacarcu.e'),
('100023', 'Anesthesiologist', 'nisi dictum augue malesuada malesuada. Integer id', 'consectetuer.ipsum@malesuada.c');
INSERT INTO `doctor` (`VAT`, `specialization`, `biography`, `email`) VALUES
('100024', 'Pulmonologist', 'cursus et, magna. Praesent interdum ligula eu enim. Etiam imperdiet dictum magna. Ut tincidunt orci quis lectus.', 'nulla.vulputate@ametfaucibusut'),
('100025', 'Anesthesiologist', 'elementum sem, vitae aliquam eros turpis non enim. Mauris quis turpis vitae purus', 'neque.tellus@Proin.co.uk');
INSERT INTO `doctor` (`VAT`, `specialization`, `biography`, `email`) VALUES
('100026', 'Emergency Physician', 'Nunc quis arcu vel quam dignissim pharetra. Nam ac nulla. In tincidunt congue', 'ante.Maecenas@orci.ca'),
('100027', 'Cardiologist', 'convallis ligula. Donec luctus aliquet odio. Etiam ligula tortor, dictum eu, placerat eget, venenatis a,', 'lacus@atarcuVestibulum.ca'),
('100028', 'Emergency Physician', 'Cras dolor dolor, tempus non, lacinia', 'ante.Vivamus.non@nondapibus.ne');
INSERT INTO `doctor` (`VAT`, `specialization`, `biography`, `email`) VALUES
('100029', 'Anesthesiologist', 'natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.', 'Mauris.molestie.pharetra@Crase'),
('100030', 'Anesthesiologist', 'gravida sit amet, dapibus id, blandit at, nisi. Cum sociis natoque penatibus et magnis', 'mus.Aenean@dolorsit.co.uk');
INSERT INTO `doctor` (`VAT`, `specialization`, `biography`, `email`) VALUES
('100031', 'Emergency Physician', 'nascetur ridiculus mus. Donec dignissim magna a tortor. Nunc commodo auctor velit. Aliquam nisl. Nulla', 'non.bibendum.sed@porttitoreros'),
('100032', 'Cardiologist', 'mauris elit, dictum eu, eleifend nec, malesuada ut, sem. Nulla interdum. Curabitur dictum.', 'non.magna.Nam@aliquetmolestie.'),
('100033', 'Anesthesiologist', 'lectus justo eu arcu. Morbi sit amet', 'Duis@rhoncusNullam.ca');
INSERT INTO `doctor` (`VAT`, `specialization`, `biography`, `email`) VALUES
('100034', 'Pulmonologist', 'fringilla. Donec feugiat', 'iaculis.enim@elementumloremut.'),
('100035', 'Pulmonologist', 'ornare. Fusce mollis. Duis sit', 'eget.metus.eu@rhoncusProinnisl'),
('100036', 'Emergency Physician', 'aliquam eros', 'odio@scelerisque.com'),
('100037', 'Cardiologist', 'Fusce aliquam, enim nec', 'placerat.Cras@tincidunt.net');
INSERT INTO `doctor` (`VAT`, `specialization`, `biography`, `email`) VALUES
('100038', 'Emergency Physician', 'amet nulla. Donec non justo. Proin non massa non ante bibendum ullamcorper. Duis cursus, diam at pretium', 'Nunc.quis.arcu@laoreetposuere.'),
('100039', 'Pulmonologist', 'et magnis dis parturient', 'Sed@malesuada.ca'),
('100040', 'Cardiologist', 'Sed eu nibh vulputate mauris sagittis placerat. Cras dictum ultricies', 'ultrices.iaculis.odio@lacusCra');
INSERT INTO `doctor` (`VAT`, `specialization`, `biography`, `email`) VALUES
('100041', 'Pulmonologist', 'quis, pede. Suspendisse dui. Fusce diam nunc, ullamcorper eu, euismod ac, fermentum vel, mauris. Integer', 'auctor.velit.Aliquam@dolor.com'),
('100042', 'Gastroenterologist', 'ipsum leo elementum sem, vitae aliquam eros turpis non enim. Mauris quis turpis vitae purus gravida', 'convallis.convallis@Nam.org'),
('100043', 'Gastroenterologist', 'magna. Nam', 'Proin.mi@magnisdis.com');
INSERT INTO `doctor` (`VAT`, `specialization`, `biography`, `email`) VALUES
('100044', 'Pulmonologist', 'odio. Nam interdum enim non nisi. Aenean eget metus. In nec orci. Donec nibh.', 'porttitor@nuncsedlibero.co.uk'),
('100045', 'Cardiologist', 'nulla. Cras eu tellus eu', 'auctor.ullamcorper.nisl@alique'),
('100046', 'Anesthesiologist', 'tincidunt, nunc ac mattis ornare, lectus', 'Phasellus@Pellentesquehabitant');
INSERT INTO `doctor` (`VAT`, `specialization`, `biography`, `email`) VALUES
('100047', 'Gastroenterologist', 'pharetra sed, hendrerit a, arcu. Sed et libero. Proin mi. Aliquam gravida mauris ut mi. Duis risus', 'porttitor.scelerisque.neque@nu'),
('100048', 'Cardiologist', 'Nam tempor diam dictum sapien. Aenean massa. Integer vitae nibh. Donec est mauris, rhoncus id,', 'ornare.tortor.at@Cum.com');
INSERT INTO `doctor` (`VAT`, `specialization`, `biography`, `email`) VALUES
('100049', 'Anesthesiologist', 'sapien imperdiet ornare. In faucibus. Morbi vehicula. Pellentesque tincidunt tempus risus.', 'diam.dictum.sapien@velnislQuis'),
('100050', 'Pulmonologist', 'et ipsum cursus vestibulum. Mauris', 'mollis.dui.in@metus.edu');

--
-- Daten für Tabelle `employee`
--

INSERT INTO `employee` (`VAT`, `name`, `birth_date`, `street`, `city`, `zip`, `IBAN`, `salary`) VALUES
('100000', 'Patterson', '1969-12-31', 'P.O. Box 586, 4948 Lobortis. Rd.', 'Puntarenas', '36-367', 'SU002111042141706401', '2041.111'),
('100001', 'Mendoza', '1969-12-31', 'P.O. Box 979, 5065 Sociis Rd.', 'Munger', '8231', 'GH557103648243287913', '2691.628'),
('100002', 'Hinton', '1969-12-31', '719-2981 Proin Road', 'St. Thomas', '47189', 'UG944382127648067568', '2176.594');
INSERT INTO `employee` (`VAT`, `name`, `birth_date`, `street`, `city`, `zip`, `IBAN`, `salary`) VALUES
('100003', 'Blair', '1969-12-31', '370-1301 Faucibus Rd.', 'Richmond', '6170', 'IG810182489972939647', '2578.753'),
('100004', 'Reynolds', '1969-12-31', '274-6761 Nulla. Rd.', 'Serampore', '63318', 'RD174138396052014073', '2715.146'),
('100005', 'Copeland', '1969-12-31', '619-2820 Aliquet St.', 'Schore', 'L0G 2H9', 'IC298322060860592127', '2248.271');
INSERT INTO `employee` (`VAT`, `name`, `birth_date`, `street`, `city`, `zip`, `IBAN`, `salary`) VALUES
('100006', 'Lott', '1969-12-31', '4021 Mauris. Rd.', 'Rouyn-Noranda', '7590', 'FR991423905134796543', '2439.376'),
('100007', 'Petty', '1969-12-31', 'P.O. Box 228, 4190 Vestibulum Road', 'Terni', '7669', 'WX107249615155862024', '2989.635'),
('100008', 'Sampson', '1969-12-31', 'Ap #662-4370 Est. Road', 'Baie-Comeau', '71135', 'FW703523844055609228', '2267.645');
INSERT INTO `employee` (`VAT`, `name`, `birth_date`, `street`, `city`, `zip`, `IBAN`, `salary`) VALUES
('100009', 'Roth', '1969-12-31', 'Ap #639-8381 Libero Rd.', 'Spiere', '745177', 'VL589661253821785953', '2745.739'),
('100010', 'Lee', '1969-12-31', '8132 Natoque Av.', 'Lac La Biche County', '61759', 'UC706252360934490721', '2662.295'),
('100011', 'Vasquez', '1969-12-31', '111-3676 Non Road', 'Dongelberg', '92383', 'HM095364546414929530', '2623.126');
INSERT INTO `employee` (`VAT`, `name`, `birth_date`, `street`, `city`, `zip`, `IBAN`, `salary`) VALUES
('100012', 'Valencia', '1969-12-31', 'P.O. Box 909, 9370 Ut, St.', 'Bellefontaine', '72122', 'HN379501507119055343', '2067.525'),
('100013', 'Gay', '1969-12-31', '8614 Sed St.', 'Campobasso', '09181-854', 'HK493923101617348916', '2848.055'),
('100014', 'Butler', '1969-12-31', '241-9109 Erat Rd.', 'Putignano', '24489', 'VL454428179861223717', '2736.597');
INSERT INTO `employee` (`VAT`, `name`, `birth_date`, `street`, `city`, `zip`, `IBAN`, `salary`) VALUES
('100015', 'White', '1969-12-31', '4882 Arcu. Rd.', 'Ladispoli', '64493', 'LZ656091795225683550', '2764.572'),
('100016', 'Talley', '1969-12-31', '9816 Mauris Rd.', 'Lonquimay', 'L6Y 7G9', 'JL952375321785401808', '2223.829'),
('100017', 'Mathis', '1969-12-31', 'P.O. Box 336, 8419 Montes, Rd.', 'Montigny-le-Tilleul', '88440', 'AV770906078158248372', '1852.238');
INSERT INTO `employee` (`VAT`, `name`, `birth_date`, `street`, `city`, `zip`, `IBAN`, `salary`) VALUES
('100018', 'Byrd', '1969-12-31', '452-1445 Mi Av.', 'Castel del Giudice', '60-362', 'ZH571228562568547906', '2675.201'),
('100019', 'Reese', '1969-12-31', '791-7799 Donec Ave', 'Wardha', 'E8V 2EH', 'SA511951147708675872', '2650.946'),
('100020', 'Adkins', '1969-12-31', 'P.O. Box 623, 3806 Elit. Road', 'Gillette', '72768', 'DU858746126349763664', '2866.442');
INSERT INTO `employee` (`VAT`, `name`, `birth_date`, `street`, `city`, `zip`, `IBAN`, `salary`) VALUES
('100021', 'Riggs', '1969-12-31', '111-2059 Enim, Street', 'Vallepietra', '43504', 'VE809952767328980228', '2458.781'),
('100022', 'Glover', '1969-12-31', '2616 Magna. Rd.', 'Noisy-le-Grand', '02812', 'ZY383352234505757444', '2789.569'),
('100023', 'Terrell', '1969-12-31', 'Ap #615-8304 Diam Street', 'Grand Rapids', '7965', 'OB419033811283537911', '2762.142');
INSERT INTO `employee` (`VAT`, `name`, `birth_date`, `street`, `city`, `zip`, `IBAN`, `salary`) VALUES
('100024', 'Dillard', '1969-12-31', 'P.O. Box 510, 6280 Cras Road', 'Fontanafredda', '6278', 'WB296503347572197112', '2155.776'),
('100025', 'Fisher', '1969-12-31', '594-160 Pede, St.', 'Coalville', '387153', 'AK954483283767475084', '2747.578'),
('100026', 'Watson', '1969-12-31', 'P.O. Box 971, 2434 Dui, Rd.', 'Ancud', '51330-708', 'LK100049214400534469', '2564.036');
INSERT INTO `employee` (`VAT`, `name`, `birth_date`, `street`, `city`, `zip`, `IBAN`, `salary`) VALUES
('100027', 'Maldonado', '1969-12-31', '4224 Duis Street', 'Santa María', '19242', 'UP870005888503501155', '2872.548'),
('100028', 'Joyner', '1969-12-31', '1081 Vitae, Rd.', 'Fredericton', '9128 CU', 'VX267161725394227156', '2466.813'),
('100029', 'Rice', '1969-12-31', '9951 Accumsan St.', 'Berloz', '05422', 'RY152125193186412126', '2680.885');
INSERT INTO `employee` (`VAT`, `name`, `birth_date`, `street`, `city`, `zip`, `IBAN`, `salary`) VALUES
('100030', 'Miranda', '1969-12-31', '7726 Leo. Road', 'Viranşehir', '946138', 'ZH912448521446887213', '2541.184'),
('100031', 'Stone', '1969-12-31', '936-5949 Suspendisse Street', 'Clearwater Municipal District', 'QI34 9KU', 'IT021578012883548627', '2896.892'),
('100032', 'Cherry', '1969-12-31', 'P.O. Box 268, 2793 Nec, Road', 'Palencia', '980227', 'EI239994870042630298', '2502.681');
INSERT INTO `employee` (`VAT`, `name`, `birth_date`, `street`, `city`, `zip`, `IBAN`, `salary`) VALUES
('100033', 'Gomez', '1969-12-31', '395-3579 Malesuada Ave', 'Fort Smith', '77-363', 'LP281161049426377015', '2839.138'),
('100034', 'Booker', '1969-12-31', 'P.O. Box 889, 2016 Sed Street', 'Valenciennes', '207900', 'OH984966123225838576', '2048.506'),
('100035', 'Espinoza', '1969-12-31', '898-8893 Sagittis Rd.', 'Livo', 'R7K 7H8', 'QT449917995485093039', '2415.42');
INSERT INTO `employee` (`VAT`, `name`, `birth_date`, `street`, `city`, `zip`, `IBAN`, `salary`) VALUES
('100036', 'Rose', '1969-12-31', 'Ap #740-5041 Vivamus Road', 'Burhaniye', '0852 DL', 'AD403249748730911831', '2660.986'),
('100037', 'Vaughan', '1969-12-31', 'P.O. Box 310, 3406 Malesuada Avenue', 'Palma de Mallorca', '23301', 'VC939877263371762326', '2685.361'),
('100038', 'Nieves', '1969-12-31', 'P.O. Box 694, 5786 A Avenue', 'Nalinnes', '53370', 'OX258097902923333897', '2709.742');
INSERT INTO `employee` (`VAT`, `name`, `birth_date`, `street`, `city`, `zip`, `IBAN`, `salary`) VALUES
('100039', 'Simon', '1969-12-31', 'P.O. Box 992, 5184 Luctus Ave', 'Eastbourne', '30781', 'EQ548695029374673983', '2222.731'),
('100040', 'Booker', '1969-12-31', '411-5510 Tellus Rd.', 'Ajaccio', '8831 YR', 'EX744575511062132377', '2309.522'),
('100041', 'Frank', '1969-12-31', 'Ap #222-2773 Nisi Ave', 'Springdale', '79878', 'SP190427929370658891', '2499.244');
INSERT INTO `employee` (`VAT`, `name`, `birth_date`, `street`, `city`, `zip`, `IBAN`, `salary`) VALUES
('100042', 'Powell', '1969-12-31', '773-7267 Enim. Rd.', 'Saint-Remy', 'Y9H 7E1', 'IQ334671105648821128', '2211.199'),
('100043', 'Whitehead', '1969-12-31', 'Ap #429-3839 Nonummy Rd.', 'Windsor', '687392', 'XU697858937973959629', '2306.406'),
('100044', 'Burch', '1969-12-31', '5542 Vitae St.', 'Mantova', '246883', 'IL813497812110419803', '2647.972');
INSERT INTO `employee` (`VAT`, `name`, `birth_date`, `street`, `city`, `zip`, `IBAN`, `salary`) VALUES
('100045', 'Parsons', '1969-12-31', 'Ap #795-8291 Mi Road', 'Gelbressee', '39649', 'HQ127951765758931663', '2569.214'),
('100046', 'Dominguez', '1969-12-31', 'Ap #557-914 Ac Road', 'Candidoni', '25-514', 'WE567392739397320845', '2298.354'),
('100047', 'Lane', '1969-12-31', '896-7029 Primis Avenue', 'Broken Arrow', '1052 MV', 'XP554134932360307032', '2393.698');
INSERT INTO `employee` (`VAT`, `name`, `birth_date`, `street`, `city`, `zip`, `IBAN`, `salary`) VALUES
('100048', 'Wall', '1969-12-31', 'P.O. Box 408, 4433 Lobortis Avenue', 'Saguenay', '262012', 'QM582829199107394882', '2627.437'),
('100049', 'Alvarado', '1969-12-31', '501-5841 Tempor St.', 'Montigny-le-Tilleul', '342491', 'FG613579330661256078', '2654.09'),
('100050', 'Haney', '1969-12-31', '7500 Nec St.', 'New Glasgow', '397704', 'KZ480707019300627675', '2759.523');
INSERT INTO `employee` (`VAT`, `name`, `birth_date`, `street`, `city`, `zip`, `IBAN`, `salary`) VALUES
('100051', 'Patel', '1969-12-31', '121-2671 Id, Ave', 'Oudenaken', '294563', 'ZJ001404340008116331', '2685.325'),
('100052', 'Ross', '1969-12-31', 'Ap #753-5730 Ut St.', 'Asnières-sur-Seine', '8875', 'VF724978151715291219', '2892.555'),
('100053', 'Sparks', '1969-12-31', '235-4609 Pede Street', 'Mattersburg', '252245', 'MU717452845779598745', '1838.077');
INSERT INTO `employee` (`VAT`, `name`, `birth_date`, `street`, `city`, `zip`, `IBAN`, `salary`) VALUES
('100054', 'Carlson', '1969-12-31', 'Ap #203-5582 Phasellus Avenue', 'Bon Accord', '5935', 'TI924383674991479075', '2434.492'),
('100055', 'Cannon', '1969-12-31', '669-7578 A, Avenue', 'Houtvenne', '38540', 'BS963539468642662342', '1881.93'),
('100056', 'Francis', '1969-12-31', '6455 Fermentum Av.', 'Penhold', '17324', 'PC002476485905195741', '2224.646');
INSERT INTO `employee` (`VAT`, `name`, `birth_date`, `street`, `city`, `zip`, `IBAN`, `salary`) VALUES
('100057', 'Wilson', '1969-12-31', 'Ap #884-7479 In Avenue', 'Saint-Remy', '490498', 'HH444475459212439537', '2443.428'),
('100058', 'Blackwell', '1969-12-31', 'Ap #880-9047 Imperdiet Street', 'Cambiago', '66111', 'EC041314941084238466', '2691.229'),
('100059', 'Perkins', '1969-12-31', '1301 A Street', 'Vaulx-lez-Chimay', '006349', 'QM435320217393069393', '2158.714');
INSERT INTO `employee` (`VAT`, `name`, `birth_date`, `street`, `city`, `zip`, `IBAN`, `salary`) VALUES
('100060', 'Mcclure', '1969-12-31', '860-4286 Pellentesque. St.', 'Herstal', '40848', 'UZ901456427268689716', '2299.47'),
('100061', 'Dale', '1969-12-31', '7703 Massa. Road', 'Heist-op-den-Berg', '15499-206', 'KZ936960243343417236', '2417.648'),
('100062', 'Galloway', '1969-12-31', 'Ap #690-1220 Eu, Avenue', 'Falisolle', '16996', 'CF675209205266333065', '2465.085');
INSERT INTO `employee` (`VAT`, `name`, `birth_date`, `street`, `city`, `zip`, `IBAN`, `salary`) VALUES
('100063', 'Sawyer', '1969-12-31', '141 Nec, Rd.', 'Colmar', '85416', 'OK269793344053263769', '2610.887'),
('100064', 'Donovan', '1969-12-31', '722-2803 Ut Road', 'Schwalbach', '34604', 'TT521223025161159308', '2760.729'),
('100065', 'Sherman', '1969-12-31', '520-9646 Rutrum Avenue', 'Shaki', '42948-431', 'VP294620986715917765', '2827.549');
INSERT INTO `employee` (`VAT`, `name`, `birth_date`, `street`, `city`, `zip`, `IBAN`, `salary`) VALUES
('100066', 'Juarez', '1969-12-31', '6909 Erat St.', 'Emines', '3758', 'ZZ432992574324221055', '2612.704'),
('100067', 'Woods', '1969-12-31', 'Ap #780-5811 Vel St.', 'Colchester', '4899 WB', 'CJ440886713720708217', '2949.106'),
('100068', 'Bauer', '1969-12-31', 'Ap #915-885 Eget Ave', 'Milmort', '61362', 'MN736055423086523467', '2008.186');
INSERT INTO `employee` (`VAT`, `name`, `birth_date`, `street`, `city`, `zip`, `IBAN`, `salary`) VALUES
('100069', 'Mclean', '1969-12-31', 'Ap #700-867 Dictum Av.', 'Ofena', '83-255', 'IZ664087660390902815', '2649.61'),
('100070', 'Fox', '1969-12-31', '1523 Dictum Ave', 'Rajkot', '551873', 'JA864256019137485853', '2475.795'),
('100071', 'Reynolds', '1969-12-31', '737-4299 At, Street', 'Pau', '00685-823', 'UF697309488789686909', '2274.228');
INSERT INTO `employee` (`VAT`, `name`, `birth_date`, `street`, `city`, `zip`, `IBAN`, `salary`) VALUES
('100072', 'Dickson', '1969-12-31', 'Ap #149-7364 Tempus St.', 'King Township', '7606 TL', 'QD096100894376339355', '2355.748'),
('100073', 'Johns', '1969-12-31', 'P.O. Box 445, 5877 Nunc Avenue', 'Amqui', '33-849', 'VS923772590511345419', '2290.17'),
('100074', 'Berg', '1969-12-31', '320-8842 Magna Ave', 'Firozabad', '31308', 'IW800210237949937888', '2328.742');
INSERT INTO `employee` (`VAT`, `name`, `birth_date`, `street`, `city`, `zip`, `IBAN`, `salary`) VALUES
('100075', 'Mcneil', '1969-12-31', '2247 Velit. Ave', 'Wierde', '7200 PU', 'JL289931997763353915', '1965.84'),
('100076', 'Odom', '1969-12-31', 'Ap #712-8748 Ac Ave', 'Dorgali', '17114', 'NT904829820885520026', '2569.061'),
('100077', 'Hawkins', '1969-12-31', 'Ap #541-1438 Vivamus Rd.', 'Junagadh', '55836', 'TL585086322798906728', '2365.715');
INSERT INTO `employee` (`VAT`, `name`, `birth_date`, `street`, `city`, `zip`, `IBAN`, `salary`) VALUES
('100078', 'Gaines', '1969-12-31', '3781 Risus. Rd.', 'Lautaro', '847340', 'MZ578665391697225415', '2781.33'),
('100079', 'Hill', '1969-12-31', '644 Molestie Ave', 'Pretoro', '6801', 'ZT051061261295450312', '2264.161'),
('100080', 'Blanchard', '1969-12-31', '109-9613 Fringilla Avenue', 'Märsta', '21-538', 'UM207105061714092001', '2239.319');
INSERT INTO `employee` (`VAT`, `name`, `birth_date`, `street`, `city`, `zip`, `IBAN`, `salary`) VALUES
('100081', 'Thompson', '1969-12-31', '6531 Ultricies St.', 'Moradabad', 'E8S 5V1', 'RL080351461609641663', '2333.943'),
('100082', 'Hull', '1969-12-31', '8848 Hymenaeos. Road', 'Negrete', '7711 LH', 'BR890557590180496150', '2292.832'),
('100083', 'Becker', '1969-12-31', '774-6057 Ac Avenue', 'Kingussie', '79225', 'SW944152525062283061', '2583.673');
INSERT INTO `employee` (`VAT`, `name`, `birth_date`, `street`, `city`, `zip`, `IBAN`, `salary`) VALUES
('100084', 'Joyce', '1969-12-31', 'Ap #954-8526 Ut Av.', 'Cassaro', '1135 EP', 'HI533127853540186011', '2684.912'),
('100085', 'Reynolds', '1969-12-31', '414-3391 Vehicula. Road', 'Chiny', '6992 RR', 'ZD050173006842738477', '3072.903'),
('100086', 'Johns', '1969-12-31', 'Ap #323-4968 Praesent Road', 'Essene', '63953', 'DG294314349433222664', '2629.729');
INSERT INTO `employee` (`VAT`, `name`, `birth_date`, `street`, `city`, `zip`, `IBAN`, `salary`) VALUES
('100087', 'Stephens', '1969-12-31', 'P.O. Box 983, 6931 Massa St.', 'Baunatal', '15534', 'WK664808210253101698', '2488.061'),
('100088', 'Contreras', '1969-12-31', 'P.O. Box 404, 8130 Gravida Rd.', 'Warangal', '38661', 'RC315141865300575864', '2804.414'),
('100089', 'Bradley', '1969-12-31', '1195 Non, St.', 'Marchihue', '50397', 'NS019430993442628167', '2406.04');
INSERT INTO `employee` (`VAT`, `name`, `birth_date`, `street`, `city`, `zip`, `IBAN`, `salary`) VALUES
('100090', 'Blankenship', '1969-12-31', 'P.O. Box 890, 8417 Lectus. St.', 'Saint-Étienne-du-Rouvray', '19315-861', 'UY000969025677004030', '2496.273'),
('100091', 'Atkins', '1969-12-31', 'P.O. Box 907, 2630 Non, St.', 'Krems an der Donau', '4045', 'DM381487551201279173', '2866.524'),
('100092', 'Parsons', '1969-12-31', '1385 Gravida Rd.', 'Aklavik', '36055', 'AU685849244662781162', '2292.135');
INSERT INTO `employee` (`VAT`, `name`, `birth_date`, `street`, `city`, `zip`, `IBAN`, `salary`) VALUES
('100093', 'Paul', '1969-12-31', '898-583 Odio Av.', 'Chantemelle', '4712', 'IC820694834209141665', '2332.402'),
('100094', 'Burch', '1969-12-31', 'Ap #551-2666 Vitae, Av.', 'Middelkerke', 'X0X 7P7', 'DW286269586398743344', '2654.439'),
('100095', 'Paul', '1969-12-31', '1466 Phasellus Rd.', 'Dipignano', '78588', 'EZ960310762235685929', '2580.361');
INSERT INTO `employee` (`VAT`, `name`, `birth_date`, `street`, `city`, `zip`, `IBAN`, `salary`) VALUES
('100096', 'French', '1969-12-31', '9479 Quisque Ave', 'Fairbanks', '0779', 'IL365704411309533056', '2457.97'),
('100097', 'Powers', '1969-12-31', 'Ap #302-7527 Dictum Street', 'Canterbury', '50305-778', 'CU278930517991226525', '2901.042'),
('100098', 'Brooks', '1969-12-31', 'Ap #443-5584 Augue Rd.', 'Bolzano/Bozen', '9705', 'TV859831928920866089', '2407.25');
INSERT INTO `employee` (`VAT`, `name`, `birth_date`, `street`, `city`, `zip`, `IBAN`, `salary`) VALUES
('100099', 'Sullivan', '1969-12-31', '613-7652 Egestas. Av.', 'Burntisland', '4025', 'EJ271855178796802059', '2203.932');

--
-- Daten für Tabelle `permanent_doctor`
--

INSERT INTO `permanent_doctor` (`years`, `VAT`) VALUES
(2, '100000'),
(7, '100001'),
(1, '100002'),
(6, '100003'),
(4, '100004'),
(6, '100005'),
(1, '100006'),
(9, '100007'),
(9, '100008'),
(3, '100009'),
(2, '100010'),
(7, '100011'),
(5, '100012'),
(7, '100013'),
(3, '100014'),
(9, '100015'),
(7, '100016'),
(6, '100017'),
(7, '100018'),
(10, '100019');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
