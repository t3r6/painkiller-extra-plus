local returnToGameSuffix = "; PMENU.ResumeSounds(); PMENU.ReturnToGame(); PainMenu:ReloadBrightskins(); CONSOLE.SetMPMsgPosition( Hud.mpMsgPosition[1], Cfg.HUD_ConsolePosition )"

local timeLimitList = {
	{ "Time5",  5  },
	{ "Time10", 10 },
	{ "Time15", 15 },
	{ "Time20", 20 },
}

local items = {}
for i, t in ipairs(timeLimitList) do
	items[t[1]] = {
		text        = "Timelimit " .. t[2],
		desc        = "Timelimit " .. t[2],
		x           = 15,
		y           = 120 + i * 30,
		action      = "Console:Cmd_CALLVOTE (\"timelimit " .. t[2] .. "\")" .. returnToGameSuffix,
		sndLightOn  = "menu/menu/option-light-on_main4",
		fontBigSize = 22,
	}
end

VoteMenuTime =
{
	bgStartFrame = { 120, 243, 268 },
	bgEndFrame   = { 180, 267, 291 },

	fontBig    = "timesbd",
	fontSmall  = "timesbd",

	backAction = "PainMenu:ApplySettings(false); PainMenu:ActivateScreen(VoteMenuRules)",

	items = items,
}
