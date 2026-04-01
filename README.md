# dotfiles

My personal dotfiles for CachyOS + Hyprland setup.

## Machines
- Lenovo Yoga Slim 7 14ILL10 (work) — Intel Core Ultra 7 258V, Arc 140V, 32GB RAM
- IdeaPad Gaming 3 (personal) — Ryzen 5 5600H, RTX 3050

## Dependencies
- hyprland, hypridle, hyprlock, hyprsunset
- waybar, mako, wofi, wlogout, swayosd
- alacritty, fish, nvim
- stow, grimblast, cliphist, wl-clipboard
- fira-sans, fira-mono fonts
- qt6-virtualkeyboard (for SDDM theme)

## Install

### Dotfiles
```bash
git clone git@github.com:Rsendes/dotfiles.git ~/dotfiles
cd ~/dotfiles
stow hypr waybar alacritty fish mako wofi wlogout swayosd nvim wallpaper
```

### SDDM Theme
Install SilentSDDM first:
```bash
git clone https://github.com/uiriansan/SilentSDDM.git /tmp/SilentSDDM
sudo cp -r /tmp/SilentSDDM /usr/share/sddm/themes/SilentSDDM
```

Then apply config:
```bash
cd ~/dotfiles/sddm
chmod +x install.sh
./install.sh
```

### Fish plugins
```bash
fisher install jorgebucaran/fisher
fisher install PatrickF1/fzf.fish jethrokuan/z jorgebucaran/autopair.fish
```
