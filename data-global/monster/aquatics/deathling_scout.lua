local mType = Game.createMonsterType("Deathling Scout")
local monster = {}

monster.description = "a deathling scout"
monster.experience = 6300
monster.outfit = {
	lookType = 1073,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 1667
monster.Bestiary = {
	class = "Aquatic",
	race = BESTY_RACE_AQUATIC,
	toKill = 2500,
	FirstUnlock = 100,
	SecondUnlock = 1000,
	CharmsPoints = 50,
	Stars = 4,
	Occurrence = 0,
	Locations = "Deepling Ancestorial Grounds and Sunken Temple.",
}

monster.health = 7200
monster.maxHealth = 7200
monster.race = "blood"
monster.corpse = 28629
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
	staticAttackChance = 90,
	targetDistance = 1,
	runHealth = 0,
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
	{ text = "VBOX°O", yell = false },
	{ text = 'O(J-"LJ-T =|-°', yell = false },
}

monster.loot = {
	{ name = "crystalline arrow", chance = 25220, maxCount = 25 },
	{ name = "vortex bolt", chance = 22360, maxCount = 25 },
	{ name = "small emerald", chance = 21230, maxCount = 12 },
	{ name = "deepling warts", chance = 20940, maxCount = 4 },
	{ name = "deeptags", chance = 12930 },
	{ name = "deepling filet", chance = 12390 },
	{ name = "small enchanted sapphire", chance = 11500, maxCount = 8 },
	{ name = "deepling ridge", chance = 9400 },
	{ name = "great health potion", chance = 8770 },
	{ name = "great mana potion", chance = 8280 },
	{ name = "heavy trident", chance = 5570 },
	{ name = "eye of a deepling", chance = 5500 },
	{ name = "warrior's axe", chance = 2890 },
	{ name = "warrior's shield", chance = 2610 },
	{ id = 3052, chance = 2320 }, -- life ring
	{ name = "fish fin", chance = 790 },
	{ name = "necklace of the deep", chance = 510 },
}

monster.attacks = {
	{ name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -300, effect = CONST_ME_DRAWBLOOD },
	{ name = "combat", interval = 4000, chance = 15, type = COMBAT_PHYSICALDAMAGE, minDamage = -200, maxDamage = -400, range = 5, shootEffect = CONST_ANI_HUNTINGSPEAR, target = false },
	{ name = "combat", interval = 4000, chance = 15, type = COMBAT_PHYSICALDAMAGE, minDamage = -150, maxDamage = -300, range = 5, shootEffect = CONST_ANI_LARGEROCK, target = false },
	{ name = "combat", interval = 4000, chance = 10, type = COMBAT_EARTHDAMAGE, minDamage = -350, maxDamage = -550, radius = 3, effect = CONST_ME_POFF, target = false },
}

monster.defenses = {
	defense = 72,
	armor = 72,
}

monster.elements = {
	{ type = COMBAT_PHYSICALDAMAGE, percent = 0 },
	{ type = COMBAT_ENERGYDAMAGE, percent = -10 },
	{ type = COMBAT_EARTHDAMAGE, percent = -10 },
	{ type = COMBAT_FIREDAMAGE, percent = 100 },
	{ type = COMBAT_LIFEDRAIN, percent = 0 },
	{ type = COMBAT_MANADRAIN, percent = 0 },
	{ type = COMBAT_DROWNDAMAGE, percent = 100 },
	{ type = COMBAT_ICEDAMAGE, percent = 100 },
	{ type = COMBAT_HOLYDAMAGE, percent = 0 },
	{ type = COMBAT_DEATHDAMAGE, percent = 10 },
}

monster.immunities = {
	{ type = "paralyze", condition = true },
	{ type = "outfit", condition = false },
	{ type = "invisible", condition = true },
	{ type = "bleed", condition = false },
}

mType:register(monster)
