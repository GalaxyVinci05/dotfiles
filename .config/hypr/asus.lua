hl.on("hyprland.start", function ()
    hl.exec_cmd("asusctl profile -P balanced &")
end)

hl.bind(mainMod .. "+ CTRL + P", hl.exec_cmd("asusctl profile -p performance && dunstify \"Switched to Performance\""))
hl.bind(mainMod .. "+ CTRL + B", hl.exec_cmd("asusctl profile -P balanced && dunstify \"Switched to Balanced\""))
hl.bind(mainMod .. "+ CTRL + Q", hl.exec_cmd("asusctl profile -P quiet && dunstify \"Switched to Quiet\""))

hl.window_rule({
    name = "float",
    match = {
        class = "^(discord)$"
    },
    float = true
})

hl.window_rule({
    name = "max_size",
    match = {
        class = "^(discord)$"
    },
    max_size = { 1210, 700 }
})
