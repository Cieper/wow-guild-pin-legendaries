# Guild: Pin Legendary Loot

A tiny addon that automatically pins legendary loot announcements in your guild news feed, so they don't scroll away and get lost.

## What it does

Listens for `GUILD_NEWS_UPDATE` and, whenever a legendary-item-looted entry shows up that isn't already pinned, marks it sticky. Requires that you have permission to edit the guild MOTD/news (the same permission the sticky toggle itself requires) — if you don't, the addon simply does nothing.

No configuration, no slash commands, no settings. It just runs.

## License

MIT, see [LICENSE](LICENSE).
