[Emuel](https://github.com/emuel-vassallo)'s dotfiles
==========================

Screenshots
---------

![Alt text](https://raw.githubusercontent.com/emuel-vassallo/dotfiles/main/images/ss-1.png)

![Alt text](https://raw.githubusercontent.com/emuel-vassallo/dotfiles/main/images/ss-2.png)

Installation (will become a script)
----------

i3-gaps
-------------
```
git clone https://aur.archlinux.org/i3-gaps-next-git.git
cd i3-gaps-next-git
makepkg -si
```

Kitty
-------------
```
git clone https://aur.archlinux.org/kitty-git.git
cd kitt-git/
makepkg -si
```

Polybar
-------------
```
git clone https://aur.archlinux.org/polybar.git
cd polybar./
makepkg -si
```

Rofi
-------------
```
git clone https://github.com/davatorium/rofi.git
meson setup build
ninja -C build
ninja -C build install
```

Zsh
-------------
```
sudo pacman -S zsh
chsh -s $(which zsh)
```

Fnm
-------------
```
curl -fsSL https://fnm.vercel.app/install | bash
```

Zsh-completions
-------------
```
git clone https://aur.archlinux.org/zsh-completions-git.git
cd zsh-completions-git
makepkg -sit
```

Ranger
-------------
```https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/FiraMono.zip
git clone git@github.com:ranger/ranger.git
cd ranger
sudo make install
```

Neovim
-------------
```
git clone git@github.com:neovim/neovim.git
make CMAKE_BUILD_TYPE=RelWithDebInfo
sudo make install
```

General applications
-------------- 
```
sudo pacman -S redshift brightnessctl npm
yay -S google-chrome-stable
sudo npm -i g live-server prettier black pyright eslint html css
```
