local mType = Game.createMonsterType("Gorga")
local monster = {}

monster.description = "Gorga"
monster.experience = 13000
monster.outfit = {
	lookType = 330,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.health = 15000
monster.maxHealth = 15000
monster.race = "blood"
monster.corpse = 9607
monster.speed = 140
monster.manaCost = 0

monster.changeTarget = {
	interval = 4000,
	chance = 20,
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
	rewardBoss = true,
	illusionable = false,
	canPushItems = true,
	canPushCreatures = true,
	staticAttackChance = 80,
	targetDistance = 1,
	runHealth = 600,
	healthHidden = false,
	isBlockable = false,
	canWalkOnEnergy = false,
	canWalkOnFire = false,
	canWalkOnPoison = true,
}

monster.light = {
	level = 0,
	color = 0,
}

monster.voices = {
	interval = 5000,
	chance = 10,
}

monster.loot = {
	{ id = 3436, chance = 12160 }, -- medusa shield
	{ id = 3370, chance = 10810 }, -- knight armor
	{ id = 8896, chance = 1350 }, -- slightly rusted armor
	{ id = 3035, chance = 100000, maxCount = 6 }, -- platinum coin
	{ id = 10309, chance = 100000 }, -- strand of medusa hair
	{ id = 238, chance = 29730, maxCount = 2 }, -- great mana potion
	{ id = 9302, chance = 2700 }, -- sacred tree amulet
	{ id = 7643, chance = 28380, maxCount = 2 }, -- ultimate health potion
	{ id = 3032, chance = 13510, maxCount = 4 }, -- small emerald
	{ id = 814, chance = 6760 }, -- terra amulet
	{ id = 811, chance = 1350 }, -- terra mantle
	{ id = 7413, chance = 6760 }, -- titan axe
}

monster.attacks = {
	{ name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -450, condition = { type = CONDITION_POISON, totalDamage = 42, interval = 4000 } },
	{ name = "combat", interval = 2000, chance = 20, type = COMBAT_LIFEDRAIN, minDamage = -21, maxDamage = -350, range = 7, shootEffect = CONST_ANI_EARTH, effect = CONST_ME_CARNIPHILA, target = true },
	{ name = "combat", interval = 2000, chance = 15, type = COMBAT_EARTHDAMAGE, minDamage = -250, maxDamage = -500, length = 8, spread = 3, effect = CONST_ME_CARNIPHILA, target = false },
	{ name = "speed", interval = 2000, chance = 25, radius = 7, effect = CONST_ME_POFF, target = true },
	{ name = "outfit", interval = 2000, chance = 1, range = 7, target = true, duration = 3000, outfitMonster = "clay guardian" },
}

monster.defenses = {
	defense = 30,
	armor = 30,
	mitigation = 1.94,
	{ name = "combat", interval = 2000, chance = 25, type = COMBAT_HEALING, minDamage = 150, maxDamage = 300, effect = CONST_ME_MAGIC_BLUE, target = false },
}

monster.elements = {
	{ type = COMBAT_PHYSICALDAMAGE, percent = 0 },
	{ type = COMBAT_ENERGYDAMAGE, percent = -10 },
	{ type = COMBAT_EARTHDAMAGE, percent = 100 },
	{ type = COMBAT_FIREDAMAGE, percent = -5 },
	{ type = COMBAT_LIFEDRAIN, percent = 100 },
	{ type = COMBAT_MANADRAIN, percent = 0 },
	{ type = COMBAT_DROWNDAMAGE, percent = 100 },
	{ type = COMBAT_ICEDAMAGE, percent = 20 },
	{ type = COMBAT_HOLYDAMAGE, percent = 0 },
	{ type = COMBAT_DEATHDAMAGE, percent = 0 },
}

monster.immunities = {
	{ type = "paralyze", condition = true },
	{ type = "outfit", condition = false },
	{ type = "invisible", condition = true },
	{ type = "bleed", condition = false },
}

mType:register(monster)
