return {
  {
    'navarasu/onedark.nvim',
    priority = 1000,
    lazy = false,
    config = function()
      vim.cmd.colorscheme 'onedark'
    end,
  },

  -- Copilot
  {
    'github/copilot.vim',
    lazy = false,
  },

}
