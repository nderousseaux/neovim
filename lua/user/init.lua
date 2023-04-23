-- Après un commentaire, on ne continue pas en commentaire
vim.cmd [[ autocmd FileType * set formatoptions-=cro]]

-- On modifie le style de la cursorline
vim.cmd [[
  hi clear CursorLine
  augroup CLClear
      autocmd! ColorScheme * hi clear CursorLine
  augroup END
]]

return {
  colorscheme = "onedark",
}
