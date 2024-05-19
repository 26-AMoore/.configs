require('lualine').setup {
	options = {
		icons_enabled = true,
		theme = 'moonfly', --  powerline_dark
		component_separators = { left = '', right = ''},
		section_separators = { left = '', right = ''},
		disabled_filetypes = {
			statusline = {},
			winbar = {},
		},
		ignore_focus = {},
		always_divide_middle = true,
		globalstatus = false,
		refresh = {
			statusline = 1000,
			tabline = 1000,
			winbar = 1000,
		}
	},
	sections = {
		lualine_a = {'mode'},
		lualine_b = {'branch', 'diagnostics'},
		lualine_c = {'filename', 'filesize'},
		lualine_x = {'encoding', 'fileformat'},
		lualine_y = {'filetype',},
		lualine_z = {'progress'}
	},
	inactive_sections = {
		lualine_a = {'mode'},
		lualine_b = {'branch', 'diagnostics'},
		lualine_c = {'filename', 'filesize'},
		lualine_x = {'encoding', 'fileformat'},
		lualine_y = {'filetype',},
	},
	tabline = {},
	winbar = {},
	inactive_winbar = {},
	extensions = {}
}

