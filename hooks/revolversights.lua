Hooks:PostHook(WeaponFactoryTweakData, "init", "EAC_rev_sights", function(self, tweak_data, weapon_skins)

	self.parts.wpn_fps_upg_o_rmr.stance_mod.wpn_fps_pis_2006m = {translation = Vector3(0.077, 0, -1.5)}
	self.parts.wpn_fps_upg_o_rmr.stance_mod.wpn_fps_pis_model3 = {translation = Vector3(0, 0, -1.042), rotation = Rotation(0.047, 0.051, 0)}
	self.parts.wpn_fps_upg_o_rmr.stance_mod.wpn_fps_pis_peacemaker = {translation = Vector3(0.04, 0, -1.568), rotation = Rotation(0.048, 0.051, 0)}
	self.parts.wpn_fps_upg_o_rmr.stance_mod.wpn_fps_pis_chinchilla = {translation = Vector3(0, 0, -0.902), rotation = Rotation(-0.053, 0.51, 0)}
	local revolvers = {
		"wpn_fps_pis_2006m",
		"wpn_fps_pis_model3",
		"wpn_fps_pis_peacemaker",
		"wpn_fps_pis_chinchilla"
	}
	local o_rev = {}
	for m, sights in ipairs(self.wpn_fps_pis_legacy.uses_parts) do
		if self.parts[sights].type == "sight" then
			if self.parts[sights].name_id ~= "bm_wp_wpn_fps_upg_o_invissight" then
				table.insert(o_rev, sights)
				-- log("o_rev ->" .. sights)
			end
		end
	end
	for i,rev in ipairs(revolvers) do
		for j,o in ipairs(o_rev) do
			self[rev].override[o] = {a_obj = "a_sight", parent = false}
			table.list_append(self[rev].uses_parts, { o })
			-- log(rev .. "->" .. o)
		end
	end
	for k,o in ipairs(o_rev) do
		self.wpn_fps_pis_2006m.adds[o] = {"wpn_fps_pis_deagle_fg_rail"}
		self.wpn_fps_pis_2006m.override.wpn_fps_pis_deagle_fg_rail = {a_obj = "a_o", parent = false}
		if not self.parts.wpn_fps_pis_2006m_b_short.forbids then self.parts.wpn_fps_pis_2006m_b_short.forbids = {} end
		table.insert(self.parts.wpn_fps_pis_2006m_b_short.forbids, o)
		
		self.wpn_fps_pis_peacemaker.adds[o] = {"wpn_fps_pis_deagle_fg_rail"}
		self.wpn_fps_pis_peacemaker.adds.wpn_fps_upg_o_leupold = {"wpn_fps_pis_deagle_fg_rail"}
		self.wpn_fps_pis_peacemaker.override.wpn_fps_upg_o_leupold = {a_obj = "a_sight", parent = false}
		self.wpn_fps_pis_peacemaker.override.wpn_fps_pis_deagle_fg_rail = {a_obj = "a_o", parent = false}
		
		if not self.parts.wpn_fps_pis_chinchilla_b_satan.override then self.parts.wpn_fps_pis_chinchilla_b_satan.override = {} end
		self.parts.wpn_fps_pis_chinchilla_b_satan.override[o] = {
			a_obj = "a_sight_d",
			stance_mod = {
				wpn_fps_pis_chinchilla = {
					translation = Vector3(0, 0, -1.152),
					rotation = Rotation(0.057, 0.051, 0)
				}
			}
		}
	end
end)