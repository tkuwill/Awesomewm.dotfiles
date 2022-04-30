<div align="center">
    <img src="https://awesomewm.org/images/awesome-logo.svg">
</div>

<div align="center">
    <h1>Awesomewm.dotfiles</h1>
</div>

# Credits [WillPower3309/awesome-dotfiles](https://github.com/WillPower3309/awesome-dotfiles).

> Do much customization to meet my own needs.

> Wallpaper is from [桜](https://www.pixiv.net/en/artworks/80518034).

---

## My Awesomewm dotfiles used in archlinux. 
- Also I put my `.zshrc`, `.vimrc`, `init.vim`, `.Xresources` and `ranger`'s setting here. If you need, you can use those. 
- ranger's setting can see [ArchWiki-ranger](https://wiki.archlinux.org/title/ranger#File_association) and [ranger's github wiki Image-Previews](https://github.com/ranger/ranger/wiki/Image-Previews) and [ranger Drag-and-Drop](https://github.com/ranger/ranger/wiki/Drag-and-Drop) as reference. If you are using archlinux you might have to replace dragon with [dragon-drop](https://aur.archlinux.org/packages/dragon-drop) because they renamed it. Also in wiki, `map <C-d> shell dragon -a -x %p --and-exit` can't work for me, so I use `map <A-d> shell dragon -a -x %p --and-exit` instead. `<A-d>` means `<Alt-d>`. And in the wiki, method 2 can't work for me.
- However, I **DO NOT** promise that those must work in your computer. 
- Use the part that you need, which is a good choice, I thought.
- **The color in the config may be different from the screenshots below because I usually change colors of my UI to meet my need.**
---

# Here is the screenshots ! !

![](/screenshot/showdesktop.png)


![](/screenshot/showurxvt.png)
> Here is my terminal, urxvt. Use **.Xresources** to set.

![](/screenshot/cmus.png)
> Here is my music player, cmus. You can check the file `autosave` to see my cmus's config.

![](/screenshot/rofi.png)
> This is my rofi' s look. I change the color of default.

## 2022/03/31 Added mpris-widget which can play or pause music by mouse. It can also go to next song or previous song by mouse scroll up or down, which depends on your setting. Also, it can show the artist and song name playing. (From [mpris-widget](https://github.com/streetturtle/awesome-wm-widgets/tree/master/mpris-widget))

## 2022/04/09 Added volume-widget. From [volume-widget](https://github.com/streetturtle/awesome-wm-widgets/tree/master/volume-widget).

## 2022/04/16 Added Logout Menu Widget. From [Logout Menu Widget](https://github.com/streetturtle/awesome-wm-widgets/tree/master/logout-menu-widget).

![](/screenshot/logout-menu-widget.png)

Also, I now use [papercolor-theme](https://github.com/NLKNguyen/papercolor-theme) for vim and neovim. I also use [ohmyzsh-battery.plugin.zsh](https://github.com/ohmyzsh/ohmyzsh/blob/master/plugins/battery/battery.plugin.zsh) to fix my terminal zsh prompt.


![](/screenshot/man.png)
I have also changed the pager for `man`. Now I use `vim` as pager. You can check my `.zshrc` for the setting. More details or tutorial from [Using Vim as $MANPAGER](https://zameermanji.com/blog/2012/12/30/using-vim-as-manpager/), [A faster Vim, for a better manpager](https://kgrz.io/faster-vim-better-manpager.html), [5 cool terminal pagers in Fedora](https://fedoramagazine.org/5-cool-terminal-pagers-in-fedora/). If you need, take a look.

## 2022/04/28 Removed left-panel. Added bottom-panel and changed top-panel.

![](/screenshot/newlayout.png)

## 2022/04/30 Removed bottom-panel, merged tasklist to top-panel, redesigned top-panel, and change theme font.

![](/screenshot/newlayout2.png)

I use [SauceCodePro Nerd Font](https://github.com/ryanoasis/nerd-fonts/tree/master/patched-fonts/SourceCodePro) to avoid widgets keeping moving left and right. Due to SauceCodePro Nerd Font is Monospaced font. 

---

### I also add more volume bar icon when the volume is over 80%, 60%, 40%, 20%, 0% and 0%. And I use the icon from [Flaticon](https://www.flaticon.com/).
- If you don't like that, you can change it by yourself.
- Put the icon you like in **icons/volume/pastel**, then change the **volume-adjust2.lua** if you use different name of your icon. Here is the original source below.
> <a href="https://www.flaticon.com/free-icons/volume-down" title="volume down icons">Volume down icons created by Freepik - Flaticon</a>

> <a href="https://www.flaticon.com/free-icons/sound" title="sound icons">Sound icons created by Freepik - Flaticon</a>

> <a href="https://www.flaticon.com/free-icons/volume" title="volume icons">Volume icons created by Aldo Cervantes - Flaticon</a>

> <a href="https://www.flaticon.com/free-icons/volume" title="volume icons">Volume icons created by Aldo Cervantes - Flaticon</a>

> <a href="https://www.flaticon.com/free-icons/silence" title="silence icons">Silence icons created by Aldo Cervantes - Flaticon</a>

> <a href="https://www.flaticon.com/free-icons/audio" title="audio icons">Audio icons created by Aldo Cervantes - Flaticon</a>
---
### Here is the result below ! 

![volume = 0](/screenshot/0.png) 
![volume < 20](/screenshot/0-20.png)
![volume > 20](/screenshot/20.png)
![volume > 40](/screenshot/40.png)
![volume > 60](/screenshot/60.png)
![volume > 80](/screenshot/80.png)

### From left to right 
- First photo is **volume = 0**. 
- Second is **volume < 20**.
- Third is **volume > 20**. 
- Fourth is **volume > 40**. 
- Fifth is **volume > 60**. 
- Final one is **volume > 80**. 
