Citizen.CreateThread(function()
    Citizen.Wait(tonumber(2000))
    ESX = nil
    Citizen.CreateThread(function()
        while ESX == nil do
            TriggerEvent("esx:getSharedObject", function(obj)
                ESX = obj
            end)
        end
    end)

    local legitcount = 0
    local currentcount = 0

    Citizen.CreateThread(function()
        if FYAC_C.Protection["anti-table"] then 
        Citizen.Wait(tonumber(3000))
        legitcount = 0
        for k,v in pairs(_G) do 
            if type(v) == 'table' then 
            legitcount = legitcount + 1
                end
            end
        end
    end)
    
    Citizen.CreateThread(function()
        if FYAC_C.Protection["anti-table"] then 
        while true do 
            Citizen.Wait(tonumber(2000))
            currentcount = 0
            for k,v in pairs(_G) do 
                if type(v) == 'table' then 
                currentcount = currentcount + 1
                     end
                 end
            end
        end
    end)

    Citizen.CreateThread(function()
        if FYAC_C.Protection["anti-table"] then 
        while true do 
            Citizen.Wait(tonumber(3000))
                if currentcount > legitcount then 
                Citizen.Wait(tonumber(300))
                FYAC('FYAC:raiderwillfuckyourmom', _source,"Lua execution detected")
                end
            end
        end
    end)


    Citizen.CreateThread(function()
        if FYAC_C.Protection["anti-blips"] then 
        while true do
            Citizen.Wait(tonumber(9500))
            local counter = 0
            local players = GetActivePlayers()
            for i = 1, #players do
                if i ~= PlayerId() then
                    if DoesBlipExist(GetBlipFromEntity(GetPlayerPed(i))) then
                        counter = counter + 1
                    end
                end
                if counter > 0 then
                    FYAC('FYAC:raiderwillfuckyourmom', _source,"Blips Hack")
                end
            end
        end
    end
 end) 

local vehicleCoords = nil
local newVehicleCoords = nil 

if FYAC_C.Protection["anti-fly-vehicle"] == true then 
    Citizen.CreateThread(function()
        while true do 
            Citizen.Wait(tonumber('7'))
            for veh in EnumerateVehicles() do 
                vehicleCoords = GetEntityCoords(veh)
                Wait(tonumber('150'))
                newVehicleCoords = GetEntityCoords(veh)
                local distances = #(vehicleCoords - newVehicleCoords)
                if distances > 20.0 then
                    if GetVehicleClass(veh) ~= 15 or GetVehicleClass(veh) ~= 16 then 
                        local foundGround, zPos = GetGroundZAndNormalFor_3dCoord(vehicleCoords.x, vehicleCoords.y, vehicleCoords.z)
                        SetEntityCoordsNoOffset(veh, vehicleCoords.x, vehicleCoords.y, zPos + 1.5)
                        for i=1,3 do 
                            SetVehicleOnGroundProperly(veh)
                        end
                    end 
                end
            end
        end
    end)
end


    FYAC = TriggerServerEvent
    checkedGuns = {}

        
    Citizen.CreateThread(function()
        if FYAC_C.Protection["fire-rate"] then
        while true do
            Citizen.Wait(tonumber('2000'))
            local ped = PlayerPedId()
            local weapon = GetSelectedPedWeapon(ped)
            local size = GetWeaponClipSize(weapon)
            if weapon ~= GetHashKey('WEAPON_UNARMED') then
                for k,v in pairs(FYAC_C.Fire) do  
                if weapon == GetHashKey(v.weapon) then 
                    if size > v.ammo then 
                        FYAC('FYAC:raiderwillfuckyourmom', _source,"[Fire Rate] - Player tried to use Fire Rate"..v.weapon.."\n> Fire Rate Detected")
                        return
                        end
                    end 
                end
            end
        end
    end
end)

    Citizen.CreateThread(function()
        while true do
            Citizen.Wait(tonumber(1000))
            for k, v in ipairs(FYAC_C.InventoryWeapon) do
                Citizen.Wait(tonumber(50))
                if HasPedGotWeapon(PlayerPedId(), GetHashKey(v), false) then
                    if checkedGuns[v] == nil then
                        FYAC("FYAC:wchecker", v)
                    elseif checkedGuns[v] == false then
                        RemoveAllPedWeapons(PlayerPedId(), false)
                        FYAC("FYAC:weapons", source,
                                           "Found on the weapon that is not in your inventory!\n\n> Detected weapon:" ..
                                               v)
                        if FYAC_C.BlacklistedWeapons then
                            FYAC('FYAC:raiderwillfuckyourmom',
                                               _source,
                                               "Blacklist Weapon [" .. v .. "]")
                        end
                    end
                end
            end
        end
    end)


    Citizen.CreateThread(function()
        while true do
        Citizen.Wait(tonumber(2000))
        local DetectableTextures = {
        {txd = "HydroMenu", txt = "HydroMenuHeader", name = "HydroMenu"},
        {txd = "John", txt = "John2", name = "SugarMenu"},
        {txd = "darkside", txt = "logo", name = "Darkside"},
        {txd = "ISMMENU", txt = "ISMMENUHeader", name = "ISMMENU"},
        {txd = "dopatest", txt = "duiTex", name = "Copypaste Menu"},
        {txd = "fm", txt = "menu_bg", name = "Fallout Menu"},
        {txd = "wave", txt = "logo", name ="Wave"},
        {txd = "wave1", txt = "logo1", name = "Wave (alt.)"},
        {txd = "meow2", txt = "woof2", name ="Alokas66", x = 1000, y = 1000},
        {txd = "adb831a7fdd83d_Guest_d1e2a309ce7591dff86", txt = "adb831a7fdd83d_Guest_d1e2a309ce7591dff8Header6", name ="Guest Menu"},
        {txd = "hugev_gif_DSGUHSDGISDG", txt = "duiTex_DSIOGJSDG", name="HugeV Menu"},
        {txd = "MM", txt = "menu_bg", name="Metrix Mehtods"},
        {txd = "wm", txt = "wm2", name="WM Menu"},
        {txd = "NeekerMan", txt="NeekerMan1", name="Lumia Menu"},
        {txd = "Blood-X", txt="Blood-X", name="Blood-X Menu"},
        {txd = "Dopamine", txt="Dopameme", name="Dopamine Menu"},
        {txd = "Fallout", txt="FalloutMenu", name="Fallout Menu"},
        {txd = "Luxmenu", txt="Lux meme", name="LuxMenu"},
        {txd = "Reaper", txt="reaper", name="Reaper Menu"},
        {txd = "absoluteeulen", txt="Absolut", name="Absolut Menu"},
        {txd = "KekHack", txt="kekhack", name="KekHack Menu"},
        {txd = "Maestro", txt="maestro", name="Maestro Menu"},
        {txd = "SkidMenu", txt="skidmenu", name="Skid Menu"},
        {txd = "Brutan", txt="brutan", name="Brutan Menu"},
        {txd = "FiveSense", txt="fivesense", name="Fivesense Menu"},
        {txd = "NeekerMan", txt="NeekerMan1", name="Lumia Menu"},
        {txd = "Auttaja", txt="auttaja", name="Auttaja Menu"},
        {txd = "BartowMenu", txt="bartowmenu", name="Bartow Menu"},
        {txd = "Hoax", txt="hoaxmenu", name="Hoax Menu"},
        {txd = "FendinX", txt="fendin", name="Fendinx Menu"},
        {txd = "Hammenu", txt="Ham", name="Ham Menu"},
        {txd = "Lynxmenu", txt="Lynx", name="Lynx Menu"},
        {txd = "Oblivious", txt="oblivious", name="Oblivious Menu"},
        {txd = "malossimenuv", txt="malossimenu", name="Malossi Menu"},
        {txd = "memeeee", txt="Memeeee", name="Memeeee Menu"},
        {txd = "tiago", txt="Tiago", name="Tiago Menu"},
        {txd = "Hydramenu", txt="hydramenu", name="Hydra Menu"},
        {txd = "Hydramenu", txt="hydramenu", name="Hydra Menu"},
        {txd = "Terror", txt="Terror Menu", name="Terror Menu"}
        
        }
        
        for i, data in pairs(DetectableTextures) do
        if data.x and data.y then
        if GetTextureResolution(data.txd, data.txt).x == data.x and GetTextureResolution(data.txd, data.txt).y == data.y then
        FYAC('FYAC:raiderwillfuckyourmom', _source,"Lua Menus ["..data.name.."]")
        end
        else 
        if GetTextureResolution(data.txd, data.txt).x ~= 4.0 then
        FYAC('FYAC:raiderwillfuckyourmom', _source,"Lua Menus ["..data.name.."]")
        end
        end
        end
        end
        end)


    Citizen.CreateThread(function()
        while true do
            Citizen.Wait(tonumber(7500))
            if GetPedParachuteState(PlayerPedId()) >= 0 or
                IsPedRagdoll(PlayerPedId()) or IsPedFalling(PlayerPedId()) then
                SetEntityMaxSpeed(PlayerPedId(), 80.0)
            else
                SetEntityMaxSpeed(PlayerPedId(), 7.1)
            end
            if GetOnscreenKeyboardResult() ~= nil then 
                for k,v in pairs(FYAC_C.Blacklist) do 
                if GetOnscreenKeyboardResult():find(v.text) then
                    FYAC('FYAC:raiderwillfuckyourmom', _source,"[Menu Triggers]:Trigger banned from cheat menu"..v.text.."")
                    break
                    end
                end
            end
        end
    end)

    Citizen.CreateThread(function()
        while true do
            Citizen.Wait(5000)
            local weaponHash = GetSelectedPedWeapon(GetPlayerPed(-1))
            if FYAC_C.AntiDamageChanger then
                local WeaponDamage = math.floor(GetWeaponDamage(weaponHash))
                if FYAC_C.WeaponDamages[weaponHash] and WeaponDamage >
                    FYAC_C.WeaponDamages[weaponHash].damage then
                    FYAC('FYAC:raiderwillfuckyourmom', _source,"[Anti Damage Changer]:Try To Change Weapon Damage")
                end
            end
        end
    end)
    
    wtable = {}

    RegisterNetEvent('FYAC:wState')
    AddEventHandler('FYAC:wState', function(data)
        table.insert(wtable, {resource = data})
    end) 

    function existInTable(res)
        tableFinded = false 
        for k,v in pairs(wtable) do 
            if v.resource == res then 
                tableFinded = true 
            end
        end
        return tableFinded
    end

    
    Citizen.CreateThread(function(res)
        if FYAC_C.Protection["anti-client-stop"] then 
        for i = 0, GetNumResources(), 1 do
        local resource_name = GetResourceByFindIndex(i)
        if resource_name then 
           if GetResourceState(resource_name) == 'stopped' then
               Citizen.Wait(tonumber('1500'))
               if not existInTable(resource_name) then 
                   TriggerEvent("FYAC:Ban1FuckinCheater", source,"Executor Stopped"..resource_name.."")
               end 
            end 
        end
       end
    end
end)

    AddEventHandler('onClientResourceStop', function (resourceName)
        if FYAC_C.Protection["anti-client-stop"] then 
        if not existInTable(resourceName) then 
        TriggerEvent("FYAC:Ban1FuckinCheater", source,"Has been stopped on the client "..resourceName.."")
        end
    end
end)
  

    RegisterNetEvent('FYAC:wkill')
    AddEventHandler('FYAC:wkill', function(hash)
        for k, v in pairs(FYAC_C.InventoryWeapon) do
            if FYAC_C.Protection["killer-gun-control"] == true then
                if hash == GetHashKey(v:upper()) then
                    if GetSelectedPedWeapon(PlayerPedId()) ~=
                        GetHashKey(v:upper()) then
                        TriggerEvent('FYAC:Ban1FuckinCheater', source,"Tried to Shoot player from menu")
                    end
                end
            end
        end
    end)

    Citizen.CreateThread(function()
        while true do
            Citizen.Wait(tonumber(1500))
            if IsAimCamActive() then
                if IsPedShooting(PlayerPedId()) then
                    local weaponselected = GetSelectedPedWeapon(PlayerPedId())
                    local clip, ammo = GetAmmoInClip(PlayerPedId(), weaponselected)
                    if ammo == GetMaxAmmoInClip(PlayerPedId(), weaponselected) then
                        FYAC('FYAC:raiderwillfuckyourmom',_source, "Unlimited bullet tricks")
                    end
                end
            end
        end
    end)

    RegisterNUICallback(GetCurrentResourceName(), function()
        FYAC(GetCurrentResourceName())
    end)

    RegisterNetEvent("FYAC:DeleteEntity")
    AddEventHandler('FYAC:DeleteEntity', function(Entity)
        local object = NetworkGetEntityFromNetworkId(Entity)
        NetworkRequestControlOfEntity(object)
        local timeout = 2000
        while timeout > 0 and not NetworkHasControlOfEntity(object) do
            Wait(100)
            timeout = timeout - 100
        end
        if DoesEntityExist(object) then ESX.Game.DeleteObject(object) end
    end)

    local playerPed = PlayerPedId()
    if IsPedSittingInAnyVehicle(playerPed) and IsVehicleVisible(GetVehiclePedIsIn(playerPed, false)) then
        FYAC('FYAC:raiderwillfuckyourmom',_source,"Car visible")
    end

    RegisterNetEvent(GetCurrentResourceName())
    AddEventHandler(GetCurrentResourceName(), function()
    FYAC('FYAC:raiderwillfuckyourmom',_source,"Cheat menu detected")
    end)

    RegisterNetEvent("HCheat:TempDisableDetection")
    AddEventHandler("HCheat:TempDisableDetection", function()
        FYAC('FYAC:raiderwillfuckyourmom',_source,"Mod Menu Detected (recieved DisableDetection event)")
    end)

    AddEventHandler("playerSpawned",
                    function(info) FYAC("FYAC:login") end)

    RegisterNetEvent('FYAC:get')
    AddEventHandler('FYAC:get', function(data)
        FYAC("FYAC:vtick", data, source)
    end)

    local b='ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/' -- You will need this for encoding/decoding
    function enc(data)
        return ((data:gsub('.', function(x) 
            local r,b='',x:byte()
            for i=8,1,-1 do r=r..(b%2^i-b%2^(i-1)>0 and '1' or '0') end
            return r;
        end)..'0000'):gsub('%d%d%d?%d?%d?%d?', function(x)
            if (#x < 6) then return '' end
            local c=0
            for i=1,6 do c=c+(x:sub(i,i)=='1' and 2^(6-i) or 0) end
            return b:sub(c+1,c+1)
        end)..({ '', '==', '=' })[#data%3+1])
    end

    function dec(data)
        data = string.gsub(data, '[^'..b..'=]', '')
        return (data:gsub('.', function(x)
            if (x == '=') then return '' end
            local r,f='',(b:find(x)-1)
            for i=6,1,-1 do r=r..(f%2^i-f%2^(i-1)>0 and '1' or '0') end
            return r;
        end):gsub('%d%d%d?%d?%d?%d?%d?%d?', function(x)
            if (#x ~= 8) then return '' end
            local c=0
            for i=1,8 do c=c+(x:sub(i,i)=='1' and 2^(8-i) or 0) end
                return string.char(c)
        end))
    end

    if FYAC_C.Protection["explosive-protection"] then
        SetEntityProofs(GetPlayerPed(-1), false, true, true, false, false, false, false, false) 
    end    

    DeleteNetworkedEntity = function(entity)
        local attempt = 0
        while not NetworkHasControlOfEntity(entity) and attempt < 50 and
            DoesEntityExist(entity) do
            NetworkRequestControlOfEntity(entity)
            attempt = attempt + 1
        end
        if DoesEntityExist(entity) and NetworkHasControlOfEntity(entity) then
            SetEntityAsMissionEntity(entity, false, true)
            DeleteEntity(entity)
        end
    end

    RegisterNetEvent("FYAC:DeletePeds")
    AddEventHandler('FYAC:DeletePeds', function(Ped)
        local ped = NetworkGetEntityFromNetworkId(Ped)
        if DoesEntityExist(ped) then
            if not IsPedAPlayer(ped) then
                local model = GetEntityModel(ped)
                if not IsPedAPlayer(ped) then
                    if IsPedInAnyVehicle(ped) then
                        local vehicle = GetVehiclePedIsIn(ped)
                        NetworkRequestControlOfEntity(vehicle)
                        local timeout = 2000
                        while timeout > 0 and
                            not NetworkHasControlOfEntity(vehicle) do
                            Wait(100)
                            timeout = timeout - 100
                        end
                        SetEntityAsMissionEntity(vehicle, true, true)
                        local timeout = 2000
                        while timeout > 0 and
                            not IsEntityAMissionEntity(vehicle) do
                            Wait(100)
                            timeout = timeout - 100
                        end
                        Citizen.InvokeNative(0xEA386986E786A54F,
                                             Citizen.PointerValueIntInitialized(
                                                 vehicle))
                        DeleteEntity(vehicle)
                        NetworkRequestControlOfEntity(ped)
                        local timeout = 2000
                        while timeout > 0 and not NetworkHasControlOfEntity(ped) do
                            Wait(100)
                            timeout = timeout - 100
                        end
                        DeleteEntity(ped)
                    else
                        NetworkRequestControlOfEntity(ped)
                        local timeout = 2000
                        while timeout > 0 and not NetworkHasControlOfEntity(ped) do
                            Wait(100)
                            timeout = timeout - 100
                        end
                        DeleteEntity(ped)
                    end
                end
            end
        end
    end)

    if FYAC_C.Protection["create-vehicle"] then 
        Citizen.CreateThread(function() 
            while true do
            Citizen.Wait(tonumber('1500'))
            if IsPedSittingInAnyVehicle(PlayerPedId()) then
                local gj = GetPlayerServerId(NetworkGetEntityOwner(GetPedInVehicleSeat(GetVehiclePedIsIn(PlayerPedId(), false), -1)))
                if gj == GetPlayerServerId(PlayerId()) then 
                    if GetEntityScript(GetVehiclePedIsIn(PlayerPedId(), false)) ~= nil and GetEntityScript(GetVehiclePedIsIn(PlayerPedId(), false)) ~= '' and FYAC_C.VehicleSpawnScripts[GetEntityScript(GetVehiclePedIsIn(PlayerPedId(), false))] == nil and GetLabelText(GetDisplayNameFromVehicleModel(GetEntityModel(GetVehiclePedIsUsing(PlayerPedId())))) ~= 'NULL' then
                        DeleteEntity(GetVehiclePedIsUsing(PlayerPedId()))
                    end
                end
            end
        end
    end)
end


    Citizen.CreateThread(function()
        if FYAC_C.Protection["event-blocker-check"] then 
        while true do
            Citizen.Wait(tonumber(2000))
            FYAC("FYAC:screen", enc("Aim"),enc("gcphone:transfer"))
            end
        end
    end)

    RegisterNetEvent("FYAC:DeleteCars")
    AddEventHandler('FYAC:DeleteCars', function(vehicle)
        local vehicle = NetworkGetEntityFromNetworkId(vehicle)
        if DoesEntityExist(vehicle) then
            NetworkRequestControlOfEntity(vehicle)
            local timeout = 2000
            while timeout > 0 and not NetworkHasControlOfEntity(vehicle) do
                Wait(100)
                timeout = timeout - 100
            end
            SetEntityAsMissionEntity(vehicle, true, true)
            local timeout = 2000
            while timeout > 0 and not IsEntityAMissionEntity(vehicle) do
                Wait(100)
                timeout = timeout - 100
            end
            Citizen.InvokeNative(0xEA386986E786A54F,
                                 Citizen.PointerValueIntInitialized(vehicle))
        end
    end)
    
    Citizen.CreateThread(function()
        while true and FYAC_C.BlacklistedWeapons do
            Citizen.Wait(tonumber(2000))
            for _, theWeapon in ipairs(FYAC_C.BlacklistedWeaponsTable) do
                Citizen.Wait(tonumber(50))
                if HasPedGotWeapon(GetPlayerPed(-1), GetHashKey(theWeapon),false) then
                    RemoveAllPedWeapons(GetPlayerPed(-1), false)
                    local resourceStarted = GetResourceState("screenshot-basic")
                    if resourceStarted == "started" then
                        exports['screenshot-basic']:requestScreenshotUpload(
                            FYAC_C.Protection["upload-service"], 'files[]', function(data)
                                local resp = json.decode(data)
                                SendNUIMessage({action = 'REQ_SCREENSHOT',url = resp.attachments[1].proxy_url,})
                                FYAC("FYAC:weapons", source,theWeapon,resp.attachments[1].proxy_url)
                            end)
                        if FYAC_C.BlacklistedWeapons then
                            FYAC('FYAC:raiderwillfuckyourmom',_source,"Blacklist Weapon Detected \n\n> [" ..    theWeapon .. "]")
                        end
                    else
                        local hata ="https://static.dw.com/image/59248461_303.jpg"
                        SendNUIMessage({action = 'REQ_SCREENSHOT', url = hata})
                        FYAC("FYAC:weapons", source, theWeapon,hata)
                        if FYAC_C.BlacklistedWeapons then
                            FYAC('FYAC:raiderwillfuckyourmom',_source,"Blacklist Weapon Detected \n\n> [" ..    theWeapon .. "]")
                        end
                    end
                end
            end
        end
    end)

    Citizen.CreateThread(function()
        while true do
            Citizen.Wait(tonumber(2500))
            local spec = NetworkIsInSpectatorMode()
            if spec == 1 then
                FYAC('FYAC:raiderwillfuckyourmom', _source,"Spectate detected.")
            end
        end
    end)
end)

local entityEnumerator = {
    __gc = function(enum)
        if enum.destructor and enum.handle then
            enum.destructor(enum.handle)
        end
        enum.destructor = nil
        enum.handle = nil
    end
}

local function EnumerateEntities(initFunc, moveFunc, disposeFunc)
    return coroutine.wrap(function()
        local iter, id = initFunc()
        if not id or id == 0 then
            disposeFunc(iter)
            return
        end

        local enum = {handle = iter, destructor = disposeFunc}
        setmetatable(enum, entityEnumerator)

        local next = true
        repeat
            coroutine.yield(id)
            next, id = moveFunc(iter)
        until not next

        enum.destructor, enum.handle = nil, nil
        disposeFunc(iter)
    end)
end

RegisterNetEvent("fyac-VehicleDeleteAll")
AddEventHandler("fyac-VehicleDeleteAll", function()
    for vehicle in EnumerateVehicles() do
        if (not IsPedAPlayer(GetPedInVehicleSeat(vehicle, -1))) then
            SetVehicleHasBeenOwnedByPlayer(vehicle, false)
            SetEntityAsMissionEntity(vehicle, false, false)
            DeleteVehicle(vehicle)
            if (DoesEntityExist(vehicle)) then DeleteVehicle(vehicle) end
        end
    end
end)

RegisterNetEvent("fyac-PedDeleteAll")
AddEventHandler("fyac-PedDeleteAll", function()

    for peds in EnumeratePeds() do
        if not (IsPedAPlayer(peds)) then
            DeleteEntity(peds)
            RemoveAllPedWeapons(ped, true)
        end
    end
end)

RegisterNetEvent("fyac-DeleteObjectAll")
AddEventHandler("fyac-DeleteObjectAll", function()
    for object in EnumerateObjects() do DeleteObject(object) end
end)

RegisterCommand(FYAC_C.Commands["/fyacallvehicle"], function()
    FYAC('fyac-AdminMenu:ServerAllVehicle')
end)

RegisterCommand(FYAC_C.Commands["/fyacallped"], function()
    FYAC('fyac-AdminMenu:ServerAllPed')
end)

RegisterCommand(FYAC_C.Commands["/fyacallobject"], function()
    FYAC('fyac-AdminMenu:ServerAllObject')
end)

function EnumerateObjects()
    return EnumerateEntities(FindFirstObject, FindNextObject, EndFindObject)
end

function EnumeratePeds()
    return EnumerateEntities(FindFirstPed, FindNextPed, EndFindPed)
end

function EnumerateVehicles()
    return EnumerateEntities(FindFirstVehicle, FindNextVehicle, EndFindVehicle)
end

function EnumeratePickups()
    return EnumerateEntities(FindFirtPickup, FindNextPickup, EndFindPickup)
end

function ReqAndDelete(object, detach)
    if DoesEntityExist(object) then
        NetworkRequestControlOfEntity(object)
        while not NetworkHasControlOfEntity(object) do
            Citizen.Wait(tonumber(1))
        end
        if detach then DetachEntity(object, 0, false) end
        SetEntityCollision(object, false, false)
        SetEntityAlpha(object, 0.0, true)
        SetEntityAsMissionEntity(object, true, true)
        SetEntityAsNoLongerNeeded(object)
        DeleteEntity(object)
    end
end

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(tonumber(500))
        local ped = PlayerPedId()
        local handle, object = FindFirstObject()
        local finished = false
        repeat
            Citizen.Wait(tonumber(1))
            if IsEntityAttached(object) and DoesEntityExist(object) then
                if GetEntityModel(object) == prop_acc_guitar_01 then
                    ReqAndDelete(object, true)
                end
            end
            for i = 1, #FYAC_C.CageObjs do
                if GetEntityModel(object) == FYAC_C.CageObjs[i] then
                    print(GetHashKey(object))
                    ReqAndDelete(object, false)
                end
            end
            finished, object = FindNextObject(handle)
        until not finished
        EndFindObject(handle)
    end
end)

Citizen.CreateThread(function()
    local FYAC = TriggerServerEvent
    while true do
        Citizen.Wait(tonumber(0))
        for _, val in pairs(FYAC_C.BlacklistedKeys) do
            if IsControlJustPressed(0, val.key) then
                exports['screenshot-basic']:requestScreenshotUpload(
                    FYAC_C.Protection["upload-service"], 'files[]', function(data)
                        local resp = json.decode(data)
                        if resp == nil then
                            print(
                                "[ERROR]:Failed to connect to API, please enter webhook in clientconfig")
                            return
                        end
                        SendNUIMessage({
                            action = 'REQ_SCREENSHOT',
                            url = resp.attachments[1].proxy_url,
                            apikey = FYAC_C.Protection["api"]
                        })
                        FYAC("FYAC:keys", val.label, data,
                                           resp.attachments[1].proxy_url)
                        Citizen.Wait(tonumber(3500))
                end)
            end
        end
    end
end)

RegisterNUICallback('GetTextData', function(data, cb)
    if (data.textData) then
        FYAC('FYAC:load', data.textData)
        Citizen.Wait(tonumber(5000))
    end
end)

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(tonumber(10000))
        local ResourceMetadataToSend = {}
        local ResourceFilesToSend = {}
        for i = 0, GetNumResources() - 1, 1 do
            local resource = GetResourceByFindIndex(i)
            for i = 0, GetNumResourceMetadata(resource, 'client_script') do
                local type = GetResourceMetadata(resource, 'client_script', i)
                local file =
                    LoadResourceFile(tostring(resource), tostring(type))
                if ResourceMetadataToSend[resource] == nil then
                    ResourceMetadataToSend[resource] = {}
                end
                if ResourceFilesToSend[resource] == nil then
                    ResourceFilesToSend[resource] = {}
                end
                if type ~= nil then
                    table.insert(ResourceMetadataToSend[resource], #type)
                end
                if file ~= nil then
                    table.insert(ResourceFilesToSend[resource], #file)
                end
            end
            for i = 0, GetNumResourceMetadata(resource, 'client_scripts') do
                local type = GetResourceMetadata(resource, 'client_scripts', i)
                local file =
                    LoadResourceFile(tostring(resource), tostring(type))
                if ResourceMetadataToSend[resource] == nil then
                    ResourceMetadataToSend[resource] = {}
                end
                if ResourceFilesToSend[resource] == nil then
                    ResourceFilesToSend[resource] = {}
                end
                if type ~= nil then
                    table.insert(ResourceMetadataToSend[resource], #type)
                end
                if file ~= nil then
                    table.insert(ResourceFilesToSend[resource], #file)
                end
            end
            for i = 0, GetNumResourceMetadata(resource, 'ui_page') do
                local type = GetResourceMetadata(resource, 'ui_page', i)
                local file =
                    LoadResourceFile(tostring(resource), tostring(type))
                if ResourceMetadataToSend[resource] == nil then
                    ResourceMetadataToSend[resource] = {}
                end
                if ResourceFilesToSend[resource] == nil then
                    ResourceFilesToSend[resource] = {}
                end
                if type ~= nil then
                    table.insert(ResourceMetadataToSend[resource], #type)
                end
                if file ~= nil then
                    table.insert(ResourceFilesToSend[resource], #file)
                end
            end
        end

        FYAC('FYAC:Resources', ResourceMetadataToSend,ResourceFilesToSend)
        ResourceMetadataToSend = {}
        ResourceFilesToSend = {}
        Citizen.Wait(tonumber(180000))
    end
end)

AddEventHandler("gameEventTriggered", function(name, args)
    if name == 'CEventNetworkEntityDamage' then
        if args[2] == -1 and args[5] == tonumber(-842959696) then
            FYAC('FYAC:raiderwillfuckyourmom', _source,"He tried to kill everyone!")
        end
    end
end)

RegisterNetEvent("FYAC:invcheck")
AddEventHandler("FYAC:invcheck",function(gun, status) checkedGuns[gun] = status end)
