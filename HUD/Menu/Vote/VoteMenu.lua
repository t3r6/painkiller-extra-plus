VoteMenu =
{
	bgStartFrame = { 120, 243, 268 },
	bgEndFrame   = { 180, 267, 291 },

	fontBig		= "timesbd",
	fontSmall	= "timesbd",

	backAction = "PainMenu:ApplySettings(false); PainMenu:ActivateScreen(MainMenu)",

	items =
	{

		VoteYes =
		{
			text = "Vote Yes",
			desc = "Vote Yes confirmation",
			x	 = 15,
			y	 = 90,
			action = "Console:Cmd_VOTE (\"yes\"); PMENU.ResumeSounds(); PMENU.ReturnToGame(); PainMenu:ReloadBrightskins(); CONSOLE.SetMPMsgPosition( Hud.mpMsgPosition[1], Cfg.HUD_ConsolePosition )",
			sndLightOn = "menu/menu/option-light-on_main4",
			fontBigSize = 22,
		},

		VoteNo =
		{
			text = "Vote No",
			desc = "Vote No confirmation",
			x	 = 125,
			y	 = 90,
			action = "Console:Cmd_VOTE (\"no\"); PMENU.ResumeSounds(); PMENU.ReturnToGame(); PainMenu:ReloadBrightskins(); CONSOLE.SetMPMsgPosition( Hud.mpMsgPosition[1], Cfg.HUD_ConsolePosition )",
			sndLightOn = "menu/menu/option-light-on_main4",
			fontBigSize = 22,
		},

		Maps =
		{
			text = "Maps...",
			desc = "Vote on maps",
			x	 = 15,
			y	 = 150,
			action = "PainMenu:ActivateScreen(VoteMenuMaps)",
			sndLightOn = "menu/menu/option-light-on_main4",
			fontBigSize = 22,
		},

		Rules =
		{
			text = "Rules...",
			desc = "Change basic rules",
			x	 = 15,
			y	 = 180,
			action = "PainMenu:ActivateScreen(VoteMenuRules)",
			sndLightOn = "menu/menu/option-light-on_main4",
			fontBigSize = 22,
		},

		Bots =
		{
			text = "Bots...",
			desc = "Change bot configuration",
			x	 = 15,
			y	 = 210,
			action = "PainMenu:ActivateScreen(VoteMenuBots)",
			sndLightOn = "menu/menu/option-light-on_main4",
			fontBigSize = 22,
		},

		Mode =
		{
			text = "GameMode...",
			desc = "Change gametype",
			x	 = 15,
			y	 = 240,
			action = "PainMenu:ActivateScreen(VoteMenuMode)",
			sndLightOn = "menu/menu/option-light-on_main4",
			fontBigSize = 22,
		},
	}
}