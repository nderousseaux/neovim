local ViMode = {
    -- On récupère le mode actuel
    init = function(self)
        self.mode = vim.fn.mode(1) -- :h mode()
    end,
    static = {
      mode_colors = {
        n = "#98C379",
        i = "#61AFEF",
        v = "#C678DD",
        V = "#C678DD",
        ["\22"] = "#C678DD",
        c = "#E5C07B",
        s = "#56B6C2",
        S = "#56B6C2",
        ["\19"] = "#56B6C2",
        R =  "#E06C75",
        r =  "#E06C75",
        ["!"] = "#E5C07B",
        t = "#E5C07B",
      }
    },
    -- Fonction qui retourne le caractère à afficher (ici tout le temps un espace)
    provider = function(self)
        return " "
    end,
    -- Fonction qui retourne la couleur à utiliser
    hl = function(self)
        local mode = self.mode:sub(1, 1) -- get only the first mode character
        return { bg = self.mode_colors[mode], bold = true, }
    end,

    -- Update au changement de mode
    update = {
        "ModeChanged",
        pattern = "*:*",
        callback = vim.schedule_wrap(function()
            vim.cmd("redrawstatus")
        end),
    },
}

local align = { provider = "%=" }

return {
  "rebelot/heirline.nvim",
  event = "BufEnter",
  opts = function()
    return {
      statusline = { -- statusline
        hl = { bg = "#282C34", fg = "#ABB2BF" },
        ViMode,
        align,
        ViMode
      },
    }
  end,
}
