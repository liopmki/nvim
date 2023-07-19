return {
    -- ui 相关的配置
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
        -- 显示缩进的竖线
        "lukas-reineke/indent-blankline.nvim",
        opts = {
            space_char_blankline = " ",
            show_current_context = true,
            show_current_context_start = true,
        },
    },
    {
        -- 显示 git 信息
        'lewis6991/gitsigns.nvim',
        config = true,
    },
    -- {
    --     -- 自动高亮与光标下相同的单词
    --     "RRethy/vim-illuminate",
    --     config = function()
    --         require('illuminate').configure()
    --     end
    -- },
}
