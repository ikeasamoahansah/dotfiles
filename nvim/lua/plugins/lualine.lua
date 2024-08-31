return {
	  "nvim-lualine/lualine.nvim",
    dependencies = {
        'nerd-tree/nvim-web-devicons'
    },
	  config = function()
		    require("lualine").setup({
			      options = {
				        theme = "gruvbox",
			      },
		    })
	  end,
}
