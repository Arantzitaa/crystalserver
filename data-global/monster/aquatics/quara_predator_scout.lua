local mType = Game.createMonsterType("Quara Predator Scout")
local monster = {}

monster.description = "a quara predator scout"
monster.experience = 400
monster.outfit = {
	lookType = 20,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 238
monster.Bestiary = {
	class = "Aquatic",
	race = BESTY_RACE_AQUATIC,
	toKill = 1000,
	FirstUnlock = 50,
	SecondUnlock = 500,
	CharmsPoints = 25,
	Stars = 3,
	Occurrence = 0,
	Locations = "Malada, Hrodmir Quara Scout Caves, Quara Grotto, Oramond.",
}

monster.health = 890
monster.maxHealth = 890
monster.race = "blood"
monster.corpse = 6067
monster.speed = 85
monster.manaCost = 0

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
	illusionable = true,
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
	level = 2,
	color = 35,
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{ text = "Gnarrr!", yell = false },
	{ text = "Tcharrr!", yell = false },
	{ text = "Rrrah!", yell = false },
	{ text = "Rraaar!", yell = false },
}

monster.loot = {
	{ name = "gold coin", chance = 98960, maxCount = 129 },
	{ name = "quara bone", chance = 10120 },
	{ name = "scale armor", chance = 8990 },
	{ name = "double axe", chance = 5790 },
	{ name = "shrimp", chance = 5070, maxCount = 5 },
	{ name = "small diamond", chance = 5010, maxCount = 2 },
	{ name = "two handed sword", chance = 2980 },
	{ name = "fish fin", chance = 1060 },
	{ name = "northwind rod", chance = 950 },
}

monster.attacks = {
	{ name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -193, effect = CONST_ME_DRAWBLOOD },
}

monster.defenses = {
	defense = 30,
	armor = 30,
	mitigation = 1.04,
}

monster.elements = {
	{ type = COMBAT_PHYSICALDAMAGE, percent = 0 },
	{ type = COMBAT_ENERGYDAMAGE, percent = -10 },
	{ type = COMBAT_EARTHDAMAGE, percent = -10 },
	{ type = COMBAT_FIREDAMAGE, percent = 100 },
	{ type = COMBAT_LIFEDRAIN, percent = 100 },
	{ type = COMBAT_MANADRAIN, percent = 0 },
	{ type = COMBAT_DROWNDAMAGE, percent = 100 },
	{ type = COMBAT_ICEDAMAGE, percent = 100 },
	{ type = COMBAT_HOLYDAMAGE, percent = 0 },
	{ type = COMBAT_DEATHDAMAGE, percent = 0 },
}

monster.immunities = {
	{ type = "paralyze", condition = false },
	{ type = "outfit", condition = false },
	{ type = "invisible", condition = true },
	{ type = "bleed", condition = false },
}

mType:register(monster)
