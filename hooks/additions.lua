Hooks:PostHook(WeaponFactoryTweakData, "init", "EAC_additions", function(self, tweak_data)
local EAC = _G.EAC
local m4_grips = EAC.m4_grips
local m4_stocks = EAC.m4_stocks
local m4_butt = EAC.m4_butt
local m4_fg = EAC.m4_fg
local m4_mags = EAC.m4_mags
local m4_ur = EAC.m4_ur
local ak_stocks = EAC.ak_stocks
local ak_grips = EAC.ak_grips
local ak_fg = EAC.ak_fg
local ar_sights = EAC.ar_sights
local ar_gadgets = EAC.ar_gadgets

local m4_g_seed = {
"wpn_fps_lmg_m249",
"wpn_fps_ass_tecci",
"wpn_fps_ass_contraband",
"wpn_fps_smg_shepheard",
"wpn_fps_smg_x_shepheard"
}
for g, wpn in ipairs(m4_g_seed) do
	table.list_append(self[wpn].uses_parts, {"wpn_fps_upg_m4_g_ergo"})
end

local m4_s_seed = {
"wpn_fps_ass_contraband",
"wpn_fps_ass_asval",
"wpn_fps_ass_galil",
"wpn_fps_smg_x_akmsu",
"wpn_fps_smg_coal",
"wpn_fps_smg_x_coal",
"wpn_fps_smg_vityaz",
"wpn_fps_smg_x_vityaz",
"wpn_fps_sho_m590",
"wpn_fps_sho_x_sko12",
"wpn_fps_smg_cobray",
"wpn_fps_smg_x_cobray",
"wpn_fps_smg_hajk",
"wpn_fps_smg_x_hajk",
"wpn_fps_smg_mac10",
"wpn_fps_smg_x_mac10",
"wpn_fps_smg_olympic",
"wpn_fps_smg_x_olympic",
"wpn_fps_smg_thompson",
"wpn_fps_smg_x_m1928",
"wpn_fps_smg_polymer",
"wpn_fps_smg_x_polymer",
"wpn_fps_smg_shepheard",
"wpn_fps_smg_x_shepheard",
"wpn_fps_smg_x_416"
}
for h, wpn in ipairs(m4_s_seed) do
	table.list_append(self[wpn].uses_parts, {"wpn_fps_upg_m4_s_crane"})
end

local m4_s_butt_seed = {
"wpn_fps_ass_contraband",
"wpn_fps_smg_olympic",
"wpn_fps_smg_x_olympic",
"wpn_fps_smg_hajk",
"wpn_fps_smg_x_hajk",
"wpn_fps_smg_shepheard",
"wpn_fps_smg_x_shepheard",
"wpn_fps_ass_amcar",
"wpn_fps_ass_x_amcar",
"wpn_fps_ass_m16",
"wpn_fps_snp_tti",
"wpn_fps_snp_victor",
"wpn_fps_snp_contender",
"wpn_fps_ass_m4",
"wpn_fps_sho_sko12",
"wpn_fps_sho_x_sko12"
}
for f, wpn in ipairs(m4_s_butt_seed) do
	table.list_append(self[wpn].uses_parts, {"wpn_fps_m4_uupg_s_fold"})
end

local ak_s_seed = {
"wpn_fps_ass_74",
"wpn_fps_smg_x_akmsu",
"wpn_fps_ass_flint",
"wpn_fps_smg_coal",
"wpn_fps_smg_x_coal",
"wpn_fps_ass_asval",
"wpn_fps_lmg_rpk",
"wpn_fps_ass_galil",
"wpn_fps_smg_x_vityaz",
"wpn_fps_smg_vityaz"
}
for f, wpn in ipairs(ak_s_seed) do
	table.list_append(self[wpn].uses_parts, {"wpn_upg_ak_s_skfoldable"})
end

local ak_g_seed = {
"wpn_fps_ass_galil",
"wpn_fps_ass_ak5"
}
for f, wpn in ipairs(ak_g_seed) do
	table.list_append(self[wpn].uses_parts, {"wpn_fps_upg_ak_g_hgrip"})
end

local ak_fg_seed = {
"wpn_fps_shot_saiga",
"wpn_fps_lmg_rpk"
}
for f, wpn in ipairs(ak_fg_seed) do
	table.list_append(self[wpn].uses_parts, {"wpn_upg_ak_fg_combo2"})
end

	table.list_append(self.wpn_fps_ass_tecci.uses_parts, {"wpn_fps_m4_uupg_m_std_vanilla"})

for k, wpn_id in pairs(self) do
	if self[k] and self[k].default_blueprint and not (string.match(k, "_npc") or string.match(k, "_primary") or string.match(k, "parts") or string.match(k, "aaaaa") or string.match(k, "_secondary") and not string.match(k, "saw_secondary")) then
		-- log(tostring(k))	
		for l, grip_ad in ipairs(m4_grips) do
			if table.contains(self[k].uses_parts, "wpn_fps_upg_m4_g_ergo") and not table.contains(self[k].uses_parts, grip_ad) then
				table.insert(self[k].uses_parts, grip_ad)
				-- log(tostring(k) .." has received the M4 grip "..  tostring(grip_ad))
			end
		end
		for m, stock_ad in ipairs(m4_stocks) do
			if table.contains(self[k].uses_parts, "wpn_fps_upg_m4_s_crane") and not table.contains(self[k].uses_parts, stock_ad) then
				table.insert(self[k].uses_parts, stock_ad)
				-- log(tostring(k) .." has received the M4 stock "..  tostring(stock_ad))
			end
		end
		for n, butt_stock_ad in ipairs(m4_butt) do
			if table.contains(self[k].uses_parts, "wpn_fps_m4_uupg_s_fold") and not table.contains(self[k].uses_parts, butt_stock_ad) then
				table.insert(self[k].uses_parts, butt_stock_ad)
				-- log(tostring(k) .." has received the M4 buttstock ".. tostring(butt_stock_ad))
			end
		end
		for o, mag_ad in ipairs(m4_mags) do
			if table.contains(self[k].uses_parts, "wpn_fps_m4_uupg_m_std_vanilla") and not table.contains(self[k].uses_parts, mag_ad) then
				table.insert(self[k].uses_parts, mag_ad)
				-- log(tostring(k) .." has received M4 magazine ".. tostring(mag_ad))
			end
		end
		for p, stock_ad in ipairs(ak_stocks) do
			if table.contains(self[k].uses_parts, "wpn_upg_ak_s_skfoldable") and not table.contains(self[k].uses_parts, stock_ad) then
				if string.match(k, "asval") and string.match(stock_ad, "psl") then
				else
					table.insert(self[k].uses_parts, stock_ad)
					-- log(tostring(k) .." has received the AK stock "..  tostring(stock_ad))
				end
			end
		end
		for q, grip_ad in ipairs(ak_grips) do
			if table.contains(self[k].uses_parts, "wpn_fps_upg_ak_g_hgrip") and not table.contains(self[k].uses_parts, grip_ad) then
				if string.match(k, "galil") and string.match(grip_ad, "galil") then
				else
					table.insert(self[k].uses_parts, grip_ad)
					-- log(tostring(k) .." has received the AK grip ".. tostring(grip_ad))
				end
			end
		end
		for r, fg_ad in ipairs(ak_fg) do
			if table.contains(self[k].uses_parts, "wpn_upg_ak_fg_combo2") and not table.contains(self[k].uses_parts, fg_ad) then
				table.insert(self[k].uses_parts, fg_ad)
				-- log(tostring(k) .." has received the AK foregrip ".. tostring(fg_ad))
			end
		end
	end
end
-- AK5 & M249 grips
table.list_append(self.wpn_fps_ass_ak5.default_blueprint, { "wpn_fps_ass_ak5_g_standard" })
table.list_append(self.wpn_fps_ass_ak5.uses_parts       , { "wpn_fps_ass_ak5_g_standard", "wpn_fps_ass_scar_s_sniper"})
table.list_append(self.wpn_fps_lmg_m249.default_blueprint, { "wpn_fps_lmg_m249_g_standard" })
table.list_append(self.wpn_fps_lmg_m249.uses_parts       , { "wpn_fps_lmg_m249_g_standard" })

-- Chimano
local glocks = {
"wpn_fps_pis_g17",
"wpn_fps_pis_x_g17",
"wpn_fps_pis_x_g18c",
"wpn_fps_pis_g22c",
"wpn_fps_pis_x_g22c",
"wpn_fps_pis_g26",
"wpn_fps_jowi"
}
for g, wpn_id in ipairs(glocks) do
	table.list_append(self[wpn_id].uses_parts, {"wpn_fps_pis_g18c_s_stock"})
	if string.match(wpn_id, "g17") then	
		table.list_append(self[wpn_id].uses_parts, {"wpn_fps_pis_g18c_g_ergo"})
	end
end
--Akimbo Pistols
table.list_append(self.wpn_fps_x_1911.uses_parts,  { "wpn_upg_o_marksmansight_rear"})
table.list_append(self.wpn_fps_x_b92fs.uses_parts, { "wpn_upg_o_marksmansight_rear"})
table.list_append(self.wpn_fps_x_deagle.uses_parts,{ "wpn_upg_o_marksmansight_rear"})
--Eagle Heavy
table.list_append(self.wpn_fps_ass_scar.uses_parts, {
	"wpn_fps_ass_ak5_s_ak5b",
	"wpn_fps_ass_ak5_s_ak5c"
})
--Judge
table.list_append(self.wpn_fps_pis_judge.uses_parts,   {"wpn_fps_pis_rage_g_ergo"})
table.list_append(self.wpn_fps_pis_x_judge.uses_parts, {"wpn_fps_pis_rage_g_ergo"})
--Compact-5
table.list_append(self.wpn_fps_smg_mp5.uses_parts, {"wpn_fps_smg_mp5_s_proper"})
table.list_append(self.wpn_fps_smg_x_mp5.uses_parts, {
	"wpn_fps_smg_mp5_s_proper",
	"wpn_fps_smg_mp5_s_adjust",
	"wpn_fps_smg_x_mp5_s_solid"
})
--AK Family Rifles
--RPK
table.list_append(self.wpn_fps_lmg_rpk.uses_parts, {
 "wpn_fps_upg_rpk_b_ak105",
 "wpn_fps_upg_ak_body_upperreceiver_zenitco",
 "wpn_fps_upg_rpk_b_zastava"
})
--JP36
table.list_append(self.wpn_fps_ass_g36.uses_parts, {
 "wpn_fps_upg_o_leupold",
 "wpn_fps_snp_msr_ns_suppressor"
})

--AUG
table.list_append(self.wpn_fps_ass_aug.uses_parts, {
 "wpn_fps_ass_l85a2_m_emag",
 "wpn_fps_m4_uupg_m_strike",
 "wpn_fps_upg_m4_m_l5"
})
--CR 805B
table.list_append(self.wpn_fps_smg_hajk.uses_parts, {
	"wpn_fps_upg_m4_s_adapter",
	"wpn_fps_ass_scar_s_sniper",
	"wpn_fps_ass_ak5_s_ak5b",
	"wpn_fps_ass_ak5_s_ak5c"
})
table.list_append(self.wpn_fps_smg_x_hajk.uses_parts, {
	"wpn_fps_upg_m4_s_adapter",
	"wpn_fps_ass_scar_s_sniper",
	"wpn_fps_ass_ak5_s_ak5b",
	"wpn_fps_ass_ak5_s_ak5c"
})
-- HK416/AR-15
local rif = {
"wpn_fps_ass_contraband",
"wpn_fps_ass_tecci",
"wpn_fps_ass_m4",
"wpn_fps_ass_m16",
"wpn_fps_ass_amcar",
"wpn_fps_smg_olympic",
"wpn_fps_snp_tti",
"wpn_fps_snp_victor"
}
for i, wpn in ipairs(rif) do
	for j, fg in ipairs(m4_fg) do
		if not table.contains(self[wpn].uses_parts, fg) then
			if (string.match(wpn, "contraband") or string.match(wpn, "tecci")) then
				if not string.match(fg, "vietnam") then
					table.insert(self[wpn].uses_parts, fg)
				-- log(tostring(wpn) .." has received the M4 foregrip ".. tostring(fg))
				else
				end
			else			
				table.insert(self[wpn].uses_parts, fg)
				-- log(tostring(wpn) .." has received the M4 foregrip ".. tostring(fg))
			end
		end 
	end
	for k, ur in ipairs(m4_ur) do
		if not (string.match(wpn, "contraband") or string.match(wpn, "tti")) then
			if not table.contains(self[wpn].uses_parts, ur) then 
				table.insert(self[wpn].uses_parts, ur) 
				-- log(tostring(wpn) .." has received the M4 uppeer receiver ".. tostring(ur))
			end
		end
	end
end
table.list_append(self.wpn_fps_snp_victor.uses_parts, {
 "wpn_fps_m4_upper_reciever_edge",
 "wpn_fps_upg_ass_m4_upper_reciever_ballos",
 "wpn_fps_m4_uupg_draghandle_ballos",
 "wpn_fps_upg_ass_m4_upper_reciever_core",
 "wpn_fps_m4_uupg_draghandle_core",
 "wpn_fps_upg_ass_m4_lower_reciever_core",
 "wpn_fps_m4_uupg_upper_radian",
 "wpn_fps_m4_uupg_lower_radian"
})
table.list_append(self.wpn_fps_ass_tecci.uses_parts, {
 "wpn_fps_m4_upper_reciever_edge",
 "wpn_fps_upg_ass_m4_upper_reciever_ballos",
 "wpn_fps_m4_uupg_draghandle_ballos",
 "wpn_fps_upg_ass_m4_upper_reciever_core",
 "wpn_fps_m4_uupg_draghandle_core",
 "wpn_fps_upg_ass_m4_lower_reciever_core",
 "wpn_fps_m4_uupg_upper_radian",
 "wpn_fps_m4_uupg_lower_radian"
})
table.list_append(self.wpn_fps_smg_olympic.uses_parts, {
 "wpn_fps_m4_upg_b_long",
 "wpn_fps_m4_upg_b_sd"
})
table.list_append(self.wpn_fps_smg_x_olympic.uses_parts, {
 "wpn_fps_m4_upg_b_long",
 "wpn_fps_m4_upg_b_sd"
})
table.list_append(self.wpn_fps_ass_m16.uses_parts, {
 "wpn_fps_m4_upg_b_sd",
 "wpn_fps_m4_upg_b_short"
})
table.list_append(self.wpn_fps_ass_amcar.uses_parts, {
 "wpn_fps_m4_upg_b_long",
 "wpn_fps_m4_upg_b_short",
 "wpn_fps_m4_upg_b_sd",
 "wpn_fps_m4_upper_reciever_edge",
 "wpn_fps_upg_ass_m4_upper_reciever_ballos",
 "wpn_fps_m4_uupg_draghandle_ballos",
 "wpn_fps_upg_ass_m4_upper_reciever_core",
 "wpn_fps_m4_uupg_draghandle_core",
 "wpn_fps_upg_ass_m4_lower_reciever_core",
 "wpn_fps_m4_uupg_upper_radian",
 "wpn_fps_m4_uupg_lower_radian"
})
--M308
table.list_append(self.wpn_fps_ass_m14.uses_parts, {
 "wpn_fps_upg_o_leupold",
 "wpn_fps_upg_o_45iron",
 "wpn_fps_snp_msr_ns_suppressor"
})
--Gewehr 3
table.list_append(self.wpn_fps_ass_g3.uses_parts, {
 "wpn_fps_upg_o_leupold",
 "wpn_fps_upg_o_45iron",
 "wpn_fps_smg_mp5_s_adjust",
 "wpn_fps_snp_msr_ns_suppressor"
})
--Bronco
table.list_append(self.wpn_fps_pis_rage.uses_parts, {
 "wpn_fps_upg_ns_pis_meatgrinder",
 "wpn_fps_upg_ns_pis_ipsccomp",
 "wpn_fps_upg_ns_ass_filter",
 "wpn_fps_upg_ns_pis_jungle",
 "wpn_fps_upg_ns_pis_medium_gem",
 "wpn_fps_upg_ns_pis_large_kac",
 "wpn_fps_upg_ns_pis_small",
 "wpn_fps_upg_ns_pis_medium",
 "wpn_fps_upg_ns_pis_large",
 "wpn_fps_upg_ns_pis_medium_slim"
})
table.list_append(self.wpn_fps_pis_rsh12.uses_parts, {
 -- "wpn_fps_upg_ns_pis_meatgrinder",
 -- "wpn_fps_upg_ns_pis_ipsccomp",
 -- "wpn_fps_upg_ns_ass_filter",
 -- "wpn_fps_upg_ns_pis_jungle",
 -- "wpn_fps_upg_ns_pis_medium_gem",
 -- "wpn_fps_upg_ns_pis_large_kac",
 -- "wpn_fps_upg_ns_pis_small",
 -- "wpn_fps_upg_ns_pis_medium",
 -- "wpn_fps_upg_ns_pis_large",
 -- "wpn_fps_upg_ns_pis_medium_slim"
})
table.list_append(self.wpn_fps_pis_x_rage.uses_parts, {
 "wpn_fps_upg_ns_pis_meatgrinder",
 "wpn_fps_upg_ns_pis_ipsccomp",
 "wpn_fps_upg_ns_ass_filter",
 "wpn_fps_upg_ns_pis_jungle",
 "wpn_fps_upg_ns_pis_medium_gem",
 "wpn_fps_upg_ns_pis_large_kac",
 "wpn_fps_upg_ns_pis_small",
 "wpn_fps_upg_ns_pis_medium",
 "wpn_fps_upg_ns_pis_large",
 "wpn_fps_upg_ns_pis_medium_slim"
})
--Brenner
table.list_append(self.wpn_fps_lmg_hk21.uses_parts, {
 "wpn_fps_ass_g3_g_sniper",
 "wpn_fps_ass_g3_g_retro",
 "wpn_fps_ass_g3_s_sniper",
 "wpn_fps_ass_g3_s_wood",
 "wpn_fps_smg_mp5_s_adjust"
})
-- Jacket's Piece
table.list_append(self.wpn_fps_smg_x_cobray.uses_parts, {
 "wpn_fps_smg_cobray_s_m4adapter"
})
-- Thompson 1928
table.list_append(self.wpn_fps_smg_thompson.uses_parts, {
 "wpn_fps_smg_cobray_s_m4adapter"
})
table.list_append(self.wpn_fps_smg_x_m1928.uses_parts, {
 "wpn_fps_smg_thompson_stock_discrete",
 "wpn_fps_smg_cobray_s_m4adapter"
})
-- Mac 10
table.list_append(self.wpn_fps_smg_mac10.uses_parts, {
 "wpn_fps_smg_cobray_s_m4adapter"
})
table.list_append(self.wpn_fps_smg_x_mac10.uses_parts, {
 "wpn_fps_smg_cobray_s_m4adapter"
})
-- Micro Uzi
table.list_append(self.wpn_fps_smg_x_baka.uses_parts, {
 "wpn_fps_smg_baka_s_standard",
 "wpn_fps_smg_baka_s_unfolded"
})
-- MP9
table.list_append(self.wpn_fps_smg_x_mp9.uses_parts, {
 "wpn_fps_smg_mp9_s_skel"
})
-- Jackal
table.list_append(self.wpn_fps_smg_x_schakal.uses_parts, {
 "wpn_fps_smg_schakal_s_civil"
})
-- Blaster
table.list_append(self.wpn_fps_smg_x_tec9.uses_parts, {
 "wpn_fps_smg_tec9_s_unfolded"
})
-- Vertex
-- Sterling
table.list_append(self.wpn_fps_smg_x_sterling.uses_parts, {
 "wpn_fps_smg_sterling_s_nostock",
 "wpn_fps_smg_sterling_s_solid"
})
-- Uzi
table.list_append(self.wpn_fps_smg_x_uzi.uses_parts, {
 "wpn_fps_smg_uzi_s_leather",
 "wpn_fps_smg_uzi_s_solid",
 "wpn_fps_smg_uzi_s_unfolded"
})
-- Scorpion
table.list_append(self.wpn_fps_smg_x_scorpion.uses_parts, {
 "wpn_fps_smg_scorpion_s_nostock",
 "wpn_fps_smg_scorpion_s_unfolded"
})
-- Mosconi 12G Tactical
table.list_append(self.wpn_fps_sho_m590.uses_parts, {
 "wpn_fps_shot_r870_fg_wood"
})
-- Autopistols
table.list_append(self.wpn_fps_pis_stech.uses_parts, {
"wpn_fps_upg_i_singlefire"
})
table.list_append(self.wpn_fps_pis_x_stech.uses_parts, {
"wpn_fps_upg_i_singlefire",
"wpn_fps_pis_stech_s_standard"
})

table.list_append(self.wpn_fps_pis_czech.uses_parts, {
"wpn_fps_upg_i_singlefire"
})
table.list_append(self.wpn_fps_pis_x_czech.uses_parts, {
"wpn_fps_upg_i_singlefire",
"wpn_fps_pis_czech_s_standard"
})

table.list_append(self.wpn_fps_pis_beer.uses_parts, {
"wpn_fps_upg_i_singlefire"
})
table.list_append(self.wpn_fps_pis_x_beer.uses_parts, {
"wpn_fps_upg_i_singlefire",
"wpn_fps_pis_beer_s_std"
})
table.list_append(self.wpn_fps_gre_ms3gl.uses_parts, {
"wpn_fps_upg_i_singlefire"
})

-- Miyaka 10 SMG
local pm9_o = {
"wpn_fps_upg_o_aimpoint",
"wpn_fps_upg_o_aimpoint_2",
"wpn_fps_upg_o_acog",
"wpn_fps_upg_o_eotech",
"wpn_fps_upg_o_cmore",
"wpn_fps_upg_o_cs",
"wpn_fps_upg_o_rx01",
"wpn_fps_upg_o_rx30",
"wpn_fps_upg_o_specter",
"wpn_fps_upg_o_spot",
"wpn_fps_upg_o_tf90",
"wpn_fps_upg_o_uh",
"wpn_fps_upg_o_bmg",
"wpn_fps_pis_c96_sight",
"wpn_fps_upg_o_hamr",
"wpn_fps_upg_o_atibal",
"wpn_fps_upg_o_poe"
}
for z, part_id in ipairs(ar_sights) do 
	if not table.contains(self.wpn_fps_smg_pm9.uses_parts, part_id) then table.list_append(self.wpn_fps_smg_pm9.uses_parts, { part_id }) end
	if not self.wpn_fps_smg_pm9.adds[part_id] then self.wpn_fps_smg_pm9.adds[part_id] = {"wpn_fps_smg_pm9_o_adapter"} end
end
for y, large_sights in ipairs(pm9_o) do
	table.insert(self.wpn_fps_smg_pm9.adds[large_sights], "wpn_fps_smg_erma_extra_rail") 
end
for y, part_id in ipairs(ar_gadgets) do 
table.list_append(self.wpn_fps_smg_pm9.uses_parts, { part_id })
table.list_append(self.wpn_fps_smg_x_pm9.uses_parts, { part_id })
if not self.wpn_fps_smg_pm9.adds[part_id] then self.wpn_fps_smg_pm9.adds[part_id] = {} end
self.wpn_fps_smg_pm9.adds[part_id] = {"wpn_fps_smg_pm9_fl_adapter"}
self.wpn_fps_smg_pm9.override[part_id] = {a_obj = "a_fl2"}
self.wpn_fps_smg_x_pm9.override[part_id] = {a_obj = "a_fl2"}
end

--VD-12
table.list_append(self.wpn_fps_sho_x_sko12.uses_parts, {"wpn_fps_sho_sko12_s_adapter"})
self.parts.wpn_fps_smg_pm9_body_standard.forbids = {"wpn_fps_addon_ris"}

--Parabellum
local pistol_seeds = {
"wpn_fps_pis_breech",
"wpn_fps_pis_peacemaker",
"wpn_fps_pis_2006m",
"wpn_fps_pis_chinchilla",
"wpn_fps_pis_model3",
"wpn_fps_pis_x_2006m",
"wpn_fps_pis_x_chinchilla",
"wpn_fps_pis_x_model3"
}
for v, pis_seed in ipairs(pistol_seeds) do
table.list_append(self[pis_seed].uses_parts, {"wpn_fps_upg_pis_ns_flash"})
end

-- Custom Akimbos
table.list_append(self.wpn_fps_ass_x_ak74.uses_parts, {
 "wpn_fps_lmg_rpk_s_standard"
})
table.list_append(self.wpn_fps_ass_x_akm.uses_parts, {
 "wpn_fps_lmg_rpk_s_standard"
})
table.list_append(self.wpn_fps_ass_x_akm_gold.uses_parts, {
 "wpn_fps_lmg_rpk_s_standard"
})
table.list_append(self.wpn_fps_lmg_x_rpk.uses_parts, {
 "wpn_upg_ak_fg_combo3",
 "wpn_fps_upg_ak_fg_tapco",
 "wpn_fps_upg_ak_fg_krebs",
 "wpn_fps_upg_ak_fg_trax",
 "wpn_fps_upg_fg_midwest"
})
table.list_append(self.wpn_fps_smg_x_416.uses_parts, {
 "wpn_fps_upg_m4_s_standard",
 "wpn_fps_m4_uupg_fg_rail",
 "wpn_fps_m4_uupg_fg_lr300",
 "wpn_fps_upg_fg_jp",
 "wpn_fps_upg_fg_smr",
 "wpn_fps_upg_ass_m4_fg_moe",
 "wpn_fps_upg_ass_m4_fg_lvoa",
 "wpn_fps_upg_ass_m4_upper_reciever_ballos",
 "wpn_fps_upg_ass_m4_upper_reciever_core",
 "wpn_fps_upg_ass_m4_lower_reciever_core",
 "wpn_fps_m4_upper_reciever_edge",
 "wpn_fps_m4_uupg_draghandle_ballos",
 "wpn_fps_m4_uupg_draghandle_core"
})
table.list_append(self.wpn_fps_ass_x_amcar.uses_parts, {
 "wpn_fps_m4_uupg_s_fold",
 "wpn_fps_upg_ass_m4_upper_reciever_ballos",
 "wpn_fps_upg_ass_m4_upper_reciever_core",
 "wpn_fps_upg_ass_m4_lower_reciever_core",
 "wpn_fps_m4_upper_reciever_edge",
 "wpn_fps_m4_uupg_fg_rail",
 "wpn_fps_m4_uupg_fg_lr300",
 "wpn_fps_upg_fg_jp",
 "wpn_fps_upg_fg_smr",
 "wpn_fps_upg_ass_m4_fg_moe",
 "wpn_fps_upg_ass_m4_fg_lvoa",
 "wpn_fps_smg_olympic_s_short",
 "wpn_fps_m4_upg_b_long",
 "wpn_fps_m4_upg_b_short",
 "wpn_fps_m4_upg_b_sd",
 "wpn_fps_m16_fg_railed",
 "wpn_fps_m16_fg_vietnam",
 "wpn_fps_upg_ass_m16_fg_stag"
})

local no_stock = {
		"wpn_fps_ass_74",
		"wpn_fps_ass_ak5",
		"wpn_fps_ass_akm",
		"wpn_fps_ass_akm_gold",
		"wpn_fps_ass_asval",
		"wpn_fps_ass_fal",
		"wpn_fps_ass_flint",
		"wpn_fps_ass_g36",
		"wpn_fps_ass_galil",
		"wpn_fps_ass_s552",
		"wpn_fps_ass_scar",
		"wpn_fps_lmg_rpk",
		"wpn_fps_shot_saiga",
		"wpn_fps_sho_sko12",
		"wpn_fps_smg_akmsu",
		"wpn_fps_smg_coal",
		"wpn_fps_smg_cobray",
		"wpn_fps_smg_hajk",
		"wpn_fps_smg_mac10",
		"wpn_fps_smg_mp7",
		"wpn_fps_smg_mp9",
		"wpn_fps_smg_polymer",
		"wpn_fps_smg_schakal",
		"wpn_fps_smg_sr2",
		"wpn_fps_smg_uzi",
		"wpn_fps_smg_x_coal",
		"wpn_fps_smg_x_cobray",
		"wpn_fps_smg_x_erma",
		"wpn_fps_smg_x_hajk",
		"wpn_fps_smg_x_m45",
		"wpn_fps_smg_x_mac10",
		"wpn_fps_smg_x_mp7",
		"wpn_fps_smg_x_mp9",
		"wpn_fps_smg_x_polymer",
		"wpn_fps_smg_x_schakal",
		"wpn_fps_smg_x_sr2",
		"wpn_fps_smg_x_uzi",
		"wpn_fps_lmg_m249",
		"wpn_fps_lmg_par",
		"wpn_fps_lmg_hk51b",
		"wpn_fps_sho_sko12",
		"wpn_fps_snp_contender",
		-- custom
	"wpn_fps_ass_x_g36",
	"wpn_fps_ass_x_s552"

}
for i, weapon_id in ipairs(no_stock) do
table.list_append(self[weapon_id].uses_parts, { "wpn_fps_upg_s_none" })
end
local no_stock_1 = {
	"wpn_fps_ass_74",
	"wpn_fps_ass_ak5",
	"wpn_fps_ass_akm",
	"wpn_fps_ass_akm_gold",
	"wpn_fps_ass_asval",
	"wpn_fps_ass_flint",
	"wpn_fps_ass_galil",
	"wpn_fps_ass_s552",
	"wpn_fps_ass_scar",
	"wpn_fps_lmg_rpk",
	"wpn_fps_shot_saiga",
	"wpn_fps_smg_akmsu",
	"wpn_fps_smg_coal",
	"wpn_fps_smg_hajk",
	"wpn_fps_smg_polymer",
	"wpn_fps_smg_schakal",
	"wpn_fps_smg_x_akmsu",
	"wpn_fps_smg_x_coal",
	"wpn_fps_smg_x_hajk",
	-- custom
	"wpn_fps_ass_x_s552"
}
for i, weapon_id in ipairs(no_stock_1) do
self[weapon_id].override.wpn_fps_upg_s_none = {stats = {concealment = 3, recoil = -3, spread = -2}}
end
local no_stock_2 = {
	"wpn_fps_smg_mac10",
	"wpn_fps_smg_mp7",
	"wpn_fps_smg_mp9",
	"wpn_fps_smg_sr2",
	"wpn_fps_smg_x_erma",
	"wpn_fps_smg_x_m45",
	"wpn_fps_smg_x_mac10",
	"wpn_fps_smg_x_mp7",
	"wpn_fps_smg_x_mp9",
	"wpn_fps_smg_x_polymer",
	"wpn_fps_smg_x_schakal",
	"wpn_fps_smg_x_sr2",
	"wpn_fps_smg_x_uzi"
}
for i, weapon_id in ipairs(no_stock_2) do
self[weapon_id].override.wpn_fps_upg_s_none = {stats = {concealment = 1, recoil = -2, spread = 0}}
end
local no_stock_3 = {
	"wpn_fps_ass_g36",
	"wpn_fps_smg_cobray",
	"wpn_fps_smg_x_cobray",
	-- custom
	"wpn_fps_ass_x_g36"
}
for i, weapon_id in ipairs(no_stock_3) do
self[weapon_id].override.wpn_fps_upg_s_none = {stats = {concealment = 3, recoil = -2, spread = 0}}
end
self.wpn_fps_smg_uzi.override.wpn_fps_upg_s_none = {stats = {concealment = 5, recoil = -3, spread = -2}}
self.wpn_fps_ass_fal.override.wpn_fps_upg_s_none = {stats = {concealment = 6, recoil = -3, spread = -2}}
self.wpn_fps_sho_sko12.override.wpn_fps_upg_s_none = {unit = "units/pd2_dlc_pxp2/weapons/wpn_fps_sho_sko12_pts/wpn_fps_sho_sko12_s_adapter_short"}
self.wpn_fps_ass_g36.adds.wpn_fps_upg_s_none = {"wpn_fps_ass_g36_body_standard", "wpn_fps_ass_g36_g_standard"}
local no_sight = {
	"wpn_fps_ass_amcar",
	"wpn_fps_ass_contraband",
	"wpn_fps_ass_vhs",
	"wpn_fps_ass_flint",
	"wpn_fps_ass_l85a2",
	"wpn_fps_ass_m16",
	"wpn_fps_ass_m4",
	"wpn_fps_ass_scar",
	"wpn_fps_ass_tecci",
	"wpn_fps_sho_aa12",
	"wpn_fps_sho_basset",
	"wpn_fps_sho_ksg",
	"wpn_fps_sho_rota",
	"wpn_fps_sho_sko12",
	"wpn_fps_sho_x_basset",
	"wpn_fps_sho_x_rota",
	"wpn_fps_smg_hajk",
	"wpn_fps_smg_olympic",
	"wpn_fps_smg_polymer",
	"wpn_fps_smg_x_hajk",
	"wpn_fps_smg_x_olympic",
	"wpn_fps_smg_x_polymer",
	"wpn_fps_smg_shepheard",
	"wpn_fps_smg_x_shepheard",
	"wpn_fps_ass_komodo",
	"wpn_fps_ass_shak12",
	"wpn_fps_sho_sko12",
	"wpn_fps_sho_x_sko12",
	"wpn_fps_lmg_hcar",
	"wpn_fps_lmg_hailstorm",
	"wpn_fps_gre_ms3gl",
	"wpn_fps_gre_ray",
	"wpn_fps_rpg7",
	"wpn_fps_bow_elastic",
	-- custom
	"wpn_fps_ass_x_amcar"
}
for i, weapon_id in ipairs(no_sight) do
table.list_append(self[weapon_id].uses_parts, { "wpn_fps_ass_l85a2_o_none" })
end

-- Vertical Grips
local vg_flat = {
	"wpn_fps_ass_amcar",
	"wpn_fps_ass_74",
	"wpn_fps_ass_ak5",
	"wpn_fps_ass_akm",
	"wpn_fps_ass_akm_gold",
	"wpn_fps_ass_famas",
	"wpn_fps_ass_g3",
	"wpn_fps_ass_g36",
	"wpn_fps_ass_komodo",
	"wpn_fps_ass_m16",
	"wpn_fps_ass_m4",
	"wpn_fps_ass_s552",
	"wpn_fps_ass_scar",
	"wpn_fps_ass_vhs",
	"wpn_fps_sho_x_rota",
	"wpn_fps_shot_saiga",
	"wpn_fps_smg_akmsu",
	"wpn_fps_smg_mp5",
	"wpn_fps_smg_olympic",
	"wpn_fps_smg_shepheard",
	"wpn_fps_smg_x_akmsu",
	"wpn_fps_smg_x_hajk",
	"wpn_fps_smg_x_mp5",
	"wpn_fps_smg_x_mp7",
	"wpn_fps_smg_x_mp9",
	"wpn_fps_smg_x_olympic",
	"wpn_fps_smg_x_schakal",
	"wpn_fps_smg_x_shepheard",
	"wpn_fps_smg_x_sr2",
	"wpn_fps_smg_x_uzi",
	"wpn_fps_snp_desertfox",
	"wpn_fps_snp_tti",
	-- custom
	"wpn_fps_ass_x_ak74",
	"wpn_fps_ass_x_akm",
	"wpn_fps_ass_x_akm_gold",
	"wpn_fps_ass_x_amcar",
	"wpn_fps_ass_x_g36",
	"wpn_fps_ass_x_s552"
}
for i, weapon_id in ipairs(vg_flat) do
	table.list_append(self[weapon_id].uses_parts, {
		"wpn_fps_upg_vg_afg",
		"wpn_fps_upg_vg_cobra"
	})
end

end)