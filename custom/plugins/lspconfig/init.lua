local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local ok, lspconfig = pcall(require, "lspconfig")

if not ok then
  vim.notify "Failed to load LSPConfig"
  return
end

local servers = { "html", "cssls", "tsserver", "clangd", "pyright", "gopls", "rust_analyzer" }

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end
