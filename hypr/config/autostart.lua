-- Auto-start config
-- Launch session apps when Hyprland starts.

hl.on("hyprland.start", function ()
    hl.exec_cmd("dbus-update-activation-environment --systemd --all")
    hl.exec_cmd("noctalia")
    hl.exec_cmd("xhost +SI:localuser:root")
    hl.exec_cmd("zeditor")
    hl.exec_cmd("zen-browser")
    hl.exec_cmd("/opt/t3code-bin/t3code")
    hl.exec_cmd("kitty")
end)
