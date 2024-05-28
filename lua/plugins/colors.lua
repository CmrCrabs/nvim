return {
  {
    "NvChad/nvim-colorizer.lua",
    config = function ()
      require 'colorizer'.setup()
    end,
  },
    {
        "catppuccin/nvim",
        name = "catppuccin",
        priority = 1000,
        config = function()
            vim.cmd.colorscheme "catppuccin-mocha"
            vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
            vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
            vim.api.nvim_set_hl(0, "NvimTreeNormal", { bg = "none" })
            vim.api.nvim_set_hl(0, "TelescopeNormal", { bg = "none" })
            vim.api.nvim_set_hl(0, "SignColumn", { bg = "none" })
        end,

    },
}
