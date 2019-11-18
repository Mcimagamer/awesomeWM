


---------------------------
-- Meh awesome theme --
---------------------------

local theme_assets = require("beautiful.theme_assets")
local xresources = require("beautiful.xresources")
local dpi = xresources.apply_dpi

local gfs = require("gears.filesystem")
local themes_path = gfs.get_themes_dir()
local theme_name = "XRDB"
local xrdb = xresources.get_current_theme()
local theme = {}

theme.font          = "SF Mono 8"

-- Get colors from .Xresources and set fallback colors
local xbackground = "FFFFFF"
local xforeground = "c2d58e"
local xcolor0 = "59ba74"
local xcolor1 = "208854"
local xcolor2 = "8e95a1"
local xcolor3 = xrdb.color3 or "#F2A272"
local xcolor4 = xrdb.color4 or "#8897F4"
local xcolor5 = xrdb.color5 or "#C574DD"
local xcolor6 = xrdb.color6 or "#79E6F3"
local xcolor7 = xrdb.color7 or "#FDFDFD"
local xcolor8 = xrdb.color8 or "#414458"
local xcolor9 = xrdb.color9 or "#FF4971"
local xcolor10 = xrdb.color10 or  "#18E3C8"
local xcolor11 = xrdb.color11 or  "#FF8037"
local xcolor12 = xrdb.color12 or  "#556FFF"
local xcolor13 = xrdb.color13 or  "#B043D1"
local xcolor14 = xrdb.color14 or  "#3FDCEE"
local xcolor15 = xrdb.color15 or  "#BEBEC1"

-- Set some colors that are used frequently as local variables
local accent_color = xcolor14
local focused_color = xcolor14
local unfocused_color = xcolor7
local urgent_color = xcolor9

theme.bg_dark       = xbackground
theme.bg_normal     = "FFFFFF"
theme.bg_focus      = xbackground
theme.bg_urgent     = xbackground
theme.bg_minimize   = xcolor8
theme.bg_systray    = xbackground

theme.fg_normal     = xforeground
theme.fg_focus      = focused_color
theme.fg_urgent     = urgent_color
theme.fg_minimize   = xcolor8
-- Gaps
theme.useless_gap   = dpi(3)
-- This could be used to manually determine how far away from the
-- screen edge the bars / notifications should be.
theme.screen_margin = dpi(3)

-- Borders
theme.border_width  = dpi(0)
theme.border_color = xcolor0
theme.border_normal = xcolor0
theme.border_focus  = xcolor0
-- Rounded corners
theme.border_radius = dpi(6)

-- Titlebars
-- (Titlebar items can be customized in titlebars.lua)
theme.titlebars_enabled = true
theme.titlebar_size = dpi(35)
theme.titlebar_title_enabled = false
theme.titlebar_font = theme.font -- BUG: Uses theme.font regardless
-- Window title alignment: left, right, center
theme.titlebar_title_align = "center"
-- Titlebar position: top, bottom, left, right
theme.titlebar_position = "left"
-- Use 4 titlebars around the window to imitate borders
theme.titlebars_imitate_borders = false
theme.titlebar_bg = xcolor0
-- theme.titlebar_bg_focus = xcolor5
-- theme.titlebar_bg_normal = xcolor13
theme.titlebar_fg_focus = xcolor7
theme.titlebar_fg_normal = xforeground
--theme.titlebar_fg = xcolor7

-- Notifications
-- Position: bottom_left, bottom_right, bottom_middle,
--         top_left, top_right, top_middle
theme.notification_position = "top_right" -- BUG: some notifications appear at top_right regardless
theme.notification_border_width = 0
theme.notification_border_radius = theme.border_radius
theme.notification_border_color = xcolor10
theme.notification_bg = xbackground
theme.notification_fg = xforeground
theme.notification_crit_bg = urgent_color
theme.notification_crit_fg = xcolor0
theme.notification_icon_size = dpi(60)
-- theme.notification_height = dpi(80)
-- theme.notification_width = dpi(300)
theme.notification_margin = dpi(15)
theme.notification_opacity = 1
theme.notification_font = theme.font
theme.notification_padding = theme.screen_margin * 2
theme.notification_spacing = theme.screen_margin * 2

-- There are other variable sets
-- overriding the Meh one when
-- defined, the sets are:
-- taglist_[bg|fg]_[focus|urgent|occupied|empty|volatile]
-- tasklist_[bg|fg]_[focus|urgent]
-- titlebar_[bg|fg]_[normal|focus]
-- tooltip_[font|opacity|fg_color|bg_color|border_width|border_color]
-- mouse_finder_[color|timeout|animate_timeout|radius|factor]
-- prompt_[fg|bg|fg_cursor|bg_cursor|font]
-- hotkeys_[bg|fg|border_width|border_color|shape|opacity|modifiers_fg|label_bg|label_fg|group_margin|font|description_font]
-- Example:
--theme.taglist_bg_focus = "#ff0000"

-- Generate taglist squares:
local taglist_square_size = dpi(8)
theme.taglist_squares_sel = theme_assets.taglist_squares_sel(
    taglist_square_size, theme.fg_normal
)
theme.taglist_squares_unsel = theme_assets.taglist_squares_unsel(
    taglist_square_size, theme.fg_normal
)

-- Variables set for theming notifications:
-- notification_font
-- notification_[bg|fg]
-- notification_[width|height|margin]
-- notification_[border_color|border_width|shape|opacity]

-- Variables set for theming the menu:
-- menu_[bg|fg]_[normal|focus]
-- menu_[border_color|border_width]
theme.menu_submenu_icon = themes_path.."Meh/submenu.png"
theme.menu_height = dpi(20)
theme.menu_width  = dpi(100)

-- You can add as many variables as
-- you wish and access them by using
-- beautiful.variable in your rc.lua
--theme.bg_widget = "#cc0000"

-- Define the image to load
theme.titlebar_close_button_normal = themes_path.."XRDB/icons/red.png"
theme.titlebar_close_button_focus  = themes_path.."XRDB/icons/22x22-light/red-focus.png"

theme.titlebar_minimize_button_normal = themes_path.."XRDB/icons/symbolic/yellow.png"
theme.titlebar_minimize_button_focus  = themes_path.."XRDB/icons/symbolic/yellow-focus.png"

theme.titlebar_floating_button_normal_inactive = themes_path.."XRDB/icons/tile"
theme.titlebar_floating_button_focus_inactive  = themes_path.."XRDB/icons/tile.png"
theme.titlebar_floating_button_normal_active = themes_path.."XRDB/icons/tile.png"
theme.titlebar_floating_button_focus_active  = themes_path.."XRDB/icons/tile.png"

theme.titlebar_maximized_button_normal_inactive = themes_path.."XRDB/icons/blue.png"
theme.titlebar_maximized_button_focus_inactive  = themes_path.."XRDB/icons/blue-focus.png"
theme.titlebar_maximized_button_normal_active = themes_path.."XRDB/icons/blue.png"
theme.titlebar_maximized_button_focus_active  = themes_path.."XRDB/icons/blue-focus.png"

theme.wallpaper ="/home/ih8microsoft/Immagini/new.png"

-- You can use your own layout icons like this:
theme.layout_fairh = themes_path.."Meh/capitaine/fairhw.png"
theme.layout_fairv = themes_path.."Meh/capitaine/fairvw.png"
theme.layout_floating  = themes_path.."Meh/capitaine/floatingw.png"
theme.layout_magnifier = themes_path.."Meh/capitaine/magnifierw.png"
theme.layout_max = themes_path.."XRDB/icons/blue.png"

theme.layout_fullscreen = themes_path.."XRDB/icons/blue-focus.png"
theme.layout_tilebottom = themes_path.."Meh/capitaine/tilebottomw.png"
theme.layout_tileleft   = themes_path.."Meh/capitaine/tileleftw.png"
theme.layout_tile = themes_path.."Meh/capitaine/tilew.png"
theme.layout_tiletop = themes_path.."Meh/capitaine/tiletopw.png"
theme.layout_spiral  = themes_path.."Meh/capitaine/spiralw.png"
theme.layout_dwindle = themes_path.."Meh/capitaine/dwindlew.png"
theme.layout_cornernw = themes_path.."Meh/capitaine/cornernww.png"
theme.layout_cornerne = themes_path.."Meh/capitaine/cornernew.png"
theme.layout_cornersw = themes_path.."Meh/capitaine/cornersww.png"
theme.layout_cornerse = themes_path.."Meh/capitaine/cornersew.png"

-- Generate Awesome icon:
theme.awesome_icon = theme_assets.awesome_icon(
    theme.menu_height, theme.bg_focus, theme.fg_focus
)

-- Define the icon theme for application icons. If not set then the icons
-- from /usr/share/icons and /usr/share/icons/hicolor will be used.
theme.icon_theme = "/usr/share/icons/capitaine"

return theme

-- vim: filetype=lua:expandtab:shiftwidth=4:tabstop=8:softtabstop=4:textwidth=80
