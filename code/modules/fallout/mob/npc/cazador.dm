//Fallout 13 cazador directory

/mob/living/simple_animal/hostile/cazador
	name = "Касадор"
	desc = "Большая, уродливая, летающая штука."
	icon = 'icons/fallout/mobs/animal.dmi'
	icon_state = "cazador"
	icon_living = "cazador"
	icon_gib = "gib"
	speak_chance = 0
	speak_emote = list("gnashes")
	environment_smash = 1
	turns_per_move = 15
	butcher_results = list(/obj/item/weapon/reagent_containers/food/snacks/meat/slab/cazador_meat = 1, /obj/item/weapon/reagent_containers/food/snacks/f13/venomgland = 1)
	response_help = "pokes"
	response_disarm = "punches"
	response_harm = "hits"
	emote_taunt = list("gnashes")
	taunt_chance = 30
	move_to_delay = 2
	maxHealth = 100
	health = 100
	aggro_vision_range = 10
	idle_vision_range = 5
	movement_type = FLYING
	pass_flags = PASSTABLE | PASSGRILLE | PASSMOB
	self_weight = 40

	faction = list("hostile", "cazador")

	sound_speak = list('sound/f13npc/cazador_charge1.ogg','sound/f13npc/cazador_charge2.ogg','sound/f13npc/cazador_charge3.ogg')
	sound_speak_chance = 5

	aggro_sound_chance = 50
	aggro_sound = 'sound/f13npc/cazador_alert.ogg'

	death_sound = 'sound/f13npc/cazador_death.ogg'

	damage_coeff = list(BRUTE = 1, BURN = 1, TOX = 0.2, CLONE = 0, STAMINA = 1, OXY = 0)
	harm_intent_damage = 7
	melee_damage_lower = 5
	melee_damage_upper = 10
	attacktext = "жалит"
	attack_sound = 'sound/weapons/bite.ogg'

	XP = 7

/mob/living/simple_animal/hostile/cazador/AttackingTarget()
	. = ..()
	if(. && ishuman(target))
		var/mob/living/carbon/human/H = target
		H.reagents.add_reagent("cazador_venom", 5)

/mob/living/simple_animal/hostile/cazador/death(gibbed)
	icon_dead = pick("cazador_dead1", "cazador_dead2", "cazador_dead3", "cazador_dead4")
	..()

/datum/reagent/toxin/cazador_venom
	name = "яд касадора"
	id = "cazador_venom"
	description = "A potent toxin resulting from cazador stings that quickly kills if too much remains in the body."
	color = "#801E28" // rgb: 128, 30, 40
	toxpwr = 1

/datum/reagent/toxin/cazador_venom/on_mob_life(mob/living/M)
	if(volume >= 15)
		M.adjustToxLoss(5, 0)
	..()