local mType = Game.createMonsterType("Salamander")
local monster = {}

monster.description = "a salamander"
monster.experience = 25
monster.outfit = {
	lookType = 529,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 913
monster.Bestiary = {
	class = "Amphibic",
	race = BESTY_RACE_AMPHIBIC,
	toKill = 500,
	FirstUnlock = 25,
	SecondUnlock = 250,
	CharmsPoints = 15,
	Stars = 2,
	Occurrence = 0,
	Locations = "Shadowthorn in the bog god's temple, Drefia, around Lake Equivocolao when it's dirty.",
}

monster.health = 70
monster.maxHealth = 70
monster.race = "blood"
monster.corpse = 17427
monster.speed = 60
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
	pushable = true,
	rewardBoss = false,
	illusionable = false,
	canPushItems = false,
	canPushCreatures = true,
	staticAttackChance = 90,
	targetDistance = 1,
	runHealth = 10,
	healthHidden = false,
	isBlockable = false,
	canWalkOnEnergy = false,
	canWalkOnFire = false,
	canWalkOnPoison = false,
}

monster.light = {
	level = 0,
	color = 0,
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{ text = "Chrrch!", yell = false },
}

monster.loot = {
	{ name = "gold coin", chance = 71940, maxCount = 15 },
	{ id = 17457, chance = 34690, maxCount = 5 }, -- insectoid eggs
	{ name = "arrow", chance = 7990, maxCount = 3 },
	{ id = 3003, chance = 5080 }, -- rope
	{ name = "mace", chance = 3980 },
	{ name = "brass helmet", chance = 1980 },
	{ name = "health potion", chance = 1480 },
	{ name = "bow", chance = 740 },
	{ id = 3307, chance = 490 }, -- scimitar
}

monster.attacks = {
	{ name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -60, effect = CONST_ME_DRAWBLOOD, condition = { type = CONDITION_POISON, totalDamage = 10, interval = 4000 } },
}

monster.defenses = {
	defense = 5,
	armor = 3,
	mitigation = 0.13,
	{ name = "combat", interval = 6000, chance = 20, type = COMBAT_HEALING, minDamage = 0, maxDamage = 4, effect = CONST_ME_MAGIC_BLUE, target = false },
}

monster.elements = {
	{ type = COMBAT_PHYSICALDAMAGE, percent = 0 },
	{ type = COMBAT_ENERGYDAMAGE, percent = 0 },
	{ type = COMBAT_EARTHDAMAGE, percent = 10 },
	{ type = COMBAT_FIREDAMAGE, percent = 0 },
	{ type = COMBAT_LIFEDRAIN, percent = 0 },
	{ type = COMBAT_MANADRAIN, percent = 0 },
	{ type = COMBAT_DROWNDAMAGE, percent = 0 },
	{ type = COMBAT_ICEDAMAGE, percent = 0 },
	{ type = COMBAT_HOLYDAMAGE, percent = 0 },
	{ type = COMBAT_DEATHDAMAGE, percent = 0 },
}

monster.immunities = {
	{ type = "paralyze", condition = false },
	{ type = "outfit", condition = false },
	{ type = "invisible", condition = false },
	{ type = "bleed", condition = false },
}

mType:register(monster)
