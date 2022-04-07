-- Enable (broadcasting) snippet capability for completion
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

require("lspconfig").tsserver.setup({})
require("lspconfig").clangd.setup({})
require("lspconfig").cmake.setup({})
require("lspconfig").pyright.setup({})
require("lspconfig").dockerls.setup({})
require("lspconfig").html.setup({ capabilities = capabilities })
require("lspconfig").cssls.setup({ capabilities = capabilities })
require("lspconfig").jsonls.setup({
	commands = {
		Format = {
			function()
				vim.lsp.buf.range_formatting({}, { 0, 0 }, { vim.fn.line("$"), 0 })
			end,
		},
	},
})
require("lspconfig").sumneko_lua.setup({
	settings = {
		Lua = {
			diagnostics = {
				globals = { "vim" },
			},
		},
	},
})

require("lsp_signature").setup()

local cfg = {
	floating_window = false, -- show hint in a floating window, set to false for virtual text only mode
	hint_enable = true, -- virtual hint enable
	hint_prefix = "🌱 ", -- parameter icon
}

require("lsp_signature").on_attach(cfg)

-- local nvim_lsp = require("lspconfig")
-- local servers = {
-- "tsserver", "clangd", "cmake", "pyright", "html", "cssls", "jsonls"
-- }
-- local servers = { "tsserver", "clangd", "cmake", "pyright", "jsonls" }
-- for _, lsp in ipairs(servers) do
-- 	nvim_lsp[lsp].setup({ on_attach = on_attach })
-- end
