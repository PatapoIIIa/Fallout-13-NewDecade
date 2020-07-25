//Fallout 13 fridge directory

/obj/structure/closet/wood
	name = "бочка"
	desc = "An old, wood barel with drinks."
	open_sound = 'sound/machines/wooden_closet_open.ogg'
	close_sound = 'sound/machines/wooden_closet_close.ogg'
	icon_state = "wood"

/obj/structure/closet/wood/standard/New()
	..()
	for(var/i = 0, i < 4, i++)
		new /obj/item/weapon/reagent_containers/food/drinks/bottle/tequila(src)
	for(var/i = 0, i < 3, i++)
		new /obj/item/weapon/reagent_containers/food/drinks/bottle/whiskey(src)
	for(var/i = 0, i < 2, i++)
		new /obj/item/weapon/reagent_containers/food/drinks/bottle/wine(src)
	for(var/i = 0, i < 1, i++)
		new /obj/item/weapon/reagent_containers/food/drinks/bottle/sunset(src)

/obj/structure/closet/fridge
	name = "холодильник"
	desc = "An old, pre-War refrigerator.<br>Despite being covered in rust and making noises straight out of a horror film, it still keeps your Nuka-Cola cold."
	icon_state = "fridge"
	layer = 2

/obj/structure/closet/fridge/standard/New()
	..()
	for(var/i = 0, i < 4, i++)
		new /obj/item/weapon/reagent_containers/food/snacks/grown/mutfruit(src)
	for(var/i = 0, i < 3, i++)
		new /obj/item/weapon/reagent_containers/food/snacks/f13/cram(src)
	for(var/i = 0, i < 2, i++)
		new /obj/item/weapon/reagent_containers/food/drinks/bottle/nukacola(src)
	for(var/i = 0, i < 1, i++)
		new /obj/item/weapon/reagent_containers/food/snacks/meat/steak/molerat(src)

/obj/structure/closet/fridge/meat/New()
	..()
	for(var/i = 0, i < 4, i++)
		new /obj/item/weapon/reagent_containers/food/snacks/meat/slab/gecko(src)

/obj/structure/closet/fridge/cannibal/New()
	..()
	for(var/i = 0, i < 4, i++)
		new /obj/item/weapon/reagent_containers/food/snacks/meat/slab/human(src)

/obj/structure/closet/crate/freezer
	desc = "An old, rusted freezer.<br>Despite going through a nuclear holocaust, it's somehow still good at keeping things cold."
	name = "freezer"
	icon_state = "freezer"

