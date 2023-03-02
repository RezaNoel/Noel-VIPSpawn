-- Created by RezaNoel#0001
-- Version 1.0
-- _  _  _____  ____  __   
--( \( )(  _  )( ___)(  )  
-- )  (  )(_)(  )__)  )(__ 
--(_)\_)(_____)(____)(____)
                                                              
ESX =
 nil
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

    ------------------ Open Menu -------------------
function vipcarmenu()
    ESX.UI.Menu.CloseAll()
    ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'vipcarmenu', {
        title = 'VIP Cars',
        align = 'top-left',
        elements = {
    ------------------ Change to your vip car name -------------------
            { label = '16challenger', value = '16challenger' },
            { label = '650s', value = '650s' },
            { label = 'p911r', value = 'p911r' },
            { label = 'KoenigseggAgeraR', value = 'KoenigseggAgeraR' },
            { label = 'gtrc', value = 'gtrc' },
            { label = 'aperta', value = 'aperta' },
            { label = 'audsq517', value = 'audsq517' },
            { label = 'bmwm8', value = 'bmwm8' },
            { label = 'bmws', value = 'bmws' },
            { label = 'ems', value = 'ems' },
            { label = 'bdivo', value = 'bdivo' },
            { label = 'cbr1000rrr', value = 'cbr1000rrr' },
            { label = 'cls63s', value = 'cls63s' },
            { label = 'dodgesamu', value = 'dodgesamu' },
            { label = 'polschafter3', value = 'polschafter3' },
            { label = 'acs8', value = 'acs8' },
            { label = 'ghispo2', value = 'ghispo2' },
            { label = 'gmt900escalade', value = 'gmt900escalade' },
            { label = 'gtr', value = 'gtr' },
            { label = 'gtrs4', value = 'gtrs4' },
            { label = 'huayrar', value = 'huayrar' },
            { label = 'krust', value = 'krust' },
            { label = 'polmp4', value = 'polmp4' },
            { label = 'pol718', value = 'pol718' },
            { label = 'lp670sv', value = 'lp670sv' },
            { label = 'lp700', value = 'lp700' },
            { label = 'lp770', value = 'lp770' },
            { label = 'lpbagger', value = 'lpbagger' },
            { label = 'lx2018', value = 'lx2018' },
            { label = 'madabike', value = 'madabike' },
            { label = 'mgrantur2010', value = 'mgrantur2010' },
            { label = 'MGT', value = 'MGT' },
            { label = 'molimgene', value = 'molimgene' },
            { label = 'mvisiongt', value = 'mvisiongt' },
            { label = 'patrol2', value = 'patrol2' },
            { label = 'nismo20', value = 'nismo20' },
            { label = 'polgs350', value = 'polgs350' },
            { label = 'policeind', value = 'policeind' },
            { label = 'polp1', value = 'polp1' },
            { label = 'rmodbacalar', value = 'rmodbacalar' },
            { label = 'rmodbolide', value = 'rmodbolide' },
            { label = 'rmodc63amg', value = 'rmodc63amg' },
            { label = 'rmodcamaro', value = 'rmodcamaro' },
            { label = 'rmode63s', value = 'rmode63s' },
            { label = 'rmodf40', value = 'rmodf40' },
            { label = 'rmodgt63', value = 'rmodgt63' },
            { label = 'rmodgt63police', value = 'rmodgt63police' },
            { label = 'rmodgtr50', value = 'rmodgtr50' },
            { label = 'rmodi8ks', value = 'rmodi8ks' },
            { label = 'rmodjeep', value = 'rmodjeep' },
            { label = 's65amg', value = 's65amg' },
            { label = 'sheriff2', value = 'sheriff2' },
            { label = 'sportage', value = 'sportage' },
            { label = 'supersport', value = 'supersport' },
            { label = 'taxi', value = 'taxi' },
            { label = 'Viper', value = 'Viper' },
            { label = 'w221s500', value = 'w221s500' },
            { label = 'wald2018', value = 'wald2018' },
            { label = 'x6m', value = 'x6m' },
            { label = 'z4bmw', value = 'z4bmw' },



        }
    }, function(data,menu)
    ------------------ Change to your vip car name -------------------
        if data.current.value=='16challenger' then createveh(data.current.value)end
        if data.current.value=='650s' then createveh(data.current.value)end
        if data.current.value=='p911r' then createveh(data.current.value)end
        if data.current.value=='KoenigseggAgeraR' then createveh(data.current.value)end
        if data.current.value=='gtrc' then createveh(data.current.value)end
        if data.current.value=='aperta' then createveh(data.current.value)end
        if data.current.value=='audsq517' then createveh(data.current.value)end
        if data.current.value=='bmwm8' then createveh(data.current.value)end
        if data.current.value=='bmws' then createveh(data.current.value)end
        if data.current.value=='ems' then createveh(data.current.value)end
        if data.current.value=='bdivo' then createveh(data.current.value)end
        if data.current.value=='cbr1000rrr' then createveh(data.current.value)end
        if data.current.value=='cls63s' then createveh(data.current.value)end
        if data.current.value=='dodgesamu' then createveh(data.current.value)end
        if data.current.value=='polschafter3' then createveh(data.current.value)end
        if data.current.value=='acs8' then createveh(data.current.value)end
        if data.current.value=='ghispo2' then createveh(data.current.value)end
        if data.current.value=='gmt900escalade' then createveh(data.current.value)end
        if data.current.value=='gtr' then createveh(data.current.value)end
        if data.current.value=='gtrs4' then createveh(data.current.value)end
        if data.current.value=='huayrar' then createveh(data.current.value)end
        if data.current.value=='krust' then createveh(data.current.value)end
        if data.current.value=='polmp4' then createveh(data.current.value)end
        if data.current.value=='pol718' then createveh(data.current.value)end
        if data.current.value=='lp670sv' then createveh(data.current.value)end
        if data.current.value=='lp700' then createveh(data.current.value)end
        if data.current.value=='lp770' then createveh(data.current.value)end
        if data.current.value=='lpbagger' then createveh(data.current.value)end
        if data.current.value=='lx2018' then createveh(data.current.value)end
        if data.current.value=='madabike' then createveh(data.current.value)end
        if data.current.value=='mgrantur2010' then createveh(data.current.value)end
        if data.current.value=='MGT' then createveh(data.current.value)end
        if data.current.value=='molimgene' then createveh(data.current.value)end
        if data.current.value=='mvisiongt' then createveh(data.current.value)end
        if data.current.value=='patrol2' then createveh(data.current.value)end
        if data.current.value=='nismo20' then createveh(data.current.value)end
        if data.current.value=='polgs350' then createveh(data.current.value)end
        if data.current.value=='policeind' then createveh(data.current.value)end
        if data.current.value=='polp1' then createveh(data.current.value)end
        if data.current.value=='rmodbacalar' then createveh(data.current.value)end
        if data.current.value=='rmodbolide' then createveh(data.current.value)end
        if data.current.value=='rmodc63amg' then createveh(data.current.value)end
        if data.current.value=='rmodcamaro' then createveh(data.current.value)end
        if data.current.value=='rmode63s' then createveh(data.current.value)end
        if data.current.value=='rmodf40' then createveh(data.current.value)end
        if data.current.value=='rmodgt63' then createveh(data.current.value)end
        if data.current.value=='rmodgt63police' then createveh(data.current.value)end
        if data.current.value=='rmodgtr50' then createveh(data.current.value)end
        if data.current.value=='rmodi8ks' then createveh(data.current.value)end
        if data.current.value=='rmodjeep' then createveh(data.current.value)end
        if data.current.value=='s65amg' then createveh(data.current.value)end
        if data.current.value=='sheriff2' then createveh(data.current.value)end
        if data.current.value=='sportage' then createveh(data.current.value)end
        if data.current.value=='supersport' then createveh(data.current.value)end
        if data.current.value=='taxi' then createveh(data.current.value)end
        if data.current.value=='Viper' then createveh(data.current.value)end
        if data.current.value=='w221s500' then createveh(data.current.value)end
        if data.current.value=='wald2018' then createveh(data.current.value)end
        if data.current.value=='x6m' then createveh(data.current.value)end
        if data.current.value=='z4bmw' then createveh(data.current.value)end


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
    DeleteVehicle(lastveh)
    CreateVehicele(vehiclehash, x, y, z, GetEntityHeading(PlayerPedId()), 1, 0)
    SetPedIntoVehicle(PlayerPedId(), vehicle, -1)
    print(car..'successfully spawned')
    TriggerEvent('chatMessage', source, "[VIP Car]", {255, 0, 0}, car..'successfully spawned')

end


    ------------------ /vipcar -------------------
RegisterCommand('vipcar', function() vipcarmenu() end,false)
