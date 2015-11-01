CREATE DATABASE IF NOT EXISTS studio_list;

USE studio_list;
--
-- Database: `angularcode_grid`
--

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

  CREATE TABLE songs(
    `songName` varchar(50) NOT NULL,
     `artist` varchar(50) NOT NULL,
     `link` varchar(300) NOT NULL,
     PRIMARY KEY (`songName`),
     KEY `songName` (`songName`)
   )
   DEFAULT CHARACTER SET utf8
   COLLATE utf8_general_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `songs` (`songName`, `artist`, `link`) VALUES
('Do I Wanna Know', 'Arctic Monkeys', 'https://tabs.ultimate-guitar.com/a/arctic_monkeys/do_i_wanna_know_crd.htm'),
('Budapest', 'George Ezra', 'http://tabs.ultimate-guitar.com/g/george_ezra/budapest_ver2_crd.htm'),
('קחי לך זמן', 'יציאת חירום', 'http://www.tab4u.com/tabs/songs/1682_%D7%A7%D7%97%D7%99_%D7%9C%D7%9A_%D7%96%D7%9E%D7%9F.html');
