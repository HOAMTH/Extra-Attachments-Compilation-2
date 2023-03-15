Hooks:PostHook(WeaponFactoryTweakData, "init", "EAC_animations", function(self)

local scar_offset      = Vector3(0, 0, -1.75)
local komodo_offset    = Vector3(0, 0, -6.6)
local amcar_offset     = Vector3(-0.02, 0, -0.25)
local m4_offset        = Vector3(0, 0, 0.2)
local m16_offset       = Vector3(0, 0, -0.27)
local olympic_offset   = Vector3(-0.005, 0, -3.32)
local ak74_offset        = Vector3(0.05, 0, -0.35)
local akm_offset       = Vector3(0.05, 0, -0.35)
local akm_gold_offset  = Vector3(0.05, 0, -0.35)
local akmsu_offset     = Vector3(0, 0, -0.42)   
local saiga_offset     = Vector3(0, 0, -0.35)   
local ak5_offset       = Vector3(0, 0, 1.06)
local g36_offset       = Vector3(0, 0, 0.05)
local mp5_offset       = Vector3(0, 0, -1.75)
local s552_offset      = Vector3(0.045, 0, 2.27)
local g3_offset        = Vector3(0.0, 6, -1.72) 
local galil_offset     = Vector3(0, 0, -1.5)    
local fal_offset       = Vector3(0, 0, 2.625)
local tti_offset       = Vector3(0, 0, -0.3)
local flint_offset     = Vector3(0, 2, -1.88)   
local mac10_offset     = Vector3(0, 0, -1.65)
local basset_offset    = Vector3(0.01, 0, 2.1)
local vhs_offset       = Vector3(0, 0, 1.38)
local famas_offset     = Vector3(0, 0, 2.25)
local shepheard_offset = Vector3(0, 0, -3.29)
local vityaz_offset    = Vector3(0, 0, 1.25)
local hk51b_offset     = Vector3(0, 0, 0)
local hcar_offset      = Vector3(4.9, 10, -3.8)
local sko12_offset     = Vector3(0, 0, -3.23341)
local m249_offset      = Vector3(2.279, -9.74, -1.626)
local qbu_offset	   = Vector3(0, 19, -0.9)
local m14_offset	   = Vector3(0, 11, -3)
local l85a2_offset     = Vector3(0, 0, -1.38)
local aug_offset       = Vector3(-0.03, 0, 4.36)
local rota_offset      = Vector3(0, 0, 1.05)
local schakal_offset   = Vector3(-0.01, 0, 0.45)
local hajk_offset      = Vector3(-0.01, 0, -2.65)
local tecci_offset     = Vector3(0.0, -3, -1.15)	
local shak12_offset     = Vector3(0.0, 4, 0.79026)	

local specter_pb_offset = Vector3(0,0,-3.1)
local cs_offset = Vector3(0,0,-3.2)
local atibal_offset = Vector3(0,0,-6.15)
local hamr_offset = Vector3(0,0,-3.65)
-- Shared Vertical Grips
local p_eff = {
	"wpn_fps_upg_vg_verticalgrip",
	"wpn_fps_upg_vg_stubby",
	"wpn_fps_upg_vg_moe",
	"wpn_fps_upg_vg_tecci",
	"wpn_fps_upg_vg_foldable",
	"wpn_fps_upg_vg_grippod",
	"wpn_fps_upg_vg_m32",
	"wpn_fps_upg_vg_mk2",
	"wpn_fps_upg_vg_polymer",
	"wpn_fps_upg_vg_shak12",
	"wpn_fps_smg_schakal_vg_surefire"
}
for i, part_id in ipairs(p_eff) do
	if not self.parts[part_id].override then self.parts[part_id].override = {} end
	self.wpn_fps_ass_scar.override[part_id]      = {override_weapon = {weapon_hold = "hajk"   , use_stance = "hajk"   }}
	self.wpn_fps_ass_komodo.override[part_id]    = {override_weapon = {weapon_hold = "mp9"    , use_stance = "mp9"    }}
	self.wpn_fps_ass_amcar.override[part_id]     = {override_weapon = {weapon_hold = "hajk"   , use_stance = "hajk"   }}
	self.wpn_fps_ass_m4.override[part_id]        = {override_weapon = {weapon_hold = "hajk"   , use_stance = "hajk"   }}
	self.wpn_fps_ass_m16.override[part_id]       = {override_weapon = {weapon_hold = "hajk"   , use_stance = "hajk"   }}
	self.wpn_fps_smg_olympic.override[part_id]   = {override_weapon = {weapon_hold = "schakal", use_stance = "schakal"}}
	self.wpn_fps_ass_74.override[part_id]        = {override_weapon = {weapon_hold = "rpk"    , use_stance = "rpk"    }}
	self.wpn_fps_ass_akm.override[part_id]       = {override_weapon = {weapon_hold = "rpk"    , use_stance = "rpk"    }}
	self.wpn_fps_ass_akm_gold.override[part_id]  = {override_weapon = {weapon_hold = "rpk"    , use_stance = "rpk"    }}
	self.wpn_fps_smg_akmsu.override[part_id]     = {override_weapon = {weapon_hold = "rpk"    , use_stance = "rpk"    }}
	self.wpn_fps_shot_saiga.override[part_id]    = {override_weapon = {weapon_hold = "rpk"    , use_stance = "rpk"    }}
	self.wpn_fps_ass_ak5.override[part_id]       = {override_weapon = {weapon_hold = "hajk"   , use_stance = "hajk"   }}
	self.wpn_fps_ass_g36.override[part_id]       = {override_weapon = {weapon_hold = "hajk"   , use_stance = "hajk"   }}
	self.wpn_fps_smg_mp5.override[part_id]       = {override_weapon = {weapon_hold = "schakal", use_stance = "schakal"}}
	self.wpn_fps_ass_s552.override[part_id]      = {override_weapon = {weapon_hold = "hajk"   , use_stance = "hajk"   }}
	self.wpn_fps_ass_g3.override[part_id]        = {override_weapon = {weapon_hold = "rpk"    , use_stance = "rpk"    }}
	self.wpn_fps_ass_galil.override[part_id]     = {override_weapon = {weapon_hold = "rpk"    , use_stance = "rpk"    }}
	self.wpn_fps_ass_fal.override[part_id]       = {override_weapon = {weapon_hold = "hajk"   , use_stance = "hajk"   }}
	self.wpn_fps_snp_tti.override[part_id]       = {override_weapon = {weapon_hold = "hajk"   , use_stance = "hajk"   }}
	self.wpn_fps_ass_flint.override[part_id]     = {override_weapon = {weapon_hold = "rpk"    , use_stance = "rpk"    }}
	self.wpn_fps_smg_mac10.override[part_id]     = {override_weapon = {weapon_hold = "mp9"    , use_stance = "mp9"    }}
	self.wpn_fps_sho_basset.override[part_id]    = {override_weapon = {weapon_hold = "l85a2"  , use_stance = "l85a2"  }}
	self.wpn_fps_ass_vhs.override[part_id]   	 = {override_weapon = {weapon_hold = "l85a2"  , use_stance = "l85a2"  }}
	self.wpn_fps_ass_famas.override[part_id]   	 = {override_weapon = {weapon_hold = "l85a2"  , use_stance = "l85a2"  }}
	self.wpn_fps_smg_shepheard.override[part_id] = {override_weapon = {weapon_hold = "schakal", use_stance = "schakal"}}
	self.wpn_fps_smg_vityaz.override[part_id]    = {override_weapon = {weapon_hold = "hajk"   , use_stance = "hajk"   }}
	self.wpn_fps_lmg_hk51b.override[part_id]     = {override_weapon = {weapon_hold = "tommy"  , use_stance = "m1928"  }}
	self.wpn_fps_lmg_hcar.override[part_id]      = {override_weapon = {weapon_hold = "rpk"    , use_stance = "rpk"    }}
	self.wpn_fps_sho_sko12.override[part_id]     = {override_weapon = {weapon_hold = "rpk"    , use_stance = "rpk"    }}
	self.wpn_fps_lmg_m249.override[part_id]      = {override_weapon = {weapon_hold = "tommy"  , use_stance = "m249"   }}
	self.wpn_fps_snp_qbu88.override[part_id] 	 = {override_weapon = {weapon_hold = "hajk"	  , use_stance = "hajk"   }}
	self.wpn_fps_ass_m14.override[part_id]  	 = {override_weapon = {weapon_hold = "rpk", use_stance = "rpk"}}
	
	self.parts[part_id].override.wpn_fps_upg_o_specter_piggyback = {
		stance_mod = {
			wpn_fps_ass_scar      = {translation = deep_clone(self.parts.wpn_fps_upg_o_specter_piggyback.stance_mod.wpn_fps_smg_hajk.translation) - scar_offset         },
			wpn_fps_ass_komodo    = {translation = deep_clone(self.parts.wpn_fps_upg_o_specter_piggyback.stance_mod.wpn_fps_smg_mp9.translation) - komodo_offset        },
			wpn_fps_ass_amcar     = {translation = deep_clone(self.parts.wpn_fps_upg_o_specter_piggyback.stance_mod.wpn_fps_smg_hajk.translation) - amcar_offset        },
			wpn_fps_ass_m4        = {translation = deep_clone(self.parts.wpn_fps_upg_o_specter_piggyback.stance_mod.wpn_fps_smg_hajk.translation) - m4_offset           },
			wpn_fps_ass_m16       = {translation = deep_clone(self.parts.wpn_fps_upg_o_specter_piggyback.stance_mod.wpn_fps_smg_hajk.translation) - m16_offset          },
			wpn_fps_smg_olympic   = {translation = deep_clone(self.parts.wpn_fps_upg_o_specter_piggyback.stance_mod.wpn_fps_smg_schakal.translation) - olympic_offset   },
			wpn_fps_ass_74        = {translation = ak74_offset - specter_pb_offset                                                                                       },
			wpn_fps_ass_akm       = {translation = akm_offset      - specter_pb_offset                                                                                   },
			wpn_fps_ass_akm_gold  = {translation = akm_gold_offset - specter_pb_offset                                                                                   },
			wpn_fps_smg_akmsu     = {translation = akmsu_offset - specter_pb_offset                                                                                      },
			wpn_fps_shot_saiga    = {translation = saiga_offset - specter_pb_offset                                                                                      },
			wpn_fps_ass_ak5       = {translation = deep_clone(self.parts.wpn_fps_upg_o_specter_piggyback.stance_mod.wpn_fps_smg_hajk.translation) - ak5_offset          },
			wpn_fps_ass_g36       = {translation = deep_clone(self.parts.wpn_fps_upg_o_specter_piggyback.stance_mod.wpn_fps_smg_hajk.translation) - g36_offset          },
			wpn_fps_smg_mp5       = {translation = deep_clone(self.parts.wpn_fps_upg_o_specter_piggyback.stance_mod.wpn_fps_smg_schakal.translation) - mp5_offset       },
			wpn_fps_ass_s552      = {translation = deep_clone(self.parts.wpn_fps_upg_o_specter_piggyback.stance_mod.wpn_fps_smg_hajk.translation) - s552_offset         },
			wpn_fps_ass_g3        = {translation = g3_offset    - specter_pb_offset                                                                                      },
			wpn_fps_ass_galil     = {translation = galil_offset - specter_pb_offset                                                                                      },
			wpn_fps_ass_fal       = {translation = deep_clone(self.parts.wpn_fps_upg_o_specter_piggyback.stance_mod.wpn_fps_smg_hajk.translation) - fal_offset          },
			wpn_fps_snp_tti       = {translation = deep_clone(self.parts.wpn_fps_upg_o_specter_piggyback.stance_mod.wpn_fps_smg_hajk.translation) - tti_offset          },
			wpn_fps_ass_flint     = {translation = flint_offset - specter_pb_offset                                                                                      },
			wpn_fps_smg_mac10     = {translation = deep_clone(self.parts.wpn_fps_upg_o_specter_piggyback.stance_mod.wpn_fps_smg_mp9.translation) - mac10_offset         },
			wpn_fps_sho_basset    = {translation = deep_clone(self.parts.wpn_fps_upg_o_specter_piggyback.stance_mod.wpn_fps_ass_l85a2.translation) - basset_offset      },
			wpn_fps_ass_vhs       = {translation = deep_clone(self.parts.wpn_fps_upg_o_specter_piggyback.stance_mod.wpn_fps_ass_l85a2.translation) - vhs_offset         },
			wpn_fps_ass_famas     = {translation = deep_clone(self.parts.wpn_fps_upg_o_specter_piggyback.stance_mod.wpn_fps_ass_l85a2.translation) - famas_offset       },
			wpn_fps_smg_shepheard = {translation = deep_clone(self.parts.wpn_fps_upg_o_specter_piggyback.stance_mod.wpn_fps_smg_schakal.translation) - shepheard_offset },
			wpn_fps_smg_vityaz    = {translation = deep_clone(self.parts.wpn_fps_upg_o_specter_piggyback.stance_mod.wpn_fps_smg_hajk.translation) - vityaz_offset       },
			wpn_fps_lmg_hk51b     = {translation = deep_clone(self.parts.wpn_fps_upg_o_specter_piggyback.stance_mod.wpn_fps_smg_thompson.translation) - hk51b_offset    },
			wpn_fps_lmg_hcar      = {translation = hcar_offset - specter_pb_offset                                                                                       },
			wpn_fps_sho_sko12     = {translation = sko12_offset - specter_pb_offset                                                                                      },
			wpn_fps_lmg_m249      = {translation = m249_offset - specter_pb_offset                                                                                       },
			wpn_fps_snp_qbu88     = {translation = deep_clone(self.parts.wpn_fps_upg_o_specter_piggyback.stance_mod.wpn_fps_smg_hajk.translation) - qbu_offset  	    },
			wpn_fps_ass_m14       = {translation = deep_clone(self.parts.wpn_fps_upg_o_specter_piggyback.stance_mod.wpn_fps_smg_hajk.translation) - m14_offset  	    },
			wpn_fps_ass_l85a2     = {translation = deep_clone(self.parts.wpn_fps_upg_o_specter_piggyback.stance_mod.wpn_fps_ass_vhs.translation) - l85a2_offset         },
			wpn_fps_ass_aug       = {translation = deep_clone(self.parts.wpn_fps_upg_o_specter_piggyback.stance_mod.wpn_fps_ass_vhs.translation) - aug_offset           },
			wpn_fps_sho_rota      = {translation = deep_clone(self.parts.wpn_fps_upg_o_specter_piggyback.stance_mod.wpn_fps_ass_vhs.translation) - rota_offset          },
			wpn_fps_smg_schakal   = {translation = deep_clone(self.parts.wpn_fps_upg_o_specter_piggyback.stance_mod.wpn_fps_ass_fal.translation) - schakal_offset       },
			wpn_fps_smg_hajk      = {translation = deep_clone(self.parts.wpn_fps_upg_o_specter_piggyback.stance_mod.wpn_fps_ass_fal.translation) - hajk_offset          },
			wpn_fps_ass_tecci     = {translation = deep_clone(self.parts.wpn_fps_upg_o_specter_piggyback.stance_mod.wpn_fps_ass_g3.translation) - tecci_offset    		}
		}
	}	
	self.parts[part_id].override.wpn_fps_upg_o_cs_piggyback = {
		stance_mod = {
			wpn_fps_ass_scar      = {translation = deep_clone(self.parts.wpn_fps_upg_o_cs_piggyback.stance_mod.wpn_fps_smg_hajk.translation) - scar_offset         },
			wpn_fps_ass_komodo    = {translation = deep_clone(self.parts.wpn_fps_upg_o_cs_piggyback.stance_mod.wpn_fps_smg_mp9.translation) - komodo_offset        },
			wpn_fps_ass_amcar     = {translation = deep_clone(self.parts.wpn_fps_upg_o_cs_piggyback.stance_mod.wpn_fps_smg_hajk.translation) - amcar_offset        },
			wpn_fps_ass_m4        = {translation = deep_clone(self.parts.wpn_fps_upg_o_cs_piggyback.stance_mod.wpn_fps_smg_hajk.translation) - m4_offset           },
			wpn_fps_ass_m16       = {translation = deep_clone(self.parts.wpn_fps_upg_o_cs_piggyback.stance_mod.wpn_fps_smg_hajk.translation) - m16_offset          },
			wpn_fps_smg_olympic   = {translation = deep_clone(self.parts.wpn_fps_upg_o_cs_piggyback.stance_mod.wpn_fps_smg_schakal.translation) - olympic_offset   },
			wpn_fps_ass_74        = {translation = ak74_offset - cs_offset                                                                                       },
			wpn_fps_ass_akm       = {translation = akm_offset      - cs_offset                                                                                   },
			wpn_fps_ass_akm_gold  = {translation = akm_gold_offset - cs_offset                                                                                   },
			wpn_fps_smg_akmsu     = {translation = akmsu_offset - cs_offset                                                                                      },
			wpn_fps_shot_saiga    = {translation = saiga_offset - cs_offset                                                                                      },
			wpn_fps_ass_ak5       = {translation = deep_clone(self.parts.wpn_fps_upg_o_cs_piggyback.stance_mod.wpn_fps_smg_hajk.translation) - ak5_offset          },
			wpn_fps_ass_g36       = {translation = deep_clone(self.parts.wpn_fps_upg_o_cs_piggyback.stance_mod.wpn_fps_smg_hajk.translation) - g36_offset          },
			wpn_fps_smg_mp5       = {translation = deep_clone(self.parts.wpn_fps_upg_o_cs_piggyback.stance_mod.wpn_fps_smg_schakal.translation) - mp5_offset       },
			wpn_fps_ass_s552      = {translation = deep_clone(self.parts.wpn_fps_upg_o_cs_piggyback.stance_mod.wpn_fps_smg_hajk.translation) - s552_offset         },
			wpn_fps_ass_g3        = {translation = g3_offset    - cs_offset                                                                                      },
			wpn_fps_ass_galil     = {translation = galil_offset - cs_offset                                                                                      },
			wpn_fps_ass_fal       = {translation = deep_clone(self.parts.wpn_fps_upg_o_cs_piggyback.stance_mod.wpn_fps_smg_hajk.translation) - fal_offset          },
			wpn_fps_snp_tti       = {translation = deep_clone(self.parts.wpn_fps_upg_o_cs_piggyback.stance_mod.wpn_fps_smg_hajk.translation) - tti_offset          },
			wpn_fps_ass_flint     = {translation = flint_offset - cs_offset                                                                                      },
			wpn_fps_smg_mac10     = {translation = deep_clone(self.parts.wpn_fps_upg_o_cs_piggyback.stance_mod.wpn_fps_smg_mp9.translation) - mac10_offset         },
			wpn_fps_sho_basset    = {translation = deep_clone(self.parts.wpn_fps_upg_o_cs_piggyback.stance_mod.wpn_fps_ass_l85a2.translation) - basset_offset      },
			wpn_fps_ass_vhs       = {translation = deep_clone(self.parts.wpn_fps_upg_o_cs_piggyback.stance_mod.wpn_fps_ass_l85a2.translation) - vhs_offset         },
			wpn_fps_ass_famas     = {translation = deep_clone(self.parts.wpn_fps_upg_o_cs_piggyback.stance_mod.wpn_fps_ass_l85a2.translation) - famas_offset       },
			wpn_fps_smg_shepheard = {translation = deep_clone(self.parts.wpn_fps_upg_o_cs_piggyback.stance_mod.wpn_fps_smg_schakal.translation) - shepheard_offset },
			wpn_fps_smg_vityaz    = {translation = deep_clone(self.parts.wpn_fps_upg_o_cs_piggyback.stance_mod.wpn_fps_smg_hajk.translation) - vityaz_offset       },
			wpn_fps_lmg_hk51b     = {translation = deep_clone(self.parts.wpn_fps_upg_o_cs_piggyback.stance_mod.wpn_fps_smg_thompson.translation) - hk51b_offset    },
			wpn_fps_lmg_hcar      = {translation = hcar_offset - cs_offset                                                                                       },
			wpn_fps_sho_sko12     = {translation = sko12_offset - cs_offset                                                                                      },
			wpn_fps_lmg_m249      = {translation = m249_offset - cs_offset                                                                                       },
			wpn_fps_snp_qbu88     = {translation = deep_clone(self.parts.wpn_fps_upg_o_cs_piggyback.stance_mod.wpn_fps_smg_hajk.translation) - qbu_offset  	    },
			wpn_fps_ass_m14       = {translation = deep_clone(self.parts.wpn_fps_upg_o_cs_piggyback.stance_mod.wpn_fps_smg_hajk.translation) - m14_offset  	    },
			wpn_fps_ass_l85a2     = {translation = deep_clone(self.parts.wpn_fps_upg_o_cs_piggyback.stance_mod.wpn_fps_ass_vhs.translation) - l85a2_offset         },
			wpn_fps_ass_aug       = {translation = deep_clone(self.parts.wpn_fps_upg_o_cs_piggyback.stance_mod.wpn_fps_ass_vhs.translation) - aug_offset           },
			wpn_fps_sho_rota      = {translation = deep_clone(self.parts.wpn_fps_upg_o_cs_piggyback.stance_mod.wpn_fps_ass_vhs.translation) - rota_offset          },
			wpn_fps_smg_schakal   = {translation = deep_clone(self.parts.wpn_fps_upg_o_cs_piggyback.stance_mod.wpn_fps_ass_fal.translation) - schakal_offset       },
			wpn_fps_smg_hajk      = {translation = deep_clone(self.parts.wpn_fps_upg_o_cs_piggyback.stance_mod.wpn_fps_ass_fal.translation) - hajk_offset          },
			wpn_fps_ass_tecci     = {translation = deep_clone(self.parts.wpn_fps_upg_o_cs_piggyback.stance_mod.wpn_fps_ass_g3.translation) - tecci_offset    		}
		}
	}	
	self.parts[part_id].override.wpn_fps_upg_o_atibal_reddot = {
		stance_mod = {
			wpn_fps_ass_scar      = {translation = deep_clone(self.parts.wpn_fps_upg_o_atibal_reddot.stance_mod.wpn_fps_smg_hajk.translation) - scar_offset         },
			wpn_fps_ass_komodo    = {translation = deep_clone(self.parts.wpn_fps_upg_o_atibal_reddot.stance_mod.wpn_fps_smg_mp9.translation) - komodo_offset        },
			wpn_fps_ass_amcar     = {translation = deep_clone(self.parts.wpn_fps_upg_o_atibal_reddot.stance_mod.wpn_fps_smg_hajk.translation) - amcar_offset        },
			wpn_fps_ass_m4        = {translation = deep_clone(self.parts.wpn_fps_upg_o_atibal_reddot.stance_mod.wpn_fps_smg_hajk.translation) - m4_offset           },
			wpn_fps_ass_m16       = {translation = deep_clone(self.parts.wpn_fps_upg_o_atibal_reddot.stance_mod.wpn_fps_smg_hajk.translation) - m16_offset          },
			wpn_fps_smg_olympic   = {translation = deep_clone(self.parts.wpn_fps_upg_o_atibal_reddot.stance_mod.wpn_fps_smg_schakal.translation) - olympic_offset   },
			wpn_fps_ass_74        = {translation = ak74_offset - atibal_offset                                                                                       },
			wpn_fps_ass_akm       = {translation = akm_offset      - atibal_offset                                                                                   },
			wpn_fps_ass_akm_gold  = {translation = akm_gold_offset - atibal_offset                                                                                   },
			wpn_fps_smg_akmsu     = {translation = akmsu_offset - atibal_offset                                                                                      },
			wpn_fps_shot_saiga    = {translation = saiga_offset - atibal_offset                                                                                      },
			wpn_fps_ass_ak5       = {translation = deep_clone(self.parts.wpn_fps_upg_o_atibal_reddot.stance_mod.wpn_fps_smg_hajk.translation) - ak5_offset          },
			wpn_fps_ass_g36       = {translation = deep_clone(self.parts.wpn_fps_upg_o_atibal_reddot.stance_mod.wpn_fps_smg_hajk.translation) - g36_offset          },
			wpn_fps_smg_mp5       = {translation = deep_clone(self.parts.wpn_fps_upg_o_atibal_reddot.stance_mod.wpn_fps_smg_schakal.translation) - mp5_offset       },
			wpn_fps_ass_s552      = {translation = deep_clone(self.parts.wpn_fps_upg_o_atibal_reddot.stance_mod.wpn_fps_smg_hajk.translation) - s552_offset         },
			wpn_fps_ass_g3        = {translation = g3_offset    - atibal_offset                                                                                      },
			wpn_fps_ass_galil     = {translation = galil_offset - atibal_offset                                                                                      },
			wpn_fps_ass_fal       = {translation = deep_clone(self.parts.wpn_fps_upg_o_atibal_reddot.stance_mod.wpn_fps_smg_hajk.translation) - fal_offset          },
			wpn_fps_snp_tti       = {translation = deep_clone(self.parts.wpn_fps_upg_o_atibal_reddot.stance_mod.wpn_fps_smg_hajk.translation) - tti_offset          },
			wpn_fps_ass_flint     = {translation = flint_offset - atibal_offset                                                                                      },
			wpn_fps_smg_mac10     = {translation = deep_clone(self.parts.wpn_fps_upg_o_atibal_reddot.stance_mod.wpn_fps_smg_mp9.translation) - mac10_offset         },
			wpn_fps_sho_basset    = {translation = deep_clone(self.parts.wpn_fps_upg_o_atibal_reddot.stance_mod.wpn_fps_ass_l85a2.translation) - basset_offset      },
			wpn_fps_ass_vhs       = {translation = deep_clone(self.parts.wpn_fps_upg_o_atibal_reddot.stance_mod.wpn_fps_ass_l85a2.translation) - vhs_offset         },
			wpn_fps_ass_famas     = {translation = deep_clone(self.parts.wpn_fps_upg_o_atibal_reddot.stance_mod.wpn_fps_ass_l85a2.translation) - famas_offset       },
			wpn_fps_smg_shepheard = {translation = deep_clone(self.parts.wpn_fps_upg_o_atibal_reddot.stance_mod.wpn_fps_smg_schakal.translation) - shepheard_offset },
			wpn_fps_smg_vityaz    = {translation = deep_clone(self.parts.wpn_fps_upg_o_atibal_reddot.stance_mod.wpn_fps_smg_hajk.translation) - vityaz_offset       },
			wpn_fps_lmg_hk51b     = {translation = deep_clone(self.parts.wpn_fps_upg_o_atibal_reddot.stance_mod.wpn_fps_smg_thompson.translation) - hk51b_offset    },
			wpn_fps_lmg_hcar      = {translation = hcar_offset - atibal_offset                                                                                       },
			wpn_fps_sho_sko12     = {translation = sko12_offset - atibal_offset                                                                                      },
			wpn_fps_lmg_m249      = {translation = m249_offset - atibal_offset                                                                                       },
			wpn_fps_snp_qbu88     = {translation = deep_clone(self.parts.wpn_fps_upg_o_atibal_reddot.stance_mod.wpn_fps_smg_hajk.translation) - qbu_offset  	    },
			wpn_fps_ass_m14       = {translation = deep_clone(self.parts.wpn_fps_upg_o_atibal_reddot.stance_mod.wpn_fps_smg_hajk.translation) - m14_offset  	    },
			wpn_fps_ass_l85a2     = {translation = deep_clone(self.parts.wpn_fps_upg_o_atibal_reddot.stance_mod.wpn_fps_ass_vhs.translation) - l85a2_offset         },
			wpn_fps_ass_aug       = {translation = deep_clone(self.parts.wpn_fps_upg_o_atibal_reddot.stance_mod.wpn_fps_ass_vhs.translation) - aug_offset           },
			wpn_fps_sho_rota      = {translation = deep_clone(self.parts.wpn_fps_upg_o_atibal_reddot.stance_mod.wpn_fps_ass_vhs.translation) - rota_offset          },
			wpn_fps_smg_schakal   = {translation = deep_clone(self.parts.wpn_fps_upg_o_atibal_reddot.stance_mod.wpn_fps_ass_fal.translation) - schakal_offset       },
			wpn_fps_smg_hajk      = {translation = deep_clone(self.parts.wpn_fps_upg_o_atibal_reddot.stance_mod.wpn_fps_ass_fal.translation) - hajk_offset          },
			wpn_fps_ass_tecci     = {translation = deep_clone(self.parts.wpn_fps_upg_o_atibal_reddot.stance_mod.wpn_fps_ass_g3.translation) - tecci_offset    		}
		}
	}
	self.parts[part_id].override.wpn_fps_upg_o_hamr_reddot = {
		stance_mod = {
			wpn_fps_ass_scar      = {translation = deep_clone(self.parts.wpn_fps_upg_o_hamr_reddot.stance_mod.wpn_fps_smg_hajk.translation) - scar_offset         },
			wpn_fps_ass_komodo    = {translation = deep_clone(self.parts.wpn_fps_upg_o_hamr_reddot.stance_mod.wpn_fps_smg_mp9.translation) - komodo_offset        },
			wpn_fps_ass_amcar     = {translation = deep_clone(self.parts.wpn_fps_upg_o_hamr_reddot.stance_mod.wpn_fps_smg_hajk.translation) - amcar_offset        },
			wpn_fps_ass_m4        = {translation = deep_clone(self.parts.wpn_fps_upg_o_hamr_reddot.stance_mod.wpn_fps_smg_hajk.translation) - m4_offset           },
			wpn_fps_ass_m16       = {translation = deep_clone(self.parts.wpn_fps_upg_o_hamr_reddot.stance_mod.wpn_fps_smg_hajk.translation) - m16_offset          },
			wpn_fps_smg_olympic   = {translation = deep_clone(self.parts.wpn_fps_upg_o_hamr_reddot.stance_mod.wpn_fps_smg_schakal.translation) - olympic_offset   },
			wpn_fps_ass_74        = {translation = ak74_offset - hamr_offset                                                                                       },
			wpn_fps_ass_akm       = {translation = akm_offset      - hamr_offset                                                                                   },
			wpn_fps_ass_akm_gold  = {translation = akm_gold_offset - hamr_offset                                                                                   },
			wpn_fps_smg_akmsu     = {translation = akmsu_offset - hamr_offset                                                                                      },
			wpn_fps_shot_saiga    = {translation = saiga_offset - hamr_offset                                                                                      },
			wpn_fps_ass_ak5       = {translation = deep_clone(self.parts.wpn_fps_upg_o_hamr_reddot.stance_mod.wpn_fps_smg_hajk.translation) - ak5_offset          },
			wpn_fps_ass_g36       = {translation = deep_clone(self.parts.wpn_fps_upg_o_hamr_reddot.stance_mod.wpn_fps_smg_hajk.translation) - g36_offset          },
			wpn_fps_smg_mp5       = {translation = deep_clone(self.parts.wpn_fps_upg_o_hamr_reddot.stance_mod.wpn_fps_smg_schakal.translation) - mp5_offset       },
			wpn_fps_ass_s552      = {translation = deep_clone(self.parts.wpn_fps_upg_o_hamr_reddot.stance_mod.wpn_fps_smg_hajk.translation) - s552_offset         },
			wpn_fps_ass_g3        = {translation = g3_offset    - hamr_offset                                                                                      },
			wpn_fps_ass_galil     = {translation = galil_offset - hamr_offset                                                                                      },
			wpn_fps_ass_fal       = {translation = deep_clone(self.parts.wpn_fps_upg_o_hamr_reddot.stance_mod.wpn_fps_smg_hajk.translation) - fal_offset          },
			wpn_fps_snp_tti       = {translation = deep_clone(self.parts.wpn_fps_upg_o_hamr_reddot.stance_mod.wpn_fps_smg_hajk.translation) - tti_offset          },
			wpn_fps_ass_flint     = {translation = flint_offset - hamr_offset                                                                                      },
			wpn_fps_smg_mac10     = {translation = deep_clone(self.parts.wpn_fps_upg_o_hamr_reddot.stance_mod.wpn_fps_smg_mp9.translation) - mac10_offset         },
			wpn_fps_sho_basset    = {translation = deep_clone(self.parts.wpn_fps_upg_o_hamr_reddot.stance_mod.wpn_fps_ass_l85a2.translation) - basset_offset      },
			wpn_fps_ass_vhs       = {translation = deep_clone(self.parts.wpn_fps_upg_o_hamr_reddot.stance_mod.wpn_fps_ass_l85a2.translation) - vhs_offset         },
			wpn_fps_ass_famas     = {translation = deep_clone(self.parts.wpn_fps_upg_o_hamr_reddot.stance_mod.wpn_fps_ass_l85a2.translation) - famas_offset       },
			wpn_fps_smg_shepheard = {translation = deep_clone(self.parts.wpn_fps_upg_o_hamr_reddot.stance_mod.wpn_fps_smg_schakal.translation) - shepheard_offset },
			wpn_fps_smg_vityaz    = {translation = deep_clone(self.parts.wpn_fps_upg_o_hamr_reddot.stance_mod.wpn_fps_smg_hajk.translation) - vityaz_offset       },
			wpn_fps_lmg_hk51b     = {translation = deep_clone(self.parts.wpn_fps_upg_o_hamr_reddot.stance_mod.wpn_fps_smg_thompson.translation) - hk51b_offset    },
			wpn_fps_lmg_hcar      = {translation = hcar_offset - hamr_offset                                                                                       },
			wpn_fps_sho_sko12     = {translation = sko12_offset - hamr_offset                                                                                      },
			wpn_fps_lmg_m249      = {translation = m249_offset - hamr_offset                                                                                       },
			wpn_fps_snp_qbu88     = {translation = deep_clone(self.parts.wpn_fps_upg_o_hamr_reddot.stance_mod.wpn_fps_smg_hajk.translation) - qbu_offset  	    },
			wpn_fps_ass_m14       = {translation = deep_clone(self.parts.wpn_fps_upg_o_hamr_reddot.stance_mod.wpn_fps_smg_hajk.translation) - m14_offset  	    },
			wpn_fps_ass_l85a2     = {translation = deep_clone(self.parts.wpn_fps_upg_o_hamr_reddot.stance_mod.wpn_fps_ass_vhs.translation) - l85a2_offset         },
			wpn_fps_ass_aug       = {translation = deep_clone(self.parts.wpn_fps_upg_o_hamr_reddot.stance_mod.wpn_fps_ass_vhs.translation) - aug_offset           },
			wpn_fps_sho_rota      = {translation = deep_clone(self.parts.wpn_fps_upg_o_hamr_reddot.stance_mod.wpn_fps_ass_vhs.translation) - rota_offset          },
			wpn_fps_smg_schakal   = {translation = deep_clone(self.parts.wpn_fps_upg_o_hamr_reddot.stance_mod.wpn_fps_ass_fal.translation) - schakal_offset       },
			wpn_fps_smg_hajk      = {translation = deep_clone(self.parts.wpn_fps_upg_o_hamr_reddot.stance_mod.wpn_fps_ass_fal.translation) - hajk_offset          },
			wpn_fps_ass_tecci     = {translation = deep_clone(self.parts.wpn_fps_upg_o_hamr_reddot.stance_mod.wpn_fps_ass_g3.translation) - tecci_offset    		}
		}
	}

end

-- NO VG
local flat = {
	"wpn_fps_upg_vg_none",
	"wpn_fps_upg_vg_cobra",
	"wpn_fps_upg_vg_afg"
}
for i, part_id in ipairs(flat) do
	if not self.parts[part_id].override then self.parts[part_id].override = {} end
	self.wpn_fps_ass_l85a2.override[part_id]   = {override_weapon = {weapon_hold = "vhs"    , use_stance = "vhs"    }}
	self.wpn_fps_ass_aug.override[part_id]     = {override_weapon = {weapon_hold = "vhs"    , use_stance = "vhs"    }}
	self.wpn_fps_sho_rota.override[part_id]    = {override_weapon = {weapon_hold = "vhs"    , use_stance = "vhs"    }}
	self.wpn_fps_smg_schakal.override[part_id] = {override_weapon = {weapon_hold = "fal"    , use_stance = "fal"    }}
	self.wpn_fps_smg_hajk.override[part_id]    = {override_weapon = {weapon_hold = "fal"    , use_stance = "fal"    }}
	self.wpn_fps_ass_tecci.override[part_id]   = {override_weapon = {weapon_hold = "g3"     , use_stance = "g3"     }}
	self.wpn_fps_ass_shak12.override[part_id]  = {override_weapon = {weapon_hold = "vhs"    , use_stance = "vhs"    }}

	self.parts[part_id].override.wpn_fps_upg_o_specter_piggyback = {
		stance_mod = {
			wpn_fps_ass_shak12    = {translation = deep_clone(self.parts.wpn_fps_upg_o_specter_piggyback.stance_mod.wpn_fps_ass_vhs.translation) - shak12_offset - specter_pb_offset }
		}
	}
end
-- RPK Foregrips
local rpk_fg = {
	"wpn_fps_lmg_rpk_fg_combo4",
	"wpn_fps_lmg_rpk_fg_combo1"
}
for i, part_id in ipairs(rpk_fg) do
	self.wpn_fps_ass_74.override[part_id]       = {override_weapon = {weapon_hold = "rpk"    , use_stance = "rpk"    }}
	self.wpn_fps_ass_akm.override[part_id]      = {override_weapon = {weapon_hold = "rpk"    , use_stance = "rpk"    }}
	self.wpn_fps_ass_akm_gold.override[part_id] = {override_weapon = {weapon_hold = "rpk"    , use_stance = "rpk"    }}
	self.wpn_fps_shot_saiga.override[part_id]   = {override_weapon = {weapon_hold = "rpk"    , use_stance = "rpk"    }}
end

local rpk_offset = Vector3(0, 0, 0)
local rpk_rotation = Rotation(0, 0, 0)

if BeardLib.Utils:FindMod("LMG Steelsights mod") then
	-- log("[EAC] LMG Steelsights Mod Found!")
	rpk_offset = Vector3(0, 0, 0.35)
	rpk_rotation = Rotation(0, 0, 0)
else
	rpk_offset = Vector3(-5.6, -4, 2.3)
	rpk_rotation = Rotation(0, 0, 5)
end
self.parts.wpn_fps_upg_vg_adjust.stance_mod = {
	-- VG added
		wpn_fps_ass_scar        = {translation = Vector3(0, 0, -1.75)},
		wpn_fps_ass_komodo      = {translation = Vector3(0, 0, -6.6)},
		wpn_fps_ass_amcar       = {translation = Vector3(-0.02, 0, -0.25)},
		wpn_fps_ass_m4          = {translation = Vector3(0, 0, 0.2)},
		wpn_fps_ass_m16         = {translation = Vector3(0, 0, -0.27)},
		wpn_fps_smg_olympic     = {translation = Vector3(-0.005, 0, -3.32)},
		wpn_fps_ass_74          = {translation = Vector3(0.05, 0, -0.35) + rpk_offset, rotation = rpk_rotation},
		wpn_fps_ass_akm         = {translation = Vector3(0.05, 0, -0.35) + rpk_offset, rotation = rpk_rotation},
		wpn_fps_ass_akm_gold    = {translation = Vector3(0.05, 0, -0.35) + rpk_offset, rotation = rpk_rotation},
		wpn_fps_smg_akmsu       = {translation = Vector3(0, 0, -0.42)    + rpk_offset, rotation = rpk_rotation},
		wpn_fps_shot_saiga      = {translation = Vector3(0, 0, -0.35)    + rpk_offset, rotation = rpk_rotation},
		wpn_fps_ass_ak5         = {translation = Vector3(0, 0, 1.06)},
		wpn_fps_ass_g36         = {translation = Vector3(0, 0, 0.05)},
		wpn_fps_smg_mp5         = {translation = Vector3(0, 0, -1.75)},
		wpn_fps_ass_s552        = {translation = Vector3(0.045, 0, 2.27)},
		wpn_fps_ass_g3          = {translation = Vector3(0.0, 6, -1.72)  + rpk_offset, rotation = rpk_rotation},
		wpn_fps_ass_galil       = {translation = Vector3(0, 0, -1.5)     + rpk_offset, rotation = rpk_rotation},
		wpn_fps_ass_fal         = {translation = Vector3(0, 0, 2.625)},
		wpn_fps_snp_tti         = {translation = Vector3(0, 0, -0.3)},
		wpn_fps_ass_flint       = {translation = Vector3(0, 2, -1.88)    + rpk_offset, rotation = rpk_rotation},
		wpn_fps_smg_mac10       = {translation = Vector3(0, 0, -1.65)},
		wpn_fps_sho_basset      = {translation = Vector3(0.01, 0, 2.1)},
		wpn_fps_ass_vhs      	= {translation = Vector3(0, 0, 1.38)},
		wpn_fps_ass_famas      	= {translation = Vector3(0, 0, 2.25)},
		wpn_fps_smg_shepheard   = {translation = Vector3(0, 0, -3.29)},
		wpn_fps_smg_vityaz   	= {translation = Vector3(0, 0, 1.25)},
		wpn_fps_lmg_hk51b       = {translation = Vector3(0, 0, 0), Rotation(0, 0, 0)},
		wpn_fps_lmg_hcar	  	= {translation = Vector3(4.9, 10, -3.8), rotation = Rotation(0.1, 0, 10.5)},
		wpn_fps_sho_sko12   	= {translation = Vector3(0, 0, -3.23341)},
		wpn_fps_snp_qbu88   	= {translation = Vector3(0, 19, -0.9)},
		wpn_fps_lmg_m249    	= {translation = Vector3(2.279, -9.74, -1.626), rotation = Rotation(0.108, -0.372, 0.629)},
		wpn_fps_ass_m14    		= {translation = Vector3(0, 11, -0.435)},
	-- VG removed
		wpn_fps_ass_l85a2       = {translation = Vector3(0, 0, -1.38)},
		wpn_fps_ass_aug         = {translation = Vector3(-0.03, 0, 4.36)},
		wpn_fps_sho_rota        = {translation = Vector3(0, 0, 1.05)},
		wpn_fps_smg_schakal     = {translation = Vector3(-0.01, 0, 0.45)},
		wpn_fps_smg_hajk        = {translation = Vector3(-0.01, 0, -2.65)},
		wpn_fps_ass_tecci       = {translation = Vector3(0.0, -3, -1.15)},
		wpn_fps_ass_shak12 		= {translation = Vector3(0.0, 4, 0.79026)}
}
local vg_added = {
"wpn_fps_ass_amcar",
"wpn_fps_ass_74",
"wpn_fps_ass_ak5",
"wpn_fps_ass_akm",
"wpn_fps_ass_akm_gold",
"wpn_fps_ass_fal",
"wpn_fps_ass_flint",
"wpn_fps_ass_g3",
"wpn_fps_ass_g36",
"wpn_fps_ass_galil",
"wpn_fps_ass_m16",
"wpn_fps_ass_m4",
"wpn_fps_ass_s552",
"wpn_fps_ass_scar",
"wpn_fps_ass_komodo",
"wpn_fps_ass_vhs",
"wpn_fps_ass_famas",
"wpn_fps_sho_basset",
"wpn_fps_shot_saiga",
"wpn_fps_smg_akmsu",
"wpn_fps_smg_mac10",
"wpn_fps_smg_mp5",
"wpn_fps_smg_olympic",
"wpn_fps_smg_shepheard",
"wpn_fps_smg_vityaz",
"wpn_fps_snp_tti",
"wpn_fps_lmg_hk51b",
"wpn_fps_lmg_hcar",
"wpn_fps_lmg_m249",
"wpn_fps_sho_sko12",
"wpn_fps_snp_qbu88",
"wpn_fps_ass_m14"
}
local vg_adjust = {
"wpn_fps_smg_schakal_vg_surefire",
"wpn_fps_upg_vg_verticalgrip",
"wpn_fps_upg_vg_stubby",
"wpn_fps_upg_vg_moe",
"wpn_fps_upg_vg_tecci",
"wpn_fps_upg_vg_foldable",
"wpn_fps_upg_vg_grippod",
"wpn_fps_upg_vg_m32",
"wpn_fps_upg_vg_mk2",
"wpn_fps_upg_vg_polymer",
"wpn_fps_upg_vg_shak12",
"wpn_fps_lmg_rpk_fg_combo1",
"wpn_fps_lmg_rpk_fg_combo4"
}
for i, weapon_id in ipairs(vg_added) do
	for j, part_id in ipairs(vg_adjust) do	
		if not self[weapon_id].adds[part_id] then self[weapon_id].adds[part_id] = {} end
		table.insert(self[weapon_id].adds[part_id], "wpn_fps_upg_vg_adjust")
	end
	table.insert(self[weapon_id].uses_parts, "wpn_fps_upg_vg_cobra")
	table.insert(self[weapon_id].uses_parts, "wpn_fps_upg_vg_afg")
end
local vg_removed = {
"wpn_fps_ass_aug",
"wpn_fps_ass_l85a2",
"wpn_fps_smg_schakal",
"wpn_fps_smg_hajk",
"wpn_fps_sho_rota",
"wpn_fps_ass_tecci",
"wpn_fps_ass_shak12"
}
for i, weapon_id in ipairs(vg_removed) do
	self[weapon_id].adds.wpn_fps_upg_vg_none = {"wpn_fps_upg_vg_adjust"}
	self[weapon_id].adds.wpn_fps_upg_vg_cobra = {"wpn_fps_upg_vg_adjust"}
	self[weapon_id].adds.wpn_fps_upg_vg_afg = {"wpn_fps_upg_vg_adjust"}
end
end)
