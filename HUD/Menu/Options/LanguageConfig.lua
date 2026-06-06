LanguageConfig =
{
	bgStartFrame = { 120, 243, 268 },
	bgEndFrame   = { 180, 267, 291 },

	fontBigSize = 32,

	backAction = "PainMenu:ApplySettings(false); Cfg:Save(); PainMenu:ActivateScreen(OptionsMenu)",
	applyAction = "PainMenu:ApplySettings(true); PMENU.SetItemVisibility('ApplyButton',false)",

		items =
		{

		ChangeLanguage =
		{
			type = MenuItemTypes.TextButtonEx,
			text = TXT.Menu.Language,
			desc = TXT.MenuDesc.Weapons,
			option = "ChangeLanguage",
			values = { "english", "french", "german", "italian", "spanish", "polish", "czech", "russian" },
			visible = { "English", "French", "German", "Italian", "Spanish", "Polish", "Czech", "Russian" },
			x	 = -1,
			y	 = 330,
			action = "PainMenu:ApplySettings(); PainMenu:NeedRestartGame('ChangeLanguage')",
			applyRequired = true,
			align = MenuAlign.Left,
		},
		
		TextureQualityArchitecture =
		{
			type = MenuItemTypes.TextButtonEx,
			text = TXT.Menu.Architecture,
			desc = TXT.MenuDesc.Architecture,
			option = "TextureQualityArchitecture",
			values = { 3, 2, 1, 0 },
			visible = { TXT.Menu.VeryLow, TXT.Menu.Low, TXT.Menu.Medium, TXT.Menu.High },
			x	 = -1,
			y	 = 380,
			action = "",
			applyRequired = true,
			align = MenuAlign.Left,
		},
	},
}
