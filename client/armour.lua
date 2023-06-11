ESX = nil

Citizen.CreateThread(function()
    while ESX == nil do
        ESX = exports["es_extended"]:getSharedObject()
        Citizen.Wait(0)
    end
end)



RegisterNetEvent('mts_usables:addArmour')
AddEventHandler('mts_usables:addArmour', function(source)
local s = source

while true do 
if lib.progressBar({
    duration = Config.Armour.armourUseTime,
    label = Config.Armour.progressLabel,
    useWhileDead = false,
    canCancel = true,
    disable = {
        car = true,
        move = false,
        combat = true
    },
    anim = {
        dict = 'clothingtie',
        clip = 'try_tie_neutral_d'
    },
    prop = {
        model = `prop_armour_pickup`,
        pos = vec3(0.03, 0.03, 0.02),
        rot = vec3(0.0, 0.0, -1.5),
        bone = 36029
    },
}) then 

AddArmourToPed(s, Config.Armour.addToHealth)

    else
    end
end


Citizen.Wait(5000)
end)