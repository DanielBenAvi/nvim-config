-- lua/plugins/whichkey.lua or part of keymaps.lua
return {
  {
  "echasnovski/mini.icons",
  version = false,
  config = function()
    require("mini.icons").setup()
  end,
},
{
  "windwp/nvim-autopairs",
  config = true,
  event = "InsertEnter",
},
{
  "numToStr/Comment.nvim",
  config = true,
  event = "VeryLazy",
}
 }

