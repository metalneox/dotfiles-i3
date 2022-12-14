require("mason").setup()
require("luasnip.loaders.from_vscode").lazy_load()
require("mason-lspconfig").setup({
  --ensure_installed = { "sumneko_lua", "solargraph" }
  ensure_installed = { "sumneko_lua", "tsserver","pyright","rust_analyzer",
                       "clangd","arduino_language_server","cssls","tailwindcss",
                       "graphql"
                     }
})

local on_attach = function(_, _)
  vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, {})
  vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, {})

  vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
  vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, {})
  vim.keymap.set('n', 'gr', require('telescope.builtin').lsp_references, {})
  vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
end

require("lspconfig").sumneko_lua.setup {
  on_attach = on_attach
}

require("lspconfig").pyright.setup{
  on_attach = on_attach
}

-- npm install -g typescript typescript-language-server
require("lspconfig").tsserver.setup{
  on_attach = on_attach
}

require("lspconfig").rust_analyzer.setup{
  on_attach = on_attach
}

require("lspconfig").clangd.setup {
  on_attach = on_attach
}

require("lspconfig").arduino_language_server.setup {
  on_attach = on_attach
}

require("lspconfig").cssls.setup {
  on_attach = on_attach
}

require("lspconfig").tailwindcss.setup {
  on_attach = on_attach
}

require("lspconfig").graphql.setup {
  on_attach = on_attach
}
-- nvim-cmp setup
local cmp = require 'cmp'
cmp.setup {
    snippet = {
        expand = function(args)
            luasnip.lsp_expand(args.body)
        end,
    },
    mapping = cmp.mapping.preset.insert({
        ['<c-Space>'] = cmp.mapping.complete(),
        ['<CR>'] = cmp.mapping.confirm {
            behavior = cmp.ConfirmBehavior.Replace,
            select = true,
        },
    }),
    sources = {
        { name = 'nvim_lsp' },
        { name = 'luasnip' },
    },
}