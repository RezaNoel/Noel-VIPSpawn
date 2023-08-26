-- Created by RezaNoel#0001
-- Version 1.3
-- _  _  _____  ____  __   
--( \( )(  _  )( ___)(  )  
-- )  (  )(_)(  )__)  )(__ 
--(_)\_)(_____)(____)(____)



ESX = nil
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

    ------------------ Cars Label -------------------

local Cars={ }
for i = 1, 3, 1 do
    Cars[i] = {
        label = Config.VipCarsList[i].Label,
        name = Config.VipCarsList[i].Name
    }
end

    ------------------ Open Menu -------------------
RegisterNetEvent('Noel-VIPSpawn:SpawnCarMenu')
AddEventHandler('Noel-VIPSpawn:SpawnCarMenu', function()
    print("in net event")
    SpawnCarMenu()
    
end)
function SpawnCarMenu()
    ESX.UI.Menu.CloseAll()
    ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'vipcarmenu', {
        title = 'VIP Cars',
        align = 'top-left',
        elements = Cars
    },
    function(data,menu)
    
      for i = 1, #Cars, 1 do
          if data.current.value == Cars[i].name then CreateNewCar(data.current.value)end
      end
      menu.close() 
      
    end,function(data, menu)menu.close()end)
end
    ------------------ Spawn Car -------------------

function DeleteCurrentCar(Car)
  --Variables
    local Ped=GetPlayerPed(-1)
  --Delete Current Car
    if Car == nil then Car = "adder" end
    local CarHash = GetHashKey(Car)
    RequestModel(CarHash)
    local LastCarPedIsIn=GetVehiclePedIsIn(Ped, false)
    if LastCarPedIsIn then
    DeleteVehicle(LastCarPedIsIn)
    end
  
end

function CreateNewCar(Car)
  --Variables
    local Ped=GetPlayerPed(-1)
    local PedSeat = -1
    local PlayerLocation ={}
    PlayerLocation[X],PlayerLocation[Y],PlayerLocation[Z] = table.unpack(Ped)
    PlayerLocation[H] = GetEntityHeading(Ped)

  
    DeleteCurrentCar(Car)
  
  
    local NewCar = CreateVehicle(CarHash ,PlayerLocation[X] ,PlayerLocation[Y] ,PlayerLocation[Z] ,PlayerLocation[H] ,1 ,0)
    
    SetPedIntoVehicle(Ped,NewCar, PedSeat)
    TriggerEvent('chat:addMessage', {color = { 255, 0, 0},args = {"[VIP Car]",Car.." successfully spawned..!"}})

end

    ------------------ Check Is Admin -------------------

if Config.AdminOnly == False then

  RegisterCommand(Config.Command, function() SpawnCarMenu() end, true)
  
else
  
  TriggerEvent('chat:addMessage', {color = { 255, 0, 0}, multiline = true ,args = {"[SYSTEM]", "^0Please set AdminOnly Variable!"}})

end

  TriggerEvent('chat:addSuggestion', '/'..Config.Command, 'VIP Car Menu.')