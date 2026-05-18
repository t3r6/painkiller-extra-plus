# PK EXP (Painkiller Extra Plus)

A continuation of the PK++ multiplayer mod for **Painkiller Black Edition (2004)**.

---

## Features

Full compatibility with all 1.64 clients.
The mod is focused on bug fixes and planned but unreleased PK++ features.

### Game Modes

FFA, TDM, CTF, Last Man Standing, Duel, Clan Arena, Voosh, The Light Bearer, People Can Fly, Instagib, ICTF, Race

---

## Compatibility

- **Game:** Painkiller Black Edition (2004), engine version **1.64**
- **Scripting engine:** Lua 5.0.2

Clients without PK++ are detected at connect and notified. PK++-compatible clients get additional options and gamemodes.

---

## Requirements

* Full Painkiller Black Edition v1.64 game installed.

---

## Installation of the mod

* Install [**Painkiller 4GB RAM Patch**](https://www.moddb.com/games/painkiller/downloads/painkiller-4gb-patch) for non-windowed mode.
* Install [**PK EXP gamedata**](https://www.moddb.com/mods/painkiller-pk-archive/downloads/pk-extra-plus).
* Download the latest `PKPlus.pak` from **Releases** and replace it in your Painkiller `..\Painkiller\Data\` directory.
* Create a shortcut on your desktop and run the mod with `..\Painkiller\Bin\Painkiller.exe -lscripts PKPlus.pak`.
* To run a dedicated windows server: `..\Painkiller\Bin\Painkiller.exe -dedicated`.

Note: the latest release may be unstable and contain major bugs. It’s recommended to use a tagged release.

---

## Windowed mode

`Painkiller 4GB RAM Patch` includes binaries for standard and windowed mode. If you need the windowed mode, you should only install `Painkiller.exe` from the `Windowed` folder without `LScripts` from that package. PK EXP already has this `LScripts` integration under the hood. All you need to do, is to add the following parameter in `..\Painkiller\Bin\config.ini`:

```
Cfg.Windowed = true
```

Warning: if you install `LScripts` for the windowed mode from the `Painkiller 4GB RAM Patch` too, it will lead to bugs like missing PK EXP menu elements.

---

## Building from Source

The mod is packed into `PKPlus.pak` using `PainTools` by **XDavidXtreme**. A GitHub Actions workflow handles this automatically on every push to the default branch.

To pack manually, use [**paintools**](https://www.moddb.com/games/painkiller/downloads/paintools) or `Painkiller.exe` CLI features.

---

## Testing

Copy unpacked files into `..\Painkiller\Data\LScripts` and launch the game to verify.

---

## Development

The engine loads `Loader.lua` as the entry point, which bootstraps all modules in order. Source is organized as follows:

| Directory | Contents |
|---|---|
| `Main/` | Core game logic, config, networking, bot, utils |
| `HUD/` | UI layer, console commands, scoreboard, spectator |
| `Classes/` | Entity class definitions, AI, math types |
| `Templates/` | Data instances: weapons, monsters, items, levels |
| `Editor/` | In-game waypoint and game items editors |

### Lua 5.0.2 Constraints

The Painkiller engine is locked to Lua 5.0.2. Keep in mind:

- No `#` length operator - use `table.getn()`
- No `//` floor division operator - use `math.floor(a/b)`
- No `%` modulo operator - use `math.mod(a, b)`
- No `__len` metamethod
- No `string.format("%d", ...)` on non-integer values
- No `string.gmatch()` - use `string.gfind()`
- Varargs accessed via `arg` table, not `...`

---

## Credits

- **Orion** - PK++ 1.3 decompiled base (thanks for not stripping the Lua headers during compilation :smile:)
- **Blowfish** - PK++ 1.2, PK++ 1.3.1, and PK++ 1.4 sources
- **THRESHER** - PK++ 1.2.5 (PK++ 1.3.1 fork)
- **People Can Fly** - Painkiller game
