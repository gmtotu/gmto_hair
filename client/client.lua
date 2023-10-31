ESX = exports["es_extended"]:getSharedObject()

RegisterNetEvent("makebrobald")
AddEventHandler("makebrobald", function(source)
    local playerPed = PlayerPedId()

    -- Check if the player has a valid ped
    if DoesEntityExist(playerPed) then
        SetPedComponentVariation(playerPed, 2, 0, 0, 0)
    end
end)

RegisterNetEvent("fivemapp")
AddEventHandler("fivemapp", function(source)
    ESX.TriggerServerCallback('esx_skin:getPlayerSkin', function(appearance)
        exports['fivem-appearance']:setPlayerAppearance(appearance)
    end)
end)