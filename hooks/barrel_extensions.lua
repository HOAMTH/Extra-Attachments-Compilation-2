Hooks:PostHook(WeaponFactoryTweakData, "create_bonuses", "EAC_boosts2", function(self, tweak_data)

---------------------------------------------------------------
-- General

local EAC = _G.EAC
local existing_weapons 		   = EAC.existing_weapons          -- All weapons in the game.
local all_total_ns             = EAC.all_total_ns                 -- All barrel extensions
local all_parts_with_forbids   = EAC.all_parts_with_forbids       -- All parts with forbids syntax
local all_parts_with_overrides = EAC.all_parts_with_overrides   -- All parts with override syntax
local total_pis = {}                    -- All pistols
local all_pis_ns = {}                   -- All pistol-type extensions
local ar_smg_lmg = {}                   -- All ARs, SMGs, LMGs
local all_ar_ext = {}                   -- All AR-type extensions
local total_sho = {}                    -- All Shotguns
local all_sho_ns = {}                   -- All Shotgun-type extensions

-- for id, w in pairs(tweak_data.upgrades.definitions) do 	-- Create a list of all weapons in the game.
    -- local weapon_tweak = tweak_data.weapon[w.weapon_id]
	-- if w.weapon_id and weapon_tweak and w.factory_id and self[w.factory_id] and self[w.factory_id].uses_parts then
		-- table.insert(existing_weapons, w.factory_id)
	-- end
-- end

-- log("all_parts_with_overrides : " .. table.size(all_parts_with_overrides))
-- for i, apo in pairs(all_parts_with_overrides) do log(i ..  " " .. tostring(apo)) end

---------------------------------------------------------------
-- Pistols

for i, data in ipairs(existing_weapons) do
     if table.contains(self[data].uses_parts, "wpn_fps_upg_pis_ns_flash") and data ~= "wpn_fps_aaaaa" then
		table.insert(total_pis, data)					-- Create a list of all pistols (They all use the "Flash Hider").
	end                                                 -- We'll use this to give all "pistol-type" barrel extensions to every "pistol-type" gun.
end
-- log("total_pis : " .. table.size(total_pis))
-- for i, tpis in pairs(total_pis) do log(i .. " " .. tostring(tpis)) end

for m, data in ipairs(total_pis) do
	for _, ns_pis in ipairs(all_total_ns) do
		if table.contains(self[data].uses_parts, ns_pis) then
			if not table.contains(all_pis_ns, ns_pis) then table.insert(all_pis_ns, ns_pis) end           -- Gather all the barrel extensions that are actually used by "Pistol-type" guns.
		end
	end
end
all_pis_ns = table.list_union(all_pis_ns)               -- This cuts out duplicates. The list would otherwise be >1200 entries long, all repititions of the same barrel extensions.
-- log("all_pis_ns : " .. table.size(all_pis_ns))
-- for i, npis in pairs(all_pis_ns) do log(i ..  " " .. tostring(npis)) end	

self.wpn_fps_pis_peacemaker.override.wpn_fps_upg_pis_ns_flash = { a_obj = "a_ns", parent = "slide"}
self.wpn_fps_pis_2006m.override.wpn_fps_upg_pis_ns_flash = { a_obj = "a_ns", parent = "barrel"}
self.wpn_fps_pis_chinchilla.override.wpn_fps_upg_pis_ns_flash = { a_obj = "fire", parent = "barrel"}
self.wpn_fps_pis_model3.override.wpn_fps_upg_pis_ns_flash = { a_obj = "a_ns", parent = "barrel"}
self.wpn_fps_pis_rage.override.wpn_fps_upg_pis_ns_flash = { a_obj = "a_ns", parent = "slide"}

for a, data in pairs(total_pis) do
	for b, ns_id in ipairs(all_pis_ns) do
		for c, forbidding in ipairs(all_parts_with_forbids) do
			if table.contains(self.parts[forbidding].forbids, "wpn_fps_upg_pis_ns_flash") and not table.contains(self.parts[forbidding].forbids, ns_id) then
				table.insert(self.parts[forbidding].forbids, ns_id)
				-- log("Adding to Forbids : " .. "self.parts." .. forbidding .. ".forbids." .. ns_id) 
			end
		end
		for d, overriding in ipairs(all_parts_with_overrides) do
			if self.parts[overriding].override.wpn_fps_upg_pis_ns_flash and not self.parts[overriding].override[ns_id] then
				self.parts[overriding].override[ns_id] = deep_clone(self.parts[overriding].override.wpn_fps_upg_pis_ns_flash)
				-- log("Cloning Part Override : " .. "self.parts." .. overriding .. ".override." .. ns_id) 
			end
		end
		if not self[data].override[ns_id] and self[data].override.wpn_fps_upg_pis_ns_flash or self[data].override.wpn_fps_upg_ns_pis_putnik then
			if self[data].override.wpn_fps_upg_pis_ns_flash then -- Check if there's already an override for the Flash Hider or Medved Suppressor.
				self[data].override[ns_id]	= deep_clone(self[data].override.wpn_fps_upg_pis_ns_flash) -- Copy it.
				-- log("Cloning Weapon Override (Flash Hider): " .. "self." .. data .. ".override." .. ns_id) 
			elseif self[data].override.wpn_fps_upg_ns_pis_putnik then
				self[data].override[ns_id] = deep_clone(self[data].override.wpn_fps_upg_ns_pis_putnik) 
				-- log("Cloning Weapon Override (Medved Suppressor): " .. "self." .. data .. ".override." .. ns_id) 
			end
			if string.match(data, "_rage") or string.match(data, "2006") then
			-- log("Setting Suppressor Override : " .. "self." .. data .. ".override." .. ns_id) 
			self[data].override[ns_id] = deep_clone(self[data].override.wpn_fps_upg_pis_ns_flash)
				if self.parts[ns_id].sub_type == "silencer" then
					table.list_append(self[data].override[ns_id], {sound_switch = {suppressed = "suppressed_c"}})
				end
			end
		else		
			if string.match(data, "_rage") then
				self[data].override.wpn_fps_upg_pis_ns_flash = { a_obj = "a_ns", parent = "slide", sound_switch = {suppressed = "suppressed_c"}}
			end
			if string.match(data, "_2006m") then
				self[data].override.wpn_fps_upg_pis_ns_flash = { a_obj = "a_ns", parent = "barrel", sound_switch = {suppressed = "suppressed_c"}}
			end
		end
		if not table.contains(self[data].uses_parts, ns_id) then
			table.list_append(self[data].uses_parts, { ns_id } ) -- Add all the barrel extensions to the weapons in the list
		end
	end
end

---------------------------------------------------------------
-- Assaut Rifles, Submachine Guns, Light Machine Guns

if not self.parts.wpn_fps_smg_pm9_b_standard.forbids then self.parts.wpn_fps_smg_pm9_b_standard.forbids = {} end
table.insert(self.parts.wpn_fps_smg_pm9_b_standard.forbids, "wpn_fps_upg_ass_ns_jprifles")
table.insert(all_parts_with_forbids, "wpn_fps_smg_pm9_b_standard")

for i, data in ipairs(existing_weapons) do
     if table.contains(self[data].uses_parts, "wpn_fps_upg_ns_ass_smg_small" or "wpn_fps_upg_ass_ns_jprifles") and data ~= "wpn_fps_aaaaa" then
		table.insert(ar_smg_lmg, data)					-- Create a list of all ARs, SMGs, and LMGs (they all use either the "Low Profile Suppressor" or the "Competitor's Compensator").
	end                                                 -- We'll use this to give all "AR-type" barrel extensions to every "AR-type" gun.
end
-- log("ar_smg_lmg : " .. table.size(ar_smg_lmg))
-- for i, asl in pairs(ar_smg_lmg) do log(i .. tostring(asl)) end	

for i, asl in ipairs(ar_smg_lmg) do                     -- Gather all the barrel extensions that are actually used by "AR-type" guns.
	for j, bext in ipairs(all_total_ns) do
		if table.contains(self[asl].uses_parts, bext) and bext ~= "wpn_fps_smg_scorpion_b_suppressed" and bext ~= "wpn_fps_upg_ns_pis_putnik" then 
			table.insert(all_ar_ext, bext)                 -- I'm excluding the Scorpion's Suppressor because its model is positioned as if it was a barrel making it float on every other weapon.
		end
	end
end
all_ar_ext = table.list_union(all_ar_ext)              -- This cuts out duplicates. The list would otherwise be >1200 entries long, all repititions of the same barrel extensions.
table.insert(all_ar_ext, "wpn_fps_upg_scar_ns_standard")
table.insert(all_ar_ext, "wpn_fps_upg_scorpion_b_suppressed")   -- Adding the "vanilla" barrel extensions to the list.
table.insert(all_ar_ext, "wpn_fps_upg_tti_ns_standard")
-- log("all_ar_ext : " .. table.size(all_ar_ext))
-- for i, arex in pairs(all_ar_ext) do	log(i .. " " .. tostring(arex) .. " " .. self.parts[arex].a_obj .. " " .. (self.parts[arex].parent or "-none-")) end

for i, data in ipairs(ar_smg_lmg) do
	for j, ns_id in pairs(all_ar_ext) do
		for k, forbidding in ipairs(all_parts_with_forbids) do
			if self.parts[ns_id].sub_type == "silencer" then				-- Make sure that all of the to-be-added barrel extensions are also featured in "forbids" lists that would affect them.
				if table.contains(self.parts[forbidding].forbids, "wpn_fps_upg_ns_ass_smg_small") and not table.contains(self.parts[forbidding].forbids, ns_id) then
					table.insert(self.parts[forbidding].forbids, ns_id)
				end
			elseif self.parts[ns_id].sub_type ~= "silencer" then            -- Silencers and compensators are treated seperately because some weapons treat them differently.
				if table.contains(self.parts[forbidding].forbids, "wpn_fps_upg_ass_ns_jprifles") and not table.contains(self.parts[forbidding].forbids, ns_id)  then
					table.insert(self.parts[forbidding].forbids, ns_id)
				end
			end
		end
	end
	for l, overriding in pairs(all_parts_with_overrides) do
		for m, ns_id in pairs(all_ar_ext) do
			if string.match(overriding, "uzi") and string.match(ns_id, "uzi") then -- Prevent the Uzi's Suppressed Barrel from having it's positioning messed with.
			else
				if not self.parts[overriding].override[ns_id] then -- Is there already an override? Continue if not.
					if self.parts[overriding].override.wpn_fps_upg_ns_ass_smg_small or self.parts[overriding].override.wpn_fps_upg_ass_ns_jprifles then
						if self.parts[overriding].override.wpn_fps_upg_ns_ass_smg_small then -- Check if there's already an override for the Low Profile Suppressor or Competitor's Compensator.
							self.parts[overriding].override[ns_id] = deep_clone(self.parts[overriding].override.wpn_fps_upg_ns_ass_smg_small) -- Copy it.
							-- log("Cloning Part Override (LP): " .. "self.parts." .. overriding .. ".override." .. ns_id)
						elseif self.parts[overriding].override.wpn_fps_upg_ass_ns_jprifles then
							self.parts[overriding].override[ns_id] = deep_clone(self.parts[overriding].override.wpn_fps_upg_ass_ns_jprifles)
							-- log("Cloning Part Override (JP): " .. "self.parts." .. overriding .. ".override." .. ns_id)
						end
					end
				end
			end
		end
	end
	for n, ns_id in pairs(all_ar_ext) do
		if not self[data].override[ns_id] then	-- Is there already an override? Continue if not.
			if not string.match(ns_id, data) then -- Does the barrel extension already belong to the weapon? Continue if they don't belong together.
				if self.parts[ns_id].a_obj == "a_b" or self.parts[ns_id].parent == nil or self.parts[ns_id].parent == "slide" then -- Check for abnormal attachment points or lacking parent.
					if self[data].override.wpn_fps_upg_ns_ass_smg_small or self[data].override.wpn_fps_upg_ass_ns_jprifles then 
						if self[data].override.wpn_fps_upg_ns_ass_smg_small then -- Check if there's already an override for the Low Profile Suppressor or Competitor's Compensator.
							self[data].override[ns_id]	= deep_clone(self[data].override.wpn_fps_upg_ns_ass_smg_small) -- Copy it.
							-- log("Cloning Weapon Override (LP): " .. "self." .. data .. ".override." .. ns_id) 
						elseif self[data].override.wpn_fps_upg_ass_ns_jprifles then
							self[data].override[ns_id] = deep_clone(self[data].override.wpn_fps_upg_ass_ns_jprifles) 
							-- log("Cloning Weapon Override (JP): " .. "self." .. data .. ".override." .. ns_id) 
						end
					else -- Since there is no override for these abnormal barrel extensions, we just set one.
						self[data].override[ns_id] = {a_obj = "a_ns", parent = "barrel"}
						-- log("Setting Weapon Override : " .. "self." .. data .. ".override." .. ns_id) 
					end
				end
			end
		end
	end
	for n, ns_id in pairs(all_ar_ext) do
		if not table.contains(self[data].uses_parts, ns_id) then
			table.list_append(self[data].uses_parts, { ns_id } ) -- Add all the barrel extensions to the weapons in the list
			if string.match(data, "ass_tkb") then -- Setting up the cloned barrel extensions for the Rodion.
				self:_clone_part_for_weapon(ns_id, "wpn_fps_ass_tkb", 2)
				self[data].override[ (tostring(ns_id) .. "_1" )] = {a_obj = "a_ns_1", parent = "barrel"}
				self[data].override[ (tostring(ns_id) .. "_2" )] = {a_obj = "a_ns_2", parent = "barrel"}
			end
		end
	end
end

---------------------------------------------------------------
-- Shotguns

for i, data in ipairs(existing_weapons) do
     if table.contains(self[data].uses_parts, "wpn_fps_upg_ns_duck") and data ~= "wpn_fps_aaaaa" then
		table.insert(total_sho, data)					-- Create a list of all pistols (They all use the "Flash Hider").
	end                                                 -- We'll use this to give all "pistol-type" barrel extensions to every "pistol-type" gun.
end
-- log("total_sho : " .. table.size(total_sho))
-- for i, tsh in pairs(total_sho) do log(i .. " " .. tostring(tsh)) end

for m, data in ipairs(total_sho) do
	for _, ns_sho in ipairs(all_total_ns) do
		if table.contains(self[data].uses_parts, ns_sho) then
			table.insert(all_sho_ns, ns_sho)            -- Gather all the barrel extensions that are actually used by "Pistol-type" guns.
		end
	end
end
all_sho_ns = table.list_union(all_sho_ns)               -- This cuts out duplicates. The list would otherwise be >1200 entries long, all repititions of the same barrel extensions.
-- log("all_sho_ns : " .. table.size(all_sho_ns))
-- for i, nsho in pairs(all_sho_ns) do log(i ..  " " .. tostring(nsho)) end	

for a, data in pairs(total_sho) do
	for b, ns_id in ipairs(all_sho_ns) do
		for c, forbidding in ipairs(all_parts_with_forbids) do
			if table.contains(self.parts[forbidding].forbids, "wpn_fps_upg_ns_duck") and not table.contains(self.parts[forbidding].forbids, ns_id) then
				table.insert(self.parts[forbidding].forbids, ns_id)
				-- log("Adding to Forbids : " .. "self.parts." .. forbidding .. ".forbids." .. ns_id) 
			end
		end
		for d, overriding in ipairs(all_parts_with_overrides) do
			if self.parts[overriding].override.wpn_fps_upg_ns_duck and not self.parts[overriding].override[ns_id] then
				self.parts[overriding].override[ns_id] = deep_clone(self.parts[overriding].override.wpn_fps_upg_ns_duck)
				-- log("Cloning Part Override : " .. "self.parts." .. overriding .. ".override." .. ns_id) 
			end
		end
		if self[data].override.wpn_fps_upg_ns_duck and not self[data].override[ns_id] then
			self[data].override[ns_id] = deep_clone(self[data].override.wpn_fps_upg_ns_duck)
			-- log("Setting Weapon Override : " .. "self." .. data .. ".override." .. ns_id) 
		end
		if not table.contains(self[data].uses_parts, ns_id) then
			table.list_append(self[data].uses_parts, { ns_id } ) -- Add all the barrel extensions to the weapons in the list
		end
	end
end
end)