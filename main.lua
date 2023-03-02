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
    DeleteVehicle(lastveh)
    end
    currentveh = CreateVehicle(vehiclehash, x, y, z, GetEntityHeading(PlayerPedId()), 1, 0)
    SetPedIntoVehicle(PlayerPedId(),currentveh, -1)
    print(car..' successfully spawned')
    TriggerEvent('chatMessage', source, "[VIP Car]", {255, 0, 0}, tostring(car)..' successfully spawned')

end


    ------------------ /vipcar -------------------
RegisterCommand('vipcar', function() vipcarmenu() end,false)
TriggerEvent('chat:addSuggestion', '/vipcar', 'VIP Car Menu.')
RegisterCommand('vc', function() vipcarmenu() end, false)
TriggerEvent('chat:addSuggestion', '/vc', 'VIP Car Menu.')
