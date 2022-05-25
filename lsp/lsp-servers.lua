-- Enable (broadcasting) snippet capability for completion
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require('cmp_nvim_lsp').update_capabilities(capabilities)
-- capabilities.textDocument.completion.completionItem.snippetSupport = true

require("lspconfig").tsserver.setup({ capabilities = capabilities })
require("lspconfig").pyright.setup({ capabilities = capabilities })
require("lspconfig").dockerls.setup({ capabilities = capabilities })
require("lspconfig").html.setup({ capabilities = capabilities })
require("lspconfig").cssls.setup({ capabilities = capabilities })
require("lspconfig").tailwindcss.setup({ capabilities = capabilities })
require("lspconfig").eslint.setup({ capabilities = capabilities })
require("lspconfig").solargraph.setup({ capabilities = capabilities })
require("lspconfig").graphql.setup({ capabilities = capabilities })
-- require("lspconfig").sumneko_lua.setup({
-- 	settings = {
-- 		Lua = {
-- 			diagnostics = {
-- 				globals = { "vim" },
-- 			},
-- 		},
-- 	},
-- })

require("lsp_signature").setup()

local cfg = {
	floating_window = false, -- show hint in a floating window, set to false for virtual text only mode
	hint_enable = true, -- virtual hint enable
	hint_prefix = "🌱 ", -- parameter icon
}

require("lsp_signature").on_attach(cfg)
