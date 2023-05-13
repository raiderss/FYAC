																								                                                                    
                                                            																	
FYAC_S = {}

-- Enter the information of the admins.
-- Yöneticilerin bilgilerini girin. [license veya steam hex bypass olarak gecer..]
FYAC_S.BypassList = { -- steam:hex or license:
	"steam:1100001348700b7", -- or "license"
}

-- Banlanmasını istemediğin meslekleri gir.(kamu vb..)
FYAC_S.WhitelistedJobs = {
  "police", "sheriff", "fbi", "ambulance"
}

-- General anticheat logs
FYAC_S.Log = {
  ["Webhook Permission"] = true,
  ["Generated Explosion"] = "https://discord.com/api/webhooks/962758382605963326/l3TxVYFB98i2gQNSDrsxMfgniNyN-Vl4X9IvGHCHnOqxAuIsKuLd3vAehr6gNzSeuYbC", 
  ["Created Object"] = "https://discord.com/api/webhooks/962758382605963326/l3TxVYFB98i2gQNSDrsxMfgniNyN-Vl4X9IvGHCHnOqxAuIsKuLd3vAehr6gNzSeuYbC",
  ["Created Car"] = "https://discord.com/api/webhooks/962758382605963326/l3TxVYFB98i2gQNSDrsxMfgniNyN-Vl4X9IvGHCHnOqxAuIsKuLd3vAehr6gNzSeuYbC",
  ["Created Pads"] = "https://discord.com/api/webhooks/962758382605963326/l3TxVYFB98i2gQNSDrsxMfgniNyN-Vl4X9IvGHCHnOqxAuIsKuLd3vAehr6gNzSeuYbC",
  ["Banned Cheats"] = "https://discord.com/api/webhooks/962758382605963326/l3TxVYFB98i2gQNSDrsxMfgniNyN-Vl4X9IvGHCHnOqxAuIsKuLd3vAehr6gNzSeuYbC",
  ["Shooting Weapons"] = "https://discord.com/api/webhooks/962758382605963326/l3TxVYFB98i2gQNSDrsxMfgniNyN-Vl4X9IvGHCHnOqxAuIsKuLd3vAehr6gNzSeuYbC",
  ["Animation Cancellation"] = "https://discord.com/api/webhooks/962758382605963326/l3TxVYFB98i2gQNSDrsxMfgniNyN-Vl4X9IvGHCHnOqxAuIsKuLd3vAehr6gNzSeuYbC",
  ["Player Taser Logs"] = "https://discord.com/api/webhooks/962758382605963326/l3TxVYFB98i2gQNSDrsxMfgniNyN-Vl4X9IvGHCHnOqxAuIsKuLd3vAehr6gNzSeuYbC",
  ["Key Combinations"] = "https://discord.com/api/webhooks/962758382605963326/l3TxVYFB98i2gQNSDrsxMfgniNyN-Vl4X9IvGHCHnOqxAuIsKuLd3vAehr6gNzSeuYbC",
  ["Trigger Inputs"] = "https://discord.com/api/webhooks/962758382605963326/l3TxVYFB98i2gQNSDrsxMfgniNyN-Vl4X9IvGHCHnOqxAuIsKuLd3vAehr6gNzSeuYbC",
  ["Executor Detection"] = "https://discord.com/api/webhooks/962758382605963326/l3TxVYFB98i2gQNSDrsxMfgniNyN-Vl4X9IvGHCHnOqxAuIsKuLd3vAehr6gNzSeuYbC",
  ["Player Login"] = "https://discord.com/api/webhooks/962758382605963326/l3TxVYFB98i2gQNSDrsxMfgniNyN-Vl4X9IvGHCHnOqxAuIsKuLd3vAehr6gNzSeuYbC"
}	

FYAC_S.Uninterrupted = {
  ["Ban Message"] = "🦍 You have been suspended by FYAC Anti-Cheat!",
  ["Abnormal Kick Message"] = "ABNORMAL ENTITY (KICK & OBJECT & PED)",
  ["Abnormal Entity"] = true,
  ["Abnormal Amount"] = 10,
  ["Abnormal Kick"] = true,
  ["Abnormal Object Log"] = "https://discord.com/api/webhooks/962758382605963326/l3TxVYFB98i2gQNSDrsxMfgniNyN-Vl4X9IvGHCHnOqxAuIsKuLd3vAehr6gNzSeuYbC",
  ["Abnormal Ped Log"] = "https://discord.com/api/webhooks/962758382605963326/l3TxVYFB98i2gQNSDrsxMfgniNyN-Vl4X9IvGHCHnOqxAuIsKuLd3vAehr6gNzSeuYbC",
  ["Abnormal Car Log"] = "https://discord.com/api/webhooks/962758382605963326/l3TxVYFB98i2gQNSDrsxMfgniNyN-Vl4X9IvGHCHnOqxAuIsKuLd3vAehr6gNzSeuYbC",
  ["Field Deletion"] = false, -- It strengthens the deletion event. Do not open the whitelist objects before entering them completely.
  ["Inventory Type"] = "qb-inventory", -- qbtoesx-inventory or qb-inventory or esxtype-inventory
  ["Antimation Script"] = "dpemotes", -- enter the name of what you are using as an animation scriptn
  ["Mysql Type"] = "ghmattimysql", -- mysql-async or ghmattimysql or oxmysql
  ["Economy Limit"] = false, -- [EN] Economy protection on? true or false [TR] : Ekonomi koruması aç kapat?
  ["Economy Max Cash"] = 5000000, -- [TR] : Üstünde taşıyabileceği maksimum para? [EN] : Money you can carry 
  ["Economy Max Bank"] = 10000000, -- [EN] Money she can carry in her bank  / [TR] : Üstünde taşıyabileceği maximum para
  ["Community Service Trigger"] = "esx_communityservice:sendToCommunityService", -- Community Trigger
  ["Community Duration Limit"] = 200, -- Max community duration
}

FYAC_S.Timing = {
  ["Tool Spam Reset Time"] = 5000, 
  ["Vehicle Eject Limit"] = 3,
  ["Animation Cancellation Limit"] = 2, 
  ["Particle Reset Time"] = 2000, 
  ["Particle Extraction Limit"] = 2,
  ["Lost Taser Limit"] = 3, 
  ["Thrown Taser Reset Limit"] = 5000, 
  ["Maximum Volume Limit"] = 99.0, 
  ["Abnormal Entity Reset Time"] = 10000, 
  ["Animation Cancellation Reset Time"] = 5000,
  ["Anticheat Stop Control Range"] = 5000, 
  ["Anticheat Stop Ping Limit"] = 150, 
  ["Abnormal Trigger Reset Limit"] = 7000,
}

-- [EN] : Number of triggers worked
-- [TR] : Triggerların calıştırılma sayısı.
FYAC_S.AbnormalTrigger = {
  ["InteractSound_SV:PlayWithinDistance"] = 3,
  ["gcPhone:transfer"] = 5,
  ["esx_policejob:billPlayer"] = 20,
  ["esx_policejob:handcuff"] = 20,
  ["esx_sheriffjob:requestarrest"] = 10,
  ["InteractSound_SV:PlayOnAl"] = 50,
  ["InteractSound_SV:PlayOnAll"] = 30,
  ["esx_license:addLicense"] = 30,
  ["lester:vendita"] = 30,
  ["esx_fbijob:handcuff"] = 20,
  ["cmg3_animations:sync"] = 5,
  ["esx_communityservicesex:sendToCommunityService"] = 15,
  ["esx_communityservice:sendToCommunityService"] = 15,
  ["chat:server:ServerPSA"] = 2,
  ["cmg2_animationsCarry:sync"] = 5,
  ["gcPhone:sendMessage"] = 20,
  ["mysql-async:request-data"] = 5,
  ["mysql-async:request-server-status"] = 5,
  ["mysql-async:request-table-schema"] = 5,
  ["ghmattimysql:request-data"] = 5,
  ["ghmattimysql:request-server-status"] = 5,
  ["oxmysql:fetchResource"] = 5,
  ["esx_billing:sendBill"] = 3,
  ["esx_jailer:sendToJail"] = 2,
  ["esx_uber:pay"] = 5,
  ["esx-qalle-jail:jailPlayer"] = 3,
}

-- Default anticheat settings are recommended
-- -- Varsayılan anticheat ayarları önerilir.
FYAC_S.Protection = {
	["Anti Spawn Vehicles"] = true,
	["Anti Give or Remove Weapons"] = true,
	["Anti Taser"] = false,
	["Anti Animation Cancellation"] = true,
	["Anti Crasher"] = true,
	["Anti Stopper"] = true,
	["Anti Particles Spawn"] = true,
	["Anti Pad Spawn"] = true,
  ["Anti Executor"] = true,
  ["Anti Explosion"] = true,
}

-- [TR] : Triggerların gönderdiği value değerleri tüm oyuncular veya eventin basabileceği maximum para miktarı
-- [EN] : The value values sent by triggers are the maximum amount of money that all players or the event can print.
FYAC_S.ExtremeTriggers = {
{trigger ="esx_communityservicesex:sendToCommunityService", value = -1},
{trigger = "esx_fueldelivery:pay", value = 1000},
{trigger = "esx_carthief:pay", value = 1000},
{trigger = "esx_godirtyjob:pay", value = 1000},
{trigger = "esx_pizza:pay", value = 1000},
{trigger = "esx_ranger:pay", value = 1000},
{trigger = "esx_garbagejob:pay", value = 1000},
{trigger = "esx_gopostaljob:pay", value = 1000},
{trigger = "esx_slotmachine:sv:2", value = 1000},
{trigger = "esx_dmvschool:pay", value = 1000},
{trigger = "esx_tankerjob:pay", value = 1000},
{trigger = "esx_uber:pay", value = 100},
{trigger = "CarryPeople:sync", value = -1},
{trigger = "cmg3_animations:sync", value = -1},
{trigger = "cmg2_animationsCarry:sync", value = -1},
{trigger = "esx-qalle-jail:prisonWorkReward", value = 30},
{trigger = "esx_policejob:handcuff", value = -1}, 
{trigger = "esx_policejob:drag", value = -1},
{trigger = "esx_sheriffjob:drag", value = -1},
{trigger = "esx_policejob:putInVehicle", value = -1},
{trigger = "esx_sheriffjob:requestarrest", value = -1},
{trigger = "esx_policejob:requestarrest", value = -1},
{trigger = "esx_sheriffjob:handcuff", value = -1}, 
{trigger = "esx_sheriffjob:putInVehicle", value = -1},
{trigger = "esx_vehiclelock:requestPlayerCars", value = -1},
{trigger = "AdminMenu:giveBank", value = 1000},
{trigger = "AdminMenu:giveCash", value = 1000},
{trigger = "LegacyFuel:PayFuel", value = 1000},
{trigger = "esx_society:billing", value = 100000},
{trigger = "js:jailuser", value = -1},
{trigger = "esx_jail:sendToJail", value = -1},
{trigger = "esx_jailer:sendToJail", value = -1}, 
{trigger = "esx-qalle-jail:jailPlayer", value = -1},
{trigger = "esx_communityservice:sendToCommunityService", value = -1},
{trigger = "3c98dea34ba8c14eea839a5d9b6e5d15:jailPlayer", value = -1},
{trigger = "m3:shoprobbery:giveMoney", value = 1000},
{trigger = "houseRobberies:giveMoney", value = 1000},
{trigger = "t1ger_mechanicjob:JobReward", value = 1000},
{trigger = "fonzillo,deep_hacker:giveMoney", value = 1000},
{trigger = "esx_kazikazan:withdraw", value = 1000},
{trigger = "sametk:hapispara", value = 100000},
{trigger = "t1ger_deliveryjob:retrievePaycheck", value = 1000},
{trigger = "wiro_miner:paraver", value = 1000},
{trigger = "edz-cashdeskrob:giveMoney", value = 1000},
{trigger = "esx-chopshop:addCash", value = 1000},
{trigger = "utk_fh:rewardCash", value = 1000},
{trigger = "utk_oh:rewardCash", value = 1000},
{trigger = "esx_moneywash:deposit", value = 1000},
{trigger = "esx_truckerjob:pay", value = 1000},
{trigger = "esx_moneywash:withdraw", value = 1000}, 
{trigger = "wiz:reward", value = 1000},
{trigger = "esx_barbershop:pay", value = 100},
{trigger = "norp-fleeca:rewardCash", value = 1000},
{trigger = "esx_kekke_tackle:tryTackle", value = -1},
{trigger = "esx_policejob:putInVehicle", value = -1},
{trigger = "esx_policejob:OutVehicle", value = -1},
{trigger = "DiscordBot:playerDied", value = -1}, 
}

FYAC_S.BlacklistedTriggers = {
  -- { eventName = "esx_policejob:handcuff", banReason = "She tried to handcuff her without the police.",   },
  { eventName = "esx_jailer:sendToJail", banReason = "He tried to send her to jail without the police.",   },
  { eventName = "police:cuffGranted", banReason = "He tried to send her to jail without the police.",   },
  { eventName = "esx_vehicleshop:putStockItems", banReason = "Tried to put items in the safe without Car Dealer.",   },
  { eventName = "esx_policejob:putStockItems", banReason = "Tried to put items in the safe without Police.",   },
  { eventName = "esx_sheriffjob:putStockItems", banReason = "Tried to put items in the safe without Sheriff.",   },
  { eventName = "esx_sheriffjob:message", banReason = "The bottom left tried to attack the announcements.",   },
  { eventName = "esx_policejob:message", banReason = "The bottom left tried to attack the announcements.",   },
  { eventName = "esx_fbi:message", banReason = "The bottom left tried to attack the announcements.",   },
  { eventName = "esx_fbi:getStockItem", banReason = "Tried to put items in the safe without FBI.",   },
  { eventName = "esx_policejob:getStockItem", banReason = "Tried to put items in the safe without Police.",   },
  { eventName = "esx_sheriffjob:getStockItem", banReason = "Tried to put items in the safe without Sheriff.",   },
  { eventName = "lester:vendita", banReason = "Money Printing Method 001.",  },
  { eventName = "esx_gopostaljob:pay", banReason = "Money Printing Method 002.",  },
  { eventName = "esx_jobs:caution", banReason = "Money Printing Method 004.",  },
  { eventName = "LegacyFuel:PayFuel", banReason = "Money Printing Method 005.",  },
  { eventName = "esx_truckerjob:pay", banReason = "Money Printing Method 006.",  },
  { eventName = "esx_garbagejob:pay", banReason = "Money Printing Method 007.",  },
  { eventName = "hentailover:Edlol", banReason = "Money Printing Method 008.",  },
  { eventName = "OG_cuffs:cuffCheckNearest", banReason = "Money Printing Method 009.",  },
  { eventName = "esx_ranger:pay", banReason = "Money Printing Method 010.",  },
  { eventName = "esx_pizza:pay", banReason = "Money Printing Method 011.",  },
  { eventName = "esx_carthief:pay", banReason = "Money Printing Method 012.",  },
  { eventName = "esx_robnpc:giveMoney", banReason = "Money Printing Method 013.",  },
  { eventName = "esx_mugging:giveMoney", banReason = "Money Printing Method 014.",  },
  { eventName = "lenzh_chopshop:sell", banReason = "Money Printing Method 015.",  },
  { eventName = "lenzh_chopshop:rewards", banReason = "Money Printing Method 016.",  },
  { eventName = "8321hiue89js", banReason = "Money Printing Method 017.",},
  { eventName = "esx_moneywash:withdraw", banReason = "Money Printing Method 018.",  },
  { eventName = "6a7af019-2b92-4ec2-9435-8fb9bd031c26", banReason = "6a7af019-2b92-4ec2-9435-8fb9bd031c26.",},
  { eventName = "esx_communityservice:sendToCommunityService", banReason = "The public acted.",},
  -- { eventName = "esx_policejob:requestarrest", banReason = "Handcuffing without police",},
  { eventName = "esx_fbi:requestarrest", banReason = "Handcuffing without fbi",},
  { eventName = "dqd36JWLRC72k8FDttZ5adUKwvwq9n9m", banReason = "dqd36JWLRC72k8FDttZ5adUKwvwq9n9m",},
  { eventName = "h:Ed", banReason = "h:Ed",},
  { eventName = "Tem2LPs5Para5dCyjuHm87y2catFkMpV", banReason = "Tem2LPs5Para5dCyjuHm87y2catFkMpV",},
  { eventName = "adminmenu:allowall", banReason = "adminmenu:allowall",},
  { eventName = "BsCuff:Cuff696LRAC999", banReason = "h:Ed",},
  { eventName = "antilynE8:anticheat", banReason = "Tem2LPs5Para5dCyjuHm87y2catFkMpV",},
  { eventName = "esx_policejob:billPlayer", banReason = "She tried to write bills without the police",},
  { eventName = "chat:server:ServerPSA", banReason = "Chat Mesaj Hilesi.",},
  }