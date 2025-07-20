return {
  {
    "echasnovski/mini.surround",
    version = false,
    event = "VeryLazy",
    config = true,
  },
  {
    "echasnovski/mini.indentscope",
    version = false,
    event = "VeryLazy",
    config = function()
      require("mini.indentscope").setup({
        symbol = "│",
        options = { try_as_border = true },
      })
    end,
  },
  {
    "echasnovski/mini.trailspace",
    version = false,
    event = "VeryLazy",
    config = function()
      vim.api.nvim_create_autocmd("BufWritePre", {
        callback = function()
          require("mini.trailspace").trim()
        end,
      })
    end,
  },
 }
