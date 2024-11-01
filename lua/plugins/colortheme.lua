
return { 
	"catppuccin/nvim",
	name = "catppuccin",
	priority = 1000,
	config = function()
		require("catppuccin").setup({
			flavour = "macchiato"
		})
		vim.cmd.colorscheme "catppuccin"
	end
}


-- return { 
-- 	"rebelot/kanagawa.nvim",
-- 	lazy = false,
-- 	priority = 1000,
-- 	config = function()
--    vim.cmd.colorscheme "kanagawa" 
-- 	end
--
-- }
--
-- return {
--    "navarasu/onedark.nvim",
--    lazy = false,
--   priority = 1000,
--    config = function()
-- 	   require("onedark").setup {
-- 		style = "warmer"
-- 	   }
-- 	   require("onedark").load()
--   end
-- }
