local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require("lspconfig")

local lsp_flags = {
	allow_incremental_sync = true,
	debounce_text_changes = 150,
}
-- if you just want default config for the servers then put them in a table
local servers = { "html", "cssls", "tsserver", "clangd", "tailwindcss" }

for _, lsp in pairs(servers) do
	lspconfig[lsp].setup({
		on_attach = on_attach,
		capabilities = capabilities,
	})

	lspconfig.emmet_ls.setup({
		on_attach = on_attach,
		capabilities = capabilities,
		flags = lsp_flags,
	})
end

--
-- lspconfig.pyright.setup { blabla}
