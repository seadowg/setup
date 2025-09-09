1. Add `MANGOHUD=1` to `/etc/environment`
2. Set Power Mode to "Performance"

# Steam launch options

## Space Marine 2

```
SteamDeck=1 %command%
```

# Grub config for dual boot

 Edit/add the following Grub config in `/etc/default/grub` to enable automatic booting (after 10s) while still allowing OS switching:
```
GRUM_DEFAULT=<preferred option>
GRUB_TIMEOUT_STYLE=menu
GRUB_TIMEOUT=10
```