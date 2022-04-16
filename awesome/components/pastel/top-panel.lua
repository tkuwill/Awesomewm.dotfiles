--      ████████╗ ██████╗ ██████╗     ██████╗  █████╗ ███╗   ██╗███████╗██╗
--      ╚══██╔══╝██╔═══██╗██╔══██╗    ██╔══██╗██╔══██╗████╗  ██║██╔════╝██║
--         ██║   ██║   ██║██████╔╝    ██████╔╝███████║██╔██╗ ██║█████╗  ██║
--         ██║   ██║   ██║██╔═══╝     ██╔═══╝ ██╔══██║██║╚██╗██║██╔══╝  ██║
--         ██║   ╚██████╔╝██║         ██║     ██║  ██║██║ ╚████║███████╗███████╗
--         ╚═╝    ╚═════╝ ╚═╝         ╚═╝     ╚═╝  ╚═╝╚═╝  ╚═══╝╚══════╝╚══════╝

-- ===================================================================
-- Initialization
-- ===================================================================


local awful = require("awful")
local beautiful = require("beautiful")
local wibox = require("wibox")
local gears = require("gears")
local dpi = beautiful.xresources.apply_dpi


local offsety = dpi(700)

-- import widgets
local task_list = require("widgets.task-list")
local mpris_widget = require("mpris-widget")
local volume_widget = require('volume-widget.volume')
local logout_menu_widget = require("logout-menu-widget.logout-menu")
-- define module table
local top_panel = {}

-- ===================================================================
-- Bar Creation
-- ===================================================================


top_panel.create = function(s)
   local panel = awful.wibar({
      screen = s,
      position = "top",
      ontop = true,
      height = beautiful.top_panel_height,
      width = s.geometry.width * 9.8/10,
      opacity = 0.7,
      type = dock,
      shape = gears.shape.rounded_rect,
      shape_args = {35, },
      border_width = 5, 
   })

   panel:setup {
      expand = "none",
      layout = wibox.layout.align.horizontal,
      task_list.create(s),
      require("widgets.calendar").create(s),
      {
         layout = wibox.layout.fixed.horizontal,
         wibox.layout.margin(mpris_widget(),dpi(5), dpi(15), dpi(5), dpi(5)),
         wibox.layout.margin(wibox.widget.systray(),dpi(5), dpi(5), dpi(5), dpi(5)),
         wibox.layout.margin(volume_widget{widget_type = 'icon_and_text'},dpi(5), dpi(5), dpi(5), dpi(5)),
         require("widgets.bluetooth"),
         require("widgets.network")(),
      --   require("widgets.battery"),
         wibox.layout.margin(require("widgets.layout-box"), dpi(5), dpi(5), dpi(5), dpi(5)),
         wibox.layout.margin(logout_menu_widget(),dpi(5), dpi(5), dpi(5), dpi(5)),

      }
   }


   -- ===================================================================
   -- Functionality
   -- ===================================================================


   -- hide panel when client is fullscreen
   local function change_panel_visibility(client)
      if client.screen == s then
         panel.ontop = not client.fullscreen
      end
   end

   -- connect panel visibility function to relevant signals
   client.connect_signal("property::fullscreen", change_panel_visibility)
   client.connect_signal("focus", change_panel_visibility)

end

return top_panel
