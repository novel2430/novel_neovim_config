
local lualine_status_ok, lualine = check_state("lualine")
if not lualine_status_ok then
  return
end
local wpm_status, wpm = check_state("wpm")
if not wpm_status then
  return
end

lualine.setup({
  options = {
    -- section_separators = { left = '', right = '' },
    -- component_separators = { left = '', right = '' },
    icons_enabled = false,
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch', 'diff', 'diagnostics'},
    lualine_c = {'filename'},
    lualine_x = {
        wpm.wpm,
        'encoding',
        'fileformat',
        'filetype',
    },
    lualine_y = {'progress'},
    lualine_z = {'location'},
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {'filename'},
    lualine_x = {'location'},
    lualine_y = {},
    lualine_z = {}
  },
})
