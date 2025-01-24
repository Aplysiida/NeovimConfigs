return {
  "williamboman/mason-lspconfig.nvim",
  commit = "9ae570e206360e47d30b4c35a4550c165f4ea7b7",
  dependencies = {
    "neovim/nvim-lspconfig",
    "williamboman/mason.nvim",
  },
  opts = {},
  config = function(_,opts)
    --cannot lazy load mason
    require("mason").setup()

    local servers = {"glsl_analyzer", "julials", "clangd"}

    for _, lsp in ipairs(servers) do
    	require("lspconfig")[lsp].setup{}
    end

  end,
}
