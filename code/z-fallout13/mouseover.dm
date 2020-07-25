/mob/var/last_word = ""

/client/MouseEntered(object, location)
	..()
	if(istype(object, /atom) && !istype(object, /turf/closed/indestructible/f13/splashscreen))
		var/atom/A = object
		if(mob.hud_used.tooltip)
			var/obj_name = A.name
			if(mob.hud_used.tooltip.last_word == obj_name)
				return
			mob.hud_used.tooltip.maptext = "<span style='font-family: Arial; font-size: 12px; text-align: center;text-shadow: 1px 1px 2px black;background: #00000099;'>[lowertext(obj_name)]</span>"

/obj/screen/tooltip
	name = ""
	screen_loc = "NORTH,CENTER-3"
	maptext_width = 228
	maptext_y = 16