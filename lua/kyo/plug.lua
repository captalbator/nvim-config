local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable",
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
	"nvim-lua/plenary.nvim",

	-- Utility
	"nvim-telescope/telescope.nvim",
	"nvim-telescope/telescope-file-browser.nvim",
	"akinsho/toggleterm.nvim",
	"fedepujol/move.nvim",
	"folke/todo-comments.nvim",
	"mg979/vim-visual-multi",
	"folke/which-key.nvim",
	"folke/zen-mode.nvim",
	"folke/trouble.nvim",

	-- Git
	"tpope/vim-fugitive",
	"lewis6991/gitsigns.nvim",
	"rhysd/git-messenger.vim",

	-- UI
	"kyazdani42/nvim-web-devicons",
	"nvim-lualine/lualine.nvim",
	{
		"akinsho/bufferline.nvim",
		config = function()
			require("bufferline").setup({
				options = {
					mode = "tabs",
					always_show_bufferline = false,
					show_buffer_close_icons = false,
					show_close_icon = false,
					color_icons = true,
				},
			})
		end,
	},
	"norcalli/nvim-colorizer.lua",
	"j-hui/fidget.nvim",
	"goolord/alpha-nvim",
	"nvim-tree/nvim-tree.lua", -- TODO: Remove this, don't really use it that much

	-- Colorschemes
	"tjdevries/colorbuddy.nvim",
	"morhetz/gruvbox",
	"tanvirtin/monokai.nvim",
	{
		"svrana/neosolarized.nvim",
		dependencies = { "tjdevries/colorbuddy.nvim" },
	},
	"rebelot/kanagawa.nvim",
	"Mofiqul/vscode.nvim",
	"sainnhe/sonokai",
	"sainnhe/gruvbox-material",
	"savq/melange-nvim",
	"bluz71/vim-moonfly-colors",
	{
		"catppuccin/nvim",
		name = "catppuccin",
		config = function()
			require("catppuccin").setup({
				flavour = "mocha",
				term_colors = true,
				transparent_background = false,
				show_end_of_buffer = true,
				no_italic = false,
				no_bold = false,
				styles = {
					comments = {},
					conditionals = {},
					loops = {},
					functions = {},
					keywords = {},
					strings = {},
					variables = {},
					numbers = {},
					booleans = {},
					properties = {},
					types = {},
				},
				color_overrides = {
					mocha = {
						base = "#000000",
						mantle = "#000000",
						--crust = "#000000",
					},
				},
				highlight_overrides = {
					mocha = function(C)
						return {
							TabLineSel = { bg = C.pink },
							CmpBorder = { fg = C.surface2 },
							Pmenu = { bg = C.none },
							TelescopeBorder = { link = "FloatBorder" },
						}
					end,
				},
				integrations = {
					fidget = true,
				},
			})

			vim.cmd.colorscheme("catppuccin")
		end,
	},
	{ "Everblush/nvim", name = "everblush" },
	"tiagovla/tokyodark.nvim",
	"kdheepak/monochrome.nvim",

	-- LSP
	"neovim/nvim-lspconfig",
	"onsails/lspkind-nvim",
	"hrsh7th/cmp-buffer",
	"hrsh7th/cmp-nvim-lsp",
	"hrsh7th/nvim-cmp",
	{ "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" },
	"nvim-treesitter/nvim-treesitter-context",
	"windwp/nvim-autopairs", -- I don't know about that.
	"glepnir/lspsaga.nvim",
	"jose-elias-alvarez/null-ls.nvim",
	"ray-x/lsp_signature.nvim",

	-- Language support
	"Tetralux/odin.vim",
})
