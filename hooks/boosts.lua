Hooks:PostHook(WeaponFactoryTweakData, "create_bonuses", "EAC_boosts", function(self, tweak_data, weapon_skins)
    local stuff_to_add = {
        wpn_fps_upg_bonus_team_exp_money_p3 = {},
        wpn_fps_upg_bonus_concealment_p1 = {},
        wpn_fps_upg_bonus_recoil_p1 = {},
        wpn_fps_upg_bonus_spread_p1 = {},
        wpn_fps_upg_bonus_spread_n1 = {},
        wpn_fps_upg_bonus_damage_p1 = {},
        wpn_fps_upg_bonus_total_ammo_p1 = {},
        wpn_fps_upg_bonus_concealment_p2 = {},
        wpn_fps_upg_bonus_concealment_p3 = {},
        wpn_fps_upg_bonus_damage_p2 = {},
        wpn_fps_upg_bonus_total_ammo_p3 = {}
    }

    for id, data in pairs(tweak_data.upgrades.definitions) do
        local weapon_tweak = tweak_data.weapon[data.weapon_id]
        local primary_category = weapon_tweak and weapon_tweak.categories and weapon_tweak.categories[1]
        if data.weapon_id and weapon_tweak and data.factory_id and self[data.factory_id] then
            for part_id, params in pairs(stuff_to_add) do
                -- log(tostring(data.factory_id) .. " | " .. tostring(part_id))
                table.insert(self[data.factory_id].uses_parts, part_id)
                table.insert(self[data.factory_id .. "_npc"].uses_parts, part_id)
            end
        end
    end
end)