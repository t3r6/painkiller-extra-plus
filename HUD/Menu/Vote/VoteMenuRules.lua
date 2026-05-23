local returnToGameSuffix = "; PMENU.ResumeSounds(); PMENU.ReturnToGame(); PainMenu:ReloadBrightskins(); CONSOLE.SetMPMsgPosition( Hud.mpMsgPosition[1], Cfg.HUD_ConsolePosition )"

local ruleList = {
	{ "FallingDamageTrue",  "FallingDamage True",  "fallingdamage 1"    },
	{ "FallingDamageFalse", "FallingDamage False", "fallingdamage 0"    },
	{ "PowerupsTrue",       "Powerups True",       "powerups 1"         },
	{ "PowerupsFalse",      "Powerups False",      "powerups 0"         },
	{ "RocketfixTrue",      "Rocketfix True",      "rocketfix 1"        },
	{ "RocketfixFalse",     "Rocketfix False",     "rocketfix 0"        },
	{ "TelefragTrue",       "Telefrag True",       "telefrag 1"         },
	{ "TelefragFalse",      "Telefrag False",      "telefrag 0"         },
	{ "WarmupDamageTrue",   "WarmupDamage True",   "warmupdamage 1"     },
	{ "WarmupDamageFalse",  "WarmupDamage False",  "warmupdamage 0"     },
	{ "WeaponstayTrue",     "Weaponsstay True",    "weaponsstay 1"     },
	{ "WeaponstayFalse",    "Weaponsstay False",   "weaponsstay 0"     },
}

local items = {}
for i, r in ipairs(ruleList) do
	items[r[1]] = {
		text        = "Callvote " .. r[2],
		desc        = "Callvote " .. r[2],
		x           = 15,
		y           = 150 + i * 30,
		action      = "Console:Cmd_CALLVOTE (\"" .. r[3] .. "\")" .. returnToGameSuffix,
		sndLightOn  = "menu/menu/option-light-on_main4",
		fontBigSize = 22,
	}
end

items.Timelimit = {
	text        = "TimeLimit...",
	desc        = "Choose the timelimit",
	x           = 15,
	y           = 150,
	action      = "PainMenu:ActivateScreen(VoteMenuTime)",
	sndLightOn  = "menu/menu/option-light-on_main4",
	fontBigSize = 22,
}

VoteMenuRules =
{
	bgStartFrame = { 120, 243, 268 },
	bgEndFrame   = { 180, 267, 291 },

	fontBig    = "timesbd",
	fontSmall  = "timesbd",

	backAction = "PainMenu:ApplySettings(false); PainMenu:ActivateScreen(VoteMenu)",

	items = items,
}
