/* Kitchen tools
 * Contains:
 *		Fork
 *		Kitchen knives
 *		Ritual Knife
 *		Butcher's cleaver
 *		Combat Knife
 *		Rolling Pins
 */

/obj/item/weapon/kitchen
	icon = 'icons/obj/kitchen.dmi'
	origin_tech = "materials=1"

/obj/item/weapon/kitchen/fork
	name = "вилка"
	desc = "Острая."
	icon_state = "fork"
	force = 5
	w_class = WEIGHT_CLASS_TINY
	throwforce = 0
	throw_speed = 3
	throw_range = 5
	materials = list(MAT_METAL=80)
	flags = CONDUCT
	attack_verb = list("attacked", "stabbed", "poked")
	hitsound = 'sound/weapons/bladeslice.ogg'
	armor = list(melee = 0, bullet = 0, laser = 0, energy = 0, bomb = 0, bio = 0, rad = 0, fire = 50, acid = 30)
	var/datum/reagent/forkload //used to eat omelette

/obj/item/weapon/kitchen/fork/attack(mob/living/carbon/M, mob/living/carbon/user)
	if(!istype(M))
		return ..()

	if(forkload)
		if(M == user)
			M.visible_message("<span class='notice'>[user] eats a delicious forkful of omelette!</span>")
			M.reagents.add_reagent(forkload.id, 1)
		else
			M.visible_message("<span class='notice'>[user] feeds [M] a delicious forkful of omelette!</span>")
			M.reagents.add_reagent(forkload.id, 1)
		icon_state = "fork"
		forkload = null

	else if(user.zone_selected == "eyes")
		if(user.disabilities & CLUMSY && prob(50))
			M = user
		return eyestab(M,user)
	else
		return ..()


/obj/item/weapon/kitchen/knife
	name = "кухонный нож"
	icon_state = "knife"
	desc = "Обычный кухонный нож. Отлично режет овощи, мясо и людей."
	flags = CONDUCT
	force = 10
	w_class = WEIGHT_CLASS_SMALL
	throwforce = 10
	hitsound = 'sound/weapons/bladeslice.ogg'
	throw_speed = 3
	throw_range = 6
	materials = list(MAT_METAL=12000)
	attack_verb = list("slashed", "stabbed", "sliced", "torn", "ripped", "diced", "cut")
	sharpness = IS_SHARP_ACCURATE
	armor = list(melee = 0, bullet = 0, laser = 0, energy = 0, bomb = 0, bio = 0, rad = 0, fire = 50, acid = 50)

/obj/item/weapon/kitchen/knife/attack(mob/living/carbon/M, mob/living/carbon/user)
	if(user.zone_selected == "eyes")
		if(user.disabilities & CLUMSY && prob(50))
			M = user
		return eyestab(M,user)
	else
		return ..()

/obj/item/weapon/kitchen/knife/suicide_act(mob/user)
	user.visible_message(pick("<span class='suicide'>[user] is slitting [user.p_their()] wrists with the [src.name]! It looks like [user.p_theyre()] trying to commit suicide.</span>", \
						"<span class='suicide'>[user] is slitting [user.p_their()] throat with the [src.name]! It looks like [user.p_theyre()] trying to commit suicide.</span>", \
						"<span class='suicide'>[user] is slitting [user.p_their()] stomach open with the [src.name]! It looks like [user.p_theyre()] trying to commit seppuku.</span>"))
	return (BRUTELOSS)

/obj/item/weapon/kitchen/knife/ritual
	name = "ритуальный нож"
	desc = "The unearthly energies that once powered this blade are now dormant."
	icon = 'icons/obj/wizard.dmi'
	icon_state = "render"
	w_class = WEIGHT_CLASS_NORMAL

/obj/item/weapon/kitchen/knife/butcher
	name = "тесак"
	icon_state = "butch"
	desc = "Идеальное орудие для нарезки мяса, рубки костей, а вот кого, решать уже вам."
	flags = CONDUCT
	force = 15
	throwforce = 10
	materials = list(MAT_METAL=18000)
	attack_verb = list("cleaved", "slashed", "stabbed", "sliced", "torn", "ripped", "diced", "cut")
	w_class = WEIGHT_CLASS_NORMAL

/obj/item/weapon/kitchen/knife/combat
	name = "боевой нож"
	icon_state = "buckknife"
	item_state = "knife"
	desc = "Стандартный боевой нож."
	force = 20
	throwforce = 20
	origin_tech = "materials=3;combat=4"
	attack_verb = list("slashed", "stabbed", "sliced", "torn", "ripped", "cut")

/obj/item/weapon/kitchen/knife/combat/survival
	name = "нож для выживания"
	icon_state = "survivalknife"
	desc = "Охотничий нож. Красивый."
	force = 12
	throwforce = 10

/obj/item/weapon/kitchen/knife/combat/bone
	name = "нож из костей"
	item_state = "bone_dagger"
	icon_state = "bone_dagger"
	desc = "Обточенная кость. Самый минимум для выживания."
	force = 15
	throwforce = 15
	materials = list()

/obj/item/weapon/kitchen/knife/combat/cyborg
	name = "cyborg knife"
	icon = 'icons/obj/items_cyborg.dmi'
	icon_state = "knife"
	desc = "A cyborg-mounted plasteel knife. Extremely sharp and durable."
	origin_tech = null

/obj/item/weapon/kitchen/knife/carrotshiv
	name = "заточка из маркови"
	icon_state = "carrotshiv"
	item_state = "carrotshiv"
	desc = "Кто вообще до этого додумался?"
	force = 8
	throwforce = 12//fuck git
	materials = list()
	origin_tech = "biotech=3;combat=2"
	attack_verb = list("shanked", "shivved")
	armor = list(melee = 0, bullet = 0, laser = 0, energy = 0, bomb = 0, bio = 0, rad = 0, fire = 0, acid = 0)

/obj/item/weapon/kitchen/rollingpin
	name = "скалка"
	desc = "Бейте ей людей по голове. Ну или катайте тесто."
	icon_state = "rolling_pin"
	force = 8
	throwforce = 5
	throw_speed = 3
	throw_range = 7
	w_class = WEIGHT_CLASS_NORMAL
	attack_verb = list("bashed", "battered", "bludgeoned", "thrashed", "whacked")

/* Trays  moved to /obj/item/weapon/storage/bag */

/obj/item/weapon/kitchen/knife/cosmicknife
	name = "космический нож"
	icon = 'icons/fallout/objects/melee.dmi'
	icon_state = "cosmicknife"
	item_state = "cosmicknife"
	desc = "Made from a ''space age'' Saturnite alloy in the Big Mountain Research and Development Center, cosmic knives were advertised to be super-sharp, all-purpose kitchen knives that would not chip or dull. They proved to be too sharp for their own good, with a majority of them winding up on backorder for casinos in Texas years later."
	force = 21
	throwforce = 15
	embed_chance = 100
	armour_penetration = 20
	origin_tech = "materials=3;combat=4"
	attack_verb = list("slashed", "stabbed", "sliced", "torn", "ripped", "cut")

/obj/item/weapon/kitchen/knife/heatcosmicknife
	name = "нагретый космический нож"
	icon = 'icons/fallout/objects/melee.dmi'
	icon_state = "heatcosmicknife"
	item_state = "heatcosmicknife"
	desc = "Made from a ''space age'' Saturnite alloy in the Big Mountain Research and Development Center, cosmic knives were advertised to be super-sharp, all-purpose kitchen knives that would not chip or dull. They proved to be too sharp for their own good, with a majority of them winding up on backorder for casinos in Texas years later. This one heat"
	force = 30
	throwforce = 20
	embed_chance = 100
	armour_penetration = 45
	origin_tech = "materials=3;combat=4"
	attack_verb = list("slashed", "тыкает", "нарезает", "разрезает", "ripped", "режет")
