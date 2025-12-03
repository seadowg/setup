1. Add `MANGOHUD=1` to `/etc/environment`
2. Set Power Mode to "Performance"
3. Add ["MoonDeckStream" app to Sunshine](https://github.com/FrogTheFrog/moondeck-buddy/wiki/Sunshine-setup)
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

Requires AMDVLK to prevent crashes (using Mesa 25.0.7). Can be installed like so:

```
cd ~/Downloads
wget https://github.com/GPUOpen-Drivers/AMDVLK/releases/download/v-2025.Q2.1/amdvlk_2025.Q2.1_amd64.deb
sudo dpkg -i amdvlk_2025.Q2.1_amd64.deb
sudo apt-get install -f
```

Steam will still default to Mesa, but AMDVLK can be forced with launch option (below). To make sure the rest of the system still uses Mesa, add this to `/etc/environment`:

```
AMD_VULKAN_ICD=RADV
```

In-game settings:

- Set Maximum Frame Rate to 60

Steam launch option:

```
VK_ICD_FILENAMES=/etc/vulkan/icd.d/amd_icd64.json %command%
```

`VK_ICD_FILENAMES` is used instead of `AMD_VULKAN_ICD` because of https://github.com/ValveSoftware/steam-for-linux/issues/10413.

# Grub config for dual boot

 Edit/add the following Grub config in `/etc/default/grub` to enable automatic booting (after 10s) while still allowing OS switching:
```
GRUM_DEFAULT=<preferred option>
GRUB_TIMEOUT_STYLE=menu
GRUB_TIMEOUT=5
```