-- Global
-- Leader
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '


-- Fold
vim.opt.fillchars = {
  fold = " ",
  foldopen = "▾",
  foldclose = "▸",
  foldsep = " ",
  diff = "╱",
  eob = " ",
}
vim.opt.listchars = {
  tab = ">>>",
  precedes = "←",
  extends = "→",
  nbsp = "␣",
}
vim.o.foldnestmax = 4
vim.o.foldlevel = 1
vim.o.foldexpr = "nvim_treesitter#foldexpr()"
vim.o.foldmethod = "expr"
vim.o.foldlevelstart = 99
vim.o.foldenable = true
vim.o.mouse = '' -- Mouse
vim.opt.backupcopy = 'yes' -- Changement des fichier de swap
vim.opt.undolevels = 1000 -- Nombre d'undo possible
vim.opt.shortmess:append { c = true, S = true }
vim.opt.hidden = true
vim.opt.splitright = true
vim.opt.splitbelow = true
vim.opt.wrapscan = true
vim.opt.backup = false
vim.opt.writebackup = false
vim.opt.showcmd = true
vim.opt.showmatch = true
vim.opt.ignorecase = true
vim.opt.hlsearch = true
vim.opt.smartcase = true
vim.opt.errorbells = false
vim.opt.joinspaces = false
vim.opt.title = true
vim.opt.encoding = 'UTF-8'
vim.opt.completeopt = { 'menu', 'menuone', 'noselect' }
vim.opt.clipboard = 'unnamedplus'
vim.opt.laststatus = 3
vim.opt.timeoutlen = 500
if vim.fn.has("nvim-0.9.0") == 1 then
  vim.opt.splitkeep = 'screen'
end
-- Après une ligne commentée, on ne garde pas le commentaire
vim.cmd [[autocmd FileType * set formatoptions-=cro]]


-- Buffer
vim.opt.fileformat = 'unix'
vim.opt.tabstop = 2
vim.opt.spelllang = 'it'
vim.opt.softtabstop = 2
vim.opt.swapfile = false
vim.opt.undofile = false
vim.opt.smartindent = true
vim.opt.expandtab = true
vim.opt.shiftwidth = 2

-- Si les flèches sont utilisées en mode insert, on sort du mode insert
vim.api.nvim_set_keymap('i', '<Left>', '<Esc>h',
  {noremap = true, silent = true}
)
vim.api.nvim_set_keymap('i', '<Right>', '<Esc>l',
  {noremap = true, silent = true}
)
vim.api.nvim_set_keymap('i', '<Up>', '<Esc>k',
  {noremap = true, silent = true}
)
vim.api.nvim_set_keymap('i', '<Down>', '<Esc>j',
  {noremap = true, silent = true}
)

-- Window
vim.opt.number = true
vim.opt.colorcolumn = "80"
vim.opt.list = true
vim.opt.signcolumn = 'yes:1'
vim.opt.relativenumber = false
vim.api.nvim_create_autocmd("BufReadPost", {
  callback = function()
    local last_pos = vim.fn.line("'\"")
    if last_pos > 0 and last_pos <= vim.fn.line("$") then
      vim.api.nvim_win_set_cursor(0, {last_pos, 0})
    end
  end,
})

vim.api.nvim_create_autocmd("TextYankPost", {
  callback =  function()
    vim.highlight.on_yank()
  end,
})

