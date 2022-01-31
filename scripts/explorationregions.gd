extends Node


var database = {
	wimbornoutskirts = {
		background = 'meadows',
		music = 'explore',
		reqs = "true",
		combat = true,
		code = 'wimbornoutskirts',
		name = 'Wimborn Outskirts',
		description = "The rural road leads across green plains and various settlements. Bright scenery puts you at peace. ",
		enemies = [{value = 'peasant', weight = 2},{value = 'banditseasy', weight = 1},{value = 'thugseasy',weight = 3},{value = 'noenemyencountered', weight = 6}], #ralphD - added nonenemyencounters
		encounters = [],
		length = 5,
		exits = ['wimborn','forest', 'prairie'],
		tags = ['wimborn'],
		races = [{value = 'Taurus', weight = 2}, {value = 'Cat', weight = 1},{value = 'Human', weight = 12}],
		levelrange = [1,2],
	},
	prairie = {
		background = 'highlands',
		music = 'explore',
		reqs = "true",
		combat = true,
		code = 'prairie',
		name = 'Prairies',
		description = "Long trading route goes through the wide prairies. Rarely you can spot mixed settlements and lone estates. ",
		enemies = [{value = 'banditsmedium', weight = 20},{value = 'centaur1', weight = 2.6},{value = 'centaurattackers', weight = 4},{value = 'slaverseasy', weight = 10},{value = 'peasant', weight = 20},{value = 'banditseasy', weight = 30},{value = 'noenemyencountered', weight = 40}], #ralphD - added nonenemyencounters #ralphA
		encounters = [],
		length = 5,
		exits = ['wimbornoutskirts','gornoutskirts','sea'],
		tags = ['wimborn'],
		races = [{value = 'Orc', weight = 6},{value = 'Human', weight = 4}, {value = 'Cat', weight = 1}, {value = 'Bunny', weight = 1}],
		levelrange = [2,4],
	},
	forest = {
		background = 'crossroads',
		music = 'explore',
		reqs = "true",
		combat = true,
		code = 'forest',
		name = 'Ancient Forest',
		description = "You stand deep within this ancient forest. Giant trees tower above you, reaching into the skies and casting deep shadows on the ground below. As the wind whispers past, you can hear the movement of small creature in the undergrowth and birds singing from their perches above.",
		enemies = [{value = 'wolveswithperson', weight = 0.5},{value = 'fairyattackers', weight = 0.3},{value = 'banditseasy', weight = 3},{value = 'peasant', weight = 3},{value ='solobear', weight = 4},{value = 'wolveseasy', weight = 9},{value = 'treasurechest', weight = 1.35},{value = 'noenemyencountered', weight = 10}], #ralphD - added nonenemyencounters #ralphA
		encounters = [['chloeforest','globals.state.sidequests.chloe in [0,1] && !globals.state.sidequests.cali in [17,20,21]',10]],
		length = 5,
		exits = ['shaliq', 'wimbornoutskirts', 'elvenforest'],
		tags = ['wimborn'],
		races = [{value = 'Elf', weight = 2}, {value = 'Wolf', weight = 1}, {value = 'Bunny', weight = 1}, {value = 'Human', weight = 10}],
		levelrange = [2,4],
	},
	elvenforest = {
		background = 'forest',
		music = 'explore',
		reqs = "true",
		combat = true,
		code = 'elvenforest',
		name = 'Elven Grove',
		description = "This portion of the forest is located dangerously close to elven lands. They take poorly to intruders in their part of the woods so you should remain on your guard.",
		enemies = [{value = 'wolveswithperson', weight = 4},{value = 'fairy', weight = 2},{value = 'solobear', weight = 6},{value = 'elfguards',weight = 6},{value = 'plantseasy', weight = 6},{value = 'wolveseasy', weight = 6},{value = 'blockedsection', weight = 1},{value = 'noenemyencountered', weight = 15}], #ralphD - added nonenemyencounters
		encounters = [],
		length = 5,
		exits = ['amberguard','forest'],
		tags = ['amberguard'],
		races = [{value = 'Dark Elf', weight = 1},{value = 'Elf', weight = 12},{value = 'Bunny', weight = 2},{value = 'Tanuki', weight = 2}],
		levelrange = [3,6],
	},
	amberguardforest = {
		background = 'amberroad',
		music = 'explore',
		reqs = "true",
		combat = true,
		code = 'amberguardforest',
		name = 'Amber Road',
		description = "Amber Road is a long way through seeming glade and various small settlements and hills. ",
		enemies = [{value = 'solobear',weight = 1}, {value = 'wolveshard', weight = 3}, {value ='direwolveseasy', weight = 5}, {value = 'elfguards',weight = 3},{value = 'noenemyencountered', weight = 6}], #ralphD - added nonenemyencounters
		encounters = [['aynerisencounter','globals.state.sidequests.ayneris in [0,1,2]',7]],
		length = 4,
		exits = ['amberguard','witchhut','undercityentrance'],
		tags = ['amberguard'],
		races = [{value = "Elf", weight = 100}],
		levelrange = [5,8],
	},
	grove = {
		background = 'grove',
		music = 'explore',
		reqs = "true",
		combat = true,
		code = 'grove',
		name = 'Far Eerie Woods',
		description = "This portion of the forest is deeply shadowed, and strange sounds drift in and out of hearing. Something about the atmosphere keeps the normal forest creatures silent, lending an eerie, mystic feeling to the grove you stand within.",
		enemies = [{value = 'plantswithperson',weight = 2.7},{value = 'arachnaweb',weight = 1.35},{value = 'dryad',weight = 2.7},{value = 'dryad2',weight = 2.7},{value = 'fairy', weight = 4},{value = 'wolveshard', weight = 6},{value = 'plantseasy',weight = 6},{value = 'noenemyencountered', weight = 8}], #ralphD - added nonenemyencounters #ralph4 #ralphA
		encounters = [['chloegrove','globals.state.sidequests.chloe == 6 && !globals.state.sidequests.cali in [17,20,21]',25],['snailevent','globals.state.mansionupgrades.farmhatchery >= 1 && globals.state.snails < 10',10]],
		length = 7,
		exits = ['shaliq','marsh'],
		tags = ['wimborn'],
		races = [{value = 'Fairy', weight = 3},{value = "Dryad", weight = 2}],
		levelrange = [3,6],
	},
	marsh = {
		background = 'marsh',
		music = 'explore',
		reqs = "true",
		combat = true,
		code = 'marsh',
		name = 'Marsh',
		description = "Dank bog lies at the border of the forest and swamps beyond. Noxious smells and a sinister aura prevail throughout. The landscape itself is hostile, with pitch-black pools of water mixed among the solid ground and you doubt that the creatures that live here are any more pleasant than the land they live in.",
		enemies = [{value = 'banditcamp',weight = 1.35},{value = 'monstergirl', weight = 1.35}, {value = 'oozesgroup', weight = 2.7}, {value = 'solospider', weight = 5},{value = 'treasurechest', weight = 1.35},{value = 'noenemyencountered', weight = 6}], #ralphD - added nonenemyencounters
		encounters = [],
		length = 6,
		exits = ['frostfordoutskirts','grove'],
		tags = ['frostford'],
		races = [{value = 'Arachna', weight = 1},{value = 'Lamia', weight = 2},{value = 'Slime', weight = 2}, {value = 'Demon', weight = 5}],
		levelrange = [6,11],
	},
	mountains = {
		background = 'mountains',
		music = 'explore',
		reqs = "true",
		combat = true,
		code = 'mountains',
		name = 'Mountains',
		description = "You climb over small hills in search for any activity in these elevated grounds. The cloudy peak, home to the Seraphs, is barely visible far above you.", #ralphA
		enemies = [{value = 'slaversmedium', weight = 3},{value = 'seraph1', weight = 0.33},{value = 'harpyattackers', weight = 0.7},{value = 'harpy', weight = 5},{value = 'banditsmedium', weight = 6}, {value = 'fewcougars', weight = 8},{value = 'noenemyencountered', weight = 11}], #ralphD - added nonenemyencounters #ralphA
		encounters = [],
		length = 6,
		exits = ['gornoutskirts','mountaincave'],
		tags = ['gorn'],
		races = [{value = 'Dragonkin', weight = 1},{value = 'Seraph', weight = 2.5},{value = 'Gnome', weight = 3},{value = 'Centaur', weight = 2},{value = 'Goblin', weight = 4},{value = 'Orc', weight = 8}],
		levelrange = [4,7],
	},
	mountaincave = {
		background = 'tunnels',
		music = 'dungeon',
		reqs = "true",
		combat = true,
		code = 'mountaincave',
		name = 'Mountain Caves',
		description = "You step onto the damp cave floor. These underground systems serve as home to many various beasts and semisentient creatures.",
		enemies = [{value = 'oozesgroup', weight = 20},{value = 'goblinattackers1', weight = 8},{value = 'goblinattackers2', weight = 1.35},{value = 'delffew', weight = 1.35},{value = 'delfattackers1', weight = 1.35},{value = 'delfattackers2', weight = 1.35},{value = 'delfvsgob1', weight = 1.35},{value = 'solospider', weight = 20},{value = 'goblingroup', weight = 40},{value = 'treasurechest', weight = 10},{value = 'noenemyencountered', weight = 34}], #ralphD - added nonenemyencounters #ralphA
		encounters = [],
		length = 8,
		exits = ['mountains'],
		tags = ['gorn','enclosed'],
		races = [],
		levelrange = [6,12],
	},
	sea = {
		background = 'sea',
		music = 'explore',
		reqs = "true",
		combat = true,
		code = 'sea',
		name = 'Sea',
		description = "You are at the beach of a Big Sea. Air smells of salt and you can spot some sea caves formed by plateau and incoming waves.",
		enemies = [{value = 'banditcamp', weight = 1.35},{value = 'nereidgroup', weight = 1.35},{value = 'banditsmedium', weight = 2},{value = 'monstergirl', weight = 4},{value = 'travelersgroup', weight = 2},{value = 'oozesgroup', weight = 5},{value = 'treasurechest', weight = 1.35},{value = 'noenemyencountered', weight = 8}], #ralphD - added nonenemyencounters #ralph4
		encounters = [],
		length = 5,
		exits = ['prairie'],
		tags = ['gorn'],
		races = [{value = 'Scylla', weight = 1},{value = 'Lamia', weight = 1},{value = 'Nereid', weight = 3}],
		levelrange = [5,9],
	},
	gornoutskirts = {
		background = 'highlands',
		music = 'explore',
		reqs = "true",
		combat = true,
		code = 'gornoutskirts',
		name = 'Gorn Outskirts',
		description = "The town's outskirts look bright and green. ",
		enemies = [{value = 'slaverseasy', weight = 1},{value = 'peasant', weight = 1},{value = 'banditseasy', weight = 3},{value = 'thugseasy', weight = 3},{value = 'wolveseasy', weight = 5},{value = 'noenemyencountered', weight = 6}], #ralphD - added nonenemyencounters
		encounters = [],
		length = 5,
		exits = ['gorn','prairie','mountains'],
		tags = ['gorn'],
		races = [{value = 'Centaur', weight = 1},{value = 'Goblin', weight = 4},{value = 'Orc', weight = 12}],
		levelrange = [2,5],
	},
	frostfordoutskirts = {
		background = 'borealforest',
		music = 'explore',
		reqs = "true",
		combat = true,
		code = 'frostfordoutskirts',
		name = 'Frostford Outskirts',
		description = "Main road quickly branches off at thick boreal forest. Even though Frostford is considerably dense in population, its periphery is far less inhabitable due to harsh climate. You make your way through semi-utilized forest paths paying attention to the surroundings. ",
		enemies = [{value = 'banditsmedium', weight = 2},{value = 'travelersgroup', weight = 1.5},{value = 'peasant', weight = 2},{value = 'thugseasy', weight = 2},{value = 'solobear', weight = 4},{value = 'noenemyencountered', weight = 10}], #ralphD - added nonenemyencounters
		encounters = [],
		length = 5,
		exits = ['frostford','marsh','frostfordclearing'],
		tags = ['frostford'],
		races = [{value = 'Halfkin Fox', weight = 1},{value = 'Beastkin Fox', weight = 1},{value = 'Halfkin Cat', weight = 2},{value = 'Beastkin Cat', weight = 2},{value = 'Halfkin Wolf', weight = 6},{value = 'Beastkin Wolf', weight = 6},{value = 'Human', weight = 5}],
		levelrange = [3,6],
	},
	undercityentrance = {
		background = 'mountains',
		music = 'explore',
		reqs = 'globals.state.mainquest >= 18',
		combat = false,
		code = 'undercityentrance',
		name = "Cliff Entrance",
		description = "The entrance to the old tunnels is tucked away in a maze of cliff walls. If not for numerous marks and signs, you would have had a hard time figuring out where the correct passage is. A large boulder blocks the entrance way and has been sealed in place with magic. The ritual used to seal the tunnel is beyond your ability to break and without a large team of miners to try break a way in around through the extremely hard rock, you’ll need to search for another way in.",
		enemies = [],
		encounters = [],
		length = 1,
		locationscript = 'undercityentrance',
		exits = ['undercityentrance'],
		tags = [],
		races = [],
	},
	undercitytunnels = {
		background = 'tunnels',
		reqs = 'globals.state.mainquest >= 18',
		music = 'dungeon',
		combat = true,
		code = 'undercitytunnels',
		name = "Underground Tunnels",
		description = "The dark tunnels twist back and forth as they wind their way into the mountainside. Your light from your torches cast shadows around every corner. You cautiously move forward brushing spiderwebs and other hanging obstructions side. Passages repeatedly intersect some ending in short dead ends others going deeper.",
		enemies = [{value = 'solospider', weight = 3}, {value = 'oozesgroup', weight = 2}, {value = 'troglodytesmall', weight = 2}, {value = 'mutant', weight = 3},{value = 'treasurechest', weight = 1},{value = 'blockedsection', weight = 0.2}],
		encounters = [],
		length = 8,
		exits = ['undercityentrance', 'undercityruins'],
		tags = ['enclosed'],
		races = [],
		levelrange = [7,14],
	},
	undercityruins = {
		background = 'undercity',
		music = 'dungeon',
		reqs = 'true',
		combat = true,
		code = 'undercityruins',
		name = "Underground Ruins",
		description = "Dilapidated ruined buildings line long winding pathways that were once streets. Their age is hard to estimate, they could be 50 years they could be 500 years old. The air is damp and oppressive, there is little to no sound except for each of your steps which seem to echo on forever. ",
		enemies = [{value = 'spidergroup',weight = 5},{value = 'gembeetle', weight = 1}, {value = 'troglodytelarge', weight = 5}, {value = 'troglodytesmall', weight = 4}, {value = 'mutant', weight = 4},{value = 'treasurechest', weight = 1},{value = 'blockedsection', weight = 1}],
		encounters = [],
		length = 8,
		exits = ['undercitytunnels','undercityhall','undercitylibrary'],
		tags = ['enclosed'],
		races = [],
		levelrange = [10,15],
	},
	undercityhall = {
		background = 'undercity',
		music = 'dungeon',
		reqs = 'true',
		combat = false,
		code = 'undercityhall',
		name = "Underground Hall",
		description = "You approach a huge, mostly intact building. Its' state seems to be the result of magically enhanced walls, traces of which you can still feel. Searching this building may offer the most potential of all the buildings in the area due to it being mostly intact. Of course it also may provide shelter to the inhabitants of the ruins.",
		enemies = [],
		encounters = [],
		length = 1,
		locationscript = 'undercityhall',
		exits = ['undercityhall'],
		tags = [],
		races = [],
	},
	undercitylibrary = {
		background = 'undercity',
		music = 'dungeon',
		reqs = 'globals.itemdict.zoebook.amount == 0 && !globals.state.backpack.stackables.has("zoebook") && globals.state.sidequests.zoe < 4',
		combat = false,
		code = 'undercitylibrary',
		name = "Underground Quarters",
		description = "",
		enemies = [],
		encounters = [],
		length = 1,
		locationscript = 'undercitylibrary',
		exits = ['undercitylibrary'],
		tags = [],
		races = [],
	},
	witchhut = {
		background = 'amberroad',
		music = 'explore',
		reqs = 'globals.state.mainquest >= 21',
		combat = false,
		code = 'witchhut',
		name = 'Lone Hut',
		description = "You come across a lone wooden hut hidden in the thicket. ",
		enemies = [],
		encounters = [],
		length = 1,
		locationscript = 'witchhut',
		exits = ['amberguardforest'],
		tags = [],
		races = [],
	},
	shaliq = {
		background = 'shaliq',
		music = 'explore',
		reqs = "true",
		combat = false,
		code = 'shaliq',
		name = 'Shaliq Village',
		description = "This small, rural village looks calm and peaceful. It seems many personal portals lead here and travelers are not rare sight for locals, as you barely get any attention.",
		enemies = [],
		encounters = [],
		length = 0,
		locationscript = 'shaliq',
		exits = ['forest','grove'],
		tags = [],
		levelrange = [15,25],
	},
	umbra = {
		background = 'umbra',
		music = 'explore',
		reqs = "true",
		combat = false,
		code = 'umbra',
		name = 'Umbra',
		description = "You are in the middle of a vast enclosed cave. Below the ceiling resides a magical dim light source, providing slightly more illumination than at full moon night. Shabby buildings around the cave's walls have multiple people moving in and out. Most people resemble bandits and criminals, but occassinally you can spot riches with the bodyguards. Despite a slightly worring atmosphere, there seems to be no open danger or fight-seeking individuals.  ",
		enemies = [],
		encounters = [],
		length = 0,
		locationscript = 'umbra',
		exits = ['umbra'],
		tags = [],
	},
	wimborn = {
		background = 'wimborn',
		music = 'wimborn',
		reqs = "true",
		combat = false,
		code = 'wimborn',
		name = 'Wimborn',
		description = "Wimborn is a lively place at nearly all hours, as the cries of hawkers and shopkeepers vie with the songs of work crews for attention. Along the major roads, most of the buildings have been painted in a riot of colors to break up the monotony of grey-blue brick and plaster covered stone, with many of the storefronts sporting colorful awnings and signs to attract potential customers. Away from the bright colors and raucous noise of the market streets things tend to be restrained, the buildings more grey, and cries more a cause for worry.\n\nThe city is divided into a number of districts, but only a few areas are of interest to you at the moment. To the north are the Market District, and past that Auld Erellon which is the home of the Mage’s Guild and other government bodies. To the west is Red-Lantern and Riverside, where most of the city’s brothels and whorehouses might be found. To the south is the Guild District, where there is always some foreman looking for cheap but reliable labor.",
		enemies = [],
		encounters = [],
		length = 0,
		locationscript = 'wimborn',
		exits = ['wimbornoutskirts'],
		tags = [],
		levelrange = [10,15],
	},
	gorn = {
		background = 'gorn',
		music = 'gorn',
		reqs = "true",
		combat = false,
		code = 'gorn',
		name = 'Gorn',
		description = "Though the weather is commonly hot, the streets are rich with many kinds of races. Orcs and goblins are the most prevalent citizens, and small traders can be seen virtually everywhere, however, you can still frequently notice some humans, gnomes and even centaurs among the bystanders. Rare Orc Guard Patrols keep their eyes out for any potential troublemakers. ",
		enemies = [],
		encounters = [],
		length = 0,
		locationscript = 'gorn',
		exits = ['gornoutskirts'],
		tags = [],
	},
	gornalchemist = {
		background = 'gorn',
		music = 'gorn',
		reqs = "true",
		combat = false,
		code = 'gornalchemist',
		name = 'Alchemical Shop',
		description = "",
		enemies = [],
		encounters = [],
		length = 0,
		locationscript = 'gornalchemist',
		exits = ['gornalchemist'],
		tags = [],
	},
	frostfordclearing = {
		background = 'borealforest',
		music = 'explore',
		reqs = "str(globals.state.mainquest) in ['28.1','30','32']",
		combat = false,
		code = 'frostfordclearing',
		name = 'Clearing',
		description =  "",
		enemies = [],
		encounters = [],
		length = 0,
		locationscript = 'frostfordclearing',
		exits = ['frostfordclearing'],
		tags = [],
	},
	frostford = {
		background = 'frostford',
		music = 'frostford',
		reqs = "true",
		combat = false,
		code = 'frostford',
		name = 'Frostford',
		description =  "Despite this region being frequently covered in snow, it's not terribly cold here; it’s even warmer on the streets, perhaps thankfully to the density of the population.\n\n The roads are lively, with many beastkins and halfkins of different kinds strolling and talking to one another - despite the activity, the whole town has a very relaxed and calm atmosphere. ",
		enemies = [],
		encounters = [],
		length = 0,
		locationscript = 'frostford',
		exits = ['frostfordoutskirts'],
		tags = [],
	},
	amberguard = {
		background = 'amberguard',
		music = 'frostford',
		reqs = "globals.state.mainquest >= 17",
		combat = false,
		code = 'amberguard',
		name = 'Amberguard',
		description = "The journey to Amberguard is rather uneventful. A large wall surrounds the town with a fortified gate controlling entrance into the inner city. Passing through the gates you are coldly greeted with hostile stares, reminding you while you may be permitted to enter the city you are not welcome here, and help may be difficult to find. \n\nYou make your way through the town. Large marble buildings of elvish design line the streets and provide shelter to the local residents. Despite their lavish architecture they look dilapidated and unkempt. Sections of the city seem almost deserted. While the streets are far from crowded by  the elves that live here, you are often rudely jostled and bumped. Other elves simply glare at you or cautiously give you lots of space.\n\nThe unwelcoming attitude explains why so few outsiders especially those of other races are to be found within the city.",
		enemies = [],
		encounters = [],
		length = 1,
		locationscript = 'amberguard',
		exits = ['elvenforest','amberguardforest'],
		tags = [],
		races = [],
	},
	#new endgame
	dragonnests = {
		background = 'dragonnests',
		music = 'explore',
		reqs = 'true',
		combat = true,
		code = 'dragonnests',
		name = "Dragon Nests",
		description = "High mountain peaks host many smaller paths hiding cracks and egg clutches. Towering hills seem to hide this place from clear vision for basin dwelvers.",
		enemies = [['dragonwhelps', 1], ['hardbeasts',1]],
		encounters = [],
		length = 10,
		exits = ['redcave'],
		tags = [],
		races = [],
		levelrange = [10,15],
	},
	redcave = {
		background = 'redcave',
		music = 'dungeon',
		reqs = 'globals.state.decisions.has("dragonkilled")',
		combat = true,
		code = 'redcave',
		name = "Red Caves",
		description = "These caves seem very unlike any other dungeon you have explored at. Many passages are lit by huge chunks of glowing red stones of uncertain nature. Despite that, the area feels like it has been quite well organized for such a wild place.",
		enemies = [['possessed',1],['hardbeasts',1],['cultists',1],['possesedwithdragonkin',0.4]],
		encounters = [],
		length = 10,
		exits = ['dragonnests','culthideout','cavelake'],
		tags = ['enclosed'],
		races = [],
		levelrange = [10,15],
	},
	culthideout = {
		background = 'culthideout',
		music = 'dungeon',
		reqs = 'true',
		combat = true,
		code = 'culthideout',
		name = "Cultists' Hideout",
		description = "A long series of  tunnels, rooms and halls, all on different levels, hosting living conditions for an unknown cult. Many walls are decorated with obscure sinister arts and you can sometimes hear mumbling echoes and screams. ",
		enemies = [['cultists',1],['cultists2',1], ['cultistswithperson',0.4]],
		encounters = [],
		length = 10,
		exits = ['redcave'],
		tags = ['enclosed'],
		races = [],
		levelrange = [10,15],
	},
	cavelake = {
		background = 'cavelake',
		music = 'dungeon',
		reqs = 'true',
		combat = true,
		code = 'cavelake',
		name = "Underground Lake",
		description = "A great underground lake takes a huge portion of an even bigger cavern. It seems to serve as a water source to nearby residents.  In the depths you can make out a shimmering objects, but it is impossible to tell how deep it is.",
		enemies = [['cultists',1],['giantcrabs',1], ['giantcrab',1]],
		encounters = [],
		length = 10,
		exits = ['redcave','darkness'],
		tags = ['enclosed'],
		races = [],
		levelrange = [10,15],
	},
	darkness = {
		background = 'darkness',
		music = 'dungeon',
		reqs = 'globals.state.decisions.has("cultbosskilled")',
		combat = true,
		code = 'darkness',
		name = "Darkness",
		description = "For some reason, even with a brightly lit torch you can't see further than a couple of feet away. The smooth floor indicates that some work put into it, but you have a hard time finding any walls for orientation. Often you hear distant moans and groans, but they rarely last enough to give any idea of where they come from. You have no other option other than to move forward.",
		enemies = [['cultists2',1],['shadows',3]],
		encounters = [],
		length = 10,
		exits = ['cavelake'],
		tags = ['enclosed'],
		races = [],
		levelrange = [10,15],
	},
}
