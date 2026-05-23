local returnToGameSuffix = "; PMENU.ResumeSounds(); PMENU.ReturnToGame(); PainMenu:ReloadBrightskins(); CONSOLE.SetMPMsgPosition( Hud.mpMsgPosition[1], Cfg.HUD_ConsolePosition )"

local mapList = {
	{ "MapDMCursed",        "DM_Cursed",        "dm_cursed"        },
	{ "MapDMExMortis",      "DM_ExMortis",      "dm_exmortis"      },
	{ "MapDMFactory",       "DM_Factory",       "dm_factory"       },
	{ "MapDMFallen1",       "DM_Fallen1",       "dm_fallen1"       },
	{ "MapDMFallen2",       "DM_Fallen2",       "dm_fallen2"       },
	{ "MapDMFragenstein",   "DM_Fragenstein",   "dm_fragenstein"   },
	{ "MapDMIlluminati",    "DM_Illuminati",    "dm_illuminati"    },
	{ "MapDMMine",          "DM_Mine",          "dm_mine"          },
	{ "MapDMSacred",        "DM_Sacred",        "dm_sacred"        },
	{ "MapDMPsycho",        "DM_Psycho",        "dm_psycho"        },
	{ "MapDMTrainstation",  "DM_Trainstation",  "dm_trainstation"  },
	{ "MapDMUnseen",        "DM_Unseen",        "dm_unseen"        },
	{ "MapDMMeatless",      "DM_1v1_meatless",  "dm_1v1_meatless"  },
	{ "MapDM5quid01",       "DM_5quid01",       "dm_5quid01"       },
	{ "MapDMAbsinthe",      "DM_Absinthe",      "dm_absinthe"      },
	{ "MapDMAsleep",        "DM_Asleep",        "dm_asleep"        },
	{ "MapDMBallistic",     "DM_Ballistic",     "dm_ballistic"     },
	{ "MapDMBlink",         "DM_Blink",         "dm_blink"         },
	{ "MapDMPure",          "DM_Pure",          "dm_pure"          },
	{ "MapCTFChaos",        "CTF_Chaos",        "ctf_chaos"        },
	{ "MapCTFForbidden",    "CTF_Forbidden",    "ctf_forbidden"    },
	{ "MapCTFTrainstation", "CTF_Trainstation", "ctf_trainstation" },
	{ "MapDMPCFTower",      "DMPCF_Tower",      "dmpcf_tower"      },
	{ "MapDMPCFWarehouse",  "DMPCF_Warehouse",  "dmpcf_warehouse"  },
}

local items = {}
for i, m in ipairs(mapList) do
	items[m[1]] = {
		text        = "Callvote Map " .. m[2],
		desc        = "Callvote Map " .. m[2],
		x           = 15,
		y           = 120 + i * 22,
		action      = "Console:Cmd_CALLVOTE (\"map " .. m[3] .. "\")" .. returnToGameSuffix,
		sndLightOn  = "menu/menu/option-light-on_main4",
		fontBigSize = 18,
	}
end

items.RestartMap = {
	text        = "Restart Map",
	desc        = "Restart Map",
	x           = 15,
	y           = 90,
	action      = "Console:Cmd_CALLVOTE (\"restartmap\")" .. returnToGameSuffix,
	sndLightOn  = "menu/menu/option-light-on_main4",
	fontBigSize = 18,
}

items.ReloadMap = {
	text        = "Reload Map",
	desc        = "Reload Map",
	x           = 150,
	y           = 90,
	action      = "Console:Cmd_CALLVOTE (\"reloadmap\")" .. returnToGameSuffix,
	sndLightOn  = "menu/menu/option-light-on_main4",
	fontBigSize = 18,
}

VoteMenuMaps =
{
	bgStartFrame = { 120, 243, 268 },
	bgEndFrame   = { 180, 267, 291 },

	fontBig    = "timesbd",
	fontSmall  = "timesbd",

	backAction = "PainMenu:ApplySettings(false); PainMenu:ActivateScreen(VoteMenu)",

	items = items,
}
