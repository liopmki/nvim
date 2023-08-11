return {
    {
        "nvim-neorg/neorg",
        build = ":Neorg sync-parsers",
        cmd = "Neorg",
        ft = "norg",
        dependencies = { "nvim-lua/plenary.nvim", lazy = true, },
        opts = {
            load = {
                ["core.defaults"] = {},  -- Loads default behaviour
                ["core.concealer"] = {}, -- Adds pretty icons to your documents
                ["core.dirman"] = {      -- Manages Neorg workspaces
                    config = {
                        workspaces = {
                            -- notes = "~/notes",
                            notes = "C:\\Users\\Administrator\\OneDrive\\Project\\notes\\neorg",
                        },
                    },
                },
            },
        }
    },
}
