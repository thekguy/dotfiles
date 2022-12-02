-- import nvim-treesitter plugin safely
local status, treesitter = pcall(require, "nvim-treesitter.configs")
if not status then
  return
end

-- configure treesitter
treesitter.setup({
  -- enable syntax highlighting
  highlight = {
    enable = true,
  },
  -- enable indentation
  indent = { enable = true },
  -- enable autotagging (w/ nvim-ts-autotag plugin)
  autotag = { enable = true },
  -- ensure these language parsers are installed
  ensure_installed = {
    "bash",
    "css",
    "dockerfile",
    -- "gitignore",
    "go",
    "graphql",
    "hcl",
    "html",
    "json",
    "javascript",
    "lua",
    "markdown",
    "python",
    "sql",
    "typescript",
    "tsx",
    "vim",
    "yaml",
  },
  -- auto install above language parsers
  auto_install = true,
})
