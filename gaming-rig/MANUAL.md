1. Add ["MoonDeckStream" app to Sunshine](https://github.com/FrogTheFrog/moondeck-buddy/wiki/Sunshine-setup)
    - Add command to switch resolution:
    ```
    sh -c "displayconfig-mutter set --connector <output name> --resolution ${SUNSHINE_CLIENT_WIDTH}x${SUNSHINE_CLIENT_HEIGHT} --refresh-rate ${SUNSHINE_CLIENT_FPS}"
    ```
    - Add undo command for above:
    ```
    displayconfig-mutter set --connector <output name> --resolution 3840x2160 --refresh-rate 60
    ```

# Game settings

For just streaming:

- Full screen
- 1440p
- VSync enabled
- Disabled frame limit

For desktop and streaming:

- Full screen
- 4K
- VSync enabled
- Disabled frame limit

## Exceptions

## Space Marine 2

Steam launch option:

```
SteamDeck=1 %command%
```

## Baldur's Gate 3

Steam launch option:
```
--skip-launcher --vulkan
```

## God of War Ragnarok

Steam launch option:

```
SteamDeck=1 %command%
```

## Detroit: Become Human

In-game settings:

- Lower Texture Quality to Medium

Steam launch option:

```
RADV_PERFTEST=transfer_queue %command%
```

## Gears 5

In-game settings:

- Maximum Frame Rate to 60
- Async Compute to Off
- Tiled Resources to Off

# Grub config for dual boot

 Edit/add the following Grub config in `/etc/default/grub` to enable automatic booting (after 10s) while still allowing OS switching:
```
GRUM_DEFAULT=<preferred option>
GRUB_TIMEOUT_STYLE=menu
GRUB_TIMEOUT=5
```