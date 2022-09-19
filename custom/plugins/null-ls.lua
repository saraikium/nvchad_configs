local status_ok, null_ls = pcall(require, "null-ls")

if not status_ok then
  vim.notify "Failed to load null-ls"
  return
end

local b = null_ls.builtins

local sources = {

  -- JavaScript and TypScript stuff
  -- b.formatting.deno_fmt,
  b.formatting.prettierd,
  b.diagnostics.eslint_d,
  b.code_actions.eslint_d,

  -- Python Stuff
  b.formatting.black,
  b.diagnostics.flake8,

  -- Lua
  b.formatting.stylua,

  -- Shell
  b.formatting.shfmt,
  b.diagnostics.shellcheck.with { diagnostics_format = "#{m} [#{c}]" },

  -- cpp
  b.formatting.clang_format,
  -- Rust
  b.formatting.rustfmt,
}

null_ls.setup {
  debug = true,
  sources = sources,
}
