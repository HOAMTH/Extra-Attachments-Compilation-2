Hooks:PostHook(WeaponTweakData, "init", "EACInit", function(self)
if BeardLib.Utils:ModLoaded("WeaponLib") then
-- Brenner --
self.hk21.CAN_TOGGLE_FIREMODE = true
-- KSP -- 
self.m249.CAN_TOGGLE_FIREMODE = true
-- RPK -- 
self.rpk.CAN_TOGGLE_FIREMODE = true
-- Buzzsaw --
self.mg42.CAN_TOGGLE_FIREMODE = true
self.mg42.sounds.fire_single = "mg42_fire"
self.mg42.sounds.fire_auto = "mg42_fire"
-- KSP58 -- 
self.par.CAN_TOGGLE_FIREMODE = true
self.par.sounds.fire_single = "svinet_fire"
self.par.sounds.fire_auto = "svinet_fire"

local CAP = {
"ak5",
"ak74",
"akm",
"akm_gold",
"akmsu",
"amcar",
"basset",
"coal",
"desertfox",
"fal",
"famas",
"flint",
"g22c",
"g26",
"g3",
"g36",
"galil",
"glock_17",
"glock_18c",
"jowi",
"komodo",
"l85a2",
"m16",
"m1928",
"m60",
"new_m4",
"mac10",
"msr",
"new_mp5",
"olympic",
"polymer",
"rpk",
"saiga",
"shepheard",
"sr2",
"s552",
"tti",
"vhs",
"x_akmsu",
"x_amcar",
"x_basset",
"x_coal",
"x_g17",
"x_g18c",
"x_g22c",
"x_g36",
"x_m1928",
"x_mac10",
"x_mp5",
"x_olympic",
"x_polymer",
"x_shepheard",
"x_sr2",
"x_s552",
"x_beer",
"x_czech",
"x_stech",
"m590",
"vityaz",
"x_vityaz",
"pm9",
"x_pm9",
"mateba",
"model3",
"chinchilla",
"peacemaker",
"m32",
"flamethrower_mk2",
"shak12",
"m249",
"tecci",
"sko12",
"x_sko12",
"hk51b",
"hcar",
"victor",
"qbu88",
"new_m14",
"hk21"
}
for i, weapon_id in ipairs(CAP) do
	if not self[weapon_id] then self[weapon_id] = {} end
	if not self[weapon_id].attachment_points then self[weapon_id].attachment_points = {} end
end
table.list_append(self.amcar.attachment_points, {{
			name = "a_b_sd", 
			base_a_obj = "a_b", 
			position = Vector3( 0, 6, 0 ), 
			rotation = Rotation( 0, 0, 0 ) 
		},
		{
			name = "a_vg", 
			base_a_obj = "a_fg", 
			position = Vector3( 0, 12, -2.8 ), 
			rotation = Rotation( 0, 0, 0 ) 
		},
		{
			name = "a_vg_rail", 
			base_a_obj = "a_fg", 
			position = Vector3( 0, 5, -2.8 ), 
			rotation = Rotation( 180, 0, 90 ) 
		}})
table.list_append(self.x_amcar.attachment_points, {{
			name = "a_b_sd", 
			base_a_obj = "a_b", 
			position = Vector3( 0, 6, 0 ), 
			rotation = Rotation( 0, 0, 0 ) 
		},
		{
			name = "a_vg", 
			base_a_obj = "a_fg", 
			position = Vector3( 0, 12, -2.8 ), 
			rotation = Rotation( 0, 0, 0 ) 
		},
		{
			name = "a_vg_rail", 
			base_a_obj = "a_fg", 
			position = Vector3( 0, 5, -2.8 ), 
			rotation = Rotation( 180, 0, 90 ) 
		}})
table.list_append(self.olympic.attachment_points, {{
			name = "a_b_sd", 
			base_a_obj = "a_b", 
			position = Vector3( 0, 12, 0 ), 
			rotation = Rotation( 0, 0, 0 ) 
		},
		{
			name = "a_vg_rail", 
			base_a_obj = "a_vg", 
			position = Vector3( 0, -7, 0 ), 
			rotation = Rotation( 180, 0, 90 ) 
		}})
table.list_append(self.x_olympic.attachment_points, {{
			name = "a_b_sd", 
			base_a_obj = "a_b", 
			position = Vector3( 0, 12, 0 ), 
			rotation = Rotation( 0, 0, 0 ) 
		},
		{
			name = "a_vg_rail", 
			base_a_obj = "a_vg", 
			position = Vector3( 0, -7, 0 ), 
			rotation = Rotation( 180, 0, 90 ) 
		}})
table.list_append(self.glock_18c.attachment_points, {{
			name = "a_b_eac", 
			base_a_obj = "a_b", 
			position = Vector3( 0, -11, 1.53 ), 
			rotation = Rotation( 0, 0, 0 ) 
		}})
table.list_append(self.x_g18c.attachment_points, {{
			name = "a_b_eac", 
			base_a_obj = "a_b", 
			position = Vector3( 0, -11, 1.53 ), 
			rotation = Rotation( 0, 0, 0 ) 
		}})
table.list_append(self.glock_17.attachment_points, {{
			name = "a_b_eac", 
			base_a_obj = "a_b", 
			position = Vector3( 0, -11, 1.55 ), 
			rotation = Rotation( 0, 0, 0 ) 
		}})
table.list_append(self.x_g17.attachment_points, {{
			name = "a_b_eac", 
			base_a_obj = "a_b", 
			position = Vector3( 0, -11, 1.55 ), 
			rotation = Rotation( 0, 0, 0 ) 
		}})
table.list_append(self.glock_17.attachment_points, {{
			name = "a_s", 
			base_a_obj = "a_body", 
			position = Vector3( 0, -4, -6 ), 
			rotation = Rotation( 0, 0, 0 ) 
		}})
table.list_append(self.x_g17.attachment_points, {{
			name = "a_s", 
			base_a_obj = "a_body", 
			position = Vector3( 0, -4, -6 ), 
			rotation = Rotation( 0, 0, 0 ) 
		}})
table.list_append(self.g22c.attachment_points, {{
			name = "a_s", 
			base_a_obj = "a_body", 
			position = Vector3( 0, -4, -6 ), 
			rotation = Rotation( 0, 0, 0 ) 
		}})
table.list_append(self.x_g22c.attachment_points, {{
			name = "a_s", 
			base_a_obj = "a_body", 
			position = Vector3( 0, -4, -6 ), 
			rotation = Rotation( 0, 0, 0 ) 
		}})
table.list_append(self.g26.attachment_points, {{
			name = "a_s", 
			base_a_obj = "a_body", 
			position = Vector3( 0, -3.1, -3.5 ), 
			rotation = Rotation( 0, 0, 0 ) 
		}})
table.list_append(self.jowi.attachment_points, {{
			name = "a_s", 
			base_a_obj = "a_body", 
			position = Vector3( 0, -3.1, -3.5 ), 
			rotation = Rotation( 0, 0, 0 ) 
		}})
table.list_append(self.fal.attachment_points, {{
			name = "a_vg", 
			base_a_obj = "a_fg", 
			position = Vector3( 0, 10, -2 ), 
			rotation = Rotation( 0, 0, 0 ) 
		},
		{
			name = "a_vg_rail", 
			base_a_obj = "a_fg", 
			position = Vector3( 0, 3, -2 ), 
			rotation = Rotation( 180, 0, 90 ) 
		}})
table.list_append(self.g3.attachment_points, {{
			name = "a_vg", 
			base_a_obj = "a_b", 
			position = Vector3( 0, -19, -2.2 ), 
			rotation = Rotation( 0, 0, 0 ) 
		},
		{
			name = "a_vg_rail", 
			base_a_obj = "a_b", 
			position = Vector3( 0, -26, -2.2 ), 
			rotation = Rotation( 180, 0, 90 ) 
		}})
table.list_append(self.galil.attachment_points, {{
			name = "a_vg", 
			base_a_obj = "a_fg", 
			position = Vector3( 0, 12.5, -2.3 ), 
			rotation = Rotation( 0, 0, 0 ) 
		},
		{
			name = "a_vg_rail", 
			base_a_obj = "a_fg", 
			position = Vector3( 0, 5.5, -2.3 ), 
			rotation = RotationCAP( 180, 0, 90 ) 
		},
		{
			name = "a_g_ak", 
			base_a_obj = "a_g", 
			position = Vector3( 0, -2, -2.9 ), 
			rotation = Rotation( 0, 0, 0 ) 
		}})
table.list_append(self.l85a2.attachment_points, {{
			name = "a_vg", 
			base_a_obj = "a_b", 
			position = Vector3( 0, -0.89, -4.68 ), 
			rotation = Rotation( 0, 0, 0 ) 
		}})
table.list_append(self.flint.attachment_points, {{
			name = "a_vg", 
			base_a_obj = "a_fg", 
			position = Vector3( 0, 12.5, -2.1 ), 
			rotation = Rotation( 0, 0, 0 ) 
		},
		{
			name = "a_s", 
			base_a_obj = "a_s", 
			position = Vector3( 0, 0.75, 0 ), 
			rotation = Rotation( 0, 0, 0 ) 
		}})
table.list_append(self.ak74.attachment_points, {{
			name = "a_vg_rail", 
			base_a_obj = "a_vg", 
			position = Vector3( 0, -7, 0 ), 
			rotation = Rotation( 180, 0, 90 ) 
		},
		{
			name = "a_sight", 
			base_a_obj = "a_sight", 
			position = Vector3( 0, -4, -0.75 ), 
			rotation = Rotation( 0, 0, 0 ) 		
		}})
table.list_append(self.akm.attachment_points, {{
			name = "a_vg_rail", 
			base_a_obj = "a_vg", 
			position = Vector3( 0, -7, 0 ), 
			rotation = Rotation( 180, 0, 90 ) 
		}})
table.list_append(self.akm_gold.attachment_points, {{
			name = "a_vg_rail", 
			base_a_obj = "a_vg", 
			position = Vector3( 0, -7, 0 ), 
			rotation = Rotation( 180, 0, 90 ) 
		}})
table.list_append(self.akmsu.attachment_points, {{
			name = "a_vg", 
			base_a_obj = "a_vg", 
			position = Vector3( 0, 0, -0.15 ), 
			rotation = Rotation( 0, 0, 0 ) 
		},
		{
			name = "a_vg_rail", 
			base_a_obj = "a_vg", 
			position = Vector3( 0, -7, -0.15 ), 
			rotation = Rotation( 180, 0, 90 ) 
		}})
table.list_append(self.x_akmsu.attachment_points, {{
			name = "a_vg", 
			base_a_obj = "a_vg", 
			position = Vector3( 0, 0, -0.15 ), 
			rotation = Rotation( 0, 0, 0 ) 
		},
		{
			name = "a_vg_rail", 
			base_a_obj = "a_vg", 
			position = Vector3( 0, -7, -0.15 ), 
			rotation = Rotation( 180, 0, 90 ) 
		}})
table.list_append(self.m16.attachment_points, {{
			name = "a_vg", 
			base_a_obj = "a_vg", 
			position = Vector3( 0, 5, 0 ), 
			rotation = Rotation( 0, 0, 0 ) 
		},
		{
			name = "a_vg_rail", 
			base_a_obj = "a_vg", 
			position = Vector3( 0, -2, 0 ), 
			rotation = Rotation( 180, 0, 90 ) 
		}})
table.list_append(self.ak5.attachment_points, {{
			name = "a_vg", 
			base_a_obj = "a_vg", 
			position = Vector3( 0, 5, 0 ), 
			rotation = Rotation( 0, 0, 0 ) 
		},
		{
			name = "a_vg_rail", 
			base_a_obj = "a_fg", 
			position = Vector3( 0, -2, 0 ), 
			rotation = Rotation( 180, 0, 90 ) 
		},
		{
			name = "a_g", 
			base_a_obj = "a_body", 
			position = Vector3( 0, -0.20, 0.50 ), 
			rotation = Rotation( 0, 0, 0 ) 
		}})
table.list_append(self.basset.attachment_points, {{
			name = "a_vg", 
			base_a_obj = "a_vg", 
			position = Vector3( 0, 22, -0.75 ), 
			rotation = Rotation( 0, 0, 0 ) 
		}})
table.list_append(self.x_basset.attachment_points, {{
			name = "a_vg", 
			base_a_obj = "a_vg", 
			position = Vector3( 0, 22, -0.75 ), 
			rotation = Rotation( 0, 0, 0 ) 
		}})
table.list_append(self.rpk.attachment_points, {{
			name = "a_vg", 
			base_a_obj = "a_vg", 
			position = Vector3( 0, 0, 0.6 ), 
			rotation = Rotation( 0, 0, 0 ) 
		},
		{
			name = "a_vg_rail", 
			base_a_obj = "a_vg", 
			position = Vector3( 0, -7, 0.6 ), 
			rotation = Rotation( 180, 0, 90 ) 
		},
		{
			name = "a_fl_eac", 
			base_a_obj = "a_fl", 
			position = Vector3( 3.35, -33, -0.9 ), 
			rotation = Rotation( 0, 0, -210 ) 
		},
		{
			name = "a_o", 
			base_a_obj = "a_o", 
			position = Vector3( 0, -0.8, 0 ), 
			rotation = Rotation( 0, 0, 0 ) 
		},
		{
			name = "a_o_krebs", 
			base_a_obj = "a_o", 
			position = Vector3( 0, -0.8, 0.7 ), 
			rotation = Rotation( 0, 0, 0 ) 
		},
		{
			name = "a_o_sm", 
			base_a_obj = "a_o", 
			position = Vector3( 0, -27, 1.6 ), 
			rotation = Rotation( 0, 0, 0 ) 
		}})
table.list_append(self.saiga.attachment_points, {{
			name = "a_fl", 
			base_a_obj = "a_fl", 
			position = Vector3( 0, -4, 0 ), 
			rotation = Rotation( 0, 0, 0 ) 
		}})
table.list_append(self.komodo.attachment_points, {{
			name = "a_vg", 
			base_a_obj = "a_o", 
			position = Vector3( 0, 15, -9.4 ), 
			rotation = Rotation( 0, 0, 0 ) 
		}})
table.list_append(self.desertfox.attachment_points, {{
			name = "a_vg", 
			base_a_obj = "a_o", 
			position = Vector3( 0, 8.5, -5 ), 
			rotation = Rotation( 0, 0, 0 ) 
		}})
table.list_append(self.mac10.attachment_points, {{
			name = "a_vg_rail", 
			base_a_obj = "a_vg", 
			position = Vector3( 0, -7, 0 ), 
			rotation = RotationCAP( 180, 0, 90 ) 
		},
		{
			name = "a_s_2", 
			base_a_obj = "a_s", 
			position = Vector3( 0, 0, 2.6 ), 
			rotation = RotationCAP( 0, 0, 0 ) 
		}})
table.list_append(self.x_mac10.attachment_points, {{
			name = "a_vg_rail", 
			base_a_obj = "a_vg", 
			position = Vector3( 0, -7, 0 ), 
			rotation = RotationCAP( 180, 0, 90 ) 
		},
		{
			name = "a_s_2", 
			base_a_obj = "a_s", 
			position = Vector3( 0, 0, 2.6 ), 
			rotation = RotationCAP( 0, 0, 0 ) 
		}})
table.list_append(self.vhs.attachment_points, {{
			name = "a_vg", 
			base_a_obj = "a_body", 
			position = Vector3( 0, 20, 2.2 ), 
			rotation = Rotation( 0, 0, 0 ) 
		}})
table.list_append(self.shepheard.attachment_points, {{
			name = "a_vg", 
			base_a_obj = "a_b", 
			position = Vector3( 0, 11, -2.98 ), 
			rotation = Rotation( 0, 0, 0 ) 
		},
		{
			name = "a_vg_rail", 
			base_a_obj = "a_b", 
			position = Vector3( 0, 5, -2.98 ), 
			rotation = RotationCAP( 180, 0, 90 ) 
		}})
table.list_append(self.x_shepheard.attachment_points, {{
			name = "a_vg", 
			base_a_obj = "a_b", 
			position = Vector3( 0, 11, -2.98 ), 
			rotation = Rotation( 0, 0, 0 ) 
		},
		{
			name = "a_vg_rail", 
			base_a_obj = "a_b", 
			position = Vector3( 0, 5, -2.98 ), 
			rotation = RotationCAP( 180, 0, 90 ) 
		}})
table.list_append(self.polymer.attachment_points, {{
			name = "a_vg", 
			base_a_obj = "a_fg", 
			position = Vector3( 0, 2.65, 0 ), 
			rotation = Rotation( 0, 0, 0 ) 
		}})	
table.list_append(self.x_polymer.attachment_points, {{
			name = "a_vg", 
			base_a_obj = "a_fg", 
			position = Vector3( 0, 2.65, 0 ), 
			rotation = Rotation( 0, 0, 0 ) 
		}})		
table.list_append(self.new_mp5.attachment_points, {{
			name = "a_vg_rail", 
			base_a_obj = "a_vg", 
			position = Vector3( 0, -7, 0 ), 
			rotation = Rotation( 180, 0, 90 ) 
		}})			
table.list_append(self.x_mp5.attachment_points, {{
			name = "a_vg_rail", 
			base_a_obj = "a_vg", 
			position = Vector3( 0, -7, 0 ), 
			rotation = Rotation( 180, 0, 90 ) 
		}})		
table.list_append(self.sr2.attachment_points, {{
			name = "a_vg_2", 
			base_a_obj = "a_vg", 
			position = Vector3( 0, 2.8, -1 ), 
			rotation = Rotation( 0, 0, 0 ) 
		},
		{
			name = "a_vg_rail", 
			base_a_obj = "a_vg", 
			position = Vector3( 0, -4.2, -1 ), 
			rotation = Rotation( 180, 0, 90 ) 
		}})		
table.list_append(self.x_sr2.attachment_points, {{
			name = "a_vg_2", 
			base_a_obj = "a_vg", 
			position = Vector3( 0, 2.8, -1 ), 
			rotation = Rotation( 0, 0, 0 ) 
		},
		{
			name = "a_vg_rail", 
			base_a_obj = "a_vg", 
			position = Vector3( 0, -4.2, -1 ), 
			rotation = Rotation( 180, 0, 90 ) 
		}})
table.list_append(self.famas.attachment_points, {{
			name = "a_vg", 
			base_a_obj = "a_b", 
			position = Vector3( 0, -6, -3.7 ), 
			rotation = Rotation( 0, 0, 0 ) 
		},
		{
			name = "a_vg_rail", 
			base_a_obj = "a_b", 
			position = Vector3( 0, -13, -3.7 ), 
			rotation = RotationCAP( 180, 0, 90 ) 
		}})	
table.list_append(self.x_s552.attachment_points, {{
			name = "a_vg_rail", 
			base_a_obj = "a_vg", 
			position = Vector3( 0, -7, 0 ), 
			rotation = Rotation( 180, 0, 90 ) 
		}})				
table.list_append(self.s552.attachment_points, {{
			name = "a_vg_rail", 
			base_a_obj = "a_vg", 
			position = Vector3( 0, -7, 0 ), 
			rotation = Rotation( 180, 0, 90 ) 
		}})				
table.list_append(self.x_g36.attachment_points, {{
			name = "a_vg_rail", 
			base_a_obj = "a_vg", 
			position = Vector3( 0, -7, 0 ), 
			rotation = Rotation( 180, 0, 90 ) 
		}})				
table.list_append(self.g36.attachment_points, {{
			name = "a_vg_rail", 
			base_a_obj = "a_vg", 
			position = Vector3( 0, -7, 0 ), 
			rotation = Rotation( 180, 0, 90 ) 
		}})
table.list_append(self.new_m4.attachment_points, {{
			name = "a_vg_rail", 
			base_a_obj = "a_vg", 
			position = Vector3( 0, -7, 0 ), 
			rotation = Rotation( 180, 0, 90 ) 
		}})
table.list_append(self.tti.attachment_points, {{
			name = "a_vg", 
			base_a_obj = "a_vg", 
			position = Vector3( 0, 0, -1.0 ), 
			rotation = Rotation( 0, 0, 0 ) 
		},
		{
			name = "a_vg_vanilla", 
			base_a_obj = "a_vg", 
			position = Vector3( 0, 0, 0 ), 
			rotation = Rotation( 0, 0, 0 ) 
		},
		{
			name = "a_vg_rail_vanilla", 
			base_a_obj = "a_vg", 
			position = Vector3( 0, -7, 0 ), 
			rotation = Rotation( 180, 0, 90 ) 
		},
		{
			name = "a_vg_rail", 
			base_a_obj = "a_vg", 
			position = Vector3( 0, -7, -1.0 ), 
			rotation = Rotation( 180, 0, 90 ) 
		}})
table.list_append(self.tecci.attachment_points, {{
			name = "a_vg_rail", 
			base_a_obj = "a_vg", 
			position = Vector3( 0, -7, 0 ), 
			rotation = Rotation( 180, 0, 90 ) 
		},
		{
			name = "a_bolt", 
			base_a_obj = "a_body", 
			position = Vector3( 0.5, 11, 8.4 ), 
			rotation = Rotation( 0, 0, 0 ) 
		}})
table.list_append(self.m1928.attachment_points, {{
			name = "a_vg", 
			base_a_obj = "a_fg", 
			position = Vector3( 0, 12.5, -2.2 ), 
			rotation = Rotation( 0, 0, 0 ) 
		},
		{
			name = "a_vg_rail", 
			base_a_obj = "a_b", 
			position = Vector3( 0, 5.5, -2.2 ), 
			rotation = RotationCAP( 180, 0, 90 ) 
		},
		{
			name = "a_s_2", 
			base_a_obj = "a_s", 
			position = Vector3( 0, -9.4, 2.75 ), 
			rotation = RotationCAP( 0, 0, 0 ) 
		}})	
table.list_append(self.x_m1928.attachment_points, {{
			name = "a_vg", 
			base_a_obj = "a_fg", 
			position = Vector3( 0, 12.5, -2.2 ), 
			rotation = Rotation( 0, 0, 0 ) 
		},
		{
			name = "a_vg_rail", 
			base_a_obj = "a_b", 
			position = Vector3( 0, 5.5, -2.2 ), 
			rotation = RotationCAP( 180, 0, 90 ) 
		},
		{
			name = "a_s_2", 
			base_a_obj = "a_s", 
			position = Vector3( 0, -9.4, 2.75 ), 
			rotation = RotationCAP( 0, 0, 0 ) 
		}})	
table.list_append(self.msr.attachment_points, {{
			name = "a_o_eac", 
			base_a_obj = "a_o", 
			position = Vector3( -0.1, 2.2, 0.9 ), 
			rotation = Rotation( 0, 0, 0 ) 
		}})	
table.list_append(self.x_stech.attachment_points, {{
			name = "a_s", 
			base_a_obj = "a_g", 
			position = Vector3( 0, -5.80, -5.9 ), 
			rotation = Rotation( 0, 0, 0 ) 
		}})	
table.list_append(self.x_beer.attachment_points, {{
			name = "a_s", 
			base_a_obj = "a_g", 
			position = Vector3( 0, -6.65, -6.35 ), 
			rotation = Rotation( 0, 0, 0 ) 
		}})	
table.list_append(self.x_czech.attachment_points, {{
			name = "a_s", 
			base_a_obj = "a_g", 
			position = Vector3( 0, -7.3, -6.35 ), 
			rotation = Rotation( 0, 0, 0 ) 
		}})
table.list_append(self.m60.attachment_points, {{
			name = "a_ns_p", 
			base_a_obj = "a_ns",
			position = Vector3( 0, 0, 0 ), 
			rotation = Rotation( 0, 0, 0 ) 
		}})
table.list_append(self.m590.attachment_points, {{
			name = "a_s_2", 
			base_a_obj = "a_s",
			position = Vector3( 0, -3.8, -3.7 ), 
			rotation = Rotation( 0, 7.5, 0 ) 
		},
		{
			name = "a_fg_2", 
			base_a_obj = "a_fg",
			position = Vector3( 0, -2, 0 ), 
			rotation = Rotation( 0, 0, 0 ) 
		}})
table.list_append(self.vityaz.attachment_points, {{
			name = "a_s_2", 
			base_a_obj = "a_s",
			position = Vector3( 0, 1.55, -2.23 ), 
			rotation = Rotation( 0, 0, 0 ) 
		},
		{
			name = "a_vg", 
			base_a_obj = "a_fg",
			position = Vector3( 0, 9.5, -3.1 ), 
			rotation = Rotation( 0, 0, 0 ) 
		}})
table.list_append(self.x_vityaz.attachment_points, {{
			name = "a_s_2", 
			base_a_obj = "a_s",
			position = Vector3( 0, 1.55, -2.23 ), 
			rotation = Rotation( 0, 0, 0 ) 
		},
		{
			name = "a_vg", 
			base_a_obj = "a_fg",
			position = Vector3( 0, 9.5, -3.1 ), 
			rotation = Rotation( 0, 0, 0 ) 
		}})
table.list_append(self.pm9.attachment_points, {{
			name = "a_fl2", 
			base_a_obj = "a_fl",
			position = Vector3( 0, 0, 0), 
			rotation = RotationCAP( 0, 0, 90 ) 
		},
		{
			name = "a_o", 
			base_a_obj = "a_o",
			position = Vector3( 0, -2, 0), 
			rotation = RotationCAP( 0, 0, 0 ) 
		}})
table.list_append(self.x_pm9.attachment_points, {{
			name = "a_fl2", 
			base_a_obj = "a_fl",
			position = Vector3( 0, 0, 0), 
			rotation = RotationCAP( 0, 0, 90 ) 
		}})
table.list_append(self.mateba.attachment_points, {{
			name = "a_o", 
			base_a_obj = "a_sight",
			position = Vector3( 0, 12.5, -1.05), 
			rotation = RotationCAP( 180, 0, 180 ) 
		},
		{		
			name = "a_sight", 
			base_a_obj = "a_sight",
			position = Vector3( 0, 12.5, 0), 
			rotation = RotationCAP( 0, 0, 0 ) 
		}})
table.list_append(self.model3.attachment_points, {{
			name = "a_sight", 
			base_a_obj = "a_sight",
			-- part_attach_data = {
            -- {"wpn_fps_pis_model3_b_long","wpn_fps_pis_model3_b_short","wpn_fps_pis_model3_b_standard"},
            -- "g_barrel"
			-- },
			part_attach_data = {
            {"wpn_fps_pis_model3_cylinder"},
            "g_cylinder"
			},
			position = Vector3( 0, 0, -4.1), 
			rotation = RotationCAP( 0, 0, 0 ) 
		}})
table.list_append(self.chinchilla.attachment_points, {{
			name = "a_sight", 
			base_a_obj = "a_sight",
			position = Vector3( 0, 4, -0.650), 
			rotation = RotationCAP( 0, 0, 0 ) 
		},
		{
			name = "a_sight_d", 
			base_a_obj = "a_sight",
			position = Vector3( 0, 4, 0.150), 
			rotation = RotationCAP( 0, 0, 0 ) 
		}})
table.list_append(self.peacemaker.attachment_points, {{
			name = "a_sight", 
			base_a_obj = "a_sight",
			position = Vector3( 0, 4, -0.0), 
			rotation = RotationCAP( 0, 0, 0 ) 
		},
		{
			name = "a_o", 
			base_a_obj = "a_sight",
			position = Vector3( 0, 5.3, -1.0), 
			rotation = RotationCAP( 180, 0, 180 ) 
		}})
table.list_append(self.m32.attachment_points, {{
			name = "a_vg", 
			base_a_obj = "a_b",
			position = Vector3( 0, 15.2, -2.7 ), 
			rotation = Rotation( 0, 0, 0 ) 
		}})
table.list_append(self.flamethrower_mk2.attachment_points, {{
			name = "a_vg", 
			base_a_obj = "a_body",
			position = Vector3( 0, 23.5, 0.28 ), 
			rotation = Rotation( 0, 0, 0 ) 
		}})
table.list_append(self.shak12.attachment_points, {{
			name = "a_vg", 
			base_a_obj = "a_vg",
			position = Vector3( 0, 1, -0.77 ), 
			rotation = Rotation( 0, 0, 0 ) 
		}})
table.list_append(self.sko12.attachment_points, {{
			name = "a_vg", 
			base_a_obj = "a_fg",
			position = Vector3( 0, 18.5, -3.1 ), 
			rotation = Rotation( 0, 0, 0 ) 
		},
		{
			name = "a_vg_rail", 
			base_a_obj = "a_fg", 
			position = Vector3( 0, 11.5, -3.1 ), 
			rotation = Rotation( 180, 0, 90 ) 
		}})
table.list_append(self.x_sko12.attachment_points, {{
			name = "a_vg", 
			base_a_obj = "a_fg",
			position = Vector3( 0, 18.5, -3.1 ), 
			rotation = Rotation( 0, 0, 0 ) 
		},
		{
			name = "a_vg_rail", 
			base_a_obj = "a_vg", 
			position = Vector3( 0, 11.5, -3.1 ), 
			rotation = Rotation( 180, 0, 90 ) 
		}})
table.list_append(self.hk51b.attachment_points, {{
			name = "a_bp", 
			base_a_obj = "a_fg",
			position = Vector3( 0, 8, -1.6 ), 
			rotation = Rotation( 0, 0, 0 ) 
		},
		{
			name = "a_vg", 
			base_a_obj = "a_fg",
			position = Vector3( 0, 8, -1.6 ), 
			rotation = Rotation( 0, 0, 0 ) 
		},
		{
			name = "a_vg_rail", 
			base_a_obj = "a_fg", 
			position = Vector3( 0, 1, -1.6 ), 
			rotation = Rotation( 180, 0, 90 ) 
		}})
table.list_append(self.hcar.attachment_points, {{
			name = "a_vg", 
			base_a_obj = "a_fg",
			position = Vector3( 0, 10.5, -3.7 ), 
			rotation = Rotation( 0, 0, 0 ) 
		},
		{
			name = "a_vg_rail", 
			base_a_obj = "a_fg", 
			position = Vector3( 0, 3.5, -3.7 ), 
			rotation = Rotation( 180, 0, 90 ) 
		}})
table.list_append(self.victor.attachment_points, {{
			name = "a_vg", 
			base_a_obj = "a_fg",
			position = Vector3( 0, 11, -2.45 ), 
			rotation = Rotation( 0, 0, 0 ) 
		},
		{
			name = "a_vg_rail", 
			base_a_obj = "a_fg", 
			position = Vector3( 0, 4, -2.45 ), 
			rotation = Rotation( 180, 0, 90 ) 
		},
		{
			name = "a_fg_m4", 
			base_a_obj = "a_fg", 
			position = Vector3( 0, -0.54, 0 ), 
			rotation = Rotation( 0, 0, 0 ) 
		}})
table.list_append(self.qbu88.attachment_points, {{
			name = "a_vg", 
			base_a_obj = "a_fg",
			position = Vector3( 0, 36, -2.55 ), 
			rotation = Rotation( 0, 0, 0 ) 
		},
		{
			name = "a_vg_rail", 
			base_a_obj = "a_fg", 
			position = Vector3( 0, 29, -2.55 ), 
			rotation = Rotation( 180, 0, 90 ) 
		}})
table.list_append(self.m249.attachment_points, {{
			name = "a_g", 
			base_a_obj = "a_body",
			position = Vector3( 0, 0.97, 0.5 ), 
			rotation = Rotation( 0, 0, 0 ) 
		},
		{
			name = "a_vg", 
			base_a_obj = "a_b",
			position = Vector3( 0, -19, -6.5 ), 
			rotation = Rotation( 0, 0, 0 ) 
		},
		{
			name = "a_vg_rail", 
			base_a_obj = "a_b", 
			position = Vector3( 0, -26, -6.5 ), 
			rotation = Rotation( 180, 0, 90 ) 
		}})
table.list_append(self.new_m14.attachment_points, {{
			name = "a_vg_rail", 
			base_a_obj = "a_vg", 
			position = Vector3( 0, -7, 0 ), 
			rotation = Rotation( 180, 0, 90 ) 
		}})
self:SetupAttachmentPoint("hk21", {
        name = "a_s_g3", -- Name of Attachment Point ( This can be a preexisting one or a new one. )
        base_a_obj = "a_s", -- Attachment point position to base the attachment point off of. ( Will check CAP for the object if it doesn't exist already. )
        position = Vector3( 0, 1.5, 0 ), -- Position to offset from the base_a_obj. ( Default: Vector3( 0, 0, 0 ) )
        rotation = RotationCAP( 0, 0, 0 ) -- Rotation to offset from the base_a_obj. ( Default: Rotation( 0, 0, 0 ) )
    })

end
end )