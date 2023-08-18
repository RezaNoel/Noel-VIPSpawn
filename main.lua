-- Created by RezaNoel#0001
-- Version 1.3
-- _  _  _____  ____  __   
--( \( )(  _  )( ___)(  )  
-- )  (  )(_)(  )__)  )(__ 
--(_)\_)(_____)(____)(____)

local AdminOnly = True

ESX = nil
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
    ------------------ VIP Cars -------------------
VipCarsList={
  
    {Name = 'neon' ,Label = 'Neon' },
    {Name = 't20' ,Label = 'T20' },
    {Name = 'bf400' ,Label = 'BF400' }
}

    ------------------ Cars Label -------------------
local Cars={ }
for i = 1, #VipCarslist, 1 do
    Cars[i]={label,name}
    Cars[i].label=VipCarlist[i].Label
    Cars[i].name=VipCarlist[i].Name
end

    ------------------ Open Menu -------------------
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

  --Delete Current Car
  DeleteCurrentCar(Car)
  
  --Create New Car
    local NewCar = CreateVehicle(CarHash ,PlayerLocation[X] ,PlayerLocation[Y] ,PlayerLocation[Z] ,PlayerLocation[H] ,1 ,0)
    
    SetPedIntoVehicle(Ped,NewCar, PedSeat)
    TriggerEvent('chat:addMessage', {color = { 255, 0, 0},args = {"[VIP Car]",Car.." successfully spawned..!"}})

end

function GetPlayerAccess (source)
    ESX.TriggerServerCallback('esx_aduty:getAdminPerm', function(AdminPermission)
          if AdminPermission >= 2 then
              ESX.TriggerServerCallback('esx_aduty:checkAduty', function(IsAduty)
                  if IsAduty then 
                    SpawnCarMenu() 
                  else
                    TriggerEvent('chat:addMessage', {color = { 255, 0, 0}, multiline = true ,args = {"[SYSTEM]", "^0You can't use this command on ^1OffDuty ^0 status!"}})
                  end
              end)
          else
              TriggerEvent('chat:addMessage', {color = { 255, 0, 0}, multiline = true ,args = {"[SYSTEM]", "^0You do not have enough permissions!"}})
        end
          end)
  end
    ------------------ Check Is Admin -------------------

if AdminOnly == True then

  RegisterCommand('vc', GetPlayerAccess(), false)
  RegisterCommand('vipcar',GetPlayerAccess() , false)
  
elseif AdminOnly == False then

  RegisterCommand('vc', function() SpawnCarMenu() end, true)
  RegisterCommand('vipcar', function() SpawnCarMenu() end,false)
  
else
  
  TriggerEvent('chat:addMessage', {color = { 255, 0, 0}, multiline = true ,args = {"[SYSTEM]", "^0Please set AdminOnly Variable!"}})

end

  TriggerEvent('chat:addSuggestion', '/vipcar', 'VIP Car Menu.')
  TriggerEvent('chat:addSuggestion', '/vc', 'VIP Car Menu.')

