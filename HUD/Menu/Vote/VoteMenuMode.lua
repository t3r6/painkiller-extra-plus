local suffix = "; PMENU.ResumeSounds(); PMENU.ReturnToGame(); PainMenu:ReloadBrightskins(); CONSOLE.SetMPMsgPosition( Hud.mpMsgPosition[1], Cfg.HUD_ConsolePosition )"
local snd    = "menu/menu/option-light-on_main4"

local modeList =
{
	{ key = "FFA",   desc = "Free For All",        mode = "ffa",   y = 150 },
	{ key = "TDM",   desc = "Team Deathmatch",     mode = "tdm",   y = 180 },
	{ key = "Voosh", desc = "Voosh",               mode = "voosh", y = 210 },
	{ key = "TLB",   desc = "The Light Bearer",    mode = "tlb",   y = 240 },
	{ key = "PCF",   desc = "People Can Fly",      mode = "pcf",   y = 270 },
	{ key = "CTF",   desc = "Capture The Flag",    mode = "ctf",   y = 300 },
	{ key = "Duel",  desc = "Duel",                mode = "duel",  y = 330 },
	{ key = "LMS",   desc = "Last Man Standing",   mode = "lms",   y = 360 },
}

VoteMenuMode =
{
	bgStartFrame = { 120, 243, 268 },
	bgEndFrame   = { 180, 267, 291 },

	fontBig   = "timesbd",
	fontSmall = "timesbd",

	backAction = "PainMenu:ApplySettings(false); PainMenu:ActivateScreen(VoteMenu)",

	items = {},
}

for _, m in ipairs(modeList) do
	VoteMenuMode.items[m.key] =
	{
		text        = "Callvote Gamemode " .. m.key,
		desc        = "Callvote Gamemode " .. m.desc,
		x           = 15,
		y           = m.y,
		action      = "Console:Cmd_CALLVOTE (\"gamemode " .. m.mode .. "\")" .. suffix,
		sndLightOn  = snd,
		fontBigSize = 22,
	}
end
