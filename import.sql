DROP DATABASE IF EXISTS `netland`;

CREATE DATABASE `netland`;

USE `netland`;

CREATE TABLE `series` (
	id MEDIUMINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(100) NOT NULL,
    rating DECIMAL(2,1) NULL,
    summary TEXT NOT NULL,
    has_won_awards INT NOT NULL,
    seasons INT NOT NULL,
    country VARCHAR(5) NOT NULL,
    spoken_in_language ENUM('NL', 'EN') NOT NULL
);

INSERT INTO `series` (`title`, `rating`, `summary`, `has_won_awards`, `seasons`, `country`, `spoken_in_language`) VALUES
	('The good place', 4.5, 'De serie gaat over een vrouw, Eleanor Shellstrop, die zich in het hiernamaals bevindt. Ze wordt verwelkomd door Michael, de \'architect\' van het utopische dorpje waar ze voor eeuwig gaat wonen. Er zijn twee delen in het hiernamaals, The Good Place (\'goede plek\') en The Bad Place (\'slechte plek\'); welke wordt bepaald door ethische punten voor elke handeling op aarde.', 0, 4, 'UK', 'EN'),
    ('Game of Thrones', 5.0, 'Op het continent Westeros regeert koning Robert Baratheon al meer dan zeventien jaar lang over de Zeven Koninkrijken, na zijn opstand tegen koning Aerys II Targaryen "De Krankzinnige". Als zijn adviseur Jon Arryn wordt vermoord, vraagt hij zijn oude vriend Eddard Stark, de Heer van Winterfell en Landvoogd van het Noorden, om zijn plaats in te nemen. Eddard gaat met tegenzin akkoord, en trekt met zijn twee dochters, Sansa en Arya (Maisie Williams), naar de hoofdstad in het zuiden. Vlak voor hun vertrek wordt een van zijn jongste zonen, Bran Stark, uit een van de torens van Winterfell geduwd, na getuige te zijn geweest van de incestueuze affaire tussen koningin Cersei en haar tweelingbroer, Jaime Lannister.', 1, 7, 'UK', 'EN'),
    ('Breaking Bad', 2.0, 'Walter White is in 2008 een overgekwalificeerde scheikundeleraar op een middelbare school in Albuquerque. Op het moment dat zijn vrouw onverwacht zwanger is van hun tweede kind, stort Walters wereld in. De dokter heeft vastgesteld dat hij terminaal ziek is. Walter heeft longkanker en lijkt niet lang meer te zullen leven. Om ervoor te zorgen dat zijn gezin na zijn dood niet in een financiële crisis belandt en tevens om zijn eigen behandelingen te betalen, besluit Walter over te schakelen op een leven als misdadiger. Met de hulp van Jesse Pinkman, een uitgevallen leerling die hij nog scheikunde gegeven heeft, maakt en verkoopt hij de drug crystal meth. Terwijl hij doorgaat met lesgeven, komt het belang van scheikunde in de moderne maatschappij prangend in zijn lessen naar voren. Zijn product is meer dan 99% zuiver en dit feit loopt als een rode draad door de hele serie heen.', 1, 3, 'UK', 'EN'),
    ('Penoza', 3.2, 'Hoofdrolspeelster Carmen van Walraven (Monic Hendrickx) ontdekt dat haar man Frans (Thomas Acda) een veel belangrijker rol in de onderwereld speelt dan ze dacht. Ze dwingt hem dan ook ermee te stoppen. Net wanneer alles weer goed lijkt te gaan, wordt haar man voor de ogen van hun jongste zoon Boris (Stijn Taverne) geliquideerd. Carmen krijgt last van schuldeisers en bedreigingen. Ook justitie zit achter haar aan omdat die wil dat zij gaat getuigen tegen de compagnons van haar man.Carmen wil niet als beschermd getuige door het leven gaan en kiest voor een moeilijk alternatief: ze werkt zich naar de top van de georganiseerde misdaad, waar niemand nog aan haar of haar gezin durft te komen. In het vervolg daarop weet ze al snel niet meer wie ze moet vertrouwen, en worden de grenzen tussen goed en kwaad steeds onduidelijker.', 0, 3, 'NL', 'NL'),
    ('De luizenmoeder', 4.8, 'Het verhaal speelt zich af op de fictieve basisschool De Klimop in Dokkum. De school heeft een zwaar jaar achter de rug, waarin enkele leraren en de conciërge ontslagen zijn. Het is nu aan de schoolleiding om in het nieuwe schooljaar een frisse start te maken. Centraal staan Hannah (Jennifer Hoffman), de moeder van Floor, de \'luizenmoeder\', en juf Ank (Ilse Warringa), de kordate onderwijzeres. Als moeder van een nieuwe leerling moet Hannah zich staande houden in een absurdistische wereld van hangouders, moedermaffia, schoolpleinregels, rigide verjaardagsprotocollen, verantwoorde traktaties, parkeerbeleid, appgroepjes, ouderparticipatie en ander leed. Ook worden de belevenissen van de andere ouders en de schoolleiding gevolgd. De ouders (moeders) worden geacht het onderwijs te ondersteunen als vrijwilligers en de onderste tree in de bijbehorende hiërarchie die tot de ouderraad loopt is die van luizenmoeder, de moeder die schoolkinderen met een luizenkam controleert op luizen in het haar en deze verwijdert.', 1, 2, 'NL', 'NL'),
    ('My little pony', 1, 'De serie begint met een eenhoorn genaamd Twilight Sparkle, een student van Equestria\'s heerser, prinses Celestia. Nadat ze ziet hoe haar student zich alleen maar bezighoudt met boeken, stuurt prinses Celestia haar naar Ponyville met de opdracht een paar vrienden te maken. Twilight Sparkle, samen met haar assistent, een babydraak genaamd Spike, raakt bevriend met de pony\'s Pinkie Pie, Applejack, Rainbow Dash, Rarity en Fluttershy. Samen beleven ze avonturen binnen en buiten de stad en lossen ze diverse problemen op. De meeste afleveringen eindigen met Twilight Sparkle of iemand anders die een brief schrijft aan de prinses over wat ze die aflevering geleerd heeft over de magie van de vriendschap. Ook zit er in iedere aflevering een belangrijke les over vriendschap.', 0, 25, 'UK', 'NL');

CREATE TABLE `movies` (
	id MEDIUMINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(100) NOT NULL,
    length_in_minutes INTEGER NOT NULL,
    released_at DATE NULL,
    country_of_origin VARCHAR(2) NULL,
    summary TEXT NOT NULL,
    youtube_trailer_id VARCHAR(20) NULL
);

INSERT INTO `movies` (`title`, `length_in_minutes`, `released_at`, `country_of_origin`, `youtube_trailer_id`, `summary`) VALUES
('Black Panther', 134, '2018-02-14', 'VS', 'xjDjIWPwcPU', 'Duizenden jaren geleden stortte er in Afrika een meteoriet neer op aarde, vol met het metaal vibranium. Vijf stammen trokken ten strijde om dit als hun bezit te claimen. Tijdens de oorlog nam één krijger een paars, hartvormig kruid in dat was aangetast door het vibranium. Dit maakte hem de eerste Black Panther. Hij verenigde vier van vijf stammen en vormde het land Wakanda. Alleen de Jabari-stam bleef autonoom. In de eeuwen die volgden, gebruikten de Wakandanen het vibranium om een technologisch extreem gevorderde beschaving op te bouwen, zich intussen voordoend als een derdewereldland om hun geïsoleerde positie in de wereld te behouden.'),
('John Wick', 110, '2014-11-20', 'VS', '2AUmvWm5ZDQ', 'John Wick is een legende in het misdaadcircuit als voormalige huurmoordenaar voor de Russische maffia. Hij trok zich terug uit deze wereld om te trouwen met zijn geliefde Helen. Wanneer zij vijf jaar later overlijdt aan kanker, krijgt hij in haar opdracht een puppy met de naam Daisy thuisbezorgd. Bij het cadeau zit een brief van Helen waarin ze hem vertelt dat ze hem het hondje geeft omdat ze wil dat hij iets heeft om van te houden. Wick weet niet meteen wat hij met Daisy aan moet, maar het beestje is zo speels, af- en aanhankelijk dat hij van haar gaat houden.'),
('Frozen', 102, '2013-12-11', 'VS', '5ddmISZWTAA', 'Er zijn twee prinsessen in het koninkrijk Arendelle: Elsa (Idina Menzel), de troonopvolgster, en haar jongere zus Anna (Kristen Bell). Elsa heeft magische krachten, waarmee ze sneeuw en ijs kan creëren. Als kleine meisjes spelen ze samen met Elsa\'s krachten. Het spel loopt uit de hand, wanneer Elsa per ongeluk Anna\'s hoofd raakt. Anna raakt hierdoor bewusteloos. Elsa roept haar ouders en die weten hoe ze het leven van Anna kunnen redden. Ze brengen een bezoek aan de trollen die Anna kunnen helpen. Ze wissen haar geheugen gedeeltelijk waardoor ze niet meer weet dat Elsa magische krachten heeft. De trol vraagt de koning en koningin om de krachten van Elsa te verbergen voor de buitenwereld en ook voor haar zusje. Hierdoor leven ze voortaan allebei een apart bestaan in hetzelfde gesloten kasteel.'),
('Moana', 103, '2016-11-30', 'VS', 'FpNcGOB_qVQ', 'De tiener Vaiana, dochter van een opperhoofd gaat op zoek naar de halfgod Maui. Samen met Maui vertrekt ze op een avontuurlijke reis over de oceaan op zoek naar het legendarisch eiland Te Fiti om haar volk van de ondergang te redden.'),
('Sint', 85, '2010-11-11', 'NL', 'Xv3G70mm18k', 'In de 15e eeuw leefde St. Niklas, een in ongenade gevallen bisschop die met een bende rovers plunderend en moordend door de straten trok. Wanneer hij eraan kwam, riepen de dorpsmensen hun families naar binnen en barricadeerden ze hun huizen. De knechten van Niklas trapten de gesloten deuren niettemin in en klommen ook via de schoorstenen naar binnen. Nadat Niklas op 5 december 1492 weer nietsontziend had toegeslagen, sloegen de dorpelingen terug. Zodra Niklas en zijn trawanten zich in hun boot bevonden, stak de woedende menigte die in brand. De bisschop en zijn handlangers kwamen om in de vlammen.');






CREATE TABLE `media` (
    id MEDIUMINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    type ENUM('movie', 'series') NOT NULL,
    title VARCHAR(100) NOT NULL,
    rating DECIMAL(2,1) NULL,
    summary TEXT NOT NULL,
    has_won_awards INT NOT NULL,
    seasons INT NOT NULL,
    country VARCHAR(5) NOT NULL,
    length_in_minutes INTEGER NOT NULL,
    released_at DATE NULL,
    youtube_trailer_id VARCHAR(20) NULL
);

INSERT INTO `media` (`title`, `type`, `rating`, `length_in_minutes`, `released_at`, `has_won_awards`, `seasons`, `country`, `spoken_in_language`, `summary`, `youtube_trailer_id`)
SELECT `title`, 'serie', `rating`, NULL, NULL, `has_won_awards`, `seasons`, `country`, `spoken_in_language`, `summary`, NULL
FROM `series`;

INSERT INTO `media` (`title`, `type`, `rating`, `length_in_minutes`, `released_at`, `country`, `summary`, `youtube_trailer_id`)
SELECT `title`, 'film', NULL, `length_in_minutes`, `released_at`, `country_of_origin`, `summary`, `youtube_trailer_id`
FROM `movies`;

DROP TABLE `series`;
DROP TABLE `movies`;



