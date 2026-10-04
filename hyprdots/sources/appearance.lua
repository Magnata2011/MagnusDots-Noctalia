-- Magnus HyprDots
-- End-4 inspired appearance

local CACHYLGREEN = "rgb(8be9a8)"
local CACHYDGREEN = "rgb(50c878)"
local CACHYGRAY   = "rgb(45475a)"
local CACHYLBLUE  = "rgb(8be9fd)"
local CACHYDBLUE  = "rgb(6272a4)"

hl.config({
    general = {
        gaps_in = 4,
        gaps_out = 10,

        border_size = 0,
        extend_border_grab_area = 10,
        resize_on_border = true,

        col = {
            active_border = {
                colors = { CACHYLGREEN, CACHYDGREEN },
          angle = 45,
            },
          inactive_border = CACHYGRAY,
        },
    },

    group = {
        col = {
            border_active = CACHYLBLUE,
          border_inactive = CACHYGRAY,
          border_locked_active = CACHYDBLUE,
          border_locked_inactive = CACHYGRAY,
        },

        groupbar = {
            col = {
                active = CACHYLGREEN,
          inactive = CACHYGRAY,
          locked_active = CACHYDBLUE,
          locked_inactive = CACHYGRAY,
            },
        },
    },

    decoration = {
        dim_special = 0.25,

        rounding = 12,

        active_opacity = 0.94,
        inactive_opacity = 0.82,
        fullscreen_opacity = 1.0,

        blur = {
            size = 6,
          passes = 4,
          special = true,
        },
    },
})
