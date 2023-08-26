if Config.AdminOnly == True then
    print(source)
    TriggerEvent('es:addAdminCommand', Config.Command, Config.PermissionLevel, function(source, args, user)
        
        TriggerClientEvent('Noel-VIPSpawn:SpawnCarMenu')

    end, function(source, args, user)

        TriggerClientEvent('chatMessage', source, 'SYSTEM', {255, 0, 0}, 'Insufficient Permissions.')

    end, {help = 'VIP Car Menu.'})
    
end