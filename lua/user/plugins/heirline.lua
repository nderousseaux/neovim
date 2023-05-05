return {
  "rebelot/heirline.nvim",
  opts = function(_, opts)
    local status = require("astronvim.utils.status")

    opts.statusline = {
      hl = { fg = "fg", bg = "bg" },
      status.component.mode(),
      status.component.git_branch(),
      status.component.git_diff(),
      status.component.fill(),
      status.component.cmd_info(),
      status.component.fill(),
      -- status.component.lsp(),
      -- status.component.treesitter(),
      status.component.diagnostics(),
      status.component.file_info { filetype = false, filename = {}, file_modified = {} },
      status.component.nav {
        -- add some padding for the percentage provider
        percentage = { padding = { left = 0 } },
        -- disable all other providers
        ruler = false,
        scrollbar = false,
        -- use no separator and define the background color
        surround = { separator = "none" },
        padding = { left = 0, right = 0 },
      },
      status.component.mode { surround = { separator = "right" } },
    }
    return opts
  end,
}
