local QBCore = exports['qb-core']:GetCoreObject()
local onDuty = true
RegisterNetEvent('QBCore:Client:OnPlayerLoaded')
AddEventHandler('QBCore:Client:OnPlayerLoaded', function()
    QBCore.Functions.GetPlayerData(function(PlayerData)
        PlayerJob = PlayerData.job
        if PlayerData.job.onduty then
            if PlayerData.job.name == "japansecafe" then
                TriggerServerEvent("QBCore:ToggleDuty")
            end
        end
    end)
end)

RegisterNetEvent('QBCore:Client:OnJobUpdate')
AddEventHandler('QBCore:Client:OnJobUpdate', function(JobInfo)
    PlayerJob = JobInfo
    onDuty = PlayerJob.onduty
end)

RegisterNetEvent('QBCore:Client:SetDuty')
AddEventHandler('QBCore:Client:SetDuty', function(duty)
    onDuty = duty
end)


RegisterNetEvent("rpg-jcafe:dutymenu")
AddEventHandler("rpg-jcafe:dutymenu", function()
    TriggerServerEvent("QBCore:ToggleDuty")
end)
RegisterNetEvent("rpg-jcafe:shop", function()
    TriggerServerEvent("inventory:server:OpenInventory", "shop", "japansecafe", Config.shop)
end)

RegisterNetEvent("rpg-jcafe:shop", function()
    TriggerServerEvent("inventory:server:OpenInventory", "shop", "japansecafe", Config.drinkshop)
end)
--  rpg jcafe job
RegisterNetEvent("rpg-jcafe:tray")
AddEventHandler("rpg-jcafe:tray", function()
    TriggerEvent("inventory:client:SetCurrentStash", "tray")
    TriggerServerEvent("inventory:server:OpenInventory", "stash", "tray", {
        maxweight = 5000,
        slots = 5,
    })
end)

RegisterNetEvent("rpg-jcafe:tray2")
AddEventHandler("rpg-jcafe:tray2", function()
    TriggerEvent("inventory:client:SetCurrentStash", "tray2")
    TriggerServerEvent("inventory:server:OpenInventory", "stash", "tray2", {
        maxweight = 5000,
        slots = 5,
    })
end)

RegisterNetEvent("rpg-jcafe:storge")
AddEventHandler("rpg-jcafe:storge", function()
    if onDuty then
        TriggerEvent("inventory:client:SetCurrentStash", "storge")
        TriggerServerEvent("inventory:server:OpenInventory", "stash", "storge", {
            maxweight = 250000,
            slots = 40,
        })
    else
        QBCore.Functions.Notify("Go and on Duty", "error")
    end
end)

RegisterNetEvent("rpg-jcafe:cl:clean")
AddEventHandler("rpg-jcafe:cl:clean", function()
    QBCore.Functions.Progressbar("clean", "Washing Hands", 4000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {
        animDict = "amb@world_human_bum_standing@twitchy@idle_a",
        anim = "idle_a",
        flags = 49,
    }, {}, {}, function() -- Done
            clean = true
        QBCore.Functions.Notify("success")
    end, function()
        QBCore.Functions.Notify("error")
    end)
end)

function Dirt()
	if math.random(1,100) < Config.Dirt then
		clean = true
        QBCore.Functions.Notify("Dirt")
	end
end

-- blips
Citizen.CreateThread(function()
    local blip = AddBlipForCoord(vector3(Config.blip.x, Config.blip.y, Config.blip.z))
    SetBlipSprite(blip, 93)
    SetBlipDisplay(blip, 2)
    SetBlipScale(blip, 1)
    SetBlipColour(blip, 1)
    SetBlipAsShortRange(blip, true)
    BeginTextCommandSetBlipName("STRING")
    AddTextComponentString("Japanse Cafe")
    EndTextCommandSetBlipName(blip)
end)
-- food begins from here
RegisterNetEvent("rpg-jcafe:cl:tunasashimi")
AddEventHandler("rpg-jcafe:cl:tunasashimi", function()
    if onDuty then
        if clean then 
            QBCore.Functions.TriggerCallback('rpg-jcafe:sv:ing:tunasashimi', function(HasItems)  
                if HasItems then
                    QBCore.Functions.Progressbar("Youre Cooking Tuna Sashmi", 4000, false, true, {
                        disableMovement = true,
                        disableCarMovement = true,
                        disableMouse = false,
                        disableCombat = true,
                    }, {
                        animDict = "mini@repair",
                        anim = "fixing_a_player",
                        flags = 49,
                    }, {}, {}, function() -- Done
                            TriggerServerEvent('rpg-jcafe:sv:tunasashimi')
                            Dirt()
                            QBCore.Functions.Notify("success")
                        end, function()
                            QBCore.Functions.Notify("error")
                        end)
                    else
                        QBCore.Functions.Notify("You Need Items")
                    end
                end) 
            else
                QBCore.Functions.Notify("Clean Your Hand")
            end
        else
            QBCore.Functions.Notify("Go And On Duty")
        end
    end)
RegisterNetEvent("rpg-jcafe:cl:salmonnigri")
AddEventHandler("rpg-jcafe:cl:salmonnigri", function()
    if onDuty then
        if clean then 
            QBCore.Functions.TriggerCallback('rpg-jcafe:sv:ing:salmonnigri', function(HasItems)  
                if HasItems then
                    QBCore.Functions.Progressbar("Youre Cooking Salmon Nigri", 4000, false, true, {
                        disableMovement = true,
                        disableCarMovement = true,
                        disableMouse = false,
                        disableCombat = true,
                    }, {
                        animDict = "mini@repair",
                        anim = "fixing_a_player",
                        flags = 49,
                    }, {}, {}, function() -- Done
                            TriggerServerEvent('rpg-jcafe:sv:salmonnigri')
                            Dirt()
                            QBCore.Functions.Notify("success")
                        end, function()
                            QBCore.Functions.Notify("error")
                        end)
                    else
                        QBCore.Functions.Notify("You Need Items")
                    end
                end) 
            else
                QBCore.Functions.Notify("Clean Your Hand")
            end
        else
            QBCore.Functions.Notify("Go And On Duty")
        end
    end)
RegisterNetEvent("rpg-jcafe:cl:gyudon")
AddEventHandler("rpg-jcafe:cl:gyudon", function()
    if onDuty then
        if clean then 
            QBCore.Functions.TriggerCallback('rpg-jcafe:sv:ing:gyudon', function(HasItems)  
                if HasItems then
                    QBCore.Functions.Progressbar("Gyudon", "Youre Cooking Gyudon", 4000, false, true, {
                        disableMovement = true,
                        disableCarMovement = true,
                        disableMouse = false,
                        disableCombat = true,
                    }, {
                        animDict = "mini@repair",
                        anim = "fixing_a_player",
                        flags = 49,
                    }, {}, {}, function() -- Done
                            TriggerServerEvent('rpg-jcafe:sv:gyudon')
                            Dirt()
                            QBCore.Functions.Notify("success")
                        end, function()
                            QBCore.Functions.Notify("error")
                        end)
                    else
                        QBCore.Functions.Notify("You Need Items")
                    end
                end) 
            else
                QBCore.Functions.Notify("Clean Your Hand")
            end
        else
            QBCore.Functions.Notify("Go And On Duty")
        end
    end)
RegisterNetEvent("rpg-jcafe:cl:sushi")
AddEventHandler("rpg-jcafe:cl:sushi", function()
    if onDuty then
        if clean then 
            QBCore.Functions.TriggerCallback('rpg-jcafe:sv:ing:sushi', function(HasItems)  
                if HasItems then
                    QBCore.Functions.Progressbar("Youre Cooking Sushi", 4000, false, true, {
                        disableMovement = true,
                        disableCarMovement = true,
                        disableMouse = false,
                        disableCombat = true,
                    }, {
                        animDict = "mini@repair",
                        anim = "fixing_a_player",
                        flags = 49,
                    }, {}, {}, function() -- Done
                            TriggerServerEvent('rpg-jcafe:sv:sushi')
                            Dirt()
                            QBCore.Functions.Notify("success")
                        end, function()
                            QBCore.Functions.Notify("error")
                        end)
                    else
                        QBCore.Functions.Notify("You Need Items")
                    end
                end) 
            else
                QBCore.Functions.Notify("Clean Your Hand")
            end
        else
            QBCore.Functions.Notify("Go And On Duty")
        end
    end)
RegisterNetEvent("rpg-jcafe:cl:misosoup")
AddEventHandler("rpg-jcafe:cl:misosoup", function()
    if onDuty then
        if clean then 
            QBCore.Functions.TriggerCallback('rpg-jcafe:sv:ing:misosoup', function(HasItems)  
                if HasItems then
                    QBCore.Functions.Progressbar("Youre Cooking Misosoup", 4000, false, true, {
                        disableMovement = true,
                        disableCarMovement = true,
                        disableMouse = false,
                        disableCombat = true,
                    }, {
                        animDict = "mini@repair",
                        anim = "fixing_a_player",
                        flags = 49,
                    }, {}, {}, function() -- Done
                            TriggerServerEvent('rpg-jcafe:sv:misosoup')
                            Dirt()
                            QBCore.Functions.Notify("success")
                        end, function()
                            QBCore.Functions.Notify("error")
                        end)
                    else
                        QBCore.Functions.Notify("You Need Items")
                    end
                end) 
            else
                QBCore.Functions.Notify("Clean Your Hand")
            end
        else
            QBCore.Functions.Notify("Go And On Duty")
        end
    end)

