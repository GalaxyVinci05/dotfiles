local primary = rgb("73d1ff")
local surface = rgb("12131c")
local secondary = rgb("8dcff2")
local error = rgb("ffb4ab")
local tertiary = rgb("bdc2ff")
local surface_lowest = rgb("0d0d17")

hl.config({
    general = {
        active_border = primary,
        inactive_border = secondary
    },

    group = {
        border_active = secondary,
        border_inactive = surface,
        border_locked_active = error,
        border_locked_inactive = surface
    },

    groupbar = {
        active = secondary,
        inactive = surface,
        locked_active = error,
        locked_inactive = surface
    }
})
