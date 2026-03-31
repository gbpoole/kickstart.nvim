return {
  'mbbill/undotree',
  keys = {
    { '<leader>U', '<CMD>UndotreeToggle<CR>', desc = '[U]ndotree toggle' },
  },
  init = function()
    if vim.fn.has 'persistent_undo' == 1 then
      vim.opt.undofile = true
    end

    -- set layout style to 2, let g:undotree_WindowLayout = 2
    vim.g.undotree_WindowLayout = 2
  end,
}
