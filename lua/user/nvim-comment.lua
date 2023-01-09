-- Check nvim-comment install
local comment_status_ok, comment = check_state("nvim_comment")
if not comment_status_ok then
  return
end

comment.setup(
  {
    -- Linters prefer comment and line to have a space in between markers
    marker_padding = true,
    -- should comment out empty or whitespace only lines
    comment_empty = true,
    -- trim empty comment whitespace
    comment_empty_trim_whitespace = true,
    -- Should key mappings be created
    create_mappings = false,
    -- Normal mode mapping left hand side
    line_mapping = "gcc",
    -- Visual/Operator mapping left hand side
    operator_mapping = "gc",
    -- text object mapping, comment chunk,,
    comment_chunk_text_object = "ic",
    -- Hook function to call before commenting takes place
    hook = nil
  }
)

-- KeyMap
local opts = { noremap = true, silent = true }
vim.api.nvim_set_keymap("n", "<C-\\>", ":CommentToggle<CR>", opts)
vim.api.nvim_set_keymap("x", "<C-\\>", ":'<,'>CommentToggle<CR>", opts)
