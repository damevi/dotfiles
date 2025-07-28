return {
  "nvim-treesitter/nvim-treesitter",
  dependencies = {
    "RRethy/nvim-treesitter-endwise", -- This is the key plugin
  },
  opts = function(_, opts)
    -- Ensure 'ruby' parser is installed for treesitter
    opts.ensure_installed = opts.ensure_installed or {}
    table.insert(opts.ensure_installed, "ruby")

    -- Enable endwise
    opts.endwise = {
      enable = true,
    }
    -- You might also have indent settings here for treesitter
    opts.indent = {
      enable = true,
      disable = {
        "ruby", -- Many users disable treesitter indentation for Ruby as it can be
        -- finicky; endwise handles the `end` placement, and regular
        -- Neovim indentation often works better for the body.
      },
    }
  end,
}
