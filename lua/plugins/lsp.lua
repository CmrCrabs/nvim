return {
  {
  "neovim/nvim-lspconfig",
  config = function()
    local capabilities = require("cmp_nvim_lsp").default_capabilities()
    local lspconfig = require("lspconfig")

    lspconfig.lua_ls.setup({
      capabilities = capabilities
    })

    lspconfig.ts_ls.setup({
      capabilities = capabilities
    })
    lspconfig.rust_analyzer.setup({
      capabilities = capabilities
    })

    for _, method in ipairs({ 'textDocument/diagnostic', 'workspace/diagnostic' }) do
        local default_diagnostic_handler = vim.lsp.handlers[method]
        vim.lsp.handlers[method] = function(err, result, context, config)
            if err ~= nil and err.code == -32802 then
                return
            end
            return default_diagnostic_handler(err, result, context, config)
        end
    end

    lspconfig.omnisharp.setup({
      cmd = { "/home/zyn/.local/share/nvim/mason/bin/omnisharp" },
      capabilities = capabilities,
    })

    --lspconfig.tinymist.setup({
    --    capabilities = capabilities,
    --})

    vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
    vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, {})

  end,
  },
  {
    "LnL7/vim-nix",
  }
}
