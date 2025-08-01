return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      eslint = {
        settings = {
          -- helps eslint find the eslintrc when it's placed in a subfolder instead of the cwd root
          workingDirectories = { mode = "auto" },
          -- The following is crucial for flat config to be recognized
          experimental = {
            useFlatConfig = true,
          },
        },
      },
    },
  },
}
