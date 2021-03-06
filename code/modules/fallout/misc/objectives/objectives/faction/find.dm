//Fallout 13 - Where in the World is Carmen Sandiego?

/datum/f13_objective/find
	name = "Моя прелесть!"
	desc = "Вы должны найти и сохранить %item_name%!"
	points = 0
	kind = FACTION

	var/list/bos_items = list(/obj/item/key/vertibird = 45, /obj/item/documents/syndicate/blue = 45)
	var/list/enclave_items = list(/obj/item/key/vertibird = 45, /obj/item/documents/syndicate/red = 45)
	var/list/city_items = list(/obj/item/ring)
	var/list/other_items = list(/obj/item/ring)
	var/list/ncr_items = list(/obj/item/ring = 45, /obj/item/key/vertibird = 45, /obj/item/documents/syndicate/blue = 45, /obj/item/documents/syndicate/red = 45)

	assignto_faction(var/datum/f13_faction/F, var/list/data = list())
		data["target_item"] = get_target(F.id)
		data["item_name"] = get_var_from_type(data["target_item"], "name")
		..()

	check_complete(var/datum/objective_holder/holder)
		var/datum/f13_faction/F = holder.owner
		var/item = holder.data["target_item"]
		for(var/atom/obj in world)
			if(obj.type != item)
				continue
			var/area/A = get_area(obj)
			if(F && A && istype(A.type, F.area))
				return 1
			for(var/mob/living/M in get_turf(obj))
				if(M.social_faction == F.id && obj in M.get_contents())
					return 1
		return 0

	proc/get_target(var/faction)
		switch(faction)
			if("brotherhood")
				. = pick(bos_items)
			if("enclave")
				. = pick(enclave_items)
			if("city")
				. = pick(city_items)

		if(!.)
			. = pick(other_items)