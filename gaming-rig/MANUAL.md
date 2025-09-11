1. Add `MANGOHUD=1` to `/etc/environment`
2. Set Power Mode to "Performance"

# Game settings

For just streaming:

- Full screen
- 1440p
- VSync disabled
- Disabled frame limit

For desktop and streaming:

- Full screen
- 4K
- VSync disabled
- Disabled frame limit

# Steam launch options

## Space Marine 2

```
SteamDeck=1 %command%
```

## Baldur's Gate 3

```
--skip-launcher --vulkan
```

# Grub config for dual boot

 Edit/add the following Grub config in `/etc/default/grub` to enable automatic booting (after 10s) while still allowing OS switching:
```
GRUM_DEFAULT=<preferred option>
GRUB_TIMEOUT_STYLE=menu
GRUB_TIMEOUT=10
```