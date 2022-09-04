-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : dim. 04 sep. 2022 à 06:01
-- Version du serveur : 10.4.21-MariaDB
-- Version de PHP : 7.3.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `pfe-movietime`
--

-- --------------------------------------------------------

--
-- Structure de la table `acteur`
--

CREATE TABLE `acteur` (
  `idAct` int(11) NOT NULL,
  `ActName` varchar(30) NOT NULL,
  `ActDesc` varchar(1000) NOT NULL,
  `ActFS` varchar(50) NOT NULL,
  `ActImg` varchar(50) NOT NULL,
  `ActBorn` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `acteur`
--

INSERT INTO `acteur` (`idAct`, `ActName`, `ActDesc`, `ActFS`, `ActImg`, `ActBorn`) VALUES
(1, 'Johnny Depp', 'John Christopher \"Johnny\" Depp II was born on June 9, 1963 in Owensboro, Kentucky to Betty Sue Palmer (née Wells), a waitress & John Christopher Depp, a civil engineer.\r\n<br><br>\r\nJohnny Depp is perhaps one of the most versatile actors of his day and age in Hollywood. He was born John Christopher Depp II in Owensboro, Kentucky, on June 9, 1963, to Betty Sue (Wells), who worked as a waitress, and John Christopher Depp, a civil engineer.', 'Sweeney Todd: The Demon Barber of Fleet Street', 'johnny.jpg', 'June 9, 1963 in Owensboro, Kentucky, USA'),
(2, 'Leonardo DiCaprio\n', 'Leonardo Wilhelm DiCaprio is an American actor and film producer. Known for his work as a leading man in biopics and period films, he is the recipient of numerous accolades, including an Academy Award, a British Academy Film Award, and three Golden Globe Awardsooo', 'Catch Me if You Can (2002)', 'dica.jpg', ' November 11, 1974 in Hollywood, Los Angeles, California, USA'),
(3, 'Denzel Washington', 'Denzel Hayes Washington, Jr. was born on December 28, 1954 in Mount Vernon, New York. He is the middle of three children of a beautician mother, Lennis, from Georgia, and a Pentecostal minister father, Denzel Washington, Sr., from Virginia. After graduating from high school, Denzel enrolled at Fordham University, intent on a career in journalism.', 'Fences(2016)', 'denzel.jpg', 'December 28, 1954 in Mount Vernon, New York, USA'),
(4, 'Will Smith', 'Willard Carroll \"Will\" Smith II (born September 25, 1968) is an American actor, comedian, producer, rapper, and songwriter. He has enjoyed success in television, film, and music. In April 2007, Newsweek called him \"the most powerful actor in Hollywood\". Smith has been nominated for five Golden Globe Awards, two Academy Awards, and has won four Grammy Awards.', 'I Am Legend(2007)', 'will.jpg', ' September 25, 1968 in Philadelphia, Pennsylvania, USA'),
(5, 'Cillian Murphy', 'Striking Irish actor Cillian Murphy was born in Douglas, the oldest child of Brendan Murphy, who works for the Irish Department of Education, and a mother who is a teacher of French. He has three younger siblings. Murphy was educated at Presentation Brothers College, Cork. He went on to study law at University College Cork, but dropped out after about a year. During this time Murphy also pursued an interest in music, playing guitar in various bands. ', 'The Dark Knight(2008)', 'cilian.jpg', ' May 25, 1976 in Douglas, Cork, Ireland'),
(6, 'Shailene Woodley', 'Actress and activist Shailene Woodley was born in Simi Valley, California, to Lori (Victor), a middle school counselor, and Lonnie Woodley, a school principal. She has one brother, Tanner. She was educated at Simi Valley High School in California. When Woodley was four years old she began commercial modeling. Acting roles followed, and she made her screen debut in 1999\'s S\'il suffisait d\'aimer (1999).', 'The Fault in Our Stars(2014)', 'shailene.jpg', 'November 15, 1991 in Simi Valley, California, USA'),
(7, 'Tom Hanks', 'Thomas Jeffrey Hanks was born in Concord, California, to Janet Marylyn (Frager), a hospital worker, and Amos Mefford Hanks, an itinerant cook. His mother\'s family, originally surnamed \"Fraga\", was entirely Portuguese, while his father was of mostly English ancestry. Tom grew up in what he has called a \"fractured\" family. He moved around a great deal after his parents\' divorce, living with a succession of step-families. ', '\nCast Away(2000)', 'Tom.jpg', 'July 9, 1956 in Concord, California, USA'),
(8, 'Tom Cruise', 'In 1976, if you had told fourteen-year-old Franciscan seminary student Thomas Cruise Mapother IV that one day in the not too distant future he would be Tom Cruise, one of the top 100 movie stars of all time, he would have probably grinned and told you that his ambition was to join the priesthood. Nonetheless, this sensitive, deeply religious youngster who was born in 1962 in Syracuse, New York, was destined to become one of the highest paid and most sought after actors in screen history.', 'Mission: Impossible\n(1996)', 'cruis.jpg', 'July 3, 1962 in Syracuse, New York, USA'),
(9, 'Jim Carrey', 'Jim Carrey, Canadian-born and a U.S. citizen since 2004, is an actor and producer famous for his rubbery body movements and flexible facial expressions. The two-time Golden Globe-winner rose to fame as a cast member of the Fox sketch comedy In Living Color (1990) but leading roles in Ace Ventura, détective chiens et chats (1994), Dumb & Dumber (1994) and The Mask (1994) established him as a bankable comedy actor.', 'The Mask(1994)', 'jim.jpg', 'January 17, 1962 in Newmarket, Ontario, Canada');

-- --------------------------------------------------------

--
-- Structure de la table `castlist`
--

CREATE TABLE `castlist` (
  `idCast` int(11) NOT NULL,
  `idMovies` int(11) NOT NULL,
  `nameCast` varchar(40) NOT NULL,
  `nickCast` varchar(40) DEFAULT NULL,
  `imageCast` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `castlist`
--

INSERT INTO `castlist` (`idCast`, `idMovies`, `nameCast`, `nickCast`, `imageCast`) VALUES
(1, 6, 'Ryan Reynolds', 'Big Adam', 'ryan.jpg'),
(4, 6, 'Walker Scobell', 'Young Adam', 'walker.jpg'),
(5, 6, 'Jennifer Garner', 'Ellie Reed', 'jennifer.jpg'),
(6, 6, 'Mark Ruffalo', 'Louis Reed', 'mark.jpg'),
(7, 6, ' Zoe Saldana', 'Laura(as Zoe Saldaña)', 'zoe.jpg'),
(8, 6, 'Catherine Keener', 'Maya Sorian', 'keener.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `demande`
--

CREATE TABLE `demande` (
  `idDem` int(11) NOT NULL,
  `email` varchar(30) NOT NULL,
  `titre` varchar(60) NOT NULL,
  `URL` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `demande`
--

INSERT INTO `demande` (`idDem`, `email`, `titre`, `URL`) VALUES
(7, 'kidn8@gmail.com', 'Hustle', 'https://www.imdb.com/title/tt8009428/?ref_=hm_tpks_tt_i_2_pd_tp1_pbr_ic'),
(8, 'lol2@gmail.com', 'Father Stu', 'https://www.imdb.com/title/tt14439896/?ref_=hm_tpks_tt_i_5_pd_tp1_pbr_ic'),
(9, 'soc.20@gmail.com', 'The Bad Guys', 'https://www.imdb.com/title/tt8115900/?ref_=hm_tpks_tt_i_6_pd_tp1_pbr_ic'),
(10, 'moh15@gmail.com', 'Sonic the Hedgehog 2\n', 'https://www.imdb.com/title/tt12412888/?ref_=hm_tpks_tt_i_3_pd_tp1_pbr_ic');

-- --------------------------------------------------------

--
-- Structure de la table `discussion`
--

CREATE TABLE `discussion` (
  `idDiscussion` int(11) NOT NULL,
  `discussion` varchar(350) NOT NULL,
  `userId` int(11) NOT NULL,
  `idMovies` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `filmlist`
--

CREATE TABLE `filmlist` (
  `idMovies` int(11) NOT NULL,
  `idPlayL` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `filmplayer`
--

CREATE TABLE `filmplayer` (
  `idMovies` int(11) NOT NULL,
  `idPlayer` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `genre`
--

CREATE TABLE `genre` (
  `idGenre` int(11) NOT NULL,
  `nomG` varchar(30) NOT NULL,
  `idMovies` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `movies_tv`
--

CREATE TABLE `movies_tv` (
  `idMovies` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `image` varchar(50) DEFAULT NULL,
  `time` varchar(10) NOT NULL,
  `date` varchar(10) NOT NULL,
  `describe` varchar(400) NOT NULL,
  `director` varchar(200) NOT NULL,
  `country` varchar(50) NOT NULL,
  `vote` varchar(15) DEFAULT NULL,
  `type` varchar(300) NOT NULL,
  `MorS` varchar(300) NOT NULL,
  `Language` varchar(500) NOT NULL,
  `link_trailer` varchar(5000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `movies_tv`
--

INSERT INTO `movies_tv` (`idMovies`, `title`, `image`, `time`, `date`, `describe`, `director`, `country`, `vote`, `type`, `MorS`, `Language`, `link_trailer`) VALUES
(6, 'The Adam Project', 'adam.jpeg', '1h 46m', '2022', 'After accidentally crash-landing in 2022, time-traveling fighter pilot Adam Reed teams up with his 12-year-old self for a mission to save the future.\n\n\n\n', '\nShawn Levy', '\nUnited States', '6.7', 'Action • Aventure • Comédie • Science-fiction', 'movie', 'English', 'https://www.youtube.com/embed/X9ebeNKkc08'),
(7, 'Venom\n', 'Venom.jpeg', '1h 37m', '2021', 'Eddie Brock attempts to reignite his career by interviewing serial killer Cletus Kasady, who becomes the host of the symbiote Carnage and escapes prison after a failed execution.\n\n', 'Andy Serkis', 'United States • China', '5.7', 'Action •  Aventure', 'movie', ' English', 'https://www.youtube.com/embed/u9Mv98Gr5pY'),
(10, 'Peaky Blinders\n', 'peaky.jpg', '1h', '2013-2022', 'A gangster family epic set in 1900s England, centering on a gang who sew razor blades in the peaks of their caps, and their fierce boss Tommy Shelby.\n\n', '\nSteven Knight', 'United Kingdom', '8.8', 'Crime • Drama', 'TV Series\n', ' (English • Romanian • Irish Gaelic • Italian • Yiddish • French)', 'https://www.youtube.com/embed/oVzVdvGIC7U'),
(11, 'The Goodfather', 'TheGoodfather.jpg', '2h 55m', '1972', 'The aging patriarch of an organized crime dynasty in postwar New York City transfers control of his clandestine empire to his reluctant youngest son.\n\n', 'Francis Ford Coppola', '\nUnited States', '9.2', 'Crime • Drama', 'Movie', '(English • Italian • Latin)', 'https://www.youtube.com/embed/UaVTIH8mujA'),
(12, 'Shang-Chi', 'Shang.jpeg', '2h 12m', '2021', 'Shang-Chi, the master of weaponry-based Kung Fu, is forced to confront his past after being drawn into the Ten Rings organization.\n\n', 'Destin Daniel Cretto', '\nUnited States', '7.4', 'Action •  Aventure • \nFantasy', 'Movie', ' (English • Mandarin)', 'https://www.youtube.com/embed/giWIr7U1deA'),
(13, 'Finch', 'finch.jpg', '1h 55m', '2021', 'On a post-apocalyptic Earth, a robot, built to protect the life of his creator\'s beloved dog learns about life, love, friendship and what it means to be human.', '\nMiguel Sapochnik', 'United States •  India', '6.8', '\n\nAdventure • Drama Sci-Fi', 'Movie', 'English', 'https://www.youtube.com/embed/-0bYWnP3jH4'),
(14, 'Top Gun: Maverick ', 'topGun.jpg', '2h 10m', '2022', 'After more than thirty years of service as one of the Navy\'s top aviators, Pete Mitchell is where he belongs, pushing the envelope as a courageous test pilot and dodging the advancement in rank that would ground him.\n\n', '\nJoseph Kosinski', 'United States of America', '8.5', '\nAction •  Drama', 'Movie', 'English', 'https://www.youtube.com/embed/giXco2jaZ_4'),
(15, 'Wrath of Man ', 'warh.jpg', '1h 59m', '2021', 'The plot follows H, a cold and mysterious character working at a cash truck company responsible for moving hundreds of millions of dollars around Los Angeles each week.', 'Guy Ritchie', ' (United Kingdom •   United States)', '7.1', '\nAction • \n Crime • \n Thriller', 'Movie', ' English', 'https://www.youtube.com/embed/EFYEni2gsK0'),
(16, 'Resident Alien', 'alian.jpg', '44m', '2021', 'A crash-landed alien takes on the identity of a small-town Colorado doctor and slowly begins to wrestle with the moral dilemma of his secret mission on Earth.', ' Chris Sheridan', 'United States', '8.1', 'Comedy  • Drama  • Mystery  • Sci-Fi', '\nTV Series\n', ' English', 'https://www.youtube.com/embed/CnC3FInNun4'),
(17, 'Samaritan', 'samarita.jpg', '1h 42m', '2022', 'A young boy learns that a superhero who was thought to have gone missing after an epic battle twenty years ago may in fact still be around.', 'Julius Avery', ' United States', '5.8', 'Action  • \n Drama  • Fantasy  • Sci-Fi', 'Action', 'English', 'https://www.youtube.com/embed/9FKnTxSC16E'),
(18, 'Day Shift', 'day-shift.jpg', '1h 53m', '2022', 'A hard-working, blue-collar dad just wants to provide a good life for his quick-witted 10-year-old daughter. His mundane San Fernando Valley pool cleaning job is a front for his real source of income: hunting and killing vampires.', ' J.J. Perry', ' United States', '6.1', 'Action • Comedy • Fantasy • Horror • Thriller\n', 'Movie', 'English • Spanish', 'https://www.youtube.com/embed/GN_IwBptKi4'),
(22, 'Severance', 'sev.jpg', '55min', '2022', 'Mark leads a team of office workers whose memories have been surgically divided between their work and personal lives. When a mysterious colleague appears outside of work, it begins a journey to discover the truth about their jobs.', ' Dan Erickson', 'United States ', '8.7', 'Drama • Mystery • Sci-Fi • Thriller', 'TV Series\n', ' English', 'https://www.youtube.com/embed/dTqlZkvbNVg\" title=\"YouTube video player'),
(23, 'Avatar', 'avatar.jpg', '23m', '2005–2008', 'In a war-torn world of elemental magic, a young boy reawakens to undertake a dangerous mystic quest to fulfill his destiny as the Avatar, and bring peace to the world.', 'Michael Dante DiMartinoBryan Konietzko', ' United States', '9.3', '\nAnimation • \n Action • \n Adventure • \n Family • \n Fantasy • \n Mystery', 'TV Series\n', ' English', 'https://www.youtube.com/embed/-VsCcJ2rv3E'),
(24, 'I Am Groot', 'grout.jpg', '4m', '2022', 'A series of shorts featuring the seedling Groot along with several new and unusual characters.', ' Kirsten Lepore', ' United States', '6.8', '\nAnimation • \nShort• \n Action • \n Adventure • Comedy • Fantasy • \n Sci-Fi', 'TV Series', ' English', 'https://www.youtube.com/embed/D7eFpRf4tac'),
(25, 'Black Bird ', 'blackBird.jpg', '5h 47m', '2022', 'Jimmy Keene is sentenced to 10 years in a minimum security prison but he cuts a deal with the FBI to befriend a suspected serial killer. Keene has to elicit a confession from Larry Hall to find the bodies of as many as eighteen women.', ' Dennis Lehane', ' United States', '8.2', '\nCrime • \n Drama • \n Mystery • \n Thriller', 'TV Series', 'English', 'https://www.youtube.com/embed/aH1FOkJys3Y'),
(26, 'Better Call Saul', 'saul.jpg', '46m', '2015–2022', 'The trials and tribulations of criminal lawyer Jimmy McGill before his fateful run-in with Walter White and Jesse Pinkman.', 'Vince GilliganPeter Gould', ' United States', '8.9', '\nCrime • Drama', 'TV Series', '( English • Spanish • Vietnamese)', 'https://www.youtube.com/embed/Qz3u06eXf0E'),
(27, 'Breaking Bad', 'breaking.jpg', '49m', '2008–2013', 'A high school chemistry teacher diagnosed with inoperable lung cancer turns to manufacturing and selling methamphetamine in order to secure his family\'s future.', ' Vince Gilligan', ' United States', '9.5', 'Crime • Drama • Thriller', 'TV Series', '( English  •  Spanish)', 'https://www.youtube.com/embed/ceqOTZnhgY8'),
(28, 'Rick and Morty', 'rickMorty.jpg', '23m', '2013', 'An animated series that follows the exploits of a super scientist and his not-so-bright grandson.', ' Dan HarmonJustin  Roiland', ' United States', '9.2', 'Animation • Adventure • Comedy • Sci-Fi', 'TV Series', 'English', 'https://www.youtube.com/embed/jerFRSQW9g8'),
(30, 'dsfdsfdsf', 'rickMorty.jpg', '', '', 'afadf', '', '', '7.2', 'movie', 'Documentary', '', '');

-- --------------------------------------------------------

--
-- Structure de la table `notation`
--

CREATE TABLE `notation` (
  `idNot` int(11) NOT NULL,
  `notAvg` float NOT NULL,
  `idMovies` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `player`
--

CREATE TABLE `player` (
  `idPlayer` int(11) NOT NULL,
  `nomPlayer` varchar(20) NOT NULL,
  `userId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `playlist`
--

CREATE TABLE `playlist` (
  `idPlayL` int(11) NOT NULL,
  `title` varchar(20) NOT NULL,
  `image` varchar(40) NOT NULL,
  `type` varchar(40) NOT NULL,
  `time` varchar(10) NOT NULL,
  `idUser` int(11) NOT NULL,
  `idMovies` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `playlist`
--

INSERT INTO `playlist` (`idPlayL`, `title`, `image`, `type`, `time`, `idUser`, `idMovies`) VALUES
(156, 'Venom\n', 'Venom.jpeg', 'movie', '1h 37m', 5, 7);

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `login` varchar(30) NOT NULL,
  `pwd` varchar(30) NOT NULL,
  `type` varchar(10) NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `login`, `pwd`, `type`) VALUES
(1, 'rida', 'rida', 'admin'),
(2, 'test1', '1234', 'user'),
(3, 'test1qqq', '1234', 'user'),
(4, 'test111', '1234', 'user'),
(5, 'kizon', '0000', 'user');

-- --------------------------------------------------------

--
-- Structure de la table `user_ord`
--

CREATE TABLE `user_ord` (
  `userId` int(11) NOT NULL,
  `userName` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `pwd` varchar(30) NOT NULL,
  `idDiscussion` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `acteur`
--
ALTER TABLE `acteur`
  ADD PRIMARY KEY (`idAct`);

--
-- Index pour la table `castlist`
--
ALTER TABLE `castlist`
  ADD PRIMARY KEY (`idCast`);

--
-- Index pour la table `demande`
--
ALTER TABLE `demande`
  ADD PRIMARY KEY (`idDem`);

--
-- Index pour la table `discussion`
--
ALTER TABLE `discussion`
  ADD PRIMARY KEY (`idDiscussion`),
  ADD UNIQUE KEY `userId` (`userId`,`idMovies`),
  ADD KEY `idMovies` (`idMovies`);

--
-- Index pour la table `filmlist`
--
ALTER TABLE `filmlist`
  ADD UNIQUE KEY `idMovies` (`idMovies`,`idPlayL`),
  ADD KEY `idPlayL` (`idPlayL`);

--
-- Index pour la table `filmplayer`
--
ALTER TABLE `filmplayer`
  ADD UNIQUE KEY `idMovies` (`idMovies`,`idPlayer`),
  ADD KEY `idPlayer` (`idPlayer`);

--
-- Index pour la table `genre`
--
ALTER TABLE `genre`
  ADD PRIMARY KEY (`idGenre`),
  ADD UNIQUE KEY `idMovies` (`idMovies`);

--
-- Index pour la table `movies_tv`
--
ALTER TABLE `movies_tv`
  ADD PRIMARY KEY (`idMovies`),
  ADD UNIQUE KEY `idMovies` (`idMovies`);

--
-- Index pour la table `notation`
--
ALTER TABLE `notation`
  ADD PRIMARY KEY (`idNot`),
  ADD UNIQUE KEY `idFilm` (`idMovies`);

--
-- Index pour la table `player`
--
ALTER TABLE `player`
  ADD PRIMARY KEY (`idPlayer`),
  ADD KEY `userId` (`userId`);

--
-- Index pour la table `playlist`
--
ALTER TABLE `playlist`
  ADD PRIMARY KEY (`idPlayL`),
  ADD KEY `idUser` (`idUser`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `login` (`login`);

--
-- Index pour la table `user_ord`
--
ALTER TABLE `user_ord`
  ADD PRIMARY KEY (`userId`),
  ADD UNIQUE KEY `email_2` (`email`),
  ADD UNIQUE KEY `userName` (`userName`),
  ADD KEY `email` (`email`,`pwd`),
  ADD KEY `pwd` (`pwd`),
  ADD KEY `idDiscussion` (`idDiscussion`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `acteur`
--
ALTER TABLE `acteur`
  MODIFY `idAct` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT pour la table `castlist`
--
ALTER TABLE `castlist`
  MODIFY `idCast` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pour la table `demande`
--
ALTER TABLE `demande`
  MODIFY `idDem` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `discussion`
--
ALTER TABLE `discussion`
  MODIFY `idDiscussion` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `genre`
--
ALTER TABLE `genre`
  MODIFY `idGenre` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `movies_tv`
--
ALTER TABLE `movies_tv`
  MODIFY `idMovies` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT pour la table `notation`
--
ALTER TABLE `notation`
  MODIFY `idNot` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `player`
--
ALTER TABLE `player`
  MODIFY `idPlayer` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `playlist`
--
ALTER TABLE `playlist`
  MODIFY `idPlayL` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=157;

--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `user_ord`
--
ALTER TABLE `user_ord`
  MODIFY `userId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `discussion`
--
ALTER TABLE `discussion`
  ADD CONSTRAINT `discussion_ibfk_2` FOREIGN KEY (`userId`) REFERENCES `user_ord` (`userId`);

--
-- Contraintes pour la table `filmlist`
--
ALTER TABLE `filmlist`
  ADD CONSTRAINT `filmList_ibfk_2` FOREIGN KEY (`idPlayL`) REFERENCES `playlist` (`idPlayL`);

--
-- Contraintes pour la table `filmplayer`
--
ALTER TABLE `filmplayer`
  ADD CONSTRAINT `filmPlayer_ibfk_2` FOREIGN KEY (`idPlayer`) REFERENCES `player` (`idPlayer`);

--
-- Contraintes pour la table `player`
--
ALTER TABLE `player`
  ADD CONSTRAINT `player_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `user_ord` (`userId`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
