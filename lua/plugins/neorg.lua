return {
    {
        "nvim-neorg/neorg",
        build = ":Neorg sync-parsers",
        cmd = "Neorg",
        ft = "neorg",
        dependencies = { "nvim-lua/plenary.nvim" },
        opts = {
            load = {
                ["core.defaults"] = {},      -- Loads default behaviour
                ["core.concealer"] = {},     -- Adds pretty icons to your documents
                ["core.dirman"] = {          -- Manages Neorg workspaces
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
