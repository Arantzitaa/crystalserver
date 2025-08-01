local mType = Game.createMonsterType("Deepling Spellsinger")
local monster = {}

monster.description = "a deepling spellsinger"
monster.experience = 1000
monster.outfit = {
	lookType = 443,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 772
monster.Bestiary = {
	class = "Aquatic",
	race = BESTY_RACE_AQUATIC,
	toKill = 1000,
	FirstUnlock = 50,
	SecondUnlock = 500,
	CharmsPoints = 25,
	Stars = 3,
	Occurrence = 0,
	Locations = "Fiehonja.",
}

monster.health = 850
monster.maxHealth = 850
monster.race = "blood"
monster.corpse = 13771
monster.speed = 95
monster.manaCost = 0

monster.faction = FACTION_DEEPLING
monster.enemyFactions = { FACTION_PLAYER, FACTION_DEATHLING }

monster.changeTarget = {
	interval = 4000,
	chance = 10,
}

monster.strategiesTarget = {
	nearest = 70,
	health = 10,
	damage = 10,
	random = 10,
}

monster.flags = {
	summonable = false,
	attackable = true,
	hostile = true,
	convinceable = false,
	pushable = false,
	rewardBoss = false,
	illusionable = false,
	canPushItems = false,
	canPushCreatures = true,
	staticAttackChance = 60,
	targetDistance = 1,
	runHealth = 60,
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
	{ text = "Jey Obu giotja!!", yell = false },
	{ text = "Mmmmmoooaaaaaahaaa!!", yell = false },
}

monster.loot = {
	{ name = "platinum coin", chance = 80000 },
	{ name = "gold coin", chance = 75150, maxCount = 60 },
	{ name = "spellsinger's seal", chance = 15220 },
	{ name = "deepling filet", chance = 14930 },
	{ name = "key to the drowned library", chance = 10700 },
	{ id = 3578, chance = 3510 }, -- fish
	{ name = "small sapphire", chance = 2960 },
	{ name = "eye of a deepling", chance = 2520 },
	{ id = 3052, chance = 2460 }, -- life ring
	{ name = "deepling staff", chance = 2000 },
	{ name = "necklace of the deep", chance = 760 },
	{ name = "fish fin", chance = 500 },
	{ name = "ornate crossbow", chance = 210 },
}

monster.attacks = {
	{ name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -152, effect = CONST_ME_DRAWBLOOD },
	{ name = "combat", interval = 2000, chance = 10, type = COMBAT_ICEDAMAGE, minDamage = -180, maxDamage = -350, length = 10, spread = 3, effect = CONST_ME_ICETORNADO, target = false },
	{ name = "combat", interval = 2000, chance = 20, type = COMBAT_DROWNDAMAGE, minDamage = -90, maxDamage = -130, radius = 4, effect = CONST_ME_BUBBLES, target = true },
	{ name = "combat", interval = 2000, chance = 15, type = COMBAT_LIFEDRAIN, minDamage = -60, maxDamage = -140, range = 7, effect = CONST_ME_SMALLPLANTS, target = false },
	{ name = "combat", interval = 2000, chance = 10, type = COMBAT_MANADRAIN, minDamage = -60, maxDamage = -140, range = 7, effect = CONST_ME_SMALLPLANTS, target = false },
	{ name = "deepling spellsinger skill reducer", interval = 2000, chance = 5, range = 5, target = false },
}

monster.defenses = {
	defense = 25,
	armor = 42,
	mitigation = 1.29,
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
	{ type = COMBAT_DEATHDAMAGE, percent = 50 },
}

monster.immunities = {
	{ type = "paralyze", condition = false },
	{ type = "outfit", condition = false },
	{ type = "invisible", condition = true },
	{ type = "bleed", condition = false },
}

mType:register(monster)
