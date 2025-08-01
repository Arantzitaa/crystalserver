local mType = Game.createMonsterType("Deathling Spellsinger")
local monster = {}

monster.description = "a deathling spellsinger"
monster.experience = 6400
monster.outfit = {
	lookType = 1088,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 1677
monster.Bestiary = {
	class = "Aquatic",
	race = BESTY_RACE_AQUATIC,
	toKill = 2500,
	FirstUnlock = 100,
	SecondUnlock = 1000,
	CharmsPoints = 50,
	Stars = 4,
	Occurrence = 0,
	Locations = "Ancient Ancestorial Grounds and Sunken Temple.",
}

monster.health = 7200
monster.maxHealth = 7200
monster.race = "blood"
monster.corpse = 28851
monster.speed = 155
monster.manaCost = 0

monster.faction = FACTION_DEATHLING
monster.enemyFactions = { FACTION_PLAYER, FACTION_DEEPLING }

monster.changeTarget = {
	interval = 4000,
	chance = 10,
}

monster.strategiesTarget = {
	nearest = 100,
}

monster.flags = {
	summonable = false,
	attackable = true,
	hostile = true,
	convinceable = false,
	pushable = false,
	rewardBoss = false,
	illusionable = false,
	canPushItems = true,
	canPushCreatures = true,
	staticAttackChance = 60,
	targetDistance = 1,
	runHealth = 20,
	healthHidden = false,
	isBlockable = false,
	canWalkOnEnergy = false,
	canWalkOnFire = true,
	canWalkOnPoison = false,
}

monster.light = {
	level = 0,
	color = 0,
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{ text = 'BOQOL"°', yell = false },
	{ text = 'QOL" VBOXCL°', yell = false },
}

monster.loot = {
	{ name = "platinum coin", chance = 85120, maxCount = 14 },
	{ name = "crystalline arrow", chance = 25780, maxCount = 25 },
	{ name = "small emerald", chance = 13260, maxCount = 14 },
	{ name = "deeptags", chance = 13180 },
	{ name = "deepling filet", chance = 12580 },
	{ name = "deepling ridge", chance = 9020 },
	{ name = "great health potion", chance = 8750 },
	{ name = "deepling warts", chance = 8280 },
	{ name = "great mana potion", chance = 7970 },
	{ name = "vortex bolt", chance = 5350, maxCount = 25 },
	{ name = "eye of a deepling", chance = 4840 },
	{ name = "warrior's shield", chance = 3370 },
	{ name = "heavy trident", chance = 3340 },
	{ name = "fish fin", chance = 3050 },
	{ name = "warrior's axe", chance = 2900 },
	{ name = "small enchanted sapphire", chance = 2210 },
	{ id = 3052, chance = 2130 }, -- life ring
	{ name = "necklace of the deep", chance = 240 },
}

monster.attacks = {
	{ name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -300, effect = CONST_ME_DRAWBLOOD },
	{ name = "combat", interval = 4000, chance = 15, type = COMBAT_PHYSICALDAMAGE, minDamage = -200, maxDamage = -400, range = 5, shootEffect = CONST_ANI_HUNTINGSPEAR, target = false },
	{ name = "combat", interval = 4000, chance = 15, type = COMBAT_PHYSICALDAMAGE, minDamage = -150, maxDamage = -300, range = 5, shootEffect = CONST_ANI_LARGEROCK, target = false },
	{ name = "combat", interval = 2000, chance = 14, type = COMBAT_HOLYDAMAGE, minDamage = -400, maxDamage = -700, length = 8, spread = 0, effect = CONST_ME_HOLYAREA, target = false },
}

monster.defenses = {
	defense = 72,
	armor = 72,
	mitigation = 1.88,
}

monster.elements = {
	{ type = COMBAT_PHYSICALDAMAGE, percent = 0 },
	{ type = COMBAT_ENERGYDAMAGE, percent = -10 },
	{ type = COMBAT_EARTHDAMAGE, percent = -10 },
	{ type = COMBAT_FIREDAMAGE, percent = 100 },
	{ type = COMBAT_LIFEDRAIN, percent = 0 },
	{ type = COMBAT_MANADRAIN, percent = 0 },
	{ type = COMBAT_DROWNDAMAGE, percent = 0 },
	{ type = COMBAT_ICEDAMAGE, percent = 100 },
	{ type = COMBAT_HOLYDAMAGE, percent = 0 },
	{ type = COMBAT_DEATHDAMAGE, percent = 10 },
}

monster.immunities = {
	{ type = "paralyze", condition = false },
	{ type = "outfit", condition = false },
	{ type = "invisible", condition = true },
	{ type = "bleed", condition = false },
}

mType:register(monster)
