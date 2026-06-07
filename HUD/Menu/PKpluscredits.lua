local function staticText(text, x, y)
	return {
		type        = MenuItemTypes.StaticText,
		text        = text,
		x           = x,
		y           = y,
		action      = "",
		align       = MenuAlign.Left,
		useItemBG   = false,
		fontBigSize = 24,
		fontBigTex  = "",
		textColor   = R3D.RGBA(255, 255, 255, 255),
	}
end

local items = {
	Item1  = staticText("CODE:",                              150, 180),
	Item2  = staticText("Blowfish, OriOn, PeTjA, THRESHER,",  150, 220),
	Item3  = staticText("dilettante, XDavidXtreme, t3stErr,", 150, 260),
	Item4  = staticText("tek^^^valkyrie, AI tools",           150, 300),
	Item5  = staticText("GFX:",                               150, 350),
	Item6  = staticText("PrimeviL, dilettante",               150, 390),
	Item7  = staticText("MAPS:",                              150, 440),
	Item8  = staticText("B6, t3stErr, killua-chan",           150, 480),
	Item9  = staticText("SOUNDS:",                            150, 530),
	Item10 = staticText("Mogul",                              150, 570),
	Item11 = staticText("BETATEST:",                          150, 620),
	Item12 = staticText("sk1p, HV, kenzu, spieler, t3stErr",  150, 660),

	Item13 = staticText("THANKS TO:",                              600, 180),
	Item14 = staticText("www.painkillergame.com (archive.org)",    600, 220),
	Item15 = staticText("www.pkeuro.com (archive.org)",            600, 260),
	Item16 = staticText("www.pkeuro.net",                          600, 300),
	Item17 = staticText("www.pkzone.org (archive.org)",            600, 340),
	Item18 = staticText("www.painkiller.ugu.pl",                   600, 380),
	Item19 = staticText("www.pkrc.ru",                             600, 420),
	Item20 = staticText("CONTACT:",                                600, 480),
	Item21 = staticText("##painkiller @ quakenet",                 600, 520),
	Item23 = staticText("https://discord.gg/bvrDA3Ar9H",           600, 560),
}

PKpluscredits =
{
	bgStartFrame = { 120, 243, 268 },
	bgEndFrame   = { 180, 267, 291 },

	fontBigSize = 36,

	backAction  = "PainMenu:ActivateScreen(MainMenu);PMENU.StopSound()",
	applyAction = "",

	items = items,
}

items.ModVersion =
{
	type = MenuItemTypes.StaticText,
	text = "pkexp_version", -- The version is handled during release
	x = 952,
	y = 740,
	action = "",
	align = MenuAlign.Right,
	useItemBG = false,
	fontBigSize = 18,
	fontBigTex = "",
	textColor = R3D.RGBA(255, 255, 255, 255),
}