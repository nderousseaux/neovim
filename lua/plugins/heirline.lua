local ViMode = {
    -- On récupère le mode actuel
    init = function(self)
        self.mode = vim.fn.mode(1) -- :h mode()
    end,
    static = {
        mode_colors = {
            n = "blue",:
            i = "green",
            v = "cyan",
            V =  "cyan",
            ["\22"] =  "cyan",
            c =  "orange",
            s =  "purple",
            S =  "purple",
            ["\19"] =  "purple",
            R =  "orange",
            r =  "orange",
            ["!"] =  "red",
            t =  "red",
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
return {
  "rebelot/heirline.nvim",
  event = "BufEnter",
  opts = function()
    return {
      statusline = { -- statusline
        ViMode,
      },
    }
  end,
    
}
