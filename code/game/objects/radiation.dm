/proc/radiation_pulse(turf/epicenter, heavy_range, light_range, severity, log=0)
	if(!epicenter || !severity) return

	if(!isturf(epicenter))
		epicenter = get_turf(epicenter.loc)

	if(heavy_range > light_range)
		light_range = heavy_range

	var/light_severity = severity * 0.5
	for(var/mob/living/carbon/human/T in range(light_range, epicenter))
		var/distance = get_dist(epicenter, T)
		if(distance < 0)
			distance = 0
		if(distance < heavy_range)
			T.rad_act(severity)
		else if(distance == heavy_range)
			if(prob(50))
				T.rad_act(severity)
			else
				T.rad_act(light_severity)
		else if(distance <= light_range)
			T.rad_act(light_severity)

	//if(log)
	//	log_game("Radiation pulse with size ([heavy_range], [light_range]) and severity [severity] in area [epicenter.loc.name] ")
	return 1

/proc/radiation_pulse_new(turf/epicenter, heavy_range, light_range, severity, log=0)
	if(!epicenter || !severity) return

	if(!isturf(epicenter))
		epicenter = get_turf(epicenter.loc)

	if(heavy_range > light_range)
		light_range = heavy_range

	var/light_severity = severity * 0.5
	for(var/mob/living/carbon/human/T in hrange(epicenter, light_range))
		var/distance = get_dist(epicenter, T)
		if(distance > light_range)
			continue
		if(distance < 0)
			distance = 0
		if(distance < heavy_range)
			T.rad_act(severity)
		else if(distance == heavy_range)
			if(prob(50))
				T.rad_act(severity)
			else
				T.rad_act(light_severity)
		else if(distance <= light_range)
			T.rad_act(light_severity)

	//if(log)
	//	log_game("Radiation pulse with size ([heavy_range], [light_range]) and severity [severity] in area [epicenter.loc.name] ")
	return 1

/atom/proc/rad_act(var/severity)
	return 1

/mob/living/rad_act(amount, silent = 0)
	if(amount)
		var/blocked = getarmor(null, "rad")

		var/mob/living/carbon/user = src
		if(user.perks.have(/datum/perk/radresist))
			blocked *= 1.25
		if(user.perks.have(/datum/perk/radresist_mutants))
			blocked *= 2500

		apply_effect(amount, IRRADIATE, blocked)

		if(amount > blocked)
			if(!silent)
				to_chat(src, pick("<span class='warning'>Вы ощущаете как ваша кожа вскипает.</span>", "<span class='warning'>Вы ощущаете как ваша кожа жжётся.</span>", "<span class='warning'>Вы ощущаете как ваши волосы выпадают небольшими клочками.</span>"))

		for(var/obj/I in src) //Radiation is also applied to items held by the mob
			I.rad_act(amount)

/mob/living/carbon/rad_act(amount, silent = 0)
	if(dna && (RADIMMUNE in dna.species.species_traits))
		silent = TRUE
	..()

//Silicons will inherently not get irradiated due to having an empty handle_mutations_and_radiation, but they need to not hear this
/mob/living/silicon/rad_act(amount)
	. = ..(amount, TRUE)

/mob/living/simple_animal/bot/rad_act(amount)
	. = ..(amount, TRUE)