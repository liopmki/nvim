return {
    {
        -- 搜索插件
        'nvim-telescope/telescope.nvim',
        cmd = "Telescope",
        tag = '0.1.2',
        dependencies = {
            { 'nvim-lua/plenary.nvim', lazy = true, },
            {
                'nvim-telescope/telescope-fzf-native.nvim', -- 本地的fzf来加快 telescope 的速度
                build =
                'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build'
            },
        },
        keys = {
            { "<leader>ff",      mode = { "n" }, function() require('telescope.builtin').find_files() end,
                                                                                                               desc =
                "[F]ind [F]iles" },
            { "<leader>fg",      mode = { "n" }, function() require('telescope.builtin').live_grep() end,
                                                                                                               desc =
                "[F]ind live [G]rep under the folder" },
            { "<leader><space>", mode = { "n" }, function() require('telescope.builtin').buffers() end,
                                                                                                               desc =
                "[SPC] Find buffers" },
            { '<leader>fh',      mode = { "n" }, function() require('telescope.builtin').help_tags() end,
                                                                                                               desc =
                '[F]ind [H]elp' },
            { '<leader>?',       mode = { "n" }, function() require('telescope.builtin').oldfiles() end,
                                                                                                               desc =
                '[?] Find recently opened files' },
            {
                "<leader>/",
                mode = { "n" },
                function()
                    -- You can pass additional configuration to telescope to change theme, layout, etc.
                    require('telescope.builtin').current_buffer_fuzzy_find(require('telescope.themes').get_dropdown {
                        winblend = 10,
                        previewer = false,
                    })
                end,
                desc = "[/] Fuzzily search in current buffer"
            },

            -- { "s", mode = { "n", "x", "o" }, function() require("flash").jump() end, desc = "Flash" },
        },
        config = function()
            -- local builtin = require('telescope.builtin')
            -- vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = '[F]ind [F]iles' })
            -- vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = '[F]ind live [G]rep under the folder' })
            -- vim.keymap.set('n', '<leader><space>', builtin.buffers, { desc = '[space] Find buffers' })
            -- vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = '[F]ind [H]elp' })
            -- vim.keymap.set('n', '<leader>?', builtin.oldfiles, { desc = '[?] Find recently opened files' })
            -- vim.keymap.set('n', '<leader>/', function()
            --     -- You can pass additional configuration to telescope to change theme, layout, etc.
            --     require('telescope.builtin').current_buffer_fuzzy_find(require('telescope.themes').get_dropdown {
            --         winblend = 10,
            --         previewer = false,
            --     })
            -- end, { desc = '[/] Fuzzily search in current buffer' })

            require('telescope').setup {
                defaults = {
                    mappings = {
                        i = {
                            ['<C-u>'] = false,
                            ['<C-d>'] = false,
                        },
                    },
                },
                extensions = {
                    fzf = {
                        fuzzy = true,                   -- false will only do exact matching
                        override_generic_sorter = true, -- override the generic sorter
                        override_file_sorter = true,    -- override the file sorter
                        case_mode = "smart_case",       -- or "ignore_case" or "respect_case"
                        -- the default case_mode is "smart_case"
                    }
                }
            }
            require('telescope').load_extension('fzf')
        end

    },
}
