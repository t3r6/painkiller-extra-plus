VoteMenuBots =
{
	bgStartFrame = { 120, 243, 268 },
	bgEndFrame   = { 180, 267, 291 },

	fontBig		= "timesbd",
	fontSmall	= "timesbd",

	backAction = "PainMenu:ApplySettings(false); PainMenu:ActivateScreen(VoteMenu)",

	items =
	{

		BotAttackTrue =
		{
			text = "BotAttack True",
			desc = "BotAttack True confirmation",
			x	 = 15,
			y	 = 150,
			action = "Console:Cmd_CALLVOTE (\"botattack 1\"); PMENU.ResumeSounds(); PMENU.ReturnToGame(); PainMenu:ReloadBrightskins(); CONSOLE.SetMPMsgPosition( Hud.mpMsgPosition[1], Cfg.HUD_ConsolePosition )",
			sndLightOn = "menu/menu/option-light-on_main4",
			fontBigSize = 22,
		},

		BotAttackFalse =
		{
			text = "BotAttack False",
			desc = "BotAttack False confirmation",
			x	 = 15,
			y	 = 180,
			action = "Console:Cmd_CALLVOTE (\"botattack 0\"); PMENU.ResumeSounds(); PMENU.ReturnToGame(); PainMenu:ReloadBrightskins(); CONSOLE.SetMPMsgPosition( Hud.mpMsgPosition[1], Cfg.HUD_ConsolePosition )",
			sndLightOn = "menu/menu/option-light-on_main4",
			fontBigSize = 22,
		},

	}
}