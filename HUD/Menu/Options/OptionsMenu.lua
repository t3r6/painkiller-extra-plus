OptionsMenu =
{
	bgStartFrame = { 120, 243, 268 },
	bgEndFrame   = { 180, 267, 291 },

	firstTimeShowItems = 80,

	backAction = "PainMenu:ActivateScreen(MainMenu)",
	
	textColor	= R3D.RGBA( 255, 255, 255, 255 ),
	disabledColor = R3D.RGBA( 155, 155, 155, 255 ),
	
	fontBigTex  = "font_texturka_alpha",
	fontSmallTex  = "font_texturka_alpha",
	descColor	= R3D.RGB( 255, 255, 255 ),
	
	useItemBG = false,

	items =
	{
		ConfigureHUD =
		{
			text = TXT.Menu.HUD,
			desc = TXT.MenuDesc.HUD,
			x	 = 15,
			y	 = 310,
			action = "PainMenu:ActivateScreen(HUDConfig); PainMenu:CheckItems()", --OriOn_Modification
		},

		SoundOptions =
		{
			text = TXT.Menu.Sound,
			desc = TXT.MenuDesc.Sound,
			x	 = 15,
			y	 = 400,
			action = "PainMenu:ActivateScreen(SoundOptions)",
		},

		VideoOptions =
		{
			text = TXT.Menu.Video,
			desc = TXT.MenuDesc.Video,
			x	 = 15,
			y	 = 480,
			action = "PainMenu:ActivateScreen(VideoOptions)",
		},
		
		ConfigureControls =
		{
			text = TXT.Menu.Controls,
			desc = TXT.MenuDesc.Controls,
			x	 = 15,
			y	 = 560,
			action = "PainMenu:ActivateScreen(ControlsConfig)",
		},

		Language =
		{
			text = TXT.Menu.Language,
			desc = TXT.MenuDesc.Language,
			x	 = 15,
			y	 = 640,
			action = "PainMenu:ActivateScreen(LanguageConfig); PainMenu:CheckItems()",
		},
	}
}
