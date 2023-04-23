if vim.loader then vim.loader.enable() end -- enable vim.loader early if available

-- On charge les sources
for _, source in ipairs {
  "settings",
  "plugins-manager",
  "colorschemes",
} do
  local status_ok, fault = pcall(require, source)
  if not status_ok then vim.api.nvim_err_writeln("Failed to load " .. source .. "\n\n" .. fault) end
end
-- Même couleur que les commentaires
vim.api.nvim_set_hl(0, "CopilotSuggestion", { fg = "#5c6370"})
