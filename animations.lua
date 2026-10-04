-- Magnus HyprDots
-- Smooth modern animations

----------------
---- CURVES ----
----------------

hl.curve("easeOutQuint", {
    type = "bezier",
    points = { {0.22, 1}, {0.36, 1} }
})

hl.curve("easeInOutCubic", {
    type = "bezier",
    points = { {0.65, 0.05}, {0.36, 1} }
})

hl.curve("linear", {
    type = "bezier",
    points = { {0, 0}, {1, 1} }
})

hl.curve("almostLinear", {
    type = "bezier",
    points = { {0.5, 0.5}, {0.75, 1} }
})

hl.curve("quick", {
    type = "bezier",
    points = { {0.15, 0}, {0.1, 1} }
})

-- Suave e rápida para troca de workspace
hl.curve("workspaceCurve", {
    type = "bezier",
    points = { {0.16, 1}, {0.3, 1} }
})

-- Pequeno overshoot para elementos específicos
hl.curve("overshoot", {
    type = "bezier",
    points = { {0.5, 0.9}, {0.1, 1.1} }
})


----------------
---- SPRINGS ---
----------------

hl.curve("easy", {
    type = "spring",
    mass = 1,
    stiffness = 80,
    dampening = 18
})

hl.curve("rubber", {
    type = "spring",
    mass = 1,
    stiffness = 70,
    dampening = 12
})
