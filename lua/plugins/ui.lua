return {
    {
        -- colortheme
        "folke/tokyonight.nvim",
        dependencies = {
            'nvim-lualine/lualine.nvim',
            'nvim-tree/nvim-web-devicons',
            "utilyre/barbecue.nvim",
            "SmiteshP/nvim-navic",
        },
        priority = 1000,
        config = function()
            vim.cmd[[colorscheme tokyonight-storm]]
            require('lualine').setup {
                options = {
                    theme = 'tokyonight'
                }
            }
            require('barbecue').setup {
                theme = 'tokyonight',
            }
        end
    },
    {
        -- tab bar
        'akinsho/bufferline.nvim',
        config = true, -- Or config = {} Or config = function() ... end
    },
    {
        "lukas-reineke/indent-blankline.nvim",
        opts = {
            space_char_blankline = " ",
            show_current_context = true,
            show_current_context_start = true,
        },
    },
    {
        'lewis6991/gitsigns.nvim',
        config = true,
    },
    {
        "RRethy/vim-illuminate",
        config = function()
            require('illuminate').configure()
        end
    },
}
