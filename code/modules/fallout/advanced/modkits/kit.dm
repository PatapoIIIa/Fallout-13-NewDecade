/obj/item/kit
	name = "набор модификации"
	desc = "Бесполезен."
	icon = 'icons/fallout/advanced/modkits.dmi'
	icon_state = "wmk"
	var/type_deserved = /obj/item/weapon/gun
	var/sufix
	var/prefix

/obj/item/kit/proc/install(var/obj/item/I)
	if(type in I:modifications)
		to_chat(usr, "Оружие уже имеет данный тип модификации.")
		return

	if(!istype(I, type_deserved))
		to_chat(usr, "Что ты творишь?")
		return

	if(!do_mob(usr, usr, 20))
		return

	I:modifications += type
	I:modificationsNames += name

	if(type_deserved == /obj/item/weapon/gun)
		weaponUpgrade(I)
	else
		armorUpgrade(I)

/obj/item/kit/proc/weaponUpgrade(var/obj/item/I)
	var/obj/item/weapon/gun/W = I

	if(istype(src, /obj/item/kit/recoil))
		I:recoil = 0

	if(istype(src, /obj/item/kit/burst))
		I:burst_size = 2

	if(istype(src, /obj/item/kit/delay))
		I:fire_delay *= 0.5

	if(istype(src, /obj/item/kit/bayonet))
		I:force *= 2

	if(istype(src, /obj/item/kit/scope))
		W.zoomable = TRUE
		W.zoom_amt = 3
		W.scopetype = /obj/screen/fullscreen/scope/tech
		W.azoom = new()
		W.azoom.gun = W

	onInstalled(I)

/obj/item/kit/proc/armorUpgrade(var/obj/item/I)
	onInstalled(I)

/obj/item/kit/proc/onInstalled(var/obj/item/I)
	if(!I:name_original)
		I:name_original = I.name

	if(prefix)
		I.name = "[prefix] [I.name]"

	if(sufix)
		I.name = "[I.name] [sufix]"
	to_chat(usr, "<font color='blue'>Вы установили [name] на [I.name].</font>")

	qdel(src)