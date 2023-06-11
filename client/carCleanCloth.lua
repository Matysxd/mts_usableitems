ESX = nil

Citizen.CreateThread(function()
    while ESX == nil do
        ESX = exports["es_extended"]:getSharedObject()
        Citizen.Wait(0)
    end
end)

RegisterNetEvent('mts_usables:cleancar')
AddEventHandler('mts_usables:cleancar', function()
local pcoords = GetEntityCoords(source)
local cveh = ESX.Game.GetClosestVehicle()

local dist = #(GetEntityCoords(PlayerPedId()) - ESX.Game.GetClosestVehicle(GetEntityCoords(source)))

while true do 
if dist < 3 then
if lib.progressBar({

    duration = Config.CarSponge.progressLength,
    label = Config.CarSponge.progressLabel,
    useWhileDead = false,
    canCancel = true,
    disable = {
        car = true,
        move = true,
        combat = true
    },
    anim = {
        dict = 'amb@world_human_maid_clean@',
        clip = 'base'
    },
    prop = {
        model = `prop_sponge_01`,
        pos = vec3(0.03, 0.03, 0.02),
        rot = vec3(0.0, 0.0, -1.5),
        bone = 28422
    },}) then 

    SetVehicleDirtLevel(cveh, 0.0)

    lib.notify({
        description = 'Car wah washed!',
        type = 'success'
    })

        else
    end
end

else
    lib.notify({
        description = 'There is no car near you!',
        type = 'error'
    })
end

Citizen.Wait(5000)
end)