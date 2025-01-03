return
{
    "nvim-treesitter/nvim-treesitter",
    build = function()
        require("nvim-treesitter.install").update({ with_sync = true })()
    end,
    config = function()
        local configs = require("nvim-treesitter.configs")

        configs.setup({
            ensure_installed = {
              "c",
              "c_sharp",
              "lua",
              "vim",
              "vimdoc",
              "javascript",
              "html",
              "bash",
              "nix",
              "toml",
              "rust",
              "bash",
              "diff",
              "html",
              "javascript",
              "jsdoc",
              "json",
              "jsonc",
              "typst",
              "lua",
              "luadoc",
              "luap",
              "markdown",
              "markdown_inline",
              "python",
              "query",
              "regex",
              "toml",
              "tsx",
              "typescript",
              "vim",
              "vimdoc",
              "xml",
              "yaml",
            },
            sync_install = false,
            auto_install = true,
            highlight = { enable = true },
            indent = { enable = true },
        })
    end
}
