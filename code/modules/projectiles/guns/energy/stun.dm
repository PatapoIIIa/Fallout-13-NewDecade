/obj/item/weapon/gun/energy/taser
	name = "taser gun"
	desc = "A low-capacity, energy-based stun gun used by security teams to subdue targets at range."
	icon_state = "taser"
	item_state = null	//so the human update icon uses the icon_state instead.
	ammo_type = list(/obj/item/ammo_casing/energy/electrode)
	origin_tech = "combat=3"
	ammo_x_offset = 3

/obj/item/weapon/gun/energy/tesla_revolver
	name = "tesla gun"
	desc = "An experimental gun based on an experimental engine, it's about as likely to kill its operator as it is the target."
	icon_state = "tesla"
	item_state = "tesla"
	ammo_type = list(/obj/item/ammo_casing/energy/tesla_revolver)
	origin_tech = "combat=4;materials=4;powerstorage=4"
	can_flashlight = 0
	//pin = null
	shaded_charge = 1

/obj/item/weapon/gun/energy/e_gun/advtaser
	name = "hybrid taser"
	desc = "A dual-mode taser designed to fire both short-range high-power electrodes and long-range disabler beams."
	icon_state = "advtaser"
	ammo_type = list(/obj/item/ammo_casing/energy/electrode, /obj/item/ammo_casing/energy/disabler)
	origin_tech = "combat=4"
	ammo_x_offset = 2

/obj/item/weapon/gun/energy/e_gun/advtaser/cyborg
	name = "cyborg taser"
	desc = "An integrated hybrid taser that draws directly from a cyborg's power cell. The weapon contains a limiter to prevent the cyborg's power cell from overheating."
	can_flashlight = 0
	can_charge = 0
	use_cyborg_cell = 1

/obj/item/weapon/gun/energy/disabler
	name = "disabler"
	desc = "A self-defense weapon that exhausts organic targets, weakening them until they collapse."
	icon_state = "disabler"
	item_state = "disabler"
	origin_tech = "combat=3"
	ammo_type = list(/obj/item/ammo_casing/energy/disabler)
	ammo_x_offset = 3

/obj/item/weapon/gun/energy/disabler/cyborg
	name = "cyborg disabler"
	desc = "An integrated disabler that draws from a cyborg's power cell. This weapon contains a limiter to prevent the cyborg's power cell from overheating."
	can_charge = 0
	use_cyborg_cell = 1

/obj/item/weapon/gun/energy/disabler/compliance_regulator
	name = "Compliance Regulator"
	desc = "The Compliance Regulator is an electroshock weapon and a unique version of the standard laser pistol, in that not only does it fire a blue beam instead of the normal red, but dealing a Critical Hit upon an enemy will paralyze them for 10 seconds."
	icon_state = "compliance_regulator"

/obj/item/weapon/gun/energy/disabler/fluff/angelofmercy
	name = "Angel of Mercy"
	desc = "Этот прекрасный шокер некогда принадлежал таинственному работорговцу из пустошей. Легенды гласЯт, что с его помощью было поймано около тысЯчи рабов. В его деталЯх можно разглЯдеть следы крови, которые спустЯ многие года работают в качестве смазки."
	icon_state = "compliance_regulatorfluff"