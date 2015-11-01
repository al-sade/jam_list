CREATE DATABASE IF NOT EXISTS angularcode_grid;

USE angularcode_grid;
--
-- Database: `angularcode_grid`
--

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE IF NOT EXISTS `songs` (
  `songName` varchar(50) NOT NULL,
  `artist` varchar(50) NOT NULL,
  `link` varchar(50) NOT NULL,
  PRIMARY KEY (`songName`),
  KEY `songName` (`songName`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customers`
--

INSERT INTO `songs` (`songName`, `artist`, `link`) VALUES
('Do I Wanna Know', 'Arctic Monkeys', 'https://tabs.ultimate-guitar.com/a/arctic_monkeys/do_i_wanna_know_crd.htm'),
('Do I Wanna Know', 'Arctic Monkeys', 'https://tabs.ultimate-guitar.com/a/arctic_monkeys/do_i_wanna_know_crd.htm'),
('Do I Wanna Know', 'Arctic Monkeys', 'https://tabs.ultimate-guitar.com/a/arctic_monkeys/do_i_wanna_know_crd.htm'),
('Do I Wanna Know', 'Arctic Monkeys', 'https://tabs.ultimate-guitar.com/a/arctic_monkeys/do_i_wanna_know_crd.htm'),
('Do I Wanna Know', 'Arctic Monkeys', 'https://tabs.ultimate-guitar.com/a/arctic_monkeys/do_i_wanna_know_crd.htm'),
('Do I Wanna Know', 'Arctic Monkeys', 'https://tabs.ultimate-guitar.com/a/arctic_monkeys/do_i_wanna_know_crd.htm'),
('Do I Wanna Know', 'Arctic Monkeys', 'https://tabs.ultimate-guitar.com/a/arctic_monkeys/do_i_wanna_know_crd.htm'),
('Do I Wanna Know', 'Arctic Monkeys', 'https://tabs.ultimate-guitar.com/a/arctic_monkeys/do_i_wanna_know_crd.htm'),
('Do I Wanna Know', 'Arctic Monkeys', 'https://tabs.ultimate-guitar.com/a/arctic_monkeys/do_i_wanna_know_crd.htm'),
('Do I Wanna Know', 'Arctic Monkeys', 'https://tabs.ultimate-guitar.com/a/arctic_monkeys/do_i_wanna_know_crd.htm'),
('Do I Wanna Know', 'Arctic Monkeys', 'https://tabs.ultimate-guitar.com/a/arctic_monkeys/do_i_wanna_know_crd.htm'),
('Do I Wanna Know', 'Arctic Monkeys', 'https://tabs.ultimate-guitar.com/a/arctic_monkeys/do_i_wanna_know_crd.htm'),
('Do I Wanna Know', 'Arctic Monkeys', 'https://tabs.ultimate-guitar.com/a/arctic_monkeys/do_i_wanna_know_crd.htm'),
('Do I Wanna Know', 'Arctic Monkeys', 'https://tabs.ultimate-guitar.com/a/arctic_monkeys/do_i_wanna_know_crd.htm'),
('Do I Wanna Know', 'Arctic Monkeys', 'https://tabs.ultimate-guitar.com/a/arctic_monkeys/do_i_wanna_know_crd.htm'),
('Do I Wanna Know', 'Arctic Monkeys', 'https://tabs.ultimate-guitar.com/a/arctic_monkeys/do_i_wanna_know_crd.htm'),
('Do I Wanna Know', 'Arctic Monkeys', 'https://tabs.ultimate-guitar.com/a/arctic_monkeys/do_i_wanna_know_crd.htm'),
('Do I Wanna Know', 'Arctic Monkeys', 'https://tabs.ultimate-guitar.com/a/arctic_monkeys/do_i_wanna_know_crd.htm'),
('Do I Wanna Know', 'Arctic Monkeys', 'https://tabs.ultimate-guitar.com/a/arctic_monkeys/do_i_wanna_know_crd.htm'),
('Do I Wanna Know', 'Arctic Monkeys', 'https://tabs.ultimate-guitar.com/a/arctic_monkeys/do_i_wanna_know_crd.htm'),
('Do I Wanna Know', 'Arctic Monkeys', 'https://tabs.ultimate-guitar.com/a/arctic_monkeys/do_i_wanna_know_crd.htm'),
('Do I Wanna Know', 'Arctic Monkeys', 'https://tabs.ultimate-guitar.com/a/arctic_monkeys/do_i_wanna_know_crd.htm'),
('Do I Wanna Know', 'Arctic Monkeys', 'https://tabs.ultimate-guitar.com/a/arctic_monkeys/do_i_wanna_know_crd.htm'),
('Do I Wanna Know', 'Arctic Monkeys', 'https://tabs.ultimate-guitar.com/a/arctic_monkeys/do_i_wanna_know_crd.htm'),
('Do I Wanna Know', 'Arctic Monkeys', 'https://tabs.ultimate-guitar.com/a/arctic_monkeys/do_i_wanna_know_crd.htm'),
('Do I Wanna Know', 'Arctic Monkeys', 'https://tabs.ultimate-guitar.com/a/arctic_monkeys/do_i_wanna_know_crd.htm'),
('Do I Wanna Know', 'Arctic Monkeys', 'https://tabs.ultimate-guitar.com/a/arctic_monkeys/do_i_wanna_know_crd.htm'),
('Do I Wanna Know', 'Arctic Monkeys', 'https://tabs.ultimate-guitar.com/a/arctic_monkeys/do_i_wanna_know_crd.htm'),
('Budapest', 'George Ezra', 'http://tabs.ultimate-guitar.com/g/george_ezra/budapest_ver2_crd.htm');
