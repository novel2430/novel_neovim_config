local alpha = require"alpha"
if not alpha then
  return
end
local startify = require"alpha.themes.startify"
if not startify then
  return
end


startify.section.header.val = {
    -- [[                                   __                ]],
    -- [[      ___     ___    ___   __  __ /\_\    ___ ___    ]],
    -- [[     / _ `\  / __`\ / __`\/\ \/\ \\/\ \  / __` __`\  ]],
    -- [[    /\ \/\ \/\  __//\ \_\ \ \ \_/ |\ \ \/\ \/\ \/\ \ ]],
    -- [[    \ \_\ \_\ \____\ \____/\ \___/  \ \_\ \_\ \_\ \_\]],
    -- [[     \/_/\/_/\/____/\/___/  \/__/    \/_/\/_/\/_/\/_/]],
    [[                                                                                   .-'~~~-.            ]],
    [[                                                                                 .'o  oOOOo`.          ]],
    [[ ███╗   ██╗ ██████╗ ██╗   ██╗███████╗██╗     ██████╗ ██╗  ██╗██████╗  ██████╗   :~~~-.oOo   o`.        ]],
    [[ ████╗  ██║██╔═══██╗██║   ██║██╔════╝██║     ╚════██╗██║  ██║╚════██╗██╔═████╗    `. \ ~-.  oOOo.      ]],
    [[ ██╔██╗ ██║██║   ██║██║   ██║█████╗  ██║      █████╔╝███████║ █████╔╝██║██╔██║      `.; / ~.  OO:      ]],
    [[ ██║╚██╗██║██║   ██║╚██╗ ██╔╝██╔══╝  ██║     ██╔═══╝ ╚════██║ ╚═══██╗████╔╝██║      .'  ;-- `.o.'      ]],
    [[ ██║ ╚████║╚██████╔╝ ╚████╔╝ ███████╗███████╗███████╗     ██║██████╔╝╚██████╔╝     ,'  ; ~~--'~        ]],
    [[ ╚═╝  ╚═══╝ ╚═════╝   ╚═══╝  ╚══════╝╚══════╝╚══════╝     ╚═╝╚═════╝  ╚═════╝      ;  ;                ]],
    [[ _______\|/__________\\;_\\//___\|/_______________\|/__________\\;_\\//___\|/____\\;_\\//___\|/________]]
}
startify.section.top_buttons.val = {
    startify.button( "e", "  New file" , ":ene <BAR> startinsert <CR>"),
}
-- disable MRU
--startify.section.mru.val = { { type = "padding", val = 0 } }
-- disable MRU cwd
--startify.section.mru_cwd.val = { { type = "padding", val = 0 } }
-- disable nvim_web_devicons
startify.nvim_web_devicons.enabled = false
-- startify.nvim_web_devicons.highlight = false
-- startify.nvim_web_devicons.highlight = 'Keyword'
--
startify.section.bottom_buttons.val = {
    startify.button( "q", "  Quit NVIM" , ":qa<CR>"),
}
startify.section.footer = {
    { type = "text", val = "footer" },
}
-- ignore filetypes in MRU
-- startify.mru_opts.ignore = function(path, ext)
--     return
--             (string.find(path, "COMMIT_EDITMSG"))
--         or  (vim.tbl_contains(default_mru_ignore, ext))
-- end
alpha.setup(startify.config)
