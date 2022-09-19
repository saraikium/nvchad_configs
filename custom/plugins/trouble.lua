local loaded, trouble = pcall(require, "trouble")

if not loaded then
  vim.notify "Failed to load trouble.nvim"
  return
end

trouble.setup{

}
