-- Setup nvim-cmp.
local status_ok, npairs = check_state("nvim-autopairs")
local cmp_status_ok, cmp = check_state("cmp")
local cmp_autopairs_status, cmp_autopairs = check_state("nvim-autopairs.completion.cmp")
if not status_ok then
  return
end
if not cmp_status_ok then
  return
end
if not cmp_autopairs_status then
  return
end

npairs.setup {
  check_ts = true,
  ts_config = {
    lua = { "string", "source" },
    javascript = { "string", "template_string" },
    java = false,
  },
  disable_filetype = { "TelescopePrompt", "spectre_panel" },
  fast_wrap = {
    map = "<M-e>",
    chars = { "{", "[", "(", '"', "'" },
    pattern = string.gsub([[ [%'%"%)%>%]%)%}%,] ]], "%s+", ""),
    offset = 0, -- Offset from pattern match
    end_key = "$",
    keys = "qwertyuiopzxcvbnmasdfghjkl",
    check_comma = true,
    highlight = "PmenuSel",
    highlight_grey = "LineNr",
  },
}

cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done { map_char = { tex = "" } })
