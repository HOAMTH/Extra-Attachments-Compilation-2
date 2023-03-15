-- LocalizationManager = LocalizationManager or class(CoreLocalizationManager.LocalizationManager)
Hooks:PostHook("MenuManager", "post_event", "eac_loc", function(event)
QuickMenu:new( "My Title", "A test message.", {[1] = {managers.localization:text("base_mod_updates_update_later"), is_cancel_button = true}}, true):Show()
end)