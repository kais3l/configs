--install the lua-language server for... well, the lua language server(duh) through homebrew or the suggested package managers

return {
  {
    "neovim/nvim-lspconfig",
    --dependencies
    dependencies = {
      {
	"folke/lazydev.nvim",
	ft = "lua", -- only load on lua files
	opts = {
	  library = {
	    -- See the configuration section for more details
	    -- Load luvit types when the `vim.uv` word is found
	    { path = "${3rd}/luv/library", words = { "vim%.uv" } },
	  },
	},
      },
    },
    config = function()
      --Global diagnostic settings (for enabling the virtual text beside errors)
      vim.diagnostic.config({
	virtual_text = true,
	signs = true,
	underline = true,
	update_in_insert = false,
	severity_sort = true,
      })

      -- Setup lua lsp
      require("lspconfig").lua_ls.setup{}
    end,
  }
}

