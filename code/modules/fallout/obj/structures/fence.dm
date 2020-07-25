//Fallout 13 fences and handrails

//Structures which are limpid but impassable, to serve more of a decorative and tactical purposes.

/obj/structure/handrail
	name = "blue handrail"
	desc = "A heavy-duty metal handrail. It's painted blue.<br>You shall not pass!"
	icon = 'icons/fallout/objects/structures/fences.dmi'
	icon_state = "b_handrail0"
	icontype = "b_handrail"
	anchored = 1
	density = 1
	smooth = SMOOTH_OLD
	layer = ABOVE_ALL_MOB_LAYER
	canSmoothWith = list(/turf/closed/wall, /obj/structure/handrail)

/obj/structure/handrail/yellow //We remember the Yellow server!
	name = "yellow handrail"
	desc = "A heavy-duty metal handrail. It's painted yellow.<br>You shall not pass!"
	icon_state = "y_handrail0"
	icontype = "y_handrail"

/obj/structure/fence
	name = "metal fence"
	desc = "You see nothing out of the ordinary." //It's an original description from Fallout.
	icon = 'icons/fallout/objects/structures/fences.dmi'
	icon_state = "metal_fence0"
	icontype = "metal_fence"
	anchored = 1
	density = 1
	smooth = SMOOTH_OLD
	layer = ABOVE_ALL_MOB_LAYER
	pass_flags = LETPASSTHROW
	canSmoothWith = list(/turf/closed/wall, /turf/closed/wall/f13/ruins, /turf/closed/wall/f13/store, /turf/closed/wall/f13/supermart, /turf/closed/wall/f13/wood, /obj/structure/fence,
	/turf/closed/mineral, /turf/closed/wall/f13/wood/house, /turf/closed/wall/r_wall/rust, /turf/closed/wall/rust, /turf/closed/wall/vault)

/obj/structure/fence/update_icon()
	queue_smooth(src)

/obj/structure/fence/relative()
	if(ticker.current_state == GAME_STATE_PLAYING)
		return
	var/icon_junction = 0
	switch(junction)
		if(0 to 3)
			icon_junction = 0
		if(4 to 7)
			icon_junction = 1
		if(8 to 11)
			icon_junction = 2
		if(12)
			icon_junction = 3
		if(13 to 15)
			icon_junction = 4
	..(icon_junction)

/obj/structure/fence/CanPass(atom/movable/mover, turf/target, height=0)
	if (!density)
		return 1
	if (junction != 12 && junction != 10 && junction != 6 && junction != 14 && junction != 8 && junction != 4)
		return 0
	if(istype(mover) && mover.checkpass(PASSGRILLE))
		return 1
	if(get_dir(loc, target) != SOUTH)
		return 1
	if(istype(mover, /obj/item/projectile/bullet))
		return 1
	else
		return 0

/obj/structure/fence/CheckExit(atom/movable/O as mob|obj, target)
	if (!density)
		return 1
	if (junction != 12 && junction != 10 && junction != 6 && junction != 14 && junction != 8 && junction != 4)
		return 0
	if(istype(O) && O.checkpass(PASSGRILLE))
		return 1
	if(get_dir(O.loc, target) != SOUTH)
		return 1
	if(istype(O, /obj/item/projectile/bullet))
		return 1
	else
		return 0

/obj/structure/fence/door
	name = "metal fence door"
	icon_state = "metal_fence_door0"
	icontype = "metal_fence_door"

/obj/structure/fence/door/attackby(obj/item/weapon/W, mob/user, params)
	attack_hand(user)

/obj/structure/fence/door/attack_hand(mob/user)
	if (density)
		playsound(src.loc, 'sound/f13machines/doorchainlink_open.ogg', 40, 0, 0)
	else
		playsound(src.loc, 'sound/f13machines/doorchainlink_close.ogg', 40, 0, 0)
	density = !density
	update_icon()

/obj/structure/fence/door/relative()
	var/icon_junction = 0
	switch(junction)
		if(0 to 3)
			icon_junction = 1
		else
			icon_junction = 0
	icon_state = "[icontype][icon_junction][!density ? "-open" : ""]"


/obj/structure/metal_fence/broken
	icon = 'icons/fallout/objects/structures/fences.dmi'
	name = "сломанный металлический забор"
	density = 0
	anchored = 1
	layer = ABOVE_ALL_MOB_LAYER
	icon_state = "metal_fence3-broken-alt"

/obj/structure/metal_fence/broken/alt
	density = 0
	icon_state = "metal_fence3-broken"

/obj/structure/wood_fence
	name = "wood fence"
	desc = "You see nothing out of the ordinary." //It's an original description from Fallout.
	icon = 'icons/fallout/objects/structures/fences.dmi'
	icon_state = "wood_fence0"
	icontype = "wood_fence"
	anchored = 1
	density = 1
	smooth = SMOOTH_OLD
	layer = ABOVE_ALL_MOB_LAYER
	canSmoothWith = list(/turf/closed/wall, /turf/closed/wall/f13/ruins, /turf/closed/wall/f13/store, /turf/closed/wall/f13/supermart, /turf/closed/wall/f13/wood, /obj/structure/wood_fence,
	/turf/closed/mineral, /turf/closed/wall/f13/wood/house)

/obj/structure/wood_fence/update_icon()
	queue_smooth(src)

/obj/structure/wood_fence/relative()
	if(ticker.current_state == GAME_STATE_PLAYING)
		return
	var/icon_junction = 0
	switch(junction)
		if(0 to 3)
			icon_junction = 0
		if(4 to 7)
			icon_junction = 1
		if(8 to 11)
			icon_junction = 2
		if(12)
			icon_junction = 3
		if(13 to 15)
			icon_junction = 4
	..(icon_junction)

/obj/structure/wood_fence/CanPass(atom/movable/mover, turf/target, height=0)
	if (!density)
		return 1
	if (junction != 12 && junction != 10 && junction != 6 && junction != 14 && junction != 8 && junction != 4)
		return 0
	if(istype(mover) && mover.checkpass(PASSGRILLE))
		return 1
	if(get_dir(loc, target) != SOUTH)
		return 1
	if(istype(mover, /obj/item/projectile/bullet))
		return 1
	else
		return 0

/obj/structure/wood_fence/CheckExit(atom/movable/O as mob|obj, target)
	if (!density)
		return 1
	if (junction != 12 && junction != 10 && junction != 6 && junction != 14 && junction != 8 && junction != 4)
		return 0
	if(istype(O) && O.checkpass(PASSGRILLE))
		return 1
	if(get_dir(O.loc, target) != SOUTH)
		return 1
	if(istype(O, /obj/item/projectile/bullet))
		return 1
	else
		return 0