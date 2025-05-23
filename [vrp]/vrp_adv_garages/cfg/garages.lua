local cfg = {}

cfg.garage_types = {
	["Garagem"] = {
		_config = { gtype={"personal"} }
	},
	["Bulbasaur"]  = {
		_config = { gtype={"personal"},ghome="Bulbasaur" }
	},
	["Ivysaur"]  = {
		_config = { gtype={"personal"},ghome="Ivysaur" }
	},
	["Venusaur"]  = {
		_config = { gtype={"personal"},ghome="Venusaur" }
	},
	["Squirtle"]  = {
		_config = { gtype={"personal"},ghome="Squirtle" }
	},
	["Blastoise"]  = {
		_config = { gtype={"personal"},ghome="Blastoise" }
	},
	["Metapod"]  = {
		_config = { gtype={"personal"},ghome="Metapod" }
	},
	["Clefairy"]  = {
		_config = { gtype={"personal"},ghome="Clefairy" }
	},
	["Clefable"]  = {
		_config = { gtype={"personal"},ghome="Clefable" }
	},
	["Vulpix"]  = {
		_config = { gtype={"personal"},ghome="Vulpix" }
	},
	["Ninetales"]  = {
		_config = { gtype={"personal"},ghome="Ninetales" }
	},
	["Jigglypuff"]  = {
		_config = { gtype={"personal"},ghome="Jigglypuff" }
	},
	["Wigglytuff"]  = {
		_config = { gtype={"personal"},ghome="Wigglytuff" }
	},
	["Zubat"]  = {
		_config = { gtype={"personal"},ghome="Zubat" }
	},
	["Golbat"]  = {
		_config = { gtype={"personal"},ghome="Golbat" }
	},
	["Oddish"]  = {
		_config = { gtype={"personal"},ghome="Oddish" }
	},
	["Gloom"]  = {
		_config = { gtype={"personal"},ghome="Gloom" }
	},
	["Vileplume"]  = {
		_config = { gtype={"personal"},ghome="Vileplume" }
	},
	["Machoke"]  = {
		_config = { gtype={"personal"},ghome="Machoke" }
	},
	["Machamp"]  = {
		_config = { gtype={"personal"},ghome="Machamp" }
	},
	["Bellsprout"]  = {
		_config = { gtype={"personal"},ghome="Bellsprout" }
	},
	["Weepinbell"]  = {
		_config = { gtype={"personal"},ghome="Weepinbell" }
	},
	["Victreebel"]  = {
		_config = { gtype={"personal"},ghome="Victreebel" }
	},
	["Tentacool"]  = {
		_config = { gtype={"personal"},ghome="Tentacool" }
	},
	["Tentacruel"]  = {
		_config = { gtype={"personal"},ghome="Tentacruel" }
	},
	["Geodude"]  = {
		_config = { gtype={"personal"},ghome="Geodude" }
	},
	["Graveler"]  = {
		_config = { gtype={"personal"},ghome="Graveler" }
	},
	["Golem"]  = {
		_config = { gtype={"personal"},ghome="Golem" }
	},
	["Ponyta"]  = {
		_config = { gtype={"personal"},ghome="Ponyta" }
	},
	["Rapidash"]  = {
		_config = { gtype={"personal"},ghome="Rapidash" }
	},
	["Slowpoke"]  = {
		_config = { gtype={"personal"},ghome="Slowpoke" }
	},
	["Slowbro"]  = {
		_config = { gtype={"personal"},ghome="Slowbro" }
	},
	["Magnemite"]  = {
		_config = { gtype={"personal"},ghome="Magnemite" }
	},
	["Magneton"]  = {
		_config = { gtype={"personal"},ghome="Magneton" }
	},
	["Doduo"]  = {
		_config = { gtype={"personal"},ghome="Doduo" }
	},
--	["Vans"] = {
--		_config = { gtype={"rent"} },
--		["Rumpo3"] = { "Rumpo3",15000,120,-1 },
--		["benson"] = { "benson",50000,350,-1 },
--		["mule2"] = { "mule2",30000,600,-1 },
--		["burrito2"] = { "burrito2",7000,100,-1 },
--	},
	["Carros"] = {
		_config = { gtype={"store"} },
		["blista"] = { "blista",60000,40,3 },
		["brioso"] = { "brioso",30000,30,3 },
		["dilettante"] = { "dilettante",60000,50,3 },
		["issi2"] = { "issi2",90000,50,3 },
		["panto"] = { "panto",50000,20,-1 },
		["prairie"] = { "prairie",20000,25,-1 },
		["rhapsody"] = { "rhapsody",15000,30,-1 },
		["cogcabrio"] = { "cogcabrio",120000,60,3 },
		["exemplar"] = { "exemplar",80000,20,3 },
		["f620"] = { "f620",55000,30,5 },
		["felon"] = { "felon",70000,50,5 },
		["ingot"] = { "ingot",160000,60,3 },
		["felon2"] = { "felon2",80000,40,5 },
		["jackal"] = { "jackal",60000,30,3 },
		["oracle"] = { "oracle",60000,50,5 },
		["oracle2"] = { "oracle2",80000,60,5 },
		["sentinel"] = { "sentinel",50000,40,7 },
		["sentinel2"] = { "sentinel2",60000,50,7 },
		["windsor"] = { "windsor",150000,20,3 },
		["windsor2"] = { "windsor2",170000,40,3 },
		["zion"] = { "zion",50000,40,5 },
		["zion2"] = { "zion2",60000,50,12 },
		["blade"] = { "blade",100000,40,3 },
		["buccaneer"] = { "buccaneer",120000,50,3 },
		["buccaneer2"] = { "buccaneer2",240000,60,3 },
		["primo"] = { "primo",120000,50,3 },
		["primo2"] = { "primo2",240000,60,3 },
		["chino"] = { "chino",120000,50,3 },
		["chino2"] = { "chino2",240000,60,3 },
		["coquette3"] = { "coquette3",170000,40,3 },
		["dominator"] = { "dominator",180000,50,3 },
		["dukes"] = { "dukes",150000,40,3 },
		["faction"] = { "faction",150000,50,3 },
		["faction2"] = { "faction2",200000,40,3 },
		["faction3"] = { "faction3",350000,60,3 },
		["gauntlet"] = { "gauntlet",145000,40,3 },
		["hermes"] = { "hermes",280000,70,3 },
		["hotknife"] = { "hotknife",180000,30,3 },
		["moonbeam"] = { "moonbeam",180000,80,3 },
		["moonbeam2"] = { "moonbeam2",220000,70,3 },
		["nightshade"] = { "nightshade",270000,30,3 },
		["picador"] = { "picador",150000,90,3 },
		["ratloader2"] = { "ratloader2",180000,70,3 },
		["ruiner"] = { "ruiner",150000,50,3 },
		["sabregt"] = { "sabregt",240000,60,3 },
		["sabregt2"] = { "sabregt2",150000,60,3 },
		["slamvan"] = { "slamvan",150000,80,3 },
		["slamvan2"] = { "slamvan2",190000,80,3 },
		["slamvan3"] = { "slamvan3",200000,80,3 },
		["stalion"] = { "stalion",150000,30,3 },
		["tampa"] = { "tampa",170000,40,3 },
		["vigero"] = { "vigero",170000,30,3 },
		["virgo"] = { "virgo",150000,60,3 },
		["virgo2"] = { "virgo2",250000,50,3 },
		["virgo3"] = { "virgo3",180000,60,3 },
		["voodoo"] = { "voodoo",220000,60,3 },
		["yosemite"] = { "yosemite",350000,100,3 },
		["bfinjection"] = { "bfinjection",80000,20,3 },
		["bifta"] = { "bifta",190000,20,3 },
		["bodhi"] = { "bodhi",170000,90,3 },
		["dubsta3"] = { "dubsta3",240000,70,3 },
		["mesa3"] = { "mesa3",160000,60,3 },
		["rancherxl"] = { "rancherxl",200000,70,3 },
		["rebel"] = { "rebel",220000,100,3 },
		["rebel2"] = { "rebel2",250000,100,3 },
		["riata"] = { "riata",250000,80,3 },
		["dloader"] = { "dloader",150000,40,3 },
		["sandking"] = { "sandking",350000,100,3 },
		["sandking2"] = { "sandking2",300000,100,3 },
		["baller"] = { "baller",120000,50,3 },
		["baller2"] = { "baller2",130000,50,3 },
		["baller3"] = { "baller3",140000,50,3 },
		["baller4"] = { "baller4",150000,50,3 },
		["baller5"] = { "baller5",300000,50,3 },
		["baller6"] = { "baller6",310000,50,3 },
		["bjxl"] = { "bjxl",100000,50,3 },
		["cavalcade"] = { "cavalcade",110000,60,3 },
		["cavalcade2"] = { "cavalcade2",130000,60,3 },
		["contender"] = { "contender",240000,70,3 },
		["dubsta"] = { "dubsta",150000,80,3 },
		["dubsta2"] = { "dubsta2",180000,80,3 },
		["fq2"] = { "fq2",100000,50,3 },
		["granger"] = { "granger",280000,100,3 },
		["gresley"] = { "gresley",150000,50,3 },
		["habanero"] = { "habanero",100000,50,3 },
		["seminole"] = { "seminole",110000,60,3 },
		["serrano"] = { "serrano",150000,50,3 },
		["xls"] = { "xls",150000,50,3 },
		["xls2"] = { "xls2",350000,50,3 },
		["asea"] = { "asea",50000,30,3 },
		["asterope"] = { "asterope",60000,30,3 },
		["cog55"] = { "cog55",200000,50,3 },
		["cog552"] = { "cog552",350000,50,3 },
		["cognoscenti"] = { "cognoscenti",250000,50,3 },
		["cognoscenti2"] = { "cognoscenti2",350000,50,3 },
		["stanier"] = { "stanier",60000,60,3 },
		["stratum"] = { "stratum",70000,70,3 },
		["superd"] = { "superd",200000,50,3 },
		["surge"] = { "surge",100000,60,3 },
		["tailgater"] = { "tailgater",100000,50,3 },
		["warrener"] = { "warrener",90000,40,3 },
		["washington"] = { "washington",120000,60,3 },
		["alpha"] = { "alpha",160000,40,3 },
		["banshee"] = { "banshee",240000,30,3 },
		["bestiagts"] = { "bestiagts",220000,60,3 },
		["blista2"] = { "blista2",50000,40,3 },
		["blista3"] = { "blista3",70000,40,3 },
		["buffalo"] = { "buffalo",240000,50,3 },
		["buffalo2"] = { "buffalo2",240000,50,3 },
		["carbonizzare"] = { "carbonizzare",250000,50,3 },
		["comet2"] = { "comet2",200000,40,3 },
		["comet3"] = { "comet3",230000,40,3 },
		["coquette"] = { "coquette",200000,30,3 },
		["elegy"] = { "elegy",260000,50,5 },
		["elegy2"] = { "elegy2",280000,30,3 },
		["feltzer2"] = { "feltzer2",200000,50,3 },
		["furoregt"] = { "furoregt",250000,30,3 },
		["fusilade"] = { "fusilade",180000,50,3 },
		["futo"] = { "futo",150000,40,5 },
		["jester"] = { "jester",120000,30,15 },
		["khamelion"] = { "khamelion",180000,50,3 },
		["kuruma"] = { "kuruma",240000,50,3 },
		["massacro"] = { "massacro",290000,50,3 },
		["ninef"] = { "ninef",250000,40,3 },
		["ninef2"] = { "ninef2",250000,40,3 },
		["omnis"] = { "omnis",210000,20,3 },
		["pariah"] = { "pariah",400000,30,3 },
		["penumbra"] = { "penumbra",120000,40,3 },
		["raiden"] = { "raiden",210000,70,5 },
		["rapidgt"] = { "rapidgt",220000,20,3 },
		["rapidgt2"] = { "rapidgt2",240000,20,3 },
		["ruston"] = { "ruston",300000,20,3 },
		["schafter3"] = { "schafter3",180000,50,3 },
		["schafter4"] = { "schafter4",190000,50,3 },
		["schwarzer"] = { "schwarzer",150000,50,3 },
		["sentinel3"] = { "sentinel3",150000,30,7 },
		["seven70"] = { "seven70",300000,20,3 },
		["specter"] = { "specter",280000,20,3 },
		["specter2"] = { "specter2",310000,20,3 },
		["streiter"] = { "streiter",200000,70,3 },
		["sultan"] = { "sultan",150000,50,3 },
		["surano"] = { "surano",270000,30,3 },
		["tampa2"] = { "tampa2",180000,20,3 },
		["tropos"] = { "tropos",150000,20,3 },
		["verlierer2"] = { "verlierer2",330000,20,3 },
		["btype"] = { "btype",320000,40,3 },
		["btype2"] = { "btype2",400000,20,3 },
		["btype3"] = { "btype3",340000,40,3 },
		["casco"] = { "casco",310000,50,3 },
		["cheetah"] = { "cheetah",370000,20,3 },
		["coquette2"] = { "coquette2",250000,40,3 },
		["feltzer3"] = { "feltzer3",200000,50,3 },
		["gt500"] = { "gt500",250000,40,3 },
		["infernus2"] = { "infernus2",250000,20,3 },
		["jb700"] = { "jb700",200000,30,3 },
		["mamba"] = { "mamba",240000,50,3 },
		["manana"] = { "manana",120000,70,3 },
		["monroe"] = { "monroe",240000,20,3 },
		["peyote"] = { "peyote",150000,70,3 },
		["pigalle"] = { "pigalle",250000,60,3 },
		["rapidgt3"] = { "rapidgt3",190000,40,3 },
		["retinue"] = { "retinue",150000,40,3 },
		["stinger"] = { "stinger",200000,60,3 },
		["stingergt"] = { "stingergt",230000,20,3 },
		["torero"] = { "torero",160000,30,3 },
		["tornado"] = { "tornado",140000,70,3 },
		["tornado2"] = { "tornado2",160000,60,3 },
		["tornado5"] = { "tornado5",250000,60,3 },
		["turismo2"] = { "turismo2",250000,30,3 },
		["viseris"] = { "viseris",210000,30,3 },
		["ztype"] = { "ztype",400000,20,3 },
		["adder"] = { "adder",500000,20,3 },
		["autarch"] = { "autarch",610000,20,3 },
		["banshee2"] = { "banshee2",300000,20,3 },
		["bullet"] = { "bullet",350000,20,3 },
		["cheetah2"] = { "cheetah2",210000,20,3 },
		["entityxf"] = { "entityxf",400000,20,3 },
		["fmj"] = { "fmj",450000,20,3 },
		["gp1"] = { "gp1",430000,20,3 },
		["infernus"] = { "infernus",410000,20,3 },
		["nero"] = { "nero",390000,30,3 },
		["nero2"] = { "nero2",420000,20,3 },
		["osiris"] = { "osiris",400000,20,3 },
		["penetrator"] = { "penetrator",420000,20,3 },
		["pfister811"] = { "pfister811",460000,20,3 },
		["reaper"] = { "reaper",500000,20,3 },
		["sc1"] = { "sc1",430000,20,3 },
		["sultanrs"] = { "sultanrs",300000,30,5 },
		["t20"] = { "t20",500000,20,3 },
		["tempesta"] = { "tempesta",520000,20,3 },
		["turismor"] = { "turismor",500000,20,3 },
		["tyrus"] = { "tyrus",500000,20,3 },
		["vacca"] = { "vacca",500000,30,3 },
		["visione"] = { "visione",600000,20,3 },
		["voltic"] = { "voltic",380000,20,3 },
		["zentorno"] = { "zentorno",700000,20,3 },
		["sadler"] = { "sadler",180000,70,3 },
		["bison"] = { "bison",200000,70,3 },
		["bison2"] = { "bison2",180000,70,3 },
		["bobcatxl"] = { "bobcatxl",240000,100,3 },
		["burrito"] = { "burrito",240000,100,3 },
		["burrito2"] = { "burrito2",240000,100,3 },
		["burrito3"] = { "burrito3",240000,100,3 },
		["burrito4"] = { "burrito4",240000,100,3 },
		["minivan"] = { "minivan",100000,70,3 },
		["minivan2"] = { "minivan2",200000,60,3 },
		["paradise"] = { "paradise",240000,100,3 },
		["pony"] = { "pony",240000,100,3 },
		["pony2"] = { "pony2",240000,100,3 },
		["rumpo"] = { "rumpo",240000,100,3 },
		["rumpo2"] = { "rumpo2",240000,100,3 },
		["rumpo3"] = { "rumpo3",250000,120,3 },
		["speedo"] = { "speedo",240000,100,3 },
		["surfer"] = { "surfer",50000,80,12 },
		["youga"] = { "youga",240000,100,3 },
		["youga2"] = { "youga2",240000,100,3 },
		["huntley"] = { "huntley",100000,60,3 },
		["landstalker"] = { "landstalker",130000,70,3 },
		["mesa"] = { "mesa",90000,50,3 },
		["patriot"] = { "patriot",250000,70,3 },
		["radi"] = { "radi",100000,50,3 },
		["rocoto"] = { "rocoto",100000,60,3 },
		["tyrant"] = { "tyrant",600000,30,3 },
		["entity2"] = { "entity2",480000,20,3 },
		["cheburek"] = { "cheburek",150000,50,3 },
		["hotring"] = { "hotring",300000,60,3 },
		["jester3"] = { "jester3",240000,30,3 },
		["flashgt"] = { "flashgt",320000,50,3 },
		["ellie"] = { "ellie",300000,50,3 },
		["michelli"] = { "michelli",160000,40,3 },
		["fagaloa"] = { "fagaloa",300000,80,3 },
		["dominator3"] = { "dominator3",300000,30,3 },
		["issi3"] = { "issi3",160000,20,3 },
		["taipan"] = { "taipan",500000,20,3 },
		["gb200"] = { "gb200",170000,20,3 },
		["stretch"] = { "stretch",500000,60,3 },
		["guardian"] = { "guardian",500000,100,3 },
		["kamacho"] = { "kamacho",400000,70,3 },
		["neon"] = { "neon",300000,30,7 },
		["cyclone"] = { "cyclone",800000,20,3 },
		["italigtb"] = { "italigtb",520000,20,3 },
		["italigtb2"] = { "italigtb2",530000,20,3 },
		["vagner"] = { "vagner",590000,20,3 },
		["xa21"] = { "xa21",550000,20,3 },
		["tezeract"] = { "tezeract",800000,20,3 },
		["prototipo"] = { "prototipo",900000,20,3 },
		["patriot2"] = { "patriot2",550000,60,3 },
		["speedo4"] = { "speedo4",240000,100,3 },
		["stafford"] = { "stafford",400000,40,3 },
		["swinger"] = { "swinger",250000,20,3 },
		["brutus"] = { "brutus",350000,100,3 },
		["clique"] = { "clique",360000,40,3 },
		["deveste"] = { "deveste",800000,20,3 },
		["deviant"] = { "deviant",300000,50,3 },
		["impaler"] = { "impaler",300000,60,3 },
		["imperator"] = { "imperator",400000,50,3 },
		["italigto"] = { "italigto",700000,30,3 },
		["schlagen"] = { "schlagen",600000,30,3 },
		["toros"] = { "toros",400000,50,3 },
		["tulip"] = { "tulip",300000,60,3 },
		["ds4"] = { "DS4",73000,50,3 },
		["punto"] = { "punto",70000,50,3 },
		["f150"] = { "f150",175000,85,3 },
		["fusion"] = { "fusion",100000,50,3 },
		["fordka"] = { "fordka",45000,50,3 },
		["vwgolf"] = { "vwgolf",60000,50,3 },
		["civic"] = { "civic",55000,50,3 },
		["eletran17"] = { "eletran17",110000,50,3 },
		["sonata18"] = { "sonata18",120000,50,3 },
		["veloster"] = { "veloster",85000,50,3 },
		["monza"] = { "monza",13000,40,3 },
		["p207"] = { "p207",23000,40,3 },
		["vwpolo"] = { "vwpolo",90000,50,3 },
		["evoq"] = { "evoq",220000,50,3 },
		["santafe"] = { "santafe",140000,50,3 },
		["celta"] = { "celta",17000,40,3 },
		["amarok"] = { "amarok",185000,80,3 },
		["civic2016"] = { "civic2016",120000,50,3 },
		["fiat"] = { "fiat",10000,40,3 },
		["jetta2017"] = { "jetta2017",200000,50,3 },
		["l200civil"] = { "l200civil",180000,80,3 },
		["saveiro"] = { "saveiro",70000,60,3 },
		["upzinho"] = { "upzinho",20000,30,3 },
		["voyage"] = { "voyage",40000,50,3 },
		["golg7"] = { "golg7",85000,50,3 },
		["fiattoro"] = { "fiattoro",80000,70,3 },
		["palio"] = { "palio",20000,40,3 },
		["fiatuno"] = { "fiatuno",15000,40,3 },
		["fiatstilo"] = { "fiatstilo",80000,50,3 },
		["vamos"] = { "vamos",320000,60,3 }
	},
	["Motos"] = {
		_config = { gtype={"store"} },
		["akuma"] = { "akuma",420000,15,5 },
		["avarus"] = { "avarus",350000,15,3 },
		["bagger"] = { "bagger",240000,40,3 },
		["bati"] = { "bati",300000,15,15 },
		["bf400"] = { "bf400",260000,15,15 },
		["carbonrs"] = { "carbonrs",300000,15,3 },
		["chimera"] = { "chimera",280000,15,3 },
		["cliffhanger"] = { "cliffhanger",250000,15,3 },
		["daemon"] = { "daemon",200000,15,3 },
		["daemon2"]  = { "daemon2",200000,15,3 },
		["defiler"] = { "defiler",380000,15,3 },
		["diablous"] = { "diablous",350000,15,3 },
		["diablous2"] = { "diablous2",380000,15,3 },
		["double"] = { "double",300000,15,3 },
		["enduro"] = { "enduro",160000,15,3 },
		["esskey"] = { "esskey",260000,15,3 },
		["faggio"] = { "faggio",4000,30,-1 },
		["faggio2"] = { "faggio2",5000,30,-1 },
		["faggio3"] = { "faggio3",5000,30,-1 },
		["fcr"] = { "fcr",320000,15,3 },
		["fcr2"] = { "fcr2",320000,15,3 },
		["gargoyle"] = { "gargoyle",280000,15,3 },
		["hakuchou"] = { "hakuchou",310000,15,3 },
		["hakuchou2"] = { "hakuchou2",450000,15,3 },
		["hexer"] = { "hexer",180000,15,3 },
		["innovation"] = { "innovation",210000,15,3 },
		["lectro"] = { "lectro",310000,15,3 },
		["manchez"] = { "manchez",290000,15,3 },
		["nemesis"] = { "nemesis",280000,15,3 },
		["nightblade"] = { "nightblade",340000,15,5 },
		["pcj"] = { "pcj",180000,15,3 },
		["ruffian"] = { "ruffian",280000,15,3 },
		["sanchez"] = { "sanchez",150000,15,15 },
		["sanchez2"] = { "sanchez2",150000,15,15 },
		["sanctus"] = { "sanctus",350000,15,3 },
		["sovereign"] = { "sovereign",240000,50,3 },
		["thrust"] = { "thrust",300000,15,3 },
		["vader"] = { "vader",280000,15,3 },
		["vindicator"] = { "vindicator",250000,15,3 },
		["vortex"] = { "vortex",300000,15,3 },
		["wolfsbane"] = { "wolfsbane",230000,15,3 },
		["zombiea"] = { "zombiea",230000,15,3 },
		["zombieb"] = { "zombieb",235000,15,3 },
		["blazer"] = { "blazer",200000,15,3 },
		["blazer4"] = { "blazer4",300000,15,3 },
		["deathbike"] = { "deathbike",350000,15,3 },
		["biz25"] = { "biz25",10000,15,3 },
		["150"] = { "150",13000,15,3 },
		["bros60"] = { "bros60",25000,15,3 },
		["xt66"] = { "xt66",40000,15,3 },
		["450crf"] = { "450crf",100000,15,3 },
		["xj"] = { "xj",240000,15,3 },
		["hornet"] = { "hornet",260000,15,3 },
		["dm1200"] = { "dm1200",300000,15,3 },
		["z1000"] = { "z1000",290000,15,3 },
		["r1250"] = { "r1250",320000,15,3 },

		["shotaro"] = { "shotaro",1000000,15,2 }
	},
	["Importados"] = {
		_config = { gtype={"store"},permissions={"carrosvip.permissao"} },
		["ferrariitalia"] = { "ferrari italia",2000000,40,3 },
		["acuransx"] = { "ferrari italia",700000,40,3 },
		["124spider"] = { "ferrari italia",850000,40,3 },
		["paganihuayra"] = { "pagani huayra",1500000,40,3 },
		["fordmustang"] = { "ford mustang",1000000,40,3 },
		["fordmustanggt"] = { "ford mustang gt",1000000,40,3 },
		["nissangtr"] = { "nissan gtr",1150000,40,3 },
		["nissangtrnismo"] = { "nissan gtr nismo",1200000,40,3 },
		["teslaprior"] = { "tesla prior",2000000,50,5 },
		["nissanskyliner34"] = { "skyline r34",1100000,60,3 },
	    ["audirs6"] = { "audi rs6",2000000,40,3 },
		["bmwm3f80"] = { "bmw m3 f80",900000,50,3 },
		["bmwm4gts"] = { "bmw m4 gts",950000,50,3 },
		["lancerevolutionx"] = { "lancer evolution x",850000,50,5 },
		["mercedesamgc63"] = { "mercedes amg c63",850000,50,5 },
		["toyotasupra"] = { "toyota supra",1050000,35,3 },
		["nissan370z"] = { "nissan 370z",550000,30,5 },
		["lamborghinihuracan"] = { "lamborghini huracan",2000000,40,3 },
		["dodgechargersrt"] = { "dodge charger srt",1400000,60,3 },
		["cayenneturbo"] = { "porche cayenne",10000000,60,3 },
		["mazdarx7"] = { "mazda rx7",1000000,40,3 }
	},
	["Motorista"] = {
		_config = { gtype={"rent"} },
		["coach"] = { "coach",0,0,-1 },
		["bus"] = { "bus",0,0,-1 }
	},
	["GADA"] = {
		_config = { gtype={"rent"},permissions={"ada.permissao"} },
		["baller3"] = { "baller",0,0,-1 }
	},
	["GTCP"] = {
		_config = { gtype={"rent"},permissions={"tcp.permissao"} },
		["baller3"] = { "baller",0,0,-1 }
	},
	["GCV"] = {
		_config = { gtype={"rent"},permissions={"cv.permissao"} },
		["baller3"] = { "baller",0,0,-1 }
	},
	["GYakuza"] = {
		_config = { gtype={"rent"},permissions={"yakuza.permissao"} },
		["Cognoscenti"] = { "Cognoscenti",0,0,-1 }
	},
	["GMafia"] = {
		_config = { gtype={"rent"},permissions={"mafia.permissao"} },
		["superd"] = { "Superd",0,0,-1 }
	},
	["GMc"] = {
		_config = { gtype={"rent"},permissions={"motoclub.permissao"} },
		["daemon"] = { "Chopper",0,0,-1 },
		["sanctus"] = { "Caveira",0,0,-1 }
		--["sovereign"] = { "Americana",0,0,-1 }
		--["zombiea"] = { "Chopper",0,0,-1 }
		--["avarus"] = { "Chopper2",0,0,-1 }
		--["daemon2"] = { "Chopper3",0,0,-1 }
		--["hexer"] = { "Chopper4",0,0,-1 }
		--["zombieb"] = { "Chopper5",0,0,-1 }
		--["deathbike"] = { "death bike",0,0,-1 }
	},
	["GISIS"] = {
		_config = { gtype={"rent"},permissions={"isis.permissao"} },
		["windsor2"] = { "windsor",0,0,-1 }
	},
	["Weazel"] = {
		_config = { gtype={"rent"},permissions={"weazel.permissao"} },
		["rumpo"] = { "Van",0,0,-1 }
	},
	["WeazelH"] = {
		_config = { gtype={"rent"},permissions={"weazel.permissao"} },
		["frogger"] = { "Heli",0,0,-1 }
	},
	["AlugarPrancha"] = {
		_config = { gtype={"rent"} },
		["surfboard"] = { "Prancha",0,0,-1 }
	},
	["PoliciaH"] = {
		_config = { gtype={"rent"},permissions={"policiaheli.permissao"} },
		["polmav"] = { "Helicóptero",0,0,-1 }
	},
	["PoliciaH2"] = {
		_config = { gtype={"rent"},permissions={"policiaheli.permissao"} },
		["maverick"] = { "Helicóptero",0,0,-1 }
	},
	["ADM"] = {
		_config = { gtype={"rent"},permissions={"admin.permissao"} },
		["ferrariitalia"] = { "Rifa",0,0,-1 }
	},
	["Paramedico"] = {
		_config = { gtype={"rent"},permissions={"paramedico.permissao"} },
	--	["ambulance"] = { "Ambulância",0,0,-1 },
	--	["motosamu"] = { "Moto",0,0,-1 }
		["ambulance"] = { "Ambulancia",0,0,-1 },
		["ambulancei"] = { "Carro",0,0,-1 },
		["ems_gs1200"] = { "Mota BMW",0,0,-1 },
	},
	["ParamedicoH"] = {
		_config = { gtype={"rent"},permissions={"paramedico.permissao"} },
		["samumav"] = { "Helicóptero",0,0,-1 }
	},
	["Mecanico"] = {
		_config = { gtype={"rent"},permissions={"mecanico.permissao"} },
		["brisa_mvitobenny"] = { "Assistencia",0,0,-1 },
		["flatbed3"] = { "Reboque 1",0,0,-1 },
		["flatbed"] = { "Reboque 2",0,0,-1 }
	},
	["GLosSantos"] = {
		_config = { gtype={"rent"},permissions={"lossantos.permissao"} },
		["brisa_mvito"] = { "Assistencia",0,0,-1 },
		["flatbed3"] = { "Reboque 1",0,0,-1 },
		["flatbed"] = { "Reboque 2",0,0,-1 }
	},
	["Taxista"] = {
		_config = { gtype={"rent"},permissions={"taxista.permissao"} },
		["taxi"] = { "Taxi",0,0,-1 }
	},
	["Carteiro"] = {
		_config = { gtype={"rent"} },
		["boxville2"] = { "Caminhão",0,0,-1 },
		["tribike3"] = { "Bicicleta",0,0,-1 }
	},
	["PMERJ"] = {
		_config = { gtype={"rent"},permissions={"pmerj.permissao"} },
		["voyagepmerj"] = { "Voyage",0,0,-1 },
		["s10pmerj"] = { "S10",0,0,-1 },
		["loganpmerj"] = { "Logan",0,0,-1 },
	    ["corollapmerj"] = { "Corolla",0,0,-1 },
	    ["versapmerj"] = { "Versa",0,0,-1 },
	    ["xrepmerj"] = { "XRE 300",0,0,-1 }
	},
	["PCRJ"] = {
		_config = { gtype={"rent"},permissions={"pcivil.permissao"} },
		["voyagepc"] = { "Voyage",0,0,-1 },
		["corollapc"] = { "Corolla",0,0,-1 },
		["dusterpc"] = { "Duster",0,0,-1 },
		["police"] = { "Skoda",0,0,-1 },
		["pspp_530d"] = { "BMW",0,0,-1 },
		["psp_bmwgs"] = { "Mota BMW",0,0,-1 }
	},
	["PCRJH"] = {
		_config = { gtype={"rent"},permissions={"pcivil.permissao"} },
		["helipc"] = { "Helicóptero",0,0,-1 }
	},
	["PRF"] = {
		_config = { gtype={"rent"},permissions={"prf.permissao"} },
		["trailprf"] = { "Trail",0,0,-1 },
		["corollaprf"] = { "Corolla",0,0,-1 },
		["xreprf"] = { "XRE",0,0,-1 },
		["anpc_l200"] = { "L200",0,0,-1 },
	    ["as350prf"] = { "Helicóptero",0,0,-1 }
	},
	["BOPE"] = {
		_config = { gtype={"rent"},permissions={"bope.permissao"} },
		["trailblazerbope"] = { "Trail Blazer",0,0,-1 },
		["hiluxsrvbope"] = { "Hillux SRV",0,0,-1 },
		["s10bope"] = { "S10",0,0,-1 },
		["riot"] = { "Blindado",0,0,-1 }
	},
	["RECOM"] = {
		_config = { gtype={"rent"},permissions={"recom.permissao"} },
		["frontierrecom"] = { "Frontier",0,0,-1 },
		["frontierrecom2"] = { "Frontier 2",0,0,-1 }
	},
	["BPCHQ"] = {
		_config = { gtype={"rent"},permissions={"bpchq.permissao"} },
		["sw4bpchq"] = { "SW4",0,0,-1 },
		["s10bpchq"] = { "S10",0,0,-1 },
		["xrebpchq"] = { "XRE 300",0,0,-1 }
	},
	["PF"] = {
		_config = { gtype={"rent"},permissions={"pfederal.permissao"} },
		["hiluxpf"] = { "Hilux",0,0,-1 },
		["trailpf"] = { "Trail",0,0,-1 },
		["2015polstang"] = { "Mustang",0,0,-1 }
	},
	["Lixeiro"] = {
		_config = { gtype={"rent"} },
		["trash"] = { "Caminhão 01",0,0,-1 },
		["trash2"] = { "Caminhão 02",0,0,-1 }
	},
	["Bicicletario"] = {
		_config = { gtype={"rent"} },
		["scorcher"] = { "Scorcher",0,0,-1 },
		["tribike"] = { "Tribike Verde",0,0,-1 },
		["tribike2"] = { "Tribike Vermelha",0,0,-1 },
		["fixter"] = { "Fixter",0,0,-1 },
		["cruiser"] = { "Cruiser",0,0,-1 },
		["bmx"] = { "Bmx",0,0,-1 }
	},
	["Embarcacoes"] = {
		_config = { gtype={"rent"} },
		["dinghy"] = { "dinghy",0,0,-1 },
		["jetmax"] = { "jetmax",0,0,-1 },
		["marquis"] = { "marquis",0,0,-1 },
		["seashark3"] = { "seashark3",0,0,-1 },
		["speeder"] = { "speeder",0,0,-1 },
		["speeder2"] = { "speeder2",0,0,-1 },
		["squalo"] = { "squalo",0,0,-1 },
		["suntrap"] = { "suntrap",0,0,-1 },
		["toro"] = { "toro",0,0,-1 },
		["toro2"] = { "toro2",0,0,-1 },
		["tropic"] = { "tropic",0,0,-1 },
		["tropic2"] = { "tropic2",0,0,-1 }
	},
	["Caminhao"] = {
		_config = { gtype={"rent"} },
		["phantom"] = { "camião 01",0,0,-1 },
		["packer"] = { "camião 02",0,0,-1 }
	},
	["VipH"] = {
		_config = { gtype={"rent"},permissions={"platina.permissao"} },
		["volatus"] = { "Helicóptero",0,0,-1 }
	},
	["VipB"] = {
		_config = { gtype={"rent"},permissions={"platina.permissao"} },
		["seashark"] = { "Seashark",0,0,-1 }
	},
	["COMANDANTE"] = {
		_config = { gtype={"rent"},permissions={"cmdgeral.permissao"} },
		["voyagepmerj"] = { "Voyage",0,0,-1 },
		["s10pmerj"] = { "S10",0,0,-1 },
		["loganpmerj"] = { "Logan",0,0,-1 },
	    ["corollapmerj"] = { "Corolla",0,0,-1 },
	    ["versapmerj"] = { "Versa",0,0,-1 },
	    ["xrepmerj"] = { "XRE 300",0,0,-1 },
	    ["frontierrecom"] = { "Frontier",0,0,-1 },
		["frontierrecom2"] = { "Frontier 2",0,0,-1 },
		["sw4bpchq"] = { "SW4",0,0,-1 },
		["s10bpchq"] = { "S10",0,0,-1 },
		["xrebpchq"] = { "XRE 300",0,0,-1 }
	},
	["COMANDANTE2"] = {
		_config = { gtype={"rent"},permissions={"cmdgeral.permissao"} },
		["voyagepc"] = { "Voyage",0,0,-1 },
		["corollapc"] = { "Corolla",0,0,-1 },
		["dusterpc"] = { "Duster",0,0,-1 },
		["police"] = { "Skoda",0,0,-1 },
		["pspp_530d"] = { "BMW",0,0,-1 },
		["psp_bmwgs"] = { "Mota BMW",0,0,-1 }
	},
	["COMANDANTE3"] = {
		_config = { gtype={"rent"},permissions={"cmdgeral.permissao"} },
		["hiluxpf"] = { "Hilux",0,0,-1 },
		["trailpf"] = { "Trail",0,0,-1 },
		["2015polstang"] = { "Mustang",0,0,-1 }
	},
	["COMANDANTE4"] = {
		_config = { gtype={"rent"},permissions={"cmdgeral.permissao"} },
		["trailprf"] = { "Trail",0,0,-1 },
		["corollaprf"] = { "Corolla",0,0,-1 },
		["xreprf"] = { "XRE",0,0,-1 },
		["anpc_l200"] = { "L200",0,0,-1 },
	    ["as350prf"] = { "Helicóptero",0,0,-1 }
	},
	["COMANDANTE5"] = {
		_config = { gtype={"rent"},permissions={"cmdgeral.permissao"} },
		["trailblazerbope"] = { "Trail Blazer",0,0,-1 },
		["hiluxsrvbope"] = { "Hillux SRV",0,0,-1 },
		["s10bope"] = { "S10",0,0,-1 },
		["riot"] = { "Blindado",0,0,-1 }
	},
	["Bennys"] = {
		_config = { gtype={"shop"},permissions={"mecanico.permissao"} },
		_shop = {
			[0] = { "Aerofolio",600,"" },
            [1] = { "Saia Frontal",600,"" },
            [2] = { "Saia Traseira",600,"" },
            [3] = { "Saia",600,"" },
            [4] = { "Escapamento",600,"" },
            [5] = { "Interior",600,"" },
            [6] = { "Grades",600,"" },
            [7] = { "Capo",600,"" },
            [8] = { "Parachoque Direito",600,"" },
            [9] = { "Parachoque Esquerdo",600,"" },
            [10] = { "Tetos",600,"" },
            [11] = { "Motor",600,"" },
            [12] = { "Freios",600,"" },
            [13] = { "Transmissao",600,"" },
            [14] = { "Buzina",600,"" },
            [15] = { "Suspensao",600,"" },
            [18] = { "Turbo",600,"" },
            [20] = { "Fumaca",600,"" },
            [22] = { "Farois",600,"" },
            [23] = { "Rodas",600,"" },
            [24] = { "Rodas Traseiras",600,"" },
            [25] = { "Suporte de Placa",600,"" },
            [27] = { "Trims",600,"" },
            [28] = { "Enfeites",600,"" },
            [29] = { "Painel",600,"" },
            [30] = { "Lanterna",600,"" },
            [31] = { "Macaneta",600,"" },
            [32] = { "Bancos",600,"" },
            [33] = { "Volante",600,"" },
            [34] = { "H Shift",600,"" },
            [35] = { "Placas",600,"" },
            [36] = { "Caixa de Som",600,"" },
            [37] = { "Porta-Malas",600,"" },
            [38] = { "Hidraulica",600,"" },
            [39] = { "Placa de Motor",600,"" },
            [40] = { "Filtro de Ar",600,"" },
            [41] = { "Struts",600,"" },
            [42] = { "Capas",600,"" },
            [43] = { "Antenas",600,"" },
            [44] = { "Extra Trims",600,"" },
            [45] = { "Tanque",600,"" },
            [46] = { "Vidros",600,"" },
            [48] = { "Livery",600,"" },
            [49] = { "Tiras",0,"" }
		}
	},
	["LosSantos"] = {
		_config = { gtype={"shop"},permissions={"lossantos.permissao"} },
		_shop = {
			[0] = { "Aerofolio",600,"" },
            [1] = { "Saia Frontal",600,"" },
            [2] = { "Saia Traseira",600,"" },
            [3] = { "Saia",600,"" },
            [4] = { "Escapamento",600,"" },
            [5] = { "Interior",600,"" },
            [6] = { "Grades",600,"" },
            [7] = { "Capo",600,"" },
            [8] = { "Parachoque Direito",600,"" },
            [9] = { "Parachoque Esquerdo",600,"" },
            [10] = { "Tetos",600,"" },
            [11] = { "Motor",600,"" },
            [12] = { "Freios",600,"" },
            [13] = { "Transmissao",600,"" },
            [14] = { "Buzina",600,"" },
            [15] = { "Suspensao",600,"" },
            [18] = { "Turbo",600,"" },
            [20] = { "Fumaca",600,"" },
            [22] = { "Farois",600,"" },
            [23] = { "Rodas",600,"" },
            [24] = { "Rodas Traseiras",600,"" },
            [25] = { "Suporte de Placa",600,"" },
            [27] = { "Trims",600,"" },
            [28] = { "Enfeites",600,"" },
            [29] = { "Painel",600,"" },
            [30] = { "Lanterna",600,"" },
            [31] = { "Macaneta",600,"" },
            [32] = { "Bancos",600,"" },
            [33] = { "Volante",600,"" },
            [34] = { "H Shift",600,"" },
            [35] = { "Placas",600,"" },
            [36] = { "Caixa de Som",600,"" },
            [37] = { "Porta-Malas",600,"" },
            [38] = { "Hidraulica",600,"" },
            [39] = { "Placa de Motor",600,"" },
            [40] = { "Filtro de Ar",600,"" },
            [41] = { "Struts",600,"" },
            [42] = { "Capas",600,"" },
            [43] = { "Antenas",600,"" },
            [44] = { "Extra Trims",600,"" },
            [45] = { "Tanque",600,"" },
            [46] = { "Vidros",600,"" },
            [48] = { "Livery",600,"" },
            [49] = { "Tiras",0,"" }
		}
	}
}

cfg.garages = {
	{ "Bennys",-222.17573547363,-1324.7077636719,31.00,false,0 },
	{ "Bennys",-222.17573547363,-1329.6424636719,31.00,false,0 },
	{ "Bennys",-198.62796020508,-1324.1959228516,31.12,false,0 },
	{ "Paramedico",295.12,-600.61,43.30,false,2 },
	{ "Mecanico",-178.0387878418,-1327.5278320313,31.29832649231,false,3 },
	{ "GLosSantos",997.39685058594,-2323.3520507812,30.552383422852,false,34 },
	{ "Taxista",900.75750732422,-175.35571289062,73.943687438964,false,4 },
	{ "Carteiro",68.95,126.94,79.20,false,5 },
	{ "Lixeiro",-341.58,-1567.46,25.22,false,6 },
	{ "Motorista",453.89,-600.57,28.58,false,7 },
	{ "Embarcacoes",-1605.19,-1164.37,1.28,false,8 },
	{ "Embarcacoes",-1522.68,1494.92,111.58,false,9 },
	{ "Embarcacoes",1337.36,4269.71,31.50,false,10 },
	{ "Embarcacoes",-192.32,791.54,198.10,false,11 },
	{ "Caminhao",1196.80,-3253.68,7.09,false,12 },
	{ "PoliciaH",-2059.591796875,-446.03790283203,22.616851806641,false,13 },
	{ "ParamedicoH",338.37,-586.76,74.16,false,14 },

	{ "Bicicletario",-1032.1600341797,-2729.8488769531,13.756636619568,false,16 },
	{ "PoliciaH2",-2059.591796875,-446.03790283203,22.616851806641,false,19 },

	{ "PCRJ",458.33,-1008.09,28.27,false,26 },
	{ "PCRJH",463.24,-982.53,43.69,false,28 },

	{ "PMERJ",-2047.1481933594,-461.15744018555,12.240759849548,false,18 },
	{ "RECOM",-2047.1481933594,-461.15744018555,12.240759849548,false,1 },
	{ "BPCHQ",-2047.1481933594,-461.15744018555,12.240759849548,false,27 },

	{ "COMANDANTE",-2047.1481933594,-461.15744018555,12.240759849548,false,29 },
	{ "COMANDANTE2", 458.33,-1008.09,28.27,false,30 },
	{ "COMANDANTE3",484.80126953125,-1094.2241210938,29.396663665771,false,31 },
	{ "COMANDANTE4",-2513.8081054688,3579.8112792969,16.49803352356,false,32 },
	{ "COMANDANTE5",833.75177001953,147.97370910645,82.810539245605,false,33 },

	{ "PF",484.80126953125,-1094.2241210938,29.396663665771,false,20 },
	{ "BOPE",833.75177001953,147.97370910645,82.810539245605,false,17 },
	{ "PRF",-2513.8081054688,3579.8112792969,16.49803352356,false,21 },
	{ "ADM",156.13735961914,-987.23797607422,30.091920852661,false,22 },
	{ "Weazel",-537.10369873047,-886.54431152344,25.208868026733,false,23 },
	{ "WeazelH",-569.55407714844,-925.95837402344,36.833312988281,false,24 },
	{ "AlugarPrancha",-1605.9028320313,-1160.7105712891,1.3351956605911,false,25 },
--	{ "Motos",-43.149250030518,-1097.6481933594,26.422340393066,false,29 },
--	{ "Carros",-39.046558380127,-1099.2239990234,26.422340393066,false,29 },
--	{ "Garagem",-161.09436035156,928.28198242188,235.65574645996,false,71 },
--	{ "Vans",152.89646911621,-3209.0246582031,5.9022736549377,true,78 },
--  { "VipB",-1268.9415283203,-1836.4005126953,0.76460218429565,false,72 },
	{ "LosSantos",1019.0989990234,-2309.5920410156,30.52,false,0 },
	{ "LosSantos",1019.0209350586,-2315.94140625,30.54,false,0 },
	{ "LosSantos",1018.4183959961,-2322.0053710938,30.54,false,0 },
	{ "LosSantos",1018.122253418,-2328.1635742188,30.54,false,0 },
	{ "GADA",381.0712890625,-1835.7403564454,28.1506690979,false,35 },
	{ "GTCP",1370.1237792968,-724.41149902344,67.190299987792,false,36 },
	{ "GCV",1986.3276367188,-90.116004943848,211.49430847168,false,37 },
	{ "GYakuza",-960.01611328125,-1472.4816894532,5.1692581176758,false,38 },
	{ "GMafia",-2670.0415039062,1302.3431396484,147.4449005127,false,39 },
	{ "GMc",884.94445800782,-2104.509765625,30.761863708496,false,40 },
	{ "GISIS",-1635.7451171875,-3009.5122070312,-78.143661499024,false,41 }
}

return cfg