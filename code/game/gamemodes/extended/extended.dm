/datum/game_mode/extended
	name = "secret extended"
	config_tag = "secret extended"
	required_players = 0

	announce_span = "notice"
	announce_text = "Веселитесь и хорошо проведите время!"

/datum/game_mode/extended/pre_setup()
	return 1

/datum/game_mode/extended/post_setup()
	..()

/datum/game_mode/extended/announced
	name = "Фоллаут: Кебаб"
	config_tag = "wasteland"

/datum/game_mode/extended/announced/generate_station_goals()
	return

	for(var/T in subtypesof(/datum/station_goal))
		var/datum/station_goal/G = new T
		station_goals += G
		G.on_report()

/datum/game_mode/extended/announced/send_intercept(report = 0)
	priority_announce("Thanks to the tireless efforts of our security and intelligence divisions, there are currently no credible threats to [station_name()]. All station construction projects have been authorized. Have a secure shift!", "Security Report", 'sound/AI/commandreport.ogg')
