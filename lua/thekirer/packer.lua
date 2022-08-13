return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use("sbdchd/neoformat")

  -- Simple plugins can be specified as strings
  use("TimUntersberger/neogit")

  -- TJ created lodash of neovim
  use("nvim-lua/plenary.nvim")
  use("nvim-lua/popup.nvim")
  use("nvim-telescope/telescope.nvim")

  -- All the things
  use("neovim/nvim-lspconfig")
  use("williamboman/nvim-lsp-installer")
  use("hrsh7th/cmp-nvim-lsp")
  use("hrsh7th/cmp-buffer")
  use("hrsh7th/nvim-cmp")
  --use("tzachar/cmp-tabnine", { run = "./install.ps1" })
  use("onsails/lspkind-nvim")
  use("nvim-lua/lsp_extensions.nvim")
  use("glepnir/lspsaga.nvim")
  use("simrat39/symbols-outline.nvim")
  use("L3MON4D3/LuaSnip")
  use("saadparwaiz1/cmp_luasnip")

  -- Primeagen doesn"t create lodash
  use("ThePrimeagen/git-worktree.nvim")
  use("ThePrimeagen/harpoon")

    use("mbbill/undotree")

  --ColorScheme
  use 'folke/tokyonight.nvim'
  use("gruvbox-community/gruvbox")

  --Others
  use("nvim-treesitter/nvim-treesitter", {
    run = ":TSUpdate"
  })

  use("nvim-treesitter/playground")
  use("romgrk/nvim-treesitter-context")

  use("mfussenegger/nvim-dap")
  use("rcarriga/nvim-dap-ui")
  use("theHamsta/nvim-dap-virtual-text")

  end)
