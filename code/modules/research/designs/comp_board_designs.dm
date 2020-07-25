///////////////////Computer Boards///////////////////////////////////

/datum/design/board
	name = "Плата компьютера (Аркадный Автомат)"
	desc = "Allows for the construction of circuit boards used to build a new arcade machine."
	id = "arcade_battle"
	req_tech = list("programming" = 1)
	materials = list(MAT_GLASS = 1000)
	reagents_list = list("sacid" = 20)
	build_path = /obj/item/weapon/circuitboard/computer/arcade/battle
	category = list("Computer Boards")
	build_type = IMPRINTER

/datum/design/board/orion_trail
	name = "Плата компьютера (Аркадный Автомат \"Путь Ориона\")"
	desc = "Allows for the construction of circuit boards used to build a new Orion Trail machine."
	id = "arcade_orion"
	req_tech = list("programming" = 1)
	build_path = /obj/item/weapon/circuitboard/computer/arcade/orion_trail
	category = list("Computer Boards")
	build_type = IMPRINTER


/datum/design/board/seccamera
	name = "Плата компьютера (Камеры наблюдения)"
	desc = "Allows for the construction of circuit boards used to build security camera computers."
	id = "seccamera"
	req_tech = list("programming" = 2, "combat" = 2)
	build_path = /obj/item/weapon/circuitboard/computer/security
	category = list("Computer Boards")
	build_type = IMPRINTER

/datum/design/board/aiupload
	name = "Плата компьютера (Загрузка ИскИн)"
	desc = "Allows for the construction of circuit boards used to build an AI Upload Console."
	id = "aiupload"
	req_tech = list("programming" = 4, "engineering" = 4)
	build_path = /obj/item/weapon/circuitboard/computer/aiupload
	category = list("Computer Boards")
	build_type = IMPRINTER

/datum/design/board/borgupload
	name = "Плата компьютера (Cyborg Upload)"
	desc = "Allows for the construction of circuit boards used to build a Cyborg Upload Console."
	id = "borgupload"
	req_tech = list("programming" = 4, "engineering" = 4)
	build_path = /obj/item/weapon/circuitboard/computer/borgupload
	category = list("Computer Boards")
	build_type = IMPRINTER

/datum/design/board/med_data
	name = "Плата компьютера (Медицинские записи)"
	desc = "Allows for the construction of circuit boards used to build a medical records console."
	id = "med_data"
	req_tech = list("programming" = 2, "biotech" = 2)
	build_path = /obj/item/weapon/circuitboard/computer/med_data
	category = list("Computer Boards")
	build_type = IMPRINTER

/datum/design/board/operating
	name = "Плата компьютера (Ассистент в операциях)"
	desc = "Allows for the construction of circuit boards used to build an operating computer console."
	id = "operating"
	req_tech = list("programming" = 2, "biotech" = 3)
	build_path = /obj/item/weapon/circuitboard/computer/operating
	category = list("Computer Boards")
	build_type = IMPRINTER

/datum/design/board/pandemic
	name = "Плата компьютера (PanD.E.M.I.C. 2200)"
	desc = "Allows for the construction of circuit boards used to build a PanD.E.M.I.C. 2200 console."
	id = "pandemic"
	req_tech = list("programming" = 3, "biotech" = 3)
	build_path = /obj/item/weapon/circuitboard/computer/pandemic
	category = list("Computer Boards")
	build_type = IMPRINTER

/datum/design/board/scan_console
	name = "Плата компьютера (Сканирование ДНК)"
	desc = "Allows for the construction of circuit boards used to build a new DNA scanning console."
	id = "scan_console"
	req_tech = list("programming" = 2, "biotech" = 2)
	build_path = /obj/item/weapon/circuitboard/computer/scan_consolenew
	category = list("Computer Boards")
	build_type = IMPRINTER

/datum/design/board/comconsole
	name = "Плата компьютера (Коммуникации)"
	desc = "Allows for the construction of circuit boards used to build a communications console."
	id = "comconsole"
	req_tech = list("programming" = 3, "magnets" = 3)
	build_path = /obj/item/weapon/circuitboard/computer/communications
	category = list("Computer Boards")
	build_type = IMPRINTER

/datum/design/board/idcardconsole
	name = "Плата компьютера (Консоль изменения доступа)"
	desc = "Allows for the construction of circuit boards used to build an ID computer."
	id = "idcardconsole"
	req_tech = list("programming" = 3)
	build_path = /obj/item/weapon/circuitboard/computer/card
	category = list("Computer Boards")
	build_type = IMPRINTER

/datum/design/board/crewconsole
	name = "Плата компьютера (Crew monitoring computer)"
	desc = "Allows for the construction of circuit boards used to build a Crew monitoring computer."
	id = "crewconsole"
	req_tech = list("programming" = 3, "magnets" = 2, "biotech" = 2)
	build_path = /obj/item/weapon/circuitboard/computer/crew
	category = list("Computer Boards")
	build_type = IMPRINTER

/datum/design/board/secdata
	name = "Плата компьютера (Записи Службы Безопасности)"
	desc = "Allows for the construction of circuit boards used to build a security records console."
	id = "secdata"
	req_tech = list("programming" = 2, "combat" = 2)
	build_path = /obj/item/weapon/circuitboard/computer/secure_data
	category = list("Computer Boards")
	build_type = IMPRINTER

/datum/design/board/atmosalerts
	name = "Плата компьютера (Atmosphere Alert)"
	desc = "Allows for the construction of circuit boards used to build an atmosphere alert console."
	id = "atmosalerts"
	req_tech = list("programming" = 2)
	build_path = /obj/item/weapon/circuitboard/computer/atmos_alert
	category = list("Computer Boards")
	build_type = IMPRINTER

/datum/design/board/atmos_control
	name = "Плата компьютера (Atmospheric Monitor)"
	desc = "Allows for the construction of circuit boards used to build an Atmospheric Monitor."
	id = "atmos_control"
	req_tech = list("programming" = 2)
	build_path = /obj/item/weapon/circuitboard/computer/atmos_control
	category = list("Computer Boards")
	build_type = IMPRINTER

/datum/design/board/robocontrol
	name = "Плата компьютера (Robotics Control Console)"
	desc = "Allows for the construction of circuit boards used to build a Robotics Control console."
	id = "robocontrol"
	req_tech = list("programming" = 4)
	build_path = /obj/item/weapon/circuitboard/computer/robotics
	category = list("Computer Boards")
	build_type = IMPRINTER

/datum/design/board/slot_machine
	name = "Плата компьютера (Однорукий бандит)"
	desc = "Allows for the construction of circuit boards used to build a new slot machine."
	id = "slotmachine"
	req_tech = list("programming" = 1)
	build_path = /obj/item/weapon/circuitboard/computer/slot_machine
	category = list("Computer Boards")
	build_type = IMPRINTER

/datum/design/board/powermonitor
	name = "Плата компьютера (Мониторинг питания)"
	desc = "Allows for the construction of circuit boards used to build a new power monitor."
	id = "powermonitor"
	req_tech = list("programming" = 2, "powerstorage" = 2)
	build_path = /obj/item/weapon/circuitboard/computer/powermonitor
	category = list("Computer Boards")
	build_type = IMPRINTER

/datum/design/board/solarcontrol
	name = "Плата компьютера (Консоль управления Солнечными Панелями)"
	desc = "Allows for the construction of circuit boards used to build a solar control console."
	id = "solarcontrol"
	req_tech = list("programming" = 2, "powerstorage" = 2)
	build_path = /obj/item/weapon/circuitboard/computer/solar_control
	category = list("Computer Boards")
	build_type = IMPRINTER

/datum/design/board/prisonmanage
	name = "Плата компьютера (Prisoner Management Console)"
	desc = "Allows for the construction of circuit boards used to build a prisoner management console."
	id = "prisonmanage"
	req_tech = list("programming" = 2)
	build_path = /obj/item/weapon/circuitboard/computer/prisoner
	category = list("Computer Boards")
	build_type = IMPRINTER

/datum/design/board/mechacontrol
	name = "Плата компьютера (Exosuit Control Console)"
	desc = "Allows for the construction of circuit boards used to build an exosuit control console."
	id = "mechacontrol"
	req_tech = list("programming" = 3)
	build_path = /obj/item/weapon/circuitboard/computer/mecha_control
	category = list("Computer Boards")
	build_type = IMPRINTER

/datum/design/board/mechapower
	name = "Плата компьютера (Mech Bay Power Control Console)"
	desc = "Allows for the construction of circuit boards used to build a mech bay power control console."
	id = "mechapower"
	req_tech = list("programming" = 3, "powerstorage" = 3)
	build_path = /obj/item/weapon/circuitboard/computer/mech_bay_power_console
	category = list("Computer Boards")
	build_type = IMPRINTER

/datum/design/board/rdconsole
	name = "Плата компьютера (Научная Консоль)"
	desc = "Allows for the construction of circuit boards used to build a new R&D console."
	id = "rdconsole"
	req_tech = list("programming" = 4)
	build_path = /obj/item/weapon/circuitboard/computer/rdconsole
	category = list("Computer Boards")
	build_type = IMPRINTER

/datum/design/board/cargo
	name = "Плата компьютера (Supply Console)"
	desc = "Allows for the construction of circuit boards used to build a Supply Console."
	id = "cargo"
	req_tech = list("programming" = 3)
	build_path = /obj/item/weapon/circuitboard/computer/cargo
	category = list("Computer Boards")
	build_type = IMPRINTER

/datum/design/board/cargorequest
	name = "Плата компьютера (Supply Request Console)"
	desc = "Allows for the construction of circuit boards used to build a Supply Request Console."
	id = "cargorequest"
	req_tech = list("programming" = 2)
	build_path = /obj/item/weapon/circuitboard/computer/cargo/request
	category = list("Computer Boards")
	build_type = IMPRINTER

/datum/design/board/mining
	name = "Плата компьютера (Outpost Status Display)"
	desc = "Allows for the construction of circuit boards used to build an outpost status display console."
	id = "mining"
	req_tech = list("programming" = 2)
	build_path = /obj/item/weapon/circuitboard/computer/mining
	category = list("Computer Boards")
	build_type = IMPRINTER

/datum/design/board/comm_monitor
	name = "Плата компьютера (Хаб Мониторинга Телекомунникаций)"
	desc = "Allows for the construction of circuit boards used to build a telecommunications monitor."
	id = "comm_monitor"
	req_tech = list("programming" = 3, "magnets" = 3, "bluespace" = 2)
	build_path = /obj/item/weapon/circuitboard/computer/comm_monitor
	category = list("Computer Boards")
	build_type = IMPRINTER

/datum/design/board/comm_server
	name = "Плата компьютера (Хаб Мониторинга Сервера Телекомунникаций)"
	desc = "Allows for the construction of circuit boards used to build a telecommunication server browser and monitor."
	id = "comm_server"
	req_tech = list("programming" = 3, "magnets" = 3, "bluespace" = 2)
	build_path = /obj/item/weapon/circuitboard/computer/comm_server
	category = list("Computer Boards")
	build_type = IMPRINTER

/datum/design/board/message_monitor
	name = "Плата компьютера (Хаб Мониторинга Сообщений)"
	desc = "Allows for the construction of circuit boards used to build a messaging monitor console."
	id = "message_monitor"
	req_tech = list("programming" = 4)
	build_path = /obj/item/weapon/circuitboard/computer/message_monitor
	category = list("Computer Boards")
	build_type = IMPRINTER

/datum/design/board/aifixer
	name = "Плата компьютера (Восстановление ИскИн)"
	desc = "Allows for the construction of circuit boards used to build an AI Integrity Restorer."
	id = "aifixer"
	req_tech = list("programming" = 4, "magnets" = 3)
	build_path = /obj/item/weapon/circuitboard/computer/aifixer
	category = list("Computer Boards")
	build_type = IMPRINTER

/datum/design/board/libraryconsole
	name = "Плата компьютера (Библиотечная консоль)"
	desc = "Allows for the construction of circuit boards used to build a new library console."
	id = "libraryconsole"
	req_tech = list("programming" = 1)
	build_path = /obj/item/weapon/circuitboard/computer/libraryconsole
	category = list("Computer Boards")
	build_type = IMPRINTER
