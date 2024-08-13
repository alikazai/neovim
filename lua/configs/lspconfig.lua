-- load defaults i.e lua_lsp
require("nvchad.configs.lspconfig").defaults()

local lspconfig = require "lspconfig"
local servers = { "html", "cssls", "tsserver", "gopls"}
local nvlsp = require "nvchad.configs.lspconfig"

-- lsps with default config
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = nvlsp.on_attach,
    on_init = nvlsp.on_init,
    capabilities = nvlsp.capabilities,
  }
end

-- typescript
lspconfig.tsserver.setup {
  on_attach = nvlsp.on_attach,
  on_init = nvlsp.on_init,
  capabilities = nvlsp.capabilities,
}

-- go
lspconfig.gopls.setup {
  on_attach = nvlsp.on_attach,
  on_init = nvlsp.on_init,
  capabilities = nvlsp.capabilities,
  -- cmd = {"gopls"},
  -- filetypes = {"go", "gomod", "gowork", "gotmpl"},
  -- root_dir = lspconfig.util.root_pattern("go.work", "go.mod", ".git"),
  -- settings ={
  --   gopls = {
  --     completeUnimported = true,
  --     usePlaceholders = false,
  --     analyses = {
  --       unusedparams = true,
  --     }
  --   },
  -- },
}
