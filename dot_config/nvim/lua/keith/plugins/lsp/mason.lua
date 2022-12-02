local mason_status, mason = pcall(require, "mason")
if not mason_status then
  return
end

local mason_lspconfig_status, mason_lspconfig = pcall(require, "mason-lspconfig")
if not mason_lspconfig_status then
  return
end

local mason_null_ls_status, mason_null_ls = pcall(require, "mason-null-ls")
if not mason_null_ls_status then
  return
end

mason.setup()

mason_lspconfig.setup({
  ensure_installed = {
    "bashls",
    "dockerls",
    "golangci_lint_ls",
    "graphql",
    "html",
    "jsonls",
    "quick_lint_js",
    "sumneko_lua",
    "marksman", -- markdown
    "jedi_language_server", -- python
    "sqlls",
    "tflint",
    "tsserver", -- typescript
    "yamlls"
  },
  automatic_installation = true,
})

mason_null_ls.setup({
  ensure_installed = {
    "prettier",
    "stylua",
    "eslint_d",
    "hadolint", -- docker
    "gitlint",
    "gofumpt",
    "markdownlint",
    "autopep8", -- python
    "shellcheck",
    "sql_formatter",
    "yamllint"
  },
  automatic_installation = true,
})
