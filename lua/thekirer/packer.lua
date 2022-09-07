return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'
    use("neovim/nvim-lspconfig")
    use("williamboman/mason-lspconfig.nvim")
    use("williamboman/mason.nvim", {
        config = function()
            require("thekirer.mason").setup()
        end,
    })
    -- Usar ou não usar eis a questão
    -- use("rcarriga/nvim-notify", {
    --   config = function()
    --     require("lvim.core.notify").setup()
    --   end,
    --   requires = { "nvim-telescope/telescope.nvim" },
    --   disable = not lvim.builtin.notify.active or not lvim.builtin.telescope.active,
    -- })
    use("nvim-lua/popup.nvim")
    use("nvim-telescope/telescope.nvim", {
        branch = "0.1.x",
        config = function()
            require("thekirer.telescope").setup()
        end,
        --disable = not vim.g.builtin.telescope.active,
    })

    use("nvim-lua/plenary.nvim")
    use("nvim-telescope/telescope-fzf-native.nvim", {
        requires = { "nvim-telescope/telescope.nvim" },
        run = "make",
        -- disable = not vim.g.builtin.telescope.active,
    })
    use("hrsh7th/nvim-cmp", {
        config = function()
            if vim.g.builtin.cmp then
                require("thekirer.cmp").setup()
            end
        end,
        requires = {
            "L3MON4D3/LuaSnip",
        },
    })
    use("rafamadriz/friendly-snippets", {
        -- disable = not vim.g.builtin.luasnip.sources.friendly_snippets,
    })
    use("hrsh7th/cmp-nvim-lsp")
    use("L3MON4D3/LuaSnip")
    use("saadparwaiz1/cmp_luasnip")
    use("hrsh7th/cmp-buffer")
    use("hrsh7th/cmp-path")
    use("nvim-treesitter/nvim-treesitter", {
        -- run = ":TSUpdate",
        config = function()
            require("thekirer.treesitter").setup()
        end,
    })
    use(
        "JoosepAlviste/nvim-ts-context-commentstring", {
            event = "BufReadPost",
        })
    use(
        "kyazdani42/nvim-tree.lua", {
            -- event = "BufWinOpen",
            -- cmd = "NvimTreeToggle",
            config = function()
                require("thekirer.nvimtree").setup()
            end,
            -- disable = not vim.g.builtin.nvimtree.active,
        })
    use("lewis6991/gitsigns.nvim", {
        config = function()
            require("thekirer.gitsigns").setup()
        end,
        event = "BufRead",
        -- disable = not vim.g.builtin.gitsigns.active,
    })
    use("max397574/which-key.nvim", {
        config = function()
            require("thekirer.which-key").setup()
        end,
        event = "BufWinEnter",
        -- disable = not vim.g.builtin.which_key.active,
    })
    use("numToStr/Comment.nvim", {
        event = "BufRead",
        config = function()
            require("thekirer.comment").setup()
        end,
        -- disable = not vim.g.builtin.comment.active,
    })
    use("ahmedkhalf/project.nvim", {
        config = function()
            require("thekirer.project").setup()
        end,
        -- disable = not vim.g.builtin.project.active,
    })
    --use("kyazdani42/nvim-web-devicons", {

    -- disable = not vim.g.use_icons,
    --})
    use(-- "hoob3rt/lualine.nvim",
        -- "Lunarvim/lualine.nvim",
        "nvim-lualine/lualine.nvim", {
            config = function()
                require("lvim.core.lualine").setup()
            end,
-- disable = not vim.g.builtin.lualine.active,
        })
use("akinsho/bufferline.nvim", {
        config = function()
            require("lvim.core.bufferline").setup()
        end,
        branch = "main",
        event = "BufWinEnter",
        -- disable = not vim.g.builtin.bufferline.active,
    })
    use("mfussenegger/nvim-dap", {
        -- event = "BufWinEnter",
        config = function()
            require("lvim.core.dap").setup()
        end,
        -- disable = not vim.g.builtin.dap.active,
    })
    use("Pocco81/dap-buddy.nvim", {
        branch = "dev",
        -- event = "BufWinEnter",
        -- event = "BufRead",
        -- disable = not vim.g.builtin.dap.active,
    })
    use("goolord/alpha-nvim", {
        config = function()
            require("lvim.core.alpha").setup()
        end,
        -- disable = not vim.g.builtin.alpha.active,
    })
    use("akinsho/toggleterm.nvim", {
        event = "BufWinEnter",
        branch = "main",
        config = function()
            require("lvim.core.terminal").setup()
        end,
        -- disable = not vim.opt.builtin.terminal.active,
    })
    use("b0o/schemastore.nvim")
    use("williamboman/nvim-lsp-installer")
    use("gruvbox-community/gruvbox")
    use { "rcarriga/nvim-dap-ui", requires = {"mfussenegger/nvim-dap"} }

    --  use("sbdchd/neoformat")
    -- Simple plugins can be specified as strings
    --use("TimUntersberger/neogit")

    -- TJ created lodash of neovim

    -- All the things
    --use("tzachar/cmp-tabnine", { run = "./install.ps1" })
    -- use("onsails/lspkind-nvim")
    -- use("nvim-lua/lsp_extensions.nvim")
    -- use("glepnir/lspsaga.nvim")
    -- use("simrat39/symbols-outline.nvim")

    -- Primeagen doesn"t create lodash
    -- use("ThePrimeagen/git-worktree.nvim")
    -- use("ThePrimeagEn/harpoon")

    -- use("mbbill/undotree")

    --ColorScheme
    -- use 'folke/tokyonight.nvim'

    --Others
    --   use("nvim-treesitter/nvim-treesitter", {
    --     run = ":TSUpdate"
    --   })

    --   use("nvim-treesitter/playground")
    --   use("romgrk/nvim-treesitter-context")

    --   use("mfussenegger/nvim-dap")
    --   use("theHamsta/nvim-dap-virtual-text")

end)
