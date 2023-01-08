local builtin = require('telescope.builtin')
if not builtin then
  return
end
local action = require('telescope.actions')
if not action then
  return
end

vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fn', "<cmd>lua require('telescope.builtin').live_grep({search_dirs={vim.fn.expand(\"%:p\")}})<CR>", {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fo', builtin.oldfiles, {})
vim.keymap.set('n', '<leader>fc', builtin.command_history, {})
vim.keymap.set('n', '<leader>fs', builtin.search_history, {})
vim.keymap.set('n', '<leader>fk', builtin.keymaps, {})

require('telescope').setup{
  defaults = {
    -- Default configuration for telescope goes here:
    -- config_key = value,
    prompt_prefix = "> ",
    selection_caret = "> ",
    path_display = { "smart" },
    mappings = {
      i = {
        ["<C-h>"] = "which_key",
        ["<C-j>"] = action.move_selection_next,
        ["<C-k>"] = action.move_selection_previous,
        ["<Down>"] = action.move_selection_next,
        ["<Up>"] = action.move_selection_previous,
        ["<Tab>"] = action.move_selection_previous,
        ["<CR>"] = action.select_default,
        ["<C-q>"] = action.close,
        ["<ESC>"] = action.close,
      },
      n = {
        ["<C-h>"] = "which_key",
        ["j"] = action.move_selection_next,
        ["k"] = action.move_selection_previous,
        ["<Down>"] = action.move_selection_next,
        ["<Up>"] = action.move_selection_previous,
        ["<Tab>"] = action.move_selection_previous,
        ["<CR>"] = action.select_default,
        ["<C-q>"] = action.close,
        ["<ESC>"] = action.close,
      }

    }
  },
  pickers = {
    -- Default configuration for builtin pickers goes here:
    -- picker_name = {
    --   picker_config_key = value,
    --   ...
    -- }
    -- Now the picker_config_key will be applied every time you call this
    -- builtin picker
    find_files = {
      disable_devicons = true,
    },
    live_grep = {
      disable_devicons = true,
    },
    buffers = {
      disable_devicons = true,
    },
    oldfiles = {
      disable_devicons = true,
    },
  },
  extensions = {
    -- Your extension configuration goes here:
    -- extension_name = {
    --   extension_config_key = value,
    -- }
    -- please take a look at the readme of the extension you want to configure
  }
}
