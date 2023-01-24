local ts_state, configs = check_state("nvim-treesitter.configs")
if not ts_state then
  return
end
configs.setup {
  ensure_installed = {
  "c",
  "lua",
  "cpp",
  "json",
  "yaml",
  "python",
  "java",
  },
  sync_install = true,
  ignore_install = { "" }, -- List of parsers to ignore installing
  highlight = {
    enable = true, -- false will disable the whole extension
    disable = { "" }, -- list of language that will be disabled
    additional_vim_regex_highlighting = true,
  },
  indent = { enable = true, disable = { "yaml" } },
}
