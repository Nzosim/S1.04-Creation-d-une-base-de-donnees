-- SAE BDD

drop table Championnat;
drop table Abonnement;
drop table Joue;
drop table CONTRAT;
drop table RESULTAT;
drop table Saison;
drop table Match;
drop table Club;
drop table JOUEUR;


create table Joueur (
    idJoueur number(2),
    nom varchar2(50),
    age number(2),
    nationalite varchar2(20),
    nbSuspensions number(2),
    constraint prim primary key (idJoueur));



create table Club (
    nomClub varchar2(30) primary key,
    ville varchar2(30),
    stade varchar2(20),
    capacite number(5));

create table Saison(
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
    nbSpectateur number(5),
    constraint idd foreign key (clubDomicile) references CLUB (nomClub),
    constraint idv foreign key (clubVisiteur) references CLUB (nomClub)
);

create table contrat (
    nomClub varchar2(30),
    idJoueur number(2),
    debutContrat date primary key,
    transfert number(9),
    salaire number(8),
    finContrat date,
    constraint idc foreign key (nomClub) references CLUB (nomClub),
    constraint idj foreign key (idJoueur) references JOUEUR (idJoueur));

CREATE  table Joue (
    idMatch number(2),
    idJoueur number(2),
    poste varchar2(20),
    nbMinJeu number(2),
    carton varchar2(10),
    constraint idma foreign key (idMatch) references MATCH(idMatch),
    constraint idjo foreign key (idJoueur) references JOUEUR (idJoueur));


create table Abonnement(
    idSaison number(2),
    nomClub varchar2(30),
    nbAbonnement number(6),
    montant number (3),
    constraint idsa foreign key (idSaison) references Saison(idSaison),
    constraint idcl foreign key (nomClub) references CLUB (nomClub)
);

create  table Championnat(
    idSaison number(2),
    nomClub varchar2(30),
    points number(3),
    constraint idsai foreign key (idSaison) references Saison(idSaison),
    constraint idclu foreign key (nomClub) references CLUB (nomClub)
);

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




insert into  club values ('Olympique de Marseille','Marseille','Astade',1000);
insert into  club values ('FC Barcelonne','Barcelonne','Bstade',5400);
insert into  club values ('C','Nancy','Marcel Pico',10000);
insert into  club values ('D','Strasbourg','Dstade',50000);





insert into saison values (1,to_date('01/08/19'),to_date('31/07/20'));
insert into saison values (2,to_date('01/08/20'),to_date('31/07/21'));
insert into saison values (3,to_date('01/08/21'),to_date('31/07/22'));




insert into  match values (1,'Olympique de Marseille','FC Barcelonne',to_date('1/8/2019'),2,9,690);
insert into  match values (2,'Olympique de Marseille','C',to_date('8/8/2019'),6,7,580);
insert into  match values (3,'Olympique de Marseille','D',to_date('18/8/2019'),3,9,561);
insert into  match values (4,'FC Barcelonne','Olympique de Marseille',to_date('22/8/2019'),2,4,4201);
insert into  match values (5,'FC Barcelonne','C',to_date('29/8/2019'),3,1,3956);
insert into  match values (6,'FC Barcelonne','D',to_date('5/9/2019'),10,0,866);
insert into  match values (7,'C','Olympique de Marseille',to_date('12/9/2019'),0,8,1253);
insert into  match values (8,'C','FC Barcelonne',to_date('19/9/2019'),3,10,9303);
insert into  match values (9,'C','D',to_date('26/9/2019'),8,10,6858);
insert into  match values (10,'D','Olympique de Marseille',to_date('3/10/2019'),5,7,37286);
insert into  match values (11,'D','FC Barcelonne',to_date('10/10/2019'),4,7,48446);
insert into  match values (12,'D','C',to_date('17/10/2019'),8,10,35297);
insert into  match values (13,'Olympique de Marseille','FC Barcelonne',to_date('1/8/2020'),10,0,163);
insert into  match values (14,'Olympique de Marseille','C',to_date('8/8/2020'),7,4,451);
insert into  match values (15,'Olympique de Marseille','D',to_date('16/8/2020'),10,10,549);
insert into  match values (16,'FC Barcelonne','Olympique de Marseille',to_date('22/8/2020'),10,5,3030);
insert into  match values (17,'FC Barcelonne','C',to_date('29/8/2020'),1,7,2426);
insert into  match values (18,'FC Barcelonne','D',to_date('5/9/2020'),1,7,999);
insert into  match values (19,'C','Olympique de Marseille',to_date('12/9/2020'),1,1,9842);
insert into  match values (20,'C','FC Barcelonne',to_date('19/9/2020'),0,6,7618);
insert into  match values (21,'C','D',to_date('26/9/2020'),7,3,138);
insert into  match values (22,'D','Olympique de Marseille',to_date('3/10/2020'),6,7,47950);
insert into  match values (23,'D','FC Barcelonne',to_date('10/10/2020'),7,0,29245);
insert into  match values (24,'D','C',to_date('17/10/2020'),4,4,6900);
insert into  match values (25,'Olympique de Marseille','FC Barcelonne',to_date('1/8/2021'),3,3,33);
insert into  match values (26,'Olympique de Marseille','C',to_date('8/8/2021'),10,10,572);
insert into  match values (27,'Olympique de Marseille','D',to_date('15/8/2021'),0,0,38);
insert into  match values (28,'FC Barcelonne','Olympique de Marseille',to_date('22/8/2021'),2,8,736);
insert into  match values (29,'FC Barcelonne','C',to_date('29/8/2021'),4,6,5081);
insert into  match values (30,'FC Barcelonne','D',to_date('5/9/2021'),9,4,5048);
insert into  match values (31,'C','Olympique de Marseille',to_date('12/9/2021'),2,8,6904);
insert into  match values (32,'C','FC Barcelonne',to_date('19/9/2021'),3,4,5480);
insert into  match values (33,'C','D',to_date('26/9/2021'),4,3,4300);
insert into  match values (34,'D','Olympique de Marseille',to_date('3/10/2021'),1,6,42014);
insert into  match values (35,'D','FC Barcelonne',to_date('10/10/2021'),6,3,31516);
insert into  match values (36,'D','C',to_date('17/10/2021'),0,0,13072);





insert into  contrat values ('Olympique de Marseille',1,to_date('1/7/2015'),8168774,740510,to_date('18/10/2021'));
insert into  contrat values ('Olympique de Marseille',2,to_date('2/7/2019'),7736826,571503,to_date('19/10/2021'));
insert into  contrat values ('Olympique de Marseille',3,to_date('3/7/2019'),7164637,780306,to_date('20/10/2021'));
insert into  contrat values ('Olympique de Marseille',4,to_date('4/7/2019'),8985534,451930,to_date('21/10/2021'));
insert into  contrat values ('Olympique de Marseille',5,to_date('5/7/2019'),236734,659726,to_date('22/10/2021'));
insert into  contrat values ('Olympique de Marseille',6,to_date('6/7/2019'),9500699,374165,to_date('23/10/2021'));
insert into  contrat values ('Olympique de Marseille',7,to_date('7/8/2019'),4474822,161437,to_date('24/10/2021'));
insert into  contrat values ('Olympique de Marseille',8,to_date('8/8/2019'),1514103,308231,to_date('25/10/2021'));
insert into  contrat values ('FC Barcelonne',9,to_date('9/7/2019'),8661218,973660,to_date('26/10/2021'));
insert into  contrat values ('FC Barcelonne',10,to_date('10/7/2019'),6815060,140234,to_date('27/10/2021'));
insert into  contrat values ('FC Barcelonne',11,to_date('11/7/2019'),3798184,953535,to_date('28/10/2021'));
insert into  contrat values ('FC Barcelonne',12,to_date('12/7/2019'),7471271,509906,to_date('29/10/2021'));
insert into  contrat values ('FC Barcelonne',13,to_date('13/7/2019'),4869703,114684,to_date('30/10/2021'));
insert into  contrat values ('FC Barcelonne',14,to_date('14/7/2019'),5066723,597260,to_date('31/10/2021'));
insert into  contrat values ('FC Barcelonne',15,to_date('15/8/2019'),2930065,354057,to_date('1/11/2021'));
insert into  contrat values ('FC Barcelonne',46,to_date('16/7/2019'),6460566,561106,to_date('2/11/2021'));
insert into  contrat values ('FC Barcelonne',17,to_date('17/7/2019'),6292797,226994,to_date('3/11/2021'));
insert into  contrat values ('C',18,to_date('18/7/2019'),5305737,830457,to_date('4/11/2021'));
insert into  contrat values ('C',19,to_date('19/7/2019'),7827741,663758,to_date('5/11/2021'));
insert into  contrat values ('C',20,to_date('20/7/2015'),8911550,452767,to_date('6/11/2021'));
insert into  contrat values ('C',21,to_date('21/8/2019'),4625953,777731,to_date('7/11/2021'));
insert into  contrat values ('C',22,to_date('22/7/2019'),7964508,315120,to_date('8/11/2021'));
insert into  contrat values ('C',23,to_date('23/7/2019'),6972973,962362,to_date('9/11/2021'));
insert into  contrat values ('C',25,to_date('24/7/2019'),2292573,608550,to_date('10/11/2020'));
insert into  contrat values ('C',25,to_date('11/11/2020'),8072215,696066,to_date('11/11/2023'));
insert into  contrat values ('C',26,to_date('26/7/2019'),2972259,580874,to_date('12/11/2021'));
insert into  contrat values ('D',27,to_date('27/8/2019'),9678672,537784,to_date('13/11/2021'));
insert into  contrat values ('D',28,to_date('28/7/2019'),1078412,105100,to_date('14/11/2021'));
insert into  contrat values ('D',29,to_date('29/7/2019'),5394065,550090,to_date('15/11/2021'));
insert into  contrat values ('D',30,to_date('30/7/2015'),148174,661333,to_date('16/11/2021'));




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



insert into Abonnement values (1,'Olympique de Marseille',655,80);
insert into Abonnement values (1,'FC Barcelonne',215,90);
insert into Abonnement values (1,'C',478,100);
insert into Abonnement values (1,'D',167,110);
insert into Abonnement values (2,'Olympique de Marseille',217,90);
insert into Abonnement values (2,'FC Barcelonne',777,100);
insert into Abonnement values (2,'C',480,110);
insert into Abonnement values (2,'D',330,120);
insert into Abonnement values (3,'Olympique de Marseille',536,100);
insert into Abonnement values (3,'FC Barcelonne',475,110);
insert into Abonnement values (3,'C',724,120);
insert into Abonnement values (3,'D',814,130);


-- PARTIE 3 :

--1
select * from joueur order by nom;

--2
select debutContrat, finContrat, nomClub
    from JOUEUR
    inner join CONTRAT C2 on Joueur.idJoueur = C2.IDJOUEUR
    where Joueur.nom = 'Henri Bedimo'
    order by debutContrat;

--3
select *
    from Match
    where nbButsDom = nbButsVis;

--4
select capacite - nbSpectateur as "Nombre de places restantes"
    from Club
    inner join match m on Club.nomClub = m.clubDomicile;

--5
select idMatch, dateMatch
    from Match
    where nbButsVis-nbButsDom >= 2 or nbButsVis-nbButsDom<=-2;

--6
select concat(concat(concat('<< ',clubDomicile),' - '),concat(clubVisiteur, ' >>')) as "Match"
    from Match;

--7
select nom
    from Joueur
    where 2022 - age = 1990;

--8
select nomClub
    from Club
    where nomClub like (concat(concat('%',ville),'%'));

--9
select count(nom), nationalite
    from Joueur
    group by nationalite;

--10
select dateMatch, clubDomicile, clubVisiteur
    from Match
    where to_char(dateMatch, 'DAY')='DIMANCHE';

--11
select nom
    from joueur
    inner join JOUE J on Joueur.idJoueur = J.IDJOUEUR
    where poste = 'attaquant'
intersect 
select nom from joueur
    inner join JOUE J on Joueur.idJoueur = J.IDJOUEUR
    where poste = 'defenseur';

--12
select count(idMatch)  as "Nombre de match"
    from Match
    where nbButsDom < nbButsVis and clubDomicile = 'FC Barcelonne';

--13
select j.nom, count(joue.idJoueur)
    from joue
    inner join Joueur j on Joue.idJoueur = j.idJoueur
    group by joue.idJoueur, j.nom;

--14
select nom, nationalite
    from Joueur jou
    inner join joue j on jou.idJoueur = j.idJoueur
    where carton not like 'rouge' group by nom, nationalite;

--15
select dateMatch, concat(concat(nbButsDom,'-'),nbButsVis) as "score"
    from Match
    where nbButsDom > nbButsVis and clubDomicile = 'FC Barcelonne';

--16
select contrat.nomClub, idJoueur, debutContrat
    from contrat
    inner join ABONNEMENT A2 on contrat.nomClub = A2.NOMCLUB
    inner join SAISON S on A2.idSaison = S.IDSAISON
    where to_char(debutContrat, 'MM') = to_char(debutSaison, 'MM');

--17
select clubDomicile from Match
minus
select clubDomicile from Match
    where nbButsDom = 0;

--18
select nom, count(j.idJoueur) as "Nombre de fois titulaire"
    from Joueur
    inner join Joue j on Joueur.idJoueur = j.idJoueur
    where nbMinJeu = 90
    group by nom;

--19
select nomClub, montant*nbAbonnement
    from Abonnement
    order by idSaison;

--20
select idMatch, dateMatch,case
        when nbButsDom > nbButsVis then 'victoire � domicile'
        when nbButsDom < nbButsVis then 'victoire � l exterieur'
        else 'match nul'
        end as "R�sutat"
    from Match;

--21
select clubDomicile, clubVisiteur, dateMatch
    from match m
    inner join Saison s on dateMatch between debutSaison and finSaison
    where idsaison = 1;

--22
select S.idSaison,C2.nomClub, sum(transfert) as "total transfert"
    from contrat
    inner join CLUB C2 on contrat.nomClub = C2.NOMCLUB
    inner join Saison s on debutContrat between debutSaison and finSaison
    group by C2.nomClub,S.idSaison
    order by S.IDSAISON;

--23
select clubDomicile,sum(nbButsDom) as "Le nombre de buts à domicile"
    from Match
    inner join Saison s on dateMatch between debutSaison and finSaison
    where clubDomicile like 'Olympique de Marseille' and idSaison = 1
    group by clubDomicile;

--24
select clubDomicile, sum(nbButsVis) as "Nombre But Encaissés"
    from Match
    inner join Saison s on dateMatch between debutSaison and finSaison
    where s.idSaison = 1
    group by clubDomicile;

--25
select nom, nomClub
    from contrat c
    inner join Joueur j on c.idjoueur = j.idJoueur
    inner join Match m on m.dateMatch between c.debutContrat and c.finContrat
    inner join joue j2 on j2.idMatch = m.idMatch and j2.idJoueur = c.idJoueur
    where m.idMatch = 1
    group by nom, nomClub;

--26
select Club.nomClub, avg(salaire) as "Salaire moyen"
    from Club
    inner join CONTRAT C2 on Club.nomClub = C2.NOMCLUB
    where to_char(debutContrat, 'YYYY')='2015'
    group by Club.nomClub;

--27
select idMatch, nbSpectateur
    from Match
    inner join Saison on dateMatch between debutSaison and finSaison
    inner join ABONNEMENT A2 on Saison.idSaison = A2.IDSAISON
    where nbSpectateur*2 >= A2.nbAbonnement;

--28
select C2.nomClub, avg(age) as "Âge moyen"
    from Joueur
    inner join CONTRAT C2 on Joueur.idJoueur = C2.IDJOUEUR
    inner join Saison on debutContrat between  debutSaison and finSaison
    inner join CLUB C3 on C2.nomClub = C3.NOMCLUB
    where idSaison = 1
    group by C2.nomClub;

--29
select nomclub,sum(nbButsDom) as "Nombre de buts"
    from Match m
    inner join club c on c.nomClub = m.clubDomicile
    group by nomclub
intersect
select nomClub, sum(nbButsVis) as "Nombre de buts"
    from Match m
    inner join club c on c.nomClub = m.clubVisiteur
    group by nomClub;

--30
select c2.nomClub, count(carton)  as "Nombre de carton"
    from Joue
    inner join MATCH M on Joue.idMatch = M.IDMATCH
    inner join club c2 on nomClub = clubDomicile
    where carton = 'jaune' or carton = 'rouge'
    group by c2.nomClub;

--31
select C2.nomClub, sum(transfert) as "Transfert", sum(salaire*trunc(MONTHS_BETWEEN(finContrat, debutContrat),0)+1) as "Total Salaire" from contrat
    inner join CLUB C2 on contrat.nomClub = C2.NOMCLUB
    group by C2.nomClub;

--32
select j2.nom,  sum(nbButsDom) "Nombre de buts à domicile"
    from Match m
    inner join joue j on m.idMatch = j.idMatch
    inner join joueur j2 on j2.idJoueur = j.idJoueur
    where j.poste like 'goal'
    group by j2.nom;

--33
select nom from Joueur where substr(nom,1,1) = substr(nom,instr(nom,' ')+1,1)
minus
select nom from Joueur where instr(nom,' ') = 0;

--34
select j.idJoueur
    from joue j
    inner join joue j2 on j.idJoueur = j2.idJoueur
    inner join match m on m.idMatch = j.idMatch or m.idmatch = j2.idMatch
    inner join Saison on dateMatch between  debutSaison and finSaison
    where idsaison = 1 and j.poste like 'attaquant' and j2.poste like 'defenseur'
    group by j.idJoueur;

--35
update contrat
    set salaire = salaire*0.90
    where to_char(finContrat, 'YYYY') > (select to_char(sysdate, 'YYYY') from dual);

--36
update Joueur
    set nbSuspensions = (nbSuspensions + (select 3*count(carton) from JOUE J
    where carton = 'rouge' and Joueur.idJoueur = J.idJoueur group by idJoueur))
    where idJoueur != (select 3*count(carton) from JOUE J
    where carton = 'rouge' and Joueur.idJoueur = J.idJoueur group by idJoueur);

--37
ALTER TABLE Joue DROP CONSTRAINT idjo;
ALTER TABLE Contrat DROP CONSTRAINT idj;
ALTER TABLE Joueur DROP PRIMARY KEY;

alter table Joueur ADD idJoueur2 CHAR(7);
alter table Contrat ADD idJoueur2 CHAR(7);
alter table Joue ADD idJoueur2 CHAR(7);

UPDATE Joueur SET idJoueur2 = concat('J',LPAD(idJoueur, 4, '0'));
UPDATE Contrat SET idJoueur2 = concat('J',LPAD(idJoueur, 4, '0'));
UPDATE Joue SET idJoueur2 = concat('J',LPAD(idJoueur, 4, '0'));

ALTER TABLE Joueur DROP COLUMN idJoueur;
ALTER TABLE Contrat DROP COLUMN idJoueur;
ALTER TABLE Joue DROP COLUMN idJoueur;

alter table Joueur rename column idJoueur2 to idJoueur;
alter table Contrat rename column idJoueur2 to idJoueur;
alter table Joue rename column idJoueur2 to idJoueur;

ALTER TABLE Joueur add PRIMARY KEY (idJoueur);
ALTER TABLE Contrat add constraint idj foreign key (idJoueur) references JOUEUR (idJoueur);
ALTER TABLE Joue add constraint idjo foreign key (idJoueur) references JOUEUR (idJoueur);

--38
delete from contrat
    where idJoueur not in (select distinct idJoueur from Joue);
delete from joueur
    where idJoueur not in (select distinct idJoueur from Joue);

--39
drop table RESULTAT;
create table RESULTAT (
    idsaison number(2),
    nomClub varchar2(30),
    nbGagnes number(2),
    nbNuls number(2),
    constraint fokey1 foreign key (idsaison) references Saison (idSaison),
    constraint fokey2 foreign key (nomClub) references CLUB (nomClub));

--40
INSERT into RESULTAT (idsaison, nomClub, nbGagnes, nbNuls)
    select idSaison, clubDomicile, 0, 0
        from Match
        inner join Saison on dateMatch between debutSaison and finSaison
                group by idSaison, clubDomicile
                order by idSaison;
update RESULTAT
    set nbGagnes = nbGagnes + (select count(clubDomicile) from Match
                    inner join Saison on dateMatch between debutSaison and finSaison
                    where nbButsDom > nbButsVis and RESULTAT.nomClub = clubDomicile
                    and Resultat.idsaison = saison.idSaison
                    group by idSaison, clubDomicile);
update RESULTAT set nbGagnes = 0 where nbGagnes is null;

--41
update RESULTAT
    set nbGagnes = nbGagnes + (select count(clubDomicile) from Match
                    inner join Saison on dateMatch between debutSaison and finSaison
                    where nbButsDom < nbButsVis and RESULTAT.nomClub = clubVisiteur
                    and Resultat.idsaison = saison.idSaison
                    group by idSaison, clubVisiteur);
update RESULTAT set nbGagnes = 0 where nbGagnes is null;

--42
update RESULTAT
    set nbNuls = (select count(clubDomicile) from Match
                    inner join Saison on dateMatch between debutSaison and finSaison
                    where nbButsDom = nbButsVis and RESULTAT.nomClub = Match.clubDomicile
                    and Resultat.idsaison = saison.idSaison
                    group by idSaison, clubDomicile);
update RESULTAT set NBNULS = 0 where NBNULS is null;

--43
INSERT into Championnat (idSaison, nomClub, points)
    select idSaison, nomClub, 0 from RESULTAT;

update Championnat set points
    = (select 3*count(nbGagnes) from RESULTAT group by idsaison, nomClub);

update Championnat set points
    = points + (select count(nbNuls) from RESULTAT group by idsaison, nomClub);