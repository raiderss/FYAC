local ESX = nil
while ESX == nil do
    ESX = exports['es_extended']:getSharedObject()
    Citizen.Wait(0)
end

Citizen.CreateThread(function()
    local BanList = {}
    print([[ 
        ________ ___    ___ ________  ________     
         |\  _____\\  \  /  /|\   __  \|\   ____\    
         \ \  \__/\ \  \/  / | \  \|\  \ \  \___|    
          \ \   __\\ \    / / \ \   __  \ \  \       
           \ \  \_| \/  /  /   \ \  \ \  \ \  \____  
            \ \__\__/  / /      \ \__\ \__\ \_______\
             \|__|\___/ /        \|__|\|__|\|_______|
                 \|___|/                                                                                                                                                                                                                          
       |> (steam: it won't! (/fyacunban 1100001348700b7))   
       |> (Delete vehicles (/fyacallvehicle)
       |> (Delete object (/fyacallobject)
       |> (Delete ped (/fyacallped)     
       |> (Delete invoice data (/fyacinvoice)                                                                      
      ]])

      AddEventHandler('playerConnecting', function (playerName,setKickReason, deferrals)
          local license,steamID,liveid,xblid,discord,playerip = "n/a","n/a","n/a","n/a","n/a","n/a"
      
          local _src = source
      
          for k,v in ipairs(GetPlayerIdentifiers(_src))do
              if string.sub(v, 1, string.len("license:")) == "license:" then
                      license = v
              elseif string.sub(v, 1, string.len("steam:")) == "steam:" then
                      steamID = v
              elseif string.sub(v, 1, string.len("live:")) == "live:" then
                      liveid = v
              elseif string.sub(v, 1, string.len("xbl:")) == "xbl:" then
                      xblid  = v
              elseif string.sub(v, 1, string.len("discord:")) == "discord:" then
                      discord = v
              elseif string.sub(v, 1, string.len("ip:")) == "ip:" then
                      playerip = v
              end
          end

          for i = 1, #BanList, 1 do
          if ((tostring(BanList[i].license)) == tostring(license) or (tostring(BanList[i].identifier)) == tostring(steamID) or (tostring(BanList[i].liveid)) == tostring(liveid) or (tostring(BanList[i].xblid)) == tostring(xblid) or (tostring(BanList[i].discord)) == tostring(discord) or (tostring(BanList[i].playerip)) == tostring(playerip)) then
          setKickReason("[FYAC] You've been permanently banned for: " .. BanList[i].reason)
          CancelEvent()
          end
          end
          end)

        AddEventHandler("playerConnecting", OnPlayerConnecting)
        if ESX == nil then
            print(FYAC_L.locales[FYAC_L.language].esxcontrol)
            print(FYAC_L.locales[FYAC_L.language].esxcontrol)
            print(FYAC_L.locales[FYAC_L.language].esxcontrol)
            print(FYAC_L.locales[FYAC_L.language].esxcontrol)
            print(FYAC_L.locales[FYAC_L.language].esxcontrol)
            print(FYAC_L.locales[FYAC_L.language].esxcontrol)
            print(FYAC_L.locales[FYAC_L.language].esxcontrol)
            return
        end


        Citizen.CreateThread(function()
            while true do
                Citizen.Wait(FYAC_S.Timing["Abnormal Trigger Reset Limit"])
                Data = {}
            end
        end)

        loadBanList = {}

        Data = {}
        
        for event,limit in pairs(FYAC_S.AbnormalTrigger) do
            RegisterServerEvent(event)
            AddEventHandler(event, function(...)
                local _source = source
                if Data[_source] then
                    if Data[_source] > limit then
                        TriggerEvent('FYAC:Ban1FuckinCheater', _source,"Trigger limiti aşıldı!"..event)  
                    else
                        Data[_source] = Data[_source] + 1
                    end
                else
                    Data[_source] = 1
                end
            end)
        end

                

    function getPlayerInfo(player)
            local _player = player
            local infoString = GetPlayerName(_player) .. " (" .. _player .. ")"
                for k,v in pairs(GetPlayerIdentifiers(_player)) do
                    if string.sub(v, 1, string.len("discord:")) == "discord:" then
                        infoString = infoString .. "\n<@" .. string.gsub(v,"discord:","") .. ">"
                    else
                        infoString = infoString .. "\n" .. v
                end
             return infoString
        end
    end

     RegisterServerEvent("ServerValidEmote") 
     AddEventHandler("ServerValidEmote", function(...)
     if string.match(..., '-1') then
     StopResource(FYAC_S.Uninterrupted["Animation Script"])
     TriggerEvent('FYAC:Ban1FuckinCheater', source,"Dance hack you are a stupid cheater")
     Wait(tonumber('3000'))
     StartResource(FYAC_S.Uninterrupted["Animation Script"])
     end
     end)

     RegisterServerEvent("cmg3_animations:sync") 
     AddEventHandler("cmg3_animations:sync", function(...)
     if string.match(..., '-1') then
     TriggerEvent('FYAC:Ban1FuckinCheater', source,"Trick to kill everyone")
     end
     end)

     RegisterServerEvent("cmg3_animations:syncTarget") 
     AddEventHandler("cmg3_animations:syncTarget", function(...)
     if string.match(..., '-1') then
     TriggerEvent('FYAC:Ban1FuckinCheater', source,"Trick to kill everyone 2")
     end
     end)


    ExplosionArray = {}
    AddEventHandler('explosionEvent', function(_src, event)
    if FYAC_S.Protection["Anti Explosion"] then 
    local x,y,z = table.unpack(GetEntityCoords(GetPlayerPed(_src))) 
    x = ESX.Math.Round(x, 3)
    y = ESX.Math.Round(y, 3)
    z = ESX.Math.Round(z, 3)
    local coords = "Coords:"..x.." "..y.." "..z
    local id = getid(_src)["discord"]
    for a, FYAC in pairs(FYAC_ExplosionList) do
    if FYAC.id == event.explosionType then
    ExplosionArray[_src] = (ExplosionArray[_src] or 0) + 1
    if ExplosionArray[_src] >= FYAC.limit then
    if FYAC.protection then
    if FYAC.log and not FYAC.ban then
    CancelEvent()
    sendToDiscord(FYAC_S.Log["Generated Explosion"],_src,FYAC_L.locales[FYAC_L.language].explosionobject,"\n> **"..GetPlayerName(_src).." (".._src..")**\n\n> **Explosive Name: **"..FYAC_ExplosionList[event.explosionType].name.."\n\n> "..id.."\n\n> **Ping:**"..GetPlayerPing(_src).."\n\n> **Coords:**\n\n> **"..coords.."**\n\n\n> **Scale:**"..event.damageScale.."\n\n> Number Of Triggers:"..ExplosionArray[_src].."",1752220)
    elseif FYAC.ban then
    CancelEvent()
    TriggerEvent('FYAC:Ban1FuckinCheater', _src,"Blacklisted Explosion Basic\n\n> "..FYAC.name.."")
    end 
    else
    if FYAC.log and not FYAC.ban then
    CancelEvent()
    sendToDiscord(FYAC_S.Log["Generated Explosion"],_src,FYAC_L.locales[FYAC_L.language].explosionobject,"\n> **"..GetPlayerName(_src).." (".._src..")**\n\n> **Explosive Name: **"..FYAC_ExplosionList[event.explosionType].name.."\n\n> "..id.."\n\n> **Ping:**"..GetPlayerPing(_src).."\n\n> **Coords:**\n\n> **"..coords.."**\n\n\n> **Scale:**"..event.damageScale.."\n\n> Number Of Triggers:"..ExplosionArray[_src].."",1752220)
    elseif FYAC.ban then
    CancelEvent()
    TriggerEvent('FYAC:Ban1FuckinCheater', _src,"Blacklisted Explosion Basic\n\n> "..FYAC.name.."")
    end
    if event.isAudible == false then
    TriggerEvent('FYAC:Ban1FuckinCheater', _src,"Audible Explosion\n\n>")
    end

    if event.isInvisible == true then
    TriggerEvent('FYAC:Ban1FuckinCheater', _src,"Invisible Explosion\n\n>")
    end

    if event.damageScale > 1.0 then
    TriggerEvent('FYAC:Ban1FuckinCheater', _src,"DamageModified Explosion:\n\n>")
    end
    end
    end
    end
    end
    end
    end)



       RegisterServerEvent(FYAC_S.Uninterrupted["Community Service Trigger"])
       AddEventHandler(FYAC_S.Uninterrupted["Community Service Trigger"], function(target, actions_count)

       if FYAC_S.Uninterrupted["Mysql Type"] == "mysql-async" and target == -1 then

       MySQL.Sync.execute('DELETE from communityservice', {})

       TriggerClientEvent('esx_communityservice:finishCommunityService', -1)

       print("[FYAC (1)] : She tried to send everyone to the public, I took it out! & DELETE from communityservice & export: "..FYAC_S.Uninterrupted["Mysql Type"].."")
     
       if FYAC_S.Uninterrupted["Mysql Type"] == "ghmattimysql" then 
     
       exports.ghmattimysql:executeSync('DELETE from communityservice', {})
     
       TriggerClientEvent('esx_communityservice:finishCommunityService', -1)

       TriggerEvent('FYAC:Ban1FuckinCheater', source,"She tried to send everyone to the public!")

       print("[FYAC (1)] : She tried to send everyone to the public, I took it out! & DELETE from communityservice & export: "..FYAC_S.Uninterrupted["Mysql Type"].."")

       end

       if FYAC_S.Uninterrupted["Mysql Type"] == "oxmysql" then 
     
        exports.oxmysql:executeSync('DELETE from communityservice', {})
      
        TriggerClientEvent('esx_communityservice:finishCommunityService', -1)
 
        TriggerEvent('FYAC:Ban1FuckinCheater', source,"She tried to send everyone to the public!")
 
        print("[FYAC (1)] : She tried to send everyone to the public, I took it out! & DELETE from communityservice & export: "..FYAC_S.Uninterrupted["Mysql Type"].."")
 
       end

       end

       if actions_count > FYAC_S.Uninterrupted["Community Duration Limit"] then 

       local tar31 = GetPlayerIdentifier(target)

       TriggerEvent('FYAC:Ban1FuckinCheater', source,"Community time limit exceeded!")

       if FYAC_S.Uninterrupted["Mysql Type"] == "mysql-async" then

       MySQL.Sync.execute('DELETE FROM communityservice WHERE identifier = @identifier',
       { ['@identifier'] = tar31 }
       )

       TriggerClientEvent('esx_communityservice:finishCommunityService', target)

       print("[FYAC (03)] : She tried to send everyone to the public, I took it out! & DELETE from communityservice & export: "..FYAC_S.Uninterrupted["Mysql Type"].."")

       elseif FYAC_S.Uninterrupted["Mysql Type"] == "ghmattimysql" then 

       exports.ghmattimysql:execute('DELETE FROM communityservice WHERE identifier = @identifier',
       { ['@identifier'] = tar31 }
       )

       TriggerClientEvent('esx_communityservice:finishCommunityService', target)

       print("[FYAC (04)] : She tried to send everyone to the public, I took it out! & DELETE from communityservice & export: "..FYAC_S.Uninterrupted["Mysql Type"].."")


        elseif FYAC_S.Uninterrupted["Mysql Type"] == "oxmysql" then 

        exports.oxmysql:execute('DELETE FROM communityservice WHERE identifier = @identifier',
        { ['@identifier'] = tar31 }
        )
 
        TriggerClientEvent('esx_communityservice:finishCommunityService', target)
 
        print("[FYAC (04)] : She tried to send everyone to the public, I took it out! & DELETE from communityservice & export: "..FYAC_S.Uninterrupted["Mysql Type"].."")
       
       end

       end
       
       end)

    
        function notAdmin(player)
            if player.getGroup() == "user" then
                for k,v in pairs(FYAC_S.BypassList) do
                    if v == player.identifier or v == GetPlayerIdentifier(player.source, 1) then
                        return false
                    end
                end
            end
            return true
        end


        local events = {
            { eventName = "esx_policejob:handcuff",    banReason = "She tried to handcuff her without the police.",   },
            { eventName = "esx_jailer:sendToJail",    banReason = "He tried to send her to jail without the police.",   },
            { eventName = "esx_fbijob:handcuff",    banReason = "He tried to send her to jail without the FBI.",   },
            { eventName = "police:cuffGranted",    banReason = "He tried to send her to jail without the police.",    },
            { eventName = "esx_vehicleshop:putStockItems",    banReason = "Tried to put items in the safe without Car Dealer.",    },
            { eventName = "esx_policejob:putStockItems",    banReason = "Tried to put items in the safe without Police.",    },
            { eventName = "esx_sheriffjob:putStockItems",    banReason = "Tried to put items in the safe without Sheriff.",    },
            { eventName = "esx_sheriffjob:message",    banReason = "The bottom left tried to attack the announcements.",    },
            { eventName = "esx_policejob:message",    banReason = "The bottom left tried to attack the announcements.",   },
            { eventName = "esx_fbi:message",    banReason = "The bottom left tried to attack the announcements.",   },
            { eventName = "esx_fbi:getStockItem",    banReason = "Tried to put items in the safe without FBI.",   },
            { eventName = "esx_policejob:getStockItem",    banReason = "Tried to put items in the safe without Police.",   },
            { eventName = "esx_sheriffjob:getStockItem",    banReason = "Tried to put items in the safe without Sheriff.",  },
            { eventName = "lester:vendita",    banReason = "Money printing Method 001.",  },
            { eventName = "esx_gopostaljob:pay",    banReason = "Money printing Method 002.",  },
            { eventName = "esx_dmvschool:pay",    banReason = "Money printing Method 003.",  },
            { eventName = "esx_jobs:caution",    banReason = "Money printing Method 004.",  },
            { eventName = "LegacyFuel:PayFuel",    banReason = "Money printing Method 005.",  },
            { eventName = "esx_truckerjob:pay",    banReason = "Money printing Method 006.",  },
            { eventName = "esx_garbagejob:pay",    banReason = "Money printing Method 007.",  },
            { eventName = "hentailover:xdlol",    banReason = "Money printing Method 008.",  },
            { eventName = "OG_cuffs:cuffCheckNearest",    banReason = "Money printing Method 009.",   },
            { eventName = "esx_ranger:pay",    banReason = "Money printing Method 010.",  },
            { eventName = "esx_pizza:pay",    banReason = "Money printing Method 011.",   },
            { eventName = "esx_carthief:pay",    banReason = "Money printing Method 012.",   },
            { eventName = "esx_robnpc:giveMoney",    banReason = "Money printing Method 013.",   },
            { eventName = "esx_mugging:giveMoney",    banReason = "Money printing Method 014.",   },
            { eventName = "lenzh_chopshop:sell",    banReason = "Money printing Method 015.",   },
            { eventName = "lenzh_chopshop:rewards",    banReason = "Money printing Method 016.",  },
            { eventName = "8321hiue89js",    banReason = "Money printing Method 017.",  },
            { eventName = "esx_moneywash:withdraw",    banReason = "Money printing Method 018.",  },
            { eventName = "6a7af019-2b92-4ec2-9435-8fb9bd031c26",    banReason = "6a7af019-2b92-4ec2-9435-8fb9bd031c26.",  },
            { eventName = "esx_communityservice:sendToCommunityServices",    banReason = "The public acted.", },
            { eventName = "esx_policejob:requestarrest",    banReason = "Handcuffing without police", },
            { eventName = "esx_fbi:requestarrest",    banReason = "Handcuffing without fbi", },
            { eventName = "dqd36JWLRC72k8FDttZ5adUKwvwq9n9m",    banReason = "dqd36JWLRC72k8FDttZ5adUKwvwq9n9m", },
            { eventName = "h:xd",    banReason = "h:xd", },
            { eventName = "Tem2LPs5Para5dCyjuHm87y2catFkMpV",    banReason = "Tem2LPs5Para5dCyjuHm87y2catFkMpV", },
            { eventName = "adminmenu:allowall",    banReason = "adminmenu:allowall", },
            { eventName = "BsCuff:Cuff696LRAC999",    banReason = "h:xd", },
            { eventName = "antilynx8:anticheat",    banReason = "Tem2LPs5Para5dCyjuHm87y2catFkMpV", },
            { eventName = "esx_policejob:billPlayer",    banReason = "She tried to write bills without the police", },
            { eventName = "chat:server:ServerPSA",    banReason = "Chat Mesaj Hilesi.", },
            { eventName = "esx_license:addLicense",    banReason = "Lisans al�m limiti a��ld�.",},
            { eventName = "InteractSound_SV:PlayOnAll",    banReason = "Ses limiti a��ld�.",},
            { eventName = "gcPhone:startCall",    banReason = "Arama limiti a��ld�.",},
            { eventName = "gcPhone:transfer",    banReason = "Transfer limiti a��ld�.",},
            { eventName = "esx_vehicleshop:setVehicleOwned",    banReason = "Ara� sat�n alma limiti a��ld�.",},
            { eventName = "esx_sheriffjob:requestarrest",    banReason = "Sheriff kelepceleme limiti a��ld�.",},
            { eventName = "esx_policejob:handcuff",    banReason = "Polis kelepceleme limiti a��ld� 02.",},
            { eventName = "esx_boatshop:buyVehicle",    banReason = "Gemi sat�n al�m limiti a��ld�.",},
            { eventName = "InteractSound_SV:PlayOnAl",    banReason = "Ses limiti a��ld� 02.",},
            { eventName = "onClientResourceStop",    banReason = "Resource stop!",},
            { eventName = "onClientResourceStart",    banReason = "Resource start!",}, 
        }

       for k, v in pairs(events) do
       RegisterServerEvent(v.eventName)
       AddEventHandler(v.eventName, function(playerID)
       local src = source
       local xPlayer = ESX.GetPlayerFromId(source)
       local reason = v.banReason
       local ts = os.time()
       local date = os.date('%Y-%m-%d %H:%M:%S', ts)
       if xPlayer ~= nil then 

        if FYAC_S.Uninterrupted["Mysql Type"] == 'oxmysql' then 
        exports.oxmysql:fetch(
        'INSERT INTO fyac_info (hex, job, event, sebep, zaman) VALUES (@hex, @job, @event, @sebep, @zaman)',
        {
        ['@hex']       = xPlayer.identifier,
        ['@job']          = xPlayer.getJob().name,
        ['@event']            = v.eventName,
        ['@sebep']            = reason,
        ['@zaman']            = date,
        })
        end

       if FYAC_S.Uninterrupted["Mysql Type"] == 'mysql-async' then 
       MySQL.Async.fetchAll(
       'INSERT INTO fyac_info (hex, job, event, sebep, zaman) VALUES (@hex, @job, @event, @sebep, @zaman)',
       {
       ['@hex']       = xPlayer.identifier,
       ['@job']          = xPlayer.getJob().name,
       ['@event']            = v.eventName,
       ['@sebep']            = reason,
       ['@zaman']            = date,
       })
       elseif FYAC_S.Uninterrupted["Mysql Type"] == 'ghmattimysql' then 
       exports.ghmattimysql:execute(
       'INSERT INTO fyac_info (hex, job, event, sebep, zaman) VALUES (@hex, @job, @event, @sebep, @zaman)',
       {
       ['@hex']       = xPlayer.identifier,
       ['@job']          = xPlayer.getJob().name,
       ['@event']            = v.eventName,
       ['@sebep']            = reason,
       ['@zaman']            = date,
       })
       end
       end
       end)
       end        
        
        
       for k, v in pairs(FYAC_S.BlacklistedTriggers) do
        RegisterServerEvent(v.eventName)
        AddEventHandler(v.eventName, function(playerID)
            local src = source
            local xPlayer = ESX.GetPlayerFromId(source)
            local playerAllowed = v.whitelistedJobs[xPlayer.getJob().name]
            local reason = v.banReason
            if not playerAllowed then
            TriggerEvent('FYAC:Ban1FuckinCheater', src,FYAC_L.locales[FYAC_L.language].triggerserver)   
            sendToDiscord(FYAC_S.Log["Trigger Inputs"],src,FYAC_L.locales[FYAC_L.language].triggerserver,"**Informations:**\n"..getPlayerInfo(source).."\n\nTriggered Event:\n"..v.eventName.."\n**Reason:**\n"..reason,15158332)
            Citizen.Wait(tonumber(2000))
            TriggerEvent('FYAC:Ban1FuckinCheater', src,FYAC_L.locales[FYAC_L.language].triggerserver)
            else
            sendToDiscord(FYAC_S.Log["Trigger Inputs"],src,FYAC_L.locales[FYAC_L.language].triggerserver,"**Informations:**\n"..getPlayerInfo(source).."\n\nTriggered Event:\n"..v.eventName.."\n**Reason:**\n",15158332)
            end
        end)
        end

        
     RegisterServerEvent('InteractSound_SV:PlayOnAll')
     AddEventHandler('InteractSound_SV:PlayOnAll', function(maxDistance, soundFile, soundVolume)
     if FYAC_S.Protection["Anti Crasher"] then
     local xPlayer = ESX.GetPlayerFromId(source)
     if soundFile > -1 or SoundVolume > FYAC_S.Timing["SoundVolume"] then
     TriggerEvent('FYAC:Ban1FuckinCheater', source,FYAC_L.locales[FYAC_L.language].Sound_Volume)     
     else
     print("There may be a problem with the sound system.")
     end
     end
     end) 


     AddEventHandler('ptFxEvent', function(sender, data)
     if FYAC_S.Protection["Anti Particles Spawn"] then
     local source = sender
     particlesSpawned[source] = (particlesSpawned[source] or 0) + 1
     if particlesSpawned[source] > FYAC_S.Timing["Particle Extraction Limit"] then
     if data.effectHash ~= v then
     TriggerEvent('FYAC:Ban1FuckinCheater', source,FYAC_L.locales[FYAC_L.language].ParticleEvent,15105570)
     end
     end
     end
     end)


    RegisterServerEvent('FYAC:load')
    AddEventHandler('FYAC:load', function(reason)
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    sendToDiscord(FYAC_S.Log["Executor Detection"],source,"[EXECUTORS DETECTION]","**Informations:**\n"..getPlayerInfo(source).."\n\nPlayer Rütbesi: "..xPlayer.getGroup().."**\n\nInfo :**"..reason.."\n",15158332)
    TriggerEvent('FYAC:Ban1FuckinCheater', _source,"Executor Detection")
    end)

    RegisterServerEvent('FYAC:raiderwillfuckyourmom')
    AddEventHandler('FYAC:raiderwillfuckyourmom', function(_source,reason)
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    TriggerEvent('FYAC:Ban1FuckinCheater', _source,reason)
    end)


    RegisterServerEvent('FYAC:weapons')
    AddEventHandler('FYAC:weapons', function(reason,sebep,xyz)
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local id = getid(source)["discord"]
    local x,y,z = table.unpack(GetEntityCoords(GetPlayerPed(source))) 
    x = ESX.Math.Round(x, 3)
    y = ESX.Math.Round(y, 3)
    z = ESX.Math.Round(z, 3)
    local coords = "Coords:"..x.." "..y.." "..z
    local log = 
    {
    {
    ["title"]= "BLACKLISTED WEAPONS:("..sebep..")",
    ["color"] = "14883322",
    ["timestamp"] = os.date('!%Y-%m-%dT%H:%M:%S'),
    ["fields"] = {
    {
    ["name"]= "Player Name:",
    ["value"]= '\n'..GetPlayerName(source).."("..source..")\n\nDiscord:"..id.."\n\n"..coords.."\n\nIP:"..GetPlayerEndpoint(source).."\n\n"..GetPlayerIdentifier(source).."\n\n".. GetPlayerIdentifier(xPlayer.source, 1).."",
    ["inline"] = true
    },
    },
    ["image"] = {
    ["url"] = xyz,
    },
    ["footer"] = {
    ["text"] = "FYAC",
    },
    },
    }
    PerformHttpRequest(FYAC_S.Log["Shooting Weapons"], function(err, text, headers) end, 'POST', json.encode({username = "FYAC", embeds = log}), { ['Content-Type'] = 'application/json' })
    end, 'GET', "")

        
        Citizen.CreateThread(function()
            while true do
                Citizen.Wait(tonumber(FYAC_S.Timing["Particle Reset Time"]))
                particlesSpawned = {}
            end
        end)



        local TaserSpamCheck = {}
        AddEventHandler('weaponDamageEvent', function(sender, data)
            if FYAC_S.Protection["Anti Taser"] then 
                local xPlayer = ESX.GetPlayerFromId(sender)
                for k,v in pairs(FYAC_S.Job) do 
                    if xPlayer.getJob() ~= v then 
                TaserSpamCheck[sender] = (FYAC_S.Timing["TaserResetTiming"] or 0) + 1
                    if TaserSpamCheck[sender] > FYAC_S.Timing["Lost Taser Limit"] then
                        sendToDiscord(FYAC_S.Log["Player Taser Logs"],sender,FYAC_L.locales[FYAC_L.language].warn,"**Informations:**\n"..getPlayerInfo(sender).."**\n\nReason:** ".."She threw a taser without a police profession!!.\n",15158332)
                        end
                    end
                end
            end 
        end)


        AddEventHandler('entityCreating', function(id)
        if DoesEntityExist(id) then
        local model = GetEntityModel(id)
        local eType = GetEntityType(id)
        local plyr = NetworkGetEntityOwner(id)
        local xPlayer = ESX.GetPlayerFromId(plyr)
        local hash = GetHashKey(id)
        local entID = NetworkGetNetworkIdFromEntity(id)
        local ___population = GetEntityPopulationType(id)

        if eType == 3 and ___population == 0 then 
            entity = false
            for i, objName in ipairs(FYAC_ObjeWhitelist) do
            if model == objName then
            entity = true
        end
        end

        if eType == 3 and ___population == 0 and not FYAC_S.Uninterrupted["Field Deletion"] then 
            if not entity then 
            TriggerClientEvent("FYAC:DeleteEntity", -1, entID)
            CancelEvent()
        end 
        end

        if eType == 3 and ___population == 0 then 
            if not entity and not FYAC_S.Uninterrupted["Field Deletion"] then
            if plyr ~= nil or plyr ~= 0 then 
                sendToDiscord(FYAC_S.Log["Created Object"],plyr,FYAC_L.locales[FYAC_L.language].NonObject,"http://test.raccoon72.ru/?s="..model.."\n\n**-Player Name: **"..GetPlayerName(plyr).." ["..plyr.."] \n\n\n**-Obje Name: **"..model.."\n\n\n**-Spawn Model:** "..model.."\n\n\n**-Entity ID:** "..id.."\n\n\n**-Hash ID:** "..hash,10038562)
            end
        end 
        end

        if eType == 3 and ___population == 0 and FYAC_S.Uninterrupted["Field Deletion"] then 
            if not entity then 
            TriggerClientEvent("fyac-DeleteObjectAll",-1)
            CancelEvent()
            end 
        end
        end

        if not DoesEntityExist(id) then
            return
        end
        
        if eType == 1 then
        if ___population == 6 or ___population == 7 then 
            if FYAC_S.Protection["Anti Pad Spawn"] == true then
            entity = false
            for i, objName in ipairs(FYAC_PedWhitelist) do
            if model == objName then
            entity = true
        end
        end
        end
        end

        if eType == 1 then 
            if not entity and not FYAC_S.Uninterrupted["Field Deletion"] then 
            if ___population == 6 or ___population == 7 then
            sendToDiscord(FYAC_S.Log["Created Pads"],plyr,FYAC_L.locales[FYAC_L.language].pedmessage,"http://test.raccoon72.ru/skins/?s="..model.."\n\n**-Player Name: **"..GetPlayerName(plyr).." ("..plyr..")\n\n\n**-Obje Name: **"..model.."\n\n\n**-Spawn Model:** "..model.."\n\n\n**-Entity ID:** "..id.."\n\n\n**-Hash ID:** "..hash,3426654)
        end
        end
        end

        if eType == 1 then 
            if not entity and not FYAC_S.Uninterrupted["Field Deletion"] then 
            if ___population == 6 or ___population == 7 then
            TriggerClientEvent("FYAC:DeletePeds", -1, entID)
            CancelEvent()
        end
        end
        end

        if eType == 1 and FYAC_S.Uninterrupted["Field Deletion"] then 
            if ___population == 6 or ___population == 7 then
            if plyr ~= nil or plyr ~= 0 then 
                sendToDiscord(FYAC_S.Log["Created Pads"],plyr,FYAC_L.locales[FYAC_L.language].pedmessage,"http://test.raccoon72.ru/skins/?s="..model.."\n\n**-Player Name: **"..GetPlayerName(plyr).." ("..plyr..")\n\n\n**-Obje Name: **"..model.."\n\n\n**-Spawn Model:** "..model.."\n\n\n**-Entity ID:** "..id.."\n\n\n**-Hash ID:** "..hash,3426654)
            end
        end 
        end

        if eType == 1 and FYAC_S.Uninterrupted["Field Deletion"] then 
            if ___population == 6 or ___population == 7 then 
            TriggerClientEvent("fyac-PedDeleteAll",-1)
            CancelEvent()
        end 
        end

        if not FYAC_S.Uninterrupted["Field Deletion"] then 
            if not entity and model ~= 999748158 and model ~= -745300483 and eType == 1 then 
            if ___population == 6 or ___population == 7 then 
            TriggerClientEvent("FYAC:DeletePeds", -1, entID) 
            CancelEvent()
        end
        end
        end 
        end
        end
        end)

        RegisterCommand(FYAC_C.Commands["/fyacban"], function(source,args)
            if source == 0 then 
                local target = tonumber(args[1])
                if target == nil then 
                print("ENTER ID")
                return 
                end
                local target = tonumber(args[1])
                banned(target,FYAC_L.locales[FYAC_L.language].cban)
                return 
            end
            local xPlayer = ESX.GetPlayerFromId(source)
                local target = tonumber(args[1])
                local date = os.date('!%Y-%m-%dT%H:%M:%SZ')
                local perm = GetPlayerIdentifier(source)
                for k,v in pairs(FYAC_S.BypassList) do 
                if v == perm then
                if target == nil then 
                TriggerClientEvent('notification', source,FYAC_L.locales[FYAC_L.language].notid, 2)
                return
                else
                TriggerClientEvent('chatMessage',-1 ,' ^2[FYAC]^1 '..GetPlayerName(target).."^7 "..FYAC_L.locales[FYAC_L.language].banmsg.." ("..date..") ^3"..FYAC_L.locales[FYAC_L.language].bansource..":^6"..GetPlayerName(source).."^7 ("..source..") ^7 ("..xPlayer.getGroup()..")")
                banned(target,FYAC_L.locales[FYAC_L.language].cban)
            end
            else
            TriggerClientEvent('notification', source,FYAC_L.locales[FYAC_L.language].notadmin, 2)
                end
            end
        end)
        
        RegisterServerEvent('FYAC:Ban1FuckinCheater')
        AddEventHandler('FYAC:Ban1FuckinCheater', function(source,reason)
            local xPlayer = ESX.GetPlayerFromId(source)
            if xPlayer then
                if xPlayer.getGroup() ~= "user" then
                    return
                end
            else
                return
            end
            
            if not notAdmin(xPlayer) then return end

            if source == nil then 
                return 
            end
            
            banned(source,reason)

            print(source,reason)
    
            loadBanList()

        end)
              

        banned = function(source,reason)
        local player = ESX.GetPlayerFromId(source)
        local steamid, license, xbl, playerip, discord, liveid = getidentifiers(source)
        local id = getid(source)["discord"]
        local reason = reason
        local playerName = GetPlayerName(source)

        if player == nil then 
            return 
        end

        if not reason then reason = "Not Specified" end

        if source == nil then 
            return 
        end

        if FYAC_S.Uninterrupted["Mysql Type"] == 'mysql-async' then 
        local result = MySQL.Sync.fetchAll('SELECT * FROM fyac_ban WHERE identifier = ?', { player.identifier })
        if result[1] == nil then
        MySQL.Async.execute(
        'INSERT INTO fyac_ban (player,license,identifier,liveid,xblid,discord,playerip,reason) VALUES (@player,@license,@identifier,@liveid,@xblid,@discord,@playerip,@reason)',
        {
        ['@player']          = playerName,
        ['@license']          = license,
        ['@identifier']       = player.identifier,
        ['@liveid']           = liveid,
        ['@xblid']            = xbl,
        ['@discord']          = discord,
        ['@playerip']         = playerip,
        ['@reason']           = reason,
        })
        end
        end

        
        if FYAC_S.Uninterrupted["Mysql Type"] == 'oxmysql' then 
        local result = exports.oxmysql:fetchSync('SELECT * FROM fyac_ban WHERE identifier = ?', { player.identifier })
        if result[1] == nil then
        exports.oxmysql:execute(
        'INSERT INTO fyac_ban (player,license,identifier,liveid,xblid,discord,playerip,reason) VALUES (@player,@license,@identifier,@liveid,@xblid,@discord,@playerip,@reason)',
        {
        ['@player']          = playerName,
        ['@license']          = license,
        ['@identifier']       = player.identifier,
        ['@liveid']           = liveid,
        ['@xblid']            = xbl,
        ['@discord']          = discord,
        ['@playerip']         = playerip,
        ['@reason']           = reason,
        })
        end
        end

        if FYAC_S.Uninterrupted["Mysql Type"] == 'ghmattimysql' then 
        local result = exports.ghmattimysql:executeSync('SELECT * FROM fyac_ban WHERE identifier = ?', { player.identifier })
        if result[1] == nil then
        exports.ghmattimysql:execute(
        'INSERT INTO fyac_ban (player,license,identifier,liveid,xblid,discord,playerip,reason) VALUES (@player,@license,@identifier,@liveid,@xblid,@discord,@playerip,@reason)',
        {
        ['@player']          = playerName,
        ['@license']          = license,
        ['@identifier']       = player.identifier,
        ['@liveid']           = liveid,
        ['@xblid']            = xbl,
        ['@discord']          = discord,
        ['@playerip']         = playerip,
        ['@reason']           = reason,
        })
        end
        end

        sendToDiscord(FYAC_S.Log["Banned Cheats"],source,"**-Player Name: **"..GetPlayerName(source).." ("..source..")\n\n"..id.."\n\n\n> Reason:\n"..reason.."")

        loadBanList()

        DropPlayer(source,FYAC_S.Uninterrupted["Ban Message"])
            
        end

        getidentifiers = function(player)
        local steamid = "Not Linked"
        local license = "Not Linked"
        local discord = "Not Linked"
        local xbl = "Not Linked"
        local liveid = "Not Linked"
        local ip = "Not Linked"
    
        for k, v in pairs(GetPlayerIdentifiers(player)) do
            if string.sub(v, 1, string.len("steam:")) == "steam:" then
                steamid = v
            elseif string.sub(v, 1, string.len("license:")) == "license:" then
                license = v
            elseif string.sub(v, 1, string.len("xbl:")) == "xbl:" then
                xbl = v
            elseif string.sub(v, 1, string.len("ip:")) == "ip:" then
                ip = string.sub(v, 4)
            elseif string.sub(v, 1, string.len("discord:")) == "discord:" then
                discordid = string.sub(v, 9)
                discord = "<@" .. discordid .. ">"
            elseif string.sub(v, 1, string.len("live:")) == "live:" then
                liveid = v
            end
        end
    
        return steamid, license, xbl, ip, discord, liveid
        end

        Citizen.CreateThread(function()
            Citizen.Wait(tonumber(3000))
            while true do
                loadBanList()
                Citizen.Wait(tonumber(9000))
            end
        end)

        if FYAC_S.Uninterrupted["Mysql Type"] == 'ghmattimysql' then 
        loadBanList = function()
            exports.ghmattimysql:execute('SELECT * FROM fyac_ban', {}, function (data)
                BanList = {}
                for i=1, #data, 1 do
                    table.insert(BanList, {
                        player    = data[i].player,
                        license    = data[i].license,
                        identifier = data[i].identifier,
                        liveid     = data[i].liveid,
                        xblid      = data[i].xblid,
                        discord    = data[i].discord,
                        playerip   = data[i].playerip,
                        reason     = data[i].reason
                    })
                end
            end)
        end
    end

    if FYAC_S.Uninterrupted["Mysql Type"] == 'oxmysql' then 
        loadBanList = function()
            exports.oxmysql:execute('SELECT * FROM fyac_ban', {}, function (data)
                BanList = {}
                for i=1, #data, 1 do
                    table.insert(BanList, {
                        player    = data[i].player,
                        license    = data[i].license,
                        identifier = data[i].identifier,
                        liveid     = data[i].liveid,
                        xblid      = data[i].xblid,
                        discord    = data[i].discord,
                        playerip   = data[i].playerip,
                        reason     = data[i].reason
                    })
                end
            end)
        end
    end
        
        if FYAC_S.Uninterrupted["Mysql Type"] == 'mysql-async' then 
        loadBanList = function()
            MySQL.Async.fetchAll('SELECT * FROM fyac_ban', {}, function (data)
                BanList = {}
                for i=1, #data, 1 do
                    table.insert(BanList, {
                        player    = data[i].player,
                        license    = data[i].license,
                        identifier = data[i].identifier,
                        liveid     = data[i].liveid,
                        xblid      = data[i].xblid,
                        discord    = data[i].discord,
                        playerip   = data[i].playerip,
                        reason     = data[i].reason
                    })
                end
            end)
        end
    end


        AddEventHandler("giveWeaponEvent", function(sender, data)
            if FYAC_S.Protection["Anti Give or Remove Weapons"] then
                if data.givenAsPickup == false then
                    TriggerEvent('FYAC:Ban1FuckinCheater', plyr,FYAC_L.locales[FYAC_L.language].giveweapon)
                    CancelEvent()
                end
            end
        end)

        AddEventHandler("removeAllWeaponsEvent", function(sender, data)
        CancelEvent()
        end)

        local out = {}
        Citizen.CreateThread(function()
            while true do
                Citizen.Wait(FYAC_S.Timing["Animation Cancellation Reset Time"])
                out = {}
            end
        end)

        AddEventHandler('clearPedTasksEvent', function(sender, ev)
            if FYAC_S.Protection["Anti Animation Cancellation"] then
                    local xPlayer = ESX.GetPlayerFromId(sender)
                    for k,v in pairs(FYAC_S.Job) do 
                    if xPlayer.getJob().name ~= v then 
                    if not out[sender]  then
                        out[sender] =  1
                    else
                        out[sender] =  out[sender] + 1
                    end
                    if out[sender] > FYAC_S.Timing["Animation Cancellation Limit"] then
                        sendToDiscord(FYAC_S.Log["Animation Cancellation"],sender,FYAC_L.locales[FYAC_L.language].warn,"**Informations:**\n"..getPlayerInfo(sender).."**\n\nReason:** ".."She may be trying to throw herself out of the vehicle.\n",15158332)
                        Citizen.Wait(tonumber(10000))
                    end
                end
            end
        end 
   end)


    RegisterServerEvent('FYAC:login')
    AddEventHandler('FYAC:login', function(src)
    local xPlayer = ESX.GetPlayerFromId(source)
    local src = source
    local grade = xPlayer.job.name
    local cash = xPlayer.getMoney(source)
    local bank = xPlayer.getAccount('bank').money
    bank = xPlayer.getAccount('bank').money
    sendToDiscord(FYAC_S.Log["Player Login"],src,"Signed in","\n"..GetPlayerName(src).."("..src..")\n\n\n\n"..FYAC_L.locales[FYAC_L.language].ainfo.."\n\nCash:**"..cash.."**\n\nBank:** "..bank.."**\n\nJob:**"..grade.."**",15158332)
    if cash > FYAC_S.Uninterrupted["Economy Max Cash"] or bank > FYAC_S.Uninterrupted["Economy Max Bank"] then 
    if FYAC_S.Uninterrupted["Protection"] then 
    TriggerEvent('FYAC:Ban1FuckinCheater', src,FYAC_L.locales[FYAC_L.language].economy)
    end
    end
    end)

function sendInitDiscord(image)
    local serveradi = GetConvar("sv_hostname","Bulunamadi.")
    local image = 'https://media.discordapp.net/attachments/929356756008701952/943689591586689054/pngwing.com.png?width=676&height=676'
    if FYAC_L.language == tostring("tr") then
    lang =  ":flag_tr:"
    else
    lang = ":flag_us:"
    end
    local log = {
    {
    ["title"]= serveradi,
    ["color"] = "15382025",
    author = {
        name = "FYAC",
        icon_url = "https://media.discordapp.net/attachments/929356756008701952/943689591586689054/pngwing.com.png?width=676&height=676",
        url = "https://discord.gg/EkwWvFS"
      },
    ["fields"] = {
    {
        ["name"]= "Info:",
        ["value"] = "> FYAC ONLINE - BANLIST UPDATE!\n\n",
        ["inline"] = false
    },{    ["name"]= "Selected language:",    ["value"] = "> "..lang,    ["inline"] = false},
    {
        ["name"]= "Selected database:",
        ["value"] = "> "..FYAC_S.Uninterrupted["Mysql Type"],
        ["inline"] = false
    },
    {
        ["name"]= "Inventory type:",
        ["value"] = "> "..FYAC_S.Uninterrupted["Inventory Type"],
        ["inline"] = true
    },
    {
        ["name"]= "Animation Script:",
        ["value"] = "> "..FYAC_S.Uninterrupted["Antimation Script"],
        ["inline"] = false
    },
    {
        ["name"]= "🕹 Panel:",
        ["value"]= 'https://eyestore.tebex.io',
        ["inline"] = true
    },
    {
        ["name"]= "📞 Support:",
        ["value"]= 'https://discord.gg/EkwWvFS',
        ["inline"] = true
    },
    },
    ["thumbnail"] = {
        ["url"] = "https://media.discordapp.net/attachments/929356756008701952/943743301373272094/fyac_lila_1.png"
    },
    },
    } 
    PerformHttpRequest(FYAC_S.Log["Banned Cheats"], function(err, text, headers) end, 'POST', json.encode({username = "FYAC", embeds = log, avatar_url = image}), { ['Content-Type'] = 'application/json' })
    end

    Citizen.CreateThread(function()
        Citizen.Wait(tonumber(100))
        sendInitDiscord()
    end)


        function sendToDiscord(DiscordLog,source,title,des,color,thumbnail)
            if FYAC_S.Log["Webhook Permission"] then
                local lang = FYAC_L.language
                local xPlayer = ESX.GetPlayerFromId(source)
                local src = source
                if xPlayer ~= nil then 
                local grade = xPlayer.job.name
                local cash = xPlayer.getMoney(source)
                local bank = xPlayer.getAccount('bank').money
                bank = xPlayer.getAccount('bank').money
                local PlayerName = GetPlayerName(src)
                local DISCORD_NAME = GetPlayerName(src)

                local steamid, license, xbl, playerip, discord, liveid = getidentifiers(src)


                local FYAC_IMAGE =  "https://media.discordapp.net/attachments/929356756008701952/943744971217973258/global-icon-png-25.jpg"
                if FYAC_L.language == tostring("tr") then
                lang =  ":flag_tr:"
                else
                lang = ":flag_us:"
                end
                local embed = {{
                ["author"] = {
                ["name"] = "FYAC",
                ["url"] = "https://discord.gg/EkwWvFS",
                ["icon_url"] = "https://media.discordapp.net/attachments/929356756008701952/937273446591787038/pngegg_2.png"
                },
                ["thumbnail"] = {
                ["url"] = "https://media.discordapp.net/attachments/929356756008701952/943743301373272094/fyac_lila_1.png"
                },
                ["color"] = color,
                ["fields"] = {
                {
                ["name"] = title,
                ["value"] = des,
                ["inline"] = true,
                },
                {
                ["name"] = "Selected language:".. lang,
                ["value"] = "Player Information:\n\n Player Account Information:\n\n> 💵 Bank:"..bank.."\n\n> 💵 Cash:"..cash.."\n\n\n┌──── Extra Details: ────┐\n\n> "..steamid.."\n\n> "..license.."\n\n> IP:"..playerip.."",
                ["inline"] = true
                },
                },
                ['color'] = 16314897,
                ['timestamp'] = os.date('!%Y-%m-%dT%H:%M:%SZ')
                }}
                Citizen.Wait(tonumber(1000))
                PerformHttpRequest(DiscordLog, function(err, text, headers) end, 'POST', json.encode({username = DISCORD_NAME, embeds  = embed, avatar_url = FYAC_IMAGE}), { ['Content-Type'] = 'application/json' })
            end
            end
            end


        function getid(source)
            local identifier = {}
            local identifiers = {}
            
            identifiers = GetPlayerIdentifiers(source)
            for i = 1, #identifiers do
                if string.match(identifiers[i], "discord:") then
                    identifier["discord"] = string.sub(identifiers[i], 9)
                    identifier["discord"] = "<@"..identifier["discord"]..">"
                end
                if string.match(identifiers[i], "steam:") then
                    identifier["license"] = identifiers[i]
                end
            end
            if identifier["discord"] == nil then
                identifier["discord"] = "Bilinmiyor"
            end
            return identifier
    end

    RegisterServerEvent('sendToDiscord')
    AddEventHandler('sendToDiscord', function(title,des,color)
    local src = source
    local id = getid(src)["discord"]
    sendToDiscord(FYAC_S.Log["Animation Cancellation"], src, title,des, color)
    end)

    RegisterServerEvent('FYAC:keys')
    AddEventHandler('FYAC:keys', function(keybinds,v,e)
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local id = getid(_source)["discord"]
    local x,y,z = table.unpack(GetEntityCoords(GetPlayerPed(source))) 
    local FYAC_IMAGE =  "https://media.discordapp.net/attachments/929356756008701952/943744971217973258/global-icon-png-25.jpg"
    x = ESX.Math.Round(x, 3)
    y = ESX.Math.Round(y, 3)
    z = ESX.Math.Round(z, 3)
    local coords = "Coords:"..x.." "..y.." "..z
    local log = 
    {
    {
    ["title"]= "[PROHIBITED KEY] = "..keybinds,
    ["color"] = "14883322",
    ["timestamp"] = os.date('!%Y-%m-%dT%H:%M:%S'),
    ["fields"] = {
    {
    ["name"]= "[PROHIBITED KEY]",
    ["value"]= 'Pressed Key:**'..e..'**',
    ["inline"] = true
    },
    },
    ["fields"] = {
    {
    ["name"]= "Player Name:",
    ["value"]= '\n'..GetPlayerName(source).."("..source..")\n\nDiscord:"..id.."\n\n"..coords.."\n\nIP:"..GetPlayerEndpoint(source).."\n\n"..GetPlayerIdentifier(source).."\n\n".. GetPlayerIdentifier(xPlayer.source, 1).."",
    ["inline"] = true
    },
    },
    ["image"] = {
    ["url"] = e,
    },
    ["footer"] = {
    ["text"] = "FYAC",
    },
    },
    }
    PerformHttpRequest(FYAC_S.Log["Key Combinations"], function(err, text, headers) end, 'POST', json.encode({username = "FYAC", embeds = log, avatar_url = FYAC_IMAGE}), { ['Content-Type'] = 'application/json' })
        end, 'GET', "")
end)



RegisterServerEvent("fyac-AdminMenu:ServerAllVehicle")
AddEventHandler("fyac-AdminMenu:ServerAllVehicle", function()
    local xPlayer = ESX.GetPlayerFromId(source)
    if xPlayer.getGroup() == "user" then
    return
    else
    TriggerClientEvent('notification', source, 'FYAC all vehicle deleted!', 2)
    TriggerClientEvent("fyac-VehicleDeleteAll", -1)
    end
end)

RegisterServerEvent("fyac-AdminMenu:ServerAllPed")
AddEventHandler("fyac-AdminMenu:ServerAllPed", function()
    local xPlayer = ESX.GetPlayerFromId(source)
    if xPlayer.getGroup() == "user" then
    return
else
    TriggerClientEvent('notification', source, 'FYAC all ped deleted!', 2)
    TriggerClientEvent("fyac-PedDeleteAll", -1)
end
end)

RegisterServerEvent("fyac-AdminMenu:ServerAllObject")
AddEventHandler("fyac-AdminMenu:ServerAllObject", function()
    local xPlayer = ESX.GetPlayerFromId(source)
    if xPlayer.getGroup() == "user" then
    return
    else
        TriggerClientEvent('notification', source, 'FYAC all object deleted!', 2)
        TriggerClientEvent("fyac-DeleteObjectAll", -1)
    end
end)

RegisterCommand(FYAC_C.Commands["/fyacunban"], function(source,args)
    if source == 0 and args[1] ~= nil then
        if string.len(args[1]) ~= 21 then 
            print("Hex is incorrect or cook long!")
            return 
        end
        if FYAC_S.Uninterrupted["Mysql Type"] == 'mysql-async' then 
            MySQL.Async.fetchAll('DELETE FROM fyac_ban WHERE identifier = @identifier', {
                ['@identifier'] = args[1]
            }, function(result)
                print("Removed FYAC from ban table!"..args[1].."")
                loadBanList()
        end)
        if FYAC_S.Uninterrupted["Mysql Type"] == 'ghmattimysql' then 
            exports.ghmattimysql:executeSync('DELETE FROM fyac_ban WHERE identifier = @identifier', {
                ['@identifier'] = args[1]
            }, function(result)
                print("Removed FYAC from ban table!"..args[1].."")
                loadBanList()
        end)
        end
        if FYAC_S.Uninterrupted["Mysql Type"] == 'oxmyqsl' then 
            exports.oxmysql:executeSync('DELETE FROM fyac_ban WHERE identifier = @identifier', {
                ['@identifier'] = args[1]
            }, function(result)
                print("Removed FYAC from ban table!"..args[1].."")
                loadBanList()
        end)
        end
        end
    else
        local xPlayer = ESX.GetPlayerFromId(source)
        local Steam = args[1]
        if Steam ~= nil then 
        if string.len(Steam) ~= 21 then 
             TriggerClientEvent('notification', source, 'Hex is incorrect or cook long!', 2)
            return 
        end
        for k,v in pairs(FYAC_S.BypassList) do 
        if v == GetPlayerIdentifier(source) then 
        TriggerClientEvent('notification', source, 'FYAC UNBAN - ('..Steam..') Removed FYAC from ban table!', 2)
        if FYAC_S.Uninterrupted["Mysql Type"] == 'mysql-async' then 
            MySQL.Async.fetchAll('DELETE FROM fyac_ban WHERE identifier = @identifier', {
                ['@identifier'] = Steam
                }, function(result)
                    loadBanList()
                end)
        end
        if FYAC_S.Uninterrupted["Mysql Type"] == 'ghmattimysql' then 
            exports.ghmattimysql:execute('DELETE FROM fyac_ban WHERE identifier = @identifier', {
                ['@identifier'] = Steam
                }, function(result)
                    loadBanList()
                end)
        end
        if FYAC_S.Uninterrupted["Mysql Type"] == 'ghmattimysql' then 
            exports.oxmysql:execute('DELETE FROM fyac_ban WHERE identifier = @identifier', {
                ['@identifier'] = Steam
                }, function(result)
                    loadBanList()
                end)
        end
        else
        TriggerClientEvent('notification', source,FYAC_L.locales[FYAC_L.language].notadmin, 2)
        end
        end
        end
    end
end)

RegisterCommand(FYAC_C.Commands["/fyacinvoice"], function(source)

    if source == 0 then
        if FYAC_S.Uninterrupted["Mysql Type"] == 'mysql-async' then 
        MySQL.Async.fetchAll("DELETE FROM billing", {}, function(players)
    end)
    if FYAC_S.Uninterrupted["Mysql Type"] == 'ghmattimysql' then 
        exports.ghmattimysql:executeSync("DELETE FROM billing", {}, function(players)
        end)
    end
    if FYAC_S.Uninterrupted["Mysql Type"] == 'oxmysql' then 
        exports.oxmysql:executeSync("DELETE FROM billing", {}, function(players)
        end)
    end
end
    else
        local xPlayer = ESX.GetPlayerFromId(source)
        if xPlayer.getGroup() == "user" then
            return
        else
            TriggerClientEvent('notification', source, 'FYAC Billing - Datas� Temizlendi!', 2)
            if FYAC_S.Uninterrupted["Mysql Type"] == 'mysql-async' then 
            MySQL.Async.fetchAll("DELETE FROM billing", {}, function(players)
            end)
            if FYAC_S.Uninterrupted["Mysql Type"] == 'ghmattimysql' then 
            exports.ghmattimysql:executeSync("DELETE FROM billing", {}, function(players)
            end)
            if FYAC_S.Uninterrupted["Mysql Type"] == 'oxmysql' then 
            exports.oxmysql:executeSync("DELETE FROM billing", {}, function(players)
            end)
        end
        end
        end
        end
    end
end)

--RegisterServerEvent(GetCurrentResourceName())
--AddEventHandler(GetCurrentResourceName(), function(src)
    --local identifierDb
    --local src = source
    --local xPlayer = ESX.GetPlayerFromId(source)
    --local identifier = getidentifiers(source)

    --if xPlayer.getGroup() == "admin" or xPlayer.getGroup() == "superadmin" then 
    --return 
    --end

    --sendToDiscord(FYAC_S.Log["Executor Detection"],source,"[NUI Blocker]","**Informations:**\n\n"..getPlayerInfo(source).."\n\n**Player R�tbesi:** "..xPlayer.getGroup().."\n\n**Info:**NUI Devtools",15158332)
    --Citizen.Wait(tonumber(3000))
    --TriggerEvent('FYAC:Ban1FuckinCheater', src,"NUI Devtools") 
--end)


RegisterCommand(FYAC_C.Commands["/fyacdeletepublic"], function(source)
    if source == 0 then
        MySQL.Async.fetchAll("DELETE FROM communityservice", {}, function(players)
        end)
    else
        local xPlayer = ESX.GetPlayerFromId(source)
        if xPlayer.getGroup() == "user" then
            return
        else
            TriggerClientEvent('notification', source, 'FYAC Community - Datas� Temizlendi!', 2)
            MySQL.Async.fetchAll("DELETE FROM communityservice", {}, function(players)
            end)
        end
    end
end)
