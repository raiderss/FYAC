FYAC_C = {}

FYAC_C.Protection = {
    ["api"] = "1981d65a4088957",
    ["upload-service"] = "webhook add",
    ["killer-gun-control"] = true,
    ["explosive-protection"] = true,
    ["fire-rate"] = true,
    ["create-vehicle"] = true,
    ["event-blocker-check"] = true,
    ["anti-fly-vehicle"] = false, 
    ["anti-table"] = true,
    ["ant-blips"] = true,
    ["anti-client-stop"] = true,
}

FYAC_C.VehicleSpawnScripts = {
    ['es_extended'] = true,
    ['extendedmode'] = true,
    ['qb-core'] = true,
    ['m3_garage'] = true,
    ['frnS_garage'] = true,
    ['qb-vehicleshop'] = true,
    ['renzu_vehicleshop'] = true,
    ['fn_vehicleshop'] = true,
    ['esx_advancedgarage'] = true,
    ['esx_vehicleshop'] = true,
    ['esx_dmvschool'] = true,
    ["esx_policejob"] = true,
    ["esx_avocatjob"] = true,
    ["esx_advancedgarage"] = true,
    ["esx_ambulancejob"] = true,
    ["esx_mecanojob"] = true,
    ["esx_garage"] = true,
    ['m3_admin'] = true,
    ['elmas_garage'] = true,
    ['gcphone'] = true,
    ['crewphone'] = true,
    ['qb-phone'] = true,
    ['esx_dealership'] = true,
    ['ld-vehicleshop'] = true,
    ["s4-vehicleshops"] = true,
    ['fivemac_npcdialog'] = true,
}


FYAC_C.Commands = {
    ["/fyacallvehicle"] = "fyacallvehicle",
    ["/fyacallobject"] = 'fyacallobject',
    ["/fyacallped"] = 'fyacallped',
    ["/fyacinvoice"] = 'fyacinvoice',
    ["/fyacdeletepublic"] = 'fyacdeletepublic',
    ["/fyacunban"] = 'fyacunban',
    ["/fyacban"] = 'fyacban',
}

FYAC_C.BlacklistedKeys = {  { key = 178, label = "DELETE"}, { key = 208, label = "PAGE UP"}, { key = 207, label = "PAGE DOWN"}, { key = 169, label = "F8"},{ key = 204, label = "TAB"}}

FYAC_C.CageObjs = {
    "stt_prop_stunt_jump15",
    'hw1_lod_08_09_16_17_18', 'cs4_lod_01_slod3', 'apa_mp_apa_yacht', 'ap1_01_a_ap1_gm_grnd012', 'ap1_01_a_ap1_gm_grnd013', 'dt1_21_slod', 'dt1_11_dt1_tower_lod', 'id2_lod_00_ab_slod2', 'dt1_lod_03_04_05_11', 'gr_prop_gr_ramproof_gate', 'stt_prop_ramp_adj_loop', 'stt_prop_ramp_jump_xl', 'stt_prop_ramp_multi_loop_rb', 'stt_prop_ramp_spiral_l', 'stt_prop_ramp_spiral_xxl', 'stt_prop_stunt_ramp', 'stt_prop_ramp_spiral_s',
    "imp_prop_impexp_boxpile_01","prop_container_ld_pu","prop_container_01a","prop_container_05a","prop_const_fence03b_cr","prop_fnclink_03gate5","prop_arm_gate_l","prop_facgate_01","prop_doghouse_01","prop_rub_cage01b","bkr_prop_bkr_cashpile_07","hei_prop_heist_apecrate",
	"csx_seabed_rock3_","prop_gold_cont_01","p_cablecar_s","prop_toilet_02","prop_toilet_01","stt_prop_stunt_tube_l","prop_ld_toilet_01","stt_prop_stunt_track_dwuturn","prop_beach_fire","hei_prop_carrier_cargo_02a","p_ferris_car_01","prop_cj_big_boat","prop_rock_4_big2","prop_steps_big_01","v_ilev_lest_bigscreen","prop_carcreeper","apa_mp_h_bed_double_09","apa_mp_h_bed_wide_05","prop_cattlecrush","prop_cs_documents_01",
}

FYAC_C.Entities = {
    "hw1_lod_08_09_16_17_18","cs4_lod_01_slod3","dt1_21_slod","dt1_11_dt1_tower_lod",841438406,3821613641,2967811882,4185368029,
	"prop_fnclink_05crnr1","xs_prop_hamburgher_wl","xs_prop_plastic_bottle_wl","prop_windmill_01","p_spinning_anus_s","stt_prop_ramp_adj_flip_m","stt_prop_ramp_adj_flip_mb","stt_prop_ramp_adj_flip_s","stt_prop_ramp_adj_flip_sb","stt_prop_ramp_adj_hloop","stt_prop_ramp_adj_loop","stt_prop_ramp_jump_l","stt_prop_ramp_jump_m","stt_prop_ramp_jump_s","stt_prop_ramp_jump_xl","stt_prop_ramp_jump_xs","stt_prop_ramp_jump_xxl","stt_prop_ramp_multi_loop_rb","stt_prop_ramp_spiral_l","stt_prop_ramp_spiral_l_l","stt_prop_ramp_spiral_l_m","stt_prop_ramp_spiral_l_s","stt_prop_ramp_spiral_l_xxl","stt_prop_ramp_spiral_m","stt_prop_ramp_spiral_s","stt_prop_ramp_spiral_xxl"
}

FYAC_C.Fire = {
    {weapon = 'WEAPON_PISTOL', ammo = 14},
    {weapon = 'WEAPON_APPISTOL', ammo = 18},
    {weapon = 'WEAPON_COMBATPISTOL', ammo = 24},
}

FYAC_C.Blacklist = {
    {text = 'TriggerServerEvent'},
    {text = 'TriggerClientEvent'},
    {text = 'TriggerEvent'},
    {text = 'WEAPON_'},
    {text = 'weapon'},
    {text = 't20'},
    {text = 'adder'},
}

FYAC_C.InventoryControl = true
FYAC_C.InventoryWeapon = { 
    "WEAPON_PISTOL","WEAPON_KNIFE","WEAPON_SMG","WEAPON_HAMMER","WEAPON_SAWNOFFSHOTGUN","WEAPON_BULLPUPSHOTGUN","WEAPON_GRENADELAUNCHER","WEAPON_GRENADELAUNCHER_SMOKE","WEAPON_RPG","WEAPON_STINGER","WEAPON_MINIGUN","WEAPON_GRENADE","WEAPON_BALL","WEAPON_BOTTLE","WEAPON_HEAVYSHOTGUN","WEAPON_GARBAGEBAG","WEAPON_RAILGUN","WEAPON_RAILPISTOL","WEAPON_RAILGUN","WEAPON_RAYPISTOL", "WEAPON_RAYCARBINE", "WEAPON_RAYMINIGUN","WEAPON_DIGISCANNER","WEAPON_SPECIALCARBINE_MK2","WEAPON_BULLPUPRIFLE_MK2","WEAPON_PUMPSHOTGUN_MK2","WEAPON_MARKSMANRIFLE_MK2","WEAPON_COMPACTLAUNCHER","WEAPON_SNSPISTOL_MK2","WEAPON_REVOLVER_MK2","WEAPON_FIREWORK","WEAPON_HOMINGLAUNCHER", "WEAPON_SMG_MK2",
}

FYAC_C.BlacklistedWeapons = true
FYAC_C.BlacklistedWeaponsTable = { 
	"WEAPON_HAMMER","WEAPON_SAWNOFFSHOTGUN","WEAPON_BULLPUPSHOTGUN","WEAPON_GRENADELAUNCHER","WEAPON_GRENADELAUNCHER_SMOKE","WEAPON_RPG","WEAPON_STINGER","WEAPON_MINIGUN","WEAPON_GRENADE","WEAPON_BALL","WEAPON_BOTTLE","WEAPON_HEAVYSHOTGUN","WEAPON_GARBAGEBAG","WEAPON_RAILGUN","WEAPON_RAILPISTOL","WEAPON_RAILGUN","WEAPON_RAYPISTOL", "WEAPON_RAYCARBINE", "WEAPON_RAYMINIGUN","WEAPON_DIGISCANNER","WEAPON_SPECIALCARBINE_MK2","WEAPON_BULLPUPRIFLE_MK2","WEAPON_PUMPSHOTGUN_MK2","WEAPON_MARKSMANRIFLE_MK2","WEAPON_COMPACTLAUNCHER","WEAPON_SNSPISTOL_MK2","WEAPON_REVOLVER_MK2","WEAPON_FIREWORK","WEAPON_HOMINGLAUNCHER", "WEAPON_SMG_MK2"
}

FYAC_C.AntiDamageChanger = false
FYAC_C.WeaponDamages = {
	[-1357824103] = { damage = 34, name = "AdvancedRifle"}, -- AdvancedRifle
    [453432689] = { damage = 26, name = "Pistol"}, -- Pistol
    [1593441988] = { damage = 27, name = "CombatPistol"}, -- CombatPistol
    [584646201] = { damage = 25, name = "APPistol"}, -- APPistol
    [-1716589765] = { damage = 51, name = "Pistol50"}, -- Pistol50
    [-1045183535] = { damage = 75, name = "Revolver"}, -- Revolver
    [-1076751822] = { damage = 28, name = "SNSPistol"}, -- SNSPistol
    [-771403250] = { damage = 40, name = "HeavyPistol"}, -- HeavyPistol
    [137902532] = { damage = 34, name = "VintagePistol"}, -- VintagePistol
    [324215364] = { damage = 21, name = "MicroSMG"}, -- MicroSMG
    [736523883] = { damage = 22, name = "SMG"}, -- SMG
    [-270015777] = { damage = 23, name = "AssaultSMG"}, -- AssaultSMG
    [-1121678507] = { damage = 22, name = "MiniSMG"}, -- MiniSMG
    [-619010992] = { damage = 27, name = "MachinePistol"}, -- MachinePistol
    [171789620] = { damage = 22, name = "CombatPDW"}, -- CombatPDW
    [487013001] = { damage = 58, name = "PumpShotgun"}, -- PumpShotgun
    [2017895192] = { damage = 40, name = "SawnoffShotgun"}, -- SawnoffShotgun
    [-494615257] = { damage = 32, name = "AssaultShotgun"}, -- AssaultShotgun
    [-1654528753] = { damage = 14, name = "BullpupShotgun"}, -- BullpupShotgun
    [984333226] = { damage = 117, name = "HeavyShotgun"}, -- HeavyShotgun
    [-1074790547] = { damage = 30, name = "AssaultRifle"}, -- AssaultRifle
    [-2084633992] = { damage = 32, name = "CarbineRifle"}, -- CarbineRifle
    [-1063057011] = { damage = 32, name = "SpecialCarbine"}, -- SpecialCarbine
    [2132975508] = { damage = 32, name = "BullpupRifle"}, -- BullpupRifle
    [1649403952] = { damage = 34, name = "CompactRifle"}, -- CompactRifle
    [-1660422300] = { damage = 40, name = "MG"}, -- MG
    [2144741730] = { damage = 45, name = "CombatMG"}, -- CombatMG
    [1627465347] = { damage = 34, name = "Gusenberg"}, -- Gusenberg
    [100416529] = { damage = 101, name = "SniperRifle"}, -- SniperRifle
    [205991906] = { damage = 216, name = "HeavySniper"}, -- HeavySniper
    [-952879014] = { damage = 65, name = "MarksmanRifle"}, -- MarksmanRifle
    [1119849093] = { damage = 30, name = "Minigun"}, -- Minigun
    [-1466123874] = { damage = 165, name = "Musket"}, -- Musket
    [911657153] = { damage = 1, name = "StunGun"}, -- StunGun
    [1198879012] = { damage = 10, name = "FlareGun"}, -- FlareGun
    [-598887786] = { damage = 75, name = "MarksmanPistol"}, -- MarksmanPistol
    [1834241177] = { damage = 30, name = "Railgun"}, -- Railgun
    [-275439685] = { damage = 30, name = "DoubleBarrelShotgun"}, -- DoubleBarrelShotgun
    [-1746263880] = { damage = 81, name = "Double Action Revolver"}, -- Double Action Revolver
    [-2009644972] = { damage = 30, name = "SNS Pistol Mk II"}, -- SNS Pistol Mk II
    [-879347409] = { damage = 200, name = "Heavy Revolver Mk II"}, -- Heavy Revolver Mk II
    [-1768145561] = { damage = 32, name = "Special Carbine Mk II"}, -- Special Carbine Mk II
    [-2066285827] = { damage = 33, name = "Bullpup Rifle Mk II"}, -- Bullpup Rifle Mk II
    [1432025498] = { damage = 32, name = "Pump Shotgun Mk II"}, -- Pump Shotgun Mk II
    [1785463520] = { damage = 75, name = "Marksman Rifle Mk II"}, -- Marksman Rifle Mk II
    [961495388] = { damage = 40, name = "Assault Rifle Mk II"}, -- Assault Rifle Mk II
    [-86904375] = { damage = 33, name = "Carbine Rifle Mk II"}, -- Carbine Rifle Mk II
    [-608341376] = { damage = 47, name = "Combat MG Mk II"}, -- Combat MG Mk II
    [177293209] = { damage = 230, name = "Heavy Sniper Mk II"}, -- Heavy Sniper Mk II
    [-1075685676] = { damage = 32, name = "Pistol Mk II"}, -- Pistol Mk II
    [2024373456] = { damage = 25, name = "SMG Mk II"} -- SMG Mk II
}


