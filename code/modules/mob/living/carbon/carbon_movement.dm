/mob/living/carbon/movement_delay()
	var/FP
	if(iscarbon(src))
		var/mob/living/carbon/C = src
		var/obj/item/device/flightpack/F = C.get_flightpack()
		if(istype(F) && F.flight)
			FP = 1
	. = ..(FP)
	if(!FP)
		. += grab_state * 1	//Flightpacks are too powerful to be slowed too much by the weight of a corpse.
	else
		. += grab_state * 3 //can't go fast while grabbing something.

	//. += get_pulling_delay()
	if(contents_weight)
		if ((contents_weight + (pulling ? pulling.contents_weight + pulling.self_weight : 0)) > special.getWeight(src))
			. += 15

		if(istype(src, /mob/living/carbon/human))
			var/mob/living/carbon/human/H = src
			if(istype(H.wear_suit, /obj/item/clothing/suit/armor/f13/power_armor))
				. += 2
				var/obj/item/clothing/suit/armor/f13/power_armor/PA = H.wear_suit
				if(!PA.enabled)
					. += 10

				if(!perks.have(/datum/perk_hidden/powerArmor))
					. += 7
				else if(H.special.getPoint("a") < 8 && H.special.getPoint("s") < 9)
					. += 4
		/*
		if(src:wear_suit)
			var/classSlowdown = (src:wear_suit:self_weight) / 30
			. += classSlowdown
		*/

	if(!get_leg_ignore()) //ignore the fact we lack legs
		var/leg_amount = get_num_legs()
		. += 6 - 3*leg_amount //the fewer the legs, the slower the mob
		if(!leg_amount)
			. += 6 - 3*get_num_arms() //crawling is harder with fewer arms
		else if(lying)
			. += 5
		if(legcuffed)
			. += legcuffed.slowdown


var/const/NO_SLIP_WHEN_WALKING = 1
var/const/SLIDE = 2
var/const/GALOSHES_DONT_HELP = 4
var/const/SLIDE_ICE = 8

/mob/living/carbon/slip(s_amount, w_amount, obj/O, lube)
	if(movement_type & FLYING)
		return 0
	if(!(lube&SLIDE_ICE))
		add_logs(src,, "подскользнулсЯ",, "на [O ? O.name : "floor"]")
	return loc.handle_slip(src, s_amount, w_amount, O, lube)


/mob/living/carbon/Process_Spacemove(movement_dir = 0)
	if(..())
		return 1
	if(!isturf(loc))
		return 0

	var/obj/item/device/flightpack/F = get_flightpack()
	if(istype(F) && (F.flight) && F.allow_thrust(0.01, src))
		return 1

	// Do we have a jetpack implant (and is it on)?
	var/obj/item/organ/cyberimp/chest/thrusters/T = getorganslot("thrusters")
	if(istype(T) && movement_dir && T.allow_thrust(0.01))
		return 1

	var/obj/item/weapon/tank/jetpack/J = get_jetpack()
	if(istype(J) && (movement_dir || J.stabilizers) && J.allow_thrust(0.01, src))
		return 1

/mob/living/carbon/Move(NewLoc, direct)
	. = ..()
	if(. && mob_has_gravity()) //floating is easy
		if(dna && dna.species && (NOHUNGER in dna.species.species_traits))
			nutrition = NUTRITION_LEVEL_FED - 1	//just less than feeling vigorous
		else if(nutrition && stat != DEAD)
			nutrition -= HUNGER_FACTOR/10
			if(m_intent == MOVE_INTENT_RUN)
				nutrition -= HUNGER_FACTOR/10
		if((disabilities & FAT) && m_intent == MOVE_INTENT_RUN && bodytemperature <= 360)
			bodytemperature += 2
