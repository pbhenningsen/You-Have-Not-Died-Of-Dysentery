//Initialzed Variables
global.career_ = "";

create_player(0,"player1",450,100);
create_player(1,"player2",400,75);
create_player(2,"player3",350,50);
create_player(3,"player4",300,25);
create_player(4,"player5",250,10);

global.Text_="";
global.textindex_  = 0;
global.stringComp  = "12345";
global.Money_      = 1600;
global.oxen        = 0;
global.food   	   = 0;
global.clothing    = 0;
global.ammunition  = 0;
global.wagonwheels = 0;
global.wagonaxles  = 0;
global.wagontang   = 0;
global.parchment   = 0;

// river crossing
global.wagon_index = 1;
global.riveracross = 648;
global.riverdeep   = 6.2;


randomize();
global.year_ = irandom_range(122,127);
global.DateTime_  = date_create_datetime( 1970, 3, 1,  0,0,0);


global.health_ = "good";
global.weather_= "cold";
global.pace_   = "steady";
global.ration_ = "filling"; 

global.brokendays = 0;

global.targetRoom = noone;

global.hasSounds = true;

global.huntnum=0;

enum locationkind {
	fort,
	river,
	river2,
	river3,
	rock,
	valley,
	pass,
	spring,
	ending,
}
global.distance_ = 0;
global.locationIndex_ = 0;
create_location(0,"Independence"			,0  ,sIndependence		, 1, locationkind.fort	,sndIndependence );
create_location(1,"Kansas River"		    ,32 ,sKansasRiver		, 1, locationkind.river	,sndKansasRiver );
create_location(2,"Big Blue River"			,68 ,sCross				, 1, locationkind.river2,sndBigBlueRiver );
create_location(3,"Fort Kearne"				,120,sFortKerney		, 2, locationkind.fort	,sndFort_Kearne);
create_location(4,"Chimney Rock"			,198,sIndependenceRock  , 3, locationkind.rock	,sndChimneyRock);
create_location(5,"Fort Laramie"			,253,sFortLaramie		, 2, locationkind.fort	,sndFortLaramie);
create_location(6,"Independence Rock"		,304,sIndependenceRock	, 3, locationkind.rock	,sndIndenpendenceRock);
create_location(7,"South Pass"				,410,sSouthPass			, 1, locationkind.river2,sndSouthPass);
create_location(8,"Fort Bridger"			,520,sFortBridger		, 4, locationkind.fort	,sndFortBridger);
create_location(9,"Soda Springs"			,597,sSodaSpring		, 1, locationkind.river2,sndSodaSpring);
create_location(10,"Fort Hall"				,720,sFortHall			, 5, locationkind.fort	,sndFortHall);
create_location(11,"Fort Boise"				,769,sFortBoise			, 6, locationkind.fort	,sndFortBoise);
create_location(12,"Blue Mountain"			,856,sBlueMountains		, 9, locationkind.rock	,sndBlueMountain);
create_location(13,"Fort Walla Walla"		,990,sFortWallaWalla	, 7, locationkind.fort	,sndFortWallaWalla);
create_location(14,"The Dalles"				,1115,sDalles			, 12, locationkind.fort	,sndTheDalles);
create_location(15,"The Columbia River"		,1210,sSnakeRiver		, 1, locationkind.river3,sndWhatRiver);
create_location(16,"Wilmante Valley"		,1278,sWilmanteValley	, 14, locationkind.ending,sndWillametteValley);
create_location(17,"Oregon City"			,1378,sWilmanteValley	, 14, locationkind.ending,sndWillametteValley);

// toilet stops
global.toilettime = 2;
global.stopsctr   = -1;
create_sstops(
0,
sStop1,
"As you do your business, you pull out the latest issue of KNICKERBOCKER MONTHLY.",
"\"The Life of a Midshipman\"\n\nby Claude Fremont",
"My father was a Philadelphian by birth, and by profession a merchant in the double business that is, a retailer of beef and mutton. Although no politician, he prided himself greatly on his patriotism, and used often to boast of his prowess in the late war with Great Britain.",
"Dear old gentleman! I can see him now, as he was wont to appear of summer evenings, seated on a chopping-block in front of his stall, with his glazed military cap cocked jauntily over his left eye-brow, his pipe in his mouth, and a glass of ale in his hand, surrounded by a half-dozen of his cronies...",
sndFortBridger);

create_sstops(
1,
sStop2,
"As you do your business, you pull out the latest issue of HARPER'S WEEKLY.",
"\"The Government of Napoleon\"\n\nby Henry Harding",
"We have an adage that says,'Let him laugh who wins.' The maxim is to be found in the tongues of other nations, for the language of proverbs is universal, and only expresses in sententious phrase that shrewd sagacity, tinged often with sadness, which is the usual result of long contemplation of human conduct and affairs.",
"It is now five years since Louis Napoleon ascended the steps of the Imperial throne of France, and took into his absolute keeping the destinies of upward of thirty millions of human beings. For five years-no small portion of the average duration of sovereign power-he has held in his single hand the reins of empire...",
sndFortLaramie);

create_sstops(
2,
sStop3,
"As you do your business, you pull out the latest issue of THE NATIONAL POLICE GAZETTE.", 
"\"Eyes of the Felons\"\n\nby Robert Sutton",
"The clouds kept lowering over Redmond. A few days after his cruel and gloomy incarceration, a hack driver, living; in Brooklyn, named Robert Howard, big with a circumstance which seemed to weigh momentously in the balance",
"of the prisoner's guilt, called upon John Low, the President of the Union Bank, and communicated a fact which appeared to set doubt completely at defiance. He informed that gentleman that on the day after the presentation of the forged checks by Redmond....",
sndFortBoise);

create_sstops(
3,
sStop4,
"As you do your business, you pull out the latest issue of FRANK LESLIE'S ILLUSTRATED NEWSPAPER.",
"\"On International Affairs\"\n\nby Hank Wilmont",
"The alliance of England and France, and their armed intervention against the aggressive policy of Russia in the East, is the memorable event of an eventful age; it is the commencement of a new European policy, in which the intelligence and power of the West",
"fairly enter the lists as a counterpoise to the darkness and tyranny of the East and the consequences which may result from it in the interests of civilization are not easily to be overestimated. One branch of operations undertaken by the Allied Powers was the defense of the Ottoman territory...",
sndBlueMountain);

create_sstops(
4,
sStop5,
"As you do your business, you pull out the latest issue of NEW YORK MONTHLY MAGAZINE.", 
"\"A Sister's Love\"\n\nby Emily Berg",
"Constance, my sweet gentle Constance, you don't half admire this delightful place; here have been wandering about for a whole hour. How can you sit reading here, while the sun is shining? The bright morning sun. I've been walking by the river side, and my eyes were half blinded by the sun-beams.", 
"I've been standing with my mouth open on the hilltop, drawing in as much of the fresh air as I could. I've been listening to the grasshoppers chirping all around me, and the ringing notes of the larks over my head, till I really danced with joy, and laughed, till I was tired of laughing alone...",
sndTheDalles);

create_sstops(
5,
sStop6,
"As you do your business, you pull out the latest issue of THE LONDON ILLUSTRATED NEWS.", 
"\"A Retrospect and Farewell\"\n\nby Colson Grieves",
"We take leave today of 1862. A few days of its appointed course still remain to it, but it will have gone the way of all its predecessors before our next appearance. We must bid it adieu now or not at all. We quit its presence as a man going forth from the chamber of sickness which he knows will be converted before his return into the chamber of death.",
"The last look having been taken, the last greeting exchanged, there naturally follows an interval of retrospection, and memory recalls with softened feeling the general features of character which distinguished the expectant of the tomb. The birth of 1862 found us mourning over a loss...",
sndWhatRiver);

create_sstops(
6,
sStop7,
"As you do your business, you continue reading the latest issue of THE LONDON ILLUSTRATED NEWS.",
"A Retrospect and Farwell\"\n\nby Colson Grieves",
"The politics of the year, so far at least as this country is concerned, have been unusually quiet. A happy issue from rent from embarrassment and a considerate regard to the absorbing grief of our widowed Queen put a strong check upon party spirit",
"and, although on one or two occasions there seemed a likelihood that the restraint would yield to the pressure of temptation the political tranquility of the year may be said to have been unbroken. The country, it is true, has made no actual acquisition which it may point to with exultant feelings, but it has received a...",
sndWhatRiver);

create_sstops(
7,
sStop8,
"As you do your business, you pull out the latest issue of THE SATURDAY EVENING POST.", 
"\"A Story of the Tropics\"\n\nby Harry Crench",
"That night there was a great feast given in honor of Della's return. The beautiful girl attired in robes of the costliest embroidery, her gleaming looks bound by a filet of gold, seeming more like a young and triumphant queen, receiving the homage of her subjects",
"than the daughter of an English planter. The rooms were thronged with the beauty and chivalry of Georgetown; the conservatory hung with lamps set in vases of alabaster, afforded a promenade wherein the senses were regaled with the richest tropical fragrance, while clusters of the most tempting...",
sndSouthPass);

create_sstops(
8,
sStop1,
"As you do your business, you continue reading the latest issue of THE SATURDAY EVENING POST.", 
"\"Valley of the Corncobs\"\n\nby Daniel Joseph",
"We shall take great credit to ourself if we can help stock-growers, agriculturists, and farmers generally, to give more attention to the corn and cobs ground together for feeding farm-stock. There is scarcely an agricultural journal of prominence in the country which fails to concur",
"in the general belief of the economy and excellence of this kind of food when properly prepared is there an extensive stock raiser or Cattener in the West who has tried corn and cobs ground together and corn alone, that does not declare most emphatically in favor of the former. The faet is Maize or Flint corn...",
sndWillametteValley);

create_sstops(
9,
sStop2,
"As you do your business, you pull out the novel THE CRATER.", 
"\"Chapter 1\"\n\nby James Fenimore Cooper",
"There is nothing in which American Liberty, not always as much restrained as it might be, has manifested a more decided tendency to run riot, than in the use of names. As for Christian names, the Heathen Mythology, the Bible, Ancient History, and all the classics, have long since been",
"exhausted, and the organ of invention has been at work with an exuberance of imagination that is really wonderful for such a matter-of-fact people. Whence all the strange sounds have been derived which have thus been pressed into the service of this human nomenclature, it would puzzle the most ingenious philologist to say. The days of the...",
sndFortLaramie);

create_sstops(
10,
sStop3,
"As you do your business, you pull out the novel THE CRATER.", 
"\"Chapter 1\" (cont.)\n\nby James Fenimore Cooper",
"...Kates, and Dollys, and Pattys, and Bettys, have passed away, and in their stead we hear of Lowinys, and Orchistrys, Philenys, Alminys, Cytherys, Sarahlettys, Amindys, Marindys, All these last appellations terminate properly with an a, but this unfortunate vowel, when a final letter, being popularly pronounced like y, we have ",
"adapted our spelling to the sound, which produces a complete bathos to all these flights in taste.The hero of this narrative was born fully sixty years since, and happily before the rage for modern appellations, though he just escaped being named after another system which we cannot say we altogether admire; that of using a...",
sndFortBoise);

create_sstops(
11,
sStop4,
"As you do your business, you pull out the novel THE CRATER.", 
"\"Chapter 1\" (cont.)\n\nby James Fenimore Cooper",
"...family, for a christian name. This business of names is a sort of science in itself and we do believe that it is less understood and less attended to in this country than in almost all others. When a Spaniard writes his name as Juan de Castro y Munos",
"we know that his father belonged to the family of Castro and his mother to that of Munos. The French, and Italian, and Russian woman, writes on her card Madame this or that, born so and so; all which tells the whole history of her individuality Many French women, in signing their names, prefix those of their...",
sndBlueMountain);

create_sstops(
12,
sStop5,
"As you do your business, you pull out the novel THE CRATER.", 
"\"Chapter 1\" (cont.)\n\nby James Fenimore Cooper",
"...own family to those of their husbands, a sensible and simple usage that we are glad to see is beginning to obtain among ourselves. The records on tomb-stones, too, might be made much more clear and useful than they now are, by stating distinctly who the party was, on",
"both sides of the house, or by father and mother; and each married woman ought to be commemorated in some such fashion as this: \"Here lies Jane Smith, wife of John Jones,\" or, \"Jane, daughter of Thomas Smith and wife of John Jones.\" We believe that, in some countries, a woman's name is not properly considered...",
sndTheDalles);

create_sstops(
13,
sStop6,
"As you do your business, you pull out the novel THE CRATER.", 
"\"Chapter 1\" (cont.)\n\nby James Fenimore Cooper",
"...to be changed by marriage, but she becomes a Mrs. only in connection with the name of her husband. Thus Jane Smith becomes Mrs.John Jones, but not Mrs. Jane Jones. It is on this idea we suppose that our ancestors the English--every Englishman, as a matter of course,",
"being every American's ancestor--thus it is, we suppose, therefore, that our ancestors, who pay so much more attention to such matters than we do ourselves, in their table of courtesy, call the wife of Lord John Russell, Lady John, and not Lady--whatever her Christian name may happen to be. We suppose, moreover, it is on this principle...",
sndWhatRiver);

create_sstops(
14,
sStop7,
"As you do your business, you pull out the novel THE CRATER.", 
"\"Chapter 1\" (cont.)\n\nby James Fenimore Cooper",
"...that Mrs. General This, Mrs. Dr. That, and Mrs. Senator T'other, are as inaccurate as they are notoriously vulgar Mark Woolston came from a part of this great republic where the names are still as simple, unpretending, and as good Saxon English, as in the county of Kent itself. ",
"He was born in the little town of Bristol, Bucks county, Pennsylvania. This is a portion of the country that, Heaven be praised! still retains some of the good old-fashioned directness and simplicity. Bucks is full of Jacks, and Bens, and Dicks, and we question if there is such a creature, of native growth, in all that...",
sndSouthPass);

create_sstops(
15,
sStop8,
"As you do your business, you pull out the novel THE CRATER.", 
"\"Chapter 1\" (cont.)\n\nby James Fenimore Cooper",
"...region, as an Ithusy, or a Seneky, or a Dianthy, or an Antonizetty, or a Deidamy. The Woolstons, in particular, were a plain family, and very unpretending in their external appearance, but of solid and highly respectable habits around the domestic hearth. Knowing perfectly how to spell, they never dreamed",
"anyone would suspect them of ignorance. They called themselves as their forefathers were called, that is to say, Wooster, or just as Worcester is pronounced; though a Yankee schoolmaster tried for a whole summer to persuade our hero, when a child, that he ought to be styled Woolston. This had no effect on Mark, who went on...",
sndWillametteValley);

create_sstops(
16,
sStop9,
"As you do your business, you pull out the novel THE CRATER.", 
"\"Chapter 1\" (cont.)\n\nby James Fenimore Cooper",
"...talking of his uncles and aunts, \"Josy Wooster,\" and \"Tommy Wooster,\" and \"Peggy Wooster,\" precisely as if a New England academy did not exist on earth; or as if Webster had not actually put Johnson under his feet! The father of Mark Woolston (or Wooster) was a physician, and,",
"for the country and age, was a well-educated and skilful man. Mark was born in 1777, just seventy years since, and only ten days before the surrender of Burgoyne. A good deal of attention was paid to his instruction, and fortunately for himself, his servitude under the eastern pedagogue was of very short duration, and Mark continued...",
sndFortLaramie);

create_sstops(
17,
sStop1,
"As you do your business, you pull out the novel THE CRATER.", 
"\"Chapter 1\" (cont.)\n\nby James Fenimore Cooper",
"...to speak the English language as his fathers had spoken it before him. The difference on the score of language, between Pennsylvania and New Jersey and Maryland, always keeping in the counties that were not settled by Germans or Irish, and the New England states, and through them, New York,",
"is really so obvious as to deserve a passing word. In the states first named, taverns, for instance, are still called the Dun Cow, the Indian Queen, or the Anchor: whereas such a thing would be hard to find, at this day, among the six millions of people who dwell in the latter. We question if there...",
sndFortBoise);

create_sstops(
18,
sStop2,
"As you do your business, you pull out the novel THE CRATER.", 
"\"Chapter 1\" (cont.)\n\nby James Fenimore Cooper",
"be such a thing as a coffee-house in all Philadelphia, though we admit it with grief, the respectable town of Brotherly Love has, in some respects, become infected with the spirit of innovation. Thus it is that good old 'State House Yard' has been changed into 'Independence Square.' This",
"certainly is not as bad as the tour de force of the aldermen of Manhattan when they altered 'Bear Market' into 'Washington Market!' for it is not a prostitution of the name of a great man, in the first place, and there is a direct historical allusion in the new name that everybody can understand. Still, it...",
sndBlueMountain);

create_sstops(
19,
sStop3,
"As you do your business, you pull out the novel THE CRATER.", 
"\"Chapter 1\" (cont.)\n\nby James Fenimore Cooper",
"...is to be regretted; and we hope this will be the last thing of the sort that will ever occur, though we confers our confidence in Philadelphian stability and consistency is a good deal lessened, since we have learned, by means of a late lawsuit, that there are fifty",
"or sixty aldermen in the place; a number of those worthies that is quite sufficient to upset the proprieties, in Athens itself! Dr. Woolston had a competitor in another physician, who lived within a mile of him, and whose name was Yardley. Dr. Yardley was a very respectable person, had about the same degree of talents and...",
sndTheDalles);

create_sstops(
20,
sStop4,
"As you do your business, you pull out the novel THE CRATER.", 
"\"Chapter 1\" (cont.)\n\nby James Fenimore Cooper",
"...knowledge as his neighbor and rival, but was much the richest man of the two. Dr. Yardley, however, had but one child, a daughter, whereas Dr. Woolston, with much less of means, had sons and daughters. Mark was the oldest of the family, and it was probably owing to",
"this circumstance that he was so well educated, since the expense was not yet to be shared with that of keeping his brothers and sisters at schools of the same character. In 1777 an American college was little better than a high school. It could not be called, in strictness, a grammar school, inasmuch as all the...",
sndWhatRiver);

create_sstops(
21,
sStop5,
"As you do your business, you pull out the novel THE CRATER.", 
"\"Chapter 1\" (cont.)\n\nby James Fenimore Cooper",
"...sciences were glanced at, if not studied; but, as respects the classics, more than a grammar school it was not, nor that of a very high order. It was a consequence of the light nature of the studies, that mere boys graduated in those institutions. Such was the case",
"with Mark Woolston, who would have taken his degree as a Bachelor of Arts, at Nassau Hall, Princeton, had not an event occurred, in his sixteenth year, which produced an entire change in his plan of life, and nipped his academical honors in the bud. Although it is unusual for square-rigged vessels of any size to ascend...",
sndSouthPass);

create_sstops(
22,
sStop6,
"As you do your business, you pull out the novel THE CRATER.", 
"\"Chapter 1\" (cont.)\n\nby James Fenimore Cooper",
"...the Delaware higher than Philadelphia, the river is, in truth, navigable for such craft almost to Trenton Bridge. In the year 1793, when Mark Woolston was just sixteen, a full-rigged ship actually came up, and lay at the end of the wharf in Burlington, the little town nearly opposite",
"to Bristol, where she attracted a great deal of the attention of all the youths of the vicinity. Mark was at home, in a vacation, and he passed half his time in and about that ship, crossing the river in a skiff of which he was the owner, in order to do so. From that hour young ...",
sndWillametteValley);

create_sstops(
23,
sStop7,
"As you do your business, you pull out the novel THE CRATER.", 
"\"Chapter 1\" (cont.)\n\nby James Fenimore Cooper",
"...Mark affected the sea, and all the tears of his mother and eldest sister, the latter a pretty girl only two years his junior, and the more sober advice of his father, could not induce him to change his mind. A six weeks' vacation was passed in the discussion",
"of this subject, when the Doctor yielded to his son's importunities, probably foreseeing he should have his hands full to educate his other children, and not unwilling to put this child, as early as possible, in the way of supporting himself. The commerce of America, in 1793, was already flourishing, and Philadelphia was then much the most...",
sndFortLaramie);

create_sstops(
24,
sStop8,
"As you do your business, you pull out the novel THE CRATER.", 
"\"Chapter 1\" (cont.)\n\nby James Fenimore Cooper",
"...important place in the country. Its East India trade, in particular, was very large and growing, and Dr. Woolston knew that fortunes were rapidly made by many engaged in it. After, turning the thing well over in his mind, he determined to consult Mark's inclinations, and to make a",
"sailor of him. He had a cousin married to the sister of an East India, or rather of a Canton ship-master, and to this person the father applied for advice and assistance. Captain Crutchely very willingly consented to receive Mark in his own vessel, the Rancocus, and promised \"to make a man and an officer of him.\"...",
sndFortBoise);

create_sstops(
25,
sStop9,
"As you do your business, you pull out the novel THE CRATER.", 
"\"Chapter 1\" (cont.)\n\nby James Fenimore Cooper",
"The very day Mark first saw the ocean he was sixteen years old. He had got his height, five feet eleven, and was strong for his years, and active. In fact, it would not have been easy to find a lad every way so well adapted to his new",
"calling, as young Mark Woolston. The three years of his college life, if they had not made him a Newton, or a Bacon, had done him no harm, filling his mind with the germs of ideas that were destined afterwards to become extremely useful to him. The young man was already, indeed, a sort of  factotum, being...",
sndBlueMountain);

create_sstops(
26,
sStop1,
"As you do your business, you pull out the novel THE CRATER.", 
"\"Chapter 1\" (cont.)\n\nby James Fenimore Cooper",
"...clever and handy at so many things and in so many different ways, as early to attract the attention of the officers. Long before the vessel reached the capes, he was at home in her, from her truck to her keelson, and Captain Crutchely remarked to his chief mate,",
"the day they got to sea, that \"young Mark Woolston was likely to turn up a trump.\" As for Mark himself, he did not lose sight of the land, for the first time in his life, altogether without regrets. He had a good deal of feeling in connection with his parents, and his brothers and sisters; but...",
sndTheDalles);

create_sstops(
27,
sStop2,
"As you do your business, you pull out the novel THE CRATER.", 
"\"Chapter 1\" (cont.)\n\nby James Fenimore Cooper",
"...as it is our aim to conceal nothing which ought to be revealed, we must add there was still another who filled his thoughts more than all the rest united. This person was Bridget Yardley, the only child of his father's most formidable professional competitor. The two physicians were",
"obliged to keep up a sickly intercourse, not intending a pun. They were too often called in to consult together, to maintain an open war. While the heads of their respective families occasionally met, therefore, at the bed-side of their patients, the families themselves had no direct communications. It is true, that Mrs. Woolston and Mrs. Yardley...",
sndWhatRiver);

create_sstops(
28,
sStop3,
"As you do your business, you pull out the novel THE CRATER.", 
"\"Chapter 1\" (cont.)\n\nby James Fenimore Cooper",
"...were occasionally to be seen seated at the same tea-table, taking their hyson in company, for the recent trade with China had expelled the bohea from most of the better parlours of the country; nevertheless, these good ladies could not get to be cordial with each other. They themselves",
"had a difference on religious points, that was almost as bitter as the differences of opinions between their husbands on the subject of alternatives. In that distant day, homoeopathy, and allopathy, and hydropathy, and all the opathies, were nearly unknown; but men could wrangle and abuse each other on medical points, just as well and as bitterly...",
sndSouthPass);

create_sstops(
29,
sStop4,
"As you do your business, you pull out the novel THE CRATER.", 
"\"Chapter 1\" (cont.)\n\nby James Fenimore Cooper",
"...then, as they do now. Religion, too, quite as often failed to bear its proper fruits, in 1793, as it proves barren in these, our own times. On this subject of religion, we have one word to say, and that is, simply, that it never was a meet matter",
"for self-gratulation and boasting. Here we have the Americo-Anglican church, just as it has finished a blast of trumpets, through the medium of numberless periodicals and a thousand letters from its confiding if not confident clergy, in honour of its quiet, and harmony, and superior polity, suspended on the very brink of the precipice of separation, if...",
sndWillametteValley);

create_sstops(
30,
sStop5,
"As you do your business, you pull out the novel THE CRATER.", 
"\"Chapter 1\" (cont.)\n\nby James Fenimore Cooper",
"...not of schism, and all because it has pleased certain ultra-sublimated divines in the other hemisphere, to write a parcel of tracts that nobody understands, themselves included. How many even of the ministers of the altar fall, at the very moment they are beginning to fancy themselves saints, and",
"are ready to thank God they are \"not like the publicans!\" Both Mrs. Woolston and Mrs. Yardley were what is called 'pious;' that is, each said her prayers, each went to her particular church, and very particular churches they were; each fancied she had a sufficiency of saving faith, but neither was charitable enough to think, in...",
sndFortLaramie);

create_sstops(
31,
sStop6,
"As you do your business, you pull out the novel THE CRATER.", 
"\"Chapter 1\" (cont.)\n\nby James Fenimore Cooper",
"a very friendly temper, of the other. This difference of religious opinion, added to the rival reputations of their husbands, made these ladies anything but good neighbours, and, as has been intimated, years had passed since either had entered the door of the other. Very different was the feeling",
"of the children. Anne Woolston, the oldest sister of Mark, and Bridget Yardley, were nearly of an age, and they were not only school-mates, but fast friends. To give their mothers their due, they did not lessen this intimacy by hints, or intimations of any sort, but let the girls obey their own tastes, as if satisfied...",
sndFortBoise);

create_sstops(
32,
sStop7,
"As you do your business, you pull out the novel THE CRATER.", 
"\"Chapter 1\" (cont.)\n\nby James Fenimore Cooper",
"...it was quite sufficient for \"professors of religion\" to hate in their own persons, without entailing the feeling on posterity. Anne and Bridget consequently became warm friends, the two sweet, pretty young things both believing, in the simplicity of their hearts, that the very circumstance which in truth caused",
"the alienation, not to say the hostility of the elder members of their respective families, viz professional identity, was an additional reason why they should love each other so much the more. The girls were about two and three years the juniors of Mark, but well grown for their time of life, and frank and affectionate as...",
sndBlueMountain);

create_sstops(
33,
sStop8,
"As you do your business, you pull out the novel THE CRATER.", 
"\"Chapter 1\" (cont.)\n\nby James Fenimore Cooper",
"...innocence and warm hearts could make them. Each was more than pretty, though it was in styles so very different, as scarcely to produce any of that other sort of rivalry, which is so apt to occur even in the gentler sex. Anne had bloom, and features, and fine",
"teeth, and, a charm that is so very common in America, a good mouth; but Bridget had all these added to expression. Nothing could be more soft, gentle and feminine, than Bridget Yardley's countenance, in its ordinary state of rest; or more spirited, laughing, buoyant or pitying than it became, as the different passions or feelings were...",
sndTheDalles);

create_sstops(
34,
sStop9,
"As you do your business, you pull out the novel THE CRATER.", 
"\"Chapter 1\" (cont.)\n\nby James Fenimore Cooper",
"...excited in her young bosom. As Mark was often sent to see his sister home, in her frequent visits to the madam's house, where the two girls held most of their intercourse, he was naturally enough admitted into their association. The connection commenced by Mark's agreeing to be Bridget's",
"brother, as well as Anne's. This was generous, at least; for Bridget was an only child, and it was no more than right to repair the wrongs of fortune in this particular. The charming young thing declared that she would \"rather have Mark Woolston for her brother than any other boy in Bristol; and that it was...",
sndWhatRiver);

create_sstops(
35,
sStop1,
"As you do your business, you pull out the novel THE CRATER.", 
"\"Chapter 1\" (cont.)\n\nby James Fenimore Cooper",
"...delightful to have the same person for a brother as Anne!\" Notwithstanding this flight in the romantic, Bridget Yardley was as natural as it was possible for a female in a reasonably civilized condition of society to be. There was a vast deal of excellent, feminine self-devotion in her",
"temperament, but not a particle of the exaggerated, in either sentiment or fueling. True as steel in all her impulses and opinions, in adopting Mark for a brother she merely yielded to a strong natural sympathy, without understanding its tendency or its origin. She would talk by the hour, with Anne, touching their brother, and what they...",
sndSouthPass);

create_sstops(
36,
sStop2,
"As you do your business, you pull out the novel THE CRATER.", 
"\"Chapter 1\" (cont.)\n\nby James Fenimore Cooper",
"...must make him do, and where he must go with them, and in what they could oblige him most. The real sister was less active than her friend, in mind and body, and she listened to all these schemes and notions with a quiet submission that was not entirely",
"free from wonder. The result of all this intercourse was to awaken a feeling between Mark and Bridget, that was far more profound than might have been thought in breasts so young, and which coloured their future lives. Mark first became conscious of the strength of this feeling when he lost sight of the Capes, and fancied...",
sndWillametteValley);

create_sstops(
37,
sStop3,
"As you do your business, you pull out the novel THE CRATER.", 
"\"Chapter 1\" (cont.)\n\nby James Fenimore Cooper",
"...the dear little Bucks county girl he had left behind him, talking with his sister of his own absence and risks. But Mark had too much of the true spirit of a sailor in him, to pine, or neglect his duty; and, long ere the ship had doubled the",
"Cape of Good Hope, he had become an active and handy lad aloft. When the ship reached the China seas, he actually took his trick at the helm. As was usual in that day, the voyage of the Rancocus lasted about a twelvemonth. If John Chinaman were only one-half as active as Jonathan Restless, it might be...",
sndFortLaramie);

create_sstops(
37,
sStop4,
"As you do your business, you pull out the novel THE CRATER.", 
"\"Chapter 1\" (cont.)\n\nby James Fenimore Cooper",
"...disposed of in about one-fourth less time; but teas are not transported along the canals of the Celestial Empire with anything like the rapidity with which wheat was sent to market over the rough roads of the Great Republic, in the age of which we are writing. When Mark Woolston",
"re-appeared in Bristol, after the arrival of the Rancocus below had been known there about twenty-four hours, he was the envy of all the lads in the place, and the admiration of most of the girls. There he was, a tall, straight, active, well-made, well-grown and decidedly handsome lad of seventeen, who had doubled the...",
sndFortBoise);

create_sstops(
38,
sStop5,
"As you do your business, you pull out the novel THE CRATER.", 
"\"Chapter 1\" (cont.)\n\nby James Fenimore Cooper",
"...Cape of Good Hope, seen foreign parts, and had a real India handkerchief hanging out of each pocket of a blue round-about of superfine cloth, besides one around his half-open well-formed throat, that was carelessly tied in a true sailor knot! The questions he had to answer,",
"and did answer, about whales, Chinese feet, and \"mountain waves!\" Although Bristol lies on a navigable river, up and down which frigates had actually been seen to pass in the revolution, it was but little that its people knew of the ocean. Most of the worthy inhabitants of the place actually fancied that the waves of the...",
sndBlueMountain);

create_sstops(
39,
sStop6,
"As you do your business, you pull out the novel THE CRATER.", 
"\"Chapter 1\" (cont.)\n\nby James Fenimore Cooper",
"...sea were as high as mountains, though their notions of the last were not very precise, there being no elevations in that part of the country fit even for a windmill. But Mark cared little for these interrogatories. He was happy; happy enough, at being the object of so",
"much attention; happier still in the bosom of a family of which he had always been the favourite and was now the pride; and happiest of all when he half ravished a kiss from the blushing cheek of Bridget Yardley. Twelve months had done a great deal for each of the young couple. If they had not...",
sndTheDalles);

create_sstops(
40,
sStop7,
"As you do your business, you pull out the novel THE CRATER.", 
"\"Chapter 1\" (cont.)\n\nby James Fenimore Cooper",
"...quite made a man of Mark, they had made him manly, and his soi-disant sister wondered that any one could be so much improved by a sea-faring life. As for Bridget, herself, she was just bursting into young womanhood, resembling the bud as its leaves of green are opening",
"to permit those of the deepest rose-coloured tint to be seen, before they expand into the full-blown flower. Mark was more than delighted, he was fascinated; and young as they were, the month he passed at home sufficed to enable him to tell his passion, and to obtain a half-ready, half-timid acceptance of the offer of his...",
sndWhatRiver);

create_sstops(
41,
sStop8,
"As you do your business, you pull out the novel THE CRATER.", 
"\"Chapter 1\" (cont.)\n\nby James Fenimore Cooper",
"...hand. All this time, the parents of these very youthful lovers were as profoundly ignorant of what was going on, as their children were unobservant of the height to which professional competition had carried hostilities between their respective parents. Doctors Woolston and Yardley no longer met even in consultations;",
"or, if they did meet in the house of some patient whose patronage was of too much value to be slighted, it was only to dispute, and sometimes absolutely to quarrel. At the end of one short month, however, Mark was once more summoned to his post on board the Rancocus, temporarily putting an end to his...",
sndSouthPass);

create_sstops(
42,
sStop9,
"As you do your business, you pull out the novel THE CRATER.", 
"\"Chapter 1\" (cont.)\n\nby James Fenimore Cooper",
"...delightful interviews with Bridget. The lovers had made Anne their confidant, and she, well-meaning girl, seeing no sufficient reason why the son of one respectable physician should not be a suitable match for the daughter of another respectable physician, encouraged them in their vows of constancy, and pledges to",
"become man and wife at a future, but an early day. To some persons all this may seem exceedingly improper, as well as extremely precocious; but the truth compels us to say, that its impropriety was by no means as obvious as its precocity. The latter it certainly was, though Mark had shot up early, and was...",
sndWillametteValley);

create_sstops(
43,
sStop1,
"As you do your business, you pull out the novel THE CRATER.", 
"\"Chapter 1\" (cont.)\n\nby James Fenimore Cooper",
"...a man at a time of life when lads, in less genial climates, scarcely get tails to their coats; but its impropriety must evidently be measured by the habits of the state of society in which the parties were brought up, and by the duties that had been inculcated.",
"In America, then, as now, but little heed was taken by parents, more especially in what may be called the middle classes, concerning the connections thus formed by their children. So Long as the parties were moral, bore good characters, had nothing particular against them, and were of something near the same social station, little else was...",
sndFortLaramie);

create_sstops(
44,
sStop2,
"As you do your business, you pull out the novel THE CRATER.", 
"\"Chapter 1\" (cont.)\n\nby James Fenimore Cooper",
"...asked for; or, if more were actually required, it was usually when it was too late, and after the young people had got themselves too deeply in love to allow ordinary prudential reasons to have their due force. Mark went to sea this time, dragging after him a",
"\"lengthening chain,\" but, nevertheless, filled with hope. His years forbade much despondency, and, while he remained as constant as if he had been a next-door neighbour, he was buoyant, and the life of the whole crew, after the first week out. This voyage was not direct to Canton, like the first; but the ship took a cargo...",
sndFortBoise);

create_sstops(
45,
sStop3,
"As you do your business, you pull out the novel THE CRATER.", 
"\"Chapter 1\" (cont.)\n\nby James Fenimore Cooper",
"...of sugar to Amsterdam, and thence went to London, where she got a freight for Cadiz. The war of the French Revolution was now blazing in all the heat of its first fires, and American bottoms were obtaining a large portion of the carrying trade of the world.",
"Captain Crutchely had orders to keep the ship in Europe, making the most of her, until a certain sum in Spanish dollars could be collected, when he was to fill up with provisions and water, and again make the best of his way to Canton. In obeying these instructions, he went from port to port; and, as...",
sndBlueMountain);

create_sstops(
46,
sStop4,
"As you do your business, you pull out the novel THE CRATER.", 
"\"Chapter 1\" (cont.)\n\nby James Fenimore Cooper",
"...a sort of consequence of having Quaker owners, turning his peaceful character to great profit, thus giving Mark many opportunities of seeing as much of what is called the world, as can be found in sea-ports. Great, indeed, is the difference between places that are merely the marts of",
"commerce, and those that are really political capitals of large countries! No one can be aware of, or can fully appreciate the many points of difference that, in reality, exist between such places, who has not seen each, and that sufficiently near to be familiar with both. Some places, of which London is the most remarkable example...",
sndTheDalles);

create_sstops(
47,
sStop5,
"As you do your business, you pull out the novel THE CRATER.", 
"\"Chapter 1\" (cont.)\n\nby James Fenimore Cooper",
"...enjoy both characters; and, when this occurs, the town gels to possess a tone that is even less provincial and narrow, if possible, than that which is to be found in a place that merely rejoices in a court. This it is which renders Naples, insignificant as its commerce",
"comparatively is, superior to Vienna, and Genoa to Florence. While it would be folly to pretend that Mark, in his situation, obtained the most accurate notions imaginable of all he saw and heard, in his visits to Amsterdam, London, Cadiz, Bordeaux, Marseilles, Leghorn, Gibraltar, and two or three other ports that might be mentioned and to which...",
sndWhatRiver);

create_sstops(
48,
sStop6,
"As you do your business, you pull out the novel THE CRATER.", 
"\"Chapter 1\" (cont.)\n\nby James Fenimore Cooper",
"...he went, he did glean a good deal, some of which was useful to him in after-life. He lost no small portion of the provincial rust of home, moreover, and began to understand the vast difference between \"seeing the world\" and \"going to meeting and going to mill.\" In",
"addition to these advantages, Mark was transferred from the forecastle to the cabin before the ship sailed for Canton. The practice of near two years had made him a very tolerable sailor, and his previous education made the study of navigation easy to him. In that day there was a scarcity of officers in America, and a...",
sndSouthPass);

create_sstops(
49,
sStop7,
"As you do your business, you pull out the novel THE CRATER.", 
"\"Chapter 1\" (cont.)\n\nby James Fenimore Cooper",
"...young man of Mark's advantages, physical and moral, was certain to get on rapidly, provided he only behaved well. It is not at all surprising, therefore, that our young sailor got to be the second-mate of the Raucocus before he had quite completed his eighteenth year. The voyage from",
"London to Canton, and thence home to Philadelphia, consumed about ten months. The Rancocus was a fast vessel, but she could not impart her speed to the Chinamen. It followed that Mark wanted but a few weeks of being nineteen years old the day his ship passed Cape May, and, what was more, he had the promise...",
sndWillametteValley);

create_sstops(
50,
sStop8,
"As you do your business, you pull out the novel THE CRATER.", 
"\"Chapter 1\" (cont.)\n\nby James Fenimore Cooper",
"...of Captain Crutchely, of sailing with him, as his first officer, in the next voyage. With that promise in his mind, Mark hastened up the river to Bristol, as soon as he was clear of the vessel. Bridget Yardley had now fairly budded, to pursue the figure with which",
"we commenced the description of this blooming flower, and, if not actually expanded into perfect womanhood, was so near it as to show beyond all question that the promises of her childhood were to be very amply redeemed. Mark found her in black, however; or, in mourning for her mother. An only child, this serious loss had...",

sndFortLaramie);
create_sstops(
51,
sStop9,
"As you do your business, you pull out the novel THE CRATER.", 
"\"Chapter 1\" (cont.)\n\nby James Fenimore Cooper",
"...thrown her more than ever in the way of Anne, the parents on both sides winking at an association that could do no harm, and which might prove so useful. It was very different, however, with the young sailor. He had not been a fortnight at home, and getting",
"to be intimate with the roof-tree of Doctor Yardley, before that person saw fit to pick a quarrel with him, and to forbid him his house. As the dispute was wholly gratuitous on the part of the Doctor, Mark behaving with perfect propriety on the occasion, it may be well to explain its real cause. The fact...",
sndFortBoise);

create_sstops(
52,
sStop1,
"As you do your business, you pull out the novel THE CRATER.", 
"\"Chapter 1\" (cont.)\n\nby James Fenimore Cooper",
"...was, that Bridget was an heiress; if not on a very large scale, still an heiress, and, what was more, unalterably so in right of her mother; and the thought that a son of his competitor, Doctor Woolston, should profit by this fact, was utterly insupportable to him. Accordingly",
"he quarrelled with Mark, the instant he was apprised of the character of his attentions, and forbade him the house, To do Mark justice, he knew nothing of Bridget's worldly possessions. That she was beautiful, and warm-hearted, and frank, and sweet-tempered, and feminine, and affectionate, he both saw and felt; but beyond this he neither saw anything,...",
sndBlueMountain);

create_sstops(
53,
sStop2,
"As you do your business, you pull out the novel THE CRATER.", 
"\"Chapter 1\" (cont.)\n\nby James Fenimore Cooper",
"...nor cared about seeing anything. The young sailor was as profoundly ignorant that Bridget was the actual owner of certain three per cents, that brought twelve hundred a year, as if she did not own a 'copper,' as it was the fashion of that period to say,'cents' being",
"then very little, if at all, used. Nor did he know anything of the farm she had inherited from her mother, or of the store in town, that brought three hundred and fifty more in rent. It is true that some allusions were made to these matters by Doctor Yardley, in his angry comments on the Woolston...",
sndTheDalles);

create_sstops(
54,
sStop3,
"As you do your business, you pull out the novel THE CRATER.", 
"\"Chapter 1\" (cont.)\n\nby James Fenimore Cooper",
"...family generally, Anne always excepted, and in whose flavour he made a salvo, even in the height of his denunciations. Still. Mark thought so much of that which was really estimable and admirable in Bridget, and so little of anything mercenary, that even after these revelations he could not",
"comprehend the causes of Doctor Yardley's harsh treatment of him. During the whole scene, which was purposely enacted in the presence of his wondering and trembling daughter, Mark behaved perfectly well. He had a respect for the Doctor's years, as well as for Bridget's father, and would not retort. After waiting as long as he conceived waiting...",
sndWhatRiver);

create_sstops(
55,
sStop4,
"As you do your business, you pull out the novel THE CRATER.", 
"\"Chapter 1\" (cont.)\n\nby James Fenimore Cooper",
"...could be of any use, he seized his hat, and left the room with an air of resentment that Bridget construed into the expression of an intention never to speak to any of them again. But Mark Woolston was governed by no such design, as the sequel will show.",
"Divine wisdom has commanded us to \"Honour your father and your mother.\" Observant travellers affirm that less respect is paid to parents in America, than is usual in Christian nations-we say Christian nations; for many of the heathen, the Chinese for instance, worship them, though probably with an allegorical connection that we do not understand. That the...",
sndSouthPass);

create_sstops(
56,
sStop5,
"As you do your business, you pull out the novel THE CRATER.", 
"\"Chapter 1\" (cont.)\n\nby James Fenimore Cooper",
"...parental tie is more loose in this country than in most others we believe, and there is a reason to be found for it in the migratory habits of the people, and in the general looseness in all the ties that connect men with the past. The laws on",
"the subject of matrimony, moreover, are so very lax, intercourse is so simple and has so many facilities, and the young of the two sexes are left so much to themselves, that it is no wonder children form that connection so often without reflection and contrary to the wishes of their friends. Still, the law of God...",
sndWillametteValley);

create_sstops(
57,
sStop6,
"As you do your business, you pull out the novel THE CRATER.", 
"\"Chapter 1\" (cont.)\n\nby James Fenimore Cooper",
"...is there, and we are among those who believe that a neglect of its mandates is very apt to bring its punishment, even in this world, and we are inclined to think that much of that which Mark and Bridget subsequently suffered, was in consequence of acting directly in",
"the face of the wishes and injunctions of their parents. The scene which had taken place under the roof of Doctor Yardley was soon known under that of Doctor Woolston. Although the last individual was fully aware that Bridget was what was then esteemed rich, at Bristol, he cared not for her money. The girl he liked...",
sndFortLaramie);

create_sstops(
58,
sStop7,
"As you do your business, you pull out the novel THE CRATER.", 
"\"Chapter 1\" (cont.)\n\nby James Fenimore Cooper",
"...well enough, and in secret even admired her as much as he could find it in his heart to admire anything of Doctor Yardley's; but the indignity was one he was by no means inclined to overlook, and, in his turn, he forbade all intercourse between the girls. These",
"two bitter pills, thus administered by the village doctors to their respective patients, made the young people very miserable. Bridget loved Anne almost as much as she loved Mark, and she began to pine and alter in her appearance, in a way to alarm her father. In order to divert her mind, he sent her to town...",
sndFortBoise);

create_sstops(
59,
sStop8,
"As you do your business, you pull out the novel THE CRATER.", 
"\"Chapter 1\" (cont.)\n\nby James Fenimore Cooper",
"...to the care of an aunt, altogether forgetting that Mark's ship lay at the wharves of Philadelphia, and that he could not have sent his daughter to any place, out of Bristol, where the young man would be so likely to find her. This danger the good doctor entirely",
"overlooked, or, if he thought of it at all, he must have fancied that his sister would keep a sharp eye on the movements of the young sailor, and forbid him her house, too. Everything turned out as the Doctor ought to have expected. When Mark joined his ship, of which he was now the first officer...",
sndBlueMountain);

create_sstops(
60,
sStop9,
"As you do your business, you pull out the novel THE CRATER.", 
"\"Chapter 1\" (cont.)\n\nby James Fenimore Cooper",
"...he sought Bridget and found her. The aunt, however, administered to him the second potion of the same dose that her brother had originally dealt out, and gave him to understand that his presence in Front street was not desired. This irritated both the young people, Bridget being far",
"less disposed to submit to her aunt than to her father, and they met clandestinely in the streets. A week or two of this intercourse brought matters to a crisis, and Bridget consented to a private marriage. The idea of again going to sea, leaving his betrothed entirely in the hands of those who disliked him for...",
sndTheDalles);

create_sstops(
61,
sStop1,
"As you do your business, you pull out the novel THE CRATER.", 
"\"Chapter 1\" (cont.)\n\nby James Fenimore Cooper",
"...his father's sake,was intolerable to Mark, and it made him so miserable, that the tenderness of the deeply enamoured girl could not withstand his appeals. They agreed to get married, but to keep their union a secret until Mark should become of age, when it was hoped he",
"would be in a condition, in every point of view, openly to claim his wife. A thing of this sort, once decided on, is easily enough put in execution in America. Among Mark's college friends was one who was a few years older than himself, and who had entered the ministry. This young man was then acting...",
sndWhatRiver);

create_sstops(
62,
sStop2,
"As you do your business, you pull out the novel THE CRATER.", 
"\"Chapter 1\" (cont.)\n\nby James Fenimore Cooper",
"...as a sort of missionary among the seamen of the port, and he had fallen in the way of the young lover the very first day of his return to his ship. It was an easy matter to work on the good nature of this easy-minded man, who, on",
"hearing of the ill treatment offered to his friend, was willing enough to perform the ceremony. Everything being previously arranged, Mark and Bridget were married, early one morning, during the time the latter was out, in company with a female friend of about her own age, to take what her aunt believed was her customary walk before...",
sndSouthPass);

create_sstops(
63,
sStop3,
"As you do your business, you pull out the novel THE CRATER.", 
"\"Chapter 1\" (cont.)\n\nby James Fenimore Cooper",
"...breakfast. Philadelphia, in 1796, was not the town it is to-day. It then lay, almost entirely, on the shores of the Delaware, those of the Schuylkill being completely in the country. What was more, the best quarters were still near the river, and the distance between the Rancocus-meaning",
"Mark's ship, and not the creek of that name-and the house of Bridget's aunt, was but trifling. The ceremony took place in the cabin of the vessel just named, which, now that the captain was ashore in his own house, Mark had all to himself, no second-mate having been shipped, and which was by no means an...",
sndWillametteValley);

create_sstops(
64,
sStop4,
"As you do your business, you pull out the novel THE CRATER.", 
"\"Chapter 1\" (cont.)\n\nby James Fenimore Cooper",
"...inappropriate place for the nuptials of a pair like that which our young people turned out to be, in the end. The Rancocus, though not a large, was a very fine, Philadelphia-built ship, then the best vessels of the country. She was of a little less than four hundred",
"tons in measurement, but she had a very neat and commodious poop-cabin. Captain Crutchely had a thrifty wife, who had contributed her full share to render her husband comfortable, and Bridget thought that the room in which she was united to Mark was one of the prettiest she had ever seen. The reader, however, is not to...",
sndFortLaramie);

create_sstops(
65,
sStop5,
"As you do your business, you pull out the novel THE CRATER.", 
"\"Chapter 1\" (cont.)\n\nby James Fenimore Cooper",
"...imagine it a cabin ornamented with marble columns, rose-wood, and the maples, as so often happens now-a-days. No such extravagance was dreamed of fifty years ago; but, as far as judicious arrangements, neat joiner's work, and appropriate furniture went, the cabin of the Rancocus was a very respectable little",
"room. The circumstance that it was on deck, contributed largely to its appearance and comfort, sunken cabins, or those below decks, being necessarily much circumscribed in small ships, in consequence of being placed in a part of the vessel that is contracted in its dimensions under water, in order to help their sailing qualities. The witnesses of...",
sndFortBoise);

create_sstops(
66,
sStop6,
"As you do your business, you pull out the novel THE CRATER.", 
"\"Chapter 1\" (cont.)\n\nby James Fenimore Cooper",
"...the union of our hero and heroine were the female friend of Bridget named, the officiating clergyman, and one seaman who had sailed with the bridegroom in all his voyages, and who was now retained on board the vessel as a ship-keeper, intending to go out in her again",
"as soon as she should be ready for sea. The name of this mariner was Betts, or Bob Betts as he was commonly called; and as he acts a conspicuous part in the events to be recorded, it may be well to say a word or two more of his history and character; Bob Betts was a...",
sndBlueMountain);

create_sstops(
67,
sStop7,
"As you do your business, you pull out the novel THE CRATER.", 
"\"Chapter 1\" (cont.)\n\nby James Fenimore Cooper",
"...Jerseyman;-or, as he would have pronounced the word himself, a Jarseyman-in the American meaning of the word, however, and not in the English. Bob was born in Cape May county, and in the State of New Jersey, United States of America. At the period of which we are",
"now writing, he must have been about five-and-thirty, and seemingly a confirmed bachelor. The windows of Bob's father's house looked out upon the Atlantic Ocean, and he snuffed sea air from the hour of his birth. At eight years of age he was placed, as cabin-boy, on board a coaster; and from that time down to the...",
sndTheDalles);

create_sstops(
68,
sStop8,
"As you do your business, you pull out the novel THE CRATER.", 
"\"Chapter 1\" (cont.)\n\nby James Fenimore Cooper",
"...moment when he witnessed the marriage ceremony between Mark and Bridget, he had been a sailor. Throughout the whole war of the revolution Bob had served in the navy, in some vessel or other, and with great good luck, never having been made a prisoner of war. In connection",
"with this circumstance was one of the besetting weaknesses of his character. As often happens to men of no very great breadth of views, Bob had a notion that that which he had so successfully escaped, viz. captivity, other men too might have escaped had they been equally as clever. Thus it was that he had an...",
sndWhatRiver);

create_sstops(
69,
sStop9,
"As you do your business, you pull out the novel THE CRATER.", 
"\"Chapter 1\" (cont.)\n\nby James Fenimore Cooper",
"...ill-concealed, or only half-concealed contempt for such seamen as suffered themselves, at any time or under any circumstances, to fall into the enemies' hands. On all other subjects Bob was not only rational, but a very discreet and shrewd fellow, though on that he was often harsh, and sometimes",
"absurd. But the best men have their weakness, and this was Bob Betts's. Captain Crutchely had picked up Bob, just after the peace of 1783, and had kept him with him ever since. It was to Bob that he had committed the instruction of Mark, when the latter first joined the ship, and from Bob the youth...",
sndSouthPass);

create_sstops(
70,
sStop1,
"As you do your business, you pull out the novel THE CRATER.", 
"\"Chapter 1\" (cont.)\n\nby James Fenimore Cooper",
"...had got his earliest notions of seamanship. In his calling Bob was full of resources, and, as often happens with the American sailor, he was even handy at a great many other things, and particularly so with whatever related to practical mechanics. Then he was of vast physical force,",
"standing six feet two, in his stockings, and was round-built and solid. Bob had one sterling quality-he was as fast a friend as ever existed. In this respect he was a model of fidelity, never seeing a fault in those he loved, or a good quality in those he disliked. His attachment to Mark was signal, and...",
sndWillametteValley);


//Hunting Stops
global.hstopsctr = -1;
create_hstops(
0,
sHunting,
"As you do your business, you pull out your copy of LIFE IN THE BACKWOODS: A GUIDE TO THE SUCCESSFUL HUNTING AND TRAPPING OF ALL KINDS OF ANIMALS.", 
"\"Chapter 1\"\n\nby Frank M. Reed",
"Season for Trapping - All furs are best in winter; but trapping may be carried on to advantage for at least six months in the year, that is, any time between the first of October and the middle of April. There is a period in the warm season, say from...",
"the first of May to the middle of September, when trapping is out of the question, as  furs are worthless. The most trapping is done late in the fall and early in the spring. The reason why furs become worthless in summer is that all fur-bearing animals shed their coats, or at least lose the finest and...",
sndWillametteValley);

create_hstops(
1,
sHunting,
"As you do your business, you pull out your copy of LIFE IN THE BACKWOODS: A GUIDE TO THE SUCCESSFUL HUNTING AND TRAPPING OF ALL KINDS OF ANIMALS.", 
"\"Chapter 2\"\n\nby Frank M. Reed",
"...thickest part of their fur as warm weather approaches, and have a new growth of it in the fall to protect them in winter. This whole process is indicated in the case of the muskrat, and some other animals, by the color of the inside part of the skin,",
"As summer approaches, it becomes brown and dark. That is a sign that the best fur is gone. Afterward it grows light-colored; and in winter, when the fur is in the best condition, it is altogether white. When the pelt is white, it is calised prime by the fur-dealers. The fur is then glossy, thick, and of...",
sndWillametteValley);

create_hstops(
2,
sHunting,
"As you do your business, you pull out your copy of LIFE IN THE BACKWOODS: A GUIDE TO THE SUCCESSFUL HUNTING AND TRAPPING OF ALL KINDS OF ANIMALS.", 
"\"Chapter 3\"\n\nby Frank M. Reed",
"...the richest color; and the tails of such animals as the mink, marten, and fisher, are full and heavy. Beavers and muskrats are not thoroughly prime till about the middle of winter. Other animals are prime about the first of November. There is probably some variation with the latitude",
"of the exact period at which furs become prime, the more northern being a little in advance. Trappers are liable to begin trapping too early in the season; consequently much poor fur is caught, which must be sold at low prices, and is unprofitable to the trapper, the fur-buyer, and the manufacturer, sticks an upright, a diagonal...",
sndWillametteValley);

create_hstops(
3,
sHunting,
"As you do your business, you pull out your copy of LIFE IN THE BACKWOODS: A GUIDE TO THE SUCCESSFUL HUNTING AND TRAPPING OF ALL KINDS OF ANIMALS.", 
"\"Chapter 4\"\n\nby Frank M. Reed",
"...piece, and the trigger, or horizontal piece. The first may be made say eight inches in length, the upper  end being whittled to a thick edge not a point. The horizontal piece,  or trigger, about ten inches long and square, has a notch on one side, about seven inches",
"from one end. On the upper face of the trigger, about six and a half inches from the side notch, is another notch. The diagonal has both ends beTeled or brought to a wide edge, and a notch cut near one end. In setting up the figure, hold the perpendicular up, fit the trigger to its side...",
sndWillametteValley);

create_hstops(
4,
sHunting,
"As you do your business, you pull out your copy of LIFE IN THE BACKWOODS: A GUIDE TO THE SUCCESSFUL HUNTING AND TRAPPING OF ALL KINDS OF ANIMALS.", 
"\"Chapter 5\"\n\nby Frank M. Reed",
"...of a piece of string is tied. Strew some crumbs of bread or seeds under the trap, and also a few nearby; and, taking the other end of the string in your hand, retire and conceal yourself at some distance, until the birds are attracted by the bait.",
"As soon as you perceive them feeding directly under the trap, jerk the string quickly and the sieve falls. This is the simplest of boy's traps but answers very well when there is time to spare. When a chicken is wanted about the farm-house, it is often time saved to catch it in this way. A quail trap...",
sndWillametteValley);

//River Stop
global.rstopsctr = -1;
create_rstops(
0,
sStop10,
"As you do your business, you skip to the end of THE CRATER.", 
"\"Chapter 30\"\n\nby James Fenimore Cooper",
"...float in gasses, equally from His mysterious laboratory, and scatter them again into thin air when the works of His hand cease to find favour in His view. Let those who would substitute the voice of the created for that of the Creator, who shout \"the people, the people,\" ",
"instead of hymning the praises of their God, who vainly imagine that the masses are sufficient for all things, remember their insignificance and tremble. They are but mites amid millions of other mites, that the goodness of providence has produced for its own wise ends; their boasted countries...",
sndKansasRiver);

create_rstops(
1,
sStop10,
"As you do your business, you skip to the end of THE CRATER.",
"\"Chapter 30\" (cont.)\n\nby James Fenimore Cooper",
"...have temporary possessions of but small portions of a globe that floats, a point, in space, following the course pointed out by an invisible finger, and which will one day be suddenly struck out of its orbit, as it was originally put there, by the hand that made it.",
"Let that dread Being, then, be never made to act a second part in human affairs, or the rebellious vanity of our race imagine that either numbers, or capacity, or success, or power in arms, is aught more than a short-lived gift of His beneficence, to be resumed when His purposes are accomplished.",
sndKansasRiver);






