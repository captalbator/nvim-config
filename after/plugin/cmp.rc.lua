local s, cmp = pcall(require, "cmp")
if not s then
	return
end

local lspkind = require("lspkind")

cmp.setup({
	mapping = cmp.mapping.preset.insert({
		["<C-d>"] = cmp.mapping.scroll_docs(-4),
		["<C-f>"] = cmp.mapping.scroll_docs(4),
		["<C-Space>"] = cmp.mapping.complete(),
		["<C-e>"] = cmp.mapping.close(),
		["<CR>"] = cmp.mapping.confirm({
			behavior = cmp.ConfirmBehavior.Replace,
			select = true,
		}),
	}),
	sources = cmp.config.sources({
		{ name = "nvim_lsp" },
		{ name = "buffer" },
		{ name = "nvim_lsp_signature_help" },
	}),
	formatting = {
		format = lspkind.cmp_format({ wirth_text = false, maxwidth = 50 }),
	},
})

vim.cmd([[
  set completeopt=menu,menuone,noinsert,noselect
  highlight! default link CmpItemKind CmpItemMenuDefault
]])
