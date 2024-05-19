local lazypath = vim.fn.stdpath('data') .. '/lazy/lazy.nvim'
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    'git',
    'clone',
    '--filter=blob:none',
    'https://github.com/folke/lazy.nvim.git',
    '--branch=stable', -- latest stable release
    lazypath,
})
end
vim.opt.rtp:prepend(lazypath)

require('lazy').setup({
	{
		'windwp/nvim-ts-autotag',
		config = function ()
			require('nvim-ts-autotag').setup()
		end
	},
	{
		'MunifTanjim/prettier.nvim',
		dependencies = { 'jose-elias-alvarez/null-ls.nvim', 'neovim/nvim-lspconfig'},
		config = function ()
			require("prettier").setup()
		end
	},
	{
		'nvim-telescope/telescope.nvim',
		dependencies = { 'nvim-lua/plenary.nvim' },
		config = function()
			require('plugins.config.telescope')
		end,
	},
	{
		'nvim-tree/nvim-tree.lua',
		dependencies = { 'nvim-lua/plenary.nvim' },
		config = function()
			require('plugins.config.nvim-tree')
		end,
	},
	{
		'stevearc/oil.nvim',
		config = function()
			require('plugins.config.Oil')
		end,
		opts = {},
		-- Optional dependencies
		dependencies = { "nvim-tree/nvim-web-devicons" },
	},
	{
		'catppuccin/vim',
		config = function() 
			vim.cmd.colorscheme("catppuccin_mocha")
		end
	},
	{
		'lukas-reineke/indent-blankline.nvim',
		config = function()
			require('plugins.config.indent-blankline')
		end,
		version = "2.0.0"
	},
	{
		'tanvirtin/vgit.nvim',
		config = function ()
			require("vgit").setup()
		end,
		requires = {
			'nvim-lua/plenary.nvim'
		}
	},
	{
		'nvim-treesitter/nvim-treesitter',
		config = function()
			require('plugins.config.treesitter')
		end
	},
	{
		'hrsh7th/nvim-cmp',
		dependencies = {
			'hrsh7th/cmp-buffer',
			'hrsh7th/cmp-path',
			'hrsh7th/cmp-cmdline',
			'hrsh7th/cmp-nvim-lsp',
			'saadparwaiz1/cmp_luasnip',
			'L3MON4D3/LuaSnip',
			'Saecki/crates.nvim',
			'rafamadriz/friendly-snippets',
		},
		config = function()
			require('plugins.config.cmp')
		end,
	},
	--	{
		--		'quick-lint/quick-lint-js',
		--		config = function ()
			--			require('lspconfig/quick_lint_js').setup()
			--		end
			--	},
			{
				'neovim/nvim-lspconfig',
				dependencies = {
					'williamboman/mason.nvim',
					'williamboman/mason-lspconfig.nvim',
				},
				config = function()
					require('plugins.config.lsp')
				end
			},
			{
				'rust-lang/rust.vim',
				config = function()
					vim.g.rustfmt_autosave = true
				end
			},
			{
				'andweeb/presence.nvim',
				config = function()
					require('plugins.config.discord')
				end
			},
			{
				"folke/trouble.nvim",
				dependencies = { "nvim-tree/nvim-web-devicons" },
				opts = {
					mode = "document_diagnostics", -- "workspace_diagnostics", "document_diagnostics", "quickfix", "lsp_references", "loclist"
				}
			},
			--	{
				--		'glepnir/galaxyline.nvim',
				--		branch = 'main',
				-- your statusline
				--		config = function()
					--	    	require('my_statusline')
					--		end,
					-- some optional icons
					--		require = { 'nvim-tree/nvim-web-devicons', opt = true },
					--	},
					--{
						--	'nvimdev/dashboard-nvim',
						--	event = 'VimEnter',
						--	config = function()
							--    	require('dashboard').setup {
								--   	-- config
								--			theme = 'hyper',
								--			shortcut_type = 'number'
								--  }
								--	--end,
								--	dependencies = { 'nvim-tree/nvim-web-devicons'}
								--	},
								{
									'gsuuon/note.nvim',
									opts = {
										-- Spaces are note roots. These directories should contain a `./notes` directory (will be made if not).
										-- Defaults to { '~' }.
										spaces = {
											'~',
											-- '~/projects/foo'
										},

										-- Set keymap = false to disable keymapping
										-- keymap = { 
											--   prefix = '<leader>n'
											-- }
										},
										cmd = 'Note',
										ft = 'note'
									},
									{
										'rcarriga/nvim-notify'
									},
									{
										'nvim-lualine/lualine.nvim',
										dependencies = { 'nvim-tree/nvim-web-devicons' },
										config = function()
											require('plugins.config.lualine')
										end,
									},
									--	{
										--	'vim-airline/vim-airline'
										--	},
										--	{
											--	'vim-airline/vim-airline-themes'
											--	},
											--	{
												{
													'nvim-lualine/lualine.nvim',
												},
												{
													'nvim-tree/nvim-web-devicons'
												},
												{
													'iagoleal/doctor.nvim'
												},
												{
													'mhartington/formatter.nvim'
												},
												{
													'andweeb/presence.nvim'
												},
												{
													"NeogitOrg/neogit",
													dependencies = {
														"nvim-lua/plenary.nvim",         -- required
														"sindrets/diffview.nvim",        -- optional - Diff integration

														-- Only one of these is needed, not both.
														"nvim-telescope/telescope.nvim", -- optional
														"ibhagwan/fzf-lua",              -- optional
													},
													config = true
												},
												{
													'mfussenegger/nvim-jdtls'
												},
												{
													'sbdchd/neoformat'
												},
											})
