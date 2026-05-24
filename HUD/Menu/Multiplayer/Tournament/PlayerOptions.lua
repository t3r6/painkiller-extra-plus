DoFile(path.."HUD/Menu/Multiplayer/PlayerOptions.lua")

PlayerOptions.applyAction = "PainMenu:ApplySettings(); PainMenu:ActivateScreen(MultiplayerMenu)"

PlayerOptions.items.ConnectionSpeed.values = {4, 5}
PlayerOptions.items.ConnectionSpeed.visible = {TXT.Menu.LANT1, TXT.Menu.Custom}

PlayerOptions.items.ModelSelect = nil
