vim.keymap.set('n', '<Left>', ':echoe "Use h"<CR>')
vim.keymap.set('n', '<Right>', ':echoe "Use l"<CR>')
vim.keymap.set('n', '<Up>', ':echoe "Use k"<CR>')
vim.keymap.set('n', '<Down>', ':echoe "Use j"<CR>')
vim.keymap.set('i', '<Left>', '<ESC>:echoe "Use h"<CR>')
vim.keymap.set('i', '<Right>', '<ESC>:echoe "Use l"<CR>')
vim.keymap.set('i', '<Up>', '<ESC>:echoe "Use k"<CR>')
vim.keymap.set('i', '<Down>', '<ESC>:echoe "Use j"<CR>')

-- Disable autoformatting
vim.api.nvim_create_user_command('FormatDisable', function(args)
  if args.bang then
    -- FormatDisable! will disable formatting just for this buffer
    vim.b.disable_autoformat = true
  else
    vim.g.disable_autoformat = true
  end
end, {
  desc = 'Disable autoformat-on-save',
  bang = true,
})
vim.api.nvim_create_user_command('FormatEnable', function()
  vim.b.disable_autoformat = false
  vim.g.disable_autoformat = false
end, {
  desc = 'Re-enable autoformat-on-save',
})
vim.api.nvim_create_user_command('FormatToggle', function()
  if vim.b.disable_autoformat or vim.g.disable_autoformat then
    vim.cmd 'FormatEnable'
  else
    vim.cmd 'FormatDisable'
  end
end, {
  desc = 'Toggle autoformat-on-save',
})

vim.keymap.set('n', '<leader>ct', ':FormatToggle<CR>', { desc = '[C]ode [t]oggle auto-formatting' })
