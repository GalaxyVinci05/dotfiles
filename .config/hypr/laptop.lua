hl.monitor({
    output = "eDP-1",
    mode = "preferred",
    position = "auto",
    scale = "1"
})

hl.bind("switch:Lid Switch", hl.dsp.exec_cmd("noctalia-shell ipc call sessionMenu lockAndSuspend"))

hl.config({
    input = {
        kb_layout = "it"
    }
})
