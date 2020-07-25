//VAULT//

/datum/job/overseer
	title = "Overseer"
	desc = "Head of the Vault."
	flag = VAULT_OVERSEER
	department_head = list("Vault")
	department_flag = FOB
	faction = "vault"
	status = "overseer"
	total_positions = 1
	spawn_positions = 1
	supervisors = "Vault-tec"
	selection_color = "#005A20"
	minimal_player_age = 31
	whitelist_on = 1

	allowed_packs = list("starter", "cigarettes", "f76")

	required_items = list(
	/obj/item/clothing/glasses/sunglasses,
	/obj/item/weapon/lighter/engraved
	)
	denied_items = list(
	/obj/item/clothing/shoes/f13/rag,
	/obj/item/clothing/head/f13/headscarf,
	/obj/item/clothing/head/f13/pot,
	/obj/item/clothing/under/pants/f13/ghoul,
	/obj/item/clothing/under/pants/f13/cloth,
	/obj/item/clothing/under/pants/f13/caravan,
	/obj/item/clothing/under/f13/rag,
	/obj/item/clothing/under/f13/tribal,
	/obj/item/clothing/under/f13/female/tribal,
	/obj/item/clothing/under/f13/settler,
	/obj/item/clothing/under/f13/brahmin,
	/obj/item/clothing/under/f13/female/brahmin,
	/obj/item/clothing/under/f13/worn,
	/obj/item/clothing/suit/f13/mantle_liz
	)

	outfit = /datum/outfit/job/overseer

	access = list()
	minimal_access = list()

/datum/job/overseer/get_access()
	return get_all_accesses()

/datum/outfit/job/overseer
	name = "Overseer"

	id = /obj/item/weapon/card/id/gold
	glasses = /obj/item/clothing/glasses/sunglasses
	r_pocket = /obj/item/device/pda/captain
	uniform = /obj/item/clothing/under/f13/vault/v113
	shoes = /obj/item/clothing/shoes/sneakers/brown

/datum/job/dweller
	title = "Vault Resident"
	flag = VAULT_RESIDENT/*ASSISTANT*/
	department_head = list("Overseer")
	department_flag = FOB
	faction = "vault"
	status = "resident"
	total_positions = 4
	spawn_positions = 4
	supervisors = "смотрителю"
	selection_color = "#005A20"

	allowed_packs = list("starter", "cigarettes")

	required_items = list(
	/obj/item/clothing/glasses/sunglasses,
	/obj/item/weapon/lighter/engraved
	)
	denied_items = list(
	/obj/item/clothing/shoes/f13/rag,
	/obj/item/clothing/head/f13/headscarf,
	/obj/item/clothing/head/f13/pot,
	/obj/item/clothing/under/pants/f13/ghoul,
	/obj/item/clothing/under/pants/f13/cloth,
	/obj/item/clothing/under/pants/f13/caravan,
	/obj/item/clothing/under/f13/rag,
	/obj/item/clothing/under/f13/tribal,
	/obj/item/clothing/under/f13/female/tribal,
	/obj/item/clothing/under/f13/settler,
	/obj/item/clothing/under/f13/brahmin,
	/obj/item/clothing/under/f13/female/brahmin,
	/obj/item/clothing/under/f13/worn,
	/obj/item/clothing/suit/f13/mantle_liz
	)

	access = list()
	minimal_access = list()
	outfit = /datum/outfit/job/dweller

/datum/outfit/job/dweller
	name = "Dweller"
	uniform = /obj/item/clothing/under/f13/vault/v113
	id = /obj/item/weapon/card/id
	r_pocket = /obj/item/device/pda
	shoes = /obj/item/clothing/shoes/sneakers/brown

///security///

/datum/job/vltsec
	title = "Vault Security"
	flag = VAULT_SECURITY/*shitcurity*/
	department_head = list("Head of Security")
	department_flag = FOB
	faction = "vault"
	status = "security"
	total_positions = 2
	spawn_positions = 2
	supervisors = "смотрителю"
	selection_color = "#005A20"

	allowed_packs = list("starter", "cigarettes")

	required_items = list()
	denied_items = list(
	/obj/item/clothing/shoes/f13/rag,
	/obj/item/clothing/head/f13/headscarf,
	/obj/item/clothing/head/f13/pot,
	/obj/item/clothing/under/pants/f13/ghoul,
	/obj/item/clothing/under/pants/f13/cloth,
	/obj/item/clothing/under/pants/f13/caravan,
	/obj/item/clothing/under/f13/rag,
	/obj/item/clothing/under/f13/tribal,
	/obj/item/clothing/under/f13/female/tribal,
	/obj/item/clothing/under/f13/settler,
	/obj/item/clothing/under/f13/brahmin,
	/obj/item/clothing/under/f13/female/brahmin,
	/obj/item/clothing/under/f13/worn,
	/obj/item/clothing/suit/f13/mantle_liz
	)

	access = list(access_security, access_sec_doors, access_brig, access_court, access_maint_tunnels, access_morgue, access_weapons, access_forensics_lockers)
	minimal_access = list(access_security, access_sec_doors, access_brig, access_court, access_weapons) //But see /datum/job/warden/get_access()
	outfit = /datum/outfit/job/vltsec

/datum/outfit/job/vltsec
	name = "vault security"
	uniform = /obj/item/clothing/under/f13/vault/v113
	id = /obj/item/weapon/card/id
	belt = /obj/item/device/pda/security
	shoes = /obj/item/clothing/shoes/f13/military
	gloves = /obj/item/clothing/gloves/color/black
	head = /obj/item/clothing/head/helmet/riot
	suit = /obj/item/clothing/suit/armor/vest/alt
	l_pocket = /obj/item/weapon/restraints/handcuffs
	r_pocket = /obj/item/device/assembly/flash/handheld
	backpack_contents = list(/obj/item/weapon/melee/baton/loaded=1)
	backpack = /obj/item/weapon/storage/backpack/security

///science///

/datum/job/vltsci
	title = "Vault Sciencist"
	flag = VAULT_SCIENCIST/*science*/
	department_head = list("Overseer")
	department_flag = FOB
	faction = "vault"
	status = "sciencist"
	total_positions = 1
	spawn_positions = 2
	supervisors = "смотрителю"
	selection_color = "#005A20"

	allowed_packs = list("starter", "cigarettes")

	required_items = list(
	/obj/item/clothing/under/f13/vault/v113,
	/obj/item/clothing/suit/toggle/labcoat/f13/followers
	)
	denied_items = list(
	/obj/item/clothing/shoes/f13/rag,
	/obj/item/clothing/head/f13/headscarf,
	/obj/item/clothing/head/f13/pot,
	/obj/item/clothing/under/pants/f13/ghoul,
	/obj/item/clothing/under/pants/f13/cloth,
	/obj/item/clothing/under/pants/f13/caravan,
	/obj/item/clothing/under/f13/rag,
	/obj/item/clothing/under/f13/tribal,
	/obj/item/clothing/under/f13/female/tribal,
	/obj/item/clothing/under/f13/settler,
	/obj/item/clothing/under/f13/brahmin,
	/obj/item/clothing/under/f13/female/brahmin,
	/obj/item/clothing/under/f13/worn,
	/obj/item/clothing/suit/f13/mantle_liz
	)

	access = list(access_robotics, access_tox, access_tox_storage, access_research, access_xenobiology, access_mineral_storeroom, access_tech_storage, access_genetics)
	minimal_access = list(access_tox, access_tox_storage, access_research, access_xenobiology, access_mineral_storeroom)
	outfit = /datum/outfit/job/vltsci

/datum/outfit/job/vltsci
	name = "Scientist VLT"
	belt = /obj/item/device/pda/toxins
	uniform = /obj/item/clothing/under/f13/vault/v113
	shoes = /obj/item/clothing/shoes/laceup
	id = /obj/item/weapon/card/id
	suit = /obj/item/clothing/suit/toggle/labcoat/f13/followers

/datum/job/vlteng
	title = "Vault Engineer"
	flag = VAULT_ENGINEER/*engineers*/
	department_head = list("Overseer")
	department_flag = FOB
	faction = "vault"
	status = "engineer"
	total_positions = 2
	spawn_positions = 2
	supervisors = "смотрителю"
	selection_color = "#005A20"

	allowed_packs = list("starter", "cigarettes")

	required_items = list(
	/obj/item/clothing/under/f13/vault/v113,
	/obj/item/clothing/suit/toggle/labcoat/f13/followers,
	)
	denied_items = list(
	/obj/item/clothing/shoes/f13/rag,
	/obj/item/clothing/head/f13/headscarf,
	/obj/item/clothing/head/f13/pot,
	/obj/item/clothing/under/pants/f13/ghoul,
	/obj/item/clothing/under/pants/f13/cloth,
	/obj/item/clothing/under/pants/f13/caravan,
	/obj/item/clothing/under/f13/rag,
	/obj/item/clothing/under/f13/tribal,
	/obj/item/clothing/under/f13/female/tribal,
	/obj/item/clothing/under/f13/settler,
	/obj/item/clothing/under/f13/brahmin,
	/obj/item/clothing/under/f13/female/brahmin,
	/obj/item/clothing/under/f13/worn,
	/obj/item/clothing/suit/f13/mantle_liz
	)

	access = list(access_engine, access_engine_equip, access_tech_storage, access_maint_tunnels, access_external_airlocks, access_construction, access_atmospherics, access_tcomsat)
	minimal_access = list(access_engine, access_engine_equip, access_tech_storage, access_maint_tunnels, access_external_airlocks, access_construction, access_tcomsat)
	outfit = /datum/outfit/job/vlteng

/datum/outfit/job/vlteng
	name = "Engineer VLT"
	satchel = /obj/item/weapon/storage/backpack/satchel/eng
	head = /obj/item/clothing/head/hardhat/dblue
	r_pocket = /obj/item/device/pda/engineering
	id = /obj/item/weapon/card/id
	belt = /obj/item/weapon/storage/belt/utility/full
	uniform = /obj/item/clothing/under/f13/vault/v113
	shoes = /obj/item/clothing/shoes/workboots