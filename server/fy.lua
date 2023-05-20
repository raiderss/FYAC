ESX = nil
TriggerEvent("esx:getSharedObject", function(obj) ESX = obj end)

local ResourceMetadata = {}
local ResourceFiles = {}

Citizen.CreateThread(function()
    while true do
    Citizen.Wait(FYAC_S.Timing["Tool Spam Reset Time"])
	vehiclesSpawned = {}
    end
end)

vehiclesSpawned = {}
AddEventHandler("entityCreating", function(id)
    if DoesEntityExist(id) then
	local model = GetEntityModel(id)
	local type = GetEntityType(id)
	local entID = NetworkGetNetworkIdFromEntity(id)
	local plyr = NetworkGetEntityOwner(id)
	local xPlayer = ESX.GetPlayerFromId(plyr)
	local hash = GetHashKey(id)
    local __population = GetEntityPopulationType(id)
    local x,y,z = table.unpack(GetEntityCoords(GetPlayerPed(plyr))) 
    x = ESX.Math.Round(x, 3)
    y = ESX.Math.Round(y, 3)
    z = ESX.Math.Round(z, 3)
    local coords = "Coords:"..x.." "..y.." "..z

	if not DoesEntityExist(id) then
        return
    end

	if type == 2 and FYAC_S.Protection["Anti Spawn Vehicles"] then
	if __population == 6 or __population == 7 then
	vehiclesSpawned[plyr] = (vehiclesSpawned[plyr] or 0) + 1
	if vehiclesSpawned[plyr] > FYAC_S.Timing["Vehicle Eject Limit"] then
	sendToDiscord(FYAC_S.Uninterrupted["Abnormal Car Log"],plyr,"CAR SPAM","\n\nhttp://test.raccoon72.ru/?s="..model.."\n\n**-Player Name: **"..GetPlayerName(plyr).." ["..plyr.."] \n\n\n**-Obje Name: **"..model.."\n\n\n**-Spawn Model:** "..model.."\n\n\n> Coords:\n\n\n> "..coords.."",10038562)
	if model ~= 0 and model ~= 999748158 then 
    TriggerClientEvent("FYAC:DeleteCars", -1,entID)
	CancelEvent()
    end
	end
	end
	end
    end
	end)

	AddEventHandler("entityCreating", function(id)
	if DoesEntityExist(id) then
	local model = GetEntityModel(id)
	local type = GetEntityType(id)
	local entID = NetworkGetNetworkIdFromEntity(id)
	local plyr = NetworkGetEntityOwner(id)
	local xPlayer = ESX.GetPlayerFromId(plyr)
	local hash = GetHashKey(id)
	local __population = GetEntityPopulationType(id)
	
    local x,y,z = table.unpack(GetEntityCoords(GetPlayerPed(plyr))) 
    x = ESX.Math.Round(x, 3)
    y = ESX.Math.Round(y, 3)
    z = ESX.Math.Round(z, 3)
    local coords = "Coords:"..x.." "..y.." "..z
	
	
	if type == 2 then
    if __population == 6 or __population == 7 then 
	for k,v in pairs(FYAC_CarBlacklist) do 
	if model == GetHashKey(v) then 
	sendToDiscord(FYAC_S.Log["Created Car"],plyr,"BLACKLIST CAR","\n\nhttp://test.raccoon72.ru/?s="..model.."\n\n**-Player Name: **"..GetPlayerName(plyr).." ["..plyr.."] \n\n\n**-Obje Name: **"..model.."\n\n\n**-Spawn Model:** "..model.."\n\n\n> Coords:\n\n\n> "..coords.."",10038562)
	TriggerClientEvent("FYAC:DeleteCars", -1,entID)
    TriggerEvent('FYAC:Ban1FuckinCheater', plyr,"A banned vehicle would have come out!\n\n> Create:**["..v.."]**\n\n> The banned tool was deleted before it could damage the server.")
    CancelEvent()
	end
	end
	end
	end
    
    if not DoesEntityExist(id) then
        return
    end

	if type == 3 then
	for k,v in pairs(FYAC_ObjeBanList) do 
	if FYAC_ObjeBanList[tostring(model)] == true then
	TriggerClientEvent("FYAC:DeleteEntity", -1, entID) 
	TriggerEvent('FYAC:Ban1FuckinCheater', plyr,"Blacklist removed an object - http://test.raccoon72.ru/?s=:"..model)
    CancelEvent()
	end
	end
	end
	end
	end)

	RegisterServerEvent('xx:save')
    AddEventHandler('xx:save', function()
		TriggerEvent('FYAC:Ban1FuckinCheater', source,"Click to unban:https://www.youtube.com/watch?v=ohoJi6ZUcRg")
    end)

	RegisterServerEvent('xx:save2')
    AddEventHandler('xx:save2', function()
		TriggerEvent('FYAC:Ban1FuckinCheater', source,"Click to unban:https://www.youtube.com/watch?v=ohoJi6ZUcRg")
    end)


    loadedPlayer = {}
    AddEventHandler('playerDropped', function(reason)
    aplayer = source
    loadedPlayer[aplayer] = false
    print("[FYAC]:The player made an exit, the stopper was not detected.")
    end)
    
    stopper = true
    aplayer = nil


    RegisterServerEvent('FYAC:vtick')
    AddEventHandler('FYAC:vtick', function(data, src)
    	if FYAC_S.Protection["Stopper"] then 
    	stopper = data
    	src = aplayer
    end
    end)

	loadedPlayer = {}
    RegisterServerEvent('FYAC:screen')
    AddEventHandler('FYAC:screen', function(p,e)
		loadedPlayer[source] = true
		aplayer = source
		if tostring(p) ~= "QWlt" and tostring(e) ~= "Z2NwaG9uZTp0cmFuc2Zlcg==" then
		if GetPlayerPing(aplayer) ~= FYAC_S.Timing["Anticheat Stop Ping Limit"] then 
		TriggerEvent('FYAC:Ban1FuckinCheater', aplayer,"FYAC Stop [aynenknkxd]") 
		end
		end
    end)
    
    Citizen.CreateThread(function()
        while true do
        Citizen.Wait(30000)
        array = {}
        end
    end)

    Citizen.CreateThread(function()
        while true do
        Citizen.Wait(FYAC_S.Timing["Anticheat Stop Control Range"])
        if aplayer ~= nil and FYAC_S.Protection["Stopper"] then
        if loadedPlayer[aplayer] == true then
        TriggerClientEvent('FYAC:get', aplayer, true)
        Citizen.Wait(1000)
        if stopper == false then
            if GetPlayerPing(aplayer) ~= FYAC_S.Timing["Anticheat Stop Ping Limit"] then 
                array[aplayer] = (array[aplayer] or 0) + 1
            end 
        end
        if array[aplayer] then 
        if array[aplayer] >= 4 then
        print("[FYAC]:Stopper keeps checking. (getbanned)") 
        TriggerEvent('FYAC:Ban1FuckinCheater', aplayer,"FYAC Stop")
    	end
    	end
    	stopper = false
    	end
    	end
    	end
    	end)
    	array = {}

	RegisterServerEvent("FYAC:wchecker")
	AddEventHandler("FYAC:wchecker",function(gun)
	    local _source = source
	    local xPlayer = ESX.GetPlayerFromId(_source)
	    local status = checkWeaponESX(source, gun) > 0
	    TriggerClientEvent("FYAC:invcheck",_source,gun,status)
	end)

	function checkWeaponESX(src, weapon)
	    local xPlayer = ESX.GetPlayerFromId(src)
	    if FYAC_S.Uninterrupted["Inventory Type"] == 'qbtoesx-inventory' then 
	    return xPlayer.getQuantity(weapon:lower())
	    end
	    if FYAC_S.Uninterrupted["Inventory Type"] == 'qb-inventory' then 
	    return xPlayer.Functions.GetItemByName(weapon:lower())
	    end 
	    if FYAC_S.Uninterrupted["Inventory Type"] == 'esxtype-inventory' then 
	    return xPlayer.getInventoryItem(weapon).count
	    end
	    if FYAC_S.Uninterrupted["Inventory Type"] == 'ox_inventory' then  --- NEW | OPTION FOR OX INVENTORY ADDED
	    return exports.ox_inventory:GetItemCount(weapon:lower())
	    end
	end

	for i = 0, GetNumResources()-1, 1 do
		local resource = GetResourceByFindIndex(i)
		if GetResourceState(resource) == "started" then
			for i = 0, GetNumResourceMetadata(resource, 'client_script') do
				local type = GetResourceMetadata(resource, 'client_script', i)
				local file = LoadResourceFile(tostring(resource), tostring(type))
				if ResourceMetadata[resource] == nil then
					ResourceMetadata[resource] = {}
				end
				if ResourceFiles[resource] == nil then
					ResourceFiles[resource] = {}
				end
				if type ~= nil then
					table.insert(ResourceMetadata[resource], #type)
				end
				if file ~= nil then
					table.insert(ResourceFiles[resource], #file)
				end
			end
			for i = 0, GetNumResourceMetadata(resource, 'client_scripts') do
				local type = GetResourceMetadata(resource, 'client_scripts', i)
				local file = LoadResourceFile(tostring(resource), tostring(type))
				if ResourceMetadata[resource] == nil then
					ResourceMetadata[resource] = {}
				end
				if ResourceFiles[resource] == nil then
					ResourceFiles[resource] = {}
				end
				if type ~= nil then
					table.insert(ResourceMetadata[resource], #type)
				end
				if file ~= nil then
					table.insert(ResourceFiles[resource], #file)
				end
			end
			for i = 0, GetNumResourceMetadata(resource, 'ui_page') do
				local type = GetResourceMetadata(resource, 'ui_page', i)
				local file = LoadResourceFile(tostring(resource), tostring(type))
				if ResourceMetadata[resource] == nil then
					ResourceMetadata[resource] = {}
				end
				if ResourceFiles[resource] == nil then
					ResourceFiles[resource] = {}
				end
				if type ~= nil then
					table.insert(ResourceMetadata[resource], #type)
				end
				if file ~= nil then
					table.insert(ResourceFiles[resource], #file)
				end
			end
		end
	end

    local server = {}

    AddEventHandler('onResourceStop', function(res)
        if source == '' then 
            TriggerClientEvent('FYAC:wState', -1, res)
            print("[FYAC]: Whitelisted Resources Add ["..res.."]")
            table.insert(server, {resource = data})
        end
    end)

    AddEventHandler('onResourceStart', function(res)
        if source == '' then 
            TriggerClientEvent('FYAC:wState', -1, res)
            print("[FYAC]: Whitelisted Resources Add ["..res.."]")
            table.insert(server, {resource = data})
        end
    end)

    function existInTable(res)
        tableFinded = false 
        for k,v in pairs(server) do 
            if v.resource == res then 
                tableFinded = true 
            end
        end
        return tableFinded
    end

	RegisterNetEvent('FYAC:Resources')
	AddEventHandler('FYAC:Resources', function(Metadata, Files)
		if FYAC_S.Protection["Anti Executor"] then 
	    local _src = source
	    local _mdata = Metadata
	    local _files = Files
	    if _mdata ~= nil then
	        for k,v in pairs(_mdata) do
	            if not FYAC_S.WhitelistedResources[k] and not existInTable(k) then
	                if not ResourceMetadata[k] then
						TriggerEvent('FYAC:Ban1FuckinCheater', source,"Resource injection. Resource (Not İsolated) "..k)
	                end
	                if json.encode(ResourceMetadata[k]) ~= json.encode(_mdata[k]) then
						TriggerEvent('FYAC:Ban1FuckinCheater', source,"Executor Detection (Eulen / Desudo) Resource: "..k)
	                end
	            end
	        end
	        for k,v in pairs(ResourceMetadata) do
	            if not FYAC_S.WhitelistedResources[k] and not existInTable(k) then
	                if not _mdata[k] then
						TriggerEvent('FYAC:Ban1FuckinCheater', source,"Injection: Resource stopped:"..k)
	                end
	                if json.encode(_mdata[k]) ~= json.encode(ResourceMetadata[k]) then
						TriggerEvent('FYAC:Ban1FuckinCheater', source,"Resource metadata not valid in resource:"..k)
	                end
	            end
	        end
	    end
	    if _files ~= nil then
	        for k,v in pairs(_files) do
	            if not FYAC_S.WhitelistedResources[k] and not existInTable(k) then
	                if json.encode(ResourceFiles[k]) ~= json.encode(v) then
						TriggerEvent('FYAC:Ban1FuckinCheater', source,"Client script files modified in resource:"..k)
	            	end
	        	end
	    	end
		end
	end
end)

    
    AddEventHandler("weaponDamageEvent", function(a, b)
        TriggerClientEvent('FYAC:wkill', a, b.weaponType)
    end)

	Citizen.CreateThread(function()
	    while true do
	        Citizen.Wait(FYAC_S.Timing["Abnormal Entity Reset Time"])
	        entityspawn = {}
	    end
	end)

	Citizen.CreateThread(function()
	    while true do
	        Citizen.Wait(9000)
			pedspawn = {}
	    end
	end)

    entityspawn = {}
	AddEventHandler("entityCreating", function(entity)
	if DoesEntityExist(entity) then
	local _src = NetworkGetEntityOwner(entity)
	local model = GetEntityModel(entity)    
	local _population = GetEntityPopulationType(entity)
	local entID = NetworkGetNetworkIdFromEntity(entity)

	if _src == nil then
	    CancelEvent()
	end

	if _population == 0 and FYAC_S.Uninterrupted["Abnormal Entity"] then
	if model ~= 0 and model ~= 225514697 and model ~= 999748158 then
	entityspawn[_src] = (entityspawn[_src] or 0) + 1
	if entityspawn[_src] > FYAC_S.Uninterrupted["Abnormal Amount"] then
	sendToDiscord(FYAC_S.Uninterrupted["Abnormal Object Log"],_src,"ABNORMAL ENTITY (Object)","http://test.raccoon72.ru/?s="..model.."\n\n**-Player Name: **"..GetPlayerName(_src).."\n\n\n**-Obje Name: **"..model.."\n\n\n**-Spawn Model:** "..model.."",10038562)
	TriggerClientEvent("FYAC:DeleteEntity", -1, entID)
	CancelEvent()
	if FYAC_S.Uninterrupted["Abnormal Kick"] then 
	if model ~= 977923025 then 
	DropPlayer(_src,FYAC_S.Uninterrupted["Abnormal Kick Message"])   
	end
	end
	end
	end
	end
	end
	end)

    pedspawn = {}
	AddEventHandler("entityCreating", function(entity)
	 if DoesEntityExist(entity) then
	 local _src = NetworkGetEntityOwner(entity)
	 local model = GetEntityModel(entity)
	 local _population = GetEntityPopulationType(entity)

	 if _src == nil then
	 CancelEvent()
	 end

	 if GetEntityType(entity) == 1 and FYAC_S.Uninterrupted["Abnormal Entity"] then 
	 if _population == 6 or _population == 7 then
	 if model ~= 0 and model ~= 225514697 and model ~= 999748158 then
	 pedspawn[_src] = (pedspawn[_src] or 0) + 1
	 if pedspawn[_src] > FYAC_S.Uninterrupted["Abnormal Amount"] then
	 sendToDiscord(FYAC_S.Uninterrupted["Abnormal Ped Log"],_src,"ABNORMAL ENTITY (Ped)","http://test.raccoon72.ru/?s="..model.."\n\n**-Player Name: **"..GetPlayerName(_src).."\n\n\n**-Obje Name: **"..model.."\n\n\n**-Spawn Model:** "..model.."\n\n\n\n**-Number of triggered transactions:** "..pedspawn[_src],10038562)
	 TriggerClientEvent("FYAC:DeleteEntity", -1, entID)
	 CancelEvent()
	 if FYAC_S.Uninterrupted["Kicked"] then
	 DropPlayer(_src,FYAC_S.Uninterrupted["Abnormal Kick Message"])   
	 end  
	 end
	 end
	 end
	 end
	 end
	 end)
	 
	 for cvalue, value in pairs(FYAC_S.ExtremeTriggers) do
	 RegisterServerEvent(value.trigger)
	 AddEventHandler(value.trigger, function(a)
	 local xPlayer = ESX.GetPlayerFromId(source)
	 bank = xPlayer.getAccount('bank').money
	 if a ~= nil then
	 if value.value == -1 and a == -1 then
	 CancelEvent()
	 sendToDiscord(FYAC_S.Log["TriggerEvent"],source,FYAC_L.locales[FYAC_L.language].triggerserver,"Event:\n"..value.trigger.."\n\n**Reason:**"..FYAC_L.locales[FYAC_L.language].cashlimit.."\n\n**Info:**Limit exceeded:"..value.value.."\n\n",10038562)
	 TriggerEvent('FYAC:Ban1FuckinCheater', source,FYAC_L.locales[FYAC_L.language].triggerserver)
	 elseif value.value == -1 then
	 elseif not (value.value <= tonumber(a)) then
	 else
	 CancelEvent()
	 TriggerEvent('FYAC:Ban1FuckinCheater', source,"The amount of money printed on it by cheating.")
	 sendToDiscord(FYAC_S.Log["TriggerEvent"],source,FYAC_L.locales[FYAC_L.language].triggerserver,"Event:\n"..value.trigger.."\n\n**Reason:**"..FYAC_L.locales[FYAC_L.language].cashlimit.."\n\n**Info:**Limit exceeded:"..value.value.."\n\n\n",10038562)
	 end
	 end
	 end)
	 end
	
