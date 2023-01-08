local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
  return
end

require "user.LSP.mason"
require("user.LSP.handlers").setup()
require "user.LSP.null-ls"
