-- Question 2 :

create table Joueur (
    idJoueur number(2) primary key,
    nom varchar2(50),
    age number(2),
    nationalite varchar2(20),
    nbSuspensions number(2)
);

create table Club (
    nomClub varchar2(30) primary key,
    ville varchar2(30),
    stade varchar(20),
    capacite number(5)
);

create table Saison (
    idSaison number(2) primary key,
    debutSaison date,
    finSaison date
);

create table Match (
    idMatch number(2) primary key,
    clubDomicile varchar2(30),
    clubVisiteur varchar2(30),
    dateMatch date,
    nbButsDom number(2),
    nbButsVis number(2),
    nbSpectateurs number(5),
    foreign key (clubDomicile) references Club (nomClub),
    foreign key (clubVisiteur) references Club (nomClub)
);

create table Contrat (
    nomClub varchar2(30),
    idJoueur number(2),
    debutContrat date primary key,
    transfert number(9),
    salaire number(8),
    finContrat date,
    foreign key (nomClub) references Club (nomClub),
    foreign key (idJoueur) references Joueur (idJoueur)
);

create table Joue (
    idMatch number(2),
    idJoueur number(2),
    poste varchar2(20),
    nbMinJeu number(2),
    carton varchar2(10),
    foreign key (idMatch) references Match (idMatch),
    foreign key (idJoueur) references Joueur (idJoueur)
);

create table Abonnement (
    idSaison number(2),
    nomClub varchar2(30),
    nbAbonnement number(6),
    montant number(3),
    foreign key (idSaison) references Saison (idSaison),
    foreign key (nomClub) references Club (nomClub)
);

create table Championnat (
    idSaison number(2),
    nomClub varchar2(30),
    points number(3),
    foreign key (idSaison) references Saison (idSaison),
    foreign key (nomClub) references Club (nomClub)
);

-- Insert into

insert into JOUEUR values (1,'Abdou Traoré',27,'Mali',0);
insert into JOUEUR values (2,'Adam Ounas',19,'France',0);
insert into JOUEUR values (3,'Aldo Kalulu',19,'France',0);
insert into JOUEUR values (4,'Alexandre Lacazette',24,'France',0);
insert into JOUEUR values (5,'André Poko',22,'Gabon',0);
insert into JOUEUR values (6,'Anthony Lopes',25,'Portugal',0);
insert into JOUEUR values (7,'Arnold Mvuemba',30,'France',0);
insert into JOUEUR values (8,'Bakary Koné',27,'BurkinaFaso',0);
insert into JOUEUR values (9,'Cédric Carrasso',33,'France',3);
insert into JOUEUR values (10,'Cédric Yambéré',25,'France',1);
insert into JOUEUR values (11,'Cheick Diabaté',27,'Mali',2);
insert into JOUEUR values (12,'Christophe Jallet',32,'France',4);
insert into JOUEUR values (13,'Claudio Beauvue',27,'France',0);
insert into JOUEUR values (14,'Clément Chantôme',28,'France',0);
insert into JOUEUR values (15,'Clément Grenier',24,'France',0);
insert into JOUEUR values (16,'Corentin Tolisso',21,'France',0);
insert into JOUEUR values (17,'David Sambissa',19,'France',0);
insert into JOUEUR values (18,'Diego Contento',25,'Allemagne',0);
insert into JOUEUR values (19,'Diego Rolan',22,'Uruguay',0);
insert into JOUEUR values (20,'Enzo Crivelli',20,'France',0);
insert into JOUEUR values (21,'Frederic Guilbert',20,'France',0);
insert into JOUEUR values (22,'Gaëtan Laborde',21,'France',0);
insert into JOUEUR values (23,'Grégory Sertic',26,'France',0);
insert into JOUEUR values (24,'Gueïda Fofana',24,'France',0);
insert into JOUEUR values (25,'Henri Bedimo',31,'Cameroun',0);
insert into JOUEUR values (26,'Henri Saivet',25,'Sénégal',3);
insert into JOUEUR values (27,'Ilias Hassani',20,'France',1);
insert into JOUEUR values (28,'Isaac Kiese Thelin',23,'Suède',2);
insert into JOUEUR values (29,'Jaroslav Plasil',33,'Rép.Tchèque',4);
insert into JOUEUR values (30,'Jeremy Morel',31,'France',0);
insert into JOUEUR values (31,'Jérôme Prior',20,'France',0);
insert into JOUEUR values (32,'Jordan Ferri',23,'France',0);
insert into JOUEUR values (33,'Jussiê',32,'Brésil',0);
insert into JOUEUR values (34,'Kevin Soni',18,'Cameroun',0);
insert into JOUEUR values (35,'Lamine Sané',28,'Sénégal',0);
insert into JOUEUR values (36,'Lindsay Rose',23,'France',0);
insert into JOUEUR values (37,'Lucas Mocio',21,'France',0);
insert into JOUEUR values (38,'Lucas Tousart',18,'France',0);
insert into JOUEUR values (39,'Mapou Yanga-Mbiwa',26,'France',0);
insert into JOUEUR values (40,'Mathieu Gorgelin',25,'France',0);
insert into JOUEUR values (41,'Mathieu Valbuena',31,'France',0);
insert into JOUEUR values (42,'Maxime Gonalons',26,'France',0);
insert into JOUEUR values (43,'Maxime Poundjé',23,'France',3);
insert into JOUEUR values (44,'Maxwel Cornet',19,'France',1);
insert into JOUEUR values (45,'Milan Bisevac',32,'Serbie',2);
insert into JOUEUR values (46,'Milan Gajic',19,'Serbie',4);
insert into JOUEUR values (47,'Nabil Fekir',22,'France',0);
insert into JOUEUR values (48,'Nicolas Maurice-Belay',30,'France',0);
insert into JOUEUR values (49,'Nicolas Pallois',28,'France',0);
insert into JOUEUR values (50,'Olivier Kemen',19,'France',0);
insert into JOUEUR values (51,'Pablo',24,'Brésil',0);
insert into JOUEUR values (52,'Rachid Ghezzal',23,'Algérie',0);
insert into JOUEUR values (53,'Rafael',25,'Brésil',0);
insert into JOUEUR values (54,'Robin Maulun',19,'France',1);
insert into JOUEUR values (55,'Romain Del Castillo',19,'France',0);
insert into JOUEUR values (56,'Samuel Umtiti',22,'France',0);
insert into JOUEUR values (57,'Sergi Darder',21,'Espagne',0);
insert into JOUEUR values (58,'Simon Lefebvre',18,'France',0);
insert into JOUEUR values (59,'Steed Malbranque',35,'France',0);
insert into JOUEUR values (60,'Thomas Touré',21,'France',0);
insert into JOUEUR values (61,'Valentin Vada',19,'Argentine',0);
insert into JOUEUR values (62,'Wahbi Khazri',24,'Tunisie',0);
insert into JOUEUR values (63,'Zakarie Labidi',20,'France',5);
insert into JOUEUR values (64,'Nicolas Douchez',35,'France',0);
insert into JOUEUR values (65,'Salvatore Sirigu',28,'Italie',0);
insert into JOUEUR values (66,'Kevin Trapp',25,'Allemagne',0);
insert into JOUEUR values (67,'Serge Aurier',22,'Côte dIvoire',0);
insert into JOUEUR values (68,'David Luiz',28,'Brésil',0);
insert into JOUEUR values (69,'Presnel Kimpembe',20,'France',3);
insert into JOUEUR values (70,'Layvin Kurzawa',23,'France',1);
insert into JOUEUR values (71,'Marquinhos',21,'Brésil',2);
insert into JOUEUR values (72,'Maxwell',34,'Brésil',4);
insert into JOUEUR values (73,'Thiago Silva',31,'Brésil',0);
insert into JOUEUR values (74,'Gregory Van der Wiel',27,'Pays-Bas',0);
insert into JOUEUR values (75,'Lucas',23,'Brésil',0);
insert into JOUEUR values (76,'Blaise Matuidi',28,'France',2);
insert into JOUEUR values (77,'Thiago Motta',33,'Italie',0);
insert into JOUEUR values (78,'Javier Pastore',26,'Argentine',0);
insert into JOUEUR values (79,'Adrien Rabiot',20,'France',0);
insert into JOUEUR values (80,'Benjamin Stambouli',25,'France',0);
insert into JOUEUR values (81,'Marco Verratti',23,'Italie',0);
insert into JOUEUR values (82,'Jean-Kévi Augustin',18,'France',0);
insert into JOUEUR values (83,'Edinson Cavani',28,'Uruguay',3);
insert into JOUEUR values (84,'Angel Di Maria',27,'Argentine',1);
insert into JOUEUR values (85,'Zlatan Ibrahimovic',34,'Suède',2);
insert into JOUEUR values (86,'Ezequiel Lavezzi',30,'Argentine',4);
insert into JOUEUR values (87,'Hervin Ongenda',20,'France',0);



insert into  club values ('A','Aville','Astade',1000);
insert into  club values ('B','Bville','Bstade',5400);
insert into  club values ('C','Cville','Cstade',10000);
insert into  club values ('D','Dville','Dstade',50000);



insert into saison values (1,to_date('01/08/19'),to_date('31/07/20'));
insert into saison values (2,to_date('01/08/20'),to_date('31/07/21'));
insert into saison values (3,to_date('01/08/21'),to_date('31/07/22'));



insert into  match values (1,'A','B',to_date('1/8/2019'),10,1,218);
insert into  match values (2,'A','C',to_date('8/8/2019'),3,7,54);
insert into  match values (3,'A','D',to_date('18/8/2019'),10,0,814);
insert into  match values (4,'B','A',to_date('22/8/2019'),10,0,3515);
insert into  match values (5,'B','C',to_date('29/8/2019'),1,6,4162);
insert into  match values (6,'B','D',to_date('5/9/2019'),4,3,2166);
insert into  match values (7,'C','A',to_date('12/9/2019'),9,2,473);
insert into  match values (8,'C','B',to_date('19/9/2019'),4,9,8435);
insert into  match values (9,'C','D',to_date('26/9/2019'),1,6,4446);
insert into  match values (10,'D','A',to_date('3/10/2019'),7,0,9666);
insert into  match values (11,'D','B',to_date('10/10/2019'),2,0,1005);
insert into  match values (12,'D','C',to_date('17/10/2019'),7,0,23297);
insert into  match values (13,'A','B',to_date('1/8/2020'),6,1,191);
insert into  match values (14,'A','C',to_date('8/8/2020'),4,8,467);
insert into  match values (15,'A','D',to_date('16/8/2020'),7,3,127);
insert into  match values (16,'B','A',to_date('22/8/2020'),6,0,3899);
insert into  match values (17,'B','C',to_date('29/8/2020'),4,5,3253);
insert into  match values (18,'B','D',to_date('5/9/2020'),7,8,3213);
insert into  match values (19,'C','A',to_date('12/9/2020'),0,7,9787);
insert into  match values (20,'C','B',to_date('19/9/2020'),1,8,7351);
insert into  match values (21,'C','D',to_date('26/9/2020'),3,1,3756);
insert into  match values (22,'D','A',to_date('3/10/2020'),3,4,44155);
insert into  match values (23,'D','B',to_date('10/10/2020'),5,9,19460);
insert into  match values (24,'D','C',to_date('17/10/2020'),2,0,36916);
insert into  match values (25,'A','B',to_date('1/8/2021'),5,5,570);
insert into  match values (26,'A','C',to_date('8/8/2021'),2,3,663);
insert into  match values (27,'A','D',to_date('15/8/2021'),3,1,35);
insert into  match values (28,'B','A',to_date('22/8/2021'),10,6,1150);
insert into  match values (29,'B','C',to_date('29/8/2021'),7,3,2148);
insert into  match values (30,'B','D',to_date('5/9/2021'),5,6,2889);
insert into  match values (31,'C','A',to_date('12/9/2021'),2,7,9329);
insert into  match values (32,'C','B',to_date('19/9/2021'),10,7,935);
insert into  match values (33,'C','D',to_date('26/9/2021'),4,1,5938);
insert into  match values (34,'D','A',to_date('3/10/2021'),9,9,38956);
insert into  match values (35,'D','B',to_date('10/10/2021'),4,4,31634);
insert into  match values (36,'D','C',to_date('17/10/2021'),3,7,25393);



insert into  contrat values ('A',1,to_date('1/7/2015'),3581720,152291,to_date('18/10/2021'));
insert into  contrat values ('A',2,to_date('2/7/2019'),8244208,780567,to_date('19/10/2021'));
insert into  contrat values ('A',3,to_date('3/7/2019'),3383839,625885,to_date('20/10/2021'));
insert into  contrat values ('A',4,to_date('4/7/2019'),473932,971170,to_date('21/10/2021'));
insert into  contrat values ('A',5,to_date('5/7/2019'),8990555,932586,to_date('22/10/2021'));
insert into  contrat values ('A',6,to_date('6/7/2019'),5915410,446360,to_date('23/10/2021'));
insert into  contrat values ('A',7,to_date('7/7/2019'),5064694,927304,to_date('24/10/2021'));
insert into  contrat values ('A',8,to_date('8/7/2019'),4823855,560876,to_date('25/10/2021'));
insert into  contrat values ('B',9,to_date('9/7/2019'),4987002,894609,to_date('26/10/2021'));
insert into  contrat values ('B',10,to_date('10/7/2019'),7109633,767411,to_date('27/10/2021'));
insert into  contrat values ('B',11,to_date('11/7/2019'),5158253,907392,to_date('28/10/2021'));
insert into  contrat values ('B',12,to_date('12/7/2019'),2428503,675065,to_date('29/10/2021'));
insert into  contrat values ('B',13,to_date('13/7/2019'),3631435,143036,to_date('30/10/2021'));
insert into  contrat values ('B',14,to_date('14/7/2019'),2077612,327916,to_date('31/10/2021'));
insert into  contrat values ('B',15,to_date('15/8/2019'),1905460,750441,to_date('1/11/2021'));
insert into  contrat values ('B',16,to_date('16/7/2019'),7851910,220031,to_date('2/11/2021'));
insert into  contrat values ('B',17,to_date('17/7/2019'),7431048,233907,to_date('3/11/2021'));
insert into  contrat values ('C',18,to_date('18/7/2019'),2585629,399523,to_date('4/11/2021'));
insert into  contrat values ('C',19,to_date('19/7/2019'),7863604,971211,to_date('5/11/2021'));
insert into  contrat values ('C',20,to_date('20/7/2015'),3502610,468576,to_date('6/11/2021'));
insert into  contrat values ('C',21,to_date('21/7/2019'),5785155,794655,to_date('7/11/2021'));
insert into  contrat values ('C',22,to_date('22/7/2019'),1885781,733717,to_date('8/11/2021'));
insert into  contrat values ('C',23,to_date('23/7/2019'),106390,499928,to_date('9/11/2021'));
insert into  contrat values ('C',25,to_date('24/7/2019'),3195522,805698,to_date('10/11/2021'));
insert into  contrat values ('C',25,to_date('11/11/2020'),4642594,227051,to_date('11/11/2021'));
insert into  contrat values ('C',26,to_date('26/7/2019'),2211861,638573,to_date('12/11/2021'));
insert into  contrat values ('D',27,to_date('27/8/2019'),2686074,831555,to_date('13/11/2021'));
insert into  contrat values ('D',28,to_date('28/7/2019'),3178274,197666,to_date('14/11/2021'));
insert into  contrat values ('D',29,to_date('29/7/2019'),3121650,704910,to_date('15/11/2021'));
insert into  contrat values ('D',30,to_date('30/7/2015'),3139704,302583,to_date('16/11/2021'));


insert into  joue values (1,10,'goal',90,'aucun');
insert into  joue values (2,11,'defenseur',90,'aucun');
insert into  joue values (3,12,'defenseur',90,'aucun');
insert into  joue values (4,13,'attaquant',90,'aucun');
insert into  joue values (5,14,'attaquant',90,'aucun');
insert into  joue values (6,15,'attaquant',90,'aucun');
insert into  joue values (7,16,'goal',90,'aucun');
insert into  joue values (8,17,'defenseur',90,'aucun');
insert into  joue values (9,18,'defenseur',90,'aucun');
insert into  joue values (10,19,'attaquant',81,'aucun');
insert into  joue values (11,20,'attaquant',22,'jaune');
insert into  joue values (12,21,'attaquant',10,'jaune');
insert into  joue values (13,22,'goal',60,'aucun');
insert into  joue values (14,23,'defenseur',89,'rouge');
insert into  joue values (15,24,'defenseur',3,'jaune');
insert into  joue values (16,25,'attaquant',85,'rouge');
insert into  joue values (17,26,'attaquant',90,'aucun');
insert into  joue values (18,27,'attaquant',90,'aucun');
insert into  joue values (19,28,'goal',90,'aucun');
insert into  joue values (20,29,'defenseur',90,'aucun');
insert into  joue values (21,30,'defenseur',90,'aucun');
insert into  joue values (22,31,'attaquant',90,'aucun');
insert into  joue values (23,32,'attaquant',90,'aucun');
insert into  joue values (24,33,'attaquant',90,'aucun');
insert into  joue values (25,34,'goal',90,'aucun');
insert into  joue values (26,35,'defenseur',54,'aucun');
insert into  joue values (27,36,'defenseur',88,'jaune');
insert into  joue values (28,37,'attaquant',49,'jaune');
insert into  joue values (29,38,'attaquant',88,'aucun');
insert into  joue values (30,39,'attaquant',25,'rouge');
insert into  joue values (31,40,'goal',50,'jaune');
insert into  joue values (32,41,'defenseur',56,'rouge');
insert into  joue values (33,42,'defenseur',90,'aucun');
insert into  joue values (34,43,'attaquant',90,'aucun');
insert into  joue values (35,44,'attaquant',90,'aucun');
insert into  joue values (36,45,'attaquant',90,'aucun');
insert into  joue values (1,46,'attaquant',90,'aucun');
insert into  joue values (2,47,'defenseur',90,'aucun');
insert into  joue values (3,48,'defenseur',90,'aucun');
insert into  joue values (4,49,'attaquant',90,'aucun');
insert into  joue values (5,50,'attaquant',51,'aucun');
insert into  joue values (6,51,'attaquant',42,'aucun');
insert into  joue values (7,52,'attaquant',42,'jaune');
insert into  joue values (8,52,'defenseur',30,'jaune');
insert into  joue values (9,54,'defenseur',3,'aucun');
insert into  joue values (10,12,'attaquant',87,'rouge');
insert into  joue values (11,13,'defenseur',83,'jaune');
insert into  joue values (12,57,'attaquant',33,'rouge');
insert into  joue values (13,58,'attaquant',77,'aucun');
insert into  joue values (14,59,'defenseur',72,'aucun');



insert into Abonnement values (1,'A',594,80);
insert into Abonnement values (1,'B',407,90);
insert into Abonnement values (1,'C',925,100);
insert into Abonnement values (1,'D',714,110);
insert into Abonnement values (2,'A',835,90);
insert into Abonnement values (2,'B',966,100);
insert into Abonnement values (2,'C',984,110);
insert into Abonnement values (2,'D',429,120);
insert into Abonnement values (3,'A',529,100);
insert into Abonnement values (3,'B',900,110);
insert into Abonnement values (3,'C',846,120);
insert into Abonnement values (3,'D',759,130);

-- Partie 3 :

-- 1
select * from Joueur order by nom;

--2         Henri Bedimo
select debutContrat, finContrat from CONTRAT inner join JOUEUR J on Contrat.idJoueur = J.IDJOUEUR where nom = 'Henri Bedimo' order by debutContrat;

--3
select * from Match where nbButsDom = nbButsVis;

--4
select capacite - nbSpectateurs as "Nombre de place restantes" from Club inner join Match M on Club.nomClub = M.clubDomicile;

--5
select idMatch, dateMatch from Match where nbButsVis-nbButsDom >= 2 or nbButsDom-nbButsVis >= 2;

--6
select concat(concat(concat(concat('<< ',clubDomicile),' - '),clubVisiteur),' >>') from Match;

--7
select nom from Joueur where to_char(age, 'YYYY')='1990';

