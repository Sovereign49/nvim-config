require("lazy").setup({
  { 
    "catppuccin/nvim", 
    name = "catppuccin", 
    priority = 1000,
    lazy = false,
    init = function() 
      require("catppuccin").setup({
        flavour = "mocha",
        transparent_background = true
      })
      vim.cmd.colorscheme "catppuccin"
    end
  },
  'nvim-tree/nvim-web-devicons',
  {
    'nvim-lualine/lualine.nvim',
    dependencies = 'nvim-tree/nvim-web-devicons',
    lazy = false,
    config = function() 
      require("config.lualine")
    end
  },
  { 
    'nvim-treesitter/nvim-treesitter',
    lazy = false,
    config = function()
      require'nvim-treesitter.configs'.setup {
        -- A list of parser names, or "all" (the five listed parsers should always be installed)
        ensure_installed = { "python", "lua", "vim", "vimdoc", "rust", "c", "cpp" }
      }
    end
  },
  "nvim-lua/plenary.nvim",
  {
    'nvim-telescope/telescope.nvim', tag = '0.1.2',
    lazy = false,
    dependencies = 'nvim-lua/plenary.nvim',
    config = function() 
      local builtin = require('telescope.builtin')
      vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
      vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
      vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
      vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
    end
  },
  'neovim/nvim-lspconfig',
  { 
    'hrsh7th/nvim-cmp', 
    config = function()
      require('config.nvim-cmp') 
    end
  },
  { 
    'hrsh7th/cmp-nvim-lsp', 
    dependencies = 'nvim-cmp' 
  },
  { 
    'hrsh7th/cmp-buffer', 
    dependencies = 'nvim-cmp' 
  },
  { 
    'hrsh7th/cmp-path', 
    dependencies = 'nvim-cmp' 
  },
  { 
    'hrsh7th/cmp-path', 
    dependencies = 'nvim-cmp' 
  },
  { 
    'hrsh7th/cmp-cmdline', 
    dependencies = 'nvim-cmp' 
  },
  --{
  --  "L3MON4D3/LuaSnip",
  --  lazy = false,
  --  config = function()
  --    require("config.luasnip")
  --  end
  --},
  --'saadparwaiz1/cmp_luasnip',
  'williamboman/mason.nvim',
  'williamboman/mason-lspconfig.nvim'
})