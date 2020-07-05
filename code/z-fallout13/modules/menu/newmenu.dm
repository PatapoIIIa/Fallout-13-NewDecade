//MENU SYSTEM BY BIGRAGE, some awful code, some awful design, all as you love

/datum/hud/new_player
	hud_shown = 1			//Used for the HUD toggle (F12)
	inventory_shown = 0
	hotkey_ui_hidden = 0

/datum/hud/new_player/FinalizeInstantiation(var/ui_style='icons/mob/screen1_White.dmi', var/ui_color = "#ffffff", var/ui_alpha = 255)
	adding = list()
	var/obj/screen/using

	using = new /obj/screen/new_player/title() //all MENU UI
	using.SetName("Title")
	adding += using

	using = new /obj/screen/new_player/selection/joingame()
	using.SetName("Join Game")
	adding += using

	using = new /obj/screen/new_player/selection/settings()
	using.SetName("Setup Character")
	adding += using

	using = new /obj/screen/new_player/selection/manifest()
	using.SetName("Crew Manifest")
	adding += using

	using = new /obj/screen/new_player/selection/observe()
	using.SetName("Observe")
	adding += using

	using = new /obj/screen/new_player/selection/changelog()
	using.SetName("Changelog")
	adding += using

	mymob.client.screen = list()
	mymob.client.screen += adding
	src.adding += using



/obj/screen/new_player
	icon = 'navarro/icons/menu/hudmenu.dmi'
	plane = 99
	layer = 99 //ULTRA LAYER

/obj/screen/new_player/title
	name = "Navarro"
	icon = 'navarro/icons/menu/title.dmi'
	icon_state = "title"
	screen_loc = "CENTER-4.1, CENTER+3.5" //position at screen

/obj/screen/new_player/selection/joingame
	name = "Join Game"
	icon_state = "unready"
	screen_loc = "LEFT+1,CENTER"

/obj/screen/new_player/selection/settings
	name = "Settings"
	icon_state = "settings"
	screen_loc = "LEFT+1,CENTER-1"

/obj/screen/new_player/selection/manifest
	name = "Crew Manifest"
	icon_state = "manifest"
	screen_loc = "LEFT+1,CENTER-2"

/obj/screen/new_player/selection/observe
	name = "Observe"
	icon_state = "observe"
	screen_loc = "LEFT+1,CENTER-3"

/obj/screen/new_player/selection/changelog
	name = "Server Changelog"
	icon_state = "changelog"
	screen_loc = "LEFT+1,CENTER-4"

//SELECTION

/obj/screen/new_player/selection/New(var/desired_loc)
	color = null
	return ..()

/obj/screen/new_player/selection/MouseEntered(location,control,params) //Yellow colow for font
	color = "#FFB200"
	return ..()

/obj/screen/new_player/selection/MouseExited(location,control,params)
	color = null
	return ..()


/obj/screen/new_player/selection/joingame/New()
	var/mob/new_player/player = usr
	if(GAME_STATE <= RUNLEVEL_LOBBY)
		if(player.ready)
			icon_state = "ready"
		else
			icon_state = "unready"
	else
		icon_state = "joingame"

/obj/screen/new_player/selection/joingame/Click()
	var/mob/new_player/player = usr
	if(GAME_STATE <= RUNLEVEL_LOBBY)
		if(player.ready)
			player.ready = 0
			player.ready()
			icon_state = "unready"
		else
			player.ready = 1
			player.ready()
			icon_state = "ready"
	else
		icon_state = "joingame"
		player.joingame()

/obj/screen/new_player/selection/manifest/Click()
	var/mob/new_player/player = usr
	player.ViewManifest()

/obj/screen/new_player/selection/observe/Click()
	var/mob/new_player/player = usr
	player.observe()

/obj/screen/new_player/selection/settings/Click()
	var/mob/new_player/player = usr
	player.setupcharacter()