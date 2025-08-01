local internalNpcName = "Brengus"
local npcType = Game.createNpcType(internalNpcName)
local npcConfig = {}

npcConfig.name = internalNpcName
npcConfig.description = internalNpcName

npcConfig.health = 100
npcConfig.maxHealth = npcConfig.health
npcConfig.walkInterval = 2000
npcConfig.walkRadius = 2

npcConfig.outfit = {
	lookType = 132,
	lookHead = 79,
	lookBody = 76,
	lookLegs = 76,
	lookFeet = 114,
	lookAddons = 0,
}

npcConfig.flags = {
	floorchange = false,
}

local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)

npcType.onAppear = function(npc, creature)
	npcHandler:onAppear(npc, creature)
end

npcType.onDisappear = function(npc, creature)
	npcHandler:onDisappear(npc, creature)
end

npcType.onSay = function(npc, creature, type, message)
	npcHandler:onSay(npc, creature, type, message)
end

npcType.onCloseChannel = function(npc, creature)
	npcHandler:onCloseChannel(npc, creature)
end

npcType.onThink = function(npc, interval)
	npcHandler:onThink(npc, interval)
end

npcHandler:addModule(FocusModule:new(), npcConfig.name, true, true, true)

npcConfig.shop = {
	{ itemName = "arrow", clientId = 3447, buy = 3 },
	{ itemName = "axe", clientId = 3274, buy = 20, sell = 7 },
	{ itemName = "banana sash", clientId = 11511, sell = 55 },
	{ itemName = "banana staff", clientId = 3348, sell = 1000 },
	{ itemName = "bast skirt", clientId = 3560, sell = 750 },
	{ itemName = "battle axe", clientId = 3266, buy = 235, sell = 80 },
	{ itemName = "battle hammer", clientId = 3305, buy = 350, sell = 120 },
	{ itemName = "battle shield", clientId = 3413, sell = 95 },
	{ itemName = "blue quiver", clientId = 35848, buy = 400 },
	{ itemName = "bolt", clientId = 3446, buy = 4 },
	{ itemName = "bone club", clientId = 3337, sell = 5 },
	{ itemName = "bone sword", clientId = 3338, buy = 75, sell = 20 },
	{ itemName = "bonelord helmet", clientId = 3408, sell = 2200 },
	{ itemName = "bow", clientId = 3350, buy = 400, sell = 100 },
	{ itemName = "brass armor", clientId = 3359, buy = 450, sell = 150 },
	{ itemName = "brass helmet", clientId = 3354, buy = 120, sell = 30 },
	{ itemName = "brass legs", clientId = 3372, buy = 195, sell = 49 },
	{ itemName = "brass shield", clientId = 3411, buy = 65, sell = 25 },
	{ itemName = "carlin sword", clientId = 3283, buy = 473, sell = 118 },
	{ itemName = "chain armor", clientId = 3358, buy = 200, sell = 70 },
	{ itemName = "chain helmet", clientId = 3352, buy = 52, sell = 17 },
	{ itemName = "chain legs", clientId = 3558, buy = 80, sell = 25 },
	{ itemName = "charmer's tiara", clientId = 3407, sell = 900 },
	{ itemName = "club", clientId = 3270, buy = 5, sell = 1 },
	{ itemName = "coat", clientId = 3562, buy = 8, sell = 1 },
	{ itemName = "copper shield", clientId = 3430, sell = 50 },
	{ itemName = "crimson sword", clientId = 7385, buy = 610 },
	{ itemName = "crocodile boots", clientId = 3556, sell = 1000 },
	{ itemName = "crossbow", clientId = 3349, buy = 500, sell = 120 },
	{ itemName = "crowbar", clientId = 3304, buy = 260, sell = 50 },
	{ itemName = "crystalline arrow", clientId = 15793, buy = 20 },
	{ itemName = "dagger", clientId = 3267, buy = 5, sell = 2 },
	{ itemName = "diamond arrow", clientId = 35901, buy = 130 },
	{ itemName = "double axe", clientId = 3275, sell = 260 },
	{ itemName = "doublet", clientId = 3379, buy = 16, sell = 3 },
	{ itemName = "drill bolt", clientId = 16142, buy = 12 },
	{ itemName = "durable exercise axe", clientId = 35280, buy = 1250000, count = 1800 },
	{ itemName = "durable exercise bow", clientId = 35282, buy = 1250000, count = 1800 },
	{ itemName = "durable exercise club", clientId = 35281, buy = 1250000, count = 1800 },
	{ itemName = "durable exercise shield", clientId = 44066, buy = 1250000, count = 1800 },
	{ itemName = "durable exercise sword", clientId = 35279, buy = 1250000, count = 1800 },
	{ itemName = "durable exercise wraps", clientId = 50294, buy = 1250000, subType = 1800 },
	{ itemName = "dwarven shield", clientId = 3425, buy = 500, sell = 100 },
	{ itemName = "earth arrow", clientId = 774, buy = 5 },
	{ itemName = "envenomed arrow", clientId = 16143, buy = 12 },
	{ itemName = "exercise axe", clientId = 28553, buy = 347222, count = 500 },
	{ itemName = "exercise bow", clientId = 28555, buy = 347222, count = 500 },
	{ itemName = "exercise club", clientId = 28554, buy = 347222, count = 500 },
	{ itemName = "exercise shield", clientId = 44065, buy = 347222, count = 500 },
	{ itemName = "exercise sword", clientId = 28552, buy = 347222, count = 500 },
	{ itemName = "exercise wraps", clientId = 50293, buy = 347222, subType = 500 },
	{ itemName = "feather headdress", clientId = 3406, sell = 850 },
	{ itemName = "fire sword", clientId = 3280, sell = 1000 },
	{ itemName = "flaming arrow", clientId = 763, buy = 5 },
	{ itemName = "flash arrow", clientId = 761, buy = 5 },
	{ itemName = "halberd", clientId = 3269, sell = 400 },
	{ itemName = "hand axe", clientId = 3268, buy = 8, sell = 4 },
	{ itemName = "hatchet", clientId = 3276, sell = 25 },
	{ itemName = "horseman helmet", clientId = 3405, sell = 280 },
	{ itemName = "hunting spear", clientId = 3347, sell = 25 },
	{ itemName = "iron helmet", clientId = 3353, buy = 390, sell = 150 },
	{ itemName = "jacket", clientId = 3561, buy = 12, sell = 1 },
	{ itemName = "katana", clientId = 3300, sell = 35 },
	{ itemName = "kongra's shoulderpad", clientId = 11471, sell = 100 },
	{ itemName = "lasting exercise axe", clientId = 35286, buy = 10000000, count = 14400 },
	{ itemName = "lasting exercise bow", clientId = 35288, buy = 10000000, count = 14400 },
	{ itemName = "lasting exercise club", clientId = 35287, buy = 10000000, count = 14400 },
	{ itemName = "lasting exercise shield", clientId = 44067, buy = 10000000, count = 14400 },
	{ itemName = "lasting exercise sword", clientId = 35285, buy = 10000000, count = 14400 },
	{ itemName = "lasting exercise wraps", clientId = 50295, buy = 10000000, subType = 14400 },
	{ itemName = "leather armor", clientId = 3361, buy = 35, sell = 12 },
	{ itemName = "leather boots", clientId = 3552, buy = 10, sell = 2 },
	{ itemName = "leather helmet", clientId = 3355, buy = 12, sell = 4 },
	{ itemName = "leather legs", clientId = 3559, buy = 10, sell = 9 },
	{ itemName = "legion helmet", clientId = 3374, sell = 22 },
	{ itemName = "leopard armor", clientId = 3404, sell = 300 },
	{ itemName = "longsword", clientId = 3285, buy = 160, sell = 51 },
	{ itemName = "mace", clientId = 3286, buy = 90, sell = 30 },
	{ itemName = "morning star", clientId = 3282, buy = 430, sell = 100 },
	{ itemName = "onyx arrow", clientId = 7365, buy = 7 },
	{ itemName = "orcish axe", clientId = 3316, sell = 350 },
	{ itemName = "piercing bolt", clientId = 7363, buy = 5 },
	{ itemName = "plate armor", clientId = 3357, buy = 1200, sell = 400 },
	{ itemName = "plate legs", clientId = 3557, sell = 115 },
	{ itemName = "plate shield", clientId = 3410, buy = 125, sell = 45 },
	{ itemName = "power bolt", clientId = 3450, buy = 7 },
	{ itemName = "prismatic bolt", clientId = 16141, buy = 20 },
	{ itemName = "quiver", clientId = 35562, buy = 400 },
	{ itemName = "rapier", clientId = 3272, buy = 15, sell = 5 },
	{ itemName = "red quiver", clientId = 35849, buy = 400 },
	{ itemName = "royal spear", clientId = 7378, buy = 15 },
	{ itemName = "sabre", clientId = 3273, buy = 35 },
	{ itemName = "scale armor", clientId = 3377, buy = 260 },
	{ itemName = "shiver arrow", clientId = 762, buy = 5 },
	{ itemName = "short sword", clientId = 3294, buy = 26 },
	{ itemName = "sickle", clientId = 3293, buy = 7 },
	{ itemName = "sniper arrow", clientId = 7364, buy = 5 },
	{ itemName = "soldier helmet", clientId = 3375, buy = 110 },
	{ itemName = "spear", clientId = 3277, buy = 9 },
	{ itemName = "spectral bolt", clientId = 35902, buy = 70 },
	{ itemName = "spike sword", clientId = 3271, buy = 8000 },
	{ itemName = "steel helmet", clientId = 3351, buy = 580 },
	{ itemName = "steel shield", clientId = 3409, buy = 240 },
	{ itemName = "studded armor", clientId = 3378, buy = 90 },
	{ itemName = "studded helmet", clientId = 3376, buy = 63 },
	{ itemName = "studded legs", clientId = 3362, buy = 50 },
	{ itemName = "studded shield", clientId = 3426, buy = 50 },
	{ itemName = "sword", clientId = 3264, buy = 85 },
	{ itemName = "tarsal arrow", clientId = 14251, buy = 6 },
	{ itemName = "throwing knife", clientId = 3298, buy = 25 },
	{ itemName = "throwing star", clientId = 3287, buy = 42 },
	{ itemName = "tribal mask", clientId = 3403, buy = 250 },
	{ itemName = "tusk shield", clientId = 3443, sell = 850 },
	{ itemName = "two handed sword", clientId = 3265, buy = 950 },
	{ itemName = "viking helmet", clientId = 3367, buy = 265 },
	{ itemName = "viking shield", clientId = 3431, buy = 260 },
	{ itemName = "vortex bolt", clientId = 14252, buy = 6 },
	{ itemName = "war hammer", clientId = 3279, buy = 10000 },
	{ itemName = "wooden shield", clientId = 3412, buy = 15 },
}
-- On buy npc shop message
npcType.onBuyItem = function(npc, player, itemId, subType, amount, ignore, inBackpacks, totalCost)
	npc:sellItem(player, itemId, amount, subType, 0, ignore, inBackpacks)
end
-- On sell npc shop message
npcType.onSellItem = function(npc, player, itemId, subtype, amount, ignore, name, totalCost)
	player:sendTextMessage(MESSAGE_TRADE, string.format("Sold %ix %s for %i gold.", amount, name, totalCost))
end
-- On check npc shop message (look item)
npcType.onCheckItem = function(npc, player, clientId, subType) end

npcType:register(npcConfig)
