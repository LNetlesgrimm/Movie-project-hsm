-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mer. 21 avr. 2021 à 16:51
-- Version du serveur :  10.4.18-MariaDB
-- Version de PHP : 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `group_shm_exe`
--

-- --------------------------------------------------------

--
-- Structure de la table `actors`
--

CREATE TABLE `actors` (
  `id` int(11) NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `gender` enum('m','f','o','') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `actors`
--

INSERT INTO `actors` (`id`, `full_name`, `gender`) VALUES
(1, 'Israel Berford', 'm'),
(2, 'Tod Nias', 'm'),
(3, 'Abbie Sheering', 'm'),
(4, 'Caddric Borzoni', 'm'),
(5, 'Rozanne Elner', 'f'),
(6, 'Timoteo Snelling', 'm'),
(7, 'Hilary Giblin', 'm'),
(8, 'Jae Hark', 'm'),
(9, 'Napoleon Fewkes', 'm'),
(10, 'Jackelyn Skeen', 'f'),
(11, 'Marv Farryann', 'm'),
(12, 'Karly Comberbeach', 'f'),
(13, 'Katuscha Bower', 'f'),
(14, 'Burty Brideoke', 'm'),
(15, 'Robbie Greenstead', 'f'),
(16, 'Darby Dunton', 'm'),
(17, 'Mirella Godridge', 'f'),
(18, 'Drona Barta', 'f'),
(19, 'Orland Greenard', 'm'),
(20, 'Stephenie Gladtbach', 'f'),
(21, 'Lilith Minnock', 'f'),
(22, 'Marcellina Brotherhead', 'f'),
(23, 'Dulce Lamberts', 'f'),
(24, 'Barron Gamblin', 'm'),
(25, 'Elliot Fearns', 'm'),
(26, 'Antony Woolham', 'm'),
(27, 'Jenda Larmet', 'f'),
(28, 'Blondie Noakes', 'f'),
(29, 'Con Cullimore', 'm'),
(30, 'Emmanuel Cowhig', 'm'),
(31, 'Robinetta Cavell', 'f'),
(32, 'Melisse Hackworthy', 'f'),
(33, 'Avie Creasey', 'f'),
(34, 'Timi Bicksteth', 'f'),
(35, 'Meris Clinton', 'f'),
(36, 'Abbe Stoacley', 'm'),
(37, 'Orton Crozier', 'm'),
(38, 'Lara Wasselin', 'f'),
(39, 'Lorianna Bazell', 'f'),
(40, 'Maurene Leuren', 'f'),
(41, 'Chet Watters', 'm'),
(42, 'Sheelagh Piotrkowski', 'f'),
(43, 'Kayley Ludee', 'f'),
(44, 'Temp McQuarrie', 'm'),
(45, 'Myca Primmer', 'm'),
(46, 'Cheslie Hindmoor', 'f'),
(47, 'Georg Fenlon', 'm'),
(48, 'Dotty Becom', 'f'),
(49, 'Harri Tamas', 'f'),
(50, 'Edyth Spry', 'f');

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`) VALUES
(1, 'Documentary', 'Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh. In quis justo. Maecenas rhoncus aliquam lacus.'),
(2, 'Comedy|Crime|Drama', 'Aliquam erat volutpat. In congue.'),
(3, 'Fantasy|Horror|Romance|Thriller', 'Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh. Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio'),
(4, 'Comedy|Western', 'Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi. Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus.'),
(5, 'Adventure|Children|Fantasy', 'Proin risus.'),
(6, 'Crime|Drama|Thriller', 'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.'),
(7, 'Animation', 'Vivamus tortor. Duis mattis egestas metus.'),
(8, 'Drama|Horror|Thriller', 'Nam dui.'),
(9, 'Documentary|Drama', 'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.'),
(10, 'Romance', 'Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede. Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus.'),
(11, 'Action|Crime|Drama', 'Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem. Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.'),
(12, 'Children|Comedy', 'Proin leo odio, porttitor id, consequat in, consequat ut, nulla.'),
(13, 'Action|Adventure|Drama', 'Vivamus tortor. Duis mattis egestas metus. Aenean fermentum.'),
(14, 'Comedy|Romance', 'Etiam pretium iaculis justo. In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus. Nulla ut erat id mauris vulputate elementum.'),
(15, 'Drama', 'In est risus, auctor sed, tristique in, tempus sit amet, sem. Fusce consequat. Nulla nisl. Nunc nisl.');

-- --------------------------------------------------------

--
-- Structure de la table `movies`
--

CREATE TABLE `movies` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `poster` varchar(255) DEFAULT NULL,
  `date_of_release` date NOT NULL,
  `category_id` int(11) NOT NULL,
  `movie_link` varchar(255) DEFAULT NULL,
  `synopsis` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `movies`
--

INSERT INTO `movies` (`id`, `title`, `poster`, `date_of_release`, `category_id`, `movie_link`, `synopsis`) VALUES
(1, 'test', 'http://dummyimage.com/243x100.png/cc0000/ffffff', '2005-08-21', 1, 'http://soup.io/donec/odio.png?auctor=in&amp;gravida=leo&amp;sem=maecenas&amp;praesent=pulvinar&amp;id=lobortis&amp;massa=est&amp;id=phasellus&amp;nisl=sit&amp;venenatis=amet&amp;lacinia=erat&amp;aenean=nulla&amp;sit=tempus&amp;amet=vivamus&amp;justo=in&am', 'Donec posuere metus vitae ipsum. Aliquam non mauris.'),
(2, 'Uranus', 'http://dummyimage.com/167x100.png/dddddd/000000', '1950-08-01', 1, 'http://rambler.ru/maecenas/tristique/est/et/tempus.jsp?dictumst=pretium&morbi=iaculis&vestibulum=justo&velit=in&id=hac&pretium=habitasse&iaculis=platea&diam=dictumst&erat=etiam&fermentum=faucibus&justo=cursus&nec=urna&condimentum=ut&neque=tellus&sapien=nu', 'Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus. Curabitur at ipsum ac tellus semper interdum.'),
(3, 'Bridge to the Sun', 'http://dummyimage.com/192x100.png/5fa2dd/ffffff', '1954-09-19', 4, 'https://woothemes.com/maecenas/rhoncus/aliquam/lacus/morbi/quis/tortor.xml?ut=enim&suscipit=sit&a=amet&feugiat=nunc&et=viverra&eros=dapibus&vestibulum=nulla&ac=suscipit&est=ligula&lacinia=in', 'Aenean auctor gravida sem.'),
(4, 'Plácido', 'http://dummyimage.com/131x100.png/cc0000/ffffff', '2003-07-28', 6, 'http://usatoday.com/posuere/felis/sed/lacus/morbi/sem/mauris.jsp?pellentesque=aenean&eget=fermentum&nunc=donec&donec=ut&quis=mauris&orci=eget&eget=massa&orci=tempor&vehicula=convallis&condimentum=nulla&curabitur=neque&in=libero&libero=convallis&ut=eget&ma', 'Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.'),
(5, 'Seasoning House, The', 'http://dummyimage.com/179x100.png/5fa2dd/ffffff', '1943-09-20', 1, 'http://whitehouse.gov/imperdiet/nullam.png?condimentum=quis&neque=augue&sapien=luctus&placerat=tincidunt&ante=nulla&nulla=mollis&justo=molestie&aliquam=lorem&quis=quisque&turpis=ut&eget=erat&elit=curabitur&sodales=gravida&scelerisque=nisi&mauris=at&sit=ni', 'Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui. Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae'),
(6, 'King of Beggars (Mo jong yuen So Hat-Yi)', 'http://dummyimage.com/209x100.png/dddddd/000000', '1959-07-14', 6, 'http://gnu.org/quisque/arcu/libero.jpg?justo=nibh&sit=in&amet=lectus&sapien=pellentesque&dignissim=at&vestibulum=nulla&vestibulum=suspendisse&ante=potenti&ipsum=cras&primis=in&in=purus&faucibus=eu&orci=magna&luctus=vulputate&et=luctus&ultrices=cum&posuere', 'Integer a nibh. In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.'),
(7, 'Sliver', 'http://dummyimage.com/110x100.png/cc0000/ffffff', '1950-12-28', 7, 'https://twitter.com/suscipit.jpg?tincidunt=tempus&lacus=vivamus&at=in&velit=felis&vivamus=eu&vel=sapien&nulla=cursus&eget=vestibulum&eros=proin&elementum=eu&pellentesque=mi&quisque=nulla&porta=ac&volutpat=enim&erat=in&quisque=tempor&erat=turpis&eros=nec&v', 'Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus. In sagittis dui vel nisl.'),
(8, 'Hunting and Gathering (Ensemble, c\'est tout)', 'http://dummyimage.com/207x100.png/ff4444/ffffff', '1999-02-12', 14, 'https://youtu.be/leo/odio/condimentum/id/luctus/nec.xml?in=at&libero=vulputate&ut=vitae&massa=nisl&volutpat=aenean&convallis=lectus&morbi=pellentesque&odio=eget', 'Aliquam non mauris. Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet.'),
(9, 'Rurouni Kenshin (Rurôni Kenshin: Meiji kenkaku roman tan)', 'http://dummyimage.com/168x100.png/5fa2dd/ffffff', '1925-11-18', 9, 'http://huffingtonpost.com/aliquet/at/feugiat/non/pretium/quis.xml?cursus=elementum&vestibulum=in&proin=hac&eu=habitasse&mi=platea&nulla=dictumst&ac=morbi&enim=vestibulum&in=velit&tempor=id&turpis=pretium&nec=iaculis&euismod=diam&scelerisque=erat&quam=ferm', 'Vivamus tortor. Duis mattis egestas metus. Aenean fermentum.'),
(10, 'Gamera vs. Gyaos (Daikaijû kûchûsen: Gamera tai Gyaosu)', 'http://dummyimage.com/211x100.png/dddddd/000000', '1988-03-06', 9, 'http://dedecms.com/eu/orci/mauris/lacinia/sapien/quis/libero.jpg?vestibulum=a&eget=libero&vulputate=nam&ut=dui&ultrices=proin&vel=leo&augue=odio&vestibulum=porttitor&ante=id&ipsum=consequat&primis=in&in=consequat&faucibus=ut&orci=nulla&luctus=sed&et=accum', 'Morbi non quam nec dui luctus rutrum. Nulla tellus. In sagittis dui vel nisl.'),
(11, 'Dying Swan, The (Umirayushchii lebed)', 'http://dummyimage.com/187x100.png/ff4444/ffffff', '1925-05-12', 13, 'http://cocolog-nifty.com/cras/in.js?primis=odio&in=condimentum&faucibus=id&orci=luctus&luctus=nec&et=molestie&ultrices=sed&posuere=justo&cubilia=pellentesque&curae=viverra&duis=pede&faucibus=ac&accumsan=diam&odio=cras&curabitur=pellentesque&convallis=volu', 'Donec dapibus. Duis at velit eu est congue elementum. In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo. Aliquam quis turpis eget elit sodales s'),
(12, 'Born to Raise Hell', 'http://dummyimage.com/132x100.png/dddddd/000000', '1993-11-19', 1, 'https://independent.co.uk/nisl/venenatis/lacinia/aenean/sit/amet.png?integer=risus&non=praesent&velit=lectus&donec=vestibulum&diam=quam&neque=sapien&vestibulum=varius&eget=ut&vulputate=blandit&ut=non&ultrices=interdum&vel=in&augue=ante&vestibulum=vestibul', 'Vestibulum quam sapien, varius ut, blandit non, interdum in, ante.'),
(13, 'Smart Money', 'http://dummyimage.com/188x100.png/dddddd/000000', '1985-09-18', 8, 'http://reference.com/proin/leo/odio/porttitor/id/consequat.xml?molestie=vivamus&sed=vel&justo=nulla&pellentesque=eget&viverra=eros&pede=elementum&ac=pellentesque&diam=quisque&cras=porta&pellentesque=volutpat&volutpat=erat&dui=quisque&maecenas=erat&tristiq', 'Integer non velit. Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi'),
(14, 'Julius Caesar', 'http://dummyimage.com/110x100.png/ff4444/ffffff', '1942-04-01', 2, 'https://howstuffworks.com/semper/rutrum.png?ut=tincidunt&massa=ante&quis=vel&augue=ipsum&luctus=praesent&tincidunt=blandit&nulla=lacinia&mollis=erat&molestie=vestibulum&lorem=sed&quisque=magna&ut=at&erat=nunc&curabitur=commodo&gravida=placerat&nisi=praese', 'Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst. Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem.'),
(15, 'License to Drive', 'http://dummyimage.com/138x100.png/dddddd/000000', '1922-01-09', 8, 'http://github.io/quam/turpis/adipiscing/lorem/vitae.aspx?platea=purus&dictumst=phasellus&maecenas=in&ut=felis&massa=donec&quis=semper&augue=sapien&luctus=a&tincidunt=libero&nulla=nam&mollis=dui&molestie=proin&lorem=leo&quisque=odio&ut=porttitor&erat=id&cu', 'Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat. In congue. Etiam justo. Etiam pretium iaculis justo. In hac habitasse platea dictumst.'),
(16, 'The Clinic', 'http://dummyimage.com/129x100.png/ff4444/ffffff', '1925-11-18', 12, 'http://tamu.edu/luctus/nec/molestie/sed/justo/pellentesque/viverra.js?ipsum=nunc&praesent=nisl&blandit=duis&lacinia=bibendum&erat=felis&vestibulum=sed&sed=interdum&magna=venenatis&at=turpis&nunc=enim&commodo=blandit&placerat=mi&praesent=in&blandit=porttit', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit.'),
(17, 'Exit to Hell', 'http://dummyimage.com/220x100.png/ff4444/ffffff', '1924-06-30', 11, 'https://house.gov/nunc/proin/at/turpis/a/pede.aspx?sagittis=magna&sapien=bibendum&cum=imperdiet&sociis=nullam&natoque=orci&penatibus=pede&et=venenatis&magnis=non&dis=sodales&parturient=sed&montes=tincidunt&nascetur=eu&ridiculus=felis&mus=fusce&etiam=posue', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl. Aenean lectus.'),
(18, 'Topper Takes a Trip', 'http://dummyimage.com/214x100.png/dddddd/000000', '1948-01-23', 7, 'http://devhub.com/in/purus.aspx?vestibulum=leo&ante=rhoncus&ipsum=sed&primis=vestibulum&in=sit&faucibus=amet&orci=cursus&luctus=id&et=turpis&ultrices=integer&posuere=aliquet&cubilia=massa&curae=id&mauris=lobortis&viverra=convallis&diam=tortor&vitae=risus&', 'Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus. Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.'),
(19, 'Back Street', 'http://dummyimage.com/225x100.png/5fa2dd/ffffff', '1979-07-06', 5, 'https://usatoday.com/diam/neque/vestibulum/eget/vulputate/ut.jsp?nulla=vel&nisl=accumsan&nunc=tellus&nisl=nisi&duis=eu&bibendum=orci&felis=mauris&sed=lacinia&interdum=sapien&venenatis=quis&turpis=libero&enim=nullam&blandit=sit&mi=amet&in=turpis&porttitor=', 'Suspendisse accumsan tortor quis turpis. Sed ante.'),
(20, 'Walker, The', 'http://dummyimage.com/206x100.png/cc0000/ffffff', '1998-04-05', 13, 'https://pcworld.com/odio.jsp?ultrices=tincidunt&posuere=ante&cubilia=vel&curae=ipsum&mauris=praesent&viverra=blandit&diam=lacinia&vitae=erat&quam=vestibulum&suspendisse=sed&potenti=magna&nullam=at&porttitor=nunc&lacus=commodo&at=placerat&turpis=praesent&d', 'Aliquam non mauris. Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis. Fusce posuere felis sed lacus.'),
(21, 'Love Bug, The', 'http://dummyimage.com/228x100.png/5fa2dd/ffffff', '1992-10-10', 1, 'https://springer.com/risus/praesent/lectus/vestibulum/quam/sapien.jsp?euismod=mauris&scelerisque=vulputate&quam=elementum&turpis=nullam&adipiscing=varius&lorem=nulla&vitae=facilisi&mattis=cras&nibh=non&ligula=velit&nec=nec&sem=nisi&duis=vulputate&aliquam=', 'Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est. Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.'),
(22, 'Jungo Goes Bananas: Jungo III (Jungledyret Hugo: Fræk, flabet og fri)', 'http://dummyimage.com/120x100.png/dddddd/000000', '1944-12-10', 1, 'http://constantcontact.com/amet/lobortis/sapien.png?in=lobortis&hac=est&habitasse=phasellus&platea=sit&dictumst=amet&etiam=erat&faucibus=nulla&cursus=tempus&urna=vivamus', 'Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris. Morbi non lectus.'),
(23, 'Monkey\'s Mask, The', 'http://dummyimage.com/179x100.png/ff4444/ffffff', '1920-08-23', 8, 'https://digg.com/consequat/varius/integer.jpg?pellentesque=lorem&at=vitae&nulla=mattis&suspendisse=nibh&potenti=ligula&cras=nec&in=sem&purus=duis&eu=aliquam&magna=convallis&vulputate=nunc&luctus=proin&cum=at&sociis=turpis&natoque=a&penatibus=pede&et=posue', 'In est risus, auctor sed, tristique in, tempus sit amet, sem. Fusce consequat.'),
(24, 'Beach Girls and the Monster, The', 'http://dummyimage.com/133x100.png/5fa2dd/ffffff', '1940-09-30', 15, 'http://alibaba.com/augue/vestibulum.json?congue=accumsan&etiam=tellus&justo=nisi&etiam=eu&pretium=orci&iaculis=mauris&justo=lacinia&in=sapien&hac=quis&habitasse=libero&platea=nullam&dictumst=sit&etiam=amet&faucibus=turpis&cursus=elementum&urna=ligula&ut=v', 'Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh. Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices'),
(25, 'Toughest Man in the World, The', 'http://dummyimage.com/124x100.png/ff4444/ffffff', '1968-11-22', 2, 'http://slashdot.org/ante/ipsum.aspx?morbi=platea&quis=dictumst&tortor=morbi&id=vestibulum&nulla=velit&ultrices=id&aliquet=pretium&maecenas=iaculis&leo=diam&odio=erat&condimentum=fermentum&id=justo&luctus=nec&nec=condimentum&molestie=neque&sed=sapien&justo', 'Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat. In congue. Etiam justo. Etiam pretium iaculis justo.'),
(26, 'Taste of Honey, A', 'http://dummyimage.com/129x100.png/ff4444/ffffff', '1995-01-31', 4, 'https://oaic.gov.au/ipsum/primis/in/faucibus.json?felis=proin&donec=eu&semper=mi&sapien=nulla&a=ac&libero=enim&nam=in&dui=tempor&proin=turpis&leo=nec&odio=euismod&porttitor=scelerisque&id=quam&consequat=turpis&in=adipiscing&consequat=lorem&ut=vitae&nulla=', 'Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.'),
(27, 'Holidays by the Sea (Ni à vendre ni à louer)', 'http://dummyimage.com/241x100.png/5fa2dd/ffffff', '2001-12-08', 2, 'https://cpanel.net/sed.xml?dictumst=maecenas&maecenas=rhoncus&ut=aliquam&massa=lacus&quis=morbi&augue=quis&luctus=tortor&tincidunt=id&nulla=nulla&mollis=ultrices&molestie=aliquet&lorem=maecenas&quisque=leo&ut=odio&erat=condimentum&curabitur=id&gravida=luc', 'Vivamus tortor. Duis mattis egestas metus. Aenean fermentum. Donec ut mauris eget massa tempor convallis.'),
(28, 'Living Dead Girl, The (Morte Vivante, La)', 'http://dummyimage.com/247x100.png/ff4444/ffffff', '1996-08-02', 3, 'https://studiopress.com/nulla/tempus/vivamus/in/felis.jpg?integer=dui&aliquet=proin&massa=leo&id=odio&lobortis=porttitor&convallis=id&tortor=consequat&risus=in&dapibus=consequat&augue=ut&vel=nulla&accumsan=sed&tellus=accumsan&nisi=felis&eu=ut&orci=at&maur', 'Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit. Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue.'),
(29, 'I Am Fishead', 'http://dummyimage.com/118x100.png/dddddd/000000', '1985-05-30', 15, 'https://weebly.com/posuere/cubilia/curae/duis/faucibus/accumsan.png?sapien=velit&quis=id&libero=pretium&nullam=iaculis&sit=diam&amet=erat&turpis=fermentum&elementum=justo&ligula=nec&vehicula=condimentum&consequat=neque&morbi=sapien&a=placerat&ipsum=ante&i', 'Nulla nisl. Nunc nisl. Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa.'),
(30, 'Christmas Toy, The', 'http://dummyimage.com/189x100.png/dddddd/000000', '1960-04-22', 1, 'http://blog.com/in/faucibus/orci/luctus/et/ultrices.aspx?duis=amet&aliquam=justo&convallis=morbi&nunc=ut&proin=odio&at=cras&turpis=mi&a=pede&pede=malesuada&posuere=in&nonummy=imperdiet&integer=et&non=commodo&velit=vulputate&donec=justo&diam=in&neque=bland', 'Etiam justo. Etiam pretium iaculis justo. In hac habitasse platea dictumst.'),
(31, 'Tabloid', 'http://dummyimage.com/167x100.png/ff4444/ffffff', '1940-07-03', 12, 'http://buzzfeed.com/quam/sapien/varius.html?semper=sit&est=amet&quam=diam&pharetra=in&magna=magna&ac=bibendum&consequat=imperdiet&metus=nullam&sapien=orci&ut=pede&nunc=venenatis&vestibulum=non&ante=sodales&ipsum=sed&primis=tincidunt&in=eu&faucibus=felis&o', 'Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus. Curabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla.'),
(32, 'Cheyenne Autumn', 'http://dummyimage.com/158x100.png/ff4444/ffffff', '2017-02-27', 4, 'http://eepurl.com/vel.json?ipsum=posuere&dolor=cubilia&sit=curae&amet=nulla&consectetuer=dapibus&adipiscing=dolor&elit=vel&proin=est&interdum=donec&mauris=odio&non=justo&ligula=sollicitudin&pellentesque=ut&ultrices=suscipit&phasellus=a&id=feugiat&sapien=e', 'In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem. Duis aliquam convallis nunc.'),
(33, 'Uncounted: The New Math of American Elections', 'http://dummyimage.com/196x100.png/cc0000/ffffff', '1958-01-04', 12, 'https://surveymonkey.com/neque/duis/bibendum/morbi.json?nisi=ligula&nam=vehicula&ultrices=consequat&libero=morbi&non=a&mattis=ipsum&pulvinar=integer&nulla=a&pede=nibh&ullamcorper=in&augue=quis&a=justo&suscipit=maecenas&nulla=rhoncus&elit=aliquam&ac=lacus&', 'Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus.'),
(34, 'Sallah', 'http://dummyimage.com/112x100.png/cc0000/ffffff', '1947-08-14', 7, 'http://ucsd.edu/magna/vestibulum/aliquet/ultrices/erat.jpg?aenean=vestibulum&sit=vestibulum&amet=ante&justo=ipsum&morbi=primis&ut=in&odio=faucibus&cras=orci&mi=luctus&pede=et&malesuada=ultrices&in=posuere&imperdiet=cubilia&et=curae&commodo=nulla&vulputate', 'Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh. Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia C'),
(35, 'Quatsch und die Nasenbärbande', 'http://dummyimage.com/134x100.png/cc0000/ffffff', '2005-01-14', 9, 'https://independent.co.uk/commodo/vulputate/justo/in/blandit/ultrices/enim.json?etiam=eros&justo=suspendisse&etiam=accumsan&pretium=tortor&iaculis=quis&justo=turpis&in=sed&hac=ante&habitasse=vivamus&platea=tortor&dictumst=duis&etiam=mattis', 'Donec vitae nisi. Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus. Curabitur at ipsum ac tellus semper interdum. Mauris ulla'),
(36, 'Barbarians at the Gate', 'http://dummyimage.com/231x100.png/dddddd/000000', '1951-08-21', 12, 'http://wordpress.com/faucibus/orci.png?orci=morbi&luctus=quis&et=tortor&ultrices=id&posuere=nulla&cubilia=ultrices&curae=aliquet&nulla=maecenas&dapibus=leo&dolor=odio&vel=condimentum&est=id&donec=luctus&odio=nec&justo=molestie&sollicitudin=sed&ut=justo&su', 'Proin risus. Praesent lectus. Vestibulum quam sapien, varius ut, blandit non, interdum in, ante.'),
(37, 'Random Harvest', 'http://dummyimage.com/128x100.png/dddddd/000000', '1938-03-10', 7, 'https://sakura.ne.jp/ipsum/aliquam/non/mauris/morbi/non/lectus.aspx?eu=sed&interdum=tristique&eu=in&tincidunt=tempus&in=sit&leo=amet&maecenas=sem&pulvinar=fusce&lobortis=consequat&est=nulla&phasellus=nisl&sit=nunc&amet=nisl&erat=duis&nulla=bibendum&tempus', 'Suspendisse potenti.'),
(38, 'Doctor, The', 'http://dummyimage.com/220x100.png/dddddd/000000', '1983-12-13', 13, 'https://dot.gov/vestibulum/ante/ipsum.aspx?posuere=varius&nonummy=ut&integer=blandit&non=non&velit=interdum&donec=in&diam=ante&neque=vestibulum&vestibulum=ante&eget=ipsum&vulputate=primis&ut=in&ultrices=faucibus&vel=orci&augue=luctus&vestibulum=et&ante=ul', 'Duis mattis egestas metus.'),
(39, 'Devil\'s Rejects, The', 'http://dummyimage.com/173x100.png/cc0000/ffffff', '2018-08-26', 13, 'http://harvard.edu/ultrices/aliquet/maecenas/leo/odio/condimentum.js?vulputate=pretium&elementum=quis&nullam=lectus&varius=suspendisse&nulla=potenti&facilisi=in&cras=eleifend&non=quam&velit=a&nec=odio&nisi=in&vulputate=hac', 'Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla.'),
(40, 'Green Ice', 'http://dummyimage.com/109x100.png/cc0000/ffffff', '2009-09-06', 1, 'https://wunderground.com/id/luctus/nec/molestie/sed/justo/pellentesque.js?faucibus=blandit&orci=ultrices&luctus=enim&et=lorem&ultrices=ipsum&posuere=dolor&cubilia=sit&curae=amet&nulla=consectetuer&dapibus=adipiscing&dolor=elit&vel=proin&est=interdum&donec', 'In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem. Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit. Donec diam neque, vestibulum eget, vulputate ut, ultrices ve'),
(41, 'Nazty Nuisance', 'http://dummyimage.com/158x100.png/cc0000/ffffff', '2006-09-09', 4, 'https://senate.gov/ut/nunc/vestibulum/ante/ipsum/primis.js?turpis=odio&elementum=elementum&ligula=eu&vehicula=interdum&consequat=eu&morbi=tincidunt&a=in&ipsum=leo&integer=maecenas&a=pulvinar&nibh=lobortis&in=est&quis=phasellus', 'In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet. Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam.'),
(42, 'Evil - In the Time of Heroes (To kako - Stin epohi ton iroon)', 'http://dummyimage.com/203x100.png/cc0000/ffffff', '2008-10-01', 7, 'https://patch.com/nonummy/integer/non/velit/donec/diam.aspx?viverra=orci&diam=vehicula&vitae=condimentum&quam=curabitur&suspendisse=in&potenti=libero&nullam=ut&porttitor=massa&lacus=volutpat&at=convallis&turpis=morbi&donec=odio&posuere=odio&metus=elementu', 'Integer tincidunt ante vel ipsum.'),
(43, 'Making \'The New World\'', 'http://dummyimage.com/149x100.png/dddddd/000000', '1991-04-24', 12, 'http://google.co.jp/lobortis/vel/dapibus.xml?penatibus=sed&et=ante&magnis=vivamus&dis=tortor&parturient=duis&montes=mattis&nascetur=egestas&ridiculus=metus&mus=aenean&vivamus=fermentum&vestibulum=donec&sagittis=ut&sapien=mauris&cum=eget&sociis=massa&natoq', 'In est risus, auctor sed, tristique in, tempus sit amet, sem. Fusce consequat. Nulla nisl. Nunc nisl. Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus.'),
(44, 'Bad Lieutenant', 'http://dummyimage.com/124x100.png/dddddd/000000', '1964-12-23', 1, 'http://ox.ac.uk/felis/sed/lacus.aspx?primis=auctor&in=sed&faucibus=tristique&orci=in&luctus=tempus&et=sit&ultrices=amet&posuere=sem&cubilia=fusce&curae=consequat&duis=nulla&faucibus=nisl&accumsan=nunc&odio=nisl&curabitur=duis&convallis=bibendum&duis=felis', 'Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque. Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla.'),
(45, 'Medea', 'http://dummyimage.com/241x100.png/5fa2dd/ffffff', '1942-12-14', 8, 'https://apple.com/nec/sem/duis/aliquam/convallis.aspx?blandit=interdum&mi=mauris&in=non&porttitor=ligula&pede=pellentesque&justo=ultrices&eu=phasellus&massa=id&donec=sapien&dapibus=in&duis=sapien&at=iaculis&velit=congue&eu=vivamus&est=metus&congue=arcu&el', 'Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl. Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum. Curabitur in libero ut massa volutpat conval'),
(46, 'Ten Little Indians (Ein Unbekannter rechnet ab) (And Then There Were None)', 'http://dummyimage.com/129x100.png/dddddd/000000', '2009-08-22', 7, 'https://constantcontact.com/morbi/vestibulum/velit/id/pretium/iaculis/diam.json?libero=vestibulum&ut=proin&massa=eu&volutpat=mi&convallis=nulla&morbi=ac&odio=enim&odio=in&elementum=tempor&eu=turpis&interdum=nec&eu=euismod&tincidunt=scelerisque&in=quam&leo', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl. Aenean lectus.'),
(47, 'Clapham Junction', 'http://dummyimage.com/179x100.png/dddddd/000000', '1947-09-25', 6, 'http://networkadvertising.org/pede/justo/eu/massa/donec/dapibus.jpg?ut=luctus&erat=et&curabitur=ultrices&gravida=posuere&nisi=cubilia&at=curae&nibh=donec&in=pharetra&hac=magna&habitasse=vestibulum&platea=aliquet&dictumst=ultrices&aliquam=erat&augue=tortor', 'Quisque ut erat.'),
(48, 'Counterfeit Traitor, The', 'http://dummyimage.com/165x100.png/dddddd/000000', '1920-05-02', 15, 'http://google.com.hk/nec/nisi/volutpat/eleifend/donec/ut/dolor.aspx?justo=eu&pellentesque=mi&viverra=nulla&pede=ac&ac=enim&diam=in&cras=tempor&pellentesque=turpis&volutpat=nec&dui=euismod&maecenas=scelerisque&tristique=quam&est=turpis&et=adipiscing&tempus', 'Morbi ut odio. Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien ia'),
(49, 'Kaksparsh', 'http://dummyimage.com/136x100.png/dddddd/000000', '2013-03-21', 8, 'https://angelfire.com/ultrices/vel/augue/vestibulum.js?volutpat=pede&erat=morbi&quisque=porttitor&erat=lorem&eros=id&viverra=ligula&eget=suspendisse&congue=ornare&eget=consequat&semper=lectus&rutrum=in&nulla=est&nunc=risus&purus=auctor&phasellus=sed&in=tr', 'Vestibulum quam sapien, varius ut, blandit non, interdum in, ante.'),
(50, 'Teen Spirit', 'http://dummyimage.com/240x100.png/cc0000/ffffff', '1966-06-26', 5, 'http://tripod.com/adipiscing/molestie/hendrerit/at/vulputate/vitae/nisl.png?nisl=tristique&nunc=est&nisl=et&duis=tempus&bibendum=semper&felis=est&sed=quam&interdum=pharetra&venenatis=magna&turpis=ac&enim=consequat&blandit=metus&mi=sapien&in=ut&porttitor=n', 'Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.'),
(51, 'Hum Dil De Chuke Sanam', 'http://dummyimage.com/216x100.png/5fa2dd/ffffff', '1941-11-19', 14, 'https://nydailynews.com/ultrices/posuere/cubilia.html?dui=in&nec=imperdiet&nisi=et&volutpat=commodo&eleifend=vulputate&donec=justo&ut=in&dolor=blandit&morbi=ultrices&vel=enim&lectus=lorem&in=ipsum&quam=dolor&fringilla=sit&rhoncus=amet&mauris=consectetuer&', 'Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo. Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis. Sed ante.'),
(52, 'Dead Ahead: The Exxon Valdez Disaster', 'http://dummyimage.com/131x100.png/dddddd/000000', '1954-11-29', 2, 'http://imgur.com/nulla/nunc/purus/phasellus.json?posuere=duis&nonummy=mattis&integer=egestas&non=metus&velit=aenean&donec=fermentum&diam=donec&neque=ut&vestibulum=mauris&eget=eget&vulputate=massa&ut=tempor&ultrices=convallis&vel=nulla&augue=neque&vestibul', 'Sed ante.'),
(53, 'Don\'t Deliver Us from Evil (Mais ne nous délivrez pas du mal)', 'http://dummyimage.com/176x100.png/dddddd/000000', '2019-03-20', 1, 'https://wired.com/vestibulum/ante.aspx?risus=dictumst&auctor=maecenas&sed=ut&tristique=massa&in=quis&tempus=augue&sit=luctus&amet=tincidunt&sem=nulla&fusce=mollis&consequat=molestie&nulla=lorem&nisl=quisque&nunc=ut&nisl=erat&duis=curabitur&bibendum=gravid', 'Donec vitae nisi. Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus. Curabitur at ipsum ac tellus semper interdum.'),
(54, 'War of the Worlds', 'http://dummyimage.com/207x100.png/dddddd/000000', '1946-09-13', 13, 'http://github.io/ac/diam/cras/pellentesque/volutpat/dui.aspx?lacinia=ipsum&erat=primis&vestibulum=in&sed=faucibus&magna=orci&at=luctus&nunc=et&commodo=ultrices&placerat=posuere&praesent=cubilia&blandit=curae&nam=donec&nulla=pharetra&integer=magna&pede=ves', 'Vestibulum sed magna at nunc commodo placerat.'),
(55, 'Last Seduction II, The', 'http://dummyimage.com/119x100.png/5fa2dd/ffffff', '1992-02-18', 7, 'https://smugmug.com/orci.jsp?nisi=aenean&volutpat=lectus&eleifend=pellentesque&donec=eget&ut=nunc&dolor=donec&morbi=quis&vel=orci&lectus=eget&in=orci&quam=vehicula&fringilla=condimentum&rhoncus=curabitur&mauris=in&enim=libero&leo=ut&rhoncus=massa&sed=volu', 'Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.'),
(56, 'Synchromy', 'http://dummyimage.com/108x100.png/dddddd/000000', '1984-03-18', 8, 'https://youtu.be/et.jsp?pellentesque=pellentesque&volutpat=at&dui=nulla&maecenas=suspendisse&tristique=potenti&est=cras&et=in&tempus=purus&semper=eu&est=magna&quam=vulputate&pharetra=luctus&magna=cum&ac=sociis&consequat=natoque&metus=penatibus&sapien=et&u', 'Vivamus in felis eu sapien cursus vestibulum. Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem. Duis aliquam convallis nunc.'),
(57, 'The Man from Acapulco', 'http://dummyimage.com/195x100.png/cc0000/ffffff', '2014-01-07', 8, 'https://phoca.cz/porttitor.png?felis=eu&sed=felis&interdum=fusce&venenatis=posuere&turpis=felis&enim=sed&blandit=lacus&mi=morbi&in=sem&porttitor=mauris&pede=laoreet&justo=ut&eu=rhoncus&massa=aliquet&donec=pulvinar&dapibus=sed&duis=nisl&at=nunc&velit=rhonc', 'In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus. Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.'),
(58, 'Swamp Water', 'http://dummyimage.com/190x100.png/5fa2dd/ffffff', '2020-03-22', 5, 'http://vimeo.com/vulputate/elementum/nullam/varius/nulla/facilisi/cras.html?enim=dui&in=luctus&tempor=rutrum&turpis=nulla&nec=tellus&euismod=in&scelerisque=sagittis&quam=dui&turpis=vel&adipiscing=nisl&lorem=duis&vitae=ac&mattis=nibh&nibh=fusce&ligula=lacu', 'Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo.'),
(59, 'Butterfly (La lengua de las mariposas)', 'http://dummyimage.com/114x100.png/5fa2dd/ffffff', '1970-07-06', 4, 'https://homestead.com/purus/sit/amet/nulla/quisque/arcu/libero.xml?libero=pulvinar&rutrum=sed', 'Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede. Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus.'),
(60, 'Man\'s Castle', 'http://dummyimage.com/206x100.png/5fa2dd/ffffff', '1935-12-24', 9, 'https://reference.com/tortor/id/nulla/ultrices/aliquet.json?ligula=rutrum&sit=at&amet=lorem&eleifend=integer&pede=tincidunt&libero=ante&quis=vel&orci=ipsum&nullam=praesent&molestie=blandit&nibh=lacinia&in=erat&lectus=vestibulum&pellentesque=sed&at=magna&n', 'Nunc rhoncus dui vel sem. Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.'),
(61, 'Pursuit of D.B. Cooper, The (a.k.a. Pursuit)', 'http://dummyimage.com/199x100.png/dddddd/000000', '1934-03-08', 9, 'https://ovh.net/quis/orci/nullam.jpg?eget=ut&massa=erat&tempor=id&convallis=mauris&nulla=vulputate&neque=elementum&libero=nullam&convallis=varius&eget=nulla&eleifend=facilisi&luctus=cras&ultricies=non&eu=velit&nibh=nec&quisque=nisi&id=vulputate&justo=nonu', 'Donec posuere metus vitae ipsum. Aliquam non mauris. Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis. Fusce posuere felis sed lacus.'),
(62, 'Sexmission (Seksmisja)', 'http://dummyimage.com/222x100.png/cc0000/ffffff', '2005-05-19', 9, 'http://tamu.edu/natoque/penatibus/et/magnis/dis/parturient.jsp?nec=duis&molestie=ac&sed=nibh&justo=fusce&pellentesque=lacus&viverra=purus&pede=aliquet&ac=at&diam=feugiat&cras=non&pellentesque=pretium&volutpat=quis&dui=lectus&maecenas=suspendisse&tristique', 'Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci.'),
(63, 'Everything About Mustafa (Mustafa hakkinda hersey)', 'http://dummyimage.com/108x100.png/dddddd/000000', '1982-04-26', 4, 'https://google.com.au/consequat/metus/sapien.json?imperdiet=in&et=quis&commodo=justo&vulputate=maecenas&justo=rhoncus&in=aliquam&blandit=lacus&ultrices=morbi&enim=quis&lorem=tortor&ipsum=id&dolor=nulla&sit=ultrices&amet=aliquet&consectetuer=maecenas&adipi', 'Etiam pretium iaculis justo. In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.'),
(64, 'Union: The Business Behind Getting High, The', 'http://dummyimage.com/139x100.png/cc0000/ffffff', '1928-03-17', 7, 'https://tinyurl.com/magna/vestibulum/aliquet/ultrices/erat.json?vitae=ut&nisl=tellus&aenean=nulla&lectus=ut&pellentesque=erat&eget=id&nunc=mauris&donec=vulputate&quis=elementum&orci=nullam&eget=varius&orci=nulla&vehicula=facilisi&condimentum=cras&curabitu', 'Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum. Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est. Phasellus sit amet erat.'),
(65, 'Troll in Central Park, A', 'http://dummyimage.com/199x100.png/ff4444/ffffff', '2004-04-21', 5, 'https://sourceforge.net/convallis/duis/consequat/dui.js?proin=egestas&leo=metus&odio=aenean&porttitor=fermentum&id=donec&consequat=ut&in=mauris&consequat=eget&ut=massa&nulla=tempor&sed=convallis&accumsan=nulla&felis=neque&ut=libero&at=convallis&dolor=eget', 'Quisque ut erat.'),
(66, 'Eden of the East the Movie II: Paradise Lost (Higashi no Eden Gekijôban II: Paradise Lost)', 'http://dummyimage.com/243x100.png/5fa2dd/ffffff', '1974-11-16', 6, 'https://dion.ne.jp/donec/ut/mauris/eget/massa/tempor.xml?cras=quam&in=turpis&purus=adipiscing&eu=lorem&magna=vitae&vulputate=mattis&luctus=nibh&cum=ligula&sociis=nec&natoque=sem&penatibus=duis&et=aliquam&magnis=convallis&dis=nunc&parturient=proin&montes=a', 'Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem. Praesent id massa id nisl venenatis lacinia.'),
(67, 'And Now... Ladies and Gentlemen...', 'http://dummyimage.com/136x100.png/5fa2dd/ffffff', '1984-06-25', 2, 'http://list-manage.com/enim/lorem/ipsum.json?vestibulum=ut&sit=ultrices&amet=vel&cursus=augue&id=vestibulum&turpis=ante&integer=ipsum&aliquet=primis&massa=in&id=faucibus&lobortis=orci&convallis=luctus&tortor=et&risus=ultrices&dapibus=posuere&augue=cubilia', 'Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet. Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui. Maecenas tristique, est et tempus semper, e'),
(68, 'Don Quixote', 'http://dummyimage.com/205x100.png/cc0000/ffffff', '1980-07-11', 3, 'https://examiner.com/eu/orci/mauris/lacinia/sapien/quis.js?luctus=vivamus&et=in&ultrices=felis&posuere=eu&cubilia=sapien&curae=cursus&duis=vestibulum&faucibus=proin&accumsan=eu&odio=mi&curabitur=nulla&convallis=ac&duis=enim&consequat=in&dui=tempor&nec=tur', 'Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui. Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae'),
(69, 'Hurricane Express, The', 'http://dummyimage.com/186x100.png/cc0000/ffffff', '1924-10-02', 11, 'http://unicef.org/proin/at.xml?posuere=duis&cubilia=consequat&curae=dui&duis=nec&faucibus=nisi&accumsan=volutpat&odio=eleifend&curabitur=donec&convallis=ut&duis=dolor&consequat=morbi&dui=vel&nec=lectus&nisi=in&volutpat=quam&eleifend=fringilla&donec=rhoncu', 'Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh. Quisque id justo sit amet sapien dignissim vestibulum.'),
(70, 'Night of the Demons 2', 'http://dummyimage.com/235x100.png/cc0000/ffffff', '1942-09-26', 11, 'https://craigslist.org/odio/odio.jpg?libero=quam&quis=pede&orci=lobortis&nullam=ligula&molestie=sit&nibh=amet&in=eleifend&lectus=pede&pellentesque=libero&at=quis&nulla=orci&suspendisse=nullam&potenti=molestie&cras=nibh&in=in&purus=lectus&eu=pellentesque&m', 'In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem. Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.'),
(71, 'Curse, The (a.k.a. The Farm)', 'http://dummyimage.com/144x100.png/5fa2dd/ffffff', '2015-10-09', 8, 'https://themeforest.net/tortor/sollicitudin/mi.png?praesent=sit&lectus=amet&vestibulum=diam&quam=in&sapien=magna&varius=bibendum&ut=imperdiet&blandit=nullam&non=orci&interdum=pede&in=venenatis&ante=non&vestibulum=sodales&ante=sed&ipsum=tincidunt&primis=eu', 'Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem. Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat. Praesent blandit.'),
(72, 'Chhoti Si Baat', 'http://dummyimage.com/239x100.png/dddddd/000000', '1929-04-11', 13, 'https://freewebs.com/molestie.json?ultrices=curabitur&erat=convallis&tortor=duis&sollicitudin=consequat&mi=dui&sit=nec&amet=nisi&lobortis=volutpat&sapien=eleifend&sapien=donec&non=ut&mi=dolor&integer=morbi&ac=vel&neque=lectus&duis=in&bibendum=quam&morbi=f', 'Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus. Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus. Cum sociis natoque penatibus '),
(73, 'Nature of Existence, The', 'http://dummyimage.com/156x100.png/5fa2dd/ffffff', '1938-02-14', 8, 'https://cmu.edu/libero/non.json?sed=vehicula&vestibulum=consequat&sit=morbi&amet=a&cursus=ipsum&id=integer&turpis=a&integer=nibh&aliquet=in&massa=quis&id=justo&lobortis=maecenas&convallis=rhoncus&tortor=aliquam&risus=lacus&dapibus=morbi&augue=quis&vel=tor', 'Etiam faucibus cursus urna. Ut tellus.'),
(74, 'Waco: The Rules of Engagement', 'http://dummyimage.com/186x100.png/5fa2dd/ffffff', '1927-08-29', 2, 'http://ameblo.jp/cursus/vestibulum/proin.jpg?ipsum=nam&integer=congue&a=risus&nibh=semper&in=porta&quis=volutpat&justo=quam&maecenas=pede&rhoncus=lobortis&aliquam=ligula&lacus=sit&morbi=amet&quis=eleifend&tortor=pede&id=libero&nulla=quis&ultrices=orci&ali', 'Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus. Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci.'),
(75, 'On Our Merry Way', 'http://dummyimage.com/190x100.png/ff4444/ffffff', '1982-05-20', 8, 'http://soundcloud.com/lacinia/nisi.xml?eleifend=tristique&quam=in&a=tempus&odio=sit&in=amet&hac=sem&habitasse=fusce&platea=consequat&dictumst=nulla&maecenas=nisl&ut=nunc&massa=nisl&quis=duis&augue=bibendum&luctus=felis&tincidunt=sed&nulla=interdum&mollis=', 'Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh. Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio'),
(76, 'Pier, The (Jetée, La)', 'http://dummyimage.com/235x100.png/ff4444/ffffff', '1964-08-04', 1, 'https://infoseek.co.jp/neque.jpg?massa=tempor&id=convallis&lobortis=nulla&convallis=neque&tortor=libero&risus=convallis&dapibus=eget&augue=eleifend&vel=luctus&accumsan=ultricies&tellus=eu&nisi=nibh&eu=quisque&orci=id&mauris=justo&lacinia=sit&sapien=amet&q', 'Vestibulum rutrum rutrum neque.'),
(77, 'Beware the Moon: Remembering \'An American Werewolf in London\'', 'http://dummyimage.com/240x100.png/ff4444/ffffff', '1939-06-10', 13, 'http://creativecommons.org/morbi/non/lectus.js?blandit=magna&nam=ac&nulla=consequat&integer=metus&pede=sapien&justo=ut&lacinia=nunc&eget=vestibulum&tincidunt=ante&eget=ipsum&tempus=primis&vel=in&pede=faucibus&morbi=orci&porttitor=luctus&lorem=et&id=ultric', 'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Etiam vel augue. Vestibulum rutrum rutrum neque.'),
(78, 'Pastoral Hide and Seek (Den-en ni shisu)', 'http://dummyimage.com/144x100.png/5fa2dd/ffffff', '1994-08-11', 4, 'https://imgur.com/arcu/sed/augue/aliquam/erat.xml?in=turpis&quis=adipiscing&justo=lorem&maecenas=vitae&rhoncus=mattis&aliquam=nibh&lacus=ligula&morbi=nec&quis=sem&tortor=duis&id=aliquam&nulla=convallis&ultrices=nunc&aliquet=proin&maecenas=at&leo=turpis&od', 'Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem. Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.'),
(79, 'Amor?', 'http://dummyimage.com/108x100.png/5fa2dd/ffffff', '1952-09-24', 3, 'http://abc.net.au/ipsum/primis/in/faucibus/orci/luctus/et.jpg?ut=leo&nunc=rhoncus&vestibulum=sed&ante=vestibulum&ipsum=sit&primis=amet&in=cursus&faucibus=id&orci=turpis&luctus=integer&et=aliquet&ultrices=massa&posuere=id&cubilia=lobortis&curae=convallis&m', 'Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.'),
(80, 'Holiday', 'http://dummyimage.com/141x100.png/dddddd/000000', '1996-02-08', 12, 'https://archive.org/sed/augue.html?etiam=elit&vel=sodales&augue=scelerisque&vestibulum=mauris&rutrum=sit&rutrum=amet&neque=eros&aenean=suspendisse&auctor=accumsan&gravida=tortor&sem=quis&praesent=turpis&id=sed&massa=ante&id=vivamus&nisl=tortor&venenatis=d', 'Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede. Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem. Fusce consequat. Nulla nisl.'),
(81, 'Walking Tall Part II', 'http://dummyimage.com/156x100.png/dddddd/000000', '1958-09-22', 11, 'http://lycos.com/penatibus/et/magnis/dis.aspx?consequat=habitasse&in=platea&consequat=dictumst&ut=aliquam&nulla=augue&sed=quam&accumsan=sollicitudin&felis=vitae&ut=consectetuer&at=eget&dolor=rutrum&quis=at&odio=lorem', 'Duis mattis egestas metus. Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.'),
(82, 'Ladies Man, The', 'http://dummyimage.com/239x100.png/ff4444/ffffff', '1940-11-18', 15, 'https://google.com/vestibulum/quam/sapien/varius.jpg?rutrum=ligula&nulla=nec&tellus=sem&in=duis&sagittis=aliquam&dui=convallis&vel=nunc&nisl=proin&duis=at&ac=turpis&nibh=a&fusce=pede&lacus=posuere&purus=nonummy&aliquet=integer&at=non&feugiat=velit&non=don', 'Suspendisse potenti. Cras in purus eu magna vulputate luctus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur '),
(83, 'The Oscar', 'http://dummyimage.com/228x100.png/5fa2dd/ffffff', '1951-07-30', 4, 'http://nytimes.com/nullam/sit/amet.js?convallis=donec', 'Praesent id massa id nisl venenatis lacinia.'),
(84, 'Earth', 'http://dummyimage.com/148x100.png/ff4444/ffffff', '1997-04-22', 14, 'http://reverbnation.com/lacus/curabitur.js?ante=pede&vestibulum=libero&ante=quis&ipsum=orci&primis=nullam&in=molestie&faucibus=nibh&orci=in&luctus=lectus&et=pellentesque&ultrices=at&posuere=nulla&cubilia=suspendisse&curae=potenti&duis=cras&faucibus=in&acc', 'Nunc purus. Phasellus in felis. Donec semper sapien a libero. Nam dui.'),
(85, 'Return of Frank Cannon, The', 'http://dummyimage.com/215x100.png/ff4444/ffffff', '1950-06-20', 14, 'https://yahoo.com/morbi/vestibulum.jpg?massa=cras&tempor=non&convallis=velit&nulla=nec&neque=nisi&libero=vulputate&convallis=nonummy&eget=maecenas&eleifend=tincidunt&luctus=lacus&ultricies=at&eu=velit&nibh=vivamus&quisque=vel&id=nulla&justo=eget&sit=eros&', 'Ut at dolor quis odio consequat varius. Integer ac leo. Pellentesque ultrices mattis odio.'),
(86, 'Beyond a Reasonable Doubt', 'http://dummyimage.com/206x100.png/ff4444/ffffff', '2017-04-22', 7, 'https://seattletimes.com/tincidunt/ante/vel/ipsum/praesent/blandit/lacinia.json?non=elementum&pretium=in&quis=hac&lectus=habitasse&suspendisse=platea&potenti=dictumst&in=morbi&eleifend=vestibulum&quam=velit&a=id&odio=pretium&in=iaculis&hac=diam&habitasse=', 'Curabitur convallis. Duis consequat dui nec nisi volutpat eleifend.'),
(87, 'Ethan Mao', 'http://dummyimage.com/213x100.png/cc0000/ffffff', '2001-02-27', 2, 'https://gravatar.com/nisl/aenean/lectus/pellentesque/eget/nunc/donec.html?phasellus=tempus&id=vel&sapien=pede&in=morbi&sapien=porttitor&iaculis=lorem&congue=id&vivamus=ligula&metus=suspendisse&arcu=ornare&adipiscing=consequat&molestie=lectus&hendrerit=in&', 'Vestibulum sed magna at nunc commodo placerat.'),
(88, 'Cosmopolis', 'http://dummyimage.com/199x100.png/ff4444/ffffff', '1965-10-17', 13, 'https://tripadvisor.com/at/nunc/commodo/placerat/praesent/blandit/nam.json?hendrerit=mauris&at=vulputate&vulputate=elementum&vitae=nullam&nisl=varius&aenean=nulla&lectus=facilisi&pellentesque=cras&eget=non&nunc=velit&donec=nec&quis=nisi&orci=vulputate', 'In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo. Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros.'),
(89, 'Ants in the Pants 2', 'http://dummyimage.com/160x100.png/ff4444/ffffff', '1922-01-19', 3, 'https://linkedin.com/justo/morbi/ut/odio/cras.png?metus=varius&sapien=integer&ut=ac&nunc=leo&vestibulum=pellentesque&ante=ultrices&ipsum=mattis&primis=odio&in=donec&faucibus=vitae&orci=nisi&luctus=nam&et=ultrices&ultrices=libero&posuere=non&cubilia=mattis', 'Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.'),
(90, 'Kingpin', 'http://dummyimage.com/174x100.png/dddddd/000000', '1977-08-16', 3, 'https://java.com/erat/vestibulum/sed/magna.xml?justo=convallis', 'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.'),
(91, 'Guyana Tragedy: The Story of Jim Jones', 'http://dummyimage.com/196x100.png/5fa2dd/ffffff', '1948-05-07', 10, 'https://tuttocitta.it/in/imperdiet/et/commodo/vulputate/justo/in.png?libero=pellentesque&nam=volutpat&dui=dui&proin=maecenas&leo=tristique', 'Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus.'),
(92, 'War of the Worlds, The', 'http://dummyimage.com/196x100.png/ff4444/ffffff', '1930-05-02', 1, 'http://blogtalkradio.com/posuere/cubilia/curae/mauris.xml?mus=quis&vivamus=odio&vestibulum=consequat&sagittis=varius&sapien=integer&cum=ac&sociis=leo&natoque=pellentesque&penatibus=ultrices&et=mattis&magnis=odio&dis=donec&parturient=vitae&montes=nisi&nasc', 'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est.'),
(93, 'Lockout', 'http://dummyimage.com/197x100.png/ff4444/ffffff', '1955-10-23', 12, 'http://prlog.org/luctus.html?sapien=erat&iaculis=quisque&congue=erat&vivamus=eros&metus=viverra&arcu=eget&adipiscing=congue&molestie=eget&hendrerit=semper&at=rutrum&vulputate=nulla&vitae=nunc&nisl=purus&aenean=phasellus&lectus=in&pellentesque=felis&eget=d', 'Ut tellus. Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.'),
(94, 'Vincent: A Life in Color', 'http://dummyimage.com/134x100.png/dddddd/000000', '1939-03-10', 5, 'https://goodreads.com/suspendisse/ornare.html?massa=sem&quis=mauris&augue=laoreet&luctus=ut&tincidunt=rhoncus&nulla=aliquet&mollis=pulvinar&molestie=sed&lorem=nisl&quisque=nunc&ut=rhoncus&erat=dui&curabitur=vel&gravida=sem&nisi=sed&at=sagittis&nibh=nam&in', 'Cras in purus eu magna vulputate luctus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Etiam '),
(95, 'Shed No Tears (Känn ingen sorg)', 'http://dummyimage.com/171x100.png/5fa2dd/ffffff', '1996-10-07', 7, 'http://intel.com/libero/convallis/eget/eleifend/luctus.js?quam=dui&fringilla=vel&rhoncus=sem&mauris=sed&enim=sagittis&leo=nam&rhoncus=congue&sed=risus&vestibulum=semper&sit=porta&amet=volutpat&cursus=quam&id=pede&turpis=lobortis&integer=ligula&aliquet=sit', 'Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh. Quisque id justo sit amet sapien dignissim vestibulum.'),
(96, 'Good Woman, A', 'http://dummyimage.com/127x100.png/5fa2dd/ffffff', '1990-06-28', 11, 'https://wikimedia.org/amet/consectetuer/adipiscing/elit/proin/risus/praesent.png?a=integer', 'Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus. Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.'),
(97, 'Chronicle of My Mother (Waga haha no ki)', 'http://dummyimage.com/246x100.png/dddddd/000000', '1938-12-25', 2, 'https://ameblo.jp/mi.jpg?felis=lobortis&sed=sapien&interdum=sapien&venenatis=non&turpis=mi&enim=integer&blandit=ac&mi=neque&in=duis&porttitor=bibendum&pede=morbi&justo=non&eu=quam&massa=nec&donec=dui&dapibus=luctus&duis=rutrum&at=nulla&velit=tellus&eu=in&', 'Nulla nisl. Nunc nisl. Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus.'),
(98, 'Alien Abduction', 'http://dummyimage.com/241x100.png/5fa2dd/ffffff', '1920-10-23', 10, 'https://jimdo.com/ridiculus/mus/etiam/vel/augue.json?duis=curabitur&consequat=convallis&dui=duis&nec=consequat&nisi=dui&volutpat=nec&eleifend=nisi&donec=volutpat&ut=eleifend&dolor=donec&morbi=ut&vel=dolor&lectus=morbi&in=vel&quam=lectus&fringilla=in&rhonc', 'Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue.'),
(99, 'Buying the Cow', 'http://dummyimage.com/109x100.png/dddddd/000000', '1968-10-13', 12, 'http://exblog.jp/mi.aspx?etiam=molestie&justo=sed&etiam=justo', 'In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus. Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.');
INSERT INTO `movies` (`id`, `title`, `poster`, `date_of_release`, `category_id`, `movie_link`, `synopsis`) VALUES
(100, 'Invincible Iron Man, The', 'http://dummyimage.com/148x100.png/5fa2dd/ffffff', '1976-10-02', 12, 'https://live.com/morbi.aspx?id=nulla&turpis=facilisi&integer=cras&aliquet=non&massa=velit&id=nec&lobortis=nisi&convallis=vulputate&tortor=nonummy&risus=maecenas&dapibus=tincidunt&augue=lacus&vel=at&accumsan=velit&tellus=vivamus&nisi=vel&eu=nulla&orci=eget', 'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam.');

-- --------------------------------------------------------

--
-- Structure de la table `movie_content`
--

CREATE TABLE `movie_content` (
  `id` int(11) NOT NULL,
  `actor_id` int(11) NOT NULL,
  `movie_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `movie_content`
--

INSERT INTO `movie_content` (`id`, `actor_id`, `movie_id`) VALUES
(1, 20, 69),
(2, 10, 19),
(3, 23, 100),
(4, 45, 38),
(5, 49, 78),
(6, 7, 84),
(7, 39, 33),
(8, 10, 53),
(9, 49, 66),
(10, 6, 74),
(11, 33, 3),
(12, 5, 6),
(13, 5, 86),
(14, 37, 49),
(15, 34, 68),
(16, 25, 32),
(17, 20, 36),
(18, 2, 42),
(19, 43, 17),
(20, 1, 40),
(21, 3, 71),
(22, 5, 25),
(23, 46, 27),
(24, 49, 13),
(25, 30, 96),
(26, 8, 19),
(27, 13, 80),
(28, 26, 72),
(29, 12, 37),
(30, 27, 50),
(31, 8, 61),
(32, 23, 31),
(33, 46, 21),
(34, 36, 95),
(35, 35, 32),
(36, 39, 7),
(37, 39, 38),
(38, 13, 49),
(39, 31, 94),
(40, 39, 20),
(41, 16, 42),
(42, 35, 70),
(43, 4, 32),
(44, 24, 32),
(45, 50, 84),
(46, 47, 30),
(47, 35, 14),
(48, 46, 71),
(49, 41, 67),
(50, 37, 65),
(51, 7, 50),
(52, 27, 51),
(53, 18, 94),
(54, 14, 57),
(55, 12, 100),
(56, 1, 14),
(57, 5, 97),
(58, 23, 82),
(59, 9, 35),
(60, 47, 83),
(61, 8, 98),
(62, 38, 31),
(63, 8, 76),
(64, 17, 97),
(65, 38, 79),
(66, 27, 56),
(67, 37, 69),
(68, 25, 9),
(69, 2, 27),
(70, 34, 42),
(71, 18, 68),
(72, 20, 84),
(73, 26, 87),
(74, 14, 33),
(75, 1, 46),
(76, 10, 66),
(77, 7, 56),
(78, 50, 77),
(79, 31, 9),
(80, 31, 4),
(81, 9, 100),
(82, 34, 35),
(83, 7, 38),
(84, 30, 81),
(85, 36, 86),
(86, 29, 28),
(87, 31, 84),
(88, 6, 15),
(89, 23, 47),
(90, 49, 85),
(91, 21, 67),
(92, 38, 68),
(93, 36, 54),
(94, 41, 85),
(95, 49, 52),
(96, 15, 63),
(97, 13, 13),
(98, 35, 87),
(99, 50, 89),
(100, 23, 83),
(101, 46, 47),
(102, 47, 87),
(103, 29, 50),
(104, 7, 68),
(105, 49, 56),
(106, 19, 39),
(107, 29, 1),
(108, 1, 78),
(109, 37, 58),
(110, 14, 89),
(111, 49, 53),
(112, 49, 59),
(113, 47, 12),
(114, 35, 97),
(115, 20, 55),
(116, 20, 100),
(117, 40, 85),
(118, 4, 99),
(119, 33, 34),
(120, 48, 70),
(121, 25, 39),
(122, 14, 16),
(123, 28, 54),
(124, 43, 50),
(125, 21, 28),
(126, 28, 70),
(127, 36, 51),
(128, 22, 28),
(129, 5, 75),
(130, 42, 84),
(131, 35, 66),
(132, 32, 38),
(133, 35, 1),
(134, 3, 4),
(135, 21, 43),
(136, 39, 92),
(137, 36, 24),
(138, 41, 67),
(139, 34, 46),
(140, 36, 55),
(141, 21, 62),
(142, 49, 39),
(143, 50, 87),
(144, 21, 87),
(145, 33, 20),
(146, 23, 92),
(147, 24, 69),
(148, 18, 6),
(149, 11, 71),
(150, 45, 11),
(151, 36, 25),
(152, 17, 69),
(153, 17, 23),
(154, 19, 79),
(155, 33, 29),
(156, 34, 60),
(157, 10, 28),
(158, 29, 70),
(159, 7, 22),
(160, 21, 96),
(161, 6, 89),
(162, 47, 2),
(163, 40, 78),
(164, 48, 82),
(165, 48, 73),
(166, 47, 86),
(167, 5, 76),
(168, 32, 96),
(169, 11, 42),
(170, 40, 19),
(171, 12, 49),
(172, 2, 41),
(173, 38, 39),
(174, 49, 28),
(175, 4, 73),
(176, 46, 63),
(177, 8, 84),
(178, 27, 90),
(179, 40, 69),
(180, 26, 6),
(181, 49, 97),
(182, 27, 95),
(183, 14, 89),
(184, 2, 47),
(185, 39, 5),
(186, 38, 36),
(187, 21, 47),
(188, 47, 50),
(189, 19, 69),
(190, 45, 47),
(191, 30, 81),
(192, 21, 66),
(193, 35, 90),
(194, 33, 36),
(195, 36, 30),
(196, 47, 60),
(197, 20, 17),
(198, 46, 17),
(199, 29, 10),
(200, 33, 78),
(201, 46, 8),
(202, 26, 18),
(203, 46, 48),
(204, 26, 44),
(205, 5, 45),
(206, 6, 64),
(207, 8, 88),
(208, 1, 91),
(209, 3, 93);

-- --------------------------------------------------------

--
-- Structure de la table `playlist`
--

CREATE TABLE `playlist` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `date_of_creation` date NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `playlist`
--

INSERT INTO `playlist` (`id`, `name`, `date_of_creation`, `user_id`) VALUES
(1, 'First playlist', '2021-04-20', 21),
(2, 'Bogan, Jerde and Tillman', '2005-03-05', 15),
(3, 'Jacobi LLC', '2010-07-03', 8),
(4, 'Schumm, Koss and Stark', '2011-09-11', 19),
(5, 'Beier, Carter and Haley', '2016-09-27', 18),
(6, 'Hilpert Inc', '2017-06-09', 10),
(7, 'Doyle Group', '2019-01-28', 2),
(8, 'Haag Inc', '2008-07-19', 13),
(9, 'Shields, Denesik and Johnston', '2005-06-30', 11),
(10, 'Lemke and Sons', '2014-06-30', 15),
(11, 'Kassulke-Rutherford', '2009-04-12', 6),
(12, 'Bashirian-Dietrich', '2011-07-06', 20),
(13, 'Wyman, Turner and Maggio', '2005-12-20', 2),
(14, 'Fritsch, Braun and Olson', '2003-08-22', 11),
(15, 'Stanton Inc', '2005-02-21', 18),
(16, 'Gusikowski-Gislason', '2012-08-19', 19),
(17, 'D\'Amore, Konopelski and Willms', '2020-04-05', 13),
(18, 'Huels-Keebler', '2001-11-17', 6),
(19, 'Hamill-Maggio', '2012-09-05', 9),
(20, 'King and Sons', '2010-12-27', 3),
(21, 'Jacobs, Romaguera and Kozey', '2018-10-26', 17),
(25, 'coding_playlist', '2021-04-21', 21),
(26, 'coding_playlist1', '2021-04-21', 21),
(27, 'coding_playlist2', '2021-04-21', 21);

-- --------------------------------------------------------

--
-- Structure de la table `playlist_content`
--

CREATE TABLE `playlist_content` (
  `id` int(11) NOT NULL,
  `movie_id` int(11) NOT NULL,
  `playlist_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `playlist_content`
--

INSERT INTO `playlist_content` (`id`, `movie_id`, `playlist_id`) VALUES
(1, 21, 18),
(2, 44, 2),
(3, 45, 8),
(4, 25, 6),
(5, 30, 12),
(6, 15, 14),
(7, 75, 2),
(8, 26, 20),
(9, 79, 17),
(10, 33, 17),
(11, 1, 10),
(12, 1, 6),
(13, 37, 5),
(14, 6, 12),
(15, 65, 6),
(16, 41, 19),
(17, 91, 9),
(18, 46, 11),
(19, 71, 12),
(20, 18, 1),
(21, 44, 18),
(22, 84, 4),
(23, 43, 16),
(24, 87, 4),
(25, 65, 16),
(26, 93, 15),
(27, 79, 21),
(28, 86, 2),
(29, 89, 21),
(30, 43, 21),
(31, 39, 19),
(32, 40, 14),
(33, 39, 11),
(34, 61, 19),
(35, 82, 14),
(36, 51, 3),
(37, 76, 1),
(38, 80, 16),
(39, 3, 13),
(40, 42, 21),
(41, 65, 14),
(42, 23, 9),
(43, 34, 12),
(44, 56, 10),
(45, 35, 13),
(46, 17, 7),
(47, 8, 17),
(48, 47, 17),
(49, 51, 18),
(50, 85, 14),
(51, 81, 18),
(52, 6, 6),
(53, 100, 2),
(54, 97, 9),
(55, 50, 13),
(56, 49, 1),
(57, 75, 1),
(58, 23, 9),
(59, 97, 9),
(60, 39, 3),
(61, 30, 6),
(62, 94, 2),
(63, 7, 15),
(64, 42, 7),
(65, 58, 17),
(66, 83, 1),
(67, 48, 18),
(68, 80, 17),
(69, 87, 13),
(70, 73, 12),
(71, 69, 11),
(72, 48, 8),
(73, 75, 11),
(74, 81, 8),
(75, 39, 21),
(76, 71, 5),
(77, 78, 7),
(78, 85, 9),
(79, 23, 16),
(80, 47, 7),
(81, 82, 3),
(82, 35, 20),
(83, 51, 21),
(84, 76, 4),
(85, 50, 6),
(86, 37, 8),
(87, 3, 13),
(88, 53, 6),
(89, 6, 3),
(90, 20, 12),
(91, 17, 14),
(92, 58, 15),
(93, 68, 20),
(94, 19, 19),
(95, 1, 17),
(96, 18, 17),
(97, 11, 19),
(98, 79, 14),
(99, 49, 11),
(100, 11, 20),
(101, 31, 7),
(102, 5, 7),
(103, 92, 12),
(104, 77, 21),
(105, 29, 19),
(106, 9, 9),
(107, 9, 13),
(108, 91, 12),
(109, 2, 12),
(110, 36, 13),
(111, 48, 6),
(112, 47, 2),
(113, 96, 21),
(114, 59, 20),
(115, 16, 13),
(116, 83, 15),
(117, 46, 16),
(118, 47, 21),
(119, 75, 2),
(120, 52, 17),
(121, 36, 18),
(122, 80, 19),
(123, 52, 5),
(124, 28, 7),
(125, 68, 16),
(126, 94, 7),
(127, 56, 21),
(128, 12, 15),
(129, 53, 13),
(130, 21, 19),
(131, 68, 6),
(132, 79, 17),
(133, 83, 16),
(134, 70, 15),
(135, 2, 9),
(136, 47, 3),
(137, 87, 7),
(138, 30, 21),
(139, 48, 16),
(140, 64, 14),
(141, 94, 3),
(142, 99, 20),
(143, 96, 1),
(144, 1, 8),
(145, 87, 20),
(146, 33, 4),
(147, 65, 18),
(148, 93, 16),
(149, 59, 15),
(150, 38, 15),
(151, 2, 3),
(152, 46, 7),
(153, 96, 14),
(154, 54, 2),
(155, 6, 8),
(156, 76, 14),
(157, 40, 15),
(158, 38, 21),
(159, 88, 16),
(160, 15, 13),
(161, 3, 16),
(162, 35, 5),
(163, 98, 2),
(164, 81, 15),
(165, 83, 9),
(166, 63, 5),
(167, 67, 20),
(168, 79, 12),
(169, 38, 5),
(170, 95, 18),
(171, 85, 16),
(172, 66, 15),
(173, 63, 17),
(174, 45, 11),
(175, 45, 1),
(176, 19, 13),
(177, 27, 2),
(178, 60, 15),
(179, 24, 19),
(180, 24, 11),
(181, 21, 13),
(182, 15, 19),
(183, 97, 19),
(184, 21, 7),
(185, 74, 1),
(186, 100, 18),
(187, 59, 19),
(188, 88, 7),
(189, 22, 9),
(190, 22, 18),
(191, 62, 12),
(192, 50, 3),
(193, 58, 8),
(194, 39, 3),
(195, 97, 20),
(196, 67, 2),
(197, 19, 8),
(198, 17, 16),
(199, 62, 15),
(200, 38, 4);

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `firstname`, `lastname`) VALUES
(1, 'gpeaddie0@twitpic.com', '729NATgFdRv5', 'Geri', 'Peaddie'),
(2, 'otrail1@twitpic.com', 'QeuQA8', 'Odille', 'Trail'),
(3, 'kkleiser2@rambler.ru', '137LCs', 'Kimmi', 'Kleiser'),
(4, 'vdoudny3@nhs.uk', 'tDdNzxB9jhN', 'Velvet', 'Doudny'),
(5, 'lpetkov4@nba.com', '652EYGEIZMOP', 'Laney', 'Petkov'),
(6, 'lglentworth5@cpanel.net', 'Czq7kqjh', 'Liane', 'Glentworth'),
(7, 'rphelit6@list-manage.com', 'jixxWej14Q', 'Ruddie', 'Phelit'),
(8, 'emaltster7@vimeo.com', 'Tpf7rsVdNXH', 'Esme', 'Maltster'),
(9, 'jheims8@tinyurl.com', 'QvSo5MlL', 'Jackelyn', 'Heims'),
(10, 'rperham9@eventbrite.com', 'FYrb6y5g', 'Raleigh', 'Perham'),
(11, 'dmatthissona@auda.org.au', 'H9vfD3kzN', 'Delphinia', 'Matthisson'),
(12, 'gllopb@wunderground.com', 'pawM4f8Kn', 'Grange', 'Llop'),
(13, 'tcanetc@phoca.cz', '5JRE3NnAu25l', 'Tildie', 'Canet'),
(14, 'bturmeld@yahoo.com', 'JqcFoIl', 'Brier', 'Turmel'),
(15, 'lwistancee@g.co', 'W25kmKn', 'Laurena', 'Wistance'),
(16, 'cwalaronf@list-manage.com', 'BntrsY1PV', 'Creight', 'Walaron'),
(17, 'cshoveling@jiathis.com', 'VZLazBP', 'Christos', 'Shovelin'),
(18, 'nbischoffh@phpbb.com', 'JHJh6p6caUci', 'Nils', 'Bischoff'),
(19, 'ryonniei@simplemachines.org', 'NLhabC1ppsg', 'Redford', 'Yonnie'),
(20, 'bgreiswoodj@so-net.ne.jp', '2DbMIC', 'Blinny', 'Greiswood'),
(21, 'helene@gmail.com', '$2y$10$TCakIViYxS.X0fVEKRgd7OVpVrnNN4o994NxTpKgxf48hPbmzH0SC', 'helene', 'helene');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `actors`
--
ALTER TABLE `actors`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_movie_cat` (`category_id`);

--
-- Index pour la table `movie_content`
--
ALTER TABLE `movie_content`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_movie_id` (`movie_id`),
  ADD KEY `fk_actor_id` (`actor_id`);

--
-- Index pour la table `playlist`
--
ALTER TABLE `playlist`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_user_id` (`user_id`);

--
-- Index pour la table `playlist_content`
--
ALTER TABLE `playlist_content`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_movie_playlist` (`movie_id`),
  ADD KEY `fk_playlist_id` (`playlist_id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `actors`
--
ALTER TABLE `actors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT pour la table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT pour la table `movies`
--
ALTER TABLE `movies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT pour la table `movie_content`
--
ALTER TABLE `movie_content`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=210;

--
-- AUTO_INCREMENT pour la table `playlist`
--
ALTER TABLE `playlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT pour la table `playlist_content`
--
ALTER TABLE `playlist_content`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=201;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `movies`
--
ALTER TABLE `movies`
  ADD CONSTRAINT `fk_movie_cat` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);

--
-- Contraintes pour la table `movie_content`
--
ALTER TABLE `movie_content`
  ADD CONSTRAINT `fk_actor_id` FOREIGN KEY (`actor_id`) REFERENCES `actors` (`id`),
  ADD CONSTRAINT `fk_movie_id` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`id`);

--
-- Contraintes pour la table `playlist`
--
ALTER TABLE `playlist`
  ADD CONSTRAINT `fk_user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Contraintes pour la table `playlist_content`
--
ALTER TABLE `playlist_content`
  ADD CONSTRAINT `fk_movie_playlist` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`id`),
  ADD CONSTRAINT `fk_playlist_id` FOREIGN KEY (`playlist_id`) REFERENCES `playlist` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
