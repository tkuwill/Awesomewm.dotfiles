--      ████████╗██╗  ██╗███████╗███╗   ███╗███████╗
--      ╚══██╔══╝██║  ██║██╔════╝████╗ ████║██╔════╝
--         ██║   ███████║█████╗  ██╔████╔██║█████╗
--         ██║   ██╔══██║██╔══╝  ██║╚██╔╝██║██╔══╝
--         ██║   ██║  ██║███████╗██║ ╚═╝ ██║███████╗
--         ╚═╝   ╚═╝  ╚═╝╚══════╝╚═╝     ╚═╝╚══════╝

-- ===================================================================
-- Initialization
-- ===================================================================


local xresources = require("beautiful.xresources")
local dpi = xresources.apply_dpi

-- define module table
local theme = {}


-- ===================================================================
-- Theme Variables
-- ===================================================================


theme.name = "pastel"

-- Font
--theme.font = "SF Pro Text 9"
--theme.title_font = "SF Pro Display Medium 10"

-- Font
theme.font = "SauceCodePro Nerd Font Medium 10"
theme.title_font = "SauceCodePro Nerd Font Medium 10"
-- Background
theme.bg_normal = "#1f2430"
theme.bg_dark = "#000000"
theme.bg_focus = "#151821"
theme.bg_urgent = "#ed8274"
theme.bg_minimize = "#444444"

-- Foreground
theme.fg_normal = "#ffffff"
theme.fg_focus = "#e4e4e4"
theme.fg_urgent = "#ffffff"
theme.fg_minimize = "#ffffff"

-- Window Gap Distance
theme.useless_gap = dpi(4)

-- Show Gaps if Only One Client is Visible
theme.gap_single_client = true

-- Window Borders
theme.border_width = dpi(1)
theme.border_normal = "#00ffff"
theme.border_focus = "#00ffff"
theme.border_marked = theme.fg_urgent

-- Taglist
theme.taglist_bg_empty = theme.bg_normal
theme.taglist_bg_occupied = "#00007f"
theme.taglist_bg_urgent = "#e91e6399"
theme.taglist_bg_focus = "#f0e68c"

-- Tasklist
theme.tasklist_font = theme.font

theme.tasklist_bg_normal = theme.bg_normal
theme.tasklist_bg_focus = "#ffaa00"
theme.tasklist_bg_urgent = theme.bg_urgent

theme.tasklist_fg_focus = theme.fg_focus
theme.tasklist_fg_urgent = theme.fg_urgent
theme.tasklist_fg_normal = theme.fg_normal

-- Panel Sizing
theme.left_panel_width = dpi(30)
theme.top_panel_height = dpi(27)

-- Notification Sizing
theme.notification_max_width = dpi(350)

-- System Tray
theme.bg_systray = "#e6e6fa"
theme.systray_icon_spacing = dpi(10)

-- Titlebars
theme.titlebars_enabled = false


-- ===================================================================
-- Icons
-- ===================================================================


-- Define layout icons
theme.layout_tile = "~/.config/awesome/icons/layouts/tiled.png"
theme.layout_floating = "~/.config/awesome/icons/layouts/floating.png"
theme.layout_max = "~/.config/awesome/icons/layouts/maximized.png"

theme.icon_theme = "Papirus-Light"

-- return theme
return theme
