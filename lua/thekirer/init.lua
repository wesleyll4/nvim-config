require("thekirer.set")
require("thekirer.debugger")
require("thekirer.remap")
require("thekirer.packer")
require("thekirer.lsp")
require("thekirer.lspconfig")
require("thekirer.cmp")
require("thekirer.comment")
require("thekirer.gitsigns")
require("thekirer.mason")
require("thekirer.project")
require("thekirer.telescope")
require("thekirer.treesitter")
require("thekirer.nvimtree")
require("thekirer.wich-key")

local augroup = vim.api.nvim_create_augroup
TheKirerGroup = augroup('TheKirer', {})

local autocmd = vim.api.nvim_create_autocmd
local yank_group = augroup('HighlightYank', {})

autocmd('TextYankPost', {
  group = yank_group,
  pattern = '*',
  callback = function()
    vim.highlight.on_yank({
      higroup = 'IncSearch',
      timeout = 40,
    })
  end,
})

autocmd({ "BufEnter", "BufWinEnter", "TabEnter" }, {
  group = TheKirerGroup,
  pattern = "*.rs",
  callback = function()
    require("lsp_extensions").inlay_hints {}
  end
})

autocmd({ "BufWritePre" }, {
  group = TheKirerGroup,
  pattern = "*",
  command = "%s/\\s\\+$//e",
})

vim.g.netrw_browse_split = 0
--vim.g.netrw_banner = 0
vim.g.netrw_winsize = 25
