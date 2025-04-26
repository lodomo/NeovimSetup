return {
  "nvim-lualine/lualine.nvim",
  config = function()
    require("lualine").setup({
      options = {
        theme = require("lualine.orion"),
        sections = {
          lualine_a = {
            file = 1,
          },
        },
      },
    })
  end
}


