//Fallout 13 specific areas directory

/area
	var/open_space = FALSE
	var/list/ambientmusic = list('sound/misc/null.ogg')
	ambience = list('sound/f13ambience/wasteland.ogg')
	var/list/ambientsounds = list()
	var/environment = -1
	var/grow_chance = 100
	var/roof = FALSE

/area/f13
	name = "error"
	icon_state = "error"
	icon = 'icons/fallout/turfs/areas.dmi'
	has_gravity = 1
//	requires_power = 0

//Wasteland generic areas

//Ambigen sound tips for ambientsounds: 1 - 2 : outside the ruined buildings, 3 - 9 : inside the wasteland buildings, 10 - 14 : vaults and bunkers specific, 15-19 : caves

/area/f13/wasteland
	name = "Пустоши"
	icon_state = "wasteland"
	ambience = list('sound/f13ambience/wasteland.ogg')
	ambientmusic = list('sound/f13music/fo3_explore_01.ogg', 'sound/f13music/fo3_explore_02.ogg', 'sound/f13music/fo3_explore_03.ogg', 'sound/f13music/fo3_explore_04.ogg', 'sound/f13music/fo3_explore_05.ogg', 'sound/f13music/fo3_explore_06.ogg', 'sound/f13music/fo3_explore_07.ogg')
	//ambientmusic = list('sound/f13music/fo2_wasteland.ogg','sound/f13music/fo2_desert.ogg','sound/f13music/fo2_world.ogg','sound/misc/null.ogg')
	ambientsounds = list('sound/f13ambience/battle_1.ogg','sound/f13ambience/battle_2.ogg','sound/f13ambience/battle_3.ogg', \
	'sound/f13ambience/rattlesnake_1.ogg','sound/f13ambience/rattlesnake_2.ogg','sound/f13ambience/rattlesnake_3.ogg','sound/f13ambience/bird_1.ogg','sound/f13ambience/bird_2.ogg','sound/f13ambience/bird_3.ogg','sound/f13ambience/bird_4.ogg')
	outdoors = 1
	open_space = 1
	blob_allowed = 0
	environment = 19
	grow_chance = 45

/area/f13/wasteland/hologram
	name = "Hologram"
	icon_state = "DJ"
	outdoors = 1
	open_space = 1

/area/f13/wasteland/hologram/h1
	name = "Hologram 1"
/area/f13/wasteland/hologram/h2
	name = "Hologram 2"
	outdoors = 0
	open_space = 0
/area/f13/wasteland/hologram/h3
	name = "Hologram 3"
	outdoors = 0
	open_space = 0
/area/f13/wasteland/hologram/h4
	name = "Hologram 4"
/area/f13/wasteland/hologram/h5
	name = "Hologram 5"
/area/f13/wasteland/hologram/h6
	name = "Hologram 6"
/area/f13/wasteland/hologram/h7
	name = "Hologram 7"
/area/f13/wasteland/hologram/h8
	name = "Hologram 8"
/area/f13/wasteland/hologram/h9
	name = "Hologram 9"
/area/f13/wasteland/hologram/h10
	name = "Hologram 10"
/area/f13/wasteland/hologram/h11
	name = "Hologram 11"
/area/f13/wasteland/hologram/h12
	name = "Hologram 12"
/area/f13/wasteland/hologram/h13
	name = "Hologram 13"
/area/f13/wasteland/hologram/h14
	name = "Hologram 14"
/area/f13/wasteland/hologram/h15
	name = "Hologram 15"

/area/f13/forest
	name = "Лес"
	icon_state = "forest"
	ambience = list('sound/f13ambience/wasteland.ogg')
	ambientmusic = list('sound/f13music/fo3_explore_01.ogg', 'sound/f13music/fo3_explore_02.ogg', 'sound/f13music/fo3_explore_03.ogg', 'sound/f13music/fo3_explore_04.ogg', 'sound/f13music/fo3_explore_05.ogg', 'sound/f13music/fo3_explore_06.ogg', 'sound/f13music/fo3_explore_07.ogg')
	//ambientmusic = list('sound/f13music/fo2_wasteland.ogg','sound/f13music/fo2_chapel.ogg','sound/f13music/fo2_world.ogg','sound/misc/null.ogg')
	ambientsounds = list('sound/f13ambience/bird_1.ogg','sound/f13ambience/bird_2.ogg','sound/f13ambience/bird_3.ogg','sound/f13ambience/bird_4.ogg','sound/f13ambience/bird_5.ogg','sound/f13ambience/bird_6.ogg','sound/f13ambience/bird_7.ogg','sound/f13ambience/bird_8.ogg', \
	'sound/f13ambience/rattlesnake_1.ogg','sound/f13ambience/rattlesnake_2.ogg','sound/f13ambience/rattlesnake_3.ogg')
	outdoors = 1
	open_space = 1
	blob_allowed = 0
	environment = 15
	grow_chance = 75

/area/f13/ruins
	name = "Руины"
	icon_state = "ruins"
	ambience = list('sound/f13ambience/wasteland.ogg')
	ambientmusic = list('sound/f13music/fo3_dungeon_01.ogg', 'sound/f13music/fo3_dungeon_02.ogg', 'sound/f13music/fo3_dungeon_03.ogg', 'sound/f13music/fo3_dungeon_04.ogg', 'sound/f13music/fo3_dungeon_05.ogg')
	//ambientmusic = list('sound/f13music/fo2_ruins.ogg','sound/f13music/fo2_necropolis.ogg','sound/f13music/fo2_raider.ogg','sound/misc/null.ogg')
	ambientsounds = list('sound/f13ambience/ambigen_1.ogg','sound/f13ambience/ambigen_2.ogg','sound/f13ambience/dog_distant_1.ogg','sound/f13ambience/dog_distant_2.ogg','sound/f13ambience/dog_distant_3.ogg', \
	'sound/f13ambience/rattlesnake_1.ogg','sound/f13ambience/rattlesnake_2.ogg','sound/f13ambience/rattlesnake_3.ogg')
	outdoors = 1
	open_space = 1
	blob_allowed = 0
	environment = 5
	grow_chance = 5

/area/f13/shack
	name = "Лавка"
	icon_state = "shack"
	ambience = list('sound/f13ambience/shack.ogg')
	ambientmusic = list('sound/f13music/fo3_dungeon_01.ogg', 'sound/f13music/fo3_dungeon_02.ogg', 'sound/f13music/fo3_dungeon_03.ogg', 'sound/f13music/fo3_dungeon_04.ogg', 'sound/f13music/fo3_dungeon_05.ogg')
	//ambientmusic = list('sound/f13music/fo2_ruins.ogg','sound/f13music/fo2_city.ogg','sound/misc/null.ogg')
	ambientsounds = list('sound/f13ambience/ambigen_3.ogg','sound/f13ambience/ambigen_4.ogg','sound/f13ambience/ambigen_5.ogg', \
	'sound/f13ambience/ambigen_6.ogg','sound/f13ambience/ambigen_7.ogg','sound/f13ambience/ambigen_8.ogg','sound/f13ambience/ambigen_15.ogg','sound/f13ambience/ambigen_16.ogg')
	environment = 2
	grow_chance = 5

/area/f13/building
	name = "Строение"
	icon_state = "building"
	ambience = list('sound/f13ambience/building.ogg')
	ambientmusic = list('sound/f13music/fo3_dungeon_01.ogg', 'sound/f13music/fo3_dungeon_02.ogg', 'sound/f13music/fo3_dungeon_03.ogg', 'sound/f13music/fo3_dungeon_04.ogg', 'sound/f13music/fo3_dungeon_05.ogg')
	//ambientmusic = list('sound/f13music/fo2_tunnels.ogg','sound/f13music/fo2_ruins.ogg','sound/misc/null.ogg')
	ambientsounds = list('sound/f13ambience/ambigen_3.ogg','sound/f13ambience/ambigen_4.ogg','sound/f13ambience/ambigen_5.ogg', \
	'sound/f13ambience/ambigen_6.ogg','sound/f13ambience/ambigen_7.ogg','sound/f13ambience/ambigen_8.ogg','sound/f13ambience/ambigen_9.ogg')
	environment = 2
	grow_chance = 5
	roof = TRUE

/area/f13/powerstation
	name = "Электростанция"
	icon_state = "powerstation"
	ambience = list('sound/f13ambience/building.ogg')
	ambientmusic = list('sound/f13music/fo3_dungeon_01.ogg', 'sound/f13music/fo3_dungeon_02.ogg', 'sound/f13music/fo3_dungeon_03.ogg', 'sound/f13music/fo3_dungeon_04.ogg', 'sound/f13music/fo3_dungeon_05.ogg')
	//ambientmusic = list('sound/f13music/fo2_tunnels.ogg','sound/f13music/fo2_ruins.ogg','sound/misc/null.ogg')
	ambientsounds = list('sound/f13ambience/ambigen_3.ogg','sound/f13ambience/ambigen_4.ogg','sound/f13ambience/ambigen_5.ogg', \
	'sound/f13ambience/ambigen_6.ogg','sound/f13ambience/ambigen_7.ogg','sound/f13ambience/ambigen_8.ogg','sound/f13ambience/ambigen_9.ogg')
	environment = 2
	grow_chance = 5
	roof = TRUE

/area/f13/fabric
	name = "Фабрика"
	icon_state = "fabric"
	ambience = list('sound/f13ambience/building.ogg')
	ambientmusic = list('sound/f13music/fo3_dungeon_01.ogg', 'sound/f13music/fo3_dungeon_02.ogg', 'sound/f13music/fo3_dungeon_03.ogg', 'sound/f13music/fo3_dungeon_04.ogg', 'sound/f13music/fo3_dungeon_05.ogg')
	//ambientmusic = list('sound/f13music/fo2_tunnels.ogg','sound/f13music/fo2_ruins.ogg','sound/misc/null.ogg')
	ambientsounds = list('sound/f13ambience/ambigen_3.ogg','sound/f13ambience/ambigen_4.ogg','sound/f13ambience/ambigen_5.ogg', \
	'sound/f13ambience/ambigen_6.ogg','sound/f13ambience/ambigen_7.ogg','sound/f13ambience/ambigen_8.ogg','sound/f13ambience/ambigen_9.ogg')
	environment = 2
	grow_chance = 5
	roof = TRUE

/area/f13/police
	name = "Полиция"
	icon_state = "police"
	ambience = list('sound/f13ambience/building.ogg')
	ambientmusic = list('sound/f13music/fo3_dungeon_01.ogg', 'sound/f13music/fo3_dungeon_02.ogg', 'sound/f13music/fo3_dungeon_03.ogg', 'sound/f13music/fo3_dungeon_04.ogg', 'sound/f13music/fo3_dungeon_05.ogg')
	//ambientmusic = list('sound/f13music/fo2_tunnels.ogg','sound/f13music/fo2_ruins.ogg','sound/misc/null.ogg')
	ambientsounds = list('sound/f13ambience/ambigen_3.ogg','sound/f13ambience/ambigen_4.ogg','sound/f13ambience/ambigen_5.ogg', \
	'sound/f13ambience/ambigen_6.ogg','sound/f13ambience/ambigen_7.ogg','sound/f13ambience/ambigen_8.ogg','sound/f13ambience/ambigen_9.ogg')
	environment = 2
	grow_chance = 5
	roof = TRUE

/area/f13/farm
	name = "Ферма"
	icon_state = "farm"
	ambience = list('sound/f13ambience/wasteland.ogg')
	ambientmusic = list('sound/f13music/fo3_explore_01.ogg', 'sound/f13music/fo3_explore_02.ogg', 'sound/f13music/fo3_explore_03.ogg', 'sound/f13music/fo3_explore_04.ogg', 'sound/f13music/fo3_explore_05.ogg', 'sound/f13music/fo3_explore_06.ogg', 'sound/f13music/fo3_explore_07.ogg')
	//ambientmusic = list('sound/f13music/fo2_village.ogg','sound/f13music/fo2_wasteland.ogg','sound/f13music/fo2_chapel.ogg','sound/misc/null.ogg')
	ambientsounds = list('sound/f13ambience/dog_distant_1.ogg','sound/f13ambience/dog_distant_2.ogg','sound/f13ambience/dog_distant_3.ogg', \
	'sound/f13ambience/bird_1.ogg','sound/f13ambience/bird_2.ogg','sound/f13ambience/bird_3.ogg','sound/f13ambience/bird_4.ogg','sound/f13ambience/bird_5.ogg','sound/f13ambience/bird_6.ogg','sound/f13ambience/bird_7.ogg','sound/f13ambience/bird_8.ogg')
	outdoors = 1
	open_space = 1
	blob_allowed = 0
	environment = 15
	grow_chance = 50

/area/f13/tribe
	name = "Племя"
	icon_state = "tribe"
	ambience = list('sound/f13ambience/wasteland.ogg')
	ambientmusic = list('sound/f13music/fo3_explore_01.ogg', 'sound/f13music/fo3_explore_02.ogg', 'sound/f13music/fo3_explore_03.ogg', 'sound/f13music/fo3_explore_04.ogg', 'sound/f13music/fo3_explore_05.ogg', 'sound/f13music/fo3_explore_06.ogg', 'sound/f13music/fo3_explore_07.ogg')
	//ambientmusic = list('sound/f13music/fo2_village.ogg','sound/f13music/fo2_wasteland.ogg','sound/misc/null.ogg')
	ambientsounds = list('sound/f13ambience/dog_distant_1.ogg','sound/f13ambience/dog_distant_2.ogg','sound/f13ambience/dog_distant_3.ogg', \
	'sound/f13ambience/bird_1.ogg','sound/f13ambience/bird_2.ogg','sound/f13ambience/bird_3.ogg','sound/f13ambience/bird_4.ogg','sound/f13ambience/bird_5.ogg','sound/f13ambience/bird_6.ogg','sound/f13ambience/bird_7.ogg','sound/f13ambience/bird_8.ogg')
	outdoors = 1
	open_space = 1
	blob_allowed = 0
	environment = 15
	grow_chance = 5

/area/f13/village
	name = "Деревня"
	icon_state = "village"
	ambience = list('sound/f13ambience/wasteland.ogg')
	ambientmusic = list('sound/f13music/fo3_explore_01.ogg', 'sound/f13music/fo3_explore_02.ogg', 'sound/f13music/fo3_explore_03.ogg', 'sound/f13music/fo3_explore_04.ogg', 'sound/f13music/fo3_explore_05.ogg', 'sound/f13music/fo3_explore_06.ogg', 'sound/f13music/fo3_explore_07.ogg')
	//ambientmusic = list('sound/f13music/fo2_village.ogg','sound/f13music/fo2_wasteland.ogg','sound/misc/null.ogg')
	ambientsounds = list('sound/f13ambience/dog_distant_1.ogg','sound/f13ambience/dog_distant_2.ogg','sound/f13ambience/dog_distant_3.ogg', \
	'sound/f13ambience/bird_1.ogg','sound/f13ambience/bird_2.ogg','sound/f13ambience/bird_3.ogg','sound/f13ambience/bird_4.ogg')
	outdoors = 1
	open_space = 1
	blob_allowed = 0
	environment = 15
	grow_chance = 5

/area/f13/outpost
	name = "Блокпост"
	icon_state = "outpost"
	ambience = list('sound/f13ambience/wasteland.ogg')
	ambientmusic = list('sound/f13music/fo3_explore_01.ogg', 'sound/f13music/fo3_explore_02.ogg', 'sound/f13music/fo3_explore_03.ogg', 'sound/f13music/fo3_explore_04.ogg', 'sound/f13music/fo3_explore_05.ogg', 'sound/f13music/fo3_explore_06.ogg', 'sound/f13music/fo3_explore_07.ogg')
	//ambientmusic = list('sound/f13music/fo2_outpost.ogg','sound/f13music/fo2_brotherhood.ogg','sound/misc/null.ogg')
	ambientsounds = list('sound/f13ambience/battle_1.ogg','sound/f13ambience/battle_2.ogg','sound/f13ambience/battle_3.ogg', \
	'sound/f13ambience/bird_1.ogg','sound/f13ambience/bird_2.ogg','sound/f13ambience/bird_3.ogg','sound/f13ambience/bird_4.ogg')
	outdoors = 1
	open_space = 1
	blob_allowed = 0
	environment = 16
	grow_chance = 5

/area/f13/hub
	name = "Хаб"
	icon_state = "hub"
	ambience = list('sound/f13ambience/wasteland.ogg')
	ambientmusic = list('sound/f13music/fo3_explore_01.ogg', 'sound/f13music/fo3_explore_02.ogg', 'sound/f13music/fo3_explore_03.ogg', 'sound/f13music/fo3_explore_04.ogg', 'sound/f13music/fo3_explore_05.ogg', 'sound/f13music/fo3_explore_06.ogg', 'sound/f13music/fo3_explore_07.ogg')
	//ambientmusic = list('sound/f13music/fo2_hub.ogg','sound/f13music/fo2_village.ogg','sound/misc/null.ogg')
	ambientsounds = list('sound/f13ambience/dog_distant_1.ogg','sound/f13ambience/dog_distant_2.ogg','sound/f13ambience/dog_distant_3.ogg', \
	'sound/f13ambience/rattlesnake_1.ogg','sound/f13ambience/rattlesnake_2.ogg','sound/f13ambience/rattlesnake_3.ogg')
	outdoors = 1
	open_space = 1
	blob_allowed = 0
	environment = 16
	grow_chance = 5

/area/f13/city
	name = "Город"
	icon_state = "city"
	ambience = list('sound/f13ambience/wasteland.ogg')
	ambientmusic = list('sound/f13music/fo3_explore_01.ogg', 'sound/f13music/fo3_explore_02.ogg', 'sound/f13music/fo3_explore_03.ogg', 'sound/f13music/fo3_explore_04.ogg', 'sound/f13music/fo3_explore_05.ogg', 'sound/f13music/fo3_explore_06.ogg', 'sound/f13music/fo3_explore_07.ogg')
	//ambientmusic = list('sound/f13music/fo2_city.ogg','sound/f13music/fo2_hub.ogg','sound/misc/null.ogg')
	ambientsounds = list('sound/f13ambience/dog_distant_1.ogg','sound/f13ambience/dog_distant_2.ogg','sound/f13ambience/dog_distant_3.ogg', \
	'sound/f13ambience/ambigen_1.ogg','sound/f13ambience/ambigen_2.ogg')
	outdoors = 1
	open_space = 1
	blob_allowed = 0
	environment = 16
	grow_chance = 5

/area/f13/citycaves
	name = "Городские пещеры"
	icon_state = "citycaves"
	ambience = list('sound/f13ambience/cave.ogg')
	ambientmusic = list('sound/f13music/fo3_dungeon_01.ogg', 'sound/f13music/fo3_dungeon_02.ogg', 'sound/f13music/fo3_dungeon_03.ogg', 'sound/f13music/fo3_dungeon_04.ogg', 'sound/f13music/fo3_dungeon_05.ogg','sound/f13ambience/vaultofthefuture.ogg')
	//ambientmusic = list('sound/f13music/fo2_city.ogg','sound/f13music/fo2_hub.ogg','sound/misc/null.ogg')
	ambientsounds = list('sound/f13ambience/ambigen_15.ogg','sound/f13ambience/ambigen_16.ogg','sound/f13ambience/dog_distant_1.ogg','sound/f13ambience/dog_distant_2.ogg','sound/f13ambience/dog_distant_3.ogg')
	environment = 8
	grow_chance = 25

/area/f13/chapel
	name = "Капелла"
	icon_state = "chapel"
	ambience = list('sound/f13ambience/building.ogg')
	ambientmusic = list('sound/f13music/fo3_explore_01.ogg', 'sound/f13music/fo3_explore_02.ogg', 'sound/f13music/fo3_explore_03.ogg', 'sound/f13music/fo3_explore_04.ogg', 'sound/f13music/fo3_explore_05.ogg', 'sound/f13music/fo3_explore_06.ogg', 'sound/f13music/fo3_explore_07.ogg')
	//ambientmusic = list('sound/f13music/fo2_chapel.ogg','sound/misc/null.ogg')
	ambientsounds = list('sound/ambience/ambicha1.ogg','sound/ambience/ambicha2.ogg','sound/ambience/ambicha3.ogg','sound/ambience/ambicha4.ogg')
	environment = 5
	grow_chance = 5
	roof = TRUE

/area/f13/bar
	name = "Бар"
	icon_state = "bar"
	ambience = list('sound/f13ambience/building.ogg')
	ambientmusic = list('sound/f13music/fo3_explore_01.ogg', 'sound/f13music/fo3_explore_02.ogg', 'sound/f13music/fo3_explore_03.ogg', 'sound/f13music/fo3_explore_04.ogg', 'sound/f13music/fo3_explore_05.ogg', 'sound/f13music/fo3_explore_06.ogg', 'sound/f13music/fo3_explore_07.ogg')
	//ambientmusic = list('sound/f13music/fo2_bar.ogg','sound/f13music/fo2_outpost.ogg','sound/misc/null.ogg')
	environment = 2
	grow_chance = 5
	roof = TRUE

/area/f13/casino
	name = "Казино"
	icon_state = "casino"
	ambience = list('sound/f13ambience/warehouse.ogg')
	ambientmusic = list('sound/f13music/fo3_explore_01.ogg', 'sound/f13music/fo3_explore_02.ogg', 'sound/f13music/fo3_explore_03.ogg', 'sound/f13music/fo3_explore_04.ogg', 'sound/f13music/fo3_explore_05.ogg', 'sound/f13music/fo3_explore_06.ogg', 'sound/f13music/fo3_explore_07.ogg')
	//ambientmusic = list('sound/f13music/fo2_bar.ogg','sound/f13music/fo2_raiders.ogg','sound/misc/null.ogg')
	ambientsounds = list('sound/f13ambience/ambigen_3.ogg','sound/f13ambience/ambigen_4.ogg','sound/f13ambience/ambigen_5.ogg', \
	'sound/f13ambience/ambigen_6.ogg','sound/f13ambience/ambigen_7.ogg','sound/f13ambience/ambigen_8.ogg')
	environment = 6
	grow_chance = 5
	roof = TRUE

/area/f13/clinic
	name = "Клиника"
	icon_state = "clinic"
	ambience = list('sound/f13ambience/warehouse.ogg')
	ambientmusic = list('sound/f13music/fo3_dungeon_01.ogg', 'sound/f13music/fo3_dungeon_02.ogg', 'sound/f13music/fo3_dungeon_03.ogg', 'sound/f13music/fo3_dungeon_04.ogg', 'sound/f13music/fo3_dungeon_05.ogg')
//	ambientmusic = list('sound/f13music/fo2_necropolis.ogg','sound/f13music/fo2_ruins.ogg','sound/f13music/fo2_tunnels.ogg','sound/f13music/fo2_caves.ogg','sound/f13music/fo2_desert.ogg','sound/misc/null.ogg')
	ambientsounds = list('sound/f13ambience/ambigen_1.ogg','sound/f13ambience/ambigen_2.ogg','sound/f13ambience/ambigen_3.ogg','sound/f13ambience/ambigen_4.ogg', \
	'sound/f13ambience/ambigen_5.ogg','sound/f13ambience/ambigen_6.ogg','sound/f13ambience/ambigen_7.ogg','sound/f13ambience/ambigen_8.ogg','sound/f13ambience/ambigen_9.ogg','sound/f13ambience/ambigen_17.ogg','sound/f13ambience/ambigen_18.ogg','sound/f13ambience/ambigen_19.ogg')
	environment = 6
	grow_chance = 5
	roof = TRUE

/area/f13/city_north
	name = "Север города"
	icon_state = "city_north"
	ambience = list('sound/f13ambience/warehouse.ogg')
	ambientmusic = list('sound/f13music/fo3_explore_01.ogg', 'sound/f13music/fo3_explore_02.ogg', 'sound/f13music/fo3_explore_03.ogg', 'sound/f13music/fo3_explore_04.ogg', 'sound/f13music/fo3_explore_05.ogg', 'sound/f13music/fo3_explore_06.ogg', 'sound/f13music/fo3_explore_07.ogg')
//	ambientmusic = list('sound/f13music/fo2_city.ogg','sound/f13music/fo2_ruins.ogg','sound/misc/null.ogg')
	ambientsounds = list('sound/f13ambience/ambigen_3.ogg','sound/f13ambience/ambigen_4.ogg','sound/f13ambience/ambigen_5.ogg', \
	'sound/f13ambience/ambigen_6.ogg','sound/f13ambience/ambigen_7.ogg','sound/f13ambience/ambigen_8.ogg')
	environment = 2
	grow_chance = 5
	roof = TRUE

/area/f13/office
	name = "Офисы"
	icon_state = "office"
	ambience = list('sound/f13ambience/warehouse.ogg')
	ambientmusic = list('sound/f13music/fo3_explore_01.ogg', 'sound/f13music/fo3_explore_02.ogg', 'sound/f13music/fo3_explore_03.ogg', 'sound/f13music/fo3_explore_04.ogg', 'sound/f13music/fo3_explore_05.ogg', 'sound/f13music/fo3_explore_06.ogg', 'sound/f13music/fo3_explore_07.ogg')
//	ambientmusic = list('sound/f13music/fo2_city.ogg','sound/f13music/fo2_ruins.ogg','sound/misc/null.ogg')
	ambientsounds = list('sound/f13ambience/ambigen_3.ogg','sound/f13ambience/ambigen_4.ogg','sound/f13ambience/ambigen_5.ogg', \
	'sound/f13ambience/ambigen_6.ogg','sound/f13ambience/ambigen_7.ogg','sound/f13ambience/ambigen_8.ogg')
	environment = 2
	grow_chance = 5
	roof = TRUE

/area/f13/city_center
	name = "Центр Города"
	icon_state = "city_center"
	ambience = list('sound/f13ambience/warehouse.ogg')
	ambientmusic = list('sound/f13music/fo3_explore_01.ogg', 'sound/f13music/fo3_explore_02.ogg', 'sound/f13music/fo3_explore_03.ogg', 'sound/f13music/fo3_explore_04.ogg', 'sound/f13music/fo3_explore_05.ogg', 'sound/f13music/fo3_explore_06.ogg', 'sound/f13music/fo3_explore_07.ogg')
//	ambientmusic = list('sound/f13music/fo2_city.ogg','sound/f13music/fo2_ruins.ogg','sound/misc/null.ogg')
	ambientsounds = list('sound/f13ambience/ambigen_3.ogg','sound/f13ambience/ambigen_4.ogg','sound/f13ambience/ambigen_5.ogg', \
	'sound/f13ambience/ambigen_6.ogg','sound/f13ambience/ambigen_7.ogg','sound/f13ambience/ambigen_8.ogg')
	environment = 2
	grow_chance = 5
	roof = TRUE

/area/f13/city_south
	name = "Юг города"
	icon_state = "city_south"
	ambience = list('sound/f13ambience/warehouse.ogg')
	ambientmusic = list('sound/f13music/fo3_explore_01.ogg', 'sound/f13music/fo3_explore_02.ogg', 'sound/f13music/fo3_explore_03.ogg', 'sound/f13music/fo3_explore_04.ogg', 'sound/f13music/fo3_explore_05.ogg', 'sound/f13music/fo3_explore_06.ogg', 'sound/f13music/fo3_explore_07.ogg')
//	ambientmusic = list('sound/f13music/fo2_city.ogg','sound/f13music/fo2_ruins.ogg','sound/misc/null.ogg')
	ambientsounds = list('sound/f13ambience/ambigen_3.ogg','sound/f13ambience/ambigen_4.ogg','sound/f13ambience/ambigen_5.ogg', \
	'sound/f13ambience/ambigen_6.ogg','sound/f13ambience/ambigen_7.ogg','sound/f13ambience/ambigen_8.ogg')
	environment = 2
	grow_chance = 5
	roof = TRUE

/area/f13/store
	name = "Магазин"
	icon_state = "store"
	ambience = list('sound/f13ambience/building.ogg')
	ambientmusic = list('sound/f13music/fo3_explore_01.ogg', 'sound/f13music/fo3_explore_02.ogg', 'sound/f13music/fo3_explore_03.ogg', 'sound/f13music/fo3_explore_04.ogg', 'sound/f13music/fo3_explore_05.ogg', 'sound/f13music/fo3_explore_06.ogg', 'sound/f13music/fo3_explore_07.ogg')
//	ambientmusic = list('sound/f13music/fo2_bar.ogg','sound/f13music/fo2_outpost.ogg','sound/misc/null.ogg')
	ambientsounds = list('sound/f13ambience/ambigen_3.ogg','sound/f13ambience/ambigen_4.ogg','sound/f13ambience/ambigen_5.ogg', \
	'sound/f13ambience/ambigen_6.ogg','sound/f13ambience/ambigen_7.ogg','sound/f13ambience/ambigen_8.ogg')
	environment = 4
	grow_chance = 5
	roof = TRUE

/area/f13/bunker
	name = "Бункер"
	icon_state = "bunker"
	ambience = list('sound/f13ambience/building.ogg')
	ambientmusic = list('sound/f13music/fo3_dungeon_01.ogg', 'sound/f13music/fo3_dungeon_02.ogg', 'sound/f13music/fo3_dungeon_03.ogg', 'sound/f13music/fo3_dungeon_04.ogg', 'sound/f13music/fo3_dungeon_05.ogg')
	//ambientmusic = list('sound/f13music/fo2_vats.ogg','sound/f13music/fo2_outpost.ogg','sound/f13music/fo2_ruins.ogg','sound/misc/null.ogg')
	ambientsounds = list('sound/f13ambience/ambigen_1.ogg','sound/f13ambience/ambigen_2.ogg','sound/f13ambience/ambigen_9.ogg','sound/f13ambience/ambigen_10.ogg','sound/f13ambience/ambigen_11.ogg', \
	'sound/f13ambience/ambigen_12.ogg','sound/f13ambience/ambigen_13.ogg')
	environment = 11
	grow_chance = 5
	roof = TRUE

/area/f13/tunnel
	name = "Туннель"
	icon_state = "tunnel"
	ambience = list('sound/f13ambience/cave.ogg')
	ambientmusic = list('sound/f13music/fo3_dungeon_01.ogg', 'sound/f13music/fo3_dungeon_02.ogg', 'sound/f13music/fo3_dungeon_03.ogg', 'sound/f13music/fo3_dungeon_04.ogg', 'sound/f13music/fo3_dungeon_05.ogg')

	//ambientmusic = list('sound/f13music/fo2_tunnels.ogg','sound/f13music/fo2_caves.ogg','sound/f13music/fo2_vats.ogg','sound/misc/null.ogg')
	ambientsounds = list('sound/f13ambience/ambigen_9.ogg','sound/f13ambience/ambigen_12.ogg','sound/f13ambience/ambigen_15.ogg','sound/f13ambience/ambigen_16.ogg','sound/f13effects/steam_short.ogg','sound/f13effects/steam_long.ogg')
	environment = 21
	grow_chance = 25
	roof = TRUE

/area/f13/sewer
	name = "Канализация"
	icon_state = "sewer"
	ambience = list('sound/f13ambience/sewer.ogg')
	ambientmusic = list('sound/f13music/fo3_dungeon_01.ogg','sound/f13ambience/vaultofthefuture.ogg', 'sound/f13music/fo3_dungeon_02.ogg', 'sound/f13music/fo3_dungeon_03.ogg', 'sound/f13music/fo3_dungeon_04.ogg', 'sound/f13music/fo3_dungeon_05.ogg')
//	ambientmusic = list('sound/f13music/fo2_tunnels.ogg','sound/f13music/fo2_caves.ogg','sound/f13music/fo2_desert.ogg','sound/f13music/fo2_vats.ogg','sound/misc/null.ogg')
	ambientsounds = list('sound/f13ambience/ambigen_9.ogg','sound/f13effects/steam_short.ogg','sound/f13effects/steam_long.ogg')
	environment = 21
	grow_chance = 50
	roof = TRUE

/area/f13/caves
	name = "Пещеры"
	icon_state = "caves"
	ambience = list('sound/f13ambience/cave.ogg')
	ambientmusic = list('sound/f13music/fo3_dungeon_01.ogg', 'sound/f13ambience/vaultofthefuture.ogg', 'sound/f13music/fo3_dungeon_02.ogg', 'sound/f13music/fo3_dungeon_03.ogg', 'sound/f13music/fo3_dungeon_04.ogg', 'sound/f13music/fo3_dungeon_05.ogg')
//	ambientmusic = list('sound/f13music/fo2_caves.ogg','sound/f13music/fo2_desert.ogg','sound/f13music/fo2_necropolis.ogg','sound/misc/null.ogg')
	ambientsounds = list('sound/f13ambience/ambigen_15.ogg','sound/f13ambience/ambigen_16.ogg','sound/f13ambience/ambigen_17.ogg','sound/f13ambience/ambigen_18.ogg','sound/f13ambience/ambigen_19.ogg')
	environment = 8
	grow_chance = 75
	roof = TRUE

/area/f13/subway
	name = "Метро"
	icon_state = "subway"
	ambience = list('sound/f13ambience/cave.ogg')
	ambientmusic = list('sound/f13music/fo3_dungeon_01.ogg', 'sound/f13ambience/vaultofthefuture.ogg', 'sound/f13music/fo3_dungeon_02.ogg', 'sound/f13music/fo3_dungeon_03.ogg', 'sound/f13music/fo3_dungeon_04.ogg', 'sound/f13music/fo3_dungeon_05.ogg')
	//ambientmusic = list('sound/f13music/fo2_tunnels.ogg','sound/f13music/fo2_caves.ogg','sound/f13music/fo2_vats.ogg','sound/misc/null.ogg')
	ambientsounds = list('sound/f13ambience/ambigen_1.ogg','sound/f13ambience/ambigen_2.ogg','sound/f13ambience/ambigen_9.ogg','sound/f13ambience/ambigen_12.ogg')
	environment = 21
	grow_chance = 25
	roof = TRUE

/area/f13/secret
	name = "Секретная локация"
	icon_state = "secret"
	ambience = list('sound/f13ambience/building.ogg')
	ambientmusic = list('sound/f13music/fo3_dungeon_01.ogg', 'sound/f13music/fo3_dungeon_02.ogg', 'sound/f13music/fo3_dungeon_03.ogg', 'sound/f13music/fo3_dungeon_04.ogg', 'sound/f13music/fo3_dungeon_05.ogg')
	//ambientmusic = list('sound/f13music/fo2_chapel.ogg','sound/f13music/fo2_city.ogg','sound/f13music/fo2_outpost.ogg','sound/misc/null.ogg')
	ambientsounds = list('sound/ambience/signal.ogg','sound/f13ambience/ambigen_10.ogg','sound/f13ambience/ambigen_11.ogg', \
	'sound/f13ambience/ambigen_12.ogg','sound/f13ambience/ambigen_13.ogg')
	environment = 11
	grow_chance = 0

/area/f13/radiation
	name = "Радиация"
	icon_state = "radiation"
	ambience = list('sound/f13ambience/wasteland.ogg')
	ambientmusic = list('sound/f13music/fo3_dungeon_01.ogg', 'sound/f13music/fo3_dungeon_02.ogg', 'sound/f13music/fo3_dungeon_03.ogg', 'sound/f13music/fo3_dungeon_04.ogg', 'sound/f13music/fo3_dungeon_05.ogg')
	//ambientmusic = list('sound/f13music/fo2_wasteland.ogg','sound/f13music/fo2_desert.ogg','sound/f13music/fo2_world.ogg','sound/misc/null.ogg')
	ambientsounds = list('sound/f13ambience/rattlesnake_1.ogg','sound/f13ambience/rattlesnake_2.ogg','sound/f13ambience/rattlesnake_3.ogg')
	environment = 19
	grow_chance = 5

//Faction related areas

/area/f13/raiders
	name = "Рейдеры"
	icon_state = "raiders"
	ambience = list('sound/f13ambience/wasteland.ogg')
	ambientmusic = list('sound/f13music/fo3_dungeon_01.ogg', 'sound/f13music/fo3_dungeon_02.ogg', 'sound/f13music/fo3_dungeon_03.ogg', 'sound/f13music/fo3_dungeon_04.ogg', 'sound/f13music/fo3_dungeon_05.ogg')
	//ambientmusic = list('sound/f13music/fo2_raider.ogg','sound/f13music/fo2_raiders.ogg','sound/misc/null.ogg')
	ambientsounds = list('sound/f13ambience/ambigen_1.ogg','sound/f13ambience/ambigen_2.ogg','sound/f13ambience/dog_distant_1.ogg','sound/f13ambience/dog_distant_2.ogg','sound/f13ambience/dog_distant_3.ogg', \
	'sound/f13ambience/battle_1.ogg','sound/f13ambience/battle_2.ogg','sound/f13ambience/battle_3.ogg')
	outdoors = 1
	open_space = 1
	blob_allowed = 0
	environment = 6
	grow_chance = 5

/area/f13/vault
	name = "Убежище"
	icon_state = "vaulttec"
	ambience = list('sound/f13ambience/vaulttec_vault.ogg')
	ambientmusic = list('sound/f13music/fo2_vats.ogg','sound/misc/null.ogg')
	ambientsounds = list('sound/f13ambience/ambigen_10.ogg','sound/f13ambience/ambigen_11.ogg','sound/f13ambience/ambigen_12.ogg', \
	'sound/f13ambience/ambigen_13.ogg','sound/f13ambience/ambigen_14.ogg','sound/f13effects/steam_short.ogg','sound/f13effects/steam_long.ogg')
	blob_allowed = 0
	environment = 6
	grow_chance = 5
	roof = TRUE

/area/f13/brotherhood
	name = "Братство Стали"//Brother Hood
	icon_state = "brotherhood"
	ambience = list('sound/f13ambience/enclave_vault.ogg')
	ambientmusic = list('sound/f13music/fo3_base_01.ogg', 'sound/f13music/fo3_base_02.ogg', 'sound/f13music/fo3_base_03.ogg', 'sound/f13music/fo3_base_04.ogg')
	//ambientmusic = list('sound/f13music/fo2_brotherhood.ogg','sound/f13music/fo2_outpost.ogg','sound/misc/null.ogg')
	ambientsounds = list('sound/f13ambience/ambigen_9.ogg','sound/f13ambience/ambigen_10.ogg','sound/f13ambience/ambigen_11.ogg', \
	'sound/f13ambience/ambigen_12.ogg','sound/f13ambience/ambigen_13.ogg')
	blob_allowed = 0
	environment = 6
	grow_chance = 5

/area/f13/enclave
	name = "Анклав"
	icon_state = "enclave"
	ambience = list('sound/f13ambience/enclave_vault.ogg')
	ambientmusic = list('sound/f13music/fo3_base_01.ogg', 'sound/f13music/fo3_base_02.ogg', 'sound/f13music/fo3_base_03.ogg', 'sound/f13music/fo3_base_04.ogg')
///	ambientmusic = list('sound/f13music/fo2_vats.ogg','sound/f13music/fo2_outpost.ogg','sound/misc/null.ogg')
	ambientsounds = list('sound/f13ambience/ambigen_10.ogg','sound/f13ambience/ambigen_11.ogg','sound/f13ambience/ambigen_12.ogg', \
	'sound/f13ambience/ambigen_13.ogg','sound/f13ambience/ambigen_14.ogg','sound/ambience/signal.ogg')
	blob_allowed = 0
	environment = 6
	grow_chance = 5

/area/f13/ahs
	name = "Adepts of Hubology Studies"
	icon_state = "ahs"
	ambience = list('sound/f13ambience/enclave_vault.ogg')
	ambientmusic = list('sound/f13music/fo2_vats.ogg','sound/f13music/fo2_outpost.ogg','sound/misc/null.ogg')
	ambientsounds = list('sound/f13ambience/ambigen_10.ogg','sound/f13ambience/ambigen_11.ogg','sound/f13ambience/ambigen_12.ogg', \
	'sound/f13ambience/ambigen_13.ogg','sound/ambience/signal.ogg')
	blob_allowed = 0
	environment = 5
	grow_chance = 5

/area/f13/ncr
	name = "НКР"
	icon_state = "ncr"
	ambience = list('sound/f13ambience/warehouse.ogg')
	ambientmusic = list('sound/f13music/fo3_base_01.ogg', 'sound/f13music/fo3_base_02.ogg', 'sound/f13music/fo3_base_03.ogg', 'sound/f13music/fo3_base_04.ogg')
	//ambientmusic = list('sound/f13music/fo2_city.ogg','sound/f13music/fo2_outpost.ogg','sound/misc/null.ogg')
	ambientsounds = list('sound/f13ambience/ambigen_3.ogg','sound/f13ambience/ambigen_4.ogg','sound/f13ambience/ambigen_5.ogg','sound/f13ambience/ambigen_6.ogg','sound/f13ambience/ambigen_7.ogg', \
	'sound/f13ambience/ambigen_8.ogg','sound/f13ambience/ambigen_9.ogg','sound/f13ambience/ambigen_10.ogg','sound/f13ambience/ambigen_11.ogg','sound/f13ambience/ambigen_12.ogg')
	blob_allowed = 0
	environment = 4
	grow_chance = 5

/area/f13/legion
	name = "Легион"
	icon_state = "legion"
	ambience = list('sound/f13ambience/building.ogg')
	ambientmusic = list('sound/f13music/fo3_base_01.ogg', 'sound/f13music/fo3_base_02.ogg', 'sound/f13music/fo3_base_03.ogg', 'sound/f13music/fo3_base_04.ogg')
	//ambientmusic = list('sound/f13music/fo2_hub.ogg','sound/f13music/fo2_outpost.ogg','sound/misc/null.ogg')
	ambientsounds = list('sound/f13ambience/ambigen_3.ogg','sound/f13ambience/ambigen_4.ogg','sound/f13ambience/ambigen_15.ogg','sound/f13ambience/ambigen_16.ogg', \
	'sound/f13ambience/dog_distant_1.ogg','sound/f13ambience/dog_distant_2.ogg','sound/f13ambience/dog_distant_3.ogg')
	blob_allowed = 0
	environment = 4
	grow_chance = 5

/area/f13/followers
	name = "Последователи Апокалипсиса"
	icon_state = "followers"
	ambience = list('sound/f13ambience/warehouse.ogg')
	ambientmusic = list('sound/f13music/fo2_vats.ogg','sound/f13music/fo2_outpost.ogg','sound/misc/null.ogg')
	ambientsounds = list('sound/f13ambience/ambigen_10.ogg','sound/f13ambience/ambigen_11.ogg','sound/f13ambience/ambigen_12.ogg', \
	'sound/f13ambience/ambigen_13.ogg','sound/ambience/signal.ogg')
	blob_allowed = 0
	environment = 5
	grow_chance = 5

//Тут находится часть кода для шаттла-поезда. By SanecMan .
//Остальной код находится тут: code\modules\fallout\obj\train.dm

//Основа шатла-поезда. Менять если не работает.
/area/f13/shuttle/
	name = "Обращаться к SanecMan если видишь это"
	ambience = list('sound/f13ambience/warehouse.ogg')
	ambientmusic = list('sound/f13music/fo2_vats.ogg','sound/f13music/fo2_outpost.ogg','sound/misc/null.ogg')
	ambientsounds = list('sound/f13ambience/ambigen_10.ogg','sound/f13ambience/ambigen_11.ogg','sound/f13ambience/ambigen_12.ogg', \
	'sound/f13ambience/ambigen_13.ogg','sound/ambience/signal.ogg')
	blob_allowed = 0
	environment = 5
	grow_chance = 5
	requires_power = 0
	dynamic_lighting = DYNAMIC_LIGHTING_ENABLED
	has_gravity = 1
	always_unpowered = 0
	valid_territory = 0
	icon_state = "shuttle"

//Сам поезд
/area/f13/shuttle
	name = "Shuttle"
	requires_power = 0
	dynamic_lighting = DYNAMIC_LIGHTING_ENABLED
	has_gravity = 1
	always_unpowered = 0
	valid_territory = 0
	icon_state = "shuttle"

/area/f13/shuttle/train
	name = "Поезд"
	icon_state = "train"
	ambience = list('sound/f13ambience/warehouse.ogg')
	ambientmusic = list('sound/f13music/fo2_vats.ogg','sound/f13music/fo2_outpost.ogg','sound/misc/null.ogg')
	ambientsounds = list('sound/f13ambience/ambigen_10.ogg','sound/f13ambience/ambigen_11.ogg','sound/f13ambience/ambigen_12.ogg', \
	'sound/f13ambience/ambigen_13.ogg','sound/ambience/signal.ogg')
	blob_allowed = 0
	environment = 5
	grow_chance = 5

//Метрополитен в котором должен быть кебаб
/area/f13/metro
	name = "Метрополитен"
	icon_state = "metro"
	ambience = list('sound/f13ambience/warehouse.ogg')
	ambientmusic = list('sound/f13music/fo2_vats.ogg','sound/f13music/fo2_outpost.ogg','sound/misc/null.ogg')
	ambientsounds = list('sound/f13ambience/ambigen_10.ogg','sound/f13ambience/ambigen_11.ogg','sound/f13ambience/ambigen_12.ogg', \
	'sound/f13ambience/ambigen_13.ogg','sound/ambience/signal.ogg')
	blob_allowed = 0
	environment = 5
	grow_chance = 5

//Арену ложить на анимацию езды поезда
/area/f13/shuttle/openspace
	name = "Поезд на скорости"
	icon_state = "opentrain"
	ambience = list('sound/f13ambience/warehouse.ogg')
	ambientmusic = list('sound/f13music/fo2_vats.ogg','sound/f13music/fo2_outpost.ogg','sound/misc/null.ogg')
	ambientsounds = list('sound/f13ambience/ambigen_10.ogg','sound/f13ambience/ambigen_11.ogg','sound/f13ambience/ambigen_12.ogg', \
	'sound/f13ambience/ambigen_13.ogg','sound/ambience/signal.ogg')
	blob_allowed = 0
	environment = 5
	grow_chance = 0