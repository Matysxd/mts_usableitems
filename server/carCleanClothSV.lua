ESX = nil
ESX = exports["es_extended"]:getSharedObject()

ESX.RegisterUsableItem(Config.CarSponge.itemName, function()

    TriggerClientEvent('mts_usables:cleancar')
    Citizen.Wait(5000)
end)