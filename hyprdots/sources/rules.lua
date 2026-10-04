-- Magnus HyprDots
-- Window / Workspace / Layer rules

--------------------------------
---- DIALOG / FLOATING WINDOWS
--------------------------------

hl.window_rule({
    match = { title = "^(Open File)(.*)$" },
               float = true,
               center = true,
})

hl.window_rule({
    match = { title = "^(Select a File)(.*)$" },
               float = true,
               center = true,
})

hl.window_rule({
    match = { title = "^(Open Folder)(.*)$" },
               float = true,
               center = true,
})

hl.window_rule({
    match = { title = "^(Save As)(.*)$" },
               float = true,
               center = true,
})

hl.window_rule({
    match = { title = "^(File Upload)(.*)$" },
               float = true,
               center = true,
})

hl.window_rule({
    match = { title = "^(Library)(.*)$" },
               float = true,
               center = true,
})

hl.window_rule({
    match = { title = "^(Choose wallpaper)(.*)$" },
               float = true,
               center = true,
               size = {
                   "monitor_w*0.60",
                   "monitor_h*0.65",
               },
})

--------------------------------
---- GENERIC WEB DIALOGS
--------------------------------

hl.window_rule({
    match = { title = "^(.*)(wants to save)$" },
               float = true,
               center = true,
})

hl.window_rule({
    match = { title = "^(.*)(wants to open)$" },
               float = true,
               center = true,
})

----------------
---- UTILITIES
----------------

hl.window_rule({
    match = { class = "^(pavucontrol)$" },
               float = true,
               center = true,
               size = {
                   "monitor_w*0.45",
                   "monitor_h*0.45",
               },
})

hl.window_rule({
    match = { class = "^(org.pulseaudio.pavucontrol)$" },
               float = true,
               center = true,
               size = {
                   "monitor_w*0.45",
                   "monitor_h*0.45",
               },
})

hl.window_rule({
    match = { class = "^(nm-connection-editor)$" },
               float = true,
               center = true,
               size = {
                   "monitor_w*0.45",
                   "monitor_h*0.45",
               },
})

---------------------------
---- PICTURE IN PICTURE
---------------------------

hl.window_rule({
    match = {
        title = "^([Pp]icture[- ]?[Ii]n[- ]?[Pp]icture)(.*)$",
    },
    float = true,
    pin = true,
    keep_aspect_ratio = true,
})

hl.window_rule({
    match = {
        title = "^([Pp]icture[- ]?[Ii]n[- ]?[Pp]icture)(.*)$",
    },
    size = {
        "monitor_w*0.25",
        "monitor_h*0.25",
    },
})

hl.window_rule({
    match = {
        title = "^([Pp]icture[- ]?[Ii]n[- ]?[Pp]icture)(.*)$",
    },
    move = {
        "monitor_w*0.73",
        "monitor_h*0.72",
    },
})

----------------
---- GAMING
----------------

hl.window_rule({
    match = { title = ".*\\.exe" },
    immediate = true,
})

hl.window_rule({
    match = { title = ".*minecraft.*" },
    immediate = true,
})

hl.window_rule({
    match = { class = "^(steam_app).*" },
               immediate = true,
})

----------------
---- TILING
----------------

hl.window_rule({
    match = { class = "^dev\\.warp\\.Warp$" },
    tile = true,
})

hl.window_rule({
    match = { float = false },
    no_shadow = true,
})

-----------------------
---- SPECIAL WINDOWS
-----------------------

hl.window_rule({
    match = { class = "^(plasma-changeicons)$" },
               float = true,
               no_initial_focus = true,
               move = { 999999, 999999 },
})

hl.window_rule({
    match = { title = "^(Copying — Dolphin)$" },
               move = { 40, 80 },
})

---------------------
---- WORKSPACE RULES
---------------------

hl.workspace_rule({
    workspace = "special:special",
    gaps_out = 30,
})

-------------------
---- LAYER RULES
-------------------

-- Hyprpicker
hl.layer_rule({
    match = { namespace = "^hyprpicker$" },
    no_anim = true,
})
