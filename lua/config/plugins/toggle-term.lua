return {
  "akinsho/nvim-toggleterm.lua",
  keys = { '<leader>x' },
  config = function()
    require("toggleterm").setup({
      size = 20,
      hide_numbers = true,
      open_mapping = [[<leader>x]],
      shade_filetypes = {},
      shade_terminals = false,
      shading_factor = 0.1,
      start_in_insert = true,
      persist_size = true,
      direction = "horizontal",
      close_on_exit = true,
      float_opts = {
        border = { "┏", "━", "┓", "┃", "┛","━", "┗", "┃" },
      }
    })
    -- Hide left column
    vim.cmd [[au TermOpen * setlocal foldcolumn=0]]
  end,
}

