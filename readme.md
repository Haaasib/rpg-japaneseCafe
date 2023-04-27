# Japanse Cafe Job 
# Mlo : https://www.youtube.com/watch?v=BKY_EltazFA (Form Fivem Shop)
# Item Icons
* Download the script and open images folder, put it in the qb-inventory/html/images directory.
# Installations 
# Add the following code to your qb-core/shared/jobs.lua

 ```
 ['japansecafe'] = {
	label = 'Japanse Cafe',
    type = "japansecafe",
	defaultDuty = true,
	offDutyPay = false,
	grades = {
        ['0'] = {
            name = 'Waiter',
            payment = 50
        },
		['1'] = {
            name = 'Chef',
            payment = 100
        },
        ['2'] = {
            name = 'Head Chef',
            payment = 120
        },
        ['3'] = {
            name = 'Boss',
			isboss = true,
            payment = 150
        },
    },
},
```

# Add the following code to your qb-core/shared/ıtems.lua
```
-- j cafe drinks
['sake'] = { ['name'] = 'sake', ['label'] = 'sake', ['weight'] = 100, ['type'] = 'item', ['image'] = 'sake.png', ['unique'] = true, ['useable'] = true,  ['shouldClose'] = true, ['combinable'] = nil, ['description'] = 'a traditional Japanese rice wine',},

['greentea'] = { ['name'] = 'greentea', ['label'] = 'Green Tea', ['weight'] = 100, ['type'] = 'item', ['image'] = 'greentea.png', ['unique'] = true, ['useable'] = true,  ['shouldClose'] = true, ['combinable'] = nil, ['description'] = 'a classic Japanese tea that is often served with sushi',},

['plumwine'] = { ['name'] = 'plumwine', ['label'] = 'Plum Wine', ['weight'] = 100, ['type'] = 'item', ['image'] = 'plumwine.png', ['unique'] = true, ['useable'] = true,  ['shouldClose'] = true, ['combinable'] = nil, ['description'] = ' a sweet and fruity wine made from Japanese plums',},

['ramune'] = { ['name'] = 'ramune', ['label'] = 'ramune', ['weight'] = 100, ['type'] = 'item', ['image'] = 'ramune.png', ['unique'] = true, ['useable'] = true,  ['shouldClose'] = true, ['combinable'] = nil, ['description'] = 'a carbonated soft drink that comes in a variety of flavors such as strawberry and melon',},
-- j cafe foods
['sushi'] = { ['name'] = 'sushi', ['label'] = 'Sushi', ['weight'] = 100, ['type'] = 'item', ['image'] = 'sushi.png', ['unique'] = true, ['useable'] = true,  ['shouldClose'] = true, ['combinable'] = nil, ['description'] = 'Fresh flavors rolled into every bite',},

['tunasashimi'] = { ['name'] = 'tunasashimi', ['label'] = 'Tuna Sashimi', ['weight'] = 100, ['type'] = 'item', ['image'] = 'tunasashimi.png', ['unique'] = true, ['useable'] = true,  ['shouldClose'] = true, ['combinable'] = nil, ['description'] = 'slices of raw tuna',},

['misosoup'] = { ['name'] = 'misosoup', ['label'] = 'Miso Soup', ['weight'] = 100, ['type'] = 'item', ['image'] = 'misosoup.png', ['unique'] = true, ['useable'] = true,  ['shouldClose'] = true, ['combinable'] = nil, ['description'] = 'Comfort in every bowl',},

['salmonnigiri'] = { ['name'] = 'salmonnigiri', ['label'] = 'salmon Nigiri', ['weight'] = 100, ['type'] = 'item', ['image'] = 'salmonnigiri.png', ['unique'] = true, ['useable'] = true,  ['shouldClose'] = true, ['combinable'] = nil, ['description'] = ' slice of raw salmon on top of rice',},

['gyudon'] = { ['name'] = 'gyudon', ['label'] = 'gyudon', ['weight'] = 100, ['type'] = 'item', ['image'] = 'gyudon.png', ['unique'] = true, ['useable'] = true,  ['shouldClose'] = true, ['combinable'] = nil, ['description'] = 'Savor the flavor of Japan with our savory gyudon',},


-- ingreds

['misopaste'] = { ['name'] = 'misopaste', ['label'] = 'Misopaste', ['weight'] = 100, ['type'] = 'item', ['image'] = 'misopaste.png', ['unique'] = true, ['useable'] = true,  ['shouldClose'] = true, ['combinable'] = nil, ['description'] = 'Paste Of Miso',},
['beef'] = { ['name'] = 'beef', ['label'] = 'Beef', ['weight'] = 100, ['type'] = 'item', ['image'] = 'beef.png', ['unique'] = true, ['useable'] = true,  ['shouldClose'] = true, ['combinable'] = nil, ['description'] = 'meat of cow',},
['milk'] = { ['name'] = 'milk', ['label'] = 'Milk', ['weight'] = 100, ['type'] = 'item', ['image'] = 'milk.png', ['unique'] = true, ['useable'] = true,  ['shouldClose'] = true, ['combinable'] = nil, ['description'] = 'Cow Milk',},
['rice'] = { ['name'] = 'rice', ['label'] = 'Rice', ['weight'] = 100, ['type'] = 'item', ['image'] = 'rice.png', ['unique'] = true, ['useable'] = true,  ['shouldClose'] = true, ['combinable'] = nil, ['description'] = 'Rice',},
['tuna'] = { ['name'] = 'tuna', ['label'] = 'Tuna', ['weight'] = 100, ['type'] = 'item', ['image'] = 'tuna.png', ['unique'] = true, ['useable'] = true,  ['shouldClose'] = true, ['combinable'] = nil, ['description'] = 'Tuna Fish',},
['soysauce'] = { ['name'] = 'soysauce', ['label'] = 'Soy Sauce', ['weight'] = 100, ['type'] = 'item', ['image'] = 'soysauce.png', ['unique'] = true, ['useable'] = true,  ['shouldClose'] = true, ['combinable'] = nil, ['description'] = 'Soy Sauce',},
['salmon'] = { ['name'] = 'salmon', ['label'] = 'salmon', ['weight'] = 100, ['type'] = 'item', ['image'] = 'salmon.png', ['unique'] = true, ['useable'] = true,  ['shouldClose'] = true, ['combinable'] = nil, ['description'] = 'salmon fish',},
['sugar'] = { ['name'] = 'sugar', ['label'] = 'sugar', ['weight'] = 100, ['type'] = 'item', ['image'] = 'sugar.png', ['unique'] = true, ['useable'] = true,  ['shouldClose'] = true, ['combinable'] = nil, ['description'] = 'sugar',},
['nori'] = { ['name'] = 'nori', ['label'] = 'Nori', ['weight'] = 100, ['type'] = 'item', ['image'] = 'nori.png', ['unique'] = true, ['useable'] = true,  ['shouldClose'] = true, ['combinable'] = nil, ['description'] = 'nori',}, 
```
# Add the following code to your qb-smallresources/config/ConsumablesEat
```

--Consumableseat

["tunasashimi"] = math.random(40, 50),
["misosoup"] = math.random(20, 40),
["salmonnigri"] = math.random(15, 30),
["gyudon"] = math.random(35, 50),

* Add the following code to your qb-smallresources/config/ConsumablesDrink
--ConsumablesDrink
["sake"] = math.random(10, 20),
["greentea"] = math.random(9, 18),
["plumwine"] = math.random(10, 20),
["ramune"] = math.random(12, 24),
```

# Add the following code to your qb-smallresources/server/consumables.lua

```
--J Cafe
-- eat


QBCore.Functions.CreateUseableItem("sushi", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if not Player.Functions.RemoveItem(item.name, 1, item.slot) then return end
    TriggerClientEvent("consumables:client:Eat", source, item.name)
end)
QBCore.Functions.CreateUseableItem("tunasashimi", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if not Player.Functions.RemoveItem(item.name, 1, item.slot) then return end
    TriggerClientEvent("consumables:client:Eat", source, item.name)
end)
QBCore.Functions.CreateUseableItem("misosoup", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if not Player.Functions.RemoveItem(item.name, 1, item.slot) then return end
    TriggerClientEvent("consumables:client:Eat", source, item.name)
end)
QBCore.Functions.CreateUseableItem("salmonnigri", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if not Player.Functions.RemoveItem(item.name, 1, item.slot) then return end
    TriggerClientEvent("consumables:client:Eat", source, item.name)
end)
QBCore.Functions.CreateUseableItem("gyudon", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if not Player.Functions.RemoveItem(item.name, 1, item.slot) then return end
    TriggerClientEvent("consumables:client:Eat", source, item.name)
end)
-- drink


QBCore.Functions.CreateUseableItem("greentea", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if not Player.Functions.RemoveItem(item.name, 1, item.slot) then return end
    TriggerClientEvent("consumables:client:Drink", source, item.name)
end)
QBCore.Functions.CreateUseableItem("sake", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if not Player.Functions.RemoveItem(item.name, 1, item.slot) then return end
    TriggerClientEvent("consumables:client:DrinkAlcohol", source, item.name)
end)

QBCore.Functions.CreateUseableItem("greentea", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if not Player.Functions.RemoveItem(item.name, 1, item.slot) then return end
    TriggerClientEvent("consumables:client:Drink", source, item.name)
end)

QBCore.Functions.CreateUseableItem("plumwine", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if not Player.Functions.RemoveItem(item.name, 1, item.slot) then return end
    TriggerClientEvent("consumables:client:DrinkAlcohol", source, item.name)
end)

QBCore.Functions.CreateUseableItem("ramune", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if not Player.Functions.RemoveItem(item.name, 1, item.slot) then return end
    TriggerClientEvent("consumables:client:DrinkAlcohol", source, item.name)
end)
```


# Shop
* If You Want Shop Then Add  this to Qb-shops/Config.lua
```
["japansecafe"] = {
        ["label"] = "Japanse Cafe",
        ["coords"] = vector4(-175.87, 313.82, 97.99, 259.37),
        ["ped"] = 'mp_m_shopkeep_01',
        ["scenario"] = "WORLD_HUMAN_STAND_MOBILE",
        ["radius"] = 1.5,
        ["targetIcon"] = "fas fa-shopping-basket",
        ["targetLabel"] = "Open Shop",
        ["products"] = Config.Products["japansecafe"],
        ["showblip"] = false,
        ["blipsprite"] = 52,
        ["blipscale"] = 0.6,
        ["blipcolor"] = 25,
        ["delivery"] = vector4(195.04, -897.86, 30.69, 342.38)
    },
["japansecafe"] = {
        [1] = {
            name = "sake",
            price = 2,
            amount = 50,
            info = {},
            type = "item",
            slot = 1,
        },
        [2] = {
            name = "greentea",
            price = 2,
            amount = 50,
            info = {},
            type = "item",
            slot = 2,
        },
        [3] = {
            name = "plumwine",
            price = 2,
            amount = 50,
            info = {},
            type = "item",
            slot = 3,
        },
        [4] = {
            name = "ramune",
            price = 2,
            amount = 50,
            info = {},
            type = "item",
            slot = 4,
        },
        [5] = {
            name = "tunasashimi",
            price = 2,
            amount = 50,
            info = {},
            type = "item",
            slot = 5,
        },
        [6] = {
            name = "misosoup",
            price = 2,
            amount = 50,
            info = {},
            type = "item",
            slot = 6,
        },
        [7] = {
            name = "salmonnigiri",
            price = 7,
            amount = 50,
            info = {},
            type = "item",
            slot = 7,
        },
        [8] = {
            name = "gyudon",
            price = 10,
            amount = 50,
            info = {},
            type = "item",
            slot = 8,
        },
        [9] = {
            name = "misopaste",
            price = 12,
            amount = 50,
            info = {},
            type = "item",
            slot = 9,
        },
        [10] = {
            name = "beef",
            price = 100,
            amount = 50,
            info = {},
            type = "item",
            slot = 10,
        },
        [11] = {
            name = "milk",
            price = 2,
            amount = 50,
            info = {},
            type = "item",
            slot = 11,
        },
        [12] = {
            name = "rice",
            price = 2,
            amount = 5000,
            info = {},
            type = "item",
            slot = 12,
        },
        [13] = {
            name = "soysauce",
            price = 2,
            amount = 5000,
            info = {},
            type = "item",
            slot = 12,
        },
        [14] = {
            name = "tuna",
            price = 2,
            amount = 5000,
            info = {},
            type = "item",
            slot = 12,
        },
        [15] = {
            name = "salmon",
            price = 2,
            amount = 5000,
            info = {},
            type = "item",
            slot = 12,
        },
        [16] = {
            name = "sugar",
            price = 2,
            amount = 5000,
            info = {},
            type = "item",
            slot = 12,
        },
    },
 ```
# Credits
* [Hasib AKA RPG](https://github.com/Haaasib/) - Main Dev
* [Xhelby D Costa](https://github.com/xhelbydacosta15) - For making code style suggestions and helping me improve the performance.
* [QBCore Devs](https://github.com/qbcore-framework/) - For making an awesome framework and enabling me to do this.
* QBCore Community - Thank you so much for everyone who's been testing this!

# If You want to report bugs and want support Join Our Discord Server 
https://discord.gg/vPKbrg7WuN
