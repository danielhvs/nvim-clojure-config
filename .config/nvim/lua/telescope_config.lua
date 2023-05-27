require('telescope').setup(
{defaults = 
  {path_display = { "smart" },
   initial_mode = "normal",
   prompt_prefix = "",
   file_ignore_patterns = {"node_modules", "DS_Store", "target" },
   borderchars = { "─","│","─","│","┌","┐","┘","└" }, 
   layout_config = {horizontal = {width = 0.95}, 
                    --preview_width = 0.65,
                    vertical = {width = 0.95}},

   wrap_results = false
  },
  pickers = {
    find_files = {
      find_command = {"rg", "--files", "--iglob", "!.git", "--hidden"}}}})

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>p', builtin.find_files, {})
vim.keymap.set('n', '<leader>tg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>o', builtin.buffers, {})
