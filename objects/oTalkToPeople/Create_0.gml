stringindex_ = 0;
var _arrayindex = 0;
/*
  A young girl tells you:

"My father is very sick and we
are resting here until he gets
better. We have been pushing
too hard and our health has
suffered. When my father is
able to travel again: we will
go at a slower pace."
*/

create_text(_arrayindex,texttype.simple, "A young girl tells you:");
create_text(_arrayindex,texttype.simple, "");
create_text(_arrayindex,texttype.simple, "'My father is very sick and we");
create_text(_arrayindex,texttype.simple, "are resting here until he gets");
create_text(_arrayindex,texttype.simple, "better. We have been pushing");
create_text(_arrayindex,texttype.simple, "too hard and our health has");
create_text(_arrayindex,texttype.simple, "suffered. When my father is");
create_text(_arrayindex,texttype.simple, "able to travel again, we will");
create_text(_arrayindex,texttype.simple, "go at a slower pace.");
create_text(_arrayindex,texttype.simple, "");
create_text(_arrayindex,texttype.simple, "You look even sicker");
create_text(_arrayindex,texttype.simple, "than my father.'");
create_text(_arrayindex,texttype.simple, "");
create_text(_arrayindex,texttype.simple, "The girl takes a beat.");
create_text(_arrayindex,texttype.simple, "");
create_text(_arrayindex,texttype.simple, "'Smell worse, too.'");
create_text(_arrayindex,texttype.simple, "");
create_text(_arrayindex,texttype.center, "   Press SPACE BAR to continue");

_arrayindex++;
stringindex_ = 0;

/*
A traveler tells you:
"My family and I travel with 46
other families to the valley of
the Great Salt Lake to seek
religious freedon. Back east,
Mormons are persecuted. In)
Utah, we'll join together to
build a new community. changing
desert into farm land."
*/

create_text(_arrayindex,texttype.simple, "A traveler tells you:");
create_text(_arrayindex,texttype.simple, "");
create_text(_arrayindex,texttype.simple, "'My family and I travel with 46");
create_text(_arrayindex,texttype.simple, "other families to the valley of");
create_text(_arrayindex,texttype.simple, "the Great Salt Lake to seek");
create_text(_arrayindex,texttype.simple, "religious freedom. Back east,");
create_text(_arrayindex,texttype.simple, "Mormons are persecuted. In");
create_text(_arrayindex,texttype.simple, "Utah, we'll join together to");
create_text(_arrayindex,texttype.simple, "build a new community, changing");
create_text(_arrayindex,texttype.simple, "desert into farm land.");
create_text(_arrayindex,texttype.simple, "");
create_text(_arrayindex,texttype.simple, "But enough about me, why are");
create_text(_arrayindex,texttype.simple, "you keeled over with both");
create_text(_arrayindex,texttype.simple, "hands clenching your buttocks?'");
create_text(_arrayindex,texttype.simple, "");
create_text(_arrayindex,texttype.center, "   Press SPACE BAR to continue");


_arrayindex++;
stringindex_ = 0;

/*
A tired overlander tells you:
Since crossing the Snake at
Fort Boise, it's been just
mountains and desert. Dust
deeper each day -- six inches
at times. No tracks. Just 
clouds of dust. Many cattle
swimminmg in the river, then
bled and died.'
*/

create_text(_arrayindex,texttype.simple, "A tired overlander tells you:");
create_text(_arrayindex,texttype.simple, "");
create_text(_arrayindex,texttype.simple, "'Since crossing the Snake at");
create_text(_arrayindex,texttype.simple, "Fort Boise, it's been just");
create_text(_arrayindex,texttype.simple, "mountains and desert. Dust");
create_text(_arrayindex,texttype.simple, "deeper each day -- six inches");
create_text(_arrayindex,texttype.simple, "at times. No tracks. Just");
create_text(_arrayindex,texttype.simple, "clouds of dust. Many cattle");
create_text(_arrayindex,texttype.simple, "choked on the dust after");
create_text(_arrayindex,texttype.simple, "swimming in the river, then");
create_text(_arrayindex,texttype.simple, "bled and died.'");
create_text(_arrayindex,texttype.simple, "");
create_text(_arrayindex,texttype.simple, "");
create_text(_arrayindex,texttype.simple, "It's then that the overlander looks");
create_text(_arrayindex,texttype.simple, "down and realizes he's been");
create_text(_arrayindex,texttype.simple, "waxing poetic to someone with");
create_text(_arrayindex,texttype.simple, "the butt-flap of their long-johns");
create_text(_arrayindex,texttype.simple, "hanging open.");
create_text(_arrayindex,texttype.simple, "");
create_text(_arrayindex,texttype.center, "   Press SPACE BAR to continue");

_arrayindex++;


stringindex_ = 0;
global.textindex_ = irandom(_arrayindex-1);
alarm[0]=1;