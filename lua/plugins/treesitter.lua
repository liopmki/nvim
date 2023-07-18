return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    local install = require 'nvim-treesitter.install'
    install.prefer_git = false
    install.compilers = { "cl" }

    local configs = require("nvim-treesitter.configs")

    configs.setup(
      {
        ensure_installed = "all",
        -- sync_install = false,
        highlight = { enable = true },
        indent = { enable = true },
      }
    )
  end
}