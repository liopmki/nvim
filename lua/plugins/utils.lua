return {
    {
        -- 自动补全括号
        'windwp/nvim-autopairs',
        event = "InsertEnter",
        opts = {
            enable_check_bracket_line = false,
        }
    },
    {
        -- 打开文件的时候自动回到上回浏览的位置
        'ethanholz/nvim-lastplace',
        config = true,
    },
    {
        -- 快速跳转插件
        "folke/flash.nvim",
        event = "VeryLazy",
        opts = {},
        keys = {
            { "s", mode = { "n", "x", "o" }, function() require("flash").jump() end, desc = "Flash" },
            { "S", mode = { "n", "o", "x" }, function() require("flash").treesitter() end, desc = "Flash Treesitter" },
            { "r", mode = "o", function() require("flash").remote() end, desc = "Remote Flash" },
            { "R", mode = { "o", "x" }, function() require("flash").treesitter_search() end, desc = "Treesitter Search" },
            -- { "<c-s>", mode = { "c" }, function() require("flash").toggle() end, desc = "Toggle Flash Search" },
        },
    },
    {
        -- Markdown Preview
        "ellisonleao/glow.nvim",
        config = true,
        cmd = "Glow",
    },
    {
        -- 文件树
        "nvim-neo-tree/neo-tree.nvim",
        branch = "v3.x",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
            "MunifTanjim/nui.nvim",
        },
        cmd = "Neotree",
        keys = {
            { "<leader>e", mode = { 'n', 'v' }, ":Neotree toggle<cr>", desc = 'Toggle [E]xplorer' },
        }
    },
    {
        -- which-key
        "folke/which-key.nvim",
        event = "VeryLazy",
        opts = {}
    },
    {
        -- mini.nvim 工具集合
        'echasnovski/mini.nvim',
        version = '*',
        event = "VeryLazy",
        config = function()
            require('mini.ai').setup() -- text object 增强
            require('mini.completion').setup() -- 自动补全
            require('mini.comment').setup() -- 注释
        end
    },
}
