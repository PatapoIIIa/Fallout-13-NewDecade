//Fallout 13 pants directory

/obj/item/clothing/under/pants/f13
	icon = 'icons/fallout/clothing/uniforms.dmi'
	self_weight = 0.3

/obj/item/clothing/under/pants/f13/ghoul
	name = "порванные штаны"
	desc = "A pair of ripped pants that were not washed for over a hundred years.<br>Thanks to these you don't get to see ghouls genitals too often.<br><i>You can also wear these, to pretend you are a feral ghoul, just saying...</i>"
	icon_state = "ghoul"
	item_color = "ghoul"

/obj/item/clothing/under/pants/f13/cloth
	name = "штаны из тряпья"
	desc = "A pair of worn dusty cloth pants made of various textile pieces.<br>Commonly found all over the wasteland."
	icon_state = "cloth"
	item_color = "cloth"

/obj/item/clothing/under/pants/f13/caravan //Caravanner - someone who travels with caravan. Caravaneer - caravan leader.
	name = "штаны караванщика"
	desc = "A pair of wide dusty cargo pants.<br>Commonly worn by caravanners or caravan robbers."
	icon_state = "caravan"
	item_color = "caravan"

/obj/item/clothing/under/pants/f13/khan
	name = "штаны Великих Ханов"
	desc = "A cloth pants with leather armor pads attached on sides.<br>These are commonly worn by the Great Khans raiders."
	icon_state = "khan"
	item_color = "khan"
	flags = THICKMATERIAL
	body_parts_covered = LEGS
	armor = list(melee = 10, bullet = 10, laser = 0, energy = 0, bomb = 10, bio = 0, rad = 0, fire = 0, acid = 0)

/obj/item/clothing/under/pants/f13/warboy //Mad Max 4 2015 babe!
	name = "кожанные штаны"
	desc = "A pair of dark brown pants, perfect for the one who grabs the sun, riding to Valhalla."
	icon_state = "warboy"
	item_color = "warboy"
	flags = THICKMATERIAL
	body_parts_covered = LEGS
	armor = list(melee = 10, bullet = 0, laser = 0, energy = 0, bomb = 20, bio = 0, rad = 0, fire = 20, acid = 20)

/obj/item/clothing/under/pants/f13/doom
	name = "зеленые штаны"
	desc = "Стрёмные штаны сделанные из синтетики."
	icon_state = "green"
	item_color = "green"
	flags = THICKMATERIAL
	resistance_flags = UNACIDABLE
	body_parts_covered = LEGS
	self_weight = 3
	armor = list(melee = 60, bullet = 40, laser = 40, energy = 40, bomb = 50, bio = 100, rad = 100, fire = 100, acid = 100)