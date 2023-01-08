
local lualine_status_ok, lualine = check_state("lualine")
if not lualine_status_ok then
  return
end

lualine.setup({
  options = {
    -- section_separators = { left = '', right = '' },
    -- component_separators = { left = '', right = '' },
    icons_enabled = false,
  }
})
