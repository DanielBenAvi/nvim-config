-- Enable true color support in the terminal (required for modern themes)
vim.o.termguicolors = true
vim.o.number = true           -- Show absolute line numbers
vim.o.relativenumber = true   -- Show relative numbers (except for current line)


-- Tab and indentation settings
vim.o.tabstop = 2            -- Number of spaces a <Tab> counts for
vim.o.shiftwidth = 2         -- Number of spaces used for autoindent
vim.o.expandtab = true       -- Use spaces instead of real tab characters

-- Highlight the line where the cursor is
vim.o.cursorline = true

-- Use system clipboard for copy/paste operations
vim.o.clipboard = "unnamedplus"

-- Change the shape of the cursor depending on the mode
vim.o.guicursor = "n-v-c:block,i:ver25,r-cr:hor20,o:hor50"
--   Normal/Visual/Command mode: block cursor
--   Insert mode: vertical bar (25% width)
--   Replace/Command replace: horizontal bar
--   Operator-pending: wider horizontal bar


-- Change background color depending on mode
vim.api.nvim_create_autocmd("InsertEnter", {
  callback = function()
    vim.cmd("hi Normal guibg=#1e1e2e")   -- Darker background when entering insert mode
  end,
})

vim.api.nvim_create_autocmd("InsertLeave", {
  callback = function()
    vim.cmd("hi Normal guibg=#111111")   -- Revert to original background on leaving insert mode
  end,
})

-- Auto-save on focus lost or buffer switch
vim.api.nvim_create_autocmd({ "FocusLost", "BufLeave" }, {
  pattern = "*",
  command = "silent! wall",             -- Save all open files without prompting
})

-- Open file explorer automatically when opening a directory
vim.api.nvim_create_autocmd("VimEnter", {
  callback = function()
    local dir = vim.fn.argv(0)
    if vim.fn.isdirectory(dir) == 1 then
      vim.cmd("NvimTreeOpen")               -- Auto-open NvimTree if started with a directory
    end
  end,
})

-- Highlight Todo
vim.api.nvim_create_autocmd("BufEnter", {
  callback = function()
    vim.cmd([[
      syntax match TodoComment /\v<(TODO|FIXME|NOTE|BUG):?/ containedin=.*Comment.*
      highlight link TodoComment WarningMsg
    ]])
  end,
})

