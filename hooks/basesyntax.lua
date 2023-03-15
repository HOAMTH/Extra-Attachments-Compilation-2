Hooks:PostHook(WeaponFactoryTweakData, "init", "EAC_basesyntax", function(self)
_G.EAC = _G.EAC or {}
EAC.existing_weapons = {}             -- All weapons in the game.
EAC.all_total_ns = {}                 -- All barrel extensions
EAC.all_parts_with_forbids = {}       -- All parts with forbids syntax
EAC.all_parts_with_overrides = {}     -- All parts with override syntax
EAC.m4_fg = {}                        -- All M4-type foregrips
EAC.m4_grips = {}                     -- All M4-type grips
EAC.m4_butt = {}                      -- All M4-type buttplate-style stock
EAC.m4_stocks = {}                    -- All M4-type stocks
EAC.m4_ur = {}                   	  -- All M4-type upper receivers
EAC.ak_stocks = {}                    -- All AK-type stocks
EAC.ak_grips = {}                     -- All AK-type grips
EAC.ak_fg = {}                        -- All AK-type foregrips
EAC.ar_sights = {}                    -- All full-sized sights.
EAC.ar_gadgets = {}                   -- All AR gadgets.
EAC.m4_mags = {}                   	  -- All M4-type magazines.
	
-- Groundwork, making sure we don't have to do a ton of sanity checks.	
for k, weapon in pairs(self) do
    if weapon.default_blueprint then
        if not weapon.adds 			then weapon.adds = {} 		end
        if not weapon.override 		then weapon.override = {}   end
        if not weapon.uses_parts 	then weapon.uses_parts = {} end
		if self[k] and not (string.match(k, "_npc") or string.match(k, "_primary") or string.match(k, "parts") or string.match(k, "aaaaa") or string.match(k, "_secondary") and not string.match(k, "saw_secondary")) then
			table.insert(EAC.existing_weapons, k)
		end
    end
end
for l, part in pairs(self.parts) do
    if part.name_id then
        if not part.adds		then part.adds = {} 	end
        if not part.override 	then part.override = {} end
        if not part.forbids  	then part.forbids = {}  end
    end
end

-- Gathering weapon parts with attributes that will affect other parts
for all_p, data in pairs(self.parts) do
	if self.parts[all_p].forbids  then						-- Create a list of all parts with "forbids" syntax.
		table.insert(EAC.all_parts_with_forbids, all_p)
	end
	if self.parts[all_p].override then						-- Create a list of all parts with "override" syntax.
		table.insert(EAC.all_parts_with_overrides, all_p)
	end	
	if self.parts[all_p].type == "barrel_ext" and self.parts[all_p].pcs and self.parts[all_p].texture_bundle_folder ~= "mods" then
		table.insert(EAC.all_total_ns, all_p)				-- Create a list of ALL barrel extensions.
	end
end
-- Gathering M4 family parts
for i, part_ids in pairs(self.wpn_fps_ass_m4.uses_parts) do
	if self.parts[part_ids].type == "grip" and self.parts[part_ids].pcs then 
	-- log(tostring(part_ids) .. " is a M4 type grip.")
		table.insert(EAC.m4_grips, part_ids)
	end
	if self.parts[part_ids].type == "stock" and self.parts[part_ids].pcs and self.parts[part_ids].adds_type then 
	-- log(tostring(part_ids) .. " is a M4 type stock.")
		table.insert(EAC.m4_stocks, part_ids)	
	end
	if not table.contains(EAC.m4_stocks, "wpn_fps_upg_m4_s_standard") then table.insert(EAC.m4_stocks, "wpn_fps_upg_m4_s_standard") end
	
	if self.parts[part_ids].type == "stock" and self.parts[part_ids].pcs and not self.parts[part_ids].adds_type then 
	-- log(tostring(part_ids) .. " is a M4 butt plate stock.")
		table.insert(EAC.m4_butt, part_ids)
	end
	if not table.contains(EAC.m4_butt, "wpn_fps_upg_m4_s_solid")      then table.insert(EAC.m4_butt, "wpn_fps_upg_m4_s_solid")      end
	if not table.contains(EAC.m4_butt, "wpn_fps_ass_tecci_s_short")	  then table.insert(EAC.m4_butt, "wpn_fps_ass_tecci_s_short")   end
	if not table.contains(EAC.m4_butt, "wpn_fps_smg_olympic_s_short") then table.insert(EAC.m4_butt, "wpn_fps_smg_olympic_s_short") end
	if not table.contains(EAC.m4_butt, "wpn_fps_upg_m4_s_contender")  then table.insert(EAC.m4_butt, "wpn_fps_upg_m4_s_contender")  end
	
	if self.parts[part_ids].type == "foregrip" and self.parts[part_ids].pcs then 
	-- log(tostring(part_ids) .. " is a M4 butt plate stock.")
		if not EAC.m4_fg[part_ids] then table.insert(EAC.m4_fg, part_ids) end
	end
	if not table.contains(EAC.m4_fg, "wpn_fps_m16_fg_railed")       then table.insert(EAC.m4_fg, "wpn_fps_m16_fg_railed")       end
	if not table.contains(EAC.m4_fg, "wpn_fps_upg_ass_m16_fg_stag") then table.insert(EAC.m4_fg, "wpn_fps_upg_ass_m16_fg_stag") end
	if not table.contains(EAC.m4_fg, "wpn_fps_m16_fg_vietnam")      then table.insert(EAC.m4_fg, "wpn_fps_m16_fg_vietnam")      end
	
	if self.parts[part_ids].type == "gadget" and self.parts[part_ids].pcs then 
	-- log(tostring(part_ids) .. " is a gadget.")
		table.insert(EAC.ar_gadgets, part_ids)
	end
	if self.parts[part_ids].type == "sight" and self.parts[part_ids].pcs then 
	-- log(tostring(part_ids) .. " is a sight.")
		table.insert(EAC.ar_sights, part_ids)
	end	
	if self.parts[part_ids].type == "magazine" and self.parts[part_ids].pcs then 
	-- log(tostring(part_ids) .. " is a M4-type magazine.")
		table.insert(EAC.m4_mags, part_ids)
	end
	if self.parts[part_ids].type == "upper_reciever" and self.parts[part_ids].pcs then 
	-- log(tostring(part_ids) .. " is a M4-type upper reciever.")
		table.insert(EAC.m4_ur, part_ids)
	end
	
end
for i, part_ids in pairs(self.wpn_fps_ass_akm.uses_parts) do
	if self.parts[part_ids].type == "stock" and self.parts[part_ids].pcs and not self.parts[part_ids].adds_type then 
	-- log(tostring(part_ids) .. " is a AK type stock.")
		table.insert(EAC.ak_stocks, part_ids)	
	end
	if not table.contains(EAC.ak_stocks, "wpn_upg_ak_s_folding")	   then table.insert(EAC.ak_stocks, "wpn_upg_ak_s_folding")		  end
	if not table.contains(EAC.ak_stocks, "wpn_fps_lmg_rpk_s_standard") then table.insert(EAC.ak_stocks, "wpn_fps_lmg_rpk_s_standard") end
	
	if self.parts[part_ids].type == "grip" and self.parts[part_ids].pcs then 
	-- log(tostring(part_ids) .. " is a AK type grip.")
		table.insert(EAC.ak_grips, part_ids)	
	end
	if not table.contains(EAC.ak_grips, "wpn_fps_upg_galil_g_sniper") then table.insert(EAC.ak_grips, "wpn_fps_upg_galil_g_sniper") end
	
	if self.parts[part_ids].type == "foregrip" and self.parts[part_ids].pcs then 
	-- log(tostring(part_ids) .. " is a AK type grip.")
		table.insert(EAC.ak_fg, part_ids)	
	end
	if not table.contains(EAC.ak_fg, "wpn_fps_lmg_rpk_fg_standard") then table.insert(EAC.ak_fg, "wpn_fps_lmg_rpk_fg_standard") end
	if not table.contains(EAC.ak_fg, "wpn_fps_lmg_rpk_fg_combo1")   then table.insert(EAC.ak_fg, "wpn_fps_lmg_rpk_fg_combo1")   end
end
for i, part_ids in pairs(self.wpn_fps_ass_galil.uses_parts) do
	if self.parts[part_ids].type == "stock" and self.parts[part_ids].pcs and not self.parts[part_ids].adds_type then 
	-- log(tostring(part_ids) .. " is a Galil stock.")
		table.insert(EAC.ak_stocks, part_ids)
	end
end

log("[EAC] Dumping lists:")
log("[EAC] M4 foregrips:")
for i, j in ipairs(EAC.m4_fg) do log(j) end
log("[EAC] M4 grips:")
for i, j in ipairs(EAC.m4_grips) do log(j) end
log("[EAC] M4 butt stocks:")
for i, j in ipairs(EAC.m4_butt) do log(j) end
log("[EAC] M4 stocks:")
for i, j in ipairs(EAC.m4_stocks) do log(j) end
log("[EAC] M4 magazines:")
for i, j in ipairs(EAC.m4_mags) do log(j) end
log("[EAC] M4 upper recievers:")
for i, j in ipairs(EAC.m4_ur) do log(j) end
log("[EAC] AK stocks:")
for i, j in ipairs(EAC.ak_stocks) do log(j) end
log("[EAC] AK grips:")
for i, j in ipairs(EAC.ak_grips) do log(j) end
log("[EAC] AK foregrips:")
for i, j in ipairs(EAC.ak_fg) do log(j) end
log("[EAC] Rifle sights:")
for i, j in ipairs(EAC.ar_sights) do log(j) end
log("[EAC] Rifle gadgets:")
for i, j in ipairs(EAC.ar_gadgets) do log(j) end
-- Customs
local custom_weapons = {
"wpn_fps_smg_x_416",
"wpn_fps_ass_x_ak74",
"wpn_fps_ass_x_akm",
"wpn_fps_ass_x_akm_gold",
"wpn_fps_lmg_x_rpk",
"wpn_fps_lmg_x_m249",
"wpn_fps_smg_x_ump",
"wpn_fps_ass_x_amcar",
"wpn_fps_ass_x_g36",
"wpn_fps_ass_x_s552",
"wpn_fps_ass_x_asval",
}
for i, weapon_id in ipairs(custom_weapons) do
	if not self[weapon_id] 				then self[weapon_id] = {}				end
	if not self[weapon_id].override 	then self[weapon_id].override = {}		end
	if not self[weapon_id].adds 		then self[weapon_id].adds = {}			end
	if not self[weapon_id].uses_parts 	then self[weapon_id].uses_parts = {}	end
end
end)