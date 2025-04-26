-- Copyright (c) 2020-2021 shadmansaleh
-- MIT license, see LICENSE for more details.
-- stylua: ignore
local colors = {
    black        = '#47433e', -- Orion Darkest
    white        = '#e6e4db', -- Orion White
    orange       = '#ad4e1f', -- Orion Orange
    blue         = '#3d588f', -- Orion Blue
    green        = '#3e743e', -- Orion Green
    gray         = '#cbc6b4', -- Orion Dark
    darkgray     = '#47433e', -- Orion Darkest
    lightgray    = '#d5d2c3', -- Orion Background
    inactivegray = '#666666', -- Orion Grey
}

return {
    normal = {
        a = { bg = colors.darkgray, fg = colors.white, gui = 'bold' },
        b = { bg = colors.gray, fg = colors.darkgray },
        c = { bg = colors.lightgray, fg = colors.darkgray },
    },
    insert = {
        a = { bg = colors.green, fg = colors.white, gui = 'bold' },
        b = { bg = colors.gray, fg = colors.darkgray },
        c = { bg = colors.gray, fg = colors.black },
    },
    visual = {
        a = { bg = colors.orange, fg = colors.white, gui = 'bold' },
        b = { bg = colors.gray, fg = colors.darkgray },
        c = { bg = colors.darkgray, fg = colors.white },
    },
    replace = {
        a = { bg = colors.blue, fg = colors.white, gui = 'bold' },
        b = { bg = colors.gray, fg = colors.darkgray },
        c = { bg = colors.gray, fg = colors.black },
    },
    command = {
        a = { bg = colors.darkgray, fg = colors.white, gui = 'bold' },
        b = { bg = colors.gray, fg = colors.darkgray },
        c = { bg = colors.lightgray, fg = colors.darkgray },
    },
    inactive = {
        a = { bg = colors.lightgray, fg = colors.inactivegray },
        b = { bg = colors.lightgray, fg = colors.inactivegray },
        c = { bg = colors.lightgray, fg = colors.inactivegray },
    },
}
