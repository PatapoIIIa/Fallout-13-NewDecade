//Plasma bolts
/obj/item/projectile/beam/plasma
	name = "плазмы"
	damage = 35
	irradiate = 4
	icon_state = "plasma"
	icon = 'icons/fallout/objects/guns/projectiles.dmi'
	impact_effect_type = /obj/effect/overlay/temp/impact_effect/plasma
	light_color = LIGHT_COLOR_GREEN
	pass_flags = PASSTABLE | PASSGRILLE

/obj/item/projectile/beam/plasma/turbo
	name = "концентрированной плазмы"
	damage = 60
	irradiate = 10

//Bullets library
/obj/item/projectile/bullet/F13
	name = "пули"
//Bullets library: 9mm
/obj/item/projectile/bullet/F13/c9mmBullet
	damage = 14

/obj/item/projectile/bullet/F13/c9mmBullet/heap
	damage = 26
	armour_penetration = -22

/obj/item/projectile/bullet/F13/c9mmBullet/armourpiercing
	damage = 12
	armour_penetration = 25

/obj/item/projectile/bullet/F13/c9mmBullet/toxic
	damage = 15
	damage_type = TOX

/obj/item/projectile/bullet/F13/c9mmBullet/fire
	damage = 7

/obj/item/projectile/bullet/F13/c9mmBullet/fire/on_hit(atom/target, blocked = 0)
	if(..(target, blocked))
		var/mob/living/M = target
		M.adjust_fire_stacks(1)
		M.IgniteMob()

/obj/item/projectile/bullet/F13/spear
	damage = 40
	icon_state = "spear"
	icon = 'icons/fallout/objects/guns/projectiles.dmi'

//Bullets library: 10mm
/obj/item/projectile/bullet/F13/c10mmBullet
	damage = 16

/obj/item/projectile/bullet/F13/c10mmBullet/heap
	damage = 32
	armour_penetration = -28

/obj/item/projectile/bullet/F13/c10mmBullet/armourpiercing
	damage = 14
	armour_penetration = 22

/obj/item/projectile/bullet/F13/c10mmBullet/toxic
	damage = 14
	damage_type = TOX

/obj/item/projectile/bullet/F13/c10mmBullet/fire
	damage = 8

/obj/item/projectile/bullet/F13/c10mmBullet/fire/on_hit(atom/target, blocked = 0)
	if(..(target, blocked))
		var/mob/living/M = target
		M.adjust_fire_stacks(1)
		M.IgniteMob()

//Bullets library: 5.56
/obj/item/projectile/bullet/F13/c556Bullet
	damage = 22

/obj/item/projectile/bullet/F13/c556Bullet/heap
	damage = 36
	armour_penetration = -28

/obj/item/projectile/bullet/F13/c556Bullet/armourpiercing
	damage = 18
	armour_penetration = 22

/obj/item/projectile/bullet/F13/c556Bullet/toxic
	damage = 20
	damage_type = TOX

/obj/item/projectile/bullet/F13/c556Bullet/fire
	damage = 11

/obj/item/projectile/bullet/F13/c556Bullet/fire/on_hit(atom/target, blocked = 0)
	if(..(target, blocked))
		var/mob/living/M = target
		M.adjust_fire_stacks(1)
		M.IgniteMob()

//Bullets library: .44
/obj/item/projectile/bullet/F13/c44mmBullet
	damage = 34

/obj/item/projectile/bullet/F13/c44mmBullet/heap
	damage = 52
	armour_penetration = -45

/obj/item/projectile/bullet/F13/c44mmBullet/armourpiercing
	damage = 24
	armour_penetration = 28

/obj/item/projectile/bullet/F13/c44mmBullet/toxic
	damage = 24
	damage_type = TOX

/obj/item/projectile/bullet/F13/c44mmBullet/fire
	damage = 20

/obj/item/projectile/bullet/F13/c44mmBullet/fire/on_hit(atom/target, blocked = 0)
	if(..(target, blocked))
		var/mob/living/M = target
		M.adjust_fire_stacks(1)
		M.IgniteMob()

//Bullets library: .308
/obj/item/projectile/bullet/F13/c308mmBullet
	damage = 46

/obj/item/projectile/bullet/F13/c308mmBullet/toxic
	damage = 30
	damage_type = TOX

/obj/item/projectile/bullet/F13/c308mmBullet/heap
	damage = 60
	armour_penetration = -44

/obj/item/projectile/bullet/F13/c308mmBullet/armourpiercing
	damage = 32
	armour_penetration = 30

/obj/item/projectile/bullet/F13/c308mmBullet/fire
	damage = 18

/obj/item/projectile/bullet/F13/c308mmBullet/fire/on_hit(atom/target, blocked = 0)
	if(..(target, blocked))
		var/mob/living/M = target
		M.adjust_fire_stacks(1)
		M.IgniteMob()

//Bullets library: .223
/obj/item/projectile/bullet/F13/c223Bullet
	damage = 56

/obj/item/projectile/bullet/F13/c223Bullet/toxic
	damage = 48
	damage_type = TOX

/obj/item/projectile/bullet/F13/c223Bullet/heap
	damage = 88
	armour_penetration = -32

/obj/item/projectile/bullet/F13/c223Bullet/armourpiercing
	damage = 44
	armour_penetration = 32

/obj/item/projectile/bullet/F13/c223Bullet/fire
	damage = 28

/obj/item/projectile/bullet/F13/c223Bullet/fire/on_hit(atom/target, blocked = 0)
	if(..(target, blocked))
		var/mob/living/M = target
		M.adjust_fire_stacks(1)
		M.IgniteMob()


/obj/item/projectile/bullet/F13/c38mmBullet
	damage = 4