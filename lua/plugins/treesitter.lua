return {
    -- 语法高亮
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    dependencies = {
        -- 'nvim-treesitter/playground',
    },
    config = function()
        local install = require 'nvim-treesitter.install'
        install.prefer_git = false -- 默认使用 curl 而不是 git
        install.compilers = { "cl" } -- 使用微软的工具链进行编译

        local configs = require("nvim-treesitter.configs")

        configs.setup(
            {
                ensure_installed = "all",
                sync_install = false,
                highlight = { enable = true },
                indent = { enable = true },
                -- playground = { enable = true },
            }
        )
    end
}
