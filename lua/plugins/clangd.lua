return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        clangd = {
          cmd = { "clangd" },
          root_dir = require("lspconfig.util").root_pattern(".clangd", "compile_commands.json", ".git"),
          settings = {
            clangd = {
              fallbackFlags = {
                "-IC:/Users/voben/Tools/MinGW/include",
                "-LC:/Users/voben/Tools/MinGW/lib",
              },
            },
          },
        },
      },
    },
  },
}
