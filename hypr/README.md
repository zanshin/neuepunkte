# Hyprland Configuration

This directory contains a Hyprland configuration converted from your original Sway setup.

## Files

- `hyprland.conf` - Main Hyprland configuration file
- `hyprland.sh` - Startup script for launching Hyprland with proper environment
- `README.md` - This file

## Key Changes from Sway

### Compositor Differences
- **Window Manager**: Sway → Hyprland (both are Wayland compositors)
- **Configuration Format**: Similar structure but some syntax differences
- **Window Rules**: Updated to use Hyprland's `windowrulev2` format

### Keybindings
- All your original keybindings have been preserved
- `$mod` remains Alt key (`ALT`)
- `$floatingMod` is now Super key (`SUPER`) for floating window controls
- Resize mode converted to Hyprland's submap system
- System mode (lock/logout/shutdown) converted to submap
- App launcher mode converted to submap

### Layout Management
- Sway's tiling converted to Hyprland's dwindle layout
- Split controls adapted to work with dwindle layout
- Gaps configuration preserved (inner: 20px, outer: 5px)

### Visual Settings
- Colors preserved from original Sway config
- No window borders (matching your Sway setup)
- Minimal decorations maintained

## Installation & Setup

1. **Install Hyprland** (if not already installed):
   ```bash
   # Arch Linux
   sudo pacman -S hyprland

   # Or from AUR for latest
   yay -S hyprland-git
   ```

2. **Copy configuration**:
   ```bash
   # Create Hyprland config directory
   mkdir -p ~/.config/hypr

   # Copy the configuration
   cp neuepunkte/hypr/hyprland.conf ~/.config/hypr/
   cp neuepunkte/hypr/hyprland.sh ~/.config/hypr/
   ```

3. **Update Waybar** (already done in waybar directory):
   ```bash
   # The waybar config-hyprland file is ready to use
   # You can update your waybar launch to use it
   ```

4. **Launch Hyprland**:
   ```bash
   # From TTY or display manager
   ~/.config/hypr/hyprland.sh

   # Or just
   Hyprland
   ```

## Key Features Preserved

### Workspaces
- 10 workspaces (1-10) with same keybindings
- VSCodium auto-assigned to workspace 5
- Special workspace for scratchpad functionality

### Applications
- Terminal: Alacritty
- Browser: Firefox
- App launcher: Rofi (same styling)
- File manager: Thunar (floating)
- Screenshots: grim + slurp

### Window Management
- Focus follows mouse
- Vim-style movement (hjkl) + arrow keys
- Floating windows for specific apps
- Same resize controls

### System Integration
- Audio controls (PulseAudio + playerctl)
- Brightness controls
- Network management via nmtui
- Idle management with swaylock-fancy

## Waybar Integration

The Waybar configuration has been updated for Hyprland:
- `sway/workspaces` → `hyprland/workspaces`
- `sway/window` → `hyprland/window`
- `sway/mode` → `hyprland/submap`

Use the launch script:
```bash
~/.config/waybar/waybar-hyprland.sh
```

## Troubleshooting

### Common Issues

1. **Waybar not showing workspaces**:
   - Ensure you're using `config-hyprland` instead of the original config
   - Check that Hyprland is running properly

2. **Applications not floating**:
   - Window rules use class names - check with `hyprctl clients`
   - Update class names in windowrulev2 rules if needed

3. **Keybindings not working**:
   - Check modifier key setup (Alt vs Super)
   - Verify application paths in variables

### Debug Commands
```bash
# Check running windows
hyprctl clients

# Check active config
hyprctl getoption general:gaps_in

# Monitor configuration
hyprctl monitors

# Reload config
hyprctl reload
```

## Environment Variables

The startup script sets proper Wayland environment variables:
- Qt applications: `QT_QPA_PLATFORM=wayland`
- GTK applications: `GDK_BACKEND=wayland`
- Mozilla: `MOZ_ENABLE_WAYLAND=1`
- Java: `_JAVA_AWT_WM_NONREPARENTING=1`

## Migration Notes

This configuration maintains the look, feel, and workflow of your Sway setup while taking advantage of Hyprland's features:

- **Performance**: Hyprland generally offers better performance
- **Animations**: Available but kept minimal to match your aesthetic
- **Plugin System**: Extensible if you want to add features later
- **Active Development**: More frequent updates and new features

Your color scheme, gap sizes, keybindings, and application assignments have all been preserved to ensure a seamless transition.
