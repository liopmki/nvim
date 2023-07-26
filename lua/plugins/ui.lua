return {
    -- ui 相关的配置
    {
        -- colortheme
        "folke/tokyonight.nvim",
        event = "VeryLazy",
        dependencies = {
            'nvim-lualine/lualine.nvim',
            { 'nvim-tree/nvim-web-devicons', lazy = true, },
            "utilyre/barbecue.nvim",
            { "SmiteshP/nvim-navic",         lazy = true },
        },
        priority = 1000,
        config = function()
            vim.cmd [[colorscheme tokyonight-storm]]
            require('lualine').setup {
                options = {
                    theme = 'tokyonight'
                }
            }
            -- 让barbecue有更好的性能
            require('barbecue').setup {
                theme = 'tokyonight',
                create_autocmd = false,
            }

            vim.api.nvim_create_autocmd({
                    "WinResized", -- or WinResized on NVIM-v0.9 and higher
                    "BufWinEnter",
                    "CursorHold",
                    "InsertLeave",
                },
                {
                    group = vim.api.nvim_create_augroup("barbecue.updater", {}),
                    callback = function()
                        require("barbecue.ui").update()
                    end,
                })
        end
    },
    {
        -- tab bar
        'akinsho/bufferline.nvim',
        event = "VeryLazy",
        config = true, -- Or config = {} Or config = function() ... end
    },
    {
        -- 显示缩进的竖线
        "lukas-reineke/indent-blankline.nvim",
        event = "VeryLazy",
        opts = {
            space_char_blankline = " ",
            show_current_context = true,
            show_current_context_start = true,
        },
    },
    {
        -- 显示 git 信息
        'lewis6991/gitsigns.nvim',
        event = { "BufReadPre", "BufNewFile" },
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
