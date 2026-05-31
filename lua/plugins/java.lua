return {
  {
    "nvim-java/nvim-java",
    dependencies = {
      "MunifTanjim/nui.nvim",
      {
        "mfussenegger/nvim-dap",
        config = function()
          vim.fn.sign_define("DapBreakpoint", { text = "🔴", texthl = "", linehl = "", numhl = "" })
          vim.fn.sign_define("DapBreakpointCondition", { text = "🟡", texthl = "", linehl = "", numhl = "" })
          vim.fn.sign_define("DapLogPoint", { text = "🟢", texthl = "", linehl = "", numhl = "" })
        end,
      },
    },
    config = function()
      require("java").setup({
        jdk = {
          auto_install = false,
        },
        spring_boot_tools = {
          enable = true,
        },
        java_test = {
          enable = true,
        },
        java_debug_adapter = {
          enable = true,
        },
      })

      vim.lsp.config("jdtls", {
        settings = {
          java = {
            configuration = {
              runtimes = {
                {
                  name = "JavaSE-17",
                  path = "/usr/lib/jvm/java-17-openjdk",
                  default = false,
                },
                {
                  name = "JavaSE-21",
                  path = "/usr/lib/jvm/java-21-openjdk",
                  default = true,
                },
              },
            },
          },
        },
      })

      vim.lsp.enable("jdtls")
    end,
  },
}
