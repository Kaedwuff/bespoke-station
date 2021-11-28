/datum/job/tourist
	title = "Tourist"
	flag = TOURIST
	departments = SIMPLEDEPT(DEPARTMENT_CIVILIAN)
	department_flag = CIVILIAN
	faction = "Station"
	total_positions = -1
	spawn_positions = -1
	intro_prefix = "an"
	supervisors = "only yourself and your possessions"
	selection_color = "#90524b"
	economic_modifier = 1
	access = list()			//See /datum/job/tourist/get_access()
	minimal_access = list()	//See /datum/job/tourist/get_access()
	alt_titles = list("Transient")
	outfit = /datum/outfit/job/tourist
	blacklisted_species = list(SPECIES_VAURCA_BREEDER)

/datum/job/tourist/get_access(selected_title)
	if(config.assistant_maint && selected_title == "Assistant")
		return list(access_maint_tunnels)
	else
		return list()

/datum/outfit/job/tourist
	name = "Tourist"
	jobtype = /datum/job/tourist

	uniform = /obj/item/clothing/under/color/grey
	shoes = /obj/item/clothing/shoes/black

/datum/job/local
	title = "Local"
	flag = LOCAL
	departments = SIMPLEDEPT(DEPARTMENT_CIVILIAN)
	department_flag = CIVILIAN
	faction = "Station"
	total_positions = -1
	spawn_positions = -1
	supervisors = "maintainining your home keeping yourself safe"
	selection_color = "#90524b"
	economic_modifier = 1
	access = list()
	minimal_access = list()
	outfit = /datum/outfit/job/local
	blacklisted_species = list(SPECIES_VAURCA_BREEDER)

/datum/outfit/job/local
	name = "Visitor"
	jobtype = /datum/job/local

	uniform = /obj/item/clothing/under/color/black
	shoes = /obj/item/clothing/shoes/black
