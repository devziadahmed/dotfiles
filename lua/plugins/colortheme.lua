-- return {
-- 	"sainnhe/gruvbox-material",
-- 	lazy = false,
-- 	priority = 1000,
-- 	config = function()
-- 		vim.g.gruvbox_material_background = "medium"
-- 		vim.g.gruvbox_material_foreground = "original"
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
-- 	"marko-cerovac/material.nvim",
-- 	config = function()
-- 		vim.cmd.colorscheme("material")
-- 		--Lua:
-- 		vim.g.material_style = "darker"
-- 	end,
-- }

-- return {
-- 	"slugbyte/lackluster.nvim",
-- 	lazy = false,
-- 	priority = 1000,
-- 	init = function()
-- 		local lackluster = require("lackluster")
--
-- 		-- !must set colorscheme after calling setup()!
-- 		-- vim.cmd.colorscheme("lackluster")
-- 		-- vim.cmd.colorscheme("lackluster")
-- 		vim.cmd.colorscheme("lackluster-hack") -- my favorite
-- 		-- vim.cmd.colorscheme("lackluster-mint")
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
-- 		vim.api.nvim_set_hl(0, "String", { fg = "#00ff00" })
-- 		vim.cmd.colorscheme("zenwritten")
-- 	end,
-- }

return {
	"mcchrish/zenbones.nvim",
	dependencies = "rktjmp/lush.nvim",
	config = function()
		vim.cmd.colorscheme("zenwritten")
		vim.cmd([[
      augroup MyColorSchemeTweaks
        autocmd!
        autocmd ColorScheme zenbones lua MyZenbonesTweaks()
      augroup END
    ]])

		function MyZenbonesTweaks()
			if vim.o.background == "light" then
				vim.api.nvim_set_hl(0, "Constant", { fg = "#556570" })
			else
				-- Core Text
				vim.api.nvim_set_hl(0, "Normal", { fg = "#D4D4D4", bg = "#191919" }) -- Default text and background
				vim.api.nvim_set_hl(0, "Comment", { fg = "#5A5A5A", italic = true }) -- Muted gray for comments
				vim.api.nvim_set_hl(0, "String", { fg = "#587D46" }) -- Soft green for strings
				-- vim.api.nvim_set_hl(0, "Constant", { fg = "#8C8C8C" }) -- Muted tone for constants
				vim.api.nvim_set_hl(0, "Number", { fg = "#9f9fa3" }) -- Neutral gray for numbers
				vim.api.nvim_set_hl(0, "Boolean", { fg = "#FF8866" }) -- Warm tone for booleans
				vim.api.nvim_set_hl(0, "Keyword", { fg = "#8C6C9F", bold = true }) -- Muted blue for keywords
				vim.api.nvim_set_hl(0, "Function", { fg = "#C4A484" }) -- Warm gold for functions
				vim.api.nvim_set_hl(0, "Variable", { fg = "#C8B29A" }) -- Warm beige for variables
				vim.api.nvim_set_hl(0, "Operator", { fg = "#A6A6A6" }) -- Light gray for operators
				vim.api.nvim_set_hl(0, "Type", { fg = "#9A7B4F", bold = true }) -- Soft brown for types and classes
				vim.api.nvim_set_hl(0, "Struct", { fg = "#9A7B4F", bold = true }) -- Same as type for structs
				vim.api.nvim_set_hl(0, "Property", { fg = "#A48C7D" }) -- Subtle contrast for properties
				-- vim.api.nvim_set_hl(0, "Include", { fg = "", italic = true }) -- Soft purple for includes/imports
				vim.api.nvim_set_hl(0, "Delimiter", { fg = "#888888" }) -- Neutral for punctuation and delimiters

				-- -- Advanced Syntax
				vim.api.nvim_set_hl(0, "Identifier", { fg = "#C2B6A3" }) -- Light beige for identifiers
				vim.api.nvim_set_hl(0, "Statement", { fg = "#8C6C9F", bold = true }) -- Muted blue for statements
				vim.api.nvim_set_hl(0, "PreProc", { fg = "#9485A3", italic = true }) -- Soft purple for preprocessing
				vim.api.nvim_set_hl(0, "Label", { fg = "#87AFCB", italic = true }) -- Muted cyan for labels
				vim.api.nvim_set_hl(0, "Special", { fg = "#D8AA78" }) -- Light gold for special tokens
				vim.api.nvim_set_hl(0, "Todo", { fg = "#FFAA33", bg = "#332200", bold = true }) -- Highlighted for TODOs
				vim.api.nvim_set_hl(0, "Macro", { fg = "#AA88AA" }) -- Muted lavender for macros                 -- Light gray for operators
				vim.api.nvim_set_hl(0, "LineNr", { fg = "#3D3D3D" }) -- Dimmer gray for line numbers
				vim.api.nvim_set_hl(0, "CursorLineNr", { fg = "#D4D4D4", bold = true }) -- Highlighted line number
				vim.api.nvim_set_hl(0, "Visual", { bg = "#333333" }) -- Subtle background for visual mode
				vim.api.nvim_set_hl(0, "Pmenu", { bg = "#232323", fg = "#D4D4D4" }) -- Popup menu
				vim.api.nvim_set_hl(0, "PmenuSel", { bg = "#2C2C2C", fg = "#FFFFFF" }) -- Selected item in popup menu
				vim.api.nvim_set_hl(0, "Search", { bg = "#2E4E34", fg = "#FFFFFF" }) -- Subtle green for search matches
				vim.api.nvim_set_hl(0, "Error", { fg = "#FF5555", bg = "#330000", bold = true }) -- Muted red for errors
				vim.api.nvim_set_hl(0, "Warning", { fg = "#FFC555", bg = "#332600" }) -- Subtle yellow for warnings
			end
		end

		-- Trigger the tweaks immediately in case the colorscheme is already set
		MyZenbonesTweaks()
	end,
}

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
-- 			flavour = "mocha",
-- 		})
-- 		vim.cmd.colorscheme("catppuccin")
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
-- 			styles = {   -- Handles the styles of general hi groups (see `:h highlight-args`):
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
-- 	"HoNamDuong/hybrid.nvim",
-- 	lazy = false,
-- 	priority = 1000,
-- 	opts = {},
-- 	config = function()
-- 		vim.cmd.colorscheme("hybrid")
-- 	end,
-- }

-- return {
-- 	"xero/miasma.nvim",
-- 	lazy = false,
-- 	priority = 1000,
-- 	config = function()
-- 		vim.cmd("colorscheme miasma")
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
-- 	"shaunsingh/moonlight.nvim",
-- 	config = function()
-- 		vim.cmd.colorscheme("moonlight")
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
-- 	"fenetikm/falcon",
-- 	config = function()
-- 		vim.cmd.colorscheme("falcon")
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
-- 				-- ["@string"] = { fg = "$bright_orange", bg = "#00ff00", fmt = "bold" },
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
-- 		"mcchrish/zenbones.nvim",
-- 		dependencies = { "rktjmp/lush.nvim" },
-- 		init = function()
-- 			vim.g.neobones_darkness = "stark"
-- 			vim.g.neobones_lighten_cursor_line = 8
-- 			vim.g.neobones_lighten_comments = 40
-- 			vim.g.neobones_italic_comments = false
-- 			vim.api.nvim_create_autocmd({ "ColorScheme" }, {
-- 				pattern = "neobones",
-- 				callback = function()
-- 					local lush = require("lush")
-- 					local base = require("neobones")
-- 					local testNum = 12344567890
-- 					local specs = lush.parse(function()
-- 						return {
-- 							Constant = { base.Constant, gui = "NONE" },
-- 							Number = { base.Number, gui = "italic" },
-- 						}
-- 					end)
-- 					lush.apply(lush.compile(specs))
-- 				end,
-- 			})
-- 			vim.cmd("colorscheme neobones")
-- 		end,
-- 	},
-- 	{
-- 		"LazyVim/LazyVim",
-- 		opts = {
-- 			colorscheme = "neobones",
-- 		},
-- 	},
-- }

-- return {
--
-- 	"tjdevries/colorbuddy.nvim",
-- 	config = function()
-- 		vim.cmd.colorscheme("colorbuddy")
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
-- 	"arzg/vim-colors-xcode",
-- 	config = function()
-- 		vim.cmd("colorscheme xcodedark")
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
-- 		-- vim.api.nvim_set_hl(0, "@punctuation.bracket", { fg = "#ee70a6" })
--
-- 		-- Additional highlight settings
-- 		vim.g.gruvbox_italic_variables = true
-- 		vim.g.gruvbox_flat_style = "dark"
--
-- 		vim.cmd.colorscheme("gruvbox-flat")
-- 		vim.api.nvim_set_hl(0, "@number", { fg = "#5cc3e8", italic = false })
-- 		vim.cmd([[
--   highlight DiagnosticError guifg=#ff6c6b guibg=#3c2c2c
--   highlight DiagnosticWarn guifg=#ECBE7B guibg=#3f3722
--   highlight DiagnosticInfo guifg=#b1d4e5 guibg=#2a3b4c
--   highlight DiagnosticHint guifg=#98be65 guibg=#2c3c2c
-- ]])
-- 	end,
-- }

-- return {
-- 	"rmehri01/onenord.nvim",
-- 	priority = 1000,
-- 	lazy = false,
-- 	config = function()
-- 		vim.cmd.colorscheme("onenord")
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
