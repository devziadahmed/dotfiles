return -- Lazy
{
	"jackMort/ChatGPT.nvim",
	event = "VeryLazy",
	config = function()
		require("chatgpt").setup({
			api_key_cmd = "echo $OPENAI_API_KEY",
		})
	end,
	dependencies = {
		"MunifTanjim/nui.nvim",
		"nvim-lua/plenary.nvim",
		"folke/trouble.nvim", -- optional
		"nvim-telescope/telescope.nvim",
	},
}
