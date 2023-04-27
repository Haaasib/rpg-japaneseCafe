local QBCore = exports['qb-core']:GetCoreObject()

RegisterNetEvent('rpg-jcafe:server:CookingStation', function(data)
    exports['qb-menu']:openMenu({
        {
            header = "| Cooking Station |",
            isMenuHeader = true,
        },
        {
            header = "• Tuna Sashmi",
            txt = "Tuna And Rice",
            params = {
                event = "rpg-jcafe:cl:tunasashimi"
            }
        },
        {
            header = "• Salmon Nigri",
            txt = "Salmon And Rice",
            params = {
                event = "rpg-jcafe:cl:salmonnigri"
            }
        },
        {
            header = "⬅ Close Menu",
            params = {
                event = 'qb-menu:closeMenu',
            }
        },
    })
end)
RegisterNetEvent('rpg-jcafe:server:soupstation', function(data)
    exports['qb-menu']:openMenu({
        {
            header = "| Soup Station |",
            isMenuHeader = true,
        },
        {
            header = "• Miso Sashmi",
            txt = "MisoPaste And Water",
            params = {
                event = "rpg-jcafe:cl:misosoup"
            }
        },

        {
            header = "⬅ Close Menu",
            params = {
                event = 'qb-menu:closeMenu',
            }
        },
    })
end)
RegisterNetEvent('rpg-jcafe:sushist', function(data)
    exports['qb-menu']:openMenu({
        {
            header = "| Sushi Station |",
            isMenuHeader = true,
        },
        {
            header = "• Sushi",
            txt = "Salmon , Tuna , sugar , Soysauce , Nori And Rice",
            params = {
                event = "rpg-jcafe:cl:sushi"
            }
        },

        {
            header = "⬅ Close Menu",
            params = {
                event = 'qb-menu:closeMenu',
            }
        },
    })
end)
RegisterNetEvent('rpg-jcafe:server:beefstation', function(data)
    exports['qb-menu']:openMenu({
        {
            header = "| Beef Station |",
            isMenuHeader = true,
        },
        {
            header = "• Gyudon",
            txt = "Beef, Sake And Rice",
            params = {
                event = "rpg-jcafe:cl:gyudon"
            }
        },

        {
            header = "⬅ Close Menu",
            params = {
                event = 'qb-menu:closeMenu',
            }
        },
    })
end)
exports['qb-target']:AddCircleZone('Clean', vector3(Config.Clean.x, Config.Clean.y, Config.Clean.z), 1.0,{
    name = 'Clean', debugPoly = false, useZ=true}, {
    options = {{label = "Clean",icon = 'fa-solid fa-hand-holding', job = Config.Job, action = function() TriggerEvent('rpg-jcafe:cl:clean') end}},
    distance = 1.0
})
exports['qb-target']:AddCircleZone('duty', vector3(Config.Duty.x, Config.Duty.y, Config.Duty.z), 1.0,{
    name = 'duty', debugPoly = false, useZ=true}, {
    options = {{label = "duty" ,icon = 'fa-solid fa-hand-holding', job = Config.Job, action = function() TriggerEvent('rpg-jcafe:dutymenu') end}},
    distance = 1.0
})

exports['qb-target']:AddCircleZone('tray', vector3(Config.Tray.x, Config.Tray.y, Config.Tray.z), 1.0,{
    name = 'tray', debugPoly = false, useZ=true}, {
    options = {{label = "tray" ,icon = 'fa-solid fa-hand-holding', action = function() TriggerEvent('rpg-jcafe:tray') end}},
    distance = 2.0
})

exports['qb-target']:AddCircleZone('tray2', vector3(Config.Tray2.x, Config.Tray2.y, Config.Tray2.z), 1.0,{
    name = 'tray2', debugPoly = false, useZ=true}, {
    options = {{label =  "tray",icon = 'fa-solid fa-hand-holding',  action = function() TriggerEvent('rpg-jcafe:tray2') end}},
    distance = 2.0
})

exports['qb-target']:AddCircleZone('Storge', vector3(Config.Storge.x, Config.Storge.y, Config.Storge.z), 1.0,{
    name = 'Storge', debugPoly = false, useZ=true}, {
    options = {{label =  "Storge",icon = 'fa-solid fa-hand-holding', job = Config.Job, action = function() TriggerEvent('rpg-jcafe:storge') end}},
    distance = 1.0
})

exports['qb-target']:AddCircleZone('Fridge', vector3(Config.Fridge.x, Config.Fridge.y, Config.Fridge.z), 1.0,{
    name = 'Fridge', debugPoly = false, useZ=true}, {
    options = {{label = "Fridge" ,icon = 'fa-solid fa-hand-holding', job = Config.Job, action = function() TriggerEvent('rpg-jcafe:shop') end}},
    distance = 1.0
})

exports['qb-target']:AddCircleZone('Drinks', vector3(Config.Drinks.x, Config.Drinks.y, Config.Drinks.z), 1.0,{
    name = 'Drinks', debugPoly = false, useZ=true}, {
    options = {{label =  "Drinks",icon = 'fa-solid fa-hand-holding', job = Config.Job, action = function() TriggerEvent('rpg-jcafe:drinkshop') end}},
    distance = 1.0
})

exports['qb-target']:AddCircleZone('Sushist', vector3(Config.Sushist.x, Config.Sushist.y, Config.Sushist.z), 1.0,{
    name = 'Sushist', debugPoly = false, useZ=true}, {
    options = {{label = "Sushist", icon = 'fa-solid fa-hand-holding', job = Config.Job, action = function() TriggerEvent('rpg-jcafe:server:sushist') end}},
})

exports['qb-target']:AddCircleZone('CookingStation', vector3(Config.CookingStation.x, Config.CookingStation.y, Config.CookingStation.z), 1.0,{
    name = 'CookingStation', debugPoly = false, useZ=true}, {
    options = {{label = "Cooking Station", icon = 'fa-solid fa-hand-holding', job = Config.Job, action = function() TriggerEvent('rpg-jcafe:server:CookingStation') end}},
})

exports['qb-target']:AddCircleZone('soupstation', vector3(Config.soupstation.x, Config.soupstation.y, Config.soupstation.z), 1.0,{
    name = 'soupstation', debugPoly = false, useZ=true}, {
    options = {{label = "Soup Station", icon = 'fa-solid fa-hand-holding', job = Config.Job, action = function() TriggerEvent('rpg-jcafe:server:soupstation') end}},
})

exports['qb-target']:AddCircleZone('beefstation', vector3(Config.beefstation.x, Config.beefstation.y, Config.beefstation.z), 1.0,{
    name = 'beefstation', debugPoly = false, useZ=true}, {
    options = {{label = "Beef Station", icon = 'fa-solid fa-hand-holding', job = Config.Job, action = function() TriggerEvent('rpg-jcafe:server:beefstation') end}},
})

exports['qb-target']:AddCircleZone("jcafe", vector3(Config.bill.x, Config.bill.y, Config.bill.z), 1, {
    name="register_1",
    debugpoly = false,
    heading=270,
    minZ=21.0,
    maxZ=22.8,
}, {
        options = {
            {
                event = "rpg-jcafe:bill",
                parms = "1",
                icon = "fas fa-credit-card",
                label = "Charge Customer",
                job = "japansecafe",
            },
        },
        distance = 1.5
    })


    
RegisterNetEvent("rpg-jcafe:bill", function()
    local bill = exports["qb-input"]:ShowInput({
        header = "Create Receipt",
        submitText = "Charge Customer",
        inputs = {
            {
                type = 'number',
                name = "id",
                text = 'ID',
                isRequired = true,
            },
            {
                type = 'number',
                name = "amount",
                text = '$',
                isRequired = true
            },
        }
    })
    if bill ~= nil then
        if not bill.id or not bill.amount then
            return
        end
        TriggerServerEvent("rpg-jcafe:bill:player", bill.id, bill.amount)
    end
end)