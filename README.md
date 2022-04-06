<div align="center">
    <img src="https://awesomewm.org/images/awesome-logo.svg">
</div>

<div align="center">
    <h1>Awesomewm.dotfiles</h1>
</div>

# Credits [WillPower3309/awesome-dotfiles](https://github.com/WillPower3309/awesome-dotfiles).

## Just do some change to meet my own needs.
## Wallpaper is from [桜](https://www.pixiv.net/en/artworks/80518034).
---

My Awesomewm dotfiles used in archlinux. 
- Also I put my .zshrc, .vimrc, .Xresources and ranger's setting here. If you need, you can use those. 
- ranger's setting can see [ArchWiki-ranger](https://wiki.archlinux.org/title/ranger#File_association) and [ranger's github wiki Image-Previews](https://github.com/ranger/ranger/wiki/Image-Previews) and [ranger Drag-and-Drop](https://github.com/ranger/ranger/wiki/Drag-and-Drop) as reference. If you are using archlinux you might have to replace dragon with [dragon-drop](https://aur.archlinux.org/packages/dragon-drop) because they renamed it. Also in wiki, `map <C-d> shell dragon -a -x %p --and-exit` can't work for me, so I use `map <A-d> shell dragon -a -x %p --and-exit` instead. `<A-d>` means `<Alt-d>`. And in the wiki, method 2 can't work for me.
- However, I **DO NOT** promise that those must work in your computer. 
- Use the part that you need, which is a good choice, I thought.
- **The color in the config may be different from the screenshots below because I usually change colors of my UI to meet my need.**
---

# Here is the screenshots ! !

![](/screenshot/showdesktop.png)

> The line next to the clock is volume bar, too. I simply make some change of volume-adjust.lua which is in the "components" folder to make it, which is called volume-adjust.lua. Also, the volume-adjust.lua made by WillPower3309 is not deleted, but changed the name, now called "volume-adjust2.lua". The bar will not disappear, which will let you always know the volume all the times. 
> Now top panel has changed the stytle !

![](/screenshot/showurxvt.png)
> Here is my terminal, urxvt. Use **.Xresources** to set.

![](/screenshot/cmus.png)
> Here is my music player, cmus. You can check the file **autosave** to see my cmus's config.

![](/screenshot/rofi.png)
> This is my rofi' s look. I change the color of default.

## 2022/03/31 Added mpris-widget which can play or pause music by mouse. It can also go to next song or previous song by mouse scroll up or down, which depends on your setting. Also, it can show the artist and song name playing.
![](/screenshot/add-mpris-widget.png)
---

### I also add more volume bar icon when the volume is over 80%, 60%, 40%, 20%, 0% and 0%. And I use the icon from [Flaticon](https://www.flaticon.com/).
- If you don't like that, you can change it by yourself.
- Put the icon you like in **icons/volume/pastel**, then change the **volume-adjust.lua** if you use different name of your icon. Here is the original source below.
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
