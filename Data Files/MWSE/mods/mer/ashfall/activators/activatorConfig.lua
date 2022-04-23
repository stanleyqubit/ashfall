local Activator = require("mer.ashfall.activators.Activator")
local this = {}

this.types = {
    waterSource = "waterSource",
    dirtyWaterSource = "dirtyWaterSource",
    cookingUtensil = "cookingUtensil",
    fire = "fire",
    campfire = "campfire",
    woodSource = "woodSource",
    resinSource = "resinSource",
    vegetation = "vegetation",
    branch = "branch",
    cauldron = "cauldron",
    cushion = "cushion",
    hearth = "hearth",
    stove = "stove",
    partial = "partial",
    teaWarmer = "teaWarmer",
    kettle = "kettle",
    cookingPot = "cookingPot",
    waterContainer = "waterContainer",
    stoneSource = "stoneSource",
    waterFilter = "waterFilter",
}

this.list = {}

--[[
    The partial activator is any activator that
    only shows a tooltip and has functionality
    when looking at specific NiNodes.
]]
this.list.partial = Activator:new({
    name = nil,
    type = this.types.partial,
    ids = {

    }
})

this.list.waterDirty = Activator:new{
    name = "Water (Dirty)",
    type = this.types.dirtyWaterSource,
    mcmSetting = nil,
    ids = {
        ["ex_vivec_waterfall_01"] = true,
        ["ex_vivec_waterfall_03"] = true,
        ["ex_vivec_waterfall_05"] = true,
        ["ex_vivec_p_water"] = true,
        ["in_om_waterfall"] = true,
        ["in_om_waterfall_small"] = true,
        ["tr_m3_oe_plaza_water_"] = true,
        -- TR
        ["t_glb_terrwatersew_waterfall_01"] = true,
        ["t_glb_terrwatersew_waterfall_02"] = true,
        ["t_glb_terrwatersew_waterfall_03"] = true,
        ["t_glb_terrwater_circle1024_01"] = true,
        ["t_glb_terrwater_circle128_01"] = true,
        ["t_glb_terrwater_circle2048_01"] = true,
        ["t_glb_terrwater_circle256_01"] = true,
        ["t_glb_terrwater_circle512_01"] = true,
        ["t_glb_terrwater_circle64_01"] = true,
        ["t_glb_terrwater_curveflw256_01"] = true,
        ["t_glb_terrwater_curveflw256s_01"] = true,
        ["t_glb_terrwater_curveflw512_01"] = true,
        ["t_glb_terrwater_curveflw512s_01"] = true,
        ["t_glb_terrwater_curverpd256_01"] = true,
        ["t_glb_terrwater_curverpd256s_01"] = true,
        ["t_glb_terrwater_curverpd512_01"] = true,
        ["t_glb_terrwater_curverpd512s_01"] = true,
        ["t_glb_terrwater_rectflw256_01"] = true,
        ["t_glb_terrwater_rectflw256_02"] = true,
        ["t_glb_terrwater_rectflw256_03"] = true,
        ["t_glb_terrwater_rectrpd256_01"] = true,
        ["t_glb_terrwater_rectrpd256_02"] = true,
        ["t_glb_terrwater_rectrpd256_03"] = true,
        ["t_glb_terrwater_rectstill256_01"] = true,
        ["t_glb_terrwater_rectstill256_02"] = true,
        ["t_glb_terrwater_rectstill256_03"] = true,
        ["t_glb_terrwater_sqrflw1024_01"] = true,
        ["t_glb_terrwater_sqrflw256_01"] = true,
        ["t_glb_terrwater_sqrflw512_01"] = true,
        ["t_glb_terrwater_sqrstill1024_01"] = true,
        ["t_glb_terrwater_sqrstill256_01"] = true,
        ["t_glb_terrwater_sqrstill512_01"] = true,
        ["t_com_set_waterwheel_01"] = true,
        ["t_de_sethla_x_watercbnarsis_01"] = true,
        ["t_de_sethla_x_waternarsis_01"] = true,
        ["t_de_sethla_x_waternarsis_0"] = true,
        ["t_de_sethla_x_waternarsis_03"] = true,
        ["t_com_furn_bath_01"] = true,
        --Wolli
        ["terrwater_circle"] = true,
    }
}
this.list.water = this.list.waterDirty
this.list.waterClean = Activator:new{
    name = "Water (Clean)",
    type = this.types.waterSource,
    mcmSetting = nil,
    ids = {
        ["t_com_var_barrelwater_01"] = true,
        ["t_glb_terrwater_waterjet_01"] = true
    }
}
this.list.basin = Activator:new{
    name = "Basin",
    type = this.types.waterSource,
    mcmSetting = nil,
    ids = {
        ["act_basin_telv_wood"] = true, --UL
        ["mr_imp_basin"] = true, --MR
    }
}
this.list.waterJug = Activator:new{
    name = "Water Jug",
    type = this.types.waterSource,
    mcmSetting = nil,
    ids = {
        ["a_water_jug"] = true --Yurts
    }
}
this.list.well = Activator:new{
    name = "Well",
    type = this.types.waterSource,
    mcmSetting = nil,
    ids = {
        ["ex_nord_well_01"] = true,
        ["ex_nord_well_01a"] = true,
        ["furn_well00"] = true,
        ["rm_well"] = true,
        ["t_de_setveloth_x_well"] = true,

        ["act_bm_well_01"] = true,

        -- nom
        ["nom_ac_pool"] = true,
        ["nom_ashland_pool"] = true,
        ["nom_basin"] = true,
        ["nom_bc_pool00"] = true,
        ["nom_bc_pool01"] = true,
        ["nom_mh_spuot"] = true,
        ["nom_midevil_well"] = true,
        ["nom_pump_dunmer"] = true,
        ["nom_pump_dwemer"] = true,
        ["nom_pump_imperial"] = true,
        ["nom_source_ac"] = true,
        ["nom_source_bc"] = true,
        ["nom_source_eraben"] = true,
        ["nom_source_mh"] = true,
        ["nom_source_strong02"] = true,
        ["nom_source_strong03"] = true,
        ["nom_source_urshilaku"] = true,
        ["nom_source_zainab"] = true,
        ["nom_strong02_pool"] = true,
        ["nom_strong03_pool"] = true,
        ["nom_water_barrel"] = true,
        ["nom_water_round"] = true,
        ["nom_water_round_ani"] = true,
        ["nom_water_spray"] = true,
        ["nom_water_spray_fab"] = true,
        ["nom_well_common_01"] = true,
        ["nom_well_mh_01"] = true,
        ["nom_well_nord_01"] = true,
        ["nom_well_nord_colony1"] = true,
        ["nomni_ex_hlaalu_well"] = true,
        ["nomni_ex_redoran_well"] = true,
        ["nomni_ex_t_wellpod"] = true,
        ["rp_wellpod"] = true,
        ["nomni_well_common_strong1"] = true,

        -- tr
        ["tr_m3_oe_plaza_water_uni"] = true,
        ["t_de_sethla_x_well_01"] = true,
        ["t_de_setind_x_well_01"] = true,
        ["t_de_setveloth_x_well_01"] = true,

        --rebirth
        ["mr_hlaalu_fountain"] = true,
        ["mr_redoran_well"] = true,
        ["mr_stronhold_well"] = true,
        ["mr_hlaalu_well_01"] = true,
        ["mr_imp_well_roofed"] = true,


        --well diversified
        ["_ex_hlaalu_well"] = true,
        ["izi_hlaalu_well"] = true,
        ["ex_imp_well_01"] = true,
        ["ex_s_well_01"] = true,
        ["bw_ex_hlaalu_well"] = true,
        ["rp_wooden_well"] = true,
        ["mr_imp_well_01"] = true,
        --MD
        ["ab_ex_velwellfountain"] = true,

        --OAAB
        ["mr_imp_well"] = true,

        --SHOTN
        t_nor_set_well_01 = true,
        t_nor_set_well_02 = true,
        t_nor_set_well_03 = true,
        t_nor_set_well_04 = true,
        t_nor_set_well_05 = true,
        t_rga_set_reach_x_pool_01 = true,
    }
}
this.list.keg = Activator:new{
    name = "Keg",
    type = this.types.waterSource,
    mcmSetting = nil,
    ids = {
        ["kegstand"] = true,
        ["furn_com_kegstand"] = true,
        ["furn_de_kegstand"] = true,
        ["nom_kegstand_emp_de"] = true,
        ["nom_kegstand_emp"] = true,
    },
    owned = true,
}
this.list.vegetation = Activator:new{
    name = "Vegetation",
    type = this.types.vegetation,
    mcmSetting = "bushcraftingEnabled",
    patterns = {},
    ids = {
        --TR
        t_sky_flora_bushpine4dry_01 = true,
        t_sky_flora_bushpine4dry_02 = true,
        t_sky_flora_bushleaves1dry_01 = true,
        t_sky_flora_bushleaves1dry_02 = true,
        t_sky_flora_bushleaves5_01 = true,
        t_sky_flora_bushleaves5_02 = true,
        t_sky_flora_bushleaves5_03 = true,
        t_sky_flora_bushleaves5dry_01 = true,
        t_sky_flora_bushleaves5dry_02 = true,
        t_sky_flora_bushleaves5dry_03 = true,
        t_sky_flora_bushpine1_01 = true,
        t_sky_flora_bushpine1_02 = true,
        t_sky_flora_bushpine1dry_01 = true,
        t_sky_flora_bushpine1dry_02 = true,
        t_sky_flora_bushpine2_01 = true,
        t_sky_flora_bushpine2_02 = true,
        t_sky_flora_bushpine2_03 = true,
        t_sky_flora_bushpine2dry_01 = true,
        t_sky_flora_bushpine2dry_02 = true,
        t_sky_flora_bushpine2dry_03 = true,
        t_sky_flora_bushpine3dry_01 = true,
        t_sky_flora_bushpine3dry_02 = true,
        t_sky_flora_bushpine3dry_03 = true,
        t_sky_flora_bushplain1_03 = true,
        --Plant Static
        ["flora_ash_grass_b_01"] = true,
        ["flora_ash_grass_r_01"] = true,
        ["flora_ash_grass_w_01"] = true,
        ["flora_bc_fern_02"] = true,
        ["flora_bc_fern_03"] = true,
        ["flora_bc_fern_04"] = true,
        ["flora_bc_grass_01"] = true,
        ["flora_bc_grass_02"] = true,
        ["flora_bc_moss_01"] = true,
        ["flora_bc_moss_02"] = true,
        ["flora_bc_moss_03"] = true,
        ["flora_bc_moss_04"] = true,
        ["flora_bc_moss_05"] = true,
        ["flora_bc_moss_06"] = true,
        ["flora_bc_moss_07"] = true,
        ["flora_bc_moss_08"] = true,
        ["flora_bc_moss_09"] = true,
        ["flora_bc_moss_10"] = true,
        ["flora_bc_moss_11"] = true,
        ["flora_bc_moss_12"] = true,
        ["flora_bc_moss_13"] = true,
        ["flora_bc_moss_14"] = true,
        ["flora_bc_moss_15"] = true,
        ["flora_bc_moss_16"] = true,
        ["flora_bc_moss_17"] = true,
        ["flora_bc_moss_18"] = true,
        ["flora_bc_moss_19"] = true,
        ["flora_bc_moss_20"] = true,
        ["flora_bc_moss_21"] = true,
        ["flora_bc_vine_01"] = true,
        ["flora_bc_vine_02"] = true,
        ["flora_bc_vine_03"] = true,
        ["flora_bc_vine_04"] = true,
        ["flora_bc_vine_05"] = true,
        ["flora_bc_vine_06"] = true,
        ["flora_bc_vine_07"] = true,
        ["flora_bm_grass_01"] = true,
        ["flora_bm_grass_02"] = true,
        ["flora_bm_grass_03"] = true,
        ["flora_bm_grass_04"] = true,
        ["flora_bm_grass_05"] = true,
        ["flora_bm_grass_06"] = true,
        ["flora_bm_holly_06a"] = true,
        ["flora_bm_log_01"] = true,
        ["flora_bm_log_02"] = true,
        ["flora_bm_log_03"] = true,
        ["flora_bm_log_04"] = true,
        ["flora_bm_log_05"] = true,
        ["flora_bm_shrub_01"] = true,
        ["flora_bm_shrub_02"] = true,
        ["flora_bm_shrub_03"] = true,
        ["flora_bush_01"] = true,
        ["flora_grass_01"] = true,
        ["flora_grass_02"] = true,
        ["flora_grass_03"] = true,
        ["flora_grass_04"] = true,
        ["flora_grass_05"] = true,
        ["flora_grass_06"] = true,
        ["flora_grass_07"] = true,
        ["flora_ivy_01"] = true,
        ["flora_ivy_02"] = true,
        ["flora_kelp_01"] = true,
        ["flora_kelp_02"] = true,
        ["flora_kelp_03"] = true,
        ["flora_kelp_04"] = true,
        ["in_cave_plant00"] = true,
        ["in_cave_plant01"] = true,
        --Plant Containers
        ["flora_ash_yam_01"] = true,
        ["flora_ash_yam_02"] = true,
        ["flora_bc_fern_01"] = true,
        ["flora_bc_fern_04_chuck"] = true,
        ["flora_bc_podplant_01"] = true,
        ["flora_bc_podplant_02"] = true,
        ["flora_bc_podplant_03"] = true,
        ["flora_bc_podplant_04"] = true,
        ["flora_bittergreen_01"] = true,
        ["flora_bittergreen_02"] = true,
        ["flora_bittergreen_03"] = true,
        ["flora_bittergreen_04"] = true,
        ["flora_bittergreen_05"] = true,
        ["flora_bittergreen_06"] = true,
        ["flora_bittergreen_07"] = true,
        ["flora_bittergreen_08"] = true,
        ["flora_bittergreen_09"] = true,
        ["flora_bittergreen_10"] = true,
        ["flora_bittergreen_pod_01"] = true,
        ["flora_black_anther_01"] = true,
        ["flora_black_anther_02"] = true,
        ["flora_bm_holly_01"] = true,
        ["flora_bm_holly_02"] = true,
        ["flora_bm_holly_04"] = true,
        ["flora_bm_holly_05"] = true,
        ["flora_bm_holly_06"] = true,
        ["flora_chokeweed_02"] = true,
        ["flora_comberry_01"] = true,
        ["flora_corkbulb"] = true,
        ["flora_fire_fern_01"] = true,
        ["flora_fire_fern_02"] = true,
        ["flora_fire_fern_03"] = true,
        ["flora_gold_kanet_01"] = true,
        ["flora_gold_kanet_01_uni"] = true,
        ["flora_gold_kanet_02"] = true,
        ["flora_gold_kanet_02_uni"] = true,
        ["flora_green_lichen_01"] = true,
        ["flora_green_lichen_02"] = true,
        ["flora_hackle-lo_01"] = true,
        ["flora_hackle-lo_02"] = true,
        ["flora_heather_01"] = true,
        ["flora_kreshweed_01"] = true,
        ["flora_kreshweed_02"] = true,
        ["flora_kreshweed_03"] = true,
        ["flora_marshmerrow_01"] = true,
        ["flora_marshmerrow_02"] = true,
        ["flora_marshmerrow_03"] = true,
        ["flora_plant_01"] = true,
        ["flora_plant_02"] = true,
        ["flora_plant_03"] = true,
        ["flora_plant_04"] = true,
        ["flora_rm_scathecraw_01"] = true,
        ["flora_rm_scathecraw_02"] = true,
        ["flora_roobrush_02"] = true,
        ["flora_saltrice_01"] = true,
        ["flora_saltrice_02"] = true,
        ["flora_sedge_01"] = true,
        ["flora_sedge_02"] = true,
        ["flora_stoneflower_01"] = true,
        ["flora_stoneflower_02"] = true,
        ["flora_wickwheat_01"] = true,
        ["flora_wickwheat_02"] = true,
        ["flora_wickwheat_03"] = true,
        ["flora_wickwheat_04"] = true,
        ["flora_willow_flower_01"] = true,
        ["flora_willow_flower_02"] = true,
    }
}



this.list.tree = Activator:new{
    name = "Tree",
    type = this.types.resinSource,
    mcmSetting = nil,
    patterns = {
        ["flora_bc_tree"] = true,
        ["flora_emp_parasol"] = true,
        ["flora_tree"] = true,
        ["vurt_baobab"] = true,
        ["vurt_bctree"] = true,
        ["vurt_bentpalm"] = true,
        ["vurt_decstree"] = true,
        ["vurt_neentree"] = true,
        ["vurt_palm"] = true,
        ["vurt_unicy"] = true,
        ["floraat_tree_"] = true,
        ['flora_t_mushroom'] = true,
        ["pine_tree"] = true,--vsw
        ["mr_flora_graze_tree "] = true, --Rebirth
        ["floraat_tree"] = true, --TR
        ['florabw_tree'] = true, --TR
        ['florach_tree'] = true, --TR
        ['floragc_tree'] = true, --TR
        ['floragh_tree'] = true, --TR
        ['florahl_tree'] = true, --TR
        ['florajm_tree'] = true, --TR
        ['florakp_tree'] = true, --TR
        ['florakstr_tree'] = true, --TR
        ['floravm_tree'] = true, --TR
        ['floraww_tree'] = true, --TR
        ['mdbc_treehuge'] = true, -- Mels Graht trees
        ['ex_t_root_'] = true,

    },
}
this.list.deadTree = Activator:new{
    name = "Dead Tree",
    type = this.types.woodSource,
    mcmSetting = nil,
    patterns = {
        ["flora_ashtree"] = true,
    }
}
this.list.wood = Activator:new{
    name = "Wood",
    type = this.types.woodSource,
    mcmSetting = nil,
    patterns = {
        ["flora_ash_log"] = true,
        ["flora_bc_knee"] = true,
        ["flora_bc_log"] = true,
        ["flora_bm_log"] = true,
        ["flora_bm_snow_log"] = true,
        ["flora_bm_snowstump"] = true,
        ["flora_bm_treestump"] = true,
        ["flora_root_wg"] = true,
        ["flora_trama_shrub_01"] = true,
        ["flora_trama_shrub_02"] = true,
        ["flora_trama_shrub_03"] = true,
        ["flora_trama_shrub_04"] = true,
        ["flora_trama_shrub_05"] = true,
        ["flora_trama_shrub_06"] = true,
        --["furn_log"] = true
        ['mdbc_treehugestump'] = true, -- Mels Graht trees
        ['mdbc_treehugelog'] = true, -- Mels Graht trees
        ['mdbc_treehugeloghollow'] = true, -- Mels Graht trees
        ['ashtrunk'] = true, --oaab
    }
}
this.list.fire = Activator:new{
    name = "Fire",
    type = this.types.fire,
    patterns = {
        firepit_f = true,
        firepit_lit = true,
        firepit_roaring = true,
        --light_pitfire = true,
        light_logpile = true,
        light_6th_brazier = true,
    }
}

this.list.campfire = Activator:new{
    name = "Campfire",
    type = this.types.campfire,
    mcmSetting = nil,
    ids = {
        ["ashfall_campfire"] = true,
        ["ashfall_campfire_static"] = true,
        ["ashfall_campfire_mr"] = true,
        ["ashfall_campfire_sup"] = true,
        ["ashfall_campfire_grill"] = true,
    },
}

this.list.hearth = Activator:new{
    name = "Hearth",
    type = this.types.campfire,
    mcmSetting = nil,
    ids = {
        ["ab_in_velhearthsmall"] = true,
        ["ashfall_redhearth_01"] = true,
        ["ashfall_redhearth_02"] = true,
        ["ashfall_ab_hearth_sml"] = true,
        ["ashfall_ab_hearth_lh"] = true,
        ["ashfall_ab_hearth_rh"] = true,
    }
}

this.list.fireplace = Activator:new{
    name = "Fireplace",
    type = this.types.campfire,
    mcmSetting = nil,
    ids = {
        ["ashfall_fireplace10"] = true,
        ["ashfall_nordfireplace_01"] = true,
        ["ashfall_impfireplace_01"] = true,
        ["ashfall_skyfp_01"] = true,
        ["ashfall_skyfp_02"] = true,
        ["ashfall_skyfp_03"] = true,
        ["ashfall_skyfp_hf1"] = true,
        ["ashfall_skyfp_hf2"] = true,
        ["ashfall_skyfp_hfb"] = true,
        ["ashfall_pc_fp_01"] = true,
        ["ashfall_pc_fp_02"] = true,
        ["ashfall_pc_fp_03"] = true,
    }
}
--Stove
this.list.stove = Activator:new{
    name = "Stove",
    type = this.types.campfire,
    mcmSetting = nil,
    ids = {
        ["ashfall_stove_01"] = true,
    }
}

this.list.cushion = Activator:new{
    name = "Cushion",
    type = this.types.cushion,
    mcmSetting = nil,
    ids = {
        furn_de_cushion_round_01 = { height = 20 },
        furn_de_cushion_round_02 = { height = 20 },
        furn_de_cushion_round_03 = { height = 20 },
        furn_de_cushion_round_04 = { height = 20 },
        furn_de_cushion_round_05 = { height = 20 },
        furn_de_cushion_round_06 = { height = 20 },
        furn_de_cushion_round_07 = { height = 20 },
        furn_de_cushion_square_01 = { height = 10 },
        furn_de_cushion_square_02 = { height = 10 },
        furn_de_cushion_square_03 = { height = 10 },
        furn_de_cushion_square_04 = { height = 10 },
        furn_de_cushion_square_05 = { height = 10 },
        furn_de_cushion_square_06 = { height = 10 },
        furn_de_cushion_square_07 = { height = 10 },
        furn_de_cushion_square_08 = { height = 10 },
        furn_de_cushion_square_09 = { height = 10 },
        ss20_dae_cushion_round_01 = { height = 20 },
        ss20_dae_cushion_round_02 = { height = 20 },
        ss20_dae_cushion_round_03 = { height = 20 },
        ss20_dae_cushion_round_04 = { height = 20 },
        ss20_dae_cushion_round_05 = { height = 20 },
        ss20_dae_cushion_square_01 = { height = 10 },
        ss20_dae_cushion_square_02 = { height = 10 },
        ss20_dae_cushion_square_03 = { height = 10 },
        ss20_dae_cushion_square_04 = { height = 10 },
        ss20_dae_cushion_square_05 = { height = 10 },
    },
}

this.list.cauldron = Activator:new{
    name = "Cauldron",
    type = this.types.cauldron,
    mcmSetting = nil,
    ids = {
        ["furn_com_cauldron_02"] = true
    },
    isStewer = true
}

this.list.teaWarmer = Activator:new{
    type = this.types.teaWarmer,
    mcmSetting = nil,
    ids = {
        ["ashfall_teawarmer_01"] = true,
    },
}

this.list.kettle = Activator:new{
    type = this.types.kettle,
    mcmSetting = nil,
    ids = {
        --added in staticConfigs
    },
}

this.list.cookingPot = Activator:new{
    type = this.types.cookingPot,
    mcmSetting = nil,
    ids = {
        --Added in staticConfigs
    }
}

this.list.waterContainer = Activator:new{
    type = this.types.waterContainer,
    mcmSetting = nil,
    ids = {
        --Added in staticConfigs
    }
}

this.list.stoneSource = Activator:new{
    name = "Rock",
    type = this.types.stoneSource,
    mcmSetting = nil,
    patterns = {
        ["terrain_rock"] = true,
        ["terrain_ashland_rock"] = true,
    }
}

this.list.waterFilter = Activator:new{
    name = "Water Filter",
    type = this.types.waterFilter,
    ids = {
        ["ashfall_water_filter"] = true,
    }
}

return this