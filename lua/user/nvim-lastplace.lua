local lastplace_status_ok, lastplace = check_state("nvim-lastplace")
if not lastplace_status_ok then
  return
end
lastplace.setup {
    lastplace_ignore_buftype = {"quickfix", "nofile", "help"},
    lastplace_ignore_filetype = {"gitcommit", "gitrebase", "svn", "hgcommit"},
    lastplace_open_folds = true
}
