--       ██████╗ █████╗ ██╗     ███████╗███╗   ██╗██████╗  █████╗ ██████╗
--      ██╔════╝██╔══██╗██║     ██╔════╝████╗  ██║██╔══██╗██╔══██╗██╔══██╗
--      ██║     ███████║██║     █████╗  ██╔██╗ ██║██║  ██║███████║██████╔╝
--      ██║     ██╔══██║██║     ██╔══╝  ██║╚██╗██║██║  ██║██╔══██║██╔══██╗
--      ╚██████╗██║  ██║███████╗███████╗██║ ╚████║██████╔╝██║  ██║██║  ██║
--       ╚═════╝╚═╝  ╚═╝╚══════╝╚══════╝╚═╝  ╚═══╝╚═════╝ ╚═╝  ╚═╝╚═╝  ╚═╝


-- ===================================================================
-- Initialization
-- ===================================================================


local awful = require("awful")
local gears = require("gears")
local wibox = require("wibox")
local beautiful = require("beautiful")
local dpi = beautiful.xresources.apply_dpi

local calendar = {}


-- ===================================================================
-- Create Widget
-- ===================================================================


calendar.create = function(screen)
   -- Clock / Calendar 24h format
   -- Get Time/Date format using `man strftime`
   local clock_widget = wibox.widget.textclock("<span font='" .. beautiful.title_font .."'>📆%Y/%m/%d %a⏰%T</span>", 1)

   -- Alternative to naughty.notify - tooltip. You can compare both and choose the preferred one
  --  awful.tooltip({
  --    objects = {clock_widget},
  --    mode = "outside",
  --    align = "right",
  --    timer_function = function()
  --       return os.date("Today is %Y/%m/%d %A.")
  --    end,
  --    preferred_positions = {"right", "left", "top", "bottom"},
  --    margin_leftright = dpi(18),
  --     margin_topbottom = dpi(18)

  --  })

   local cal_shape = function(cr, width, height)
      gears.shape.partially_rounded_rect(cr, width, height, false, false, true, true, 12)
   end

   -- Calendar Widget
   local month_calendar = awful.widget.calendar_popup.month({
      screen = screen,
      start_sunday = true,
      spacing = 10,
      font = beautiful.title_font,
      long_weekdays = true,
      margin = 0, -- 10
      style_month = {border_width = 0, padding = 12, shape = cal_shape, padding = 25},
      style_header = {border_width = 0, bg_color = "#00000000"},
      style_weekday = {border_width = 0, bg_color = "#00000000"},
      style_normal = {border_width = 0, bg_color = "#00000000"},
      style_focus = {border_width = 0, bg_color = "#8AB4F8"},
   })

   -- Attach calentar to clock_widget
   month_calendar:attach(clock_widget, "tc" , { on_pressed = true, on_hover = false })

   return clock_widget
end

return calendar
