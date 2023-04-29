local QBCore = exports['qb-core']:GetCoreObject()

QBCore.Functions.CreateCallback('rpg-jcafe:itemcheck', function(source, cb, item)
	local xPlayer = QBCore.Functions.GetPlayer(source)
    local itemcount = xPlayer.Functions.GetItemByName(item)
	if itemcount ~= nil then
		cb(true)
	else
        cb(false)
	end
end)
RegisterServerEvent("rpg-jcafe:bill:player", function(playerId, amount)
    local biller = QBCore.Functions.GetPlayer(source)
    local billed = QBCore.Functions.GetPlayer(tonumber(playerId))
    local amount = tonumber(amount)
    if biller.PlayerData.job.name == 'japansecafe' then
        if billed ~= nil then
            if biller.PlayerData.citizenid ~= billed.PlayerData.citizenid then
                if amount and amount > 0 then
                    MySQL.Async.insert('INSERT INTO phone_invoices (citizenid, amount, society, sender) VALUES (:citizenid, :amount, :society, :sender)',
                    {
                        ['citizenid'] = billed.PlayerData.citizenid,
                        ['amount'] = amount,
                        ['society'] = biller.PlayerData.job.name,
                        ['sender'] = biller.PlayerData.charinfo.firstname
                    })
                end
                TriggerClientEvent('qb-phone:RefreshPhone', billed.PlayerData.source)
                TriggerClientEvent('QBCore:Notify', source, 'Invoice Successfully Sent', 'arigato')
                TriggerClientEvent('QBCore:Notify', billed.PlayerData.source, 'New Invoice Received', 'arigato')
            else
                TriggerClientEvent('QBCore:Notify', source, 'Must Be A Valid Amount Above 0', 'arigato')
            end
        else
            TriggerClientEvent('QBCore:Notify', source, 'You Cannot Bill Yourself', 'error')
        end
    else
        TriggerClientEvent('QBCore:Notify', source, 'Player Not Online', 'arigato')
    end
end)

RegisterNetEvent('rpg-jcafe:sv:tunasashimi', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    Player.Functions.RemoveItem("tuna", 1)
    Player.Functions.AddItem("rice", 1)
    TriggerClientEvent("inventory:client:ItemBox", QBCore.Shared.Items["tunasashimi"], "add")
end)
RegisterNetEvent('rpg-jcafe:sv:salmonnigri', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    Player.Functions.RemoveItem("salmon", 1)
    Player.Functions.AddItem("rice", 1)
    TriggerClientEvent("inventory:client:ItemBox", QBCore.Shared.Items["salmonnigri"], "add")
end)
RegisterNetEvent('rpg-jcafe:sv:gyudon', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    Player.Functions.RemoveItem("beef", 1)
    Player.Functions.RemoveItem("sake", 1)
    Player.Functions.RemoveItem("sugar", 1)
    Player.Functions.RemoveItem("rice", 1)
    Player.Functions.AddItem("gyudon", 1)
    TriggerClientEvent("inventory:client:ItemBox", QBCore.Shared.Items["gyudon"], "add")
end)
RegisterNetEvent('rpg-jcafe:sv:misosoup', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    Player.Functions.RemoveItem("misopaste", 1)
    Player.Functions.AddItem("water_bottle", 1)
    TriggerClientEvent("inventory:client:ItemBox", QBCore.Shared.Items[C"misosoup"], "add")
end)
RegisterNetEvent('rpg-jcafe:sv:sushi', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    Player.Functions.RemoveItem("rice", 1)
    Player.Functions.AddItem("salmon", 1)
    Player.Functions.AddItem("sugar", 1)
    Player.Funcations.AddItem("nori", 1)
    Player.Functions.AddItem("soysauce", 1)
    Player.Funcations.AddItem("tuna", 1)
    TriggerClientEvent("inventory:client:ItemBox", QBCore.Shared.Items["sushi"], "add")
end)
QBCore.Functions.CreateCallback('rpg-jcafe:sv:ing:sushi', function(source, cb)
   local src = source 
   local Ply = QBCore.Functions.GetPlayer(src)
   local item1 = Ply.Functions.GetItemByName("salmon")
   local item2 = Ply.Functions.GetItemByName("rice")
   local item3 = Ply.Functions.GetItemByName("sugar")
   local item4 = Ply.Functions.GetItemByName("nori")
   local item5 = Ply.Functions.GetItemByName("tuna")
   local item6 = Ply.Functions.GetItemByName("soysauce")
   if item1 ~= nil and item2 ~= nil and item3 ~= nil and item4 ~= nil and item5 ~= nil and item6 ~= nil then
    cb(true)
else
    cb(false)
end
end)

QBCore.Functions.CreateCallback('rpg-jcafe:sv:ing:tunasashimi', function(source, cb)
    local src = source
    local Ply = QBCore.Functions.GetPlayer(src)
    local item1 = Ply.Functions.GetItemByName("tuna")
    local item2 = Ply.Functions.GetItemByName("rice")
    if item1 ~= nil and item2 ~= nil then
        cb(true)
    else
        cb(false)
    end
end)
QBCore.Functions.CreateCallback('rpg-jcafe:sv:ing:salmonnigri', function(source, cb)
    local src = source
    local Ply = QBCore.Functions.GetPlayer(src)
    local item1 = Ply.Functions.GetItemByName("salmon")
    local item2 = Ply.Functions.GetItemByName("misopaste")
    if item1 ~= nil and item2 ~= nil then
        cb(true)
    else
        cb(false)
    end
end)
QBCore.Functions.CreateCallback('rpg-jcafe:sv:ing:misosoup', function(source, cb)
    local src = source
    local Ply = QBCore.Functions.GetPlayer(src)
    local item1 = Ply.Functions.GetItemByName("water_bottle")
    local item1 = Ply.Functions.GetItemByName("misopaste")
    if item1 ~= nil and item2 ~= nil then
        cb(true)
    else
        cb(false)
    end
end)
QBCore.Functions.CreateCallback('rpg-jcafe:sv:ing:gyudon', function(source, cb)
    local src = source
    local Ply = QBCore.Functions.GetPlayer(src)
    local item1 = Ply.Functions.GetItemByName("beef")
    local item2 = Ply.Functions.GetItemByName("sake")
    local item3 = Ply.Functions.GetItemByName("sugar")
    local item4 = Ply.Functions.GetItemByName("rice")
    if item1 ~= nil and item2 ~= nil and item3 ~= nil and item4 ~= nil then
        cb(true)
    else
        cb(false)
    end
end)
-- QBCore.Functions.CreateCallback('rpg-jcafe:sv:ing:sushi', function(source, cb)
--     local src = source
--     local Ply = QBCore.Functions.GetPlayer(src)
--     local beef = Ply.Functions.GetItemByName(Config.Salmon)
--     local rice = Ply.Functions.GetItemByName(Config.Rice)
--     local sugar = Ply.Functions.GetItemByName(Config.Sugar)
--     local milk = Ply.Functions.GetItemByName("milk")
--     if beef ~= nil and rice ~= nil and sugar ~= nil and milk ~= nil then
--         cb(true)
--     else
--         cb(false)
--     end
-- end)
Citizen.CreateThread(function()
    print("\n^1----------------------------------------------------------------------------------^7")
    print("RPG JAPANSE CAFE JOB")
    print("^1----------------------------------------------------------------------------------^7")
end)