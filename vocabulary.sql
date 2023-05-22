-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 10, 2023 at 11:57 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vocabulary`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(20) NOT NULL,
  `vocab` varchar(100) NOT NULL,
  `engmean` varchar(200) NOT NULL,
  `tammean` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `vocab`, `engmean`, `tammean`) VALUES
(2, 'Alter', 'optional, substitute', 'ondruku badhil aaga'),
(3, 'Miso ', 'hate', 'verupu, pudikadhavai'),
(4, 'vert', 'to turn', 'oru pakkam thirumba'),
(5, 'Anthro ', 'mankind', 'manithakulam'),
(6, 'gynist', 'women', 'pengal'),
(7, 'phil', 'love', 'anbu'),
(8, 'mono', 'only one', 'ondrey ondru'),
(9, 'bio', 'life', 'vazhkai'),
(10, 'astro', 'star', 'natchathiram'),
(11, 'naut', 'star sailor', 'natchathira malumi'),
(12, 'tomy', 'cutting', 'arupadhu'),
(13, 'mal', 'bad', 'mosamana'),
(14, 'bene', 'good', 'nanmai'),
(15, 'pedia', 'child', 'kozhandhai'),
(16, 'chiro', 'hand', 'kaii'),
(17, 'opt', 'eye', 'kanngal'),
(18, 'graph', 'drawn', 'varaivadhu'),
(19, 'ortho', 'bones', 'elumbugal'),
(20, 'scribe, script', 'write', 'eludhuvadhu'),
(21, 'psy', 'soul', 'aanma'),
(22, 'avoid', 'keeping away', 'thavirpadhu'),
(23, 'adulate', 'praising', 'pugalchi'),
(24, 'support', 'stand by, help', 'udhadhuvadhu'),
(25, 'de', ' false', 'poiyana'),
(26, 'libel', 'stories', 'kadhaigal'),
(27, 'semantics', 'meanings', 'arthamgal'),
(28, 'call', 'calling someone', 'alaipadhu'),
(29, 'vocal', 'voice', 'kural'),
(30, 'allow', 'permit', 'anumadhi'),
(31, 'slander', 'false gossip', 'puranni'),
(32, 'ambi', 'both', 'rendumey'),
(33, 'entomon', 'insects', 'poochigal'),
(34, 'olgy', 'branch of science or studeis', 'aruviyal alladhu aayuvagalin pirivu'),
(35, 'equi', 'equal', 'samamaana'),
(36, 'litter', 'group of babeis', 'kuzhandhaigalin kuzhu'),
(37, 'bustling', 'noisy', 'sathamm'),
(38, 'tranquillity', 'calm', 'amaidhi'),
(39, 'deligent', 'hardworking', 'kadina ulaipu'),
(40, 'conceit', 'favourable', 'sadhagamana'),
(41, 'succinctly', 'short', 'surukaramaga'),
(42, 'epi', 'outer', 'velipuram'),
(43, 'epiphaneia', 'appearance', 'thottram'),
(44, 'epitome', 'perfect', 'sirandhavai'),
(45, 'altruistic', 'unselfish', 'suyanalam iladha'),
(46, 'obstetrics', 'care for pregnant women', 'garpini pengalukukana paramaripu'),
(47, 'pedagogy', 'teaching', 'karpithall'),
(48, 'dermy', 'skins', 'tholl'),
(49, 'bino', 'two', 'rendu'),
(50, 'inoculate', 'injection', 'oosi'),
(51, 'permit', 'allow', 'anumadhi'),
(52, 'dubious', 'not sure', 'uruthiyaga ilai'),
(53, 'lenient', 'strict', 'kadinamaga'),
(54, 'lenity', 'kind', 'anbaga'),
(55, 'pacify', 'making clam', 'kovathai kuraithu  amaidhi seithal');

-- --------------------------------------------------------

--
-- Table structure for table `sub_category`
--

CREATE TABLE `sub_category` (
  `id` int(20) NOT NULL,
  `words` varchar(80) NOT NULL,
  `eng_mean` varchar(300) NOT NULL,
  `thang_mean` varchar(300) NOT NULL,
  `cgry_id` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sub_category`
--

INSERT INTO `sub_category` (`id`, `words`, `eng_mean`, `thang_mean`, `cgry_id`) VALUES
(1, 'Column1', '                                      ENGLISH  Meaning', '               Thanglish Meaning', 0),
(2, 'Egotist ', ' always talks about themselves and their acheivments. ', 'thannai patriyum thaan seithavai patriyum athigam pesupavan', 1),
(3, 'Introvert  ', 'socializing with others, stays alone. ', 'yaru kitayum palaga virumbathavan, thaniya vazhpavan', 4),
(4, 'Extrovert  ', 'loves socializing with others, mingles with everyone.', 'elaru kitayum palaga virumbuvan', 4),
(5, 'Ambivert ', 'both intovert and extrovert.', 'rendumey (introvert and extrovert)', 4),
(6, 'Misanthrope ', 'doesn\'t like other people', 'mathavangala pudikadhavan', 3),
(7, 'Misogynist ', ' hates women.', 'pengalai pudikadhavan', 3),
(8, 'Misogamist ', 'doesn\'t like marriage.', 'kalyanam pudikadhavan', 3),
(9, 'Ascetic ', 'lives a simple lifestyle.', 'sadharnamaana vazhkaiya vazhpavan', 3),
(10, 'Anthropologist ', 'studies human societies.', 'samudhayam pathi padipavan', 5),
(11, 'Astronomer ', 'studies about planets, stars, galaxies.', 'vaaniyalaalar ( space pathi padipan)', 10),
(12, 'Alternative ', 'optional, substitute', 'ondruku badhil aaga', 2),
(13, 'alternate ', 'change', 'maatram', 2),
(14, 'altercation', 'argument, fighting', 'vaakuvadham, sandai', 2),
(15, 'ambidextrous', 'can use both hands equally.', 'rendu kaiyum samam aga payanpaduthum thiramai ullavan', 32),
(16, 'philanthropist ', 'helper, love mankind', 'udhaviyalar, manitha inathai nesipavan', 7),
(17, 'misandrist ', 'hates men.', 'aangalai verupavan', 3),
(18, 'monogamist ', 'only one marriage for lifetime.', 'orey thirumanam thann vazhkai muluvadhum', 8),
(19, 'egomaniac ', 'selfish.', 'suyanalavaadhi', 1),
(20, 'egocentric ', 'selfish.', 'suyanalavaadi', 1),
(21, 'biologist ', 'studies biology', 'uyiriyal padipavan (biology)', 9),
(22, 'entomologist ', 'studies insect.', 'poochigalai pathi padipavan', 33),
(23, 'astronaut ', 'travels in spacecraft.', 'vinkalam thil payanipavan ', 10),
(24, 'cosmonaut ', 'russian space traveller', 'russian vinvelli payanaalar', 11),
(25, 'semanticist ', 'specialist in study of meaning.', 'porul ayvil sirandhavar', 27),
(26, 'mastectomy ', 'operation to remove breast.', 'marbagangalai neeka seiyum aruvai seegichai', 12),
(27, 'vasectomy ', 'operation done for a man for blocking the sperm and avoid pregnancy.', 'aangaluku seiyum aruvai seegichai sperm galai thadupadharku, karrpam thadupadharkaga', 12),
(28, 'appendectomy ', 'operation to remove appendix.', 'appendix akatra seiyum aruvai seegichai', 12),
(29, 'anatomy ', 'study of body structure.', 'manidha udal amaipugali patri padipavan', 12),
(30, 'dichotomy ', 'contrast between two things.', 'rendu vishayathuku nadula iruka vithyasamgal', 12),
(31, 'oxymoron ', 'combination of two opposite words.', 'rendu edhir vaarthaigalin kalavai', 0),
(32, 'epitome ', 'perfection.', 'mulumaiyaga', 44),
(33, 'epiphany ', 'realization', 'unarndhal', 43),
(34, 'selenophile', 'loves moon', 'nila vai virumbuvan', 7),
(35, 'altruistic', 'helpful', 'udhaviyalar.', 45),
(36, 'gynecologist', 'treats women', 'pengalukku seegichai alipavar', 6),
(37, 'obstetrician', 'treats pregnant women.', 'karpini pengaluku seegichai alipavar.', 46),
(38, 'opthalmolagist', 'studies and treats the disorder of eye.', 'kan kolarugalai aayvu sedhu seegichai alipavar', 17),
(39, 'dermatologist ', 'treats skin diseases.', 'thol noigaluku seegichai alipavar', 34),
(40, 'pediatrist', 'child specialist', 'kulandhaigalukkana maruthuvar', 15),
(41, 'orthopedist ', 'treats musculoskeletal (bones, muscles, joints)', 'thasaigaluku seegichai alipavar (yelumbu,sadhai, muttukal)', 19),
(42, 'psychiatrist ', 'treats mental illness', 'manam noigaluku seegichai alipavar', 21),
(43, 'neurologist ', 'treats nerve diseases.', 'narambu noigaluku seegichai alipavar', 34),
(44, 'cardiologist ', 'treats heart problems.', 'idhaya noigaluku seegichai alipar', 34),
(45, 'pedagogy ', 'profession of teaching', 'aasiriyar tholil', 47),
(46, 'taxidermy ', 'act of selling animal skin.', 'vilangu tholgalai vitkum kalai', 48),
(47, 'pachyderm ', 'animal with thick skin', 'mothamana tholl konda vilangugal', 48),
(48, 'dermatitis', 'skin turns red, swollen, sore.', 'thol sigapaga, veekam,punn aga maarum', 48),
(49, 'epidermis ', 'outer layer of skin.', 'thollin velipura pagudhi', 42),
(50, 'opthalmus ', 'eye', 'kan', 17),
(51, 'monocle ', 'single eyeglass', 'ottrai kannadi', 8),
(52, 'binocular ', 'involving both eyes.', 'rendu kanngalum edupadum', 49),
(53, 'optometrist ', 'measures eye for lens', 'lens kaga kannai parisodhipavar.', 17),
(54, 'optician ', 'sells spectacles.', 'kannadi vitpavar', 17),
(55, 'inoculate ', 'vaccinate', 'thadupu oosi podungal', 50),
(56, 'gerentalogist ', 'treats elderly people.', 'vayadhu aanavargalku seegichai alipavar', 34),
(57, 'orthodontist ', ' dentist deeling with irregularities of teeth ', 'Parkalin olungatara varusaigalai sari paduthuvabar', 19),
(58, 'graphalogist ', 'handwriting expert, used in investigation.', 'kaiyeluthil seerandhavar, visaranaiyil payan paduthapadum', 18),
(59, 'caligraphy ', 'writing beautifully with special pen', 'sirandha penavil azhagaga eluthuvadhu', 18),
(60, 'cacography ', 'bad handwriting', 'mosamana kaiyeluthu', 18),
(61, 'chiropractors', 'massagers', 'massage seipavar', 16),
(62, 'chiromancy ', 'prediction using hand', 'kaigalai vaithu kanipavar.', 16),
(63, 'succinctly', 'briefly, clearly.', 'surukamaga, thelivaga.', 41),
(64, 'malaise', 'illness', 'udall nalam ilamal', 13),
(65, 'permeated ', 'entered', 'ulley nolaindhadhu', 51),
(66, 'call upon', 'invite, ask to speak', 'allaipu, pesuvadharku alaipu', 28),
(67, 'call forth ', 'teasing', 'keli seibathu', 28),
(68, 'call in ', 'return', 'thirumba', 28),
(69, 'libelous ', 'false or unfair statement', 'thavaru aladhu nyayam atra padhivu', 26),
(70, 'litter ', 'group of kittens, pieces of paper', 'punailuttygalin kulu, kagidha thoolgal', 36),
(71, 'bustling ', 'noisy', 'sathamm', 37),
(72, 'tranquility ', 'peace', 'saanthamaga', 38),
(73, 'deligent ', 'showing effort in work', 'velaiyil muyarchi yai kaatubadhu', 39),
(74, 'dubious', 'doubtful', 'sandhegamaga', 52),
(75, 'conceit', 'favorable opinion,', 'saadhagamana karuthu', 40),
(76, 'beneficent ', 'ending in good', 'nalladhil mudivadhu', 13),
(77, 'benefactor ', 'helps by giving money', 'kaasu kudupathil udhabuvuvan', 13),
(78, 'benevolent ', 'kind, friendly,helful.', 'anbana, natpodu udhabuvavan', 13),
(79, 'benediction ', 'prayer for asking wishes, blessing.', 'prathanai seidhu aasaigalai ketpadhu, aasirvaadham', 13),
(80, 'beningnant ', 'kindly.', 'anbaga', 13),
(81, 'equivocate ', 'equal', 'samanpadu', 35),
(82, 'vociferous ', 'to speak loud.', 'sathamaga pesuvadhu', 29),
(83, 'pacify ', 'change from angry to calm.', 'kovathil irundhu shanthamaga maatram', 56),
(84, 'lenity ', 'gentle, kind.', 'menmaiyaga, anbaga', 55),
(85, 'prescribe ', 'suggest correct medicine.', 'sariyana marundhai parindhuraipadhu', 20),
(86, 'proscribe ', 'prohibit something by law.', 'sattathai payan paduthi oru vishayathai thadupadhu', 20),
(87, 'script ', 'dailogue,or other directions written or typed.', 'uraiyadal alathu matha iyakangal yeluthil alathu type seiyapatavai', 20),
(88, 'manuscript ', 'copy of book.', 'oru puthaga book oda copy', 20),
(89, 'inscribe ', 'write or carve.', 'eludhuvadhu aladhu sedhukuvadhu', 20),
(90, 'scripture ', 'holy book', 'punidha nool', 20),
(91, 'obviate ', 'prevent', 'thadupadhu', 22),
(92, 'avoid ', 'keep away from someone', 'oruvaridam irundhu thalli irupadhu', 22),
(93, 'deflect ', 'change direction, turn attention.', 'dhisai maatram, yerpadhu', 22),
(94, 'avert ', 'prevent something from happening', 'oru vishayam nadapadhil irundhu thadupadhu', 22),
(95, 'eliminate ', 'remove', 'vilakuvadhu', 22),
(96, 'sycophancy ', 'fake praising.', 'poiyana pugalchigal', 23),
(97, 'flatter ', 'being proud about themselves ', 'thannai patri perumai padupavan', 23),
(98, 'adulate ', 'praising very much.', 'adhigamaga pugalbavan', 23),
(99, 'obsequious ', 'attentive.', 'gavanamanavan', 23),
(100, 'patronize ', 'support, help.', 'udhabuvavan', 23),
(101, 'cajole ', 'to make a person do a work by being very nice.', 'orutharidam nalla palaguvadhin moolam velai vaangubavar', 23),
(102, 'support ', 'help, stand by.', 'udhabuvavan, thunai nirpavan', 24),
(103, 'concede ', 'admit that it is true', 'unmaiyai idhudhan endru othupavan', 24),
(104, 'lenient ', 'person who punishes.', 'dhandanai tharubavan', 53),
(105, 'condone ', 'agree with what most people thinks wrong', 'adhiga matkal nenaipadhai thavru endru otrukolbavan', 30),
(106, 'excuse ', 'a reason', 'karanam', 30),
(107, 'allow ', 'give permission', 'anumadhi tharubadhu', 30),
(108, 'defamatory ', 'false words about someone, disrespecting someone', 'poiyana varthai, oruvaruku mariyadhai kuraivu seivadhu', 25),
(109, 'deride ', 'mock someone', 'oruvar poley seibavar', 25),
(110, 'slander ', 'false statement about someone through speech', 'oruvarai patri thavarana padhivu', 31),
(111, 'scandilicing ', 'spreading rumors, gossip ', 'oruvarai patri vadhandhi matrum poraniyai parapuvadhu', 31),
(112, 'libelling ', 'false written statement ', 'poiyaga eludhapatta padhivu', 26),
(113, 'deragatory ', 'disrespectful attitude, insulting.', 'mariyadhaiattra anugumurai, avamadhipu', 25),
(114, 'maligning ', 'harmful words ', 'theengu vilaivitkum varthaigal', 12),
(115, 'malaria ', 'disease caused by mosquitoes.', 'kosugal aal uruvagum oruvagai noi', 12),
(116, 'malefactor ', 'commited crime', 'kuttram seithavar', 12),
(117, 'malevolent ', 'desire to harm others.', 'matravargalai kaya padutha virumbuvar', 12),
(118, 'malediction ', 'curse statement to harm someone.', 'sabam kudukum padhivu oruvari kaaya paduvadharkaga', 12),
(119, 'malice ', 'desire to harm or hurt others', 'matravargalai kaya padutha virumbavar', 12),
(120, 'maladix ', 'harmful statement, wish bad to happen to others', 'theengu vilaivitkum varthaigal, matravargaluku ketadhu nadka vendum endru virumbuvar.', 12),
(121, 'malignant ', 'dangerous,harmful.', 'aabathana, theengu vilaivitkum', 12),
(122, 'malficient ', 'causing harm or damage.', 'theengu aladhu badhipu undakum', 12);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_category`
--
ALTER TABLE `sub_category`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `sub_category`
--
ALTER TABLE `sub_category`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
