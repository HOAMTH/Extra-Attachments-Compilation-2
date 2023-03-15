Hooks:PostHook(MenuMainState, "at_enter", "showthething", function(self, ...)
    -- log("Yeee")
	local weaponliburl = "https://modworkshop.net/mod/24177"
    if BLT.Mods:GetModByName("WeaponLib") then
            -- local menuY = QuickMenu:new( "WeaponLib installed.", "Everything's fine.", {[1] = {text = "Thanks!", is_cancel_button = true}} )
            -- menuY:Show()
    else
            local menuN = QuickMenu:new( "WeaponLib not installed.", "This mod requires WeaponLib. You do not have WeaponLib installed.", {[1] = {text = "OK", is_cancel_button = true},[2] = {text = "Go to download", callback = os.execute("cmd /c start " .. weaponliburl), is_cancel_button = false}} )
            menuN:Show()
    end
    if BLT.Mods:GetModByName("LMG Steelsights") then
            -- local menuY = QuickMenu:new( "WeaponLib installed.", "Everything's fine.", {[1] = {text = "Thanks!", is_cancel_button = true}} )
            -- menuY:Show()
    else
            local menuN = QuickMenu:new( "LMG Steelsights is not installed.", "LMG Steelsights is optional.", {[1] = {text = "OK", is_cancel_button = true}} )
            menuN:Show()
    end
end)