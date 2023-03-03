-- Created by RezaNoel#0001
-- Version 1.2
-- _  _  _____  ____  __   
--( \( )(  _  )( ___)(  )  
-- )  (  )(_)(  )__)  )(__ 
--(_)\_)(_____)(____)(____)
                                                      
ESX =
 nil
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
------------------ Change to your vip car name -------------------
carlist={
    'gtrs4',
    'neon',
    't20',
    'bf400'
}


elements={ }
for i = 1, #carlist, 1 do
    elements[i]={label,value}
    elements[i].label=carlist[i]
    elements[i].value=carlist[i]
end

    ------------------ Open Menu -------------------
function vipcarmenu()
    ESX.UI.Menu.CloseAll()
    ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'vipcarmenu', {
        title = 'VIP Cars',
        align = 'top-left',
        elements = elements
    }, function(data,menu)
    
        for i = 1, #elements, 1 do
            if data.current.value == elements[i].value then createveh(data.current.value)end
        end
        menu.close() 
    end,function(data, menu)menu.close()end)-----First Open Menu
end----Function
    ------------------ Spawn Car -------------------
function createveh(car)
    local x,y,z = table.unpack(GetEntityCoords(PlayerPedId()))
    ped=GetPlayerPed(-1)
    local veh = car
    if veh == nil then veh = "adder" end
    vehiclehash = GetHashKey(veh)
    RequestModel(vehiclehash)
    lastveh=GetVehiclePedIsIn(ped, false)
    if lastveh then
    DeleteVehicele(lastveh)
    end
    currentveh = CreateVehicele(vehiclehash, x, y, z, GetEntityHeading(PlayerPedId()), 1, 0)
    SetPedIntoVehicle(PlayerPedId(),currentveh, -1)
    print(car..' successfully spawned')
    -- TriggerEvent('chat:addMessage', source, "[VIP Car]", {255, 0, 0}, tostring(car)..' successfully spawned')
    TriggerEvent('chat:addMessage', {color = { 255, 0, 0},args = {"[VIP Car]",car.." successfully spawned..!"}})

end

  
RegisterCommand('vc', function(source)
    ESX.TriggerServerCallback('esx_aduty:getAdminPerm', function(aperm)
        if aperm >= 2 then
            ESX.TriggerServerCallback('esx_aduty:checkAduty', function(isAduty)
                if isAduty then vipcarmenu() 
                else
                TriggerEvent('chat:addMessage', {color = { 255, 0, 0}, multiline = true ,args = {"[SYSTEM]", "^0Shoma nemitavanid dar halat ^1OffDuty ^0az command haye admini estefade konid!"}})
                end
            end)
        else
            TriggerEvent('chat:addMessage', {color = { 255, 0, 0}, multiline = true ,args = {"[SYSTEM]", "^0Shoma dastresi kafi baraye estefade az in dastor ra nadarid!"}})
        end
        end)
end, false)
RegisterCommand('vipcar', function(source)
    ESX.TriggerServerCallback('esx_aduty:getAdminPerm', function(aperm)
        if aperm >= 2 then
            ESX.TriggerServerCallback('esx_aduty:checkAduty', function(isAduty)
                if isAduty then vipcarmenu() 
                else
                TriggerEvent('chat:addMessage', {color = { 255, 0, 0}, multiline = true ,args = {"[SYSTEM]", "^0Shoma nemitavanid dar halat ^1OffDuty ^0az command haye admini estefade konid!"}})
                end
            end)
        else
            TriggerEvent('chat:addMessage', {color = { 255, 0, 0}, multiline = true ,args = {"[SYSTEM]", "^0Shoma dastresi kafi baraye estefade az in dastor ra nadarid!"}})
        end
        end)
end, false)

    ------------------ /vipcar -------------------
-- RegisterCommand('vipcar', function() vipcarmenu() end,false)
TriggerEvent('chat:addSuggestion', '/vipcar', 'VIP Car Menu.')
-- RegisterCommand('vc', function() vipcarmenu() end, true)
TriggerEvent('chat:addSuggestion', '/vc', 'VIP Car Menu.')
