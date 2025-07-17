-- lua/plugins/whichkey.lua or part of keymaps.lua
return {
  {
    "folke/which-key.nvim",
    config = function()
      require("which-key").setup()

      require("which-key").register({
        ["<leader>e"] = {
          name = "NvimTree",
          o = { "<cmd>NvimTreeToggle<cr>", "Toggle Tree" },
          f = { "<cmd>NvimTreeFocus<cr>", "Focus Tree" },
          ["?"] = {
            function()
              print([[
    📁 nvim-tree shortcuts:
    a = Add file/folder
    d = Delete
    r = Rename
    x = Cut
    c = Copy
    p = Paste
    y = Copy name
    l/<CR> = Open
    h = Collapse
    ]])
            end,
            "Show NvimTree shortcuts",
          },
        },
      })
    end,
  },
}
