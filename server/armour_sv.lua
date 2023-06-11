ESX = nil
ESX = exports["es_extended"]:getSharedObject()

ESX.RegisterUsableItem(Config.Armour.armourItemName, function(source)
    local xPlayer = ESX.GetPlayerFromId(source)

    TriggerClientEvent('mts_usables:addArmour')

    Citizen.Wait(5000)
end)