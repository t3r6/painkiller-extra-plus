LanguageConfig =
{
	bgStartFrame = { 120, 243, 268 },
	bgEndFrame   = { 180, 267, 291 },

	fontBigSize = 32,

	backAction = "PainMenu:ApplySettings(false); Cfg:Save(); PainMenu:ActivateScreen(OptionsMenu)",
	applyAction = "PainMenu:ApplySettings(true); PMENU.SetItemVisibility('ApplyButton',false)",
	
--	sliderWidth = 180,

	items =
	{
		GeneralTab =
		{
			type = MenuItemTypes.TabGroup,
			x = 122,
			y = 70,
			width = 776,
			height = 560,
			visible = true,
			align = MenuAlign.Left,
			
			items =
			{

				TextureQualityWeapons =
				{
					type = MenuItemTypes.TextButtonEx,
					text = TXT.Menu.Weapons,
					desc = TXT.MenuDesc.Weapons,
					option = "TextureQualityWeapons",
					values = { 3, 2, 1, 0 },
					visible = { TXT.Menu.VeryLow, TXT.Menu.Low, TXT.Menu.Medium, TXT.Menu.High },
					x	 = -1,
					y	 = 330,
					action = "",
					applyRequired = true,
		--			disabled = 1,
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
		--			disabled = 1,
					align = MenuAlign.Left,
				},
			},
		},
	}
}