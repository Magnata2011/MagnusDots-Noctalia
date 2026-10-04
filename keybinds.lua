-- Magnus HyprDots
-- Keybindings

local mainMod = "SUPER"
local noctalia = "noctalia msg"

---------------------------
---- WINDOW MANAGEMENT ----
---------------------------

-- Kill window
hl.bind(
    mainMod .. " + SHIFT + Escape",
    hl.dsp.exec_cmd("hyprctl kill")
)

-- Close window
hl.bind(
    mainMod .. " + Q",
    hl.dsp.window.close()
)

-- Toggle floating
hl.bind(
    mainMod .. " + V",
    hl.dsp.window.float({ action = "toggle" })
)

hl.bind(
    mainMod .. " + ALT + Space",
    hl.dsp.window.float({ action = "toggle" })
)

-- Fullscreen
hl.bind(
    mainMod .. " + D",
    hl.dsp.window.fullscreen({ mode = 1 })
)

hl.bind(
    mainMod .. " + F",
    hl.dsp.window.fullscreen()
)

-- Toggle split
hl.bind(
    mainMod .. " + J",
    hl.dsp.layout("togglesplit")
)

----------------
---- FOCUS -----
----------------

hl.bind(
    mainMod .. " + Left",
    hl.dsp.focus({ direction = "left" })
)

hl.bind(
    mainMod .. " + Right",
    hl.dsp.focus({ direction = "right" })
)

hl.bind(
    mainMod .. " + Up",
    hl.dsp.focus({ direction = "up" })
)

hl.bind(
    mainMod .. " + Down",
    hl.dsp.focus({ direction = "down" })
)

-- Window switcher
hl.bind(
    "ALT + Tab",
    hl.dsp.window.cycle_next()
)

---------------------
---- MOVE WINDOW ----
---------------------

hl.bind(
    mainMod .. " + SHIFT + Right",
    hl.dsp.window.move({ direction = "r" })
)

hl.bind(
    mainMod .. " + SHIFT + Left",
    hl.dsp.window.move({ direction = "l" })
)

hl.bind(
    mainMod .. " + SHIFT + Up",
    hl.dsp.window.move({ direction = "u" })
)

hl.bind(
    mainMod .. " + SHIFT + Down",
    hl.dsp.window.move({ direction = "d" })
)

-- Move window to adjacent workspace
hl.bind(
    mainMod .. " + CONTROL + SHIFT + Right",
    hl.dsp.window.move({ workspace = "r+1" })
)

hl.bind(
    mainMod .. " + CONTROL + SHIFT + Left",
    hl.dsp.window.move({ workspace = "r-1" })
)

----------------
---- MOUSE -----
----------------

hl.bind(
    mainMod .. " + mouse:272",
    hl.dsp.window.drag()
)

hl.bind(
    mainMod .. " + mouse:273",
    hl.dsp.window.resize()
)

------------------
---- PROGRAMS ----
------------------

-- Terminal
hl.bind(
    mainMod .. " + Return",
    hl.dsp.exec_cmd("kitty")
)

-- File manager
hl.bind(
    mainMod .. " + E",
    hl.dsp.exec_cmd("dolphin")
)

--------------------
---- NOCTALIA V5 ---
--------------------

-- Launcher
hl.bind(
    mainMod .. " + Space",
    hl.dsp.exec_cmd(noctalia .. " panel-toggle launcher")
)

-- Control Center
hl.bind(
    mainMod .. " + A",
    hl.dsp.exec_cmd(noctalia .. " panel-toggle controlCenter")
)

-- Session menu
hl.bind(
    mainMod .. " + Escape",
    hl.dsp.exec_cmd(noctalia .. " panel-toggle session")
)

---------------------------
---- HARDWARE CONTROLS ----
---------------------------

-- Audio
hl.bind(
    "XF86AudioRaiseVolume",
    hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%+"),
        {
            locked = true,
            repeating = true
        }
)

hl.bind(
    "XF86AudioLowerVolume",
    hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"),
        {
            locked = true,
            repeating = true
        }
)

hl.bind(
    "XF86AudioMute",
    hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"),
        {
            locked = true
        }
)

hl.bind(
    "XF86AudioMicMute",
    hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"),
        {
            locked = true
        }
)

-- Media
hl.bind(
    "XF86AudioPlay",
    hl.dsp.exec_cmd("playerctl play-pause"),
        {
            locked = true
        }
)

hl.bind(
    "XF86AudioPause",
    hl.dsp.exec_cmd("playerctl play-pause"),
        {
            locked = true
        }
)

hl.bind(
    "XF86AudioNext",
    hl.dsp.exec_cmd("playerctl next"),
        {
            locked = true
        }
)

hl.bind(
    "XF86AudioPrev",
    hl.dsp.exec_cmd("playerctl previous"),
        {
            locked = true
        }
)

-- Brightness
hl.bind(
    "XF86MonBrightnessUp",
    hl.dsp.exec_cmd("brightnessctl set 5%+"),
        {
            repeating = true
        }
)

hl.bind(
    "XF86MonBrightnessDown",
    hl.dsp.exec_cmd("brightnessctl set 5%-"),
        {
            repeating = true
        }
)

--------------------
---- WORKSPACES ----
--------------------

for i = 1, 10 do
    local key = i % 10

    -- Focus workspace
    hl.bind(
        mainMod .. " + " .. key,
        hl.dsp.focus({
            workspace = i
        })
    )

    -- Move window + follow
    hl.bind(
        mainMod .. " + SHIFT + " .. key,
        hl.dsp.window.move({
            workspace = i,
            follow = true
        })
    )

    -- Move window without following
    hl.bind(
        mainMod .. " + ALT + " .. key,
        hl.dsp.window.move({
            workspace = i,
            follow = false
        })
    )
    end

    ----------------------------
    ---- WORKSPACE NAVIGATION --
    ----------------------------

    hl.bind(
        mainMod .. " + CONTROL + Right",
        hl.dsp.focus({
            workspace = "r+1"
        })
    )

    hl.bind(
        mainMod .. " + CONTROL + Left",
        hl.dsp.focus({
            workspace = "r-1"
        })
    )

    hl.bind(
        mainMod .. " + CONTROL + Down",
        hl.dsp.focus({
            workspace = "empty"
        })
    )

    -- Move window between workspaces
    hl.bind(
        mainMod .. " + CONTROL + ALT + Right",
        hl.dsp.window.move({
            workspace = "r+1"
        })
    )

    hl.bind(
        mainMod .. " + CONTROL + ALT + Left",
        hl.dsp.window.move({
            workspace = "r-1"
        })
    )

    -------------------------
    ---- SCROLL WORKSPACES ---
    -------------------------

    hl.bind(
        mainMod .. " + mouse_down",
        hl.dsp.window.move({
            workspace = "e-1"
        })
    )

    hl.bind(
        mainMod .. " + mouse_up",
        hl.dsp.window.move({
            workspace = "e+1"
        })
    )

    -------------------------
    ---- SPECIAL WORKSPACE -
    -------------------------

    hl.bind(
        mainMod .. " + SHIFT + S",
        hl.dsp.window.move({
            workspace = "special"
        })
    )

    hl.bind(
        mainMod .. " + S",
        hl.dsp.workspace.toggle_special()
    )
