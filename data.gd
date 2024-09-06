extends Control
# Enums

enum TraitType {
	POSITIVE,
	NEUTRAL,
	SPECIES,
	NEGATIVE
}

enum Gender {
	MALE,
	FEMALE,
	OTHER
}

enum Species {
	PERSON,
	SYNTH,
	CATPERSON,
	FURRY,
	PROTOGEN, # It's the motherfucker from fortnite (fortnite)
	# that video is so awkward lol. they don't even know that it's a furry
	UNKNOWN,
	SHEEP,
	ZOMBIE,
	GHOST,
	ABOMINATION,
}

enum GearType {
	# Body
	HEAD,
	SKIN,
	LEGS,
	# Cosmetic
	HAT,
	SHIRT,
	PANTS,
	# Armor
	HELMET,
	VEST,
	LEG_PROTECTION,
}

enum GUIType {
	LINE,
	MULTILINE,
	FLOAT,
	INT,
	ENUM,
	BOOL,
}
# Classes

# Variables

var member_names = [
	"Joe Mama", "Jane Mama", "DogaGPSS", "FreezingGlaci3r", "FuwwyAI",
	"ProtoGuy", "Guy", "NotGuy", "CatGuy", "ComputerGuy", "pomni from the boring analog school",
	"markverb1 was here :3", "Bitwise Labs", "Maika Ti V Legloto", "george the Idot",
	"skywolf", "PianBad69", "m*ve on", "Uplink Gateway", "Hugh Jazz", "Mike Rafone",
	"Ben Dover", "Mike Hawk", "markverb1 try to write a good sample name (impossible)",
	"the skibidi rizzler", "ZalezGaming2", "LOE-", "John Lee-nk", "Michael from Michael Zombies",
	"A certain spoiled brat that talks like a lawyer (spoiler: he's called leuko)",
	"TayLay", "ivan dolvich", "that woman from uplink", "Bit", "Lithium",
	"Fricks", "Stinkbug", "Moyta Mahala", "Mule", "mariverb1", "Setup", "h8ther's mom",
	"L0ver", "the cops that came to undo your mom :p", "lmao dude", "uncute sam",
	"sphere5590", "Xedomonaxx", "theta.ua", "Vehicle Slave", "Bath Unfunny",
	"Pуro (the у is cyrillic)", "Old Wounds", "Member", "Demoted To Bember", "skibidi biden",
	"FatMaзна", "Blandon Pusey", "Tactical Interventor", "Feral Human (likes mushrooms)",
	"UwUitis Victim", "Never-Giver-Upper", "Green Shithead", "Sharp Hand Joe", 
	"Red Respirator Rodrick", "102.3, REAL SHITTY FM!!!"
]

#  _____       _                                    
# /  __ \     | |                                   
# | /  \/ __ _| |_ __ _ _ __ ___   __ _ _ __  _ __  
# | |    / _` | __/ _` | '_ ` _ \ / _` | '_ \| '_ \ 
# | \__/\ (_| | || (_| | | | | | | (_| | |_) | |_) |
#  \____/\__,_|\__\__,_|_| |_| |_|\__,_| .__/| .__/ 
#									   | |   | |    
#									   |_|   |_|    
# i know you're reading this.
# why are you here if you are banned from contributing...

var information = {
	"items" = {
		
	},
	"gear" = {
		
	},
	"templates" = {
		"team" = {
			"hated" = false,
			"uneditable" = false,
		},
		"member" = {
			"name" = "",
			"team" = "",
			"gender" = Gender.OTHER,
			"species" = Species.PERSON,
			"traits" = [],
			"gear" = {
				"head" = "",
				"skin" = "",
				"legs" = "",
				"hat" = "",
				"shirt" = "",
				"pants" = "",
				"helmet" = "",
				"vest" = "",
				"leg_protection" = ""
			},
			"variables" = {
				"hp" = 20,
				"armor" = 0,
				"shell_shock" = 0,
				
			},
			"stats" = {
				# Weapon Handling
				"firearms" = 0,
				"melee" = 0,
				# Mental
				"intelligence" = 0,
				"perception" = 0,
				"agility" = 0,
				# Emotions and relationships
				"stability" = 0,
				"annoyance" = 0,
				"naivity" = 0,
				"suicidal" = 0,
				# Physical
				"strength" = 0,
				"vitality" = 0,
				"stress_resistance" = 0,
				# Practical
				"medical" = 0,
				"enginnering" = 0,
				"leadership" = 0,
				"programming" = 0, # to get out of this hellhole
			},
		},
	}
}

# do not move this down or you will have to face ze concequences

var teams = {
	
}

var selected_team: String = "No Team"

var members = {
	
}

var selected_member: String = "ymss3000 player"


# Funcs

func remove_whitespace(string: String):
	var cull = RegEx.new()
	cull.compile("(\\W)+")
	return cull.sub(string, "", true)

func pick_random_name(from: Array, add_to_dict: Dictionary = {}):
	var rand: String = from.pick_random()
	for time in range(1, 10):
		if add_to_dict.has(rand):
			rand = from.pick_random()
	return rand

func has_letters(string: String):
	var hletters = RegEx.new()
	hletters.compile("(\\w)+")
	if hletters.search(str(string)):
		return true
	return false

func resolve_dict_key_conflict(conflicting: String, dict: Dictionary):
	var attempts: int = 0
	#var conflicting_temp: String = conflicting
	if dict.has(conflicting):
		attempts = 1
	while dict.has(conflicting + str(attempts)):
		attempts += 1
	match attempts:
		0:
			return conflicting
		_:
			return conflicting + str(attempts)
	#return conflicting + str(attempts)
func show_children_of(node):
	for child in node.get_children(false):
		child.show()
func hide_children_of(node):
	for child in node.get_children(false):
		child.hide()
func set_member_attribute(member: String,sub1,sub2,sub3):
	if members.has(member):
		pass


# Called when the node enters the scene tree for the first time.
func _ready():
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass
