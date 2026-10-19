-- Monitor wiki https://wiki.hypr.land/Configuring/Basics/Monitors/
-- Example: output can be found with hyprctl monitors. Edit variables.lua for the monitor outputs instead of here directly
-- hl.monitor({
--     output    = MONITOR1,
--     mode      = "1920x1080@60",
--     position  = "0x0",
--     scale     = "1",
-- })

hl.monitor({
    output = MONITOR1,
    disabled = false,
    mode = "1920x1080@60.01Hz",
    position = "3450x-50",
    scale = 1.25,
    cm = "srgb",
})

hl.monitor({
    output = MONITOR2,
    disabled = false,
    mode = "1920x1080@60.00Hz",
    position = "5000x-530",
    scale = 1,
    cm = "srgb",
})
