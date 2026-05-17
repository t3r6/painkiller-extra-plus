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

Clients without PK++ are detected at connect and notified. PK++-compatible clients get `ProPlus` mode enabled automatically.

---

## Installation

* Install [**PK EXP gamedata**](https://www.moddb.com/mods/painkiller-pk-archive/downloads/pk-extra-plus)
* Download the latest `PKPlus.pak` from **Releases** and replace it in your Painkiller `..\Painkiller\Data\` directory.


Note: the latest release may be unstable and contain major bugs. It’s recommended to use a tagged release.

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

- No `#` length operator — use `table.getn()`
- No `//` comments
- No `__len` metamethod
- No `string.format("%d", ...)` on non-integer values

---

## Credits

- **Orion** — PK++ 1.3 decompiled base (thanks for not stripping the Lua headers during compilation :smile:)
- **Blowfish** — PK++ 1.2, PK++ 1.3.1, and PK++ 1.4 sources
- **THRESHER** — PK++ 1.2.5 (PK++ 1.3.1 fork)
- **People Can Fly** — Painkiller game
