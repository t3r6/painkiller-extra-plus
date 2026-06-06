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
			option = "Language",
			values = { "english", "french", "german", "italian", "spanish", "polish", "czech", "russian" },
			visible = { "English", "French", "German", "Italian", "Spanish", "Polish", "Czech", "Russian" },
			x	 = -1,
			y	 = 330,
			action = "PainMenu:ApplySettings(); PainMenu:NeedRestartGame('ChangeLanguage')",
			applyRequired = true,
			align = MenuAlign.Left,
		},
		
		ChangeEncoding =
		{
			type = MenuItemTypes.TextButtonEx,
			text = TXT.Menu.Architecture,
			desc = TXT.MenuDesc.Architecture,
			option = "LangEncoding",
			values = { "", "iso-8859-1", "cp1250", "cp1251" },
			visible = { "Default", "iso-8859-1 (Western Europe)", "cp1250 (Central Europe)", "cp1251 (Russia)" },
			x	 = -1,
			y	 = 380,
			action = "",
			applyRequired = true,
			align = MenuAlign.Left,
		},
	},
}
