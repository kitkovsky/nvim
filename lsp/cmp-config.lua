local lspkind = require("lspkind")
lspkind.init()

local cmp = require("cmp")

cmp.setup({
	mapping = {
		["<C-d>"] = cmp.mapping.scroll_docs(-4),
		["<C-f>"] = cmp.mapping.scroll_docs(4),
		["<C-e>"] = cmp.mapping.close(),
		["<c-y>"] = cmp.mapping.confirm({
			behavior = cmp.ConfirmBehavior.Insert,
			select = true,
		}),
		["<C-i>"] = cmp.get_active_entry(),
		["<c-Space>"] = cmp.mapping.complete(),
	},

	sources = {
		{ name = "nvim_lsp" },
		{ name = "path" },
		-- { name = "luasnip" },
		{ name = "buffer" },
	},

	-- snippet = {
	-- 	expand = function(args)
	-- 		require("luasnip").lsp_expand(args.body)
	-- 	end,
	-- },

	formatting = {
		format = lspkind.cmp_format({
			with_text = true,
			menu = {
				buffer = "[buf]",
				nvim_lsp = "[LSP]",
				path = "[path]",
				-- luasnip = "[snip]",
			},
		}),
	},

	experimental = { native_menu = false, ghost_text = true },
})
