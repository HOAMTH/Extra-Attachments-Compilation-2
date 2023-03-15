Hooks:PostHook(WeaponFactoryTweakData, "init", "EAC_vertical_grips", function(self)
local vg_ids = {
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
	"wpn_fps_upg_vg_shak12"
}
local add_vg = {
	"wpn_fps_smg_mp7",
	"wpn_fps_smg_mp9",
	"wpn_fps_smg_uzi",
	"wpn_fps_smg_hajk",
	"wpn_fps_smg_sr2",
	"wpn_fps_smg_x_sr2",
	"wpn_fps_smg_schakal",
	"wpn_fps_ass_aug",
	"wpn_fps_ass_tecci",
	"wpn_fps_ass_corgi",
	"wpn_fps_lmg_rpk",
	"wpn_fps_sho_rota",
	"wpn_fps_gre_slap",
	"wpn_fps_ass_l85a2",
	"wpn_fps_smg_x_hajk",
	"wpn_fps_smg_x_mp7",
	"wpn_fps_smg_x_mp9",
	"wpn_fps_smg_x_schakal",
	"wpn_fps_smg_x_uzi",
	"wpn_fps_smg_thompson",
	"wpn_fps_smg_x_m1928",
	"wpn_fps_sho_x_rota",
--
	"wpn_fps_ass_amcar",
	"wpn_fps_ass_74",
	"wpn_fps_ass_flint",
	"wpn_fps_ass_ak5",
	"wpn_fps_ass_akm",
	"wpn_fps_ass_akm_gold",
	"wpn_fps_ass_fal",
	"wpn_fps_ass_g3",
	"wpn_fps_ass_g36",
	"wpn_fps_ass_galil",
	"wpn_fps_ass_m16",
	"wpn_fps_ass_m4",
	"wpn_fps_ass_s552",
	"wpn_fps_ass_scar",
	"wpn_fps_ass_komodo",
	"wpn_fps_ass_vhs",
	"wpn_fps_sho_basset",
	"wpn_fps_sho_x_basset",
	"wpn_fps_shot_saiga",
	"wpn_fps_smg_akmsu",
	"wpn_fps_smg_mac10",
	"wpn_fps_smg_mp5",
	"wpn_fps_smg_olympic",
	"wpn_fps_snp_tti",
	"wpn_fps_smg_x_mac10",
	"wpn_fps_smg_x_mp5",
	"wpn_fps_smg_x_akmsu",
	"wpn_fps_smg_x_olympic",
	"wpn_fps_smg_shepheard",
	"wpn_fps_smg_x_shepheard",
	"wpn_fps_smg_polymer",
	"wpn_fps_smg_x_polymer",
	"wpn_fps_ass_famas",
	"wpn_fps_smg_vityaz",
	"wpn_fps_smg_x_vityaz",
	"wpn_fps_ass_shak12",
	"wpn_fps_sho_sko12",
	"wpn_fps_sho_x_sko12",
	"wpn_fps_lmg_hk51b",
	"wpn_fps_gre_m32",
	"wpn_fps_fla_mk2",
	"wpn_fps_ass_tecci",
	"wpn_fps_snp_victor",
	"wpn_fps_lmg_hcar",
	"wpn_fps_lmg_m249",
	"wpn_fps_snp_qbu88",
	"wpn_fps_ass_m14",
	-- customs	
	"wpn_fps_smg_x_416",
	"wpn_fps_ass_x_amcar",
	"wpn_fps_ass_x_g36",
	"wpn_fps_ass_x_s552"
}
for i, weapon_id in ipairs(add_vg) do
	for j, part_id in ipairs(vg_ids) do
		if not self.parts[part_id].override then self.parts[part_id].override = {} end
		table.list_append(self[weapon_id].uses_parts, { part_id })
	end
end
local wptoflat = {
	"wpn_fps_ass_aug",
	"wpn_fps_ass_l85a2",
	"wpn_fps_sho_rota",
	"wpn_fps_smg_schakal",
	"wpn_fps_smg_hajk",
	"wpn_fps_ass_tecci",
	"wpn_fps_ass_shak12"
}
for i, weapon_id in ipairs(wptoflat) do
	table.list_append(self[weapon_id].uses_parts, {
		"wpn_fps_upg_vg_none",
		"wpn_fps_upg_vg_afg",
		"wpn_fps_upg_vg_cobra"
	})
end
if not self.parts.wpn_fps_upg_vg_none.override then self.parts.wpn_fps_upg_vg_none.override = {} end
self.parts.wpn_fps_upg_vg_none.override.wpn_fps_smg_thompson_foregrip = {unit = "units/payday2/weapons/wpn_upg_dummy/wpn_upg_dummy"}
local xsansvg = {
	"wpn_fps_smg_x_m1928",
	"wpn_fps_sho_x_rota",
	"wpn_fps_smg_x_hajk",
	"wpn_fps_smg_x_mp7",
	"wpn_fps_smg_x_mp9",
	"wpn_fps_smg_x_sr2",
	"wpn_fps_smg_x_polymer",	
	"wpn_fps_smg_x_uzi",
	"wpn_fps_smg_x_schakal"
}
for i, weapon_id in ipairs(xsansvg) do
	table.list_append(self[weapon_id].uses_parts, {"wpn_fps_upg_vg_none"})
end
-- VG rails
local vgs_with_rails = {
	"wpn_fps_smg_schakal_vg_surefire",
	"wpn_fps_upg_vg_verticalgrip",
	"wpn_fps_upg_vg_stubby",
	"wpn_fps_upg_vg_moe",
	"wpn_fps_upg_vg_tecci",
	"wpn_fps_upg_vg_foldable",
	"wpn_fps_upg_vg_grippod",
	"wpn_fps_upg_vg_afg",
	"wpn_fps_upg_vg_cobra",
	"wpn_fps_upg_vg_m32",
	"wpn_fps_upg_vg_mk2",
	"wpn_fps_upg_vg_polymer",
	"wpn_fps_upg_vg_shak12"
}
local vg_rail_wpns = {
	"wpn_fps_smg_mac10",
	"wpn_fps_smg_x_mac10",
	"wpn_fps_smg_shepheard",
	"wpn_fps_smg_x_shepheard",
	"wpn_fps_smg_mp5",
	"wpn_fps_smg_x_mp5",
	"wpn_fps_smg_olympic",
	"wpn_fps_smg_x_olympic",
	"wpn_fps_smg_sr2",
	"wpn_fps_smg_x_sr2",
	"wpn_fps_smg_akmsu",
	"wpn_fps_smg_x_akmsu",
	"wpn_fps_ass_74",
	"wpn_fps_ass_akm",
	"wpn_fps_ass_akm_gold",
	"wpn_fps_ass_amcar",
	"wpn_fps_ass_x_amcar",
	"wpn_fps_ass_m4",
	"wpn_fps_ass_m16",
	"wpn_fps_ass_g36",
	"wpn_fps_ass_x_g36",
	"wpn_fps_ass_ak5",
	"wpn_fps_ass_s552",
	"wpn_fps_ass_x_s552",
	"wpn_fps_ass_fal",
	"wpn_fps_ass_famas",
	"wpn_fps_ass_galil",
	"wpn_fps_ass_g3",
	"wpn_fps_ass_tecci",
	"wpn_fps_shot_saiga",	
	"wpn_fps_lmg_rpk",	
	"wpn_fps_snp_tti",
	"wpn_fps_smg_thompson",
	"wpn_fps_smg_x_m1928",
	"wpn_fps_ass_famas",
	"wpn_fps_sho_sko12",
	"wpn_fps_sho_x_sko12",
	"wpn_fps_lmg_hk51b",
	"wpn_fps_snp_victor",
	"wpn_fps_lmg_hcar",
	"wpn_fps_lmg_m249",
	"wpn_fps_snp_qbu88",
	"wpn_fps_ass_m14"
}
for i, wpn_id in ipairs(vg_rail_wpns) do
	self[wpn_id].override.wpn_fps_shot_r870_gadget_rail = {a_obj = "a_vg_rail"}
	for j, part_id in pairs(vgs_with_rails) do
		if not self[wpn_id].adds[part_id] then self[wpn_id].adds[part_id] = {} end
		table.list_append(self[wpn_id].adds[part_id], {"wpn_fps_shot_r870_gadget_rail"})
	end
end
	self.wpn_fps_snp_tti.override.wpn_fps_snp_tti_fg_standard = {override = {wpn_fps_shot_r870_gadget_rail = {a_obj = "a_vg_rail_vanilla"}}}
	self.wpn_fps_snp_tti.override.wpn_fps_uupg_fg_radian = {override = {wpn_fps_shot_r870_gadget_rail = {a_obj = "a_vg_rail_vanilla"}}}
	self.wpn_fps_snp_tti.override.wpn_fps_snp_tti_fg_standard.override.wpn_fps_snp_tti_vg_standard = {a_obj = "a_vg_vanilla"}
	self.wpn_fps_snp_tti.override.wpn_fps_uupg_fg_radian.override.wpn_fps_snp_tti_vg_standard = {a_obj = "a_vg_vanilla"}
for k, part_id in pairs(vgs_with_rails) do
	self.wpn_fps_snp_tti.override.wpn_fps_snp_tti_fg_standard.override[part_id] = {a_obj = "a_vg_vanilla"}
	self.wpn_fps_snp_tti.override.wpn_fps_uupg_fg_radian.override[part_id] = {a_obj = "a_vg_vanilla"}
end

local no_rail_req = {
			"wpn_fps_upg_ak_fg_krebs",
			"wpn_fps_upg_ak_fg_trax",
			"wpn_fps_upg_fg_midwest",
			"wpn_upg_ak_fg_combo3",
			"wpn_fps_m16_fg_railed",
			"wpn_fps_upg_ass_m4_fg_lvoa",			
			"wpn_fps_m4_uupg_fg_rail",
			"wpn_fps_ass_g36_fg_c",
			"wpn_fps_ass_g36_fg_k",
			"wpn_fps_ass_ak5_fg_ak5c",
			"wpn_fps_ass_s552_fg_railed",
			"wpn_fps_ass_fal_fg_01",
			"wpn_fps_ass_galil_fg_fab",
			"wpn_fps_ass_g3_fg_railed",
			"wpn_fps_smg_mac10_body_ris",
			"wpn_fps_smg_mp5_fg_m5k",
			"wpn_fps_smg_mp5_fg_mp5a5",
			"wpn_fps_smg_olympic_fg_railed",
			"wpn_fps_smg_akmsu_fg_rail",
			"wpn_fps_upg_ak_fg_zenit",
			"wpn_fps_ass_tecci_fg_standard",
			"wpn_fps_snp_victor_sbr_kit",
			"wpn_fps_lmg_m249_fg_mk46",
			"wpn_fps_lmg_hk51b_fg_railed",
			"wpn_fps_lmg_hcar_body_conversionkit",
			"wpn_fps_ass_m14_body_ebr",
			"wpn_fps_ass_m14_body_jae"
}
for _,part_id in pairs(no_rail_req) do
	if not self.parts[part_id].override then self.parts[part_id].override = {} end
	self.parts[part_id].override.wpn_fps_shot_r870_gadget_rail = {unit = "units/payday2/weapons/wpn_upg_dummy/wpn_upg_dummy"}
end
local incomp = {
	"wpn_fps_smg_uzi_fg_standard",
	"wpn_fps_sho_basset_fg_short",
	"wpn_fps_lmg_rpk_fg_wood",
	"wpn_fps_lmg_rpk_fg_combo1",
	"wpn_fps_lmg_rpk_fg_combo4",
	"wpn_fps_smg_thompson_foregrip_discrete"
}
for _, vg_forbid in pairs(vg_ids) do
	for f, fg_forbid in pairs(incomp) do
		if not self.parts[vg_forbid].forbids then self.parts[vg_forbid].forbids = {} end
		if not self.parts[fg_forbid].forbids then self.parts[fg_forbid].forbids = {} end
		table.list_append(self.parts[vg_forbid].forbids, { "wpn_fps_upg_vg_ass_smg_verticalgrip" })
		table.list_append(self.parts[fg_forbid].forbids, { "wpn_fps_upg_vg_none" })		
		table.list_append(self.parts[fg_forbid].forbids, { "wpn_fps_upg_vg_afg" })
		table.list_append(self.parts[fg_forbid].forbids, { "wpn_fps_upg_vg_cobra" })
		table.list_append(self.parts[fg_forbid].forbids, { vg_forbid })
	end
end
self.parts.wpn_fps_upg_vg_none.forbids         = {"wpn_fps_upg_vg_ass_smg_verticalgrip"}
for _, part_id in pairs(vg_ids) do
	self.parts[part_id].override.wpn_fps_smg_thompson_foregrip = {unit = "units/payday2/weapons/wpn_upg_dummy/wpn_upg_dummy"}
	self.wpn_fps_smg_sr2.override[part_id] = {a_obj = "a_vg_2"}
end
-- RPK
self.wpn_fps_lmg_rpk.override.wpn_fps_upg_fg_midwest = {adds = {"wpn_fps_upg_vg_ass_smg_verticalgrip" }}
self.wpn_fps_lmg_rpk.override.wpn_fps_upg_ak_fg_tapco = {adds = {"wpn_fps_upg_vg_ass_smg_verticalgrip" }}
self.wpn_fps_lmg_rpk.override.wpn_upg_ak_fg_combo3 = {adds = {"wpn_fps_upg_vg_ass_smg_verticalgrip" }}
self.wpn_fps_lmg_rpk.override.wpn_fps_upg_ak_fg_krebs = {adds = {"wpn_fps_upg_vg_ass_smg_verticalgrip" }}
self.wpn_fps_lmg_rpk.override.wpn_fps_upg_ak_fg_trax = {adds = {"wpn_fps_upg_vg_ass_smg_verticalgrip" }}
table.list_append(self.wpn_fps_lmg_rpk.uses_parts, { "wpn_fps_upg_vg_ass_smg_verticalgrip" })
table.list_append(self.parts.wpn_fps_lmg_rpk_fg_combo1.forbids, { "wpn_fps_ak_extra_ris" })

self.parts.wpn_fps_lmg_rpk_fg_standard.adds = {"wpn_fps_addon_ris", "wpn_fps_upg_vg_ass_smg_verticalgrip"}

table.list_append(self.wpn_fps_smg_uzi.uses_parts         , { "wpn_fps_upg_vg_ass_smg_verticalgrip" })
table.list_append(self.wpn_fps_smg_x_uzi.uses_parts       , { "wpn_fps_upg_vg_ass_smg_verticalgrip" })
table.list_append(self.wpn_fps_smg_mp7.default_blueprint  , { "wpn_fps_upg_vg_ass_smg_stubby"       })
self.parts.wpn_fps_smg_mp7_body_standard.adds = {}
table.list_append(self.wpn_fps_smg_mp9.default_blueprint  , { "wpn_fps_upg_vg_ass_smg_stubby"       })
table.list_append(self.wpn_fps_smg_x_mp7.default_blueprint, { "wpn_fps_upg_vg_ass_smg_stubby"       })
table.list_append(self.wpn_fps_smg_x_mp9.default_blueprint, { "wpn_fps_upg_vg_ass_smg_stubby"       })
table.list_append(self.wpn_fps_ass_l85a2.default_blueprint, { "wpn_fps_upg_vg_ass_smg_verticalgrip" })
table.list_append(self.wpn_fps_ass_l85a2.uses_parts       , { "wpn_fps_upg_vg_ass_smg_verticalgrip" })
self.wpn_fps_ass_l85a2.override.wpn_fps_upg_vg_ass_smg_verticalgrip = {unit = "units/mods/weapons/wpn_fps_upg_vg_grippod/wpn_fps_upg_vg_grippod"}
table.list_append(self.wpn_fps_gre_m32.default_blueprint, { "wpn_fps_upg_vg_ass_smg_verticalgrip" })
table.list_append(self.wpn_fps_gre_m32.uses_parts       , { "wpn_fps_upg_vg_ass_smg_verticalgrip" })
self.wpn_fps_gre_m32.override.wpn_fps_upg_vg_ass_smg_verticalgrip = {unit = "units/mods/weapons/wpn_fps_upg_vg_m32/wpn_fps_upg_vg_m32"}
table.list_append(self.wpn_fps_fla_mk2.default_blueprint, { "wpn_fps_upg_vg_ass_smg_verticalgrip" })
table.list_append(self.wpn_fps_fla_mk2.uses_parts       , { "wpn_fps_upg_vg_ass_smg_verticalgrip" })
self.wpn_fps_fla_mk2.override.wpn_fps_upg_vg_ass_smg_verticalgrip = {unit = "units/mods/weapons/wpn_fps_upg_vg_mk2/wpn_fps_upg_vg_mk2"}
table.list_append(self.wpn_fps_ass_shak12.default_blueprint, { "wpn_fps_upg_vg_ass_smg_verticalgrip" })
table.list_append(self.wpn_fps_ass_shak12.uses_parts       , { "wpn_fps_upg_vg_ass_smg_verticalgrip" })
self.wpn_fps_ass_shak12.override.wpn_fps_upg_vg_ass_smg_verticalgrip = {unit = "units/mods/weapons/wpn_fps_upg_vg_shak12/wpn_fps_upg_vg_shak12"}
table.list_append(self.parts.wpn_fps_smg_schakal_vg_surefire.forbids, { "wpn_fps_upg_vg_ass_smg_verticalgrip" })
self.parts.wpn_fps_smg_polymer_fg_standard.type = "vertical_grip"

end)