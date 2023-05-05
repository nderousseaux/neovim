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

  -- Vimtex
  {
    'lervag/vimtex',
    ft = { 'tex' },
    config = function()
      --On change le leader
      vim.g.vimtex_view_method = 'zathura'
      vim.g.vimtex_quickfix_mode = 0
      vim.g.vimtex_compiler_latexmk = {
        options = {
          '-pdf',
          '-interaction=nonstopmode',
          '-synctex=1',
          '-file-line-error',
          '-shell-escape',
        },
      }
    end,
  },

  -- UFO
  {
    "kevinhwang91/promise-async",
  },
  {
    'kevinhwang91/nvim-ufo',
    lazy = false,
  },
  -- Ui components
  {
    "MunifTanjim/nui.nvim",
    lazy = false,
  },

  -- Petits pictogrammes LSP
  {
    'onsails/lspkind-nvim',
    lazy = false,
  },

  -- Code action menu
  {
    "weilbith/nvim-code-action-menu",
    lazy = false,
  },

  -- Completions
  {
    "hrsh7th/nvim-cmp",
    priority = 1000,
    lazy = false,
  },
  {
    "hrsh7th/cmp-buffer",
    lazy = false,
  },
  {
    -- Completion for path
    "hrsh7th/cmp-path",
    lazy = false,
  },
  {
    "hrsh7th/cmp-calc",
    lazy = false,
  },
  {
    "hrsh7th/cmp-cmdline",
    lazy = false,
  },
  {
    "ray-x/cmp-treesitter",
    lazy = false,
  },
  {
    "lukas-reineke/cmp-rg",
    lazy = false,
  },
  {
    "quangnguyen30192/cmp-nvim-tags",
    lazy = false,
  },



  -- Snippet
  {
    "hrsh7th/vim-vsnip",
    lazy = false,
  },
  {
    "rafamadriz/friendly-snippets",
    lazy = false,
  },
  {
    "hrsh7th/cmp-vsnip",
    lazy = false,
  },


  -- Treesitter
  {
    "nvim-treesitter/nvim-treesitter",
    lazy = false,
    config = function()
      require 'nvim-treesitter.configs'.setup {
        markid = {
          enable = true,
          colors = false
        },
        ensure_installed = "all",
        highlight = {
          enable = true,
          -- disable = { "embedded_template" }
        },
        indent = {
          enable = true
        },
        context_commentstring = {
          enable = true,
          enable_autocmd = false,
        },
        matchup = {
          enable = true
        }
      }
    end,
  },
  -- Better syntax highlighting
  {
    "David-Kunz/markid",
    lazy = false,
  },

  -- Colonne de status
  {
    "luukvbaal/statuscol.nvim",
    lazy = false,
    config = function()
      require("statuscol").setup({
        separator = " ",
        setopt = true,
        order = "SNsFs"
      })
    end
  },
  -- Treesitter to auto-close and auto-rename html tag
  {
    "windwp/nvim-ts-autotag",
    lazy = false,
    config = function()
      require("nvim-ts-autotag").setup()
    end,
  },
  {
    "lukas-reineke/indent-blankline.nvim",
    lazy = false,
    config = function()
      require("indent_blankline").setup {
        buftype_exclude = { 'terminal', 'nofile' },
        filetype_exclude = { 'Trouble', 'trouble', 'noice', 'help', 'startify', 'alpha', 'dashboard', 'lazy', 'packer',
          'neogitstatus', 'NvimTree', 'mason.nvim' },
        char = '▏',
        show_current_context = true,
        show_current_context_start = true, -- underline first line
        use_treesitter = true,
        show_trailing_blankline_indent = false,
      }
    end
  },
  {
    "nvim-treesitter/nvim-treesitter-context",
    lazy = false,
  },
  {
    "JoosepAlviste/nvim-ts-context-commentstring",
    lazy = false,
  },
  {
    -- GPS component on status line
    "SmiteshP/nvim-gps",
    config = function()
      require("nvim-gps").setup({
        icons = {
          ["class-name"] = ' ',   -- Classes and class-like objects
          ["function-name"] = ' ', -- Functions
          ["method-name"] = ' ',  -- Methods (functions inside class-like objects)
          ["container-name"] = '⛶ ', -- Containers (example: lua tables)
          ["tag-name"] = '炙'       -- Tags (example: html tags)
        }
      })
    end
  },

  -- Clipboard manager
  {
    "AckslD/nvim-neoclip.lua",
    config = function()
      require("neoclip").setup()
    end
  },

  {
    "nacro90/numb.nvim",
    event = { "BufReadPre", "BufNewFile" },
    config = function()
      require("numb").setup {
        show_numbers = true, -- Enable 'number' for the window while peeking
        -- Enable 'cursorline' for the window while peeking
        show_cursorline = true
      }
    end,
  },

  -- Scroll
  {
    "karb94/neoscroll.nvim",
    event = { "BufReadPre", "BufNewFile" },
    config = function()
      require("neoscroll").setup()
    end,
  },

  -- Correct some word
  {
    "tpope/vim-abolish",
    Event = { "BufReadPre", "BufNewFile" },
  },

  -- Meilleure gestion des buffers
  {
    "tpope/vim-sleuth",
    event = { "BufReadPre", "BufNewFile" },
  },

  -- Vim repeat
  {
    "tpope/vim-repeat",
    event = { "BufReadPre", "BufNewFile" },
  },
  {
    "tpope/vim-endwise",
    event = { "BufReadPre", "BufNewFile" },
  },
  {
    "tpope/vim-dispatch",
    event = { "BufReadPre", "BufNewFile" },
  },
  {
    "tpope/vim-dadbod",
    lazy = false,
  },
  {
    "tpope/vim-jdaddy",
    event = { "BufReadPre", "BufNewFile" },
  },
  {
    "tpope/vim-fugitive",
    lazy = false
  },
  {
    "ludovicchabant/vim-gutentags",
    lazy = false,
    config = function()
      vim.cmd('set tags+=tags,.git/tags')
      vim.g.gutentags_enabled = 1
      vim.g.gutentags_generate_on_missing = 1
      vim.g.gutentags_generate_on_write = 1
      vim.g.gutentags_resolve_symlinks = 1
      vim.g.gutentags_ctags_tagfile = '.git/tags'
      vim.g.gutentags_project_root = { '.git' }
      vim.g.gutentags_ctags_extra_args = { '--fields=+l' }
      vim.g.gutentags_add_default_project_roots = 0
      vim.g.gutentags_ctags_executable_ruby = 'ripper-tags'
      vim.g.gutentags_ctags_extra_args_ruby = { '--ignore-unsupported-options', '--recursive' }
      -- vim.g.gutentags_trace = 1
    end,
  },
  {
    "mfussenegger/nvim-dap",
    event = 'VeryLazy',
  },
  {
    "rcarriga/nvim-dap-ui",
    event = 'VeryLazy',
    config = function()
      require("dapui").setup()
    end,
  },
  {
    "theHamsta/nvim-dap-virtual-text",
    event = 'VeryLazy',
    depends = "mfussenegger/nvim-dap",
    config = function()
      require("nvim-dap-virtual-text").setup()
    end,
  },
  {
    "folke/todo-comments.nvim",
    event = 'VeryLazy',
    config = function()
      require("todo-comments").setup {}
    end,
  },
  {
    "folke/which-key.nvim",
    event = 'VeryLazy',
    config = function()
      require("which-key").setup({
        window = {
          border = { "┏", "━", "┓", "┃", "┛", "━", "┗", "┃" },
        },
      })
    end,
  },
  {
    "gorbit99/codewindow.nvim",
    event = 'VeryLazy',
    config = function()
      local codewindow = require("codewindow")
      codewindow.setup()
      codewindow.apply_default_keybinds()
    end,
  },
  {
    "jeffkreeftmeijer/vim-numbertoggle",
    lazy = false,
  },
  {
    "nvim-zh/colorful-winsep.nvim",
    lazy = false,
    config = function()
      require("colorful-winsep").setup({
        highlight = {
          -- Onedark theme
          bg = "#282c34",
          fg = "#5c6370",
        },
        interval = 30,
        no_exec_files = {
          "packer",
          "TelescopePrompt", "mason", "CompetiTest", "NvimTree" },
        symbols = { "━", "┃", "┏", "┓", "┗", "┛" },
        close_event = function()
        end,
        create_event = function()
        end,
      })
    end
  },
  {
    "folke/zen-mode.nvim",
    cmd = "ZenMode",
    opts = {
      plugins = {
        gitsigns = false,
        tmux = false,
        twilight = true,
      },
    },
  },
  {
    "lambdalisue/suda.vim",
    event = 'VeryLazy',
  },
  {
    "andymass/vim-matchup",
    lazy = false,
  },
  {
    "chrisbra/csv.vim",
    event = 'VeryLazy',
  },
  {
    "kazhala/close-buffers.nvim",
    event = 'VeryLazy',
  },
  {
    "folke/twilight.nvim",
    event = 'VeryLazy',
  },
  {
    "nvim-tree/nvim-web-devicons",
    event = 'VeryLazy',
  },
  {
    "rhysd/committia.vim",
    event = 'VeryLazy',
  },
  {
    "chaoren/vim-wordmotion",
    event = 'VeryLazy',
  },
  { 
    "folke/trouble.nvim",
    event = 'VeryLazy',
  },
  {
    "mrbjarksen/neo-tree-diagnostics.nvim",
    event = 'VeryLazy',
  },
  {
    "nvim-lua/plenary.nvim",
    event = 'VeryLazy',
  },
  {
    "windwp/nvim-spectre",
    event = 'VeryLazy',
  },
  -- Luasnip
  {
    'L3MON4D3/LuaSnip',
    event = 'InsertEnter',
    wants = 'friendly-snippets',
    config = function()
      require('luasnip/loaders/from_vscode').lazy_load()
    end,
  },
  -- Status bar
  {
    'nvim-lualine/lualine.nvim',
    event = { 'VimEnter' },
    config = function()
      local gps = require('nvim-gps')
      require('lualine').setup {
        sections = {
          lualine_c = {
            'buffers',
            { gps.get_location, condition = gps.is_available },
          },
          lualine_x = {
            'filetype'
          },
        },
        options = {
          theme = 'onedark',
        },
      }
    end,
    dependencies = {
      'nvim-tree/nvim-web-devicons',
    },
  },

  {
    'vimpostor/vim-tpipeline',
    lazy = false,
  }
}
