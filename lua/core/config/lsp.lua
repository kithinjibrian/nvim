require('mason').setup()
require('mason-lspconfig').setup({
	ensure_installed = {"lua_ls",'quick_lint_js'}
})

local lsp = require('lspconfig')

local capabilities = require('cmp_nvim_lsp').default_capabilities()

lsp.lua_ls.setup{
	capabilities = capabilities
}
lsp.quick_lint_js.setup{
	capabilities = capabilities
}
