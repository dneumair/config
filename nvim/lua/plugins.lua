local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()



local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'
    use { 'akinsho/flutter-tools.nvim', requires = 'nvim-lua/plenary.nvim' }
    use 'folke/tokyonight.nvim'
    use 'williamboman/mason.nvim'
    use 'williamboman/mason-lspconfig.nvim'
    use 'neovim/nvim-lspconfig'
    use 'nvim-treesitter/nvim-treesitter'
    use 'terrortylor/nvim-comment'
    use 'hrsh7th/nvim-cmp'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-cmdline'
    use { 'L3MON4D3/LuaSnip', after = 'nvim-cmp' }
    use 'saadparwaiz1/cmp_luasnip'
    use 'arnamak/stay-centered.nvim'
    use 'lukas-reineke/indent-blankline.nvim'
    use 'simrat39/rust-tools.nvim'
    use { 'nvim-lualine/lualine.nvim',
        requires = { 'kyazdani42/nvim-web-devicons', opt = true }

    }
    use { 'akinsho/bufferline.nvim', tag = "v3.*", requires = 'nvim-tree/nvim-web-devicons' }
    use { 'nvim-telescope/telescope.nvim', branch = '0.1.x',
        requires = { { 'nvim-lua/plenary.nvim' }, { 'nvim-lua/popup.nvim' } }
    }
    -- Debuggin
    use 'nvim-lua/plenary.nvim'
    use 'mfussenegger/nvim-dap'
    use 'lvimuser/lsp-inlayhints.nvim'
    use 'simrat39/inlay-hints.nvim'
    use 'sidebar-nvim/sidebar.nvim'
    use { 'kevinhwang91/nvim-ufo', requires = 'kevinhwang91/promise-async' }
    use { 'akinsho/toggleterm.nvim', tag = '*' }
    use 'voldikss/vim-floaterm'
    use "numToStr/FTerm.nvim"

    if packer_bootstrap then
        require('packer').sync()
    end
end)
