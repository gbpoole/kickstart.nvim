return {
  'gelguy/wilder.nvim',
  dependencies = { 'romgrk/fzy-lua-native' },
  event = 'CmdlineEnter',
  config = function()
    local wilder = require 'wilder'
    wilder.setup {
      modes = { ':', '/', '?' },
      next_key = '<C-n>',
      previous_key = '<C-p>',
      accept_key = '<C-y>',
      reject_key = '<C-x>',
    }
  end,
}
