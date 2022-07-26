-- Enable (broadcasting) snippet capability for completion
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require("cmp_nvim_lsp").update_capabilities(capabilities)
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
require("lspconfig").sumneko_lua.setup({
	settings = {
		Lua = {
			runtime = {
				version = "LuaJIT",
			},
			diagnostics = {
				globals = { "vim" },
			},
			workspace = {
				library = vim.api.nvim_get_runtime_file("", true),
			},
			telemetry = {
				enable = false,
			},
		},
	},
})

require("lsp_signature").setup()

local cfg = {
	floating_window = false,
	hint_enable = true,
	hint_prefix = "🌱 ",
}

require("lsp_signature").on_attach(cfg)
