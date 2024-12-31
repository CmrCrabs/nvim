return {
  {
    "NvChad/nvim-colorizer.lua",
    config = function ()
      require 'colorizer'.setup()
    end,
  },
  --{
  --    "catppuccin/nvim",
  --    name = "catppuccin",
  --    priority = 1000,
  --    config = function()
  --        vim.cmd.colorscheme "catppuccin-mocha"
  --        vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
  --        vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
  --        vim.api.nvim_set_hl(0, "NvimTreeNormal", { bg = "none" })
  --        vim.api.nvim_set_hl(0, "TelescopeNormal", { bg = "none" })
  --        vim.api.nvim_set_hl(0, "SignColumn", { bg = "none" })
  --    end,

  --},

  --{
  --    "folke/tokyonight.nvim",
  --    name = "tokyonight",
  --    priority = 1000,
  --    config = function()
  --        vim.cmd.colorscheme "tokyonight-night"
  --        vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
  --        vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
  --        vim.api.nvim_set_hl(0, "NvimTreeNormal", { bg = "none" })
  --        vim.api.nvim_set_hl(0, "TelescopeNormal", { bg = "none" })
  --        vim.api.nvim_set_hl(0, "SignColumn", { bg = "none" })
  --    end,

  --},
  {
      "rebelot/kanagawa.nvim",
      priority = 1000,
      version = "*",
      config = function()
          vim.cmd.colorscheme "kanagawa-dragon"
          vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
          vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
          vim.api.nvim_set_hl(0, "NvimTreeNormal", { bg = "none" })
          vim.api.nvim_set_hl(0, "TelescopeNormal", { bg = "none" })
          vim.api.nvim_set_hl(0, "SignColumn", { bg = "none" })
      end,
  }
  --{
  --  "nyoom-engineering/oxocarbon.nvim",
  --    priority = 1000,
  --    version = "*",
  --    config = function()
  --        vim.cmd.colorscheme "oxocarbon"
  --        vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
  --        vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
  --        vim.api.nvim_set_hl(0, "NvimTreeNormal", { bg = "none" })
  --        vim.api.nvim_set_hl(0, "TelescopeNormal", { bg = "none" })
  --        vim.api.nvim_set_hl(0, "SignColumn", { bg = "none" })
  --    end,
  --}
}
