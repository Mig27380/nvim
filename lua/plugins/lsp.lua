return {
  {
    "williamboman/mason.nvim",
    dependencies = {
      "mason-org/mason-lspconfig.nvim",
      "neovim/nvim-lspconfig",
    },
    opts = {
      servers = {
        lua_ls = {
          settings = {
            Lua = {
              diagnostics = {
                globals = { "vim" },
              }
            }
          },
        },
      },
    },
    config = function(_, opts)
      require("mason").setup()
      require("mason-lspconfig").setup({
        ensure_installed = { "lua_ls" },
        automatic_enable = true
      })

      for server, config in pairs(opts.servers) do
        vim.lsp.config(server, config)
        vim.lsp.enable(server)
      end

    end
  },
  -- {
  --   "nvim-java/nvim-java",
  --   config = false,
  --   dependencies = {
  --     {
  --       "neovim/nvim-lspconfig",
  --       opts = {
  --         servers = {
  --           -- Your JDTLS configuration goes here
  --           jdtls = {
  --             -- settings = {
  --             --   java = {
  --             --     configuration = {
  --             --       runtimes = {
  --             --         {
  --             --           name = "JavaSE-23",
  --             --           path = "/usr/local/sdkman/candidates/java/23-tem",
  --             --         },
  --             --       },
  --             --     },
  --             --   },
  --             -- },
  --           },
  --         },
  --         setup = {
  --           jdtls = function()
  --             -- Your nvim-java configuration goes here
  --             require("java").setup({
  --               -- root_markers = {
  --               --   "settings.gradle",
  --               --   "settings.gradle.kts",
  --               --   "pom.xml",
  --               --   "build.gradle",
  --               --   "mvnw",
  --               --   "gradlew",
  --               --   "build.gradle",
  --               --   "build.gradle.kts",
  --               -- },
  --             })
  --             require("lspconfig").jdtls.setup()
  --           end,
  --         },
  --       },
  --     },
  --   },
  -- },
}
