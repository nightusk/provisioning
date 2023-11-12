-- vim: set foldmethod=marker:
return {
  { "cohama/lexima.vim" },
  { "easymotion/vim-easymotion" },
  { "editorconfig/editorconfig-vim" },
  -- hrsh7th {{{
  { "hrsh7th/cmp-buffer" },
  { "hrsh7th/cmp-cmdline" },
  { "hrsh7th/cmp-nvim-lsp" },
  { "hrsh7th/cmp-path" },
  { "hrsh7th/cmp-vsnip" },
  { "hrsh7th/nvim-cmp" },
  { "hrsh7th/vim-vsnip", -- {{{
    config = function()
      local cmp = require'cmp'
      cmp.setup({
        snippet = {
          expand = function(args)
            vim.fn["vsnip#anonymous"](args.body)
          end
        },
        window = {
        },
        mapping = cmp.mapping.preset.insert({
        }),
        sources = cmp.config.sources({
          { name = 'nvim_lsp' },
          { name = 'vsnip' },
        }, {
          { name = 'buffer' },
        })
      })
      cmp.setup.cmdline(':', {
        mapping = cmp.mapping.preset.cmdline(),
        sources = cmp.config.sources({
          { name = 'path' },
        }, {
          { name = 'cmdline' },
        })
      })
    end
  }, -- }}}
  -- }}}
  { "lewis6991/gitsigns.nvim", -- {{{
    config = function()
      require('gitsigns').setup()
    end
  }, -- }}}
  { "mattn/emmet-vim" },
  { "neovim/nvim-lspconfig", -- {{{
    config = function()
      local capabilities = require('cmp_nvim_lsp').default_capabilities()
      local lspconfig = require('lspconfig')
      lspconfig.denols.setup{}
    end
  }, -- }}}

  { "nvim-lualine/lualine.nvim", -- {{{
    config = function()
      require("lualine").setup()
    end,
  }, -- }}}
  { "nvim-telescope/telescope.nvim", -- {{{
    tag = '0.1.2',
    dependencies = { 'nvim-lua/plenary.nvim' },
    keys = {
      { "<leader>b", ":Telescope buffers<CR>" },
      { "<leader>g", ":Telescope live_grep<CR>" },
      { "<leader>o", ":Telescope find_files<CR>" },
    },
  }, -- }}}
  { "tpope/vim-unimpaired" },
}
