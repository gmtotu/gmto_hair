ESX = exports["es_extended"]:getSharedObject()

local baldStates = {}

RegisterCommand('hair', function(source, args)

    local player = ESX.GetPlayerFromId(source)

    if not player then
        return
    end

    local currentBaldState = baldStates[source]

    if currentBaldState == nil or currentBaldState == false then
        TriggerClientEvent('chat:addMessage', source, {
            template = '<div class="chat-message text-green"><b>{0}</div>',
            args = {"^1[!]: ^0Your hair has been removed for now, do /hair to revert it back!"}
        })
        baldStates[source] = true
        TriggerClientEvent("makebrobald", source)
        
    else
        TriggerClientEvent('chat:addMessage', source, {
            template = '<div class="chat-message text-green"><b>{0}</div>',
            args = {"^1[!]: ^0Your hair has been reverted back!"}
        })
        baldStates[source] = false
        if Config.iLLeniumAppearance then
        TriggerClientEvent("illenium-appearance:client:reloadSkin", source, false)
        else
            TriggerClientEvent("fivemapp", source)
        end
    end
end)
