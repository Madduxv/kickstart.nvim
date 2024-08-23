local harpoon = require 'harpoon'

-- REQUIRED
harpoon:setup()
-- REQUIRED

vim.keymap.set('n', '<leader>ha', function()
  harpoon:list():add()
end, { desc = 'Harpoon Add' })
vim.keymap.set('n', '<leader>hr', function()
  harpoon:list():remove()
end, { desc = 'Harpoon Remove' })
vim.keymap.set('n', '<leader>hh', function()
  harpoon.ui:toggle_quick_menu(harpoon:list())
end, { desc = 'Harpoon List' })

-- Toggle previous & next buffers stored within Harpoon list
-- vim.keymap.set('n', '<leader>hn', function()
--   harpoon:list():next()
-- end, { desc = 'Harpoon Next' })
-- vim.keymap.set('n', '<leader>hp', function()
--   harpoon:list():prev()
-- end, { desc = 'Harpoon Previous' })
vim.keymap.set('n', '<C-S-N>', function()
  harpoon:list():next()
end, { desc = 'Harpoon Next' })
vim.keymap.set('n', '<C-S-P>', function()
  harpoon:list():prev()
end, { desc = 'Harpoon Previous' })
