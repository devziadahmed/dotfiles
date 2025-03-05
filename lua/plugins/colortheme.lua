-- return {
-- 	"sainnhe/gruvbox-material",
-- 	lazy = false,
-- 	priority = 1000,
-- 	config = function()
-- 		vim.g.gruvbox_material_background = "soft"
-- 		vim.g.gruvbox_material_foreground = "mix"
-- 		vim.cmd.colorscheme("gruvbox-material")
-- 		vim.cmd([[
--   highlight DiagnosticError guifg=#ff6c6b guibg=#3c2c2c
--   highlight DiagnosticWarn guifg=#ECBE7B guibg=#3f3722
--   highlight DiagnosticInfo guifg=#b1d4e5 guibg=#2a3b4c
--   highlight DiagnosticHint guifg=#98be65 guibg=#2c3c2c
-- ]])
-- 	end,
-- }

-- return {
-- 	"morhetz/gruvbox",
-- 	config = function()
-- 		vim.cmd.colorscheme("gruvbox")
-- 		vim.g.gruvbox_contrast_dark = "dark"
-- 	end,
-- }

-- return {
-- 	"zenbones-theme/zenbones.nvim",
-- 	-- Optionally install Lush. Allows for more configuration or extending the colorscheme
-- 	-- If you don't want to install lush, make sure to set g:zenbones_compat = 1
-- 	-- In Vim, compat mode is turned on as Lush only works in Neovim.
-- 	dependencies = "rktjmp/lush.nvim",
-- 	lazy = false,
-- 	priority = 1000,
-- 	-- you can set set configuration options here
-- 	init = function()
-- 		vim.g.zenbones_darken_comments = 45
-- 		vim.api.nvim_set_hl(0, "String", { fg = "#7E9E84" })
-- 		vim.cmd.colorscheme("zenwritten")
-- 	end,
-- }

-- return {
-- 	"blazkowolf/gruber-darker.nvim",
-- 	bold = true,
-- 	config = function()
-- 		vim.cmd.colorscheme("gruber-darker")
-- 	end,
-- }

-- return {
-- 	"mcchrish/zenbones.nvim",
-- 	dependencies = "rktjmp/lush.nvim",
-- 	config = function()
-- 		vim.cmd.colorscheme("zenwritten")
-- 		vim.cmd([[
-- 			augroup MyColorSchemeTweaks
-- 				autocmd!
-- 				autocmd ColorScheme zenbones lua MyZenbonesTweaks()
-- 			augroup END
-- 		]])
--
-- 		function MyZenbonesTweaks()
-- 			if vim.o.background == "light" then
-- 				vim.api.nvim_set_hl(0, "Constant", { fg = "#556570" }) -- Cool gray-blue
-- 			else
-- 				-- Core Text
-- 				vim.api.nvim_set_hl(0, "Normal", { fg = "#C8D0D4", bg = "#1C1F26" }) -- Neutral gray text on a dark slate background
-- 				vim.api.nvim_set_hl(0, "Comment", { fg = "#5C6773", italic = true }) -- Muted steel gray for comments
-- 				vim.api.nvim_set_hl(0, "String", { fg = "#7E9E84" }) -- Cool green for strings
-- 				vim.api.nvim_set_hl(0, "Constant", { fg = "#9BA7B0" }) -- Muted blue-gray for constants
-- 				vim.api.nvim_set_hl(0, "Number", { fg = "#A3B4C1" }) -- Soft blue for numbers
-- 				vim.api.nvim_set_hl(0, "Boolean", { fg = "#D0847C" }) -- Muted red for booleans
-- 				vim.api.nvim_set_hl(0, "Keyword", { fg = "#7A9FB3", bold = true }) -- Cool blue for keywords
-- 				vim.api.nvim_set_hl(0, "Function", { fg = "#A7C1C6" }) -- Soft teal for functions
-- 				vim.api.nvim_set_hl(0, "Variable", { fg = "#B4C1C4" }) -- Muted neutral gray for variables
-- 				vim.api.nvim_set_hl(0, "Operator", { fg = "#8B98A4" }) -- Subtle blue-gray for operators
-- 				vim.api.nvim_set_hl(0, "Type", { fg = "#9EA8B4", bold = true }) -- Muted blue for types and classes
-- 				vim.api.nvim_set_hl(0, "Struct", { fg = "#9EA8B4", bold = true }) -- Same tone for structs
-- 				vim.api.nvim_set_hl(0, "Property", { fg = "#A3B0B5" }) -- Subtle cool gray for properties
-- 				vim.api.nvim_set_hl(0, "Delimiter", { fg = "#657080" }) -- Neutral steel gray for punctuation and delimiters
--
-- 				-- Advanced Syntax
-- 				vim.api.nvim_set_hl(0, "Identifier", { fg = "#C4CCD1" }) -- Light gray for identifiers
-- 				vim.api.nvim_set_hl(0, "Statement", { fg = "#7A9FB3", bold = true }) -- Cool blue for statements
-- 				vim.api.nvim_set_hl(0, "PreProc", { fg = "#8BA3B0", italic = true }) -- Muted steel blue for preprocessing
-- 				vim.api.nvim_set_hl(0, "Label", { fg = "#87AFCB", italic = true }) -- Soft cyan for labels
-- 				vim.api.nvim_set_hl(0, "Special", { fg = "#A7C6D8" }) -- Light blue for special tokens
-- 				vim.api.nvim_set_hl(0, "Todo", { fg = "#E8AC50", bg = "#2A2E33", bold = true }) -- Subtle amber for TODOs
-- 				vim.api.nvim_set_hl(0, "Macro", { fg = "#88AABB" }) -- Soft teal for macros
-- 				vim.api.nvim_set_hl(0, "LineNr", { fg = "#37414F" }) -- Dim gray-blue for line numbers
-- 				vim.api.nvim_set_hl(0, "CursorLineNr", { fg = "#C8D0D4", bold = true }) -- Highlighted number
-- 				vim.api.nvim_set_hl(0, "Visual", { bg = "#333B44" }) -- Subtle slate gray for visual mode
-- 				vim.api.nvim_set_hl(0, "Pmenu", { bg = "#242A32", fg = "#C8D0D4" }) -- Popup menu
-- 				vim.api.nvim_set_hl(0, "PmenuSel", { bg = "#3C444C", fg = "#FFFFFF" }) -- Highlighted item in popup menu
-- 				vim.api.nvim_set_hl(0, "Search", { bg = "#2E4A5C", fg = "#FFFFFF" }) -- Muted cyan for search matches
-- 				vim.api.nvim_set_hl(0, "Error", { fg = "#FF5555", bg = "#330000", bold = true }) -- Muted red for errors
-- 				vim.api.nvim_set_hl(0, "Warning", { fg = "#E8B56D", bg = "#332600" }) -- Subtle amber for warnings
-- 			end
-- 		end
--
-- 		-- Trigger the tweaks immediately in case the colorscheme is already set
-- 		MyZenbonesTweaks()
-- 	end,
-- }

-- return {
-- 	"alligator/accent.vim",
-- 	config = function()
-- 		vim.g.accent_colour = "green"
-- 		vim.g.accent_darken = 1
-- 		vim.g.accent_invert_status = 1
-- 		vim.cmd.colorscheme("accent")
-- 	end,
-- }

-- return {
-- 	"kvrohit/substrata.nvim",
-- 	config = function()
-- 		vim.cmd([[colorscheme substrata]])
-- 	end,
-- }

-- return {
-- 	"Everblush/nvim",
-- 	name = "everblush",
-- 	config = function()
-- 		vim.cmd.colorscheme("everblush")
-- 	end,
-- }

-- return {
-- 	"xiantang/darcula-dark.nvim",
-- 	dependencies = {
-- 		"nvim-treesitter/nvim-treesitter",
-- 	},
-- 	config = function()
-- 		vim.cmd.colorscheme("darcula-dark")
-- 	end,
-- }

-- return {
-- 	"catppuccin/nvim",
-- 	name = "catppuccin",
-- 	priority = 1000,
-- 	config = function()
-- 		require("catppuccin").setup({
-- 			flavour = "latte",
-- 		})
-- 		vim.cmd.colorscheme("catppuccin")
-- 		vim.api.nvim_set_hl(0, "DiagnosticUnderlineError", { sp = "#ff6c6b", undercurl = true })
-- 		vim.api.nvim_set_hl(0, "DiagnosticUnderlineWarn", { sp = "#ECBE7B", undercurl = true })
-- 		vim.api.nvim_set_hl(0, "DiagnosticUnderlineInfo", { sp = "#b1d4e5", undercurl = true })
-- 		vim.api.nvim_set_hl(0, "DiagnosticUnderlineHint", { sp = "#98be65", undercurl = true })
-- 	end,
-- }

return {
	"catppuccin/nvim",
	name = "catppuccin",
	priority = 1000,
	config = function()
		-- Function to determine the flavor based on time
		local function get_catppuccin_flavour()
			local hour = tonumber(os.date("%H")) -- Get the current hour (24-hour format)
			if hour >= 6 and hour < 18 then
				return "latte" -- Daytime: Light flavor
			else
				return "macchiato" -- Nighttime: Dark flavor
			end
		end

		-- Set up Catppuccin with the dynamically chosen flavor
		require("catppuccin").setup({
			flavour = get_catppuccin_flavour(),
		})

		-- Apply the colorscheme
		vim.cmd.colorscheme("catppuccin")

		-- Customize diagnostic highlights
		vim.api.nvim_set_hl(0, "DiagnosticUnderlineError", { sp = "#ff6c6b", undercurl = true })
		vim.api.nvim_set_hl(0, "DiagnosticUnderlineWarn", { sp = "#ECBE7B", undercurl = true })
		vim.api.nvim_set_hl(0, "DiagnosticUnderlineInfo", { sp = "#b1d4e5", undercurl = true })
		vim.api.nvim_set_hl(0, "DiagnosticUnderlineHint", { sp = "#98be65", undercurl = true })

		-- 				-- Override NeoTree colors for light theme
		vim.defer_fn(function()
			if require("catppuccin").options.flavour == "latte" then
				-- vim.api.nvim_set_hl(0, "NeoTreeDirectoryName", { fg = "#1e66f5", bg = "none" }) -- Directories
				-- vim.api.nvim_set_hl(0, "NeoTreeFileName", { fg = "#4c566a", bg = "none" }) -- Files
				-- vim.api.nvim_set_hl(0, "NeoTreeFileNameOpened", { fg = "#a3be8c", bg = "none", bold = true }) -- Opened files
				-- vim.api.nvim_set_hl(0, "NeoTreeIndentMarker", { fg = "#c0c0c0", bg = "none" }) -- Indent markers
				-- vim.api.nvim_set_hl(0, "NeoTreeRootName", { fg = "#d08770", bg = "none", bold = true }) -- Root folder
				vim.api.nvim_set_hl(0, "NeoTreeCursorLine", { bg = "#e0e0e0", fg = "#d08770" }) -- Hover line color

				-- Set cursor colors for insert mode
				vim.api.nvim_set_hl(0, "CursorInsert", { fg = "NONE", bg = "#657080" }) -- Insert mode cursor color
				vim.api.nvim_set_hl(0, "Cursor", { fg = "NONE", bg = "#FAB387" }) -- Normal mode cursor color

				vim.opt.guicursor = {
					"n-v-c:block-Cursor/lCursor",
					"i:ver100-CursorInsert",
				}
			end
		end, 500)

		-- 		-- Optional: Keymap to toggle flavors manually
		vim.api.nvim_set_keymap(
			"n",
			"<leader>cf",
			":lua require('catppuccin').setup({ flavour = (function() local hour = tonumber(os.date('%H')); return (hour >= 6 and hour < 18) and 'latte' or 'macchiato' end)() }); vim.cmd.colorscheme('catppuccin')<CR>",
			{ noremap = true, silent = true }
		)
	end,
}

-- return {
-- 	"cdmill/neomodern.nvim",
-- 	lazy = false,
-- 	priority = 1000,
-- 	config = function()
-- 		require("neomodern").setup({
-- 			-- optional configuration here
-- 		})
-- 		require("neomodern").load()
-- 	end,
-- }

-- return {
-- 	"catppuccin/nvim",
-- 	name = "catppuccin",
-- 	priority = 1000,
-- 	config = function()
-- 		require("catppuccin").setup({
-- 			flavour = "macchiato",
-- 			no_italic = false,
-- 			no_bold = true,
-- 			styles = { -- Handles the styles of general hi groups (see `:h highlight-args`):
-- 				comments = {}, -- Change the style of comments
-- 				conditionals = {},
-- 				loops = {},
-- 				functions = {},
-- 				keywords = {},
-- 				strings = {},
-- 				variables = { "italic" },
-- 				numbers = {},
-- 				booleans = {},
-- 				properties = {},
-- 				types = {},
-- 				operators = {},
-- 				-- miscs = {}, -- Uncomment to turn off hard-coded styles
-- 			},
-- 		})
-- 		vim.cmd.colorscheme("catppuccin")
-- 	end,
-- }

-- return {
-- 	"sho-87/kanagawa-paper.nvim",
-- 	lazy = false,
-- 	priority = 1000,
-- 	opts = {},
-- 	config = function()
-- 		vim.cmd("colorscheme kanagawa-paper")
-- 	end,
-- }

-- return {
-- 	"rebelot/kanagawa.nvim",
-- 	lazy = false,
-- 	priority = 1000,
-- 	opts = {},
-- 	config = function()
-- 		vim.cmd("colorscheme kanagawa-dragon")
-- 	end,
-- }

-- return {
-- 	"EdenEast/nightfox.nvim",
-- 	config = function()
-- 		vim.cmd.colorscheme("carbonfox")
-- 	end,
-- }

-- return {
-- 	"rose-pine/neovim",
-- 	name = "rose-pine",
-- 	config = function()
-- 		vim.cmd.colorscheme("rose-pine")
-- 	end,
-- }

-- return {
-- 	"folke/tokyonight.nvim",
-- 	lazy = false,
-- 	priority = 1000,
-- 	opts = {},
-- 	config = function()
-- 		vim.cmd.colorscheme("tokyonight-storm")
-- 	end,
-- }

-- return {
-- 	"tiagovla/tokyodark.nvim",
-- 	opts = {
-- 		-- custom options here
-- 	},
-- 	config = function(_, opts)
-- 		require("tokyodark").setup(opts) -- calling setup is optional
-- 		vim.cmd([[colorscheme tokyodark]])
-- 	end,
-- }

-- return {
-- 	"bluz71/vim-moonfly-colors",
-- 	name = "moonfly",
-- 	lazy = false,
-- 	priority = 1000,
-- 	config = function()
-- 		vim.cmd.colorscheme("moonfly")
-- 	end,
-- }

-- return {
-- 	"ribru17/bamboo.nvim",
-- 	lazy = false,
-- 	priority = 1000,
-- 	config = function()
-- 		vim.cmd.colorscheme("bamboo")
-- 	end,
-- }

-- return {
-- 	"AlexvZyl/nordic.nvim",
-- 	lazy = false,
-- 	priority = 1000,
-- 	config = function()
-- 		require("nordic").load()
-- 	end,
-- }

-- return {
-- 	"olimorris/onedarkpro.nvim",
-- 	lazy = false,
-- 	priority = 1000,
-- 	config = function()
-- 		require("onedarkpro").setup({
-- 			-- plugins = {
-- 			-- 	all = false,
-- 			-- },
-- 		})
-- 		vim.cmd([[
--   highlight DiagnosticError guifg=#ff6c6b guibg=#3c2c2c
--   highlight DiagnosticWarn guifg=#ECBE7B guibg=#3f3722
--   highlight DiagnosticInfo guifg=#b1d4e5 guibg=#2a3b4c
--   highlight DiagnosticHint guifg=#98be65 guibg=#2c3c2c
-- ]])
-- 		vim.cmd("colorscheme onedark")
-- 	end,
-- }

-- return {
-- 	"navarasu/onedark.nvim",
-- 	config = function()
-- 		require("onedark").setup({
-- 			style = "darker",
--
-- 			-- code_style = {
-- 			-- 	comments = "italic",
-- 			-- 	keywords = "none",
-- 			-- 	functions = "none",
-- 			-- 	strings = "none",
-- 			-- 	variables = "italic",
-- 			-- },
-- 			diagnostics = {
-- 				darker = false, -- darker colors for diagnostic
-- 				undercurl = true, -- use undercurl instead of underline for diagnostics
-- 				background = true, -- use background color for virtual text
-- 			},
-- 			colors = {
-- 				y = "#C678DD",
-- 				clr = "#ee70a6",
-- 			},
-- 			highlights = {
-- 				-- ["@variable.member"] = "$clr",
-- 				-- ["@string"] = { fg = "$bright_orange", bg = "#5ecc", fmt = "bold" },
-- 				-- ["@function"] = { fg = "#0000ff", sp = "$cyan", fmt = "underline,italic" },
-- 				-- ["@function.builtin"] = { fg = "#0059ff" },
-- 				-- ["@punctuation.bracket"] = { fg = "$clr" },
-- 				["@keyword"] = { fg = "$y" },
-- 			},
-- 		})
-- 		require("onedark").load()
-- 	end,
-- }

-- return {
-- 	{
-- 		"Everblush/nvim",
-- 		name = "everblush",
-- 		config = function()
-- 			vim.cmd("colorscheme everblush")
-- 		end,
-- 	},
-- }

-- return {
-- 	"lewpoly/sherbet.nvim",
-- 	config = function()
-- 		vim.cmd("colorscheme sherbet")
-- 	end,
-- }

-- return {
-- 	"HoNamDuong/hybrid.nvim",
-- 	lazy = false,
-- 	priority = 1000,
-- 	opts = {},
-- 	config = function()
-- 		vim.cmd.colorscheme("hybrid")
-- 	end,
-- }

-- return {
-- 	"eddyekofo94/gruvbox-flat.nvim",
-- 	priority = 1000,
-- 	enabled = true,
-- 	config = function()
-- 		-- Set custom highlights for specific elements
-- 		-- vim.api.nvim_set_hl(0, "@function", { fg = "#0091cd", italic = false })
-- 		-- vim.api.nvim_set_hl(0, "@keyword", { fg = "#ee70a6", italic = false })
-- 		-- vim.api.nvim_set_hl(0, "@string", { fg = "#5ecc62", italic = false })
-- 		-- vim.api.nvim_set_hl(0, "@punctuation.bracket", { fg = "#ff6c6b" })
--
-- 		-- Additional highlight settings
-- 		vim.g.gruvbox_italic_variables = true
-- 		vim.g.gruvbox_flat_style = "dark"
--
-- 		vim.cmd.colorscheme("gruvbox-flat")
--
-- 		-- Custom Highlighting
-- 		vim.api.nvim_set_hl(0, "@number", { fg = "#b0a696", italic = true })
-- 		vim.api.nvim_set_hl(0, "DiagnosticUnderlineError", { sp = "#ff6c6b", undercurl = true })
-- 		vim.api.nvim_set_hl(0, "DiagnosticUnderlineWarn", { sp = "#ECBE7B", undercurl = true })
-- 		vim.api.nvim_set_hl(0, "DiagnosticUnderlineInfo", { sp = "#b1d4e5", undercurl = true })
-- 		vim.api.nvim_set_hl(0, "DiagnosticUnderlineHint", { sp = "#98be65", undercurl = true })
--
-- 		-- Additional Diagnostic Highlights
-- 		vim.cmd([[
-- 			highlight DiagnosticError guifg=#ff6c6b guibg=#3c2c2c
-- 			highlight DiagnosticWarn guifg=#ECBE7B guibg=#3f3722
-- 			highlight DiagnosticInfo guifg=#b1d4e5 guibg=#2a3b4c
-- 			highlight DiagnosticHint guifg=#98be65 guibg=#2c3c2c
-- 		]])
-- 	end,
-- }

-- return {
-- 	"Mofiqul/vscode.nvim",
-- 	lazy = false,
-- 	priority = 1000,
-- 	config = function()
-- 		vim.cmd("colorscheme vscode")
-- 	end,
-- }

-- return {
-- 	"ellisonleao/gruvbox.nvim",
-- 	priority = 1000,
-- 	config = function()
-- 		vim.o.background = "dark" -- or "light" for light mode
-- 		vim.cmd([[colorscheme gruvbox]])
-- 	end,
-- }

-- return {
-- 	"shaunsingh/nord.nvim",
-- 	config = function()
-- 		vim.cmd.colorscheme("nord")
-- 	end,
-- }

-- return {
-- 	"morhetz/gruvbox",
-- 	config = function()
-- 		vim.cmd.colorscheme("gruvbox")
-- 	end,
-- }
